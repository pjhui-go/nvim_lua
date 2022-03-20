--for _, config in pairs(require("nvim-treesitter.parsers").get_parser_configs()) do
   --config.install_info.url = config.install_info.url:gsub("https://github.com/", "https://ghproxy.com/https://github.com")
 --end
--require("nvim-treesitter.install").prefer_git = true

require("nvim-treesitter.configs").setup({
    ensure_installed = "maintained",
    -- auto tag with nvim-ts-autotag
    autotag = { enable = true },
    highlight = { 
        -- 启用高亮支持
        enable = true,
        -- 使用 treesitter 高亮而不是 neovim 内置的高亮
        additional_vim_regex_highlighting = false
    },
     -- 启用增量选择
    incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<CR>',
      node_incremental = '<CR>',
      node_decremental = '<BS>',
      scope_incremental = '<TAB>',
    },
    -- 根据当前上下文定义文件类型，由 nvim-ts-context-commentstring 插件提供
    context_commentstring = {
        enable = true
    }
  },
})

vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"
