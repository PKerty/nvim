local config = {
	cmd = { vim.fn.expand("~/.local/share/nvim/mason/bin/jdtls") },
	root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),
	init_options = {
		bundles = {
			vim.fn.glob(
				"/home/kerty/.config/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar",
				1
			),
		},
	},
	on_attach = function()
		vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
		vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>")
		vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<CR>")
		vim.keymap.set("n", "<C-j>", "<cmd>Telescope lsp_document_symbols<CR>")
		vim.keymap.set("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>")

		vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>")
		vim.keymap.set("n", "<leader>D", "<cmd>Telescope lsp_type_definitions<CR>")
		vim.keymap.set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
		vim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")
		vim.keymap.set("n", "gt", "<cmd>lua vim.lsp.buf.type_definition()<CR>")
		vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
	end,
}
require("jdtls").start_or_attach(config)
