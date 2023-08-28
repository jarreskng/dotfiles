-- https://neovim.io/doc/user/options.html#'autoindent'
-- Copy indent from current line when starting a new line.
vim.opt.autoindent = true

-- https://neovim.io/doc/user/options.html#'autoread'
-- Reload a file when it has been changed outside of vim.
vim.opt.autoread = true

-- https://neovim.io/doc/user/options.html#'autowrite'
-- Write the contents of the file, if it has been modified.
vim.opt.autowrite = false

-- https://neovim.io/doc/user/options.html#'writebackup'
-- Make a backup before overwriting a file.
vim.opt.writebackup = true

-- https://neovim.io/doc/user/options.html#'backupext'
-- String which is appended to a file name to make the name of the backup file.
vim.opt.backupext = '.nvback'

-- https://neovim.io/doc/user/options.html#'breakindent'
-- Every wrapped line will continue visually indented.
vim.opt.breakindent = true

-- https://neovim.io/doc/user/options.html#'clipboard'
-- ALWAYS use the clipboard for ALL operations.
vim.opt.clipboard = 'unnamedplus'

-- https://neovim.io/doc/user/options.html#'concealcursor'
-- Sets the modes in which text in the cursor line can also be concealed.
-- vim.opt.concealcursor = "nv"

-- https://neovim.io/doc/user/options.html#'conceallevel'
-- Concealed text is completely hidden.
-- vim.opt.conceallevel = 2

-- https://neovim.io/doc/user/options.html#'confirm'
-- Show confirmation before exit if there are unsaved changed in a buffer.
vim.opt.confirm = true

-- https://neovim.io/doc/user/options.html#'cursorline'
-- Highlight the text line of the cursor.
vim.opt.cursorline = true

-- https://neovim.io/doc/user/options.html#'cursorlineopt'
-- Highlight the text line and the line number of the cursor.
vim.opt.cursorlineopt = 'number,line'

-- https://neovim.io/doc/user/options.html#'expandtab'
-- Use the appropriate number of spaces to insert a <Tab>.
vim.opt.expandtab = true

-- https://neovim.io/doc/user/options.html#'history'
-- How many entries may be stored in the history of commands.
vim.opt.history = 200

-- https://neovim.io/doc/user/options.html#'ignorecase'
-- Ignore case in search patterns.
vim.opt.ignorecase = true

-- https://neovim.io/doc/user/options.html#'laststatus'
-- The last window will always have a status line.
vim.opt.laststatus = 2

-- https://neovim.io/doc/user/options.html#'linebreak'
-- Wrap long lines at a character in 'breakat'.
vim.opt.linebreak = true

-- https://neovim.io/doc/user/options.html#'matchpairs'
-- Characters that form pairs. The % command jumps from one to the other.
vim.opt.matchpairs = '(:),{:},[:],<:>'

-- https://neovim.io/doc/user/options.html#'menuitems'
-- Maximum number of items to use in a menu
vim.opt.menuitems = 12

-- https://neovim.io/doc/user/options.html#'mouse'
-- Enable mouse support in Normal mode and Visual mode.
vim.opt.mouse = 'nv'

-- https://neovim.io/doc/user/options.html#'number'
-- Print the line number in front of each line.
vim.opt.number = true

-- https://neovim.io/doc/user/options.html#'pumheight'
-- Maximum number of items to show in the popup menu
vim.opt.pumheight = 12

-- https://neovim.io/doc/user/options.html#'relativenumber'
-- Show the line number relative to the line with the cursor in front of each line.
vim.opt.relativenumber = false

-- https://neovim.io/doc/user/options.html#'scrolljump'
-- Minimal number of lines to scroll when the cursor gets off the screen.
vim.opt.scrolljump = 12

-- https://neovim.io/doc/user/options.html#'scrolloff'
-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 0

-- https://neovim.io/doc/user/options.html#'shiftround'
-- Round indent to multiple of 'shiftwidth'. Applies to > and < commands.
vim.opt.shiftround = true

-- https://neovim.io/doc/user/options.html#'shiftwidth'
-- Number of spaces to use for each step of (auto)indent.
vim.opt.shiftwidth = 2

-- https://neovim.io/doc/user/options.html#'showcmd'
-- Show (partial) command in the last line of the screen.
vim.opt.showcmd = false

-- https://neovim.io/doc/user/options.html#'showmode'
-- Disable a message on the last line in i, r, v modes.
vim.opt.showmode = false

-- https://neovim.io/doc/user/options.html#'smartindent'
-- Do smart autoindenting when starting a new line.
vim.opt.smartindent = true

-- https://neovim.io/doc/user/options.html#'softtabstop'
-- Number of spaces that a <Tab> counts for while inserting a <Tab> or using <BS>.
vim.opt.softtabstop = 2

-- https://neovim.io/doc/user/options.html#'splitbelow'
-- Splitting a window will put the new window below of the current one.
vim.opt.splitbelow = true

-- https://neovim.io/doc/user/options.html#'splitright'
-- Splitting a window will put the new window right of the current one.
vim.opt.splitright = true

-- https://neovim.io/doc/user/options.html#'statuscolumn'
-- Determines the content of the area to the side of a window.
vim.opt.statuscolumn = ' %C%s%l  '

-- https://neovim.io/doc/user/options.html#'tabstop'
-- Number of spaces that a <Tab> in the file counts for.
vim.opt.tabstop = 8

-- https://neovim.io/doc/user/options.html#'termguicolors'
-- Enables 24-bit RGB color in the TUI.
vim.opt.termguicolors = true 

-- https://neovim.io/doc/user/options.html#'title'
-- Set the title of the window to the value of 'titlestring'
vim.opt.title = true

-- https://neovim.io/doc/user/options.html#'titlestring'
-- The title of the window. Only when the 'title' option is on.
vim.opt.titlestring = '%F (neovim)'

-- https://neovim.io/doc/user/options.html#'undofile'
-- Use a file for undo history.
vim.opt.undofile = true

-- https://neovim.io/doc/user/options.html#'undolevels'
-- Maximum number of changes that can be undone.
vim.opt.undolevels = 200

-- https://neovim.io/doc/user/options.html#'visualbell'
-- Use visual bell instead of beeping.
vim.opt.visualbell = false 

-- https://neovim.io/doc/user/options.html#'whichwrap'
-- Allow keys that move the cursor to move to the previous/next line.
vim.opt.whichwrap = 'b,s,<,>,[,]'

-- https://neovim.io/doc/user/options.html#'wildchar'
-- Character to start wildcard expansion in the command-line (Tab).
vim.opt.wildchar =  ('\t'):byte()

-- https://neovim.io/doc/user/options.html#'wildignorecase'
-- Ignore a case when completing file names and directories.
vim.opt.wildignorecase = true

