return {
	-- "PKerty/eznotes.nvim",
	dir = "/home/kerty/work/eznotes.nvim",
	name = "eznotes",
	config = function()
		local eznotes = require("eznotes")
		eznotes.setup()

		vim.api.nvim_set_keymap("n", "<leader>nn", "<cmd>EznotesCreateNote<cr>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<leader>nw", "<cmd>EznotesListNotes<cr>", { noremap = true, silent = true })
	end,
}
