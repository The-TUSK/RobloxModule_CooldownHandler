# RobloxModule_CooldownHandler
A module for easy handling of cooldowns for roblox games.


Example for using the module.
```
module.Equip = function(player, character)
  --setting Equipped to true
  CooldownModule.SetEquippedFunc(player.UserId, true)
end)

module.Click = function(player, character, humanoid, ClickCombo)
  CooldownModule.SetClickCooldown(player.UserId, true)
  task.wait(cooldown)
  CooldownModule.SetAttackingCooldown(player.UserId, false)--enables the player to attack
  CooldownModule.SetClickCooldown(player.UserId, false)--enables the player to use the skill again.
end)
```
