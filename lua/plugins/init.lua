return {
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
        "nvim-lspconfig",
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
