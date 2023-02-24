repeat task.wait() until game:IsLoaded() and game.ContentProvider.RequestQueueSize == 0;
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnAvaragelilmemer/scripts/main/toggler"))()
local lplr = game.Players.LocalPlayer
local chlplr = lplr.Character.Humanoid
local name = lplr.Name
local dname = lplr.DisplayName
local userid = lplr.UserId 
local version = "2.7"
local RunService = game:GetService("RunService")
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
getgenv().render = nil;
function render()
if getgenv().render then
    RunService:Set3dRenderingEnabled(false)
    else
            RunService:Set3dRenderingEnabled(true)
end
end

	getgenv().infjump = nil; --reworked.
	function infjump() 
	        game:GetService("UserInputService").JumpRequest:connect(function()
	    if getgenv().infjump then
	        		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
end
end)
end

local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

local link = "https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt"

local Discord = loadstring(game:HttpGetAsync(link))();

local window = Discord:Window("discord")

local Iridium = window:Server("Homebrew "..version, "")

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

local req = http_request or request or (syn and syn.request)
local HS = game:GetService("HttpService")
local response = HS:JSONDecode(
    req({
    Url = "https://friends.roblox.com/v1/users/"..game.Players.LocalPlayer.UserId.."/friends/count"
})
.Body)
info:Label("Friends: "..response.count)

local localplayer = Iridium:Channel("[🧍] Local-Player")

localplayer:Textbox("Speed", " ", true, function(v)
chlplr.WalkSpeed = v
end)

localplayer:Textbox("Jump", " ", true, function(v)
chlplr.JumpPower = v
end)

localplayer:Textbox("Field of view", " ", true, function(v)
    game.Workspace.Camera.FieldOfView = v
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

localplayer:Button("Hard reset", function()
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



local client = Iridium:Channel("[👀] Misc")

client:Toggle("Client sided Headless",false, function(v)
getgenv().headless = v 
headless()
end)

client:Toggle("Enable/Disable rendering",false, function(v)
    getgenv().render = v
    render()
    end)

client:Toggle("Infinite jump",false, function(v)
    getgenv().infjump = v 
    infjump()
end)

client:Button("sit", function()
    lplr.Character.Humanoid.Sit = true
    end)

client:Button("Fire Click Detector", function()
    for i, v in pairs(game:GetDescendants()) do
        if v:IsA('ClickDetector') and v.Parent:FindFirstChildOfClass('NumberValue') then
            fireclickdetector(v, 3)
        end
    end
end)

client:Button("Open ESP (SOON)", function()
    Notification:Notify(
    {Title = "Coming soon", Description = "this will be released soon."},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
)
end)

    


--more soon

local Scripts = Iridium:Channel("[📜] Scripts")


Scripts:Button("Fly gui V3", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
end)

Scripts:Button("Infinite Yield", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end)
    
Scripts:Button("Keyboard", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end)

Scripts:Button("Netless", function() 
    --didnt made this
    for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
game:GetService("RunService").Heartbeat:connect(function()
v.Velocity = Vector3.new(-30,0,0)
end)
end
end
Notification:Notify(
    {Title = "Hey there!", Description = "Netless is loaded, re-execute if you die."},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
)
end)


Scripts:Button("Project Bullshit V3", function()
loadstring(game:HttpGet("https://pastebin.com/raw/uw2P2fbY", true))()
end)

Scripts:Button("Hydro hub (Hydrogen Built in)", function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/FRX397/Hydrohub/main/Hydro_hub"))()
end)



Scripts:Label("more will come soon")


Notification:Notify(
    {Title = "Loaded!", Description = "Homebrew "..version.." is loaded."},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
)
