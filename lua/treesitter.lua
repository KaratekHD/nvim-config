{ "nvim-treesitter/nvim-treesitter", version = false,
  build = function()
    require("nvim-treesitter.install").update({ with_sync = true })
  end,
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "python", "javascript", "html", "css", "json", "java" },
      auto_install = true,
      highlight = { enable = true, additional_vim_regex_highlighting = false },
    })
  end
},
