game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Project Hook";
    Text = "Loadstring is changing. Find the new one in discord(A6N3nJeEsR) or check your clipboard.";
    Duration = 15;
})

if setclipboard then setclipboard('loadstring(game:HttpGet("https://projecthook.xyz/scripts/free.lua"))()') end

loadstring(game:HttpGet("https://projecthook.xyz/scripts/free.lua"))()
