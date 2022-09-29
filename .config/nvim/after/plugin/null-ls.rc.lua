local status, null_ls = pcall(requrie, "null-ls")
if (not status) then return end

null_ls.setup({
  on_attach = function(client, bufnr)
    if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_command [[augroup Format]]
      vim.api.nvim_command [[autocmd! * <buffer>]]
      vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
      vim.api.nvim_command [[augrounp END]]
    end
  end,
  souces = {
    null_ls.builtins.diagnostics.eslint_d.with({
      dignostics_format = "[eslint] #{m}\n(#{c})"
    })
  }
})
