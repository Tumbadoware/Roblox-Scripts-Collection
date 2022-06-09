local p = game.Players.LocalPlayer
local sell = 0

while true do
   sell+=1
   local ohString1 = "Food"
   game:GetService("ReplicatedStorage").Remotes.UseTool:FireServer(ohString1)
   local ohString1 = "Punch"
   game:GetService("ReplicatedStorage").Remotes.UseTool:FireServer(ohString1)
   local ohString1 = "Stomp"
   game:GetService("ReplicatedStorage").Remotes.UseTool:FireServer(ohString1)
   wait(0.5)
   if sell>10 then
       game:GetService("ReplicatedStorage").Remotes.YieldSell:InvokeServer()
       sell = 0
       
       local ohString1 = "Rebirth"
       game:GetService("ReplicatedStorage").Remotes.RequestBuyAll:FireServer(ohString1)
       
       local ohString1 = "Food"
       game:GetService("ReplicatedStorage").Remotes.RequestBuyAll:FireServer(ohString1)

       local ohString1 = "Fist"
       game:GetService("ReplicatedStorage").Remotes.RequestBuyAll:FireServer(ohString1)
       
       local ohString1 = "Stomach"
       game:GetService("ReplicatedStorage").Remotes.RequestBuyAll:FireServer(ohString1)
   
       mouse1click()
       
       spawn(function()
           local TweenService = game:GetService("TweenService")
           local part = game.Players.LocalPlayer.Character
           local loops = 0
           for i,v in pairs(game:GetService("Workspace").PickupItems:GetChildren()) do
            if string.match(v.Name, "Burger") then
            if v and v:IsA("BasePart") then
                       part:MoveTo(v.Position)
                       wait(.2)
            end
            end
           end
       end)

   end
   local ohString1 = "Punch"
   game:GetService("ReplicatedStorage").Remotes.UseTool:FireServer(ohString1)
   
   wait(0.5)
end
I own Synapse.