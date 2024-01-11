-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/gaur_abhi524/.cache/nvim/packer_hererocks/2.1.1699392533/share/lua/5.1/?.lua;/home/gaur_abhi524/.cache/nvim/packer_hererocks/2.1.1699392533/share/lua/5.1/?/init.lua;/home/gaur_abhi524/.cache/nvim/packer_hererocks/2.1.1699392533/lib/luarocks/rocks-5.1/?.lua;/home/gaur_abhi524/.cache/nvim/packer_hererocks/2.1.1699392533/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/gaur_abhi524/.cache/nvim/packer_hererocks/2.1.1699392533/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  catppuccin = {
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["competitest.nvim"] = {
    config = { "\27LJ\2\n²\20\0\0\b\0b\0•\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\6\0005\5\5\0=\5\a\0045\5\b\0=\5\t\0045\5\n\0=\5\v\0045\5\f\0=\5\r\4=\4\14\3=\3\15\0025\3\16\0005\4\18\0005\5\17\0=\5\19\0045\5\20\0=\5\21\4=\4\22\0035\4\24\0005\5\23\0=\5\19\4=\4\25\3=\3\26\0025\3\27\0005\4\28\0005\5\29\0=\5\30\0045\5\31\0=\5 \0045\5!\0=\5\"\0045\5#\0=\5$\0045\5%\0=\5&\0045\5'\0=\5\v\4=\4\14\0035\4(\0005\5)\0=\5*\4=\4+\3=\3,\0025\3-\0004\4\4\0005\5.\0>\5\1\0045\5/\0004\6\3\0005\a0\0>\a\1\0065\a1\0>\a\2\6>\6\2\5>\5\2\0045\0052\0004\6\3\0005\a3\0>\a\1\0065\a4\0>\a\2\6>\6\2\5>\5\3\4=\0045\3=\0036\0025\0037\0004\4\4\0005\0058\0>\5\1\0045\0059\0004\6\3\0005\a:\0>\a\1\0065\a;\0>\a\2\6>\6\2\5>\5\2\0045\5<\0004\6\3\0005\a=\0>\a\1\0065\a>\0>\a\2\6>\6\2\5>\5\3\4=\4?\0034\4\4\0005\5@\0>\5\1\0045\5A\0004\6\3\0005\aB\0>\a\1\0065\aC\0>\a\2\6>\6\2\5>\5\2\0045\5D\0004\6\3\0005\aE\0>\a\1\0065\aF\0>\a\2\6>\6\2\5>\5\3\4=\4G\3=\3H\0025\3L\0005\4I\0005\5J\0=\5K\4=\4M\0035\4N\0005\5O\0=\5K\4=\4P\0035\4Q\0005\5R\0=\5K\4=\4S\0035\4T\0005\5U\0=\5K\4=\4V\3=\3W\0025\3Y\0005\4X\0=\4M\0035\4Z\0=\4P\0035\4[\0=\4S\0035\4\\\0005\5]\0=\5K\4=\4^\0035\4_\0005\5`\0=\5K\4=\4V\3=\3a\2B\0\2\1K\0\1\0\16run_command\1\2\0\0\14$(FNOEXT)\1\0\1\texec\tjava\vpython\1\2\0\0\r$(FNAME)\1\0\1\texec\vpython\1\0\1\texec\16./$(FNOEXT)\1\0\1\texec\16./$(FNOEXT)\1\0\0\1\0\1\texec\16./$(FNOEXT)\20compile_command\tjava\1\2\0\0\r$(FNAME)\1\0\1\texec\njavac\trust\1\2\0\0\r$(FNAME)\1\0\1\texec\nrustc\bcpp\1\5\0\0\n-Wall\r$(FNAME)\a-o\14$(FNOEXT)\1\0\1\texec\bg++\6c\1\0\0\targs\1\5\0\0\n-Wall\r$(FNAME)\a-o\14$(FNOEXT)\1\0\1\texec\bgcc\rsplit_ui\22horizontal_layout\1\3\0\0\3\1\ase\1\3\0\0\3\1\aeo\1\2\0\0\3\3\1\3\0\0\3\1\asi\1\3\0\0\3\1\aso\1\2\0\0\3\3\1\3\0\0\3\2\atc\20vertical_layout\1\3\0\0\3\1\ase\1\3\0\0\3\1\asi\1\2\0\0\3\1\1\3\0\0\3\1\aeo\1\3\0\0\3\1\aso\1\2\0\0\3\1\1\3\0\0\3\1\atc\1\0\4\17total_height\4š³æÌ\t™³æþ\3\23relative_to_editor\2\rposition\nright\16total_width\4³æÌ™\3³æÌþ\3\rpopup_ui\vlayout\1\3\0\0\3\1\ase\1\3\0\0\3\1\aeo\1\2\0\0\3\5\1\3\0\0\3\1\asi\1\3\0\0\3\1\aso\1\2\0\0\3\5\1\3\0\0\3\4\atc\1\0\2\17total_height\4š³æÌ\t™³¦ÿ\3\16total_width\4š³æÌ\t™³¦ÿ\3\14runner_ui\vviewer\19close_mappings\1\3\0\0\6q\6Q\1\0\4\vheight\4\0€€€ÿ\3\nwidth\4\0€€€ÿ\3\rshow_rnu\1\fshow_nu\2\1\3\0\0\6q\6Q\16toggle_diff\1\3\0\0\6d\6D\16view_stderr\1\3\0\0\6e\6E\16view_stdout\1\3\0\0\6o\6O\16view_output\1\3\0\0\6a\6A\15view_input\1\3\0\0\6i\6I\1\0\4\tkill\6K\rkill_all\n<C-k>\18run_all_again\n<C-r>\14run_again\6R\1\0\5\21selector_show_nu\1\14interface\npopup\rshow_rnu\1\fshow_nu\2\22selector_show_rnu\1\14editor_ui\25insert_mode_mappings\1\0\2\vcancel\n<C-q>\19save_and_close\n<C-s>\1\4\0\0\n<C-h>\n<C-l>\n<C-i>\25normal_mode_mappings\vcancel\1\3\0\0\6q\6Q\18switch_window\1\0\1\19save_and_close\n<C-s>\1\4\0\0\n<C-h>\n<C-l>\n<C-i>\1\0\4\16popup_width\4š³æÌ\t™³æþ\3\rshow_rnu\1\fshow_nu\2\17popup_height\4³æÌ™\3³æŒÿ\3\14picker_ui\rmappings\vsubmit\1\2\0\0\t<cr>\nclose\1\5\0\0\n<esc>\n<C-c>\6q\6Q\15focus_prev\1\4\0\0\6k\t<up>\f<S-Tab>\15focus_next\1\0\0\1\4\0\0\6j\v<down>\n<Tab>\1\0\2\vheight\4³æÌ™\3³æÌþ\3\nwidth\4š³æÌ\t™³¦þ\3\1\0\19\21view_output_diff\1\24testcases_directory\6.\30testcases_use_single_file\1\22compile_directory\6.\19save_all_files\1\22save_current_file\2!testcases_output_file_format!$(FNOEXT)_output$(TCNUM).txt\"testcases_auto_detect_storage\2 testcases_input_file_format $(FNOEXT)_input$(TCNUM).txt\19companion_port\3ñÓ\1!testcases_single_file_format\24$(FNOEXT).testcases\30floating_border_highlight\16FloatBorder\20floating_border\frounded\27local_config_file_name\21.competitest.lua\26receive_print_message\2\26output_compare_method\vsquish\17maximum_time\3ˆ'\21multiple_testing\3ÿÿÿÿ\15\22running_directory\6.\nsetup\16competitest\frequire\0" },
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/competitest.nvim",
    url = "https://github.com/xeluxee/competitest.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-metals"] = {
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/nvim-metals",
    url = "https://github.com/scalameta/nvim-metals"
  },
  ["nvim-scrollbar"] = {
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/nvim-scrollbar",
    url = "https://github.com/petertriho/nvim-scrollbar"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-bbye"] = {
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/vim-bbye",
    url = "https://github.com/moll/vim-bbye"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-illuminate"] = {
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vim-obsession"] = {
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/vim-obsession",
    url = "https://github.com/tpope/vim-obsession"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/vim-visual-multi",
    url = "https://github.com/mg979/vim-visual-multi"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\nt\0\0\3\0\a\0\0156\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0)\1,\1=\1\3\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\15timeoutlen\ftimeout\6o\bvim\0" },
    loaded = true,
    path = "/home/gaur_abhi524/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: competitest.nvim
time([[Config for competitest.nvim]], true)
try_loadstring("\27LJ\2\n²\20\0\0\b\0b\0•\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\6\0005\5\5\0=\5\a\0045\5\b\0=\5\t\0045\5\n\0=\5\v\0045\5\f\0=\5\r\4=\4\14\3=\3\15\0025\3\16\0005\4\18\0005\5\17\0=\5\19\0045\5\20\0=\5\21\4=\4\22\0035\4\24\0005\5\23\0=\5\19\4=\4\25\3=\3\26\0025\3\27\0005\4\28\0005\5\29\0=\5\30\0045\5\31\0=\5 \0045\5!\0=\5\"\0045\5#\0=\5$\0045\5%\0=\5&\0045\5'\0=\5\v\4=\4\14\0035\4(\0005\5)\0=\5*\4=\4+\3=\3,\0025\3-\0004\4\4\0005\5.\0>\5\1\0045\5/\0004\6\3\0005\a0\0>\a\1\0065\a1\0>\a\2\6>\6\2\5>\5\2\0045\0052\0004\6\3\0005\a3\0>\a\1\0065\a4\0>\a\2\6>\6\2\5>\5\3\4=\0045\3=\0036\0025\0037\0004\4\4\0005\0058\0>\5\1\0045\0059\0004\6\3\0005\a:\0>\a\1\0065\a;\0>\a\2\6>\6\2\5>\5\2\0045\5<\0004\6\3\0005\a=\0>\a\1\0065\a>\0>\a\2\6>\6\2\5>\5\3\4=\4?\0034\4\4\0005\5@\0>\5\1\0045\5A\0004\6\3\0005\aB\0>\a\1\0065\aC\0>\a\2\6>\6\2\5>\5\2\0045\5D\0004\6\3\0005\aE\0>\a\1\0065\aF\0>\a\2\6>\6\2\5>\5\3\4=\4G\3=\3H\0025\3L\0005\4I\0005\5J\0=\5K\4=\4M\0035\4N\0005\5O\0=\5K\4=\4P\0035\4Q\0005\5R\0=\5K\4=\4S\0035\4T\0005\5U\0=\5K\4=\4V\3=\3W\0025\3Y\0005\4X\0=\4M\0035\4Z\0=\4P\0035\4[\0=\4S\0035\4\\\0005\5]\0=\5K\4=\4^\0035\4_\0005\5`\0=\5K\4=\4V\3=\3a\2B\0\2\1K\0\1\0\16run_command\1\2\0\0\14$(FNOEXT)\1\0\1\texec\tjava\vpython\1\2\0\0\r$(FNAME)\1\0\1\texec\vpython\1\0\1\texec\16./$(FNOEXT)\1\0\1\texec\16./$(FNOEXT)\1\0\0\1\0\1\texec\16./$(FNOEXT)\20compile_command\tjava\1\2\0\0\r$(FNAME)\1\0\1\texec\njavac\trust\1\2\0\0\r$(FNAME)\1\0\1\texec\nrustc\bcpp\1\5\0\0\n-Wall\r$(FNAME)\a-o\14$(FNOEXT)\1\0\1\texec\bg++\6c\1\0\0\targs\1\5\0\0\n-Wall\r$(FNAME)\a-o\14$(FNOEXT)\1\0\1\texec\bgcc\rsplit_ui\22horizontal_layout\1\3\0\0\3\1\ase\1\3\0\0\3\1\aeo\1\2\0\0\3\3\1\3\0\0\3\1\asi\1\3\0\0\3\1\aso\1\2\0\0\3\3\1\3\0\0\3\2\atc\20vertical_layout\1\3\0\0\3\1\ase\1\3\0\0\3\1\asi\1\2\0\0\3\1\1\3\0\0\3\1\aeo\1\3\0\0\3\1\aso\1\2\0\0\3\1\1\3\0\0\3\1\atc\1\0\4\17total_height\4š³æÌ\t™³æþ\3\23relative_to_editor\2\rposition\nright\16total_width\4³æÌ™\3³æÌþ\3\rpopup_ui\vlayout\1\3\0\0\3\1\ase\1\3\0\0\3\1\aeo\1\2\0\0\3\5\1\3\0\0\3\1\asi\1\3\0\0\3\1\aso\1\2\0\0\3\5\1\3\0\0\3\4\atc\1\0\2\17total_height\4š³æÌ\t™³¦ÿ\3\16total_width\4š³æÌ\t™³¦ÿ\3\14runner_ui\vviewer\19close_mappings\1\3\0\0\6q\6Q\1\0\4\vheight\4\0€€€ÿ\3\nwidth\4\0€€€ÿ\3\rshow_rnu\1\fshow_nu\2\1\3\0\0\6q\6Q\16toggle_diff\1\3\0\0\6d\6D\16view_stderr\1\3\0\0\6e\6E\16view_stdout\1\3\0\0\6o\6O\16view_output\1\3\0\0\6a\6A\15view_input\1\3\0\0\6i\6I\1\0\4\tkill\6K\rkill_all\n<C-k>\18run_all_again\n<C-r>\14run_again\6R\1\0\5\21selector_show_nu\1\14interface\npopup\rshow_rnu\1\fshow_nu\2\22selector_show_rnu\1\14editor_ui\25insert_mode_mappings\1\0\2\vcancel\n<C-q>\19save_and_close\n<C-s>\1\4\0\0\n<C-h>\n<C-l>\n<C-i>\25normal_mode_mappings\vcancel\1\3\0\0\6q\6Q\18switch_window\1\0\1\19save_and_close\n<C-s>\1\4\0\0\n<C-h>\n<C-l>\n<C-i>\1\0\4\16popup_width\4š³æÌ\t™³æþ\3\rshow_rnu\1\fshow_nu\2\17popup_height\4³æÌ™\3³æŒÿ\3\14picker_ui\rmappings\vsubmit\1\2\0\0\t<cr>\nclose\1\5\0\0\n<esc>\n<C-c>\6q\6Q\15focus_prev\1\4\0\0\6k\t<up>\f<S-Tab>\15focus_next\1\0\0\1\4\0\0\6j\v<down>\n<Tab>\1\0\2\vheight\4³æÌ™\3³æÌþ\3\nwidth\4š³æÌ\t™³¦þ\3\1\0\19\21view_output_diff\1\24testcases_directory\6.\30testcases_use_single_file\1\22compile_directory\6.\19save_all_files\1\22save_current_file\2!testcases_output_file_format!$(FNOEXT)_output$(TCNUM).txt\"testcases_auto_detect_storage\2 testcases_input_file_format $(FNOEXT)_input$(TCNUM).txt\19companion_port\3ñÓ\1!testcases_single_file_format\24$(FNOEXT).testcases\30floating_border_highlight\16FloatBorder\20floating_border\frounded\27local_config_file_name\21.competitest.lua\26receive_print_message\2\26output_compare_method\vsquish\17maximum_time\3ˆ'\21multiple_testing\3ÿÿÿÿ\15\22running_directory\6.\nsetup\16competitest\frequire\0", "config", "competitest.nvim")
time([[Config for competitest.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\nt\0\0\3\0\a\0\0156\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0)\1,\1=\1\3\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\15timeoutlen\ftimeout\6o\bvim\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
