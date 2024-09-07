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
