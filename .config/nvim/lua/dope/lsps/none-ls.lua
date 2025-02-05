local M = {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
    "gbprod/none-ls-shellcheck.nvim",
  },
}

function M.config()
  local null_ls = require "null-ls"
  null_ls.setup {
    debug = true,
    sources = {
      null_ls.builtins.formatting.stylua, -- lua
      null_ls.builtins.formatting.shfmt, -- sh/bash

      null_ls.builtins.diagnostics.buf, -- proto
      null_ls.builtins.formatting.buf, -- proto

      null_ls.builtins.formatting.yamlfix,
      null_ls.builtins.formatting.sqlfmt,

      null_ls.builtins.formatting.prettierd,
      require "none-ls.diagnostics.eslint_d",
      require "none-ls.formatting.eslint_d",
      require "none-ls.code_actions.eslint_d",

      null_ls.builtins.formatting.gofumpt, -- go
      null_ls.builtins.diagnostics.golangci_lint, -- go
      null_ls.builtins.formatting.goimports_reviser, -- go imports
      null_ls.builtins.formatting.golines, -- go
    },
  }
end

return M
