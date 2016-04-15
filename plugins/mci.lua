
--An empty table for solving multiple kicking problem(thanks to @topkecleon )
kicktable = {}


local function run(msg, matches)
    if is_momod(msg) then
        return msg
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['lock_mci'] then
                lock_mci = data[tostring(msg.to.id)]['settings']['lock_mci']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_mci == "yes" then
        send_large_msg(get_receiver(msg), "User > "..msg.from.username.." Hamrah Aval Ads Was Not Allowed Here!\nیوزر "..msg.from.username.." تبلیغات همراه اول ممنوع بود!")
        channel_del_msg(channel, msg, ok_cb, true)
        channel_del_user(channel, user, ok_cb, true)
    end
end
 
return {
  patterns = {
  "^Hamrah Aval",
  "^hamrah Aval",
  "^Hamrah aval",
  "^hamrah aval",
  "^همراه اول",
  "^همراه اول  بات",
  "^بات همراه اول",
  "^sharzh",
  "^شارژ همراه اول",
 },
  run = run
}
