local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = '[P]roject [F]iles' })
vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = 'Search Git files' })
vim.keymap.set("n", "<leader>ps", function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end, { desc = "[P]roject [G]rep" })
