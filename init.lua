--常规设置
vim.g.mapleader = " "
vim.g.loaded_gzip = 1
vim.g.loaded_zip = 1
vim.g.loaded_zipPlugin = 1
vim.g.loaded_tar = 1
vim.g.loaded_tarPlugin = 1
vim.g.loaded_getscript = 1
vim.g.loaded_getscriptPlugin = 1
vim.g.loaded_vimball = 1
vim.g.loaded_vimballPlugin = 1
vim.g.loaded_2html_plugin = 1

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrwSettings = 1

-- Split to the right in vsplit
vim.o.splitright = true
-- Split to the bottom in split
vim.o.splitbelow = true
-- Enable mouse for any mode
vim.o.mouse = "a"
vim.o.writebackup = false
vim.o.termguicolors = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.smartindent = true
vim.o.expandtab = true
-- Show line number
vim.o.number = true
-- Highlight current line number
vim.o.cursorline = true
-- Display long text in one line
vim.o.wrap = false
-- Do not fold on default
vim.o.foldenable = false
-- Show sign column (e.g. lsp Error sign)
vim.o.signcolumn = "yes"
-- Better completion
vim.o.completeopt = "menu,menuone,noselect"

-- Highlight on yank
vim.cmd([[
augroup YankHighlight
autocmd!
autocmd TextYankPost * silent! lua vim.highlight.on_yank()
augroup end
]])


--方向键映射
vim.api.nvim_set_keymap('n', 'i', 'k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'k', 'j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'j', 'h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'I', '5k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'K', '5j', { noremap = true, silent = true })

vim.api.nvim_set_keymap('v', 'i', 'k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'k', 'j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'j', 'h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'I', '5k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'K', '5j', { noremap = true, silent = true })

--插入建映射
vim.api.nvim_set_keymap('n', 'h', 'i', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'H', 'I', { noremap = true, silent = true })

--保存和退出
vim.api.nvim_set_keymap('n', 'Q', ':q<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'S', ':w<CR>', { noremap = true })

--行尾和行ð
vim.api.nvim_set_keymap('n', 'J', '0', { noremap = true} )
vim.api.nvim_set_keymap('n', 'L', '$', { noremap = true} )

--屏幕位置
vim.api.nvim_set_keymap('n', '<C-i>', '5<C-y>', { noremap=true} )
vim.api.nvim_set_keymap('n', '<C-k>', '5<C-e>', { noremap=true} )
--
--
----分屏相关
vim.api.nvim_set_keymap('n', 'si', ':set nosplitright<CR>:split<CR>', { noremap=true } )
vim.api.nvim_set_keymap('n', 'sk', ':set splitright<CR>:split<CR>', { noremap=true } )
vim.api.nvim_set_keymap('n', 'sj', ':set nosplitright<CR>:vsplit<CR>', { noremap=true } )
vim.api.nvim_set_keymap('n', 'sl', ':set splitright<CR>:vsplit<CR>', { noremap=true } )
--
--
----分屏移动
vim.api.nvim_set_keymap('n', '<leader>j', '<C-w>h', { noremap=true } )
vim.api.nvim_set_keymap('n', '<leader>k', '<C-w>j', { noremap=true } )
vim.api.nvim_set_keymap('n', '<leader>i', '<C-w>k', { noremap=true } )
vim.api.nvim_set_keymap('n', '<leader>l', '<C-w>l', { noremap=true } )
--
--
---- 改变窗口大小
vim.api.nvim_set_keymap('n', '<up>', ':res +5<CR>', { noremap=true } )
vim.api.nvim_set_keymap('n', '<down>', ':res -5<CR>', { noremap=true } )
vim.api.nvim_set_keymap('n', '<left>', ':vertical resize-5<CR>', { noremap=true } )
vim.api.nvim_set_keymap('n', '<right>', ':vertical resize+5<CR>', { noremap=true } )
--
--
----更改输入状态下上下左右
-- vim.api.nvim_set_keymap('i', '<C-i>', '<up>', { noremap=true } )
--vim.api.nvim_set_keymap('i', '<C-k>', '<down>', { noremap=true } )
-- vim.api.nvim_set_keymap('i', '<C-j>', '<left>', { noremap=true } )
-- vim.api.nvim_set_keymap('i', '<C-l>', '<right>', { noremap=true } )


--标签页相关
vim.api.nvim_set_keymap('n', 'ti', ':tabe <CR>', { noremap=true })
vim.api.nvim_set_keymap('n', 'tI', ':tab split <CR>', { noremap=true })

--自动注释
-- vim.api.nvim_set_keymap('n', '<C-/>', 'gcc', { noremap=true})

-- 打开大纲预览
vim.api.nvim_set_keymap("n", "<leader>2", ":Vista!!<CR>", {noremap=true})


vim.api.nvim_set_keymap("n", "<Tab>", ":BufferLineCycleNext<CR>", {noremap=true, silent=true})
vim.api.nvim_set_keymap("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", {noremap=true, silent=true})
vim.api.nvim_set_keymap("n", "U", ":UndotreeToggle<CR>", {noremap=true, silent=true})
vim.api.nvim_set_keymap("n", "<leader>f", ":F  **/*<left><left><left><left><left>", {noremap=true})
vim.api.nvim_set_keymap("n", "<leader>fr", ":Far **/*<left><left><left><left><left>", {noremap=true})

    vim.g.python3_host_prog="/usr/local/bin/python3"
    vim.opt.termguicolors = true
    require("init-plugins")
