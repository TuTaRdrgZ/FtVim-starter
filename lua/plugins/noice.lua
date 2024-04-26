return {
    {
        "MunifTanjim/nui.nvim",
    },
    {
        "folke/noice.nvim",
        opts = {
          lsp = {
            -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
            override = {
              ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
              ["vim.lsp.util.stylize_markdown"] = true,
              ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
            },
          },
          cmdline = {
              view = "cmdline",
          },
          presets = {
            bottom_search = true, -- use a classic bottom cmdline for search
          },
        },
    }
}
