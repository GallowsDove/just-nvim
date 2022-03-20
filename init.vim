runtime plug.vim
runtime options.vim

lua << EOF
  require'impatient'

  -- Nvim Tree
  require'nvim-tree'.setup{ view = { width = 40, }, }

  -- Telescope
  require'telescope'.setup()
  require'telescope'.load_extension'repo'
  require'telescope'.load_extension'fzf'

  -- nvim-web-devicons
  require'nvim-web-devicons'.setup()

  -- Treesitter
  require'plugins.treesitter'

  -- Lualine
  require'line'

  -- Alpha
  require'startscreen'

  -- LSPConfig
  require'plugins.lspconfig'
   
  -- Cmp.
  require'plugins.cmp' 

  -- LSPSaga
  require'plugins.lspsaga'

  -- Trouble
  require'trouble'.setup()

  -- Better Escape
  require'better_escape'.setup()
 
  -- Indent Blankline
  require'indent_blankline'.setup()

  -- Set Keymaps
  require'keymaps'
EOF

autocmd BufAdd,BufReadPre * ++once lua require'plugins.bufferline'

autocmd CmdlineEnter * ++once runtime wilder.vim | call wilder#main#start()

colorscheme dracula
