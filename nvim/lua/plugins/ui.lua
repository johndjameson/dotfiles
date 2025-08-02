return {
  "lewis6991/gitsigns.nvim",
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("bufferline").setup({
        highlights = {
          buffer_selected = {
            italic = false,
          },
        },
      })
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = { theme = "solarized_dark" },
      })
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({
        defaults = {
          layout_strategy = "vertical",
          layout_config = {
            vertical = {
              height = 0.6,
              mirror = true,
              prompt_position = "top",
            },
          },
          mappings = {
            i = {
              ["<C-j>"] = require("telescope.actions").move_selection_next,
              ["<C-k>"] = require("telescope.actions").move_selection_previous,
            },
            n = {
              ["<C-j>"] = require("telescope.actions").move_selection_next,
              ["<C-k>"] = require("telescope.actions").move_selection_previous,
            },
          },
          sorting_strategy = "ascending",
        },
      })
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<c-f>", builtin.find_files, { desc = "Telescope find files" })
      vim.keymap.set("n", "<c-g>", builtin.live_grep, { desc = "Telescope live grep" })
    end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself
    config = function()
      require("neo-tree").setup({})
      vim.keymap.set("n", "<leader>os", ":Neotree toggle<CR>", { desc = "Toggle sidenav" })
      vim.keymap.set("n", "<leader>on", ":Neotree reveal<CR>", { desc = "Reveal current butter in sidenav" })
    end,
  },
}
