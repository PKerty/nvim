local jdtls = require("jdtls")
local bundles = {
	vim.fn.glob(
		"/home/kerty/.local/share/nvim/mason/share/java-debug-adapter/com.microsoft.java.debug.plugin-*.jar",
		1
	),
}
vim.list_extend(bundles, vim.split(vim.fn.glob("/home/kerty/.local/share/nvim/mason/share/java-test/*.jar", 1), "\n"))

local config = {
	cmd = { vim.fn.expand("~/.local/share/nvim/mason/bin/jdtls") },
	root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),
	-- init_options = {
	--     bundles = bundles,
	-- },
	-- settings = {
	-- 	java = {
	-- 		project = {
	-- 			sourcePaths = {
	-- 				-- "src/main/java",
	-- 				"/home/kerty/work/Train-Station---POD/api/target/generated-sources/protobuf/java",
	-- 				"/home/kerty/work/Train-Station---POD/api/target/generated-sources/protobuf/grpc-java",
	-- 			},
	-- 		},
	-- 	},
	-- },
	on_attach = function(client, bufnr)
		jdtls.setup_dap({ hotcodereplace = "auto" })
		local bufopts = { noremap = true, silent = true, buffer = bufnr }
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
		vim.keymap.set("n", "<leader>le", vim.diagnostic.open_float, bufopts)
	end,
}
jdtls.start_or_attach(config)
