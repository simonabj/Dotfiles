require('telescope').setup {
    defaults = {
        sorting_strategy = "ascending",
        theme = "dropdown",
        layout_strategy = "horizontal",
        layout_config = {
            horizontal = {
                prompt_position = "top",
            },
        },
        sorting_strategy = "ascending",
        --- other configs

        preview = {
            mime_hook = function(filepath, bufnr, opts)
                local is_image = function(filepath)
                    local image_extensions = {'png','jpg'}   -- Supported image formats
                    local split_path = vim.split(filepath:lower(), '.', {plain=true})
                    local extension = split_path[#split_path]
                    return vim.tbl_contains(image_extensions, extension)
                end
                if is_image(filepath) then
                    local term = vim.api.nvim_open_term(bufnr, {})
                    local function send_output(_, data, _ )
                        for _, d in ipairs(data) do
                            vim.api.nvim_chan_send(term, d..'\r\n')
                        end
                    end
                    vim.fn.jobstart({
                        'catimg', filepath  -- Terminal image viewer command
                    }, 
                    {on_stdout=send_output, stdout_buffered=true, pty=true})
                else
                    require("telescope.previewers.utils").set_preview_message(bufnr, opts.winid, "Binary cannot be previewed")
                end
            end
        },
        mappings = {
        },
    },
}
local tsbuiltin = require("telescope.builtin")
vim.keymap.set('n', '<leader>ff', tsbuiltin.find_files, {})
vim.keymap.set('n', '<leader>fg', tsbuiltin.live_grep, {})
vim.keymap.set('n', '<leader>fb', tsbuiltin.buffers, {})
vim.keymap.set('n', '<leader>fh', tsbuiltin.help_tags, {})
vim.keymap.set('n', '<leader>fo', tsbuiltin.oldfiles, {})
vim.keymap.set('n', '<leader>/', function() tsbuiltin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown { winblend = 10, previewer = false, }) end, {})
