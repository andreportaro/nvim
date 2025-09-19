-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local util = require "lspconfig/util"

local servers = { "html", "php", "cssls", "intelephense", "pyright" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- gopls 
lspconfig.gopls.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  cmd = {"gopls"},
  filetypes = { "go", "gomod","gowork","gotmpl"},
  root_dir = util.root_pattern("go.work","go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
    }
  },
}

local nvim_lsp = require'lspconfig'
nvim_lsp.intelephense.setup({
    settings = {
        intelephense = {
            environment = {
              includePaths = {"/Users/andre/.composer/", "~/Code/roofr-dev/roofr/vendor/"}
            };
            files = {
                maxSize = 5000000;
            };
        };
    }
});


