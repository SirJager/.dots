local ok, null_ls = pcall(require, "null-ls")
if not ok then
  return
end

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup {
  sources = {
    null_ls.builtins.formatting.stylua, -- lua

    null_ls.builtins.formatting.shfmt, -- sh/bash
    null_ls.builtins.formatting.beautysh, -- sh/bash
    null_ls.builtins.code_actions.shellcheck, -- sh/bash

    null_ls.builtins.formatting.sqlfmt, -- sql

    null_ls.builtins.formatting.jq, -- json

    null_ls.builtins.formatting.prettier, -- ts,tsx,js,jsx,html, ...etc.
    null_ls.builtins.diagnostics.eslint_d, -- ts,tsx,js,jsx,html, ...etc.
    null_ls.builtins.code_actions.eslint_d, -- ts,tsx,js,jsx,html, ...etc.

    null_ls.builtins.formatting.black, -- py
    null_ls.builtins.formatting.isort, -- py imports

    null_ls.builtins.formatting.gofumpt, -- go
    null_ls.builtins.formatting.golines, -- go
    null_ls.builtins.diagnostics.gospel, -- go
    null_ls.builtins.diagnostics.golangci_lint, -- go
    null_ls.builtins.formatting.goimports_reviser, -- go imports

    null_ls.builtins.diagnostics.ruff, -- rust

    null_ls.builtins.formatting.yamlfix, -- yml/yaml
    null_ls.builtins.formatting.markdownlint, -- mdx/md/markdow
  },

  -- configure format on save
  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format { bufnr = bufnr, timeout_ms = 5000 }
          local okgo, _ = pcall(require, "go")
          if okgo then
            require("go.format").gofmt()
            --[[ require("go.format").goimport() ]]
          end
        end,
      })
    end
  end,
}
