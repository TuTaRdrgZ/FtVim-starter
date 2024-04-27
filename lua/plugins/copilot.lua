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
      dependencies = "copilot.lua",
      opts = {},
      config = function(_, opts)
        local copilot_cmp = require("copilot_cmp")
        copilot_cmp.setup(opts)
      end,
    }
}
