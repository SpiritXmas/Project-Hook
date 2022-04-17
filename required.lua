game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Project Hook";
    Text = "Loadstring has changed. To find the new one, join the discord(A6N3nJeEsR) or check your clipboard.";
    Duration = 15;
})

if setclipboard then setclipboard('loadstring(game:HttpGet("https://projecthook.xyz/scripts/free.lua"))()') end

if syn then -- credit to whoever first released this publically
    local Inv, ServerInfo, ServerName = syn.request({Url = "https://projecthook.xyz/requirements/discord.txt"; Method = "GET"}).Body, nil, ""

    ServerInfo = syn.request({
        Url = 'https://discord.com/api/v6/invite/'..Inv,
        Method = 'GET'
    })

    if ServerInfo.Success then erverInfo = game:GetService("HttpService"):JSONDecode(ServerInfo.Body) else return end

    syn.request({
        Url = 'http://127.0.0.1:6463/rpc?v=1',
        Method = 'POST',
        Headers = {
            ['Content-Type'] = 'application/json',
            ['origin'] = 'https://ptb.discord.com',
        },
        Body = game:GetService("HttpService"):JSONEncode({
            ['args'] = {
                ['code'] = Inv,
            },
            ['cmd'] = 'INVITE_BROWSER',
            ['nonce'] = tostring(math_random(11111,99999))
        })
    })
end
