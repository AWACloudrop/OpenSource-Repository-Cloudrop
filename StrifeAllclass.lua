_G.IsIngame = false
_G.myHero = nil
_G.myPlayer = nil

-- CustomGameStart Start ---
local CallCustomGameStart = function()
	if _G.IsIngame then return end 
	_G.IsIngame = true
	
	if Game.GetLocalPlayer().valid and Game.GetLocalPlayer().hero.valid then
		_G.myHero = Game.GetLocalPlayer().hero 
		_G.myPlayer = Game.GetLocalPlayer()
	end 

	for k, v in ipairs(Callback.GetCallbacks('CustomGameStart')) do
		v()
	end
end

Callback.Bind('SendPacket',function(p)
	if p.header == 0x4A then
		CallCustomGameStart()		
	end
end)
-- CustomGameStart Ende ---

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


-- CastSpell Start ---
local LastCast = 0
_G.Game.CastSpell = function(index, x, y)
	if (Core.GetTickCount() - LastCast) < 100 then return else LastCast = Core.GetTickCount() end 
	if x == nil then
		local p = Game.CLoLPacket(0x1B)
		p:Encode4(Game.GetLocalPlayer().hero.uid)
		p:Encode1(index)
		p:Encode1(0)
		Game.SendPacket(p)
	elseif type(x) == 'CObjectProxy' then
		local p = Game.CLoLPacket(0x1D)
		p:Encode2(Game.GetLocalPlayer().hero.uid)
		p:Encode2(0)
		p:Encode1(index)
		p:Encode2(x.uid)
		p:Encode4(0)
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
local lastMove = 0 
_G.Game.Move = function(x,y)
	if ((Core.GetTickCount() - lastMove) < 100) then return else lastMove = Core.GetTickCount() end
 	local p = Game.CLoLPacket(0x1E)
	p:Encode1(2)
 	p:EncodeF(x)
 	p:EncodeF(y)
 	p:Encode4(0)
	p:Encode1(0)
	p:Encode4(-1)
	p:Encode1(0)
	Game.SendPacket(p)
end

local lastAMove = 0 
_G.Game.AttackMove = function(x,y)
	if ((Core.GetTickCount() - lastAMove) < 100) then return else lastAMove = Core.GetTickCount() end
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

local lastAttack = 0 
--Attack--
_G.Game.Attack = function(unit) 
	if ((Core.GetTickCount() - lastAttack) < 100) then return else lastAttack = Core.GetTickCount() end
	local p = Game.CLoLPacket(0x1F)
	p:Encode1(8)
	p:Encode2(unit.uid)
	p:Encode4(0) 
	p:Encode2(0)
	p:Encode1(0)
	p:Encode4(-1)
	p:Encode1(0)
	Game.SendPacket(p)
end
--End Attack--

--Items --
local lastItemCast = 0 
_G.Game.CastItem = function(id,x,y)
	if ((Core.GetTickCount() - lastItemCast) < 100) then return else lastItemCast = Core.GetTickCount() end
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
_G.Game.Pause = 1 
_G.Game.Unpause = 0 
_G.Game.IssuePause = function(Type)
	local p = Game.CLoLPacket(0xCC)
	p:Encode1(Type or 1)
	Game.SendPacket(p)
end 
--Emote--
local lastEmote = 0 
_G.Game.Emote = {}
_G.Game.Emote.Send = function()
	if ((Core.GetTickCount() - lastEmote) < 100) then return else lastEmote = Core.GetTickCount() end
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
	if uid == nil then return end 
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

--[[
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
]]

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
	--Default for all heros(attack cooldown)
	self.AACastTime = 1100 
end 

--return attackspeed in ms
function Utility:ComputeAASpeed(unit)
	return self.AACastTime / unit.attackSpeed 
end 

function Utility:GetVirtualHP(unit)
	return unit.health * (1 + (unit.armor / 100))
end

function Utility:GetCharName(unit)
	return string.sub(unit.name,6)
end 

function Utility:SetReadOnly(table)
 	return setmetatable(table, {
     	__index = table,
     	__newindex = function(table, key, value)
                    	error("Error : Attempt to modify read-only table")
                 	 end,
    	__metatable = false
   	});
end 

if not _G.Allclass then _G.Allclass = {} end
_G.Allclass.Utility = Utility()
--End Utility 

--DamageLib--

class "DamageLib"

function DamageLib:__init()
	self.Spells, self.RegSpells = {}, {}
	--Credits Mario <3
   	self.Heroes = {
      ['Hero_Ace'] = {
         [1]  = { basedmg = 60,  perlvl = 35 },
         [2]  = { basedmg = 50,  perlvl = 25 },
         [3]  = { basedmg = 18,  perlvl = 12 },
         [4]  = { basedmg = 170, perlvl = 85 },
      },
      ['Hero_Bastion'] = {
         [1]  = { basedmg = 60,  perlvl = 30 },
         [2]  = { basedmg = 50,  perlvl = 25 },
         [3]  = { basedmg = 0,   perlvl = 40 },
         [4]  = { basedmg = 140, perlvl = 60 }     
      },
      ['Hero_Blazer'] = {
         [1]  = { basedmg = 65,  perlvl = 50 },
         [2]  = { basedmg = 60,  perlvl = 20 },
         [3]  = { basedmg = 0,   perlvl = 3  } -- Passive per auto
      },
      ['Hero_Bo'] = {
         [1]  = { basedmg = 20,  perlvl = 20 },
         [2]  = { basedmg = 55,  perlvl = 25 },
         [4]  = { basedmg = 100, perlvl = 40 }
      },
      ['Hero_Caprice'] = {
         [1]  = { basedmg = 50,  perlvl = 20 },
         [2]  = { basedmg = 45,  perlvl = 25 },
         [3]  = { basedmg = 15,  perlvl = 15 },
         [4]  = { basedmg = 60,  perlvl = 30 }
      },
      ['Hero_Carter'] = {
         [1]  = { basedmg = 45,  perlvl = 25 },
         [2]  = { basedmg = 50,  perlvl = 30 },
         [3]  = { basedmg = 15,  perlvl = 10 }, -- Damage per sec
         [4]  = { basedmg = 100, perlvl = 50 }
      },
      ['Hero_Chester'] = {
         [1]  = { basedmg = 15,  perlvl = 25 }, -- Damage per knight this*4 = max damage
         [2]  = { basedmg = 50,  perlvl = 30 },
         [4]  = { basedmg = 60,  perlvl = 30 } -- Damage per second
      },
      ['Hero_Claudessa'] = {
         [1]  = { basedmg = 55,  perlvl = 25 },
         [3]  = { basedmg = 10,  perlvl = 10 }, -- Passive per auto
         [4]  = { basedmg = 26,  perlvl = 12 }  -- Damage per sec
      },
      ['Hero_Fetterstone'] = {
         [1]  = { basedmg = 35,  perlvl = 15 },
         [2]  = { basedmg = 70,  perlvl = 35 }
      },
      ['Hero_Gokong'] = {
         [1]  = { basedmg = 0,   perlvl = 15 },
         [2]  = { basedmg = 40,  perlvl = 25 },
         [3]  = { basedmg = -4,  perlvl = 8  }  -- Passive per auto
      },
      ['Hero_Hale'] = {
         [1]  = { basedmg = 45,  perlvl = 25 },
         [4]  = { basedmg = 100, perlvl = 50 }
      },
      ['Hero_Harrower'] = {
         [1]  = { basedmg = 15,  perlvl = 15 }
      },
      ['Hero_Iah'] = {
         [1]  = { basedmg = 15,  perlvl = 5  }, -- per sand thingy attack
         [2]  = { basedmg = 70,  perlvl = 50 }, -- 3 secs of damage (max)
         [4]  = { basedmg = 110, perlvl = 60 } -- heals allies for same amount that it deals to enemies
      },
      ['Hero_JinShe'] = {
         [1]  = { basedmg = 50,  perlvl = 25 },
         [2]  = { basedmg = 45,  perlvl = 25 },
         [4]  = { basedmg = 12,  perlvl = 6  } -- Damage per sec
      },
      ['Hero_LadyTinder'] = {
         [1]  = { basedmg = 50,  perlvl = 30 },
         [2]  = { basedmg = 55,  perlvl = 30 },
         [4]  = { basedmg = 40,  perlvl = 20 } -- Damager per plant attack
      },
      ['Hero_Malady'] = {
         [1]  = { basedmg = 55,  perlvl = 25 },
         [2]  = { basedmg = 90,  perlvl = 60 }, -- 5 secs of damage (max)
         [4]  = { basedmg = 180, perlvl = 90 }
      },
      ['Hero_Minerva'] = {
         [1]  = { basedmg = 5,   perlvl = 15 },
         [2]  = { basedmg = 50,  perlvl = 35 },
         [4]  = { basedmg = 100, perlvl = 50 } -- + 50% if behind target
      },
      ['Hero_Moxie'] = {
         [1]  = { basedmg = 40,  perlvl = 25 },
         [2]  = { basedmg = 55,  perlvl = 30 },
         [4]  = { basedmg = 95,  perlvl = 45 } -- Min Damage (if enemy not in center)
         --[5] = {basedmg = 50,  perlvl = 25} Additional Damage if Enemy in Center
         --[6] = {basedmg = 145,  perlvl = 70} Full Damage (if enemy in center)
      },
      ['Hero_Nikolai'] = {
         [2]  = { basedmg = 45,  perlvl = 25 },
         [3]  = { basedmg = 4,   perlvl = 2  }, -- % of their max hp so (this/100) * unit.maxhp = real damage
         [4]  = { basedmg = 130, perlvl = 65 }
      },
      ['Hero_Ray'] = {
         [1]  = { basedmg = 55,  perlvl = 35 },
         [2]  = { basedmg = 50,  perlvl = 25 },
         [3]  = { basedmg = 10,  perlvl = 15 }, -- Bonus Damage on next attack
         [4]  = { basedmg = 140, perlvl = 70 } -- Reduced by 15% for each hiro hit
      },
      ['Hero_Rook'] = {
         [1]  = { basedmg = 15,  perlvl = 35 },
         [2]  = { basedmg = 20,  perlvl = 40 },
         [3]  = { basedmg = 1,   perlvl = 1  }, -- Bonus Attack Damage per stack
         [4]  = { basedmg = 135, perlvl = 65 } -- Max Damage based on distance
      },
      ['Hero_Shank'] = {
         [1]  = { basedmg = 50,  perlvl = 35 },
         [4]  = { basedmg = 120, perlvl = 60 }
      },
      ['Hero_Trixie'] = {
         [1]  = { basedmg = 60,  perlvl = 25 },
         [3]  = { basedmg = 45,  perlvl = 20 } -- Damage per sec max 5 secs (this*5)
      },
      ['Hero_Vermillion'] = {
         [1]  = { basedmg = 60,  perlvl = 25 },
         [3]  = { basedmg = 100, perlvl = 50 }
      },
      ['Hero_Vex'] = {
         [1]  = { basedmg = 60,  perlvl = 35 },
         [2]  = { basedmg = 80,  perlvl = 50 }, -- Up to 70% bonus damage if single target
         [4]  = { basedmg = 100, perlvl = 50 }
      },
      ['Hero_Zaku'] = {
         [1]  = { basedmg = 45,  perlvl = 20 },
         [2]  = { basedmg = 45,  perlvl = 30 }, -- Up to 70% bonus damage if single target
         [4]  = { basedmg = 50,  perlvl = 50 } -- Roaches Damage
      }
    }
	
    self.Player = myHero 
end 

--//Not Needed if you don't want to override the db info  
function DamageLib:RegisterSpell(Spell, baseDamage, perLevel)
	self.Spells[Spell] = { baseDamage = baseDamage, perLevel = perLevel }
	table.insert(self.RegSpells, Spell)
end 

function DamageLib:GetSpellInfo(Hero, Spell)
	assert(self.Heroes[Hero.name][Spell],"Error: Spell or Hero not found !") 
	return self.Heroes[Hero.name][Spell]
end

function DamageLib:SetCustomRotation(Rotation)
	self.RegSpells = Rotation
end 

function DamageLib:GetPDamage(unit,Damage)
	return Damage * (unit.power / 100) 
end

function DamageLib:CalcDamage(unit,Damage)
	return Damage / (1 + (unit.armor / 100))
end 

function DamageLib:CalcMagicDamage(unit,Damage)
	return Damage / (1 + (unit.magicArmor / 100))
end 

function DamageLib:GetPureDamage(unit, Spell)
	local S = (self.Spells[Spell] ~= nil and self.Spells[Spell]) or self:GetSpellInfo(unit, Spell)
	local DefaultDmg = S.basedmg + (S.perlvl * unit:GetAbility(Spell).level)

	return self:GetPDamage(self.Player, DefaultDmg)
end

function DamageLib:ComputeAADmg(unit,Target)
	local PADmg = unit.baseDamage * (unit.power / 100)
	return self:CalcDamage(Target, PADmg)
end

function DamageLib:GetDamage(unit, Target, Spell)
	--//if No Overriden info reads from db
	local S = (self.Spells[Spell] ~= nil and self.Spells[Spell]) or self:GetSpellInfo(unit, Spell)
	local DefaultDmg = S.basedmg + (S.perlvl * unit:GetAbility(Spell).level)

	local pureDamage = self:GetPDamage(self.Player, DefaultDmg)
	return self:CalcMagicDamage(unit, pureDamage)
end 

function DamageLib:GetComboDamage(unit, Target, Rotation)
	local TDamage, Rotation = 0, (Rotation ~= nil and Rotation) or 
		(#self.RegSpells > 0 and self.RegSpells) or self:GetRotation(unit)

	for each, Spell in pairs(Rotation) do 
		local D = self:GetPureDamage(unit,Spell)
		TDamage = TDamage + D 
	end 

	return (Target ~=  nil and self:CalcMagicDamage(Target,TDamage)) or TDamage
end

if not _G.Allclass then _G.Allclass = {} end
_G.Allclass.DamageLib = DamageLib()
--End DamageLib--

_G.TS = {}
_G.TS.LOW_HP = 1
_G.TS.MOST_POWER = 2 
_G.TS.CLOSEST = 3 
_G.TS.LESS_CAST = 4 
_G.TS.LESS_ATTACK = 5 

class "TargetSelector"

function TargetSelector:__init(DefaultMode, AllyTeam) 
	self._VERSION = "1.0.0"
	self.LastUpdate = "2/10/2015"
	
	self.DmgLib = Allclass.DamageLib
	self.modes = {
		[1] = { function(a,b) return a.health < b.health end }, -- LOW_HP 
		[2] = { function(a,b) return a.power > b.power end }, --Most_POWER 
		[3] = { function(a,b) return myHero:DistanceTo(a) < myHero:DistanceTo(b) end}, -- CLOSET
		[4] = { function(a,b) return self.DmgLib:CalcMagicDamage(a, 100) > self.DmgLib(b, 100) end }, -- LESS_CAST
		[5] = { function(a,b) return self.DmgLib:ComputeAADmg(myHero,a) > self.DmgLib:ComputeAADmg(myHero,b) end }, -- LESS_ATTACK
		[6] = { function(a,b) return self:GetPriority(a) < self:GetPriority(b) end } -- PRIORITY 
	}

	self.DF = DefaultMode
	self.enemyT = AllyTeam ~= true 
	--Game.PrintToChat("TargetSelector Version: "..self._VERSION.." Loaded, Last Update : "..self.LastUpdate)

	return self 
end 


function TargetSelector:LoadToMenu(menu)
	--{Ts Menu}--
	self.menu = menu or MenuConfig("TS", "TargetSelector")
		self.menu:Picture("C:\\Users\\qhed\\AppData\\Roaming\\gamesteroids\\bin\\assets\\2\\lol3.png")
		self.menu:Empty("tsinfo1", "<font  color= #01AEBF> <center> Strife TargetSelector </center> </font>")
	
	--{TS options}--
	self.menu:Section("tsinfo2","<font  color= #01AEBF> TargetSelector Options : </font>")
		self.menu:Info("tsinfo3","Mode"):Icon("fa-bullseye")
		self.menu:DropDown("mode", "", self.DF, { "LOW_HP", "MOST_POWER", "CLOSET", "LESS_CAST", "LESS_ATTACK", "PRIORITY"}, nil, true):Icon("fa-list") 
		self.menu:Boolean("selected", "Focus selected target", false):Note("Focus selected target regardless of mode")
		self.menu:Button("reset", "Reset priority settings", self:setAutoPriority()):Note("Uses autopriority to reset"):Icon('fa-recycle')

	--{Drawing}--
	self.menu:Section("tsinfo2","<font  color= #01AEBF> Drawing : </font>")
		self.menu:Boolean("drawT", "Draw actual target", true)
		self.menu:Boolean("drawS", "Draw selected target", true):Note("Draw leftclick selected target")
		self.menu:Section("prioinfo", "<font  color= #01AEBF> Set Priority here : </font>")
	
	--{Priority}--
	local Heros = Allclass.HeroManager:GetPlayers(self.enemyT)
	if #Heros == 0 then self.menu:Info("tsinfo4"," No enemys found "):Icon("fa-exclamation-triangle") end
	for each, hero in ipairs(Heros) do 
		self.menu:Slider(hero.name, hero.name, 1, 1, 5, 1)
	end 

	--{Extra stuff}--
	self:setAutoPriority()
	self.menu:Section("tsinfo5","<font  color= #01AEBF> Quote of the day : </font>")
		self.menu:Empty("tsquote"," “When a man cannot chose, he ceases to be a man.” ")
end 

function TargetSelector:setAutoPriority() 
	local priorityTable = {
		[1] = { "Hero_Blazer", "Hero_Caprice", "Hero_Fetterstone", "Hero_Rook", "Hero_Vermillion" },
		[2] = { "Hero_Malady", "Hero_Moxie", "Hero_Trixie", "Hero_Ray", "Hero_Iah" },
		[3] = { "Hero_Chester", "Hero_Gokong", "Hero_Hale", "Hero_LadyTinder", "Hero_Harrower"},
		[4] = { "Hero_Shank", "Hero_JinShe", "Hero_Bandito", "Hero_Zaku", "Hero_Vex", "Hero_Carter"},
		[5] = { "Hero_Minerva", "Hero_Nikolai", "Hero_Ace", "Hero_Bastion", "Hero_Bo", "Hero_Claudessa"}
	}

	local Heros = Allclass.HeroManager:GetPlayers(self.enemyT)

	for each, hero in ipairs(Heros) do 
		for each, tab in pairs(priorityTable) do 
			local contains = table.contains(tab, hero.name)
			if contains then
				if self.menu[hero.name] then self.menu[hero.name]:Value(each) end 
			end
		end  
	end 
end 

function TargetSelector:GetTarget(range) 
	local Team = (self.enemyT and ENEMY_TEAM) or ALLY_TEAM
	local availableHeros = Allclass.HeroManager:GetHeros(Team, range)
	
	if #availableHeros > 0 then 
		table.sort(availableHeros, self.modes[self.menu.mode:Value()])
		return availableHeros[1]
	end 
end 

function TargetSelector:GetPriority(unit)
	return self.menu[unit.name]:Value()
end 

_G.ENEMY_TEAM = 0 
_G.ALLY_TEAM = 1

class "HeroManager" 

function HeroManager:__init() 
	self.T = 0 
	self.Delay = 200
end 

function HeroManager:IsAlly(unit)
	return unit.isHero and unit.team == myHero.team 
end 

function HeroManager:IsEnemy(unit)
	return unit.isHero and unit.team ~= myHero.team 
end 

function HeroManager:IsValid(unit, enemyTeam)
	return unit.valid and unit.isHero and (enemyTeam ~= false and self:IsEnemy(unit)) or self:IsAlly(unit) and not unit.dead
end 

function HeroManager:GetHeros(Team, Range, Health)
	--Updates every 0,2 sec if called in a loop.
	if self.T > Core.GetTickCount() + self.Delay then return else self.T = Core.GetTickCount() end
	local Distance = function(unit) return myHero.pos:DistanceTo(unit.pos) end 
	local Heros = {}
	Range = Range or 20000
	Health =  Health or 0 
	local isEnemyTeam = Team == ENEMY_TEAM  

	for each, player in ipairs(sh.players) do 
		local hero = player.hero
		if self:IsValid(hero, isEnemyTeam) and Distance(hero) < Range and unit.health > Health then
			table.insert(enemyHeros, hero)
		end 
	end 

	return Allclass.Utility:SetReadOnly(Heros) 
end 

function HeroManager:GetPlayers(enemyT)
	enemyT = enemyT ~= false 
	local Heros = {}
	for each, player in ipairs(sh.players) do
		local hero = player.hero  
		if enemyT and self:IsEnemy(hero) then 
			table.insert(Heros, hero)
		elseif not(enemyT) and self:IsAlly(hero) then
			table.insert(Heros, hero)
		end 
	end 

	return Allclass.Utility:SetReadOnly(Heros) 
end 

function HeroManager:GetTestClones(Range, health)
	Range = Range or 20000
	health = health or 0
	local Distance = function(unit) return myHero.pos:DistanceTo(unit.pos) end 
	local Clones = {}
	for each, e in ipairs(sh.entities) do
		if e and e.valid and e.name:lower():find("hero") and e.uid ~= myHero.uid and e.isAlive and e.health >= health and Distance(e) < Range then
			table.insert(Clones,e)
		end
	end

	return Allclass.Utility:SetReadOnly(Clones)
end 

function HeroManager:GetClosetTestClone()	
	local Clones = self:GetTestClones()
	local D, closet = math.huge, nil
	local Distance = function(unit) return myHero.pos:DistanceTo(unit.pos) end 
	local dis

	for each, c in ipairs(Clones) do  
		dis = Distance(c) 
		if dis < D then 
			D = dis 
			closet = c 
		end 
	end 
	return closet
end 

if not _G.Allclass then _G.Allclass = {} end
_G.Allclass.HeroManager = HeroManager() 


local checkReload = function() 
	if _G.IsIngame then return end
	if Game.GetLocalPlayer().valid and Game.GetLocalPlayer().hero.valid then
		CallCustomGameStart()
	end 
end
checkReload()
