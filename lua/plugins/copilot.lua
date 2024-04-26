return {
    {
        "zbirenbaum/copilot.lua",
          cmd = "Copilot",
          build = ":Copilot auth",
          event = "InsertEnter",
          config = function()
            require("copilot").setup({})
          end,
          suggestion = { enabled = false },
          panel = { enabled = false },
    },
    {
          "zbirenbaum/copilot-cmp",
          config = function ()
            require("copilot_cmp").setup()
          end
    }
}
