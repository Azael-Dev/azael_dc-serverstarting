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

CONFIG = {}

CONFIG.CitizenFX = {                                        -- CitizenFX (FiveM)
    Keymaster = {                                           -- Keymaster (URL: https://keymaster.fivem.net/)
        Enable = true,                                      -- แสดง Link เชื่อมต่อกับเซิร์ฟเวอร์ (true เท่ากับ เปิดใช้งาน | false เท่ากับ ปิดใช้งาน)
        ID = 'KEYMASTER_ID'                                 -- ID สำหรับ Keymaster ที่ใช้งาน (รูปภาพตัวอย่าง: https://i.imgur.com/ywDM6N7.png)
    },

    Server = {                                              -- Server (เซิร์ฟเวอร์)
        Enable = true,                                      -- แสดง Endpoint เชื่อมต่อกับเซิร์ฟเวอร์ (true เท่ากับ เปิดใช้งาน | false เท่ากับ ปิดใช้งาน)
        IP = '127.0.0.1',                                   -- IP
        Port = '30120'                                      -- Port (หากไม่ต้องการเเสดง ให้ทำเป็นสตริงว่าง)
    }
}

CONFIG.Discord = {                                          -- Discord
    Webhook = {                                             -- Webhook
        URL = 'https://discord.com/api/webhooks/ID/TOKEN',  -- URL
        Name = 'AZAEL - BETA SERVER',                       -- ชื่อ
        AvatarURL = 'https://i.imgur.com/lQzs7T1.gif'       -- URL ภาพประจำตัว 
    },

    Content = {                                             -- Content
        Text = 'Announce to',                               -- ข้อความ

        Ping = {                                            -- ปิง
            RoleID = 000000000000000000                     -- รหัสบทบาท
        }
    },

    Embed = {                                               -- Embed
        Color = 4189972,                                    -- รหัสสี รูปแบบ Decimal (URL: https://convertingcolors.com/)

        Author = {                                          -- ผู้เขียน
            Name = 'AZAEL - BETA SERVER',                   -- ชื่อ
            IconURL = 'https://i.imgur.com/lQzs7T1.gif'     -- URL ภาพสัญลักษณ์ (ขนาดเล็ก)
        },

        Title = 'ขณะนี้เซิร์ฟเวอร์เปิดให้บริการแล้ว',                -- ชื่อเรื่อง

        Description = 'สามารถเชื่อมต่อกับเซิร์ฟเวอร์ได้ตามขั้นตอนด้านล่างนี้',    -- คำอธิบาย

        Thumbnail = {                                       -- รูปภาพ (ขนาดย่อ)
            URL = 'https://i.imgur.com/lQzs7T1.gif'         -- URL
        },

        fields = {                                          -- ฟิลด์
            Link = {                                        -- Link
                Text = 'Server Link'                        -- ข้อความ
            },
            
            Endpoint = {                                    -- Endpoint
                Text = 'Server Endpoint'                    -- ข้อความ
            }
        },

        Image = {                                           -- รูปภาพ (ขนาดใหญ่)
            URL = 'https://i.imgur.com/QyzBkO5.png'         -- URL
        },

        Footer = {                                          -- ส่วนท้าย
            Text = 'Azael Dev',                             -- ข้อความ
            IconURL = 'https://i.imgur.com/lQzs7T1.gif'     -- URL ภาพสัญลักษณ์ (ขนาดเล็ก)
        }
    }
}
