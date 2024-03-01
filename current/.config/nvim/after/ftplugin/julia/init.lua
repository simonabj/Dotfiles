-- Kitty state is stored $HOME/.local/state/julia_remote/kitty_window_id and kitty_listen_on.
-- Slime config is b:slime_config = {'window_id': '1', 'listen_on': '/tmp/mykitty-test'}
-- We want to set slime_config to the currect kitty state.

local kitty_window_id = vim.fn.readfile(vim.env.HOME .. '/.local/state/julia_remote/kitty_window_id')
local kitty_listen_on = vim.fn.readfile(vim.env.HOME .. '/.local/state/julia_remote/kitty_listen_on')

-- Check if state is not empty
if kitty_window_id[1] ~= "" and kitty_listen_on[1] ~= "" then
    -- Set b:slime_config
    vim.b.slime_config = { window_id = kitty_window_id[1], listen_on = kitty_listen_on[1] }
else -- Start a new kitty window and execute "julia"
    os.execute("kitty /bin/zsh -c /home/simonabj/.local/share/bin/open_julia_remote.sh &")
    -- Watch for kitty_window_id and kitty_listen_on to be set
    while kitty_window_id[1] == "" or kitty_listen_on[1] == "" do
        kitty_window_id = vim.fn.readfile(vim.env.HOME .. '/.local/state/julia_remote/kitty_window_id')
        kitty_listen_on = vim.fn.readfile(vim.env.HOME .. '/.local/state/julia_remote/kitty_listen_on')
        os.execute("sleep 0.1")
    end
    vim.b.slime_config = { window_id = kitty_window_id[1], listen_on = kitty_listen_on[1] }
end

vim.keymap.set("n", "<M-Enter>", "<Plug>SlimeParagraphSend", { desc = "Slime: Run paragraph" })
vim.keymap.set("n", "<C-Enter>", "<Plug>SlimeLineSend", { desc = "Slime: Run line" })
vim.keymap.set("x", "<M-Enter>", "<Plug>SlimeRegionSend", { desc = "Slime: Run region" })
