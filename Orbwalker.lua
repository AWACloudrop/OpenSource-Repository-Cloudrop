Callback.Bind("CustomGameStart", function() Orbwalker() end)

class "Orbwalker"
 
function Orbwalker:__init(defaultMode)
	--{ version and latest update } --  
	self._VERSION = "1.0.0" 
	self.LastUpdate = "2/22/2015"

	--{ Defining some globals classes }--
	self.Utility = Allclass.Utility
	self.EntityManager = Game.EntityManager 
	self.HeroDatabase = Allclass.HeroDatabase
	self.DrawHandler = Allclass.Draw3D

	--{ extra vars }--
	self.Player = myHero
	self.charName = self.Utility:GetCharName(self.Player)
	self.LP = 0 

	--{ Database data }--
	self.Range = tonumber(Allclass.HeroDatabase:GetData(self.Player, "attackrange"))
	self.AttackActionTime = tonumber(Allclass.HeroDatabase:GetData(self.Player, "attackactiontime")) 
	self.ProjectileName = self.HeroDatabase:GetData(self.Player, "attackprojectile")

	--{ Callbacks } -- 
	Callback.Bind("AllocateEntity", function(uid) self:OnEntity(uid) end)
	Callback.Bind("Tick", function() self:Tick() end)
	Callback.Bind("Draw", function() self:Draw() end)

	-- do not set this to true
	self.DebugMode = true
	--Game.PrintToChat("Orbwalker loaded for : "..self.charName)

	--return the instance
	return self;
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
	return self.Player.pos:DistanceTo(Target.pos) < self.Range
end

function Orbwalker:GetTarget(mode)
	--{Get The lowest test clone, Developement only}--
	return self.DebugMode and Allclass.HeroManager:GetClosetTestClone()
end

function Orbwalker:Draw() 
	self.DrawHandler.Circle(myHero.x, myHero.y, myHero.z, self.Range, 1)
end 

function Orbwalker:OnEntity(uid)
	Allclass.DelayAction(function(uid)
		local ent = self:ToEntity(uid) 
		if ent and self:IsValid(ent) then
			self.LP = self:Time() - (self.AttackActionTime + self:Latency())
		end
	end , 0.5, {uid})
end

function Orbwalker:Tick()
	self.Target = self:GetTarget()
	local mousePos = Game.GetCursor()
	if Keyboard.IsKeyDown(string.byte("E")) then
		self:Orbwalk(self.Target,mousePos)
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



