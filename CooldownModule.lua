local module = {}

---TABLES
local Equipped = {}
local AttackingCooldown = {}
local ClickCooldown = {}
local ECooldown = {}
local RCooldown = {}
local FCooldown = {}

--SETTERS AND GETTERS

-------EQUIPPED
module.SetEquippedFunc = function(ID, value)
	Equipped[ID] = value
end

module.GetEquippedFunc = function(ID)
	return Equipped[ID]
end



-------ATTACKING
module.SetAttackingCooldown = function(ID, value)
	if Equipped[ID] == true then
		AttackingCooldown[ID] = value
	elseif Equipped[ID] == false and AttackingCooldown[ID] == true and value == false then
		AttackingCooldown[ID] = value
	end
end

module.GetAttackingCooldown = function(ID)
	if Equipped[ID] == true and AttackingCooldown[ID] ~= true then
		return true
	else
		return false
	end
end

module.GetCooldowns = function(ID)
	if AttackingCooldown[ID] ~= true and  ClickCooldown[ID] ~= true and ECooldown[ID] ~= true  
		and RCooldown[ID] ~= true and FCooldown[ID] ~= true then
		return true
	else return false
	end
end

-------CLICK
module.SetClickCooldown = function(ID, value)
	if Equipped[ID] == true then
		ClickCooldown[ID] = value
		if value then
			AttackingCooldown[ID] = true
		end
	elseif Equipped[ID] == false and ClickCooldown[ID] == true and value == false then
		ClickCooldown[ID] = value
	end
end

module.GetClickCooldown = function(ID)
	if Equipped[ID] == true and ClickCooldown[ID] ~= true and AttackingCooldown[ID] ~= true then
		return true
	else return false
	end
end



-------E SKILL
module.SetECooldown = function(ID, value)
	if Equipped[ID] == true then
		ECooldown[ID] = value
		if value == true then
			AttackingCooldown[ID] = true
		end
	elseif Equipped[ID] == false and ECooldown[ID] == true and value == false then
		ECooldown[ID] = value
	end
end

module.GetECooldown = function(ID)
	if Equipped[ID] == true and ECooldown[ID] ~= true and  AttackingCooldown[ID] ~= true then
		return true
	else return false
	end
end



-------R SKILL
module.SetRCooldown = function(ID, value)
	if Equipped[ID] == true then
		RCooldown[ID] = value
		if value == true then
			AttackingCooldown[ID] = true
		end
	elseif Equipped[ID] == false and RCooldown[ID] == true and value == false then
		RCooldown[ID] = value
	end
end

module.GetRCooldown = function(ID)
	if Equipped[ID] == true and RCooldown[ID] ~= true and  AttackingCooldown[ID] ~= true then
		return true
	else return false
	end
end



-------F SKILL
module.SetFCooldown = function(ID, value)
	if Equipped[ID] == true then
		FCooldown[ID] = value
		if value == true then
			AttackingCooldown[ID] = true 
		end
	elseif Equipped[ID] == false and FCooldown[ID] == true and value == false then
		FCooldown[ID] = value
	end
end

module.GetFCooldown = function(ID)
	if Equipped[ID] == true and FCooldown[ID] ~= true and  AttackingCooldown[ID] ~= true then
		return true
	else return false
	end
end


return module
