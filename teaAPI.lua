local tea = {}
local Solaris = loadstring(game:HttpGet("https://raw.githubusercontent.com/AnAvaragelilmemer/scripts/main/solarislib"))()
local teleportservice = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")
local characters = {"�","#","%","&",";","x","0","Հz","�ͪ","䯅"}
local lplr = game.Players.LocalPlayer
function tea.notify(title,text)
    Solaris:Notification(title,text)
end

function tea.rejoin()
    if #game:GetService("Players"):GetPlayers() == 1 then
        game.Players.LocalPlayer:Kick("Rejoining...")
        teleportservice:Teleport(game.PlaceId)
        else
            teleportservice:TeleportToPlaceInstance(game.PlaceId,game.JobId)
    end
end

function tea.serverhop()
    local decoded,servers = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/0?sortOrder=2&excludeFullGames=true&limit=100")).data, {}
    for i,v in pairs(decoded) do
    if type(v) == "table" and v.id ~= game.JobId then
    table.insert(servers,v.id)
    end
    end
    if #servers > 0 then
    tea.notify("ServerHop","A server was found, rejoining...")
    wait(0.5)
    teleportservice:TeleportToPlaceInstance(game.PlaceId,servers[math.random(#servers)])
    else
        tea.notify("ServerHop","No servers were found.")
    end
end
            
function tea.randomstring()
    local string1 = characters[math.random(1,#characters)] local string2 = characters[math.random(1,#characters)] local string3 = characters[math.random(1,#characters)] local string4 = characters[math.random(1,#characters)] local string5 = characters[math.random(1,#characters)] local string6 = characters[math.random(1,#characters)] local shuffled = ""..string5.."�ͪ"..string4..""..string6..""..string3..""..string1..""..string2
return shuffled
end

function tea.TweenTeleport(cframe,time)
    game:GetService("TweenService"):Create(lplr.Character.HumanoidRootPart, TweenInfo.new(time), {
    CFrame = cframe
}):Play()
end

function tea.Teleport(cframe)
    lplr.Character.HumanoidRootPart.CFrame = cframe 
end

return tea
