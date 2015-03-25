--------------------------------------------------------------------------------
--[[

    //   ) )                                                                    
   //   / /  __     / __                   ___     // / ___      ___      __    
  //   / / //  ) ) //   ) ) //  / /  / / //   ) ) // //\ \     //___) ) //  ) ) 
 //   / / //      //   / / //  / /  / / //   / / // //  \ \   //       //       
((___/ / //      ((___/ / ((__( (__/ / ((___( ( // //    \ \ ((____   //   

]]
-----------------------        Strife Orbwalker          ------------------------
--------------------------------------------------------------------------------
-- Project: Orbwalker class                                                   --
-- Release: 1.0.0 beta                                                        --
-- Title  : Script that orbwalks for you, GO BIG.                             --
-- Author : AWA                                                               --
--------------------------------------------------------------------------------

Callback.Bind("CustomGameStart", function() Orbwalker() end)

class "Orbwalker"
 
function Orbwalker:__init(defaultMode)
	--{ version and latest update } --  
	self._VERSION = "1.0.0" 
	self.LastUpdate = "2/22/2015"

	--{ }--
	self.Utility = Allclass.Utility
	self.EntityManager = Game.EntityManager 
	self.HeroDatabase = Allclass.HeroDatabase
	self.DrawHandler = Allclass.Draw3D
	self.DamageLib = Allclass.DamageLib

	--{ }--
	self.Player = myHero
	self.charName = self.Utility:GetCharName(self.Player)
	self.availableMinions = {}
	self.LastT = 0 
	self.LP = 0 

	--{ Database data }--
	self.AttackActionTime = tonumber(Allclass.HeroDatabase:GetData(self.Player, "attackactiontime")) 
	self.ProjectileName = self.HeroDatabase:GetData(self.Player, "attackprojectile")

	--{ Callbacks } -- 
	Callback.Bind("AllocateEntity", function(uid) self:OnEntity(uid) end)
	Callback.Bind("DeleteEntity", function(uid) self:OnDeleteEntity(uid) end)
	Callback.Bind("Tick", function() self:Tick() end)
	Callback.Bind("Tick", function() self:UpdateAll() end)
	Callback.Bind("Draw", function() self:Draw() end)

	-- do not set this to true
	self.DebugMode = true
	--Game.PrintToChat("Orbwalker loaded for : "..self.charName)
	self:LoadExisting() 
	--return the instance
	return self;
end

function Orbwalker:GetRange()
	return self.Player.attackRange + (self.Player.boundsRadius * 3)
end 
		 
function Orbwalker:CanAttack()
	return self:Time() > self.LP + self.Utility:ComputeAASpeed(self.Player)
end
 
function Orbwalker:IsValid(entity)
	local ename = entity.name 

	return entity.valid and entity.isProjectileEntity and ename:lower():find("attack") and ename:find(self.charName)
end
 
function Orbwalker:ToEntity(uid)
	return self.EntityManager:ToEntity(uid)
end
 
function Orbwalker:Time()
	return Game.GetTickCount()
end
 
function Orbwalker:Latency()
	return Game.GetLatency()
end
 
function Orbwalker:Move(To)
	Game.Move(To.x,To.y)
end
 
function Orbwalker:Attack(target)
	Game.Attack(target)
end

function Orbwalker:CanReach(Target)
	return self.Player.pos:DistanceTo(Target.pos) < self.Player.attackRange + (Target.boundsRadius * 3)
end

function Orbwalker:GetTarget(mode)
	--{Get The lowest test clone, Developement only}--
	return self.DebugMode and Allclass.HeroManager:GetClosetTestClone()
end

function Orbwalker:Draw() 
	self.DrawHandler.Circle(myHero.x, myHero.y, myHero.z, self.Player.attackRange + (self.Player.boundsRadius * 3), 1)
end 


function Orbwalker:OnEntity(uid)
	Allclass.DelayAction(function(uid)
		local ent = self:ToEntity(uid) 
		if ent and self:IsValid(ent) then
			self.LP = self:Time() - (self.AttackActionTime + self:Latency())
		end

		if ent ~= nil and ent and (ent.isCreepEntity or ent.isNeutralEntity) and ent.team ~= self.Player.team then
			table.insert(self.availableMinions, { entity = ent, requiredHits = 0, MarkedToWait = false, HitRate = 0 })
		end
	end , 0.5, {uid})
end

function Orbwalker:OnDeleteEntity(uid) 
	Allclass.DelayAction(function(uid)
		for each, e in pairs(self.availableMinions) do 
			if e.entity.uid == uid then 
				table.remove(self.availableMinions, each)
			end 
		end 
	end , 0.5, {uid})
end 


function Orbwalker:UpdateAll()
	local osc = os.clock()
	if osc - self.LastT > 3 then
		for i, e in ipairs(sh.entities) do
			if e and e.valid and (e.isCreepEntity or e.isNeutralEntity) and e.health > 0 and e.team ~= myHero.team then
				if not self:Exists(e.uid) then
					table.insert(self.availableMinions, { entity = e, requiredHits = 0, MarkedToWait = false, HitRate = 0 })
				end
			end
		end	
		self.LastT = osc
	end
end

function Orbwalker:Exists(uid)
	for i, e in pairs(self.availableMinions) do
		local entity = e.entity 
		if entity and entity.uid == uid then return true end
	end	
	return false
end


function Orbwalker:LoadExisting()
	for i, e in ipairs(sh.entities) do
		if e and e.valid and (e.isCreepEntity or e.isNeutralEntity) and e.health > 0 and  e.team ~= myHero.team then
			table.insert(self.availableMinions, { entity = e, requiredHits = 0, MarkedToWait = false, HitRate = 0 })
		end
	end
end


function Orbwalker:update() 
	for each, e in pairs(self.availableMinions) do 
		local ent = e.entity 
		if not ent.valid or not ent.isAlive or ent.health == 0 then 
			table.remove(self.availableMinions, each)
		end 
	end 
end 

function Orbwalker:Tick()
	self.Target = self:GetTarget()

	if Keyboard.IsKeyDown(string.byte("E")) then
		self:Orbwalk(self.Target, mousePos())
	elseif Keyboard.IsKeyDown(string.byte("X")) then 
		self:LastHit()
	elseif Keyboard.IsKeyDown(string.byte("T")) then 
		self:LaneClear()
	end 
	
	--if self.DebugMode then print(self:CanAttack()) end 
end
 
function Orbwalker:Orbwalk(Target,To)
	if Target and self:CanReach(Target) and self:CanAttack() then
		self:Attack(Target)
	else
		self:Move(To)
	end
end


function Orbwalker:LastHit()
	local lowest = self.EntityManager:GetLowest(self:GetRange(), self.Player.pos, Game.EntityManager_ENEMY)

	if lowest and lowest.health <= self.Player.attackDamageMax then 
		self:Orbwalk(lowest, mousePos())
	else 
		self:Move(mousePos())
	end 
end 

function Orbwalker:LaneClear() 

	local GetBestLaneClearEntity = function() 
		self:update() 
		local entitys = self.availableMinions
		local best, rq = nil, math.huge 
		
		for each, e in pairs(entitys) do 
			local entity = e.entity
			
			if self:CanReach(entity) then 
				local requiredHits = entity.health / self.Player.attackDamageMax
				if e.MarkedToWait  and entity.health <= self.Player.attackDamageMax then  
					return e 
				elseif not e.MarkedToWait then 
					if requiredHits < rq  then 
						best = e
						rq = requiredHits 
					end
				end  
 
			end 
		end 

		return best 
	end 

	local ShouldAttack = function(ent)
		return ent.health / self.Player.attackDamageMax >= 2
	end 

	local best = GetBestLaneClearEntity()
	print(best == nil)
	local entity 

	if best ~= nil then entity = best.entity end 

	if entity and not ShouldAttack(entity) and entity.health >= self.Player.attackDamageMax then best.MarkedToWait = true return end 

	if entity and ShouldAttack(entity) then 
		self:Orbwalk(entity, mousePos())
	elseif best and not ShouldAttack(entity) and entity.health <= self.Player.attackDamageMax then 
		self:Orbwalk(entity, mousePos())
	else 
		self:Move(mousePos())
	end 
end 





