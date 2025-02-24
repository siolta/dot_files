-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
-- add modular configurations:
require 'keymaps'
require 'plugins.lazy'
require 'autocmds'
require 'options'
