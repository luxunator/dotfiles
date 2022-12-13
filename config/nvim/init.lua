vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.o.number = true
vim.o.relativenumber = true
vim.o.autoindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.smarttab = true
vim.o.softtabstop = 4

vim.g.mapleader = ';'

local vim = vim
local execute = vim.api.nvim_command
local fn = vim.fn

-- ensure that packer is installed
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
    execute 'packadd packer.nvim'
end

vim.cmd('packadd packer.nvim')

local packer = require'packer'
local util = require'packer.util'

packer.init({
  package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')
})

require('plugins')
require('configs')

local colorscheme = "blue"

vim.cmd('colorscheme ' .. colorscheme)

vim.keymap.set('', '<up>', '<nop>')
vim.keymap.set('', '<down>', '<nop>')
vim.keymap.set('', '<left>', '<nop>')
vim.keymap.set('', '<right>', '<nop>')
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>')
vim.keymap.set('n', '<leader>q', '<cmd>quit<cr>')
vim.keymap.set('n', '<leader>qa', '<cmd>quitall<cr>')


vim.keymap.set('n', '<C-l>', '<cmd>tabnext<cr>')
vim.keymap.set('n', '<C-h>', '<cmd>tabprevious<cr>')

vim.keymap.set('n', '<leader>tb', '<cmd>TagbarOpenAutoClose<cr>')
vim.keymap.set('n', '<leader>tbc', '<cmd>TagbarClose<cr>')

vim.keymap.set('n', '<leader>nt', '<cmd>NvimTreeToggle<cr>')

vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
vim.keymap.set('n', '<leader>fs', '<cmd>Telescope live_grep<cr>')
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope grep_string<cr>')
vim.keymap.set('n', '<leader>fl', '<cmd>Telescope oldfiles<cr>')
vim.keymap.set('n', '<leader>sp', '<cmd>Telescope spell_suggest<cr>')
vim.keymap.set('n', '<leader>km', '<cmd>Telescope keymaps<cr>')

vim.keymap.set('n', '<leader>gc', '<cmd>Telescope git_commits<cr>')
vim.keymap.set('n', '<leader>gb', '<cmd>Telescope git_branches<cr>')
vim.keymap.set('n', '<leader>gs', '<cmd>Telescope git_status<cr>')

vim.keymap.set('n', '<leader>ts', '<cmd>Telescope treesitter<cr>')

vim.keymap.set('n', '<leader>re', '<cmd>Telescope lsp_references<cr>')
vim.keymap.set('n', '<leader>ic', '<cmd>Telescope lsp_incoming_calls<cr>')
vim.keymap.set('n', '<leader>oc', '<cmd>Telescope lsp_outgoing_calls<cr>')
vim.keymap.set('n', '<leader>di', '<cmd>Telescope diagnostics<cr>')
vim.keymap.set('n', '<leader>im', '<cmd>Telescope lsp_implementations<cr>')
vim.keymap.set('n', '<leader>de', '<cmd>Telescope lsp_definitions<cr>')
vim.keymap.set('n', '<leader>td', '<cmd>Telescope lsp_type_definitions<cr>')
