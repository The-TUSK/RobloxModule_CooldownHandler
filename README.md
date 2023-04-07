# RobloxModule_CooldownHandler
A module for easy handling of cooldowns for roblox games.


Example for using the module.
```
-------------PLACE THIS CODE IN A SERVER SCRIPT
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remote = game:GetService("ReplicatedStorage").WeaponRemotes:WaitForChild("RemoteEvent")
---Module
local CooldownModule = require(game.ServerScriptService.GamePlayModules.CooldownScript)
local AbilitiyModule = require(game.ServerScriptService.AbilityModules.SomeAbility)

Remote.OnServerEvent:Connect(function(player, Action)
	local c = player.Character
	local hum = c:WaitForChild("Humanoid")
	--Equip
	if Action == "Equip" and not c:FindFirstChild("Stun") and CooldownModule.GetEquippedFunc(player.UserId) ~= true then
		AbilitiyModule.Equip(player, c)
		wait(0.5)		
	--Unequip	
	elseif Action == "Unequip" and not c:FindFirstChild("Stun")  and CooldownModule.GetEquippedFunc(player.UserId) == true then
		AbilitiyModule.UnEquip(player, c)	
		wait(0.5)	
	--CLICK
	elseif Action == "Click" and  not c:FindFirstChild("Stun")
		--COOLDOWNS
		and CooldownModule.GetClickCooldown(player.UserId) == true 
	then
		---do stuff
    AbilitiyModule.Click(player) --call the function written on a ability module (for example the module written below).
	elseif Action == "Skill1"
		--COOLDOWNS
		and CooldownModule.GetECooldown(player.UserId) == true and not c:FindFirstChild("Stun")
	then
		---do stuff
	--SECOND SKILL
	elseif Action == "Skill2" and not c:FindFirstChild("Stun")
		--COOLDOWNS
		and CooldownModule.GetRCooldown(player.UserId) == true
	then
		---do stuff
	---THIRD SKILL
	elseif Action == "Skill3" and not c:FindFirstChild("Stun")
		--COOLDOWN
		and CooldownModule.GetFCooldown(player.UserId) == true
	then
		---do stuff
	end
end)
```

```
--------------PLACE THIS CODE IN A MODULE
--Equip
module.Equip = function(player)
  --setting Equipped to true
  CooldownModule.SetEquippedFunc(player.UserId, true)
end)

--Unequip
module.UnEquip = function(player)
  --setting Equipped to false
  CooldownModule.SetEquippedFunc(player.UserId, false)
end)

--Click
module.Click = function(player)
  CooldownModule.SetClickCooldown(player.UserId, true)
  --_DO STUFF_
  task.wait(cooldown)
  CooldownModule.SetAttackingCooldown(player.UserId, false)--enables the player to attack
  CooldownModule.SetClickCooldown(player.UserId, false)--enables the player to use the skill again.
end)

--First Skill
module.FirstSkill = function(player)
  CooldownModule.SetECooldown(player.UserId, true)
  --_DO STUFF_
  task.wait(cooldown)
  CooldownModule.SetAttackingCooldown(player.UserId, false)--enables the player to attack
  CooldownModule.SetECooldown(player.UserId, false)--enables the player to use the skill again.
end)
```
