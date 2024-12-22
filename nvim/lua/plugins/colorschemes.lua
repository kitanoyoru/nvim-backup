return {
  {
    "kyazdani42/blue-moon",
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require('rose-pine').setup({
          disable_background = true,
          styles = {
              italic = false,
          },
      })

      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end
  },
}
