local ok, pkg = pcall(require, "telescope")
if not ok then
	return
end

local actions = require("telescope.actions")

pkg.load_extension("media_files")

pkg.setup({
	defaults = {
		vimgrep_arguments = {
			"rg",
			"-L",
			"--color=never",
			"--no-heading",
			"--with-filename",
			"--line-number",
			"--column",
			"--smart-case",
		},
	},

	file_sorter = require("telescope.sorters").get_fuzzy_file,
	file_ignore_patterns = { "node_modules", ".git" },
	generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,

	path_display = { "truncate" },
	winblend = 0,
	border = {},

	borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
	color_devicons = true,

	set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
	file_previewer = require("telescope.previewers").vim_buffer_cat.new,
	grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
	qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
	buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,

	pickers = {
		oldfiles = {
			prompt_title = "Recent files",
			prompt_prefix = "   ",
		},
		find_files = {
			prompt_title = "Find files",
			prompt_prefix = "   ",
		},
		live_grep = {
			prompt_title = "Live grep",
			prompt_prefix = "   ",
		},
		help_tags = {
			prompt_title = "Help tags",
			prompt_prefix = " 󰘥  ",
		},
		colorscheme = {
			prompt_title = "Color schemes",
			prompt_prefix = "   ",
		},

		keymaps = {
			prompt_title = "Key bindings",
			prompt_prefix = " 󰌓  ",
		},
	},
	mappings = {
		i = {
			["<C-n>"] = actions.cycle_history_next,
			["<C-p>"] = actions.cycle_history_prev,

			["<C-j>"] = actions.move_selection_next,
			["<C-k>"] = actions.move_selection_previous,

			["<C-c>"] = actions.git_checkout,

			["<Down>"] = actions.move_selection_next,
			["<Up>"] = actions.move_selection_previous,

			["<CR>"] = actions.select_default,
			["<C-x>"] = actions.select_horizontal,
			["<C-v>"] = actions.select_vertical,
			["<C-t>"] = actions.select_tab,

			["<C-u>"] = actions.preview_scrolling_up,
			["<C-d>"] = actions.preview_scrolling_down,

			["<PageUp>"] = actions.results_scrolling_up,
			["<PageDown>"] = actions.results_scrolling_down,

			["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
			["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
			["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
			["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
			["<C-l>"] = actions.complete_tag,
			["<C-_>"] = actions.which_key, -- keys from pressing <C-/>
		},

		n = {
			["q"] = actions.close,
			["<esc>"] = actions.close,
			["<CR>"] = actions.select_default,
			["<C-x>"] = actions.select_horizontal,
			["<C-v>"] = actions.select_vertical,
			["<C-t>"] = actions.select_tab,

			["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
			["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
			["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
			["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,

			["j"] = actions.move_selection_next,
			["k"] = actions.move_selection_previous,
			["H"] = actions.move_to_top,
			["M"] = actions.move_to_middle,
			["L"] = actions.move_to_bottom,

			["<Down>"] = actions.move_selection_next,
			["<Up>"] = actions.move_selection_previous,
			["gg"] = actions.move_to_top,
			["G"] = actions.move_to_bottom,

			["<C-u>"] = actions.preview_scrolling_up,
			["<C-d>"] = actions.preview_scrolling_down,

			["<PageUp>"] = actions.results_scrolling_up,
			["<PageDown>"] = actions.results_scrolling_down,

			["?"] = actions.which_key,
		},
	},

	extensions_list = { "themes", "terms", "fzf" },
	extensions = {
		fzf = {
			fuzzy = true,
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = "smart_case",
		},
		media_files = {
			filetypes = {
				"png",
				"webp",
				"jpg",
				"jpeg",
			},
			find_cmd = "rg", -- find command (defaults to `fd`)
		},
	},
})
