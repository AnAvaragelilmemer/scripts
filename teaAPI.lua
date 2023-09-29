
getgenv().bh = {}
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
return bh