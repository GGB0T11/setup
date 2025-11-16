return {
  "RedsXDD/neopywal.nvim",
  name = "neopywal",
  lazy = false,
  priority = 1000,
  opts = {
    use_palette = "wallust",
  },
  config = function()
    vim.cmd("colorscheme neopywal")
  end,
}
