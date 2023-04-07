# RobloxModule_CooldownHandler
A module for easy handling of cooldowns for roblox games.


Example for using the module.
```
module.Equip = function(player)
  --setting Equipped to true
  CooldownModule.SetEquippedFunc(player.UserId, true)
end)

module.Click = function(player)
  CooldownModule.SetClickCooldown(player.UserId, true)
  task.wait(cooldown)
  CooldownModule.SetAttackingCooldown(player.UserId, false)--enables the player to attack
  CooldownModule.SetClickCooldown(player.UserId, false)--enables the player to use the skill again.
end)

module.FirstSkill = function(player)
  CooldownModule.SetECooldown(player.UserId, true)
  task.wait(cooldown)
  CooldownModule.SetAttackingCooldown(player.UserId, false)--enables the player to attack
  CooldownModule.SetECooldown(player.UserId, false)--enables the player to use the skill again.
end)
```
