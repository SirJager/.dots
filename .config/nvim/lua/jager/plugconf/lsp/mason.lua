local ok1, mason = pcall(require, "mason")
if not ok1 then
  return
end

local ok2, mason_lspconfig = pcall(require, "mason-lspconfig")
if not ok2 then
  return
end

local ok3, mason_null_ls = pcall(require, "mason-null-ls")
if not ok3 then
  return
end

local okneodev, neodev = pcall(require, "neodev")
if okneodev then
  neodev.setup {}
end

mason.setup {
  PATH = "prepend",
  max_concurrent_installers = 10,
  ui = {
    border = "rounded", -- none | single | double | rounded | solid | shadow
    -- Width of the window. Accepts:
    -- - Integer greater than 1 for fixed width.
    -- - Float in the range of 0-1 for a percentage of screen width.
    width = 0.8,

    -- Height of the window. Accepts:
    -- - Integer greater than 1 for fixed height.
    -- - Float in the range of 0-1 for a percentage of screen height.
    height = 0.9,

    icons = {
      package_pending = " ",
      package_installed = "󰄳 ",
      package_uninstalled = " 󰚌",
    },
    keymaps = {
      toggle_server_expand = "<CR>",
      install_server = "i",
      update_server = "u",
      check_server_version = "c",
      update_all_servers = "U",
      check_outdated_servers = "C",
      uninstall_server = "X",
      cancel_installation = "<C-c>",
    },
  },
}

mason_lspconfig.setup {
  automatic_installation = true,
  ensure_installed = {
    "bashls", -- sh
    "emmet_ls",
    "gopls", -- go
    "html", -- html
    "jsonls", -- json
    "lua_ls", -- lua
    "marksman", -- md
    "tsserver", -- ts
    "tailwindcss",
    "pyright", -- py
    "yamlls", -- yml
  },
}

mason_null_ls.setup {
  automatic_installation = true,
  ensure_installed = {
    "black", -- py
    "codelldb", -- rust, c,cpp debugger
    "debugpy", -- py
    "eslint_d", -- ts,js
    "gofumpt", -- go
    "mypy", -- py
    "ruff", -- py
    "rustywind",
    "goimports_reviser", -- go
    "golines", -- go
    "lua-language-server", -- lua
    "markdownlint", -- md
    "mdx_analyzer",
    "prettierd", -- ts, js
    "rust-analyzer", -- rust
    "stylua", -- lua
    "typescript-languange-server", -- ts,js
  },
}
