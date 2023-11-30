local function get_attached_clients()
	local buf_clients = vim.lsp.get_active_clients({ bufnr = 0 })
	if #buf_clients == 0 then
		return "LSP Inactive"
	end

	local buf_ft = vim.bo.filetype
	local buf_client_names = {}

	-- add client
	for _, client in pairs(buf_clients) do
		if client.name ~= "copilot" and client.name ~= "null-ls" then
			table.insert(buf_client_names, client.name)
		end
	end

	local null_ls_s, null_ls = pcall(require, "null-ls")
	if null_ls_s then
		local sources = null_ls.get_sources()
		for _, source in ipairs(sources) do
			if source._validated then
				for ft_name, ft_active in pairs(source.filetypes) do
					if ft_name == buf_ft and ft_active then
						table.insert(buf_client_names, source.name)
					end
				end
			end
		end
	end

	-- This needs to be a string only table so we can use concat below
	local unique_client_names = {}
	for _, client_name_target in ipairs(buf_client_names) do
		local is_duplicate = false
		for _, client_name_compare in ipairs(unique_client_names) do
			if client_name_target == client_name_compare then
				is_duplicate = true
			end
		end
		if not is_duplicate then
			table.insert(unique_client_names, client_name_target)
		end
	end

	local client_names_str = table.concat(unique_client_names, " ")
	local language_servers = string.format("%s", client_names_str)

	return language_servers
end

local attached_clients = {
	get_attached_clients,
	color = {
		gui = "bold",
	},
}

local opts = {
	options = {
		icons_enabled = true,
		theme = "auto",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = {
			statusline = {},
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = true,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		},
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff", "diagnostics" },
		lualine_c = { "filename" },
		lualine_x = { attached_clients, "filetype" },
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	winbar = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "buffers" },
		lualine_x = {},
		lualine_y = {},
		lualine_z = {},
	},
	inactive_winbar = {},
	extensions = {},
}

return {
	"nvim-lualine/lualine.nvim",
	depedencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = opts,
}
