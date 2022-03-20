return require("packer").startup(function(use)
    -- package manager
    use("wbthomason/packer.nvim")
    use({
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("init-treesitter")
        end,
    })
    -- color scheme
    -- use({
    --     "olimorris/onedarkpro.nvim",
    --     event = "BufEnter",
    --     config = function()
    --         require("init-theme")
    --     end,
    -- })
    -- icons for other plugins
    use({
        "kyazdani42/nvim-web-devicons",
        config = function()
            require("nvim-web-devicons").setup({ default = true })
        end,
    })
    -- termial integration
    use({
        "akinsho/nvim-toggleterm.lua",
        config = function()
            require("init-term")
        end,
    })
    -- 自动代码补全系列插件
    use ({
        "hrsh7th/nvim-cmp",  -- 代码补全核心插件，下面都是增强补全的体验插件
        requires = {
            {"onsails/lspkind-nvim"}, -- 为补全添加类似 vscode 的图标
            {"hrsh7th/vim-vsnip"}, -- vsnip 引擎，用于获得代码片段支持
            {"hrsh7th/cmp-vsnip"}, -- 适用于 vsnip 的代码片段源
            {"hrsh7th/cmp-nvim-lsp"}, -- 替换内置 omnifunc，获得更多补全
            {"hrsh7th/cmp-path"}, -- 路径补全
            {"hrsh7th/cmp-buffer"}, -- 缓冲区补全
            {"hrsh7th/cmp-cmdline"}, -- 命令补全
            {"f3fora/cmp-spell"}, -- 拼写建议
            {"rafamadriz/friendly-snippets"}, -- 提供多种语言的代码片段
            {"lukas-reineke/cmp-under-comparator"}, -- 让补全结果的排序更加智能
            {"tzachar/cmp-tabnine", run = "./install.sh"} -- tabnine 源,提供基于 AI 的智能补全
        },
        config = function()
            require("init-cmp-new")
        end
    })
    -- auto pairs
    use("windwp/nvim-autopairs")
    -- lsp support
    use({
        "neovim/nvim-lspconfig",
        config = function()
            require("init-lspconf")
        end,
    })
    -- lsp UI staffs
    -- use("tami5/lspsaga.nvim")
    -- 插入模式获得函数签名
    use {
        "ray-x/lsp_signature.nvim",
        config = function()
            require("init-lspsignature")
        end
    }
    -- 代码注释
    use {
        "numToStr/Comment.nvim",
        requires = {
            "JoosepAlviste/nvim-ts-context-commentstring"
        },
        config = function()
            require("init-comment")
        end
    }
    -- 代码格式化
    use {
        "Chiel92/vim-autoformat",
        config = function()
            require("init-autoformat")
        end
    }
    -- 为不支持 LSP 高亮的主题提供默认高亮方案
    use {
        "folke/lsp-colors.nvim",
        config = function()
            require("init-lsp-colors")
        end
    }
    -- view tree
    use {
        "liuchengxu/vista.vim",
        config = function()
            require("init-vista")
        end
    }
    -- file explorer
    use({
        "kyazdani42/nvim-tree.lua",
        config = function()
            require("init-tree")
        end,
    })
    -- 优秀的暗色主题
    use {
        "catppuccin/nvim",
        -- 改个别名，因为它的名字是 nvim，可能会冲突
        as = "catppuccin",
        config = function()
            -- 插件加载完成后自动运行 lua/conf/catppuccin.lua 文件中的代码
            require("init-catppuccin")
        end
    }
    -- clickable buffer line
    use({
        "akinsho/nvim-bufferline.lua",
        config = function()
            require("bufferline").setup()
        end,
    })
    -- status line
    use({
        "windwp/windline.nvim",
        config = function()
            require("init-windline")
        end,
    })
    -- auto tags
    use("windwp/nvim-ts-autotag")
    -- surround with
    use({
        "tpope/vim-surround",
        keys = {"C", "d", "s"}
    })
    -- media file preview extension for telescope
    use("nvim-telescope/telescope-media-files.nvim")
    -- undotree
    use("mbbill/undotree")
    -- use{
    --     "brooth/far.vim",
    --     config = function()
    --         require("init-far")
    --     end
    -- }
    -- 自动恢复光标位置
    use {
        "ethanholz/nvim-lastplace",
        config = function()
            require("init-lastplace")
        end
    }
    -- 自动会话管理
    use {
        "rmagatti/auto-session",
        config = function()
            require("init-auto-session")
        end
    }
    -- 全局替换
    use {
        "nvim-pack/nvim-spectre",
        requires = {
            "nvim-lua/plenary.nvim", -- Lua 开发模块
            "BurntSushi/ripgrep" -- 文字查找
        },
        config = function()
            require("init-nvim-spectre")
        end
    }
    -- LSP UI 美化
    use {
        "tami5/lspsaga.nvim",
        config = function()
            require("init-lspsaga")
        end
    }
    -- 快速选中o
    use {
        "gcmt/wildfire.vim",
        keys = {"<CR>"}
    }
end)
