local M = {}

function M.setup()
  local telescope = require("telescope")
  local builtin = require("telescope.builtin")

  telescope.setup({
    pickers = {
      live_grep = {
        additional_args = function()
          return { "--hidden" }
        end,
      },
    },
  })

  vim.keymap.set("n", "<space>fg", builtin.live_grep)
end

return M
