return {
    {
        "rebelot/kanagawa.nvim",
    },
	{
		"cacharle/c_formatter_42.vim",
		config = function() end,
	},
	{
		"42Paris/42header",
		config = function() end,
	},
    {
        "williamboman/mason-lspconfig.nvim",
    },
    {
        "L3MON4D3/LuaSnip",
    },
    {
        "saadparwaiz1/cmp_luasnip",
    },
    { 
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("plugins.lsp.nvim-lspconfig")
        end,
        dependencies = { "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim" },
    },
    {
        "williamboman/mason.nvim",
        cmd = "Mason",
        keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },
        build = ":MasonUpdate",
        opts = {
            ensure_installed = {
            "stylua",
            "shfmt",
            -- "flake8",
            },
        }
    }
}
