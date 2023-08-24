--because am lazy to put vhub's key 
local mt = getrawmetatable(game)
local index = mt.__index
setreadonly(mt,false)
mt.__index = newcclosure(function(...)
   local args = {...}
   if args[1] == game and args[2] == "PlaceId" then
       return 14404642904
   end
   return index(...)
end)
setreadonly(mt,true)
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ScreenGui"
ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui
task.spawn(function()
while task.wait() do 
pcall(function()
if game.CoreGui:FindFirstChild("KeyScreen") then
    game.CoreGui.KeyScreen.KeyFrame.TextBox_Key.Text = ""..loadstring(game:HttpGet("https://github.com/AnAvaragelilmemer/scripts/blob/main/vhubkey.lua?raw=true"))()
    else
    --hi
end
end)
end
end)
if getgenv().loadvhub then
loadstring(game:HttpGet("https://raw.githubusercontent.com/V31nc/2642/Created/VHub"))()
end

