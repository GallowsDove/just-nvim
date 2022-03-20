local alpha = require"alpha"
local dashboard = require"alpha.themes.dashboard"
-- math.randomseed(os.time())

local function button(sc, txt, keybind, keybind_opts)
  local b = dashboard.button(sc, txt, keybind, keybind_opts)
--  b.opts.hl = "AlphaButton"
--  b.opts.hl_shortcut = "AlphaButtonShortcut"
  return b
end

--local function pick_color()
--  local colors = { "AlphaCol1", "AlphaCol2", "AlphaCol3", "AlphaCol4", "AlphaCol5" }
--  return colors[math.random(#colors)]
--end

local function footer()
  local v = vim.version()
  local datetime = os.date " %d-%m-%Y   %H:%M:%S"
  return string.format("  v%s.%s.%s  %s", v.major, v.minor, v.patch, datetime)
end

dashboard.section.header.val = { " ",
"  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠛⢦⡀⠀             ", 
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠃⠀⠀⠱⡀⠀⠀            ",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠤⠒⠉⠉⠉⠉⠑⠒⠲⠤⢄⣀⡏⠉⠁⠒⠢⢷⠀⠀            ",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠔⠋⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀⠈⠑⠄⠀⠀⠀⠀⡇⠀            ",
"⢀⣠⡤⠖⠚⡏⠉⠉⠁⠉⠉⠉⠁⠀⠠⢄⠀⠎⠁⠀⠰⣀⠀⠀⠄⠈⠙⠆⠈⠂⠀⠀⠀⢸⠀            ",
"⠻⣧⡀⠀⢰⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⠒⠀⣀⡤⠤⠖⡒⠿⠥⣄⡀⠀⢠⠒⠄⠀⠀⠀⢸⠀            ",
"⠀⠀⠙⠲⢼⣀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡴⠛⠁⢀⢴⡘⠰⡀⡦⡀⡍⠲⢄⠁⠁⠀⠀⠀⢸⠀            ",
"⠀⠀⠀⠀⠀⠈⢉⠗⠀⠀⠀⠀⢀⠞⠁⡄⣠⣧⠎⠘⠁⠀⠣⠁⠱⡏⢆⠈⠳⡀⠀⠀⠀⢸⠀            ",
"⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⣠⠃⠀⢀⡇⠃⠁⠀⠀⠀⠀⠀⠀⠀⠡⠬⣼⡀⠙⡄⠀⠀⠸⡀            ",
"⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⢰⡇⠀⠀⢸⢹⠄⠀⠄⠀⠀⠀⠀⠀⠀⢀⣀⠉⢇⠀⣽⡄⠀⠀⡇            ",
"⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⣏⢠⠀⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡏⢪⢷⣸⠀⣹⣴⠀⠀⡇            ",
"⠀⠀⠀⠀⠀⠀⢸⠀⠀⢰⠉⢌⣄⠟⣤⠀⣠⣀⠀⠀⠀⠀⠀⠀⢏⡵⠋⣾⣻⢡⠃⡇⡆⠀⡇            ",
"⠀⠀⠀⢀⠀⠀⠀⡆⠀⠘⠀⠀⠪⢴⢸⠙⠊⠉⠓⠀⠀⠀⠀⠀⠘⠯⠞⠁⠹⡹⠐⠀⠁⠀⡇            ",
"⠀⠀⡰⠁⠙⢦⡀⠘⡄⠀⠑⠄⣀⢹⢸⡄⠀⠀⠀⠀⠀⠤⠀⠀⠀⠀⠀⣠⡃⡇⡀⠀⠀⢀⠇            ",
"⠀⡜⠁⠀⠀⠀⠑⢄⠈⢦⠀⠀⠀⠹⡘⡌⣢⠤⣀⣀⣀⣀⣀⣀⡠⠴⠚⠓⡇⡏⢀⣠⠔⠊⠀            ",
"⢰⠁⠀⠀⠀⠀⠀⠈⢢⠀⠑⠒⠒⠒⢣⣩⣀⡞⠉⡽⢄⣀⣵⠛⢭⠑⡖⢲⣳⠉⠁⠀⠀⠀⠀            ",
"⡇⠀⠀⠀⠀⠀⠀⠀⠀⢣⠀⠀⠀⠀⢎⠀⡼⠀⠀⠀⠋⣻⠢⠀⠈⢇⠺⡘⠁⠀⠀⠀⠀⠀⠀            ",
"⠉⠉⠉⠑⠒⠢⣄⠀⢀⠜⠀⠀⠀⠀⡌⠀⣇⠀⠀⠀⢸⠝⣆⠀⠀⠸⡀⢱⠀⠀⠀⠀⠀⠀⠀            ",
"⠀⠀⠀⠀⢀⠎⠀⠠⠧⡤⢄⡀⠀⠀⠡⡀⠙⠀⠀⠀⢪⠀⡟⠀⠀⠀⡇⡜⠀⠀⠀⠀⠀⠀⠀            ",
"⠀⠀⠀⠀⠘⠒⠠⠴⢮⣁⠀⡇⠀⠀⢰⠉⢢⣄⡀⠀⢸⠄⡇⠀⠀⡠⠋⢱⠀⠀⠀⠀⠀⠀⠀            ",
"⠀⠀⠀⠀⠀⠀⠀⠀⢠⠎⠀⠑⢤⠎⠁⠀⠀⠙⠫⣍⠁⠀⡽⠒⠋⠀⠀⠀⠑⢆⠀⠀⠀⠀⠀            ",
"⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠑⠒⣼⣀⠠⡪⠭⠩⢔⠄⠑⡎⢀⠀⣀⠤⡀⠀⠀⠈⣧⣀⠀⠀⠀            ",
"⠀⠀⠀⠀⠀⠀⠀⠀⢀⡠⠊⠉⡠⠐⠛⠂⠤⠀⠀⠙⢄⠅⠀⠀⡠⠇⠓⠒⠓⡙⠀⠀⠑⣄⠀            ",
"⠀⠀⠀⠀⠀⠀⠀⢠⠎⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⢸⡄⠀⠀⠀⠀⠀⢀⣀⡇⡀⠀⠀⠈⢢            ",
"⠀⠀⠀⠀⠀⠀⠀⠸⣀⣠⠤⠬⠮⠶⠒⠒⠤⠤⠤⠴⠢⠬⠥⠀⠄⠍⠍⠉⠀⠀⠀⠄⠠⠀⠈            ",
}

  
--dashboard.section.header.opts.hl = pick_color()

dashboard.section.buttons.val = {
  button("b", "  Browse files", "<Cmd>NvimTreeOpen<CR>"),
  button("f", "  Find file", "<Cmd>Telescope find_files<CR>"),
  button("o", "  Recently opened files", "<Cmd>Telescope oldfiles<CR>"),
  button("n", "  New file", "<Cmd>ene <BAR> startinsert<CR>"),
  button("r", "  Find repository", "<Cmd>Telescope repo<CR>"),
  button("u", "  Update plugins", "<Cmd>PlugUpdate<CR>"),
  button("q", "  Quit", "<Cmd>qa<CR>"),
}

dashboard.section.footer.val = footer()
--dashboard.section.footer.opts.hl = dashboard.section.header.opts.hl

dashboard.config.layout[1].val = 1

alpha.setup(dashboard.config)

-- hide tabline and statusline on startup screen
vim.cmd [[
  augroup alpha_tablineau
  au!
  au FileType alpha set showtabline=0 laststatus=0 noruler | au BufUnload <buffer> set showtabline=2 ruler laststatus=2
  augroup END
]]
