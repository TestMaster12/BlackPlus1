function run(msg)
local reply_id = msg['id']
if msg.text == "hi" then
	return "Hello bb"
end
if msg.text == "Hi" and is_sudo(msg) then
local text = "Hello Daddy"
	reply_msg(reply_id, text, ok_cb, false)
end
if msg.text == "سلام" and is_sudo(msg) then
local text = "سلام بابا جونم❤،️خسته نباشی☺️"
	reply_msg(reply_id, text, ok_cb, false)
end
if msg.text == "hello" then
	return "Hi honey"
end
if msg.text == "Salam" then
	return "Salam aleykom"
end
if msg.text == "salam" then
	return "va aleykol asalam"
end
if msg.text == "zac" then
	return "Barash bezan sak"
end
if msg.text == "Zac" then
	return "Barash bezan sak"
end
if msg.text == "ZAC" then
	return "Barash bezan sak"
end
if msg.text == "Umbrella" then
	return "Yes?"
end
if msg.text == "umbrella" then
	return "What?"
end
if msg.text == "bot" then
	return "hum?"
end
if msg.text == "Bot" then
	return "Huuuum?"
end
if msg.text == "?" then
	return "Hum??"
end
if msg.text == "Bye" then
	return "Babay"
end
if msg.text == "bye" then
	return "Bye Bye"
end
end

return {
	description = "Chat With Robot Server", 
	usage = "chat with robot",
	patterns = {
		"^[Hh]i$",
		"^[Hh]ello$",
		"^[Zz]ac$",
		"^ZAC$",
		"^[Bb]ot$",
		"^[Uu]mbrella$",
		"^[Bb]ye$",
		"^?$",
		"^[Ss]alam$",
		"^سلام$",
		}, 
	run = run,
    --privileged = true,
	pre_process = pre_process
}
