--===== FiveM Script =========================================
--= DC - Server Starting (Announcement)
--===== Developed By: ========================================
--= Azael Dev
--===== Website: =============================================
--= https://www.azael.dev
--===== License: =============================================
--= Copyright (C) Azael Dev - All Rights Reserved
--= You are not allowed to sell this script
--============================================================ 

local embeds = {
    {
        color = CONFIG.Discord.Embed.Color,
        title = CONFIG.Discord.Embed.Title,
        url = (CONFIG.CitizenFX.Keymaster.Enable and string.format('%s/%s', 'https://cfx.re/join', CONFIG.CitizenFX.Keymaster.ID) or ''),
        author = {
            name = CONFIG.Discord.Embed.Author.Name,
            icon_url = CONFIG.Discord.Embed.Author.IconURL,
            url = (CONFIG.CitizenFX.Keymaster.Enable and string.format('%s/%s', 'https://cfx.re/join', CONFIG.CitizenFX.Keymaster.ID) or '')
        },
        description = CONFIG.Discord.Embed.Description,
        thumbnail = {
            url = CONFIG.Discord.Embed.Thumbnail.URL
        },
        fields = {
            {
                name = CONFIG.Discord.Embed.fields.Link.Text,
                value = (CONFIG.CitizenFX.Keymaster.Enable and string.format('%s/%s', 'https://cfx.re/join', CONFIG.CitizenFX.Keymaster.ID) or '⚠️ Not Applicable'),
                inline = false
            },
            {
                name = CONFIG.Discord.Embed.fields.Endpoint.Text,
                value = (CONFIG.CitizenFX.Server.Enable and string.format('```connect %s%s```', CONFIG.CitizenFX.Server.IP, (CONFIG.CitizenFX.Server.Port ~= '' and ':' .. CONFIG.CitizenFX.Server.Port or '')) or '⚠️ Not Applicable'),
                inline = false
            }
        },
        image = {
            url = CONFIG.Discord.Embed.Image.URL
        },
        timestamp = os.date('!%Y-%m-%dT%H:%M:%SZ', os.time()),
        footer = {
            text = CONFIG.Discord.Embed.Footer.Text,
            icon_url = CONFIG.Discord.Embed.Footer.IconURL
        }
    }
}

Citizen.SetTimeout(CONFIG.Discord.Delay, function()
    PerformHttpRequest(CONFIG.Discord.Webhook.URL, function(code, result, headers)
        -- print(tostring(code), tostring(result), tostring(headers))
    end, 'POST', json.encode({
        username = CONFIG.Discord.Webhook.Name,
        avatar_url = CONFIG.Discord.Webhook.AvatarURL,
        embeds = embeds
    }), {['Content-Type'] = 'application/json'})
end)
