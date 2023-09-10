local pissware = {} 
 local pairs = pairs 
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
 local guis = 0
 function pissware.check() 
 guis = 0
 game:GetService("StarterGui"):SetCore("SendNotification", { 
         Title = "Pissware"; 
         Text = "if no new notifications show up that means pissware's GUIS/volume doesnt exist"; 
         Duration = 6 
         }) 
 for i,v in pairs(game:GetService("CoreGui"):GetDescendants()) do 
         if v.Name:find("�ͪ") then
         guis = guis + 1
     warn("Pissware found!")
     game:GetService("StarterGui"):SetCore("SendNotification", { 
         Title = "Found Pissware/Sound"; 
         Text = "Current Pissware GUIS/Sound: "..guis; 
         Duration = 2
         }) 
         else 
         continue 
         end 
         end
 end
 return pissware;
