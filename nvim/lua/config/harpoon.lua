local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- Keys for harpoon
vim.keymap.set("n", "<leader>a", mark.add_file, { desc = 'Harpoon the file' })
vim.keymap.set("n", "<leader>h", ui.toggle_quick_menu, { desc = 'harpoon' })
