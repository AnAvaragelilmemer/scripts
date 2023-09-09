local pissware = {}
local isusermobile = game.Players.LocalPlayer.PlayerGui:FindFirstChild("TouchGui")
function pissware.unctest()
loadstring(game:HttpGetAsync("https://github.com/unified-naming-convention/NamingStandard/blob/main/UNCCheckEnv.lua?raw=true"))()
wait(1)
if identifyexecutor then
print("Executor: "..identifyexecutor())
else
print("Executor: Unknown")
end
end
function pissware.fpscap(number)
if setfpscap then
setfpscap(number)
end
end
function pissware.leave()
game:Shutdown()
end
function pissware.dex()
if isusermobile then
getgenv().Key = "Bash"
loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Hosvile/Refinement/main/MC%3AIY%20Dex",true))()
else
 loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
end
end
function pissware.rspy()
loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/SimpleSpyV3/main.lua"))()
end
function pissware.kick(msg)
game.Players.LocalPlayer:Kick(msg)
end
return pissware;
