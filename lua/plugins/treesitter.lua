return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",

	config = function()
		require("nvim-treesitter.config").setup({
			ensure_installed = {
				"javascript",
				-- The five parsers below should always be installed
				"lua",
				"vim",
				"vimdoc",
				"c",
				"query",
				"python",
			},
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = {
				enable = true,
				-- disable = { "python", "c" }, -- these and some other langs don't work well
			},
		})
		vim.wo[0][0].foldexpr = "v:lua.vim.treesitter.foldexpr()"
		vim.wo[0][0].foldmethod = "expr"
		vim.opt.foldlevelstart = 99
		vim.api.nvim_create_autocmd("FileType", {
			pattern = "python",
			callback = function()
				vim.opt_local.foldmethod = "indent"
			end,
		})
	end,
}
