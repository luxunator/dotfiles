require("nvim-tree").setup({
	sort_by = "name",
	view = {
		adaptive_size = true,
	},
	renderer = {
		highlight_opened_files = "all",
	},
	update_focused_file = {
         enable      = true,
     },

     diagnostics = {
       enable = true,
       show_on_dirs = true,
       icons = {
         hint = "",
         info = "",
         warning = "",
         error = "",
       },
     },
})

vim.api.nvim_create_autocmd("BufEnter", {
  nested = true,
  callback = function()
    if #vim.api.nvim_list_wins() == 1 and require("nvim-tree.utils").is_nvim_tree_buf() then
      vim.cmd "quit"
    end
  end
})
