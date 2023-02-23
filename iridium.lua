repeat task.wait() until game:IsLoaded() and game.ContentProvider.RequestQueueSize == 0;
local lplr = game.Players.LocalPlayer
local chlplr = lplr.Character.Humanoid
local name = lplr.Name
local dname = lplr.DisplayName
local userid = lplr.UserId 
local version = "2.7"
getgenv().fps = nil;
function fpss()
if getgenv().fps then
    setfpscap(999)
    else
        setfpscap(60)
end
end
getgenv().headless = nil
function headless()
if getgenv().headless then
    lplr.Character.Head.Transparency = 1
   lplr.Character.Head.face.Transparency = 1
  else
      lplr.Character.Head.Transparency = 0 
      lplr.Character.Head.face.Transparency = 0
end
end

local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

local link = "https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt"

local Discord = loadstring(game:HttpGetAsync(link))();

local window = Discord:Window("discord")

local Iridium = window:Server("Iridium "..version, "")

local welcome = Iridium:Channel("[👋] Welcome")
welcome:Label("Everyone welcome drmr!")
welcome:Label("man with no brin just slid into the server.") 
welcome: Label("A wild memerboy9 appeared.")
welcome:Label("Angel just showed up!")
welcome:Label("Welcome Bloxy, Say hi!")
welcome:Label("Good to see you, skiddie!")
welcome:Label("Someone hopped into the server.")
welcome:Label("catzx joined the party.")
welcome:Label("Glad your here, "..dname..".")

local update = Iridium:Channel("[❗️] Update-Logs")

update:Label("made pissware : mobile a thing now.")

local main = Iridium:Channel("————MAIN————")

local info = Iridium:Channel("[❓] Info")

info:Label("Name: "..name)
info:Label("Display Name: "..dname)
info:Label("User Id: "..userid)
info:Label("Executor: "..identifyexecutor() or "unknown")
info:Label("Game: "..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)




local localplayer = Iridium:Channel("[🧍] Local-Player")

localplayer:Textbox("Speed", " ", true, function(v)
chlplr.WalkSpeed = v
end)

localplayer:Textbox("Jump", " ", true, function(v)
chlplr.JumpPower = v
end)

localplayer:Textbox("Field of view", " ", true, function(v)
    game.Workspace.Camera.FieldOfView = V
end)

localplayer:Button("Reset speed, jump, FOV.", function()
    chlplr.WalkSpeed = 16
    chlplr.JumpPower = 50
    game.Workspace.Camera.FieldOfView = 70
    Notification:Notify(
    {Title = "Notification", Description = "Resetted settings!"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 3, Type = "default"}
)
end)


localplayer:Seperator()

localplayer:Button("Refresh", function()
    lplr.Character:Destroy()
    Notification:Notify(
    {Title = "Refreshing", Description = "This wont take long, please wait..."},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
)
end)

localplayer:Button("Reset", function()
    lplr.Character.Head:Destroy()
    Notification:Notify(
    {Title = "Resetting...", Description = "This wont take long, please wait."},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
)
end)

localplayer:Button("Rejoin", function()
game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId,game.JobId,game:GetService('Players').LocalPlayer)
Notification:Notify(
    {Title = " ", Description = "Rejoining..."},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 2, Type = "default"}
)
end)

localplayer:Toggle("Fps unlock",false, function(v)
getgenv().fps = v 
fpss()
end)



local client = Iridium:Channel("[👀] Client-Sided-Scripts")

client:Toggle("Headless",false, function(v)
getgenv().headless = v 
headless()
end)

--more soon

local Scripts = Iridium:Channel("[📜] Scripts")


Scripts:Button("Fly gui V3", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
end)

Scripts:Button("Hoho hub", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
end)

Scripts:Button("Infinite Yield", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end)
    
Scripts:Label("more will come soon")
