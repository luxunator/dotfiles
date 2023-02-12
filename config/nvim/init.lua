vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.o.number = true
vim.o.relativenumber = true
vim.o.autoindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.smarttab = true
vim.o.softtabstop = 4
vim.o.termguicolors = true
vim.g.mapleader = ';'

local vim = vim
local execute = vim.api.nvim_command
local fn = vim.fn
local map = vim.keymap.set

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

local colorscheme = "tokyonight-moon"
vim.cmd('colorscheme ' .. colorscheme)

vim.notify = require("notify")

map('', '<up>', '<nop>')
map('', '<down>', '<nop>')
map('', '<left>', '<nop>')
map('', '<right>', '<nop>')
map('n', '<leader>w', '<cmd>write<cr>')
map('n', '<leader>q', '<cmd>quit<cr>')
map('n', '<leader>qa', '<cmd>quitall<cr>')

map('', '<A-h>', '<cmd>BufferPrevious<cr>')
map('', '<A-l>', '<cmd>BufferNext<cr>')
map('', '<A-x>', '<cmd>BufferMoveNext<cr>')
map('', '<C-h>', '<cmd>BufferMovePrevious<cr>')
map('', '<C-l>', '<cmd>BufferMoveNext<cr>')

map('n', '<leader>tb', '<cmd>TagbarOpenAutoClose<cr>')
map('n', '<leader>tbc', '<cmd>TagbarClose<cr>')

map('n', '<leader>nt', '<cmd>NvimTreeToggle<cr>')

map('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
map('n', '<leader>fs', '<cmd>Telescope live_grep<cr>')
map('n', '<leader>fg', '<cmd>Telescope grep_string<cr>')
map('n', '<leader>fl', '<cmd>Telescope oldfiles<cr>')
map('n', '<leader>sp', '<cmd>Telescope spell_suggest<cr>')
map('n', '<leader>km', '<cmd>Telescope keymaps<cr>')

map('n', '<leader>gc', '<cmd>Telescope git_commits<cr>')
map('n', '<leader>gb', '<cmd>Telescope git_branches<cr>')
map('n', '<leader>gs', '<cmd>Telescope git_status<cr>')

map('n', '<leader>ts', '<cmd>Telescope treesitter<cr>')

map('n', '<leader>re', '<cmd>Telescope lsp_references<cr>')
map('n', '<leader>ic', '<cmd>Telescope lsp_incoming_calls<cr>')
map('n', '<leader>oc', '<cmd>Telescope lsp_outgoing_calls<cr>')
map('n', '<leader>di', '<cmd>Telescope diagnostics<cr>')
map('n', '<leader>im', '<cmd>Telescope lsp_implementations<cr>')
map('n', '<leader>de', '<cmd>Telescope lsp_definitions<cr>')
map('n', '<leader>td', '<cmd>Telescope lsp_type_definitions<cr>')

map('n', '<leader>dc', '<cmd>DapContinue<cr>')
map('n', '<leader>si', '<cmd>DapStepInto<cr>')
map('n', '<leader>so', '<cmd>DapStepOver<cr>')
map('n', '<leader>sq', '<cmd>DapStepOut<cr>')
map('n', '<leader>bp', '<cmd>DapToggleBreakpoint<cr>')
map('n', '<leader>du', function() require('dapui').toggle() end)


