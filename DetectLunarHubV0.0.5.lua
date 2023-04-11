--This script detects LunarHub V0.0.5, this method will be patched once V0.0.6 is out since nick will be deleting UsingLunar
while task.wait() do
  for i,v in pairs(game.Players.LocalPlayer:GetChildren()) do
    if v.Name == "UsingLunar" then
      game.Players.LocalPlayer:Kick()
      end
    end
  end
