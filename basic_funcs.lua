function split (inputstr, sep)
   if sep == nil then
      sep = "%s"
   end
   local t={}
   for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
      table.insert(t, str)
   end
   return t
end

function steamIDQuery( steamid )
    for ind, ply in ipairs(find.allPlayers()) do
        if ply:getSteamID() == steamid then return ply end
    end
end

function serverClientNotification( _text, _type, _time )
    net.start("CLIENT_NOTIFICATION")
        net.writeTable({_text, _type, _time})
    net.send(owner())
end