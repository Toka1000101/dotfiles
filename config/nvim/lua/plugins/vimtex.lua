return {
  "lervag/vimtex",
  ft = "tex",
  init = function()
    -- Set Zathura as the default PDF viewer for live refresh
    vim.g.vimtex_view_method = "zathura"

    -- Use latexmk for continuous compilation on save
    vim.g.vimtex_compiler_method = "latexmk"
  end
}
