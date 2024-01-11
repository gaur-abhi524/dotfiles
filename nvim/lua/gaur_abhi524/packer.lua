local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    })
    print("Installing packer close and reopen Neovim...")
    vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerSync
augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init({
    display = {
        open_fn = function()
            return require("packer.util").float({ border = "rounded" })
        end,
    },
})

return packer.startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use { "nvim-lua/plenary.nvim"} -- Useful lua functions used by lots of plugins
    use { "windwp/nvim-autopairs"} -- Autopairs, integrates with both cmp and treesitter
    use { "numToStr/Comment.nvim"}
    use { "JoosepAlviste/nvim-ts-context-commentstring"}
    use { "kyazdani42/nvim-web-devicons", commit = "563f3635c2d8a7be7933b9e547f7c178ba0d4352" }
    use { "kyazdani42/nvim-tree.lua", commit = "7282f7de8aedf861fe0162a559fc2b214383c51c" }
    use "akinsho/bufferline.nvim"
    use "moll/vim-bbye"
    use "akinsho/toggleterm.nvim"
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use "mg979/vim-visual-multi"
    use "petertriho/nvim-scrollbar"
    use "tpope/vim-obsession"

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4'
    }

    use {"catppuccin/nvim", as = "catppuccin"}
    use('mbbill/undotree')
    use('tpope/vim-fugitive')

    -- Cmp 
    use { "hrsh7th/nvim-cmp"} -- The completion plugin
    use { "hrsh7th/cmp-buffer"} -- buffer completions
    use { "hrsh7th/cmp-path"} -- path completions
    use { "saadparwaiz1/cmp_luasnip"} -- snippet completions
    use { "hrsh7th/cmp-nvim-lsp"}
    use { "hrsh7th/cmp-nvim-lua"}

    -- Snippets
    use { "L3MON4D3/LuaSnip"} --snippet engine
    use { "rafamadriz/friendly-snippets"} -- a bunch of snippets to use

    -- LSP
    use { "neovim/nvim-lspconfig"} -- enable LSP
    use { "williamboman/mason.nvim"} -- simple to use language server installer
    use { "williamboman/mason-lspconfig.nvim"}
    use { "jose-elias-alvarez/null-ls.nvim"} -- for formatters and linters
    use { "RRethy/vim-illuminate"}
    use({'scalameta/nvim-metals', requires = { "nvim-lua/plenary.nvim" }})

    -- Treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    }
    use "p00f/nvim-ts-rainbow"

    -- Git
    use "lewis6991/gitsigns.nvim"

    -- Lua
    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    --Competetive setup
    use {
        'xeluxee/competitest.nvim',
        requires = 'MunifTanjim/nui.nvim',
        config = function() require('competitest').setup {
            local_config_file_name = ".competitest.lua",

            floating_border = "rounded",
            floating_border_highlight = "FloatBorder",
            picker_ui = {
                width = 0.2,
                height = 0.3,
                mappings = {
                    focus_next = { "j", "<down>", "<Tab>" },
                    focus_prev = { "k", "<up>", "<S-Tab>" },
                    close = { "<esc>", "<C-c>", "q", "Q" },
                    submit = { "<cr>" },
                },
            },
            editor_ui = {
                popup_width = 0.4,
                popup_height = 0.6,
                show_nu = true,
                show_rnu = false,
                normal_mode_mappings = {
                    switch_window = { "<C-h>", "<C-l>", "<C-i>" },
                    save_and_close = "<C-s>",
                    cancel = { "q", "Q" },
                },
                insert_mode_mappings = {
                    switch_window = { "<C-h>", "<C-l>", "<C-i>" },
                    save_and_close = "<C-s>",
                    cancel = "<C-q>",
                },
            },
            runner_ui = {
                interface = "popup",
                selector_show_nu = false,
                selector_show_rnu = false,
                show_nu = true,
                show_rnu = false,
                mappings = {
                    run_again = "R",
                    run_all_again = "<C-r>",
                    kill = "K",
                    kill_all = "<C-k>",
                    view_input = { "i", "I" },
                    view_output = { "a", "A" },
                    view_stdout = { "o", "O" },
                    view_stderr = { "e", "E" },
                    toggle_diff = { "d", "D" },
                    close = { "q", "Q" },
                },
                viewer = {
                    width = 0.5,
                    height = 0.5,
                    show_nu = true,
                    show_rnu = false,
                    close_mappings = { "q", "Q" },
                },
            },
            popup_ui = {
                total_width = 0.8,
                total_height = 0.8,
                layout = {
                    { 4, "tc" },
                    { 5, { { 1, "so" }, { 1, "si" } } },
                    { 5, { { 1, "eo" }, { 1, "se" } } },
                },
            },
            split_ui = {
                position = "right",
                relative_to_editor = true,
                total_width = 0.3,
                vertical_layout = {
                    { 1, "tc" },
                    { 1, { { 1, "so" }, { 1, "eo" } } },
                    { 1, { { 1, "si" }, { 1, "se" } } },
                },
                total_height = 0.4,
                horizontal_layout = {
                    { 2, "tc" },
                    { 3, { { 1, "so" }, { 1, "si" } } },
                    { 3, { { 1, "eo" }, { 1, "se" } } },
                },
            },

            save_current_file = true,
            save_all_files = false,
            compile_directory = ".",
            compile_command = {
                c = { exec = "gcc", args = { "-Wall", "$(FNAME)", "-o", "$(FNOEXT)" } },
                cpp = { exec = "g++", args = { "-Wall", "$(FNAME)", "-o", "$(FNOEXT)" } },
                rust = { exec = "rustc", args = { "$(FNAME)" } },
                java = { exec = "javac", args = { "$(FNAME)" } },
            },
            running_directory = ".",
            run_command = {
                c = { exec = "./$(FNOEXT)" },
                cpp = { exec = "./$(FNOEXT)" },
                rust = { exec = "./$(FNOEXT)" },
                python = { exec = "python", args = { "$(FNAME)" } },
                java = { exec = "java", args = { "$(FNOEXT)" } },
            },
            multiple_testing = -1,
            maximum_time = 5000,
            output_compare_method = "squish",
            view_output_diff = false,

            testcases_directory = ".",
            testcases_use_single_file = false,
            testcases_auto_detect_storage = true,
            testcases_single_file_format = "$(FNOEXT).testcases",
            testcases_input_file_format = "$(FNOEXT)_input$(TCNUM).txt",
            testcases_output_file_format = "$(FNOEXT)_output$(TCNUM).txt",

            companion_port = 27121,
            receive_print_message = true,
        }end
    }

    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
