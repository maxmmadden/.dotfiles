return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = false,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    conceallevel = 2,
    workspaces = {
      {
        name = "Work",
        path = "~/Documents/Obsidian Vault/Work",
      },
      {
        name = "Personal",
        path = "~/Documents/PersonalVault",
      },
      {
        name = "TheStratbook",
        path = "~/Documents/work/TheStratbook",
        overrides = {
          notes_subdir = "03 - Content",
          templates = {
            folder = "04 - Templates",
            date_format = "%Y-%m-%d-%a",
            time_format = "%H:%M",
          }
        },
      },
      {
        name = "SecondBrain",
        path = "~/Documents/personal/SecondBrain",
        overrides = {
          notes_subdir = "Zettlekasten",
          templates = {
            folder = "Templates",
            date_format = "%Y-%m-%d-%a",
            time_format = "%H:%M",
          }
        },
      },
    },
    notes_subdir = "notes",
    new_notes_location = "notes_subdir",
    dailyNotes = {
      folder = "notes/daily",
      date_format = "%Y-%m-%d",
      default_tags = { "daily-notes" },
    }
  },
}
