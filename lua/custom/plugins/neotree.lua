return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require('neo-tree').setup {
      popup_border_style = 'rounded',
      enable_git_status = true,
      enable_diagnostics = true,
      default_component_configs = {
        container = {
          enable_character_fade = true
        },
        git_status = {
          symbols = {
            -- Change type
            added     = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
            modified  = "", -- or "", but this is redundant info if you use git_status_colors on the name
            deleted   = "✖",-- this can only be used in the git_status source
            renamed   = "󰁕",-- this can only be used in the git_status source
            -- Status type
            untracked = "",
            ignored   = "",
            unstaged  = "󰄱",
            staged    = "",
            conflict  = "",
          }
        },
        file_size = {
            enabled = true,
            required_width = 64,
        },
        type = {
          enabled = true,
          required_width = 122,
        },
        last_modified = {
          enabled = true,
          required_width = 88,
        },
        created = {
          enabled = true,
          required_width = 110,
        },
        symlink_target = {
          enabled = false,
        },
      },
      window = {
        mappings = {
          ["h"] = "navigate_up",
          ["l"] = "open",
        }
      }
    }
  end,
}
