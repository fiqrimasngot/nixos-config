return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status") -- to configure lazy pending updates count
    local catppuccin = require("lualine.themes.catppuccin")



    -- configure lualine with modified theme
    lualine.setup({
      options = {
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
        theme = catppuccin,
      },
      sections = {
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
          },
          { "encoding" },
          { "fileformat" },
          { "filetype" },
        },
      },
    })
  end,
}
