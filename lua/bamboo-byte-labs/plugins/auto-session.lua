return {
  "rmagatti/auto-session",
  config = function()
    local auto_session = require("auto-session")
        local user = os.getenv("USER") or os.getenv("USERNAME") -- For Unix-based and Windows OS

    auto_session.setup({
      auto_restore_enabled = false,
      -- auto_session_suppress_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/", string.format("C:/Users/%s/", user), string.format("C:/Users/%s/Dev/", user), string.format("C:/Users/%s/Downloads", user), string.format("C:/Users/%s/Documents", user), string.format("C:/Users/%s/Desktop/", user) },
    })

    local keymap = vim.keymap

    keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" }) -- restore last workspace session for current directory
    keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory
  end,
}
