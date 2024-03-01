local copilot = require('copilot')

copilot.setup {
    suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
            accept = "<M-l>",
            accept_word = false,
            accept_line = false,
            next = "<M-Left>",
            prev = "<M-Right>",
            dismiss = "<Esc>",
        },
    },
    panel = { enabled = false },
}
