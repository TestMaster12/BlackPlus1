do

function run(msg, matches)
local reply_id = msg['id']
local text = 'سلام بابایی جونم😍'
local m = '87946267'
if matches[1] == 'salam' or 'سلام' or 'slm' or 'i' then
if result.id = tonumber(m) then
    text = 'test'
reply_msg(reply_id, text, ok_cb, false)
end
end 
end
return {
patterns = {
    "^salam$",
    "^سلام$",
    "^slm$",
    "^[Hh]i"
},
run = run
}

end
