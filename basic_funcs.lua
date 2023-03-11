local function split (inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={}
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        table.insert(t, str)
    end
    return t
end

local function steamIDQuery( steamid )
    for ind, ply in ipairs(find.allPlayers()) do
        if ply:getSteamID() == steamid then return ply end
    end
end