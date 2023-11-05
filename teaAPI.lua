getgenv().bh = {} 
local textchatservice = game:GetService("TextChatService")
local isusermobile = game.Players.LocalPlayer.PlayerGui:FindFirstChild("TouchGui")
local HttpService = game:GetService("HttpService")
local Request = http_request or request or (syn and syn.request)
local pairs = pairs
 bh.service = setmetatable({},{__index = function(self,service) 
     local good,bad = pcall(function() game:GetService(service) end)  
     if good then 
     return game:GetService(service) 
     else 
     return 
     end 
     end 
 }) 
 function bh:connect(signal,event) 
   return signal:Connect(event) 
 end 
 function bh:randomstring(length)
local amount = length or 10
     local strings = {} 
     for i=1,amount do 
         strings[i] = string.char(math.random(97,122)) 
     end 
     return table.concat(strings) 
 end 
 function bh:getasset(id) 
if isfile(id) then
return getcustomasset(id)
else
return "rbxassetid://"..id
end
end 
 function bh:chatcheck() 
 if textchatservice.ChatVersion == Enum.ChatVersion.TextChatService then 
 return true 
 else 
 return false 
 end 
 end 
 function bh:chat(msg) 
 if bh:chatcheck() then 
 textchatservice.TextChannels.RBXGeneral:SendAsync(msg) 
 else 
 bh.service.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg,"All") 
 end 
 end 
 function bh.new(instance,property) 
 local thing = Instance.new(instance) 
 for i,v in pairs(property) do 
    thing[i] = v 
 end 
 return thing 
 end 
 function bh.fpscap(number) 
     if setfpscap then 
     setfpscap(number) 
     end 
 end
 function bh:GetPlayer(player)
if player:lower():find("random") then
return bh.service.Players:GetPlayers()[math.random(1,#bh.service.Players:GetPlayers())]
end
 local selectedplayer
     for _,v in pairs(bh.service.Players:GetPlayers()) do 
    if string.find(string.lower(v.Name),string.lower(player)) or string.find(string.lower(v.DisplayName),string.lower(player)) then
    selectedplayer = v
    end
     end
     return selectedplayer
end
function bh:GetDevice()
if isusermobile then
return "Mobile"
else
return "PC"
end
end
function bh:IsUserMobile()
if isusermobile then
return true
else
return false
end
end
function bh:TweenTeleport(cframe,time) 
game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(time), {CFrame = cframe}):Play() 
end
function bh:Teleport(CFrame)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame
end
function bh:LTeleport(cframe,time,duration)
local timer = tick()
local whentostop = duration or 0.5
repeat task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame:Lerp(cframe,time)
until tick()-timer > whentostop
end
function bh:GetPlaceUID()
    local the = HttpService:JSONDecode(Request({Url = "https://apis.roblox.com/universes/v1/places/"..game.PlaceId.."/universe"}).Body)
    return the.universeId
end
function bh:Load(link)
return loadstring(game:HttpGet(link))()
end
return bh
