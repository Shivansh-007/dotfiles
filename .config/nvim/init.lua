-- load all plugins
require "pluginList"
require "misc-utils"

require "top-bufferline"
require "statusline"

require("neoscroll").setup() -- smooth scroll
require("lsp_signature").on_attach()

-- lsp stuff
require "nvim-lspconfig"
require "compe-completion"
require "lsp_signature".on_attach()

local cmd = vim.cmd
local g = vim.g

g.mapleader = " "
g.auto_save = 0

-- colorscheme related stuff
cmd "syntax on"

-- Tokynight Configuration
g.tokyonight_style = "storm" -- "light"
g.tokyonight_italic_functions = true
g.tokyonight_transparent = true
cmd[[colorscheme tokyonight]]

-- blankline

g.indentLine_enabled = 1
g.indent_blankline_char = "▏"

g.indent_blankline_filetype_exclude = {"help", "terminal", "dashboard"}
g.indent_blankline_buftype_exclude = {"terminal"}

g.indent_blankline_show_trailing_blankline_indent = false
g.indent_blankline_show_first_indent_level = false

require "treesitter-nvim"
require "mappings"

require "telescope-nvim"
require "nvimTree" -- file tree stuff
require "file-icons"

-- git signs , lsp symbols etc
require "gitsigns-nvim"
require("nvim-autopairs").setup()
require("lspkind").init()

-- hide line numbers in terminal windows
vim.api.nvim_exec([[
   au BufEnter term://* setlocal nonumber
]], false)

require "zenmode"
require "whichkey"
require "dashboard"
