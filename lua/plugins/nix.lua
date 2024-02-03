return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        nil_ls = {
          settings = {
            ['nil'] = {
              formatting = {
                command = { "nixpkgs-fmt" },
              },
              nix = {
                flake = {
                  autoArchive = true,
                  autoEvalInputs = true,
                },
              },
            },
          },
        },
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "nix",
      })
    end,
  },
}
