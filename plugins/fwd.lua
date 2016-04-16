antifwd= {}-- An empty table for solving multiple kicking problem

do
local function run(msg, matches)
  if is_momod(msg) then -- Ignore mods,owner,admins
    return
  end
  local data = load_data(_config.moderation.data)
  if data[tostring(msg.to.id)]['settings']['lock_fwd'] then
    if data[tostring(msg.to.id)]['settings']['lock_fwd'] == 'yes' then
	  if is_whitelisted(msg.from.id) then
		return
	  end
      if antifwd[msg.from.id] == true then 
        return
      end
	  if msg.type == 'fwd' then
		local receiver = get_receiver(msg)
		local username = msg.from.username
		local name = msg.from.first_name
		if username and is_super_group(msg) then
			send_large_msg(receiver , "")
		else
			send_large_msg(receiver , "")
		end
		local name = user_print_name(msg.from)
		savelog(msg.to.id, name.." ["..msg.from.id.."] kicked (fwd was locked) ")
		local channel_id = msg.to.id
		local user_id = msg.from.id
		  delete_msg(msg.id,ok_cb,false)
		end
		antifwd[msg.from.id] = true
    end
  end
  return
end

local function cron()
  antifwd = {} -- Clear antifosh table 
end

return {
  patterns = {
 "(.*)",
    },
  run = run,
  cron = cron
}

end
--
