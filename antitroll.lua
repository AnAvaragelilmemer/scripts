
local metatable = getrawmetatable(game)
local oldnamecall = metatable.__namecall
local byfrontrolls = {
    "https://github.com/FilteringEnabled/FE/blob/main/asd?raw=true",
    "https://raw.githubusercontent.com/FilteringEnabled/FE/main/asd",
    "https://pastebin.com/raw/YMZmLycm"
}
setreadonly(metatable,false)
metatable.__namecall = function(self,url,...)
local method = getnamecallmethod()
if (method == "HttpGet" or method == "HttpGetAsync") and self == game and table.find(byfrontrolls,url) then 
    print("fuck "..url.." one more byfron troll and am going insane")
    return "https://github.com/AnAvaragelilmemer/scripts/blob/main/printhelloworld?raw=true"
end
return oldnamecall(self,url,...)
end
setreadonly(metatable,true)
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "anti byfron troll loaded",Text = "for those who want to use nameless admin"})
