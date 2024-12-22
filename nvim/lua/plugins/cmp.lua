return {
  {
		"hrsh7th/nvim-cmp",
		config = function()
			require("plugins/cmp/config")()
		end,
	},
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/cmp-cmdline" },

	{ "L3MON4D3/LuaSnip" },

	{ "onsails/lspkind.nvim" },
}
