do

function run(msg, matches)
local reply_id = msg['id']
local text = 'Welcome to Mega|Tesla!\n\n>To get a new Mega|Tesla group Contact @MegaTeslapvbot\n@The_DeSigN3r\n@ParsaAlemi:\n\nChannel : @MegaTesla_Ch\n\nUse #superhelp command to show bot commands!!\n\n#Thanks_for_using @MegaTesla!'
if matches [1] == '/start' then
    if not is_sudo(msg) then
reply_msg(reply_id, text, ok_cb, false)
end
end 
end
return {
patterns = {
    "^/start"
},
run = run
}

end

--By @MehdiHS
