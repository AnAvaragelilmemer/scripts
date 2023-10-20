getgenv().bh = {} 
local textchatservice = game:GetService("TextChatService")
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
 function bh:randomstring() 
     local strings = {} 
     for i=1,10 do 
         strings[i] = string.char(math.random(97,122)) 
     end 
     return table.concat(strings) 
 end 
 function bh:getasset(id) 
 local value = isfile(id) and getcustomasset(id) or "rbxassetid://"..id
 return value 
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
     local selectedplayer
     for _,v in pairs(bh.service.Players:GetPlayers()) do 
    if string.find(string.lower(v.Name),string.lower(player)) or string.find(string.lower(v.DisplayName),string.lower(player)) then
    selectedplayer = v
    end
     end
     return selectedplayer
end
return bh
