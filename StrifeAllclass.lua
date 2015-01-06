_G.IsIngame = false
_G.myHero = nil
_G.myPlayer = nil

-- Delay Action ---	
class '_DelayAction'
function _DelayAction:__init()
	self.DelayedActions = {}
	Callback.Bind("Tick", function() self:Tick() end)
end

function _DelayAction:AddDA(func, delay, args)
	local t = Core.GetTickCount() + (delay or 2)
	if not self.DelayedActions[t] then
		self.DelayedActions[t] = {}
	end
	table.insert(self.DelayedActions[t], {func = func, args = args})
end

function _DelayAction:Tick()
	local tick = Core.GetTickCount()
	for t, funcs in pairs(self.DelayedActions) do
		if t <= tick then
			for _, f in ipairs(funcs) do
				f.func(unpack(f.args or {}))
			end
			self.DelayedActions[t] = nil
		end
	end		
end
local __DA = _DelayAction()
if not _G.Allclass then _G.Allclass = {} end
_G.Allclass.DelayAction = function(func, delay, args) __DA:AddDA(func, delay, args) end
-- //Delay Action ---


-- CustomGameStart Start ---
local CGS = { IsIngame = false, LastCheckTick = 0 }
local CallCustomGameStart = function()
		CGS.IsIngame = true
		_G.IsIngame = true
		_G.myHero = Game.GetLocalPlayer().hero
		_G.myPlayer = Game.GetLocalPlayer()
	for k, v in ipairs(Callback.GetCallbacks('CustomGameStart')) do
		v()
	end
end

Callback.Bind('SendPacket',function(p)
	if p.header == 0x49 then
		CallCustomGameStart()		
	end
end)

Callback.Bind("Tick", function()
	if CGS.IsIngame then return end
	if ((Core.GetTickCount() - CGS.LastCheckTick) < 1000) then return else LastCheckTick = Core.GetTickCount() end
	if Game.GetLocalPlayer().valid and Game.GetLocalPlayer().hero.valid then
		CallCustomGameStart()
	end
end)
-- CustomGameStart Ende ---


-- CastSpell Start ---
local LastCast = {}
_G.Game.CastSpell = function(index, x, y)
	index = index - 1
	if type(LastCast[i]) == "number" and (Core.GetTickCount() - LastCast[i]) < 1000 then return else LastCast[index] = Core.GetTickCount() end
	if x == nil then
		local p = Game.CLoLPacket(0x1B)
		p:Encode4(Game.GetLocalPlayer().hero.uid)
		p:Encode1(index)
		p:Encode1(0)
		Game.SendPacket(p)
	elseif type(x) == 'CObjectProxy' then
		local p = Game.CLoLPacket(0x1D)
		p:Encode4(Game.GetLocalPlayer().hero.uid)
		p:Encode1(index)
		p:Encode4(x.uid)
		p:Encode1(0)
		p:Encode1(0)
		p:Encode1(0)
		Game.SendPacket(p)
	else
		local p = Game.CLoLPacket(0x1C)
		p:Encode4(Game.GetLocalPlayer().hero.uid)
		p:Encode1(index)
		p:EncodeF(x)
		p:EncodeF(y)
		p:Encode1(0)
		p:Encode1(0)
		p:Encode1(0)
		Game.SendPacket(p)
	end	
end
-- CastSpell Ende ---

-- Chat Start ---
_G.Game.Chat = {}
_G.Game.Chat.Send = function(str, channel)
	local p = Game.CLoLPacket((channel ~= true) and 0x03 or 0x02) -- Ally or All
	p:EncodeStr(tostring(str))
	p:Encode2(0)
	Game.SendPacket(p)
end
-- Chat Ende ---

-- Courier Start ---
_G.Game.Courier = {}
_G.Game.Courier.Start = function()
	local p = Game.CLoLPacket(0x9F)
	p:Encode1(0)
	p:Encode4(-1)
	p:Encode1(0)
	Game.SendPacket(p)
end
local LastCourierStop = 0
_G.Game.Courier.Stop = function()
	if (Core.GetTickCount() - LastCourierStop) < 1000 then return else LastCourierStop = Core.GetTickCount() end
	local p = Game.CLoLPacket(0x1B)
	p:Encode2(Game.GetLocalPlayer().hero.uid)
	p:Encode2(0)
	p:Encode1(11)
	p:Encode2(0)
	Game.SendPacket(p)
end
-- Courier Ende ---

-- Item Start ---
local LastItemSold = 0
_G.Game.SellItem = function(slot)
	if ((Core.GetTickCount() - LastItemSold) < 250) or type(slot) ~= "number" then return else LastItemSold = Core.GetTickCount() end
	local p = Game.CLoLPacket(0x0A)
	p:Encode2(Game.GetLocalPlayer().hero.uid)
	p:Encode1(0)
	p:Encode1(slot)
	p:Encode2(0)
	Game.SendPacket(p)
end
local LastItemBought = 0
_G.Game.BuyItem = function(ItemID)
	if ((Core.GetTickCount() - LastItemBought) < 250) or type(ItemID) ~= "number" then return else LastItemBought = Core.GetTickCount() end
	local p = Game.CLoLPacket(0x09)
	p:Encode2(Game.GetLocalPlayer().hero.uid)
	p:Encode1(0)
	p:Encode2(ItemID)
	p:Encode1(0)
	Game.SendPacket(p)
end
-- Item Ende ---

-- LVL Spell Start ---
local LastLVLSpell = 0
_G.Game.LvlSpell = function(SpellID)
	if ((Core.GetTickCount() - LastLVLSpell) < 250) or type(SpellID) ~= "number" then return else LastLVLSpell = Core.GetTickCount() end
	local p = Game.CLoLPacket(0x15)
	p:Encode2(Game.GetLocalPlayer().hero.uid)
	p:Encode2(0)
	p:Encode1(SpellID)
	p:Encode1(0)
	Game.SendPacket(p)
end
-- LVL Spell Ende --

-- Ping -- 
_G.Game.Ping = function(PType,x,y)
	local p = Game.CLoLPacket(0x11)
	p:Encode1(x)
	p:Encode1(y)
	p:Encode1(PType)
	p:Encode1(0)
	Game.SendPacket(p)
end
--End Ping--

--Move--
_G.Game.Move = function(x,y)
 	local p = Game.CLoLPacket(0x1E)
 	p:Encode1(2)
 	p:EncodeF(x)
 	p:EncodeF(y)
 	p:Encode1(0)
 	p:Encode4(0)
 	p:Encode4(-1)
 	p:Encode1(0)
 	p:Encode1(0)
 	Game.SendPacket(p)
end

_G.Game.AttackMove = function(x,y)
 	local p = Game.CLoLPacket(0x1E)
 	p:Encode1(8)
 	p:EncodeF(x)
 	p:EncodeF(y)
 	p:Encode1(0)
 	p:Encode4(0)
 	p:Encode4(-1)
 	p:Encode1(0)
 	p:Encode1(0)
 	Game.SendPacket(p)
end
--End Move-- 

--Attack--
_G.Game.Attack = function(unit) 
	local p = Game.CLoLPacket(0x1F)
	p:Encode1(8)
	p:Encode4(unit.uid)
	p:Encode4(0) 
	p:Encode1(0)
	p:Encode4(-1)
	p:Encode1(0)
	Game.SendPacket(p)
end
--End Attack--

--Items --
_G.Game.CastItem = function(id,x,y)
	if x == nil and y == nil then 
		local p = Game.CLoLPacket(0x1B)
		p:Encode4(myHero.uid)
		p:Encode1(id)
		p:Encode1(0)
		Game.SendPacket(p)
	elseif y == nil then 
		local p = Game.CLoLPacket(0x1D)
		p:Encode4(myHero.uid)
		p:Encode1(id)
		p:Encode4(x)
		p:Encode1(0)
		p:Encode1(0)
		Game.SendPacket(p)
	else 
		local p = Game.CLoLPacket(0x1C)
		p:Encode4(myHero.uid)
		p:Encode1(id)
		p:EncodeF(x)
		p:EncodeF(y)
		p:Encode1(0)
		p:Encode1(0)
		Game.SendPacket(p)
	end 
end
--End Items--
--Emote--
_G.Game.Emote = {}
_G.Game.Emote.Send = function()
	local p = Game.CLoLPacket(0xE4)
	p:Encode4(-1)
	Game.SendPacket(p)
end
--end Emote--

--[[
    EntityManager Class :
    Functions :
		Game.EntityManager:GetLowest(range, vec3, team, lowerthen)
        Game.EntityManager:GetEntitys(range, vec3, team)
    Members:
		range								-- number or it takes the basic range of your hero
		vec3								-- vector3 from where the minions are centered or it takes your current position
		team								-- Game.EntityManager_ALLY, Game.EntityManager_ENEMY, Game.EntityManager_ALL or if not set it set Game.EntityManager_ENEMY
		lowerthen							-- only return if the minion health are lower then this value - OPTIONAL -
		
    Usage ex:
		Callback.Bind("Render", function()
			local myEntitys = Game.EntityManager:GetEntitys(2000, Game.GetLocalPlayer().hero.pos, Game.EntityManager_ENEMY)
			for i, e in pairs(myEntitys) do				
				Game.DrawCircle(e.pos, 200)				
			end		
		
		end)
]]

class 'EntityManager'
function EntityManager:__init()
	if not _G.EMMemory then
		_G.EMMemory = { ALL = {}, ALLY = {}, ENEMY = {}}
		self.LastT = os.clock()
		self:LoadExisting()
		Callback.Bind("CustomGameStart", function()
			Callback.Bind("AllocateEntity", function(uid) self:OnNewEntity(uid) end)
			Callback.Bind("DeleteEntity", function(uid) self:OnDeleteEntity(uid) end)
			Callback.Bind("Tick", function() self:UpdateAll() end)
		end)
	end
end

function EntityManager:LoadExisting()
	for i, e in ipairs(sh.entities) do
		if e and e.valid and (e.isCreepEntity or e.isNeutralEntity) and e.health > 0 then
			table.insert(_G.EMMemory.ALL, e)
			table.insert((Game.GetLocalPlayer().hero.team == e.team) and _G.EMMemory.ALLY or _G.EMMemory.ENEMY, e)
		end
	end
end

function EntityManager:UpdateAll()
	local osc = os.clock()
	if osc - self.LastT > 3 then
		for i, e in ipairs(sh.entities) do
			if e and e.valid and (e.isCreepEntity or e.isNeutralEntity) then
				if not self:InAll(e.uid) then
					table.insert(_G.EMMemory.ALL, e)
					table.insert((Game.GetLocalPlayer().hero.team == e.team) and _G.EMMemory.ALLY or _G.EMMemory.ENEMY, e)
				end
			end
		end	
		self.LastT = osc
	end
end

function EntityManager:InAll(uid)
	for i, e in pairs(_G.EMMemory.ALL) do
		if e and e.uid == uid then return true end
	end	return false
end

function EntityManager:OnNewEntity(uid)
	Allclass.DelayAction(function(uid)
		local e = self:ToEntity(uid)	
		if e ~= nil and e and (e.isCreepEntity or e.isNeutralEntity) then
			table.insert(_G.EMMemory.ALL, e)
			table.insert((Game.GetLocalPlayer().hero.team == e.team) and _G.EMMemory.ALLY or _G.EMMemory.ENEMY, e)			
		end
	end, 1, {uid})
end

function EntityManager:OnDeleteEntity(uid)
	for i, e in pairs(_G.EMMemory.ALL) do
		if e.uid == uid then 
			if e.team == Game.GetLocalPlayer().hero.team then
				for i, e in pairs(_G.EMMemory.ALLY) do
					if e.uid == uid then table.remove(_G.EMMemory.ALLY, i) break end
				end
			else
				for i, e in pairs(_G.EMMemory.ENEMY) do
					if e.uid == uid then table.remove(_G.EMMemory.ENEMY, i) break end
				end			
			end
			table.remove(_G.EMMemory.ALL, i)
			break
		end
	end	
end

function EntityManager:ToEntity(uid)
	assert(type(uid) == "number", "EntityManager:ToEntity wrong argument types (<" .. tostring(type(uid)) .. ">, <number> expected)")
	for i, e in ipairs(sh.entities) do
		if e and e.uid == uid then return e end
	end
end

function EntityManager:GetEntitys(range, vec3, team)
	local result, pres = {}
	vec3 = vec3 or Game.GetLocalPlayer().hero.pos
	range = range or Game.GetLocalPlayer().hero.range
	if team == 1 then pres = _G.EMMemory.ALLY
	elseif team == 3 then pres = _G.EMMemory.ALL
	else pres = _G.EMMemory.ENEMY
	end
	for i, e in pairs(pres) do
		if e.pos:DistanceTo(vec3) < range then table.insert(result, e) end
	end
	return result
end

function EntityManager:GetLowest(range, vec3, team, lowerthen)
	local result, pres
	vec3 = vec3 or Game.GetLocalPlayer().hero.pos
	range = range or Game.GetLocalPlayer().hero.range
	lowerthen = lowerthen or 100000
	if team == 1 then pres = _G.EMMemory.ALLY
	elseif team == 3 then pres = _G.EMMemory.ALL
	else pres = _G.EMMemory.ENEMY
	end
	for i, e in pairs(pres) do
		if e.pos:DistanceTo(vec3) < range and e.health < lowerthen and e.health < (result.health or 100000) then result = e end
	end
	return result
end

_G.Game.EntityManager = EntityManager()
_G.Game.EntityManager_ALLY = 1
_G.Game.EntityManager_ENEMY = 2
_G.Game.EntityManager_ALL = 3
--End EntityManager--


-- Prediction Start ---
class 'Prediction'
function Prediction:__init()
	self.ON = false
	self.Q = 1
	self.R = 15
	self.MS_MIN = 450
	self.Conversion_factor = 975
	self.velocity_TO = 10
	self.Data = {}
	self.CThrottle = 0.07
	Callback.Bind("CustomGameStart", function()
		self:InsertHeroes()		
		Callback.Bind('Tick', function() self:Update() end)
	end)
end

function Prediction:InsertHeroes()
	for i, p in ipairs(sh.players) do
		local hero = p.hero
		self.Data[hero.uid] = { Last = { Change = 0, Tick = 0, Pos = { x = 0, y = 0 }, PosVec = Geometry.Vector3(0,0,0)}, Velocity = 0, Current = { state_estimate = 0, prob_estimate = 0}, Next = { Tick = 0}, Vision = { Status = hero.visible, Tick = hero.visible and Core.GetTickCount() or 0}}
	end
	self.ON = true
end

function Prediction:Update()
	if not self.ON then return end
	local tick = Core.GetTickCount()
	for i, p in ipairs(sh.players) do
		local hero = p.hero
		if hero and hero.uid and type(self.Data[hero.uid]) ~= nil then
			if hero and hero.valid and hero.health > 0 and hero.uid and type(hero.pos) == "Vector3" then 				
				if self.Data[hero.uid].Next.Tick <= tick and hero and hero.valid and hero.pos.x and hero.pos.y and (tick - self.Data[hero.uid].Last.Tick > (self.velocity_TO - 1)) then
					self.Data[hero.uid].Next.Tick = tick + self.velocity_TO
					self.Data[hero.uid].Velocity = self:STEP(hero, 0, (hero.pos:DistanceTo(self.Data[hero.uid].Last.PosVec) / (Core.GetTickCount() - self.Data[hero.uid].Last.Tick)) * self.Conversion_factor)
					self.Data[hero.uid].Last.Pos.x, self.Data[hero.uid].Last.Pos.y = hero.pos.x, hero.pos.y
					self.Data[hero.uid].Last.PosVec = Geometry.Vector3(hero.pos.x, hero.pos.y, hero.pos.z)
					self.Data[hero.uid].Last.Tick = tick  
					if self.Data[hero.uid].Velocity > self.MS_MIN then
						self.Data[hero.uid].Last.Change = tick
					end
				end
			end
		else self.Data[hero.uid] = { Last = { Change = 0, Tick = 0, Pos = { x = 0, y = 0 }, PosVec = Geometry.Vector3(0,0,0)}, Velocity = 0, Current = { state_estimate = 0, prob_estimate = 0}, Next = { Tick = 0}, Vision = { Status = hero.visible, Tick = hero.visible and Core.GetTickCount() or 0}}
		end
    end
end

function Prediction:GetPosition(Target, Range, Speed, Delay, Width, VeloMode)
	if not self.ON then return end
	local range, speed = Range or 500000, Speed or 500000
	local delay = (Delay or 0.4) + (self:GetLatency() / 2000)
	local width = (Width or 0) + (self:GetHitBox(Target) / 2.2)
	local Source = Game.GetLocalPlayer().hero.pos
	local Tms = (VeloMode and self.Data and self.Data[Target.uid] and self.Data[Target.uid].Velocity) or Target.ms
	local PredictedPosition = Target.pos
	local Extend = function(p1, p2, laenge) return (Geometry.Vector3(p1.x, p1.y, p1.z) + (Geometry.Vector3(p2.x, p2.y, p2.z) - Geometry.Vector3(p1.x, p1.y, p1.z)):Normalize() * laenge) end
	local WP_A = Target.pos
	local WP_B = Extend((type(self.Data[Target.uid].Last.PosVec) ~= nil) and self.Data[Target.uid].Last.PosVec or Target.pos, Target.pos, (Tms * 4))
	local tA = 0
	local Start, Ende, Source = Geometry.Vector2(WP_A.x, WP_A.y), Geometry.Vector2(WP_B.x, WP_B.y), Geometry.Vector2(Game.GetLocalPlayer().hero.pos.x, Game.GetLocalPlayer().hero.pos.y)
	local t1, p1, t2, p2 = Start:Interception(Ende, Tms, Source, speed, delay)
	local D = Start:DistanceTo(Ende)	
	local tB = tA + D / Tms
	t1, t2 = (t1 and tA <= t1 and t1 <= (tB - tA)) and t1 or nil, (t2 and tA <= t2 and t2 <= (tB - tA)) and t2 or nil
	t = t1 and t2 and math.min(t1, t2) or t1 or t2
	if t then PredictedPosition = (t == t1) and Geometry.Vector3(p1.x, p1.y, Target.pos.z) or Geometry.Vector3(p2.x, p2.y, Target.pos.z) end	
	return PredictedPosition	
end

function Prediction:STEP(hero, control_vector, measurement_vector)
	local predicted_state_estimate = self.Data[hero.uid].Current.state_estimate + control_vector
	local predicted_prob_estimate = self.Data[hero.uid].Current.prob_estimate + self.Q
	local innovation = measurement_vector - predicted_state_estimate
	local innovation_covariance = predicted_prob_estimate + self.R
	local kalman_gain = predicted_prob_estimate / innovation_covariance
	self.Data[hero.uid].Current.state_estimate = predicted_state_estimate + kalman_gain * innovation
	self.Data[hero.uid].Current.prob_estimat = (1 - kalman_gain) * predicted_prob_estimate
	return self.Data[hero.uid].Current.state_estimate
end

function Prediction:HasLowVelocity(hero, t)
	local time
	if t > 700 and t < 1000 then
		time = t
	elseif t <= 700 then
		time = 700
	elseif t > 1000 then
		time = 1000
	end
	return (self.Data[hero.uid].Velocity < self.MS_MIN and hero.ms < self.MS_MIN and Core.GetTickCount() - self.Data[hero.uid].Last.Change > time)
end

function Prediction:GetVeloHC(Target)
	return ((1 - (self.Data[Target.uid].Velocity/self.MS_MIN)) * 100) or -1
end

function Prediction:GetData(UID)
	return self.Data[UID] or nil
end

function Prediction:PosInTime(Unit, Delay)
	return self:GetPosition(Unit or Game.GetLocalPlayer().hero, 500000, 500000, Delay or 1, 1, false, false, Game.GetLocalPlayer().hero.pos)
end

function Prediction:GetLatency()
	return (Game.GetLatency() + self.CThrottle)
end

function Prediction:GetHitBox(Unit)
	if Unit.boundsRadius ~= nil and Unit.boundsRadius > 40 then
		return Unit.boundsRadius*3
	else 
		return 55
	end
end
if not _G.Allclass then _G.Allclass = {} end
_G.Allclass.Prediction = Prediction()
-- Prediction Ende ---

-- Collision ---
class 'Collision'
function Collision:__init()
	self.PoL = function(s, e, c, w) --v2 input , Start, End, Controll/Unit, Width
		a, b = c:ProjectOnLine(s, e)
		return b and (a:DistanceTo(c) <= w)
	end
end

function Collision:GetHeroCollision(PointA, PointB, Delay, Speed, Width)
	pA, pB, cH = Geometry.Vector2(PointA.x, PointA.y), Geometry.Vector2(PointB.x, PointB.y), {}
	for i, p in ipairs(sh.players) do
		local hero = p.hero
		if hero and hero.uid and hero.health > 0 and hero.team ~= Game.GetLocalPlayer().hero.team then
			pp = Allclass.Prediction:GetPosition(hero, 500000, Speed, Delay, Width, true)
			if type(pp) == "Vector3" and self.PoL(pA, pB, Geometry.Vector2(pp.x, pp.y), (Width + 10 + (hero.boundsRadius*2))) then
				cH[#cH+1] = hero
			end		
		end
	end
	return (#cH~=0), cH
end

function Collision:GetEntityCollision(PointA, PointB, Width)
	pA, pB, cE, E = Geometry.Vector2(PointA.x, PointA.y), Geometry.Vector2(PointB.x, PointB.y), {}, Game.EntityManager:GetEntitys(500000, Game.GetLocalPlayer().hero.pos, Game.EntityManager_ENEMY)
	for i, e in pairs(E) do				
		if e and e.valid and e.pos and e.pos.x and e.pos.y and self.PoL(pA, pB, Geometry.Vector2(e.pos.x, e.pos.y), (Width + 10 + (e.boundsRadius*2))) then
			cE[#cE+1] = e
		end
	end
	return (#cE~=0), cE
end
if not _G.Allclass then _G.Allclass = {} end
_G.Allclass.Collision = Collision()
-- Collision Ende ---

-- Draw3D ---
if not _G.Allclass then _G.Allclass = {} end
if not _G.Allclass.Draw3D then _G.Allclass.Draw3D = {} end

_G.Allclass.Draw3D.Line = function(PointA, PointB, width, color)
	if not IsIngame then return end
	local sp1 = Game.WorldToScreen(PointA)
	local sp2 = Game.WorldToScreen(PointB)
	Graphics.DrawLine(Geometry.Vector2(sp1.x, sp1.y), Geometry.Vector2(sp2.x, sp2.y), width or 2, color or Graphics.RGBA(255,255,255,255))
end

_G.Allclass.Draw3D.Circle = function(x, y, z, radius, width, color, chordlength)
	if not IsIngame then return end
	if not (type(x) == "number" and type(y) == "number" and type(z) == "number") then return end
	radius = radius or 300
	quality = math.max(8,math.round(180/math.deg((math.asin(((chordlength or radius/6)/(2*radius)))))))
	quality = (2 * math.pi / quality)
	radius = (radius*0.92)
    local points = {}
	for theta = 0, (2 * math.pi + quality), quality do
		local c = Game.WorldToScreen(Geometry.Vector3(x + radius * math.cos(theta),y - radius * math.sin(theta), z))
		points[#points + 1] = Geometry.Vector2(c.x, c.y)
    end
	Allclass.Draw3D.Lines(points, width, color)
end

_G.Allclass.Draw3D.Lines = function(points, width, color)
	if not IsIngame then return end
	if type(points) ~= "table" or #points < 2 then return end
	for i = 1, #points do
		if i == #points then
			Graphics.DrawLine(points[i], points[1], width or 1, color or Graphics.RGBA(255,255,255,255))
		elseif i < #points then
			Graphics.DrawLine(points[i], points[i+1], width or 1, color or Graphics.RGBA(255,255,255,255))
		end
	end
end

_G.Allclass.Draw3D.DrawText = function(text, x, y, z, size, color)
	if not IsIngame then return end
	local sP = Game.WorldToScreen(Geometry.Vector3(x, y, z))
	Graphics.DrawText(tostring(text), size or 15, sP.x, sP.y, color or Graphics.RGBA(255, 255, 255, 255))
end
-- Draw3D Ende---

-- FPS ---
if not _G.Allclass then _G.Allclass = {} end
if not _G.Allclass.FPS then _G.Allclass.FPS = {} end
local fps, avgFps, frameCount, fFrame, lastFrame, updateFPS, active_fps = 0, 0, 0, -math.huge, -math.huge, nil, false
local function startFPSCounter()
	if not updateFPS and not active_fps then
		function updateFPS()
			fps = 1 / (os.clock() - lastFrame)
			lastFrame, frameCount = os.clock(), frameCount + 1
			if os.clock() < 0.5 + fFrame then return end
			avgFps = math.floor(frameCount / (os.clock() - fFrame))			
			fFrame, frameCount = os.clock(), 0
		end
		Callback.Bind("Draw",updateFPS)
		active_fps = true
	end
end

_G.Allclass.FPS.GetExactFPS = function()
	startFPSCounter()
	return fps
end

_G.Allclass.FPS.GetFPS = function()
	startFPSCounter()
	return avgFps
end
-- FPS ENDE ---

--Utility 
class "Utility"

function Utility:__init()
	--Default for all heros
	self.AACastTime = 1100 
end 

--return attackspeed in ms
function Utility:ComputeAASpeed(unit)
	return self.AACastTime / unit.attackSpeed 
end 

function Utility:GetVirtualHP(unit)
	return unit.health * (1 + (unit.armor / 100))
end

if not _G.Allclass then _G.Allclass = {} end
_G.Allclass.Utility = Utility()
--End Utility 

--DamageLib--
class "DamageLib"

function DamageLib:__init()
	self.Spells = {}
	self.IDS = { ["Q"] = 1, 
	["W"] = 2,
	["E"] = 3,
	["R"] = 4 
	}
end 
--Dunno if you need Type tho 
function DamageLib:RegisterSpell(Spell,baseDamage,perLevel,Type)
	self.Spells[Spell] = {baseDamage = baseDamage, perLevel = perLevel, Type = Type}
end 

function DamageLib:GetDamage(unit,Target,Spell)
	assert(self.Spells[Spell], "Please Register the spell first")
	local S = self.Spells[Spell]
	local DefaultDmg = S.baseDamage + (S.perLevel * unit:GetAbility(self:GetAbilityID(Spell)).level)
	local pureDamage = self:GetPDamage(unit,DefaultDmg)
	return (S.Type == "_AD" and self:CalcDamage(Target,pureDamage)) or self:CalcMagicDamage(Target,pureDamage)
end 
--//return damage without taking care of armor magicRes...
--//unit.power still not fixed giving 0
function DamageLib:GetPDamage(unit,Damage)
	return Damage * (unit.power / 100) 
end

function DamageLib:CalcDamage(unit,Damage)
	return Damage / (1 + (unit.armor / 100))
end 

function DamageLib:CalcMagicDamage(unit,Damage)
	return Damage / (1 + (unit.magicArmor / 100))
end 

function DamageLib:ComputeAADmg(unit,Target)
	local PADmg = unit.baseDamage * (unit.power / 100)
	return self:CalcDamage(Target,PADmg)
end

function DamageLib:GetAbilityID(Spell)
	return self.IDS[Spell]
end

if not _G.Allclass then _G.Allclass = {} end
_G.Allclass.DamageLib = DamageLib()

--End DamageLib--
