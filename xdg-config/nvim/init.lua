-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected on the terminal
vim.g.have_nerd_font = true

-- [[ Setting options ]]
require 'options'

-- [[ Setting Keymaps ]]
require 'keymaps'

-- [[ Install `lazy.vim` plugin manager ]]
require 'plugins.lazy-bootstrap'

-- [[ Configure and install plugins ]]
require 'plugins.lazy-plugins'
