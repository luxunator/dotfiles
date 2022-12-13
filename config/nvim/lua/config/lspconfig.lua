require('lspconfig').gopls.setup{
      cmd = {'gopls'},
          settings = {
            gopls = {
                analyses = {
                  unusedparams = true,
                  shadow = true,
               },
               staticcheck = true,
               gofumpt = true,
              },
          },
  }
