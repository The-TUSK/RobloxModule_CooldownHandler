# RobloxModule_CooldownHandler
A module for easy handling of cooldowns for roblox games. (Place the script below to another module then call the functions from a server script).


Example for using the module.
```
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
