local function run(msg)
    if msg.text == "سلام" then
    if is_sudo(msg) then
        return "سلام بابایی!"
    end
end

return {
    description = "chatting",
    usage = "chat"
    patterns = {
        "سلام",
        },
    run = run,
    pre_process = pre_process
        }
