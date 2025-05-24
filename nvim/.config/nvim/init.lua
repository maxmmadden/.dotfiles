local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.api.nvim_create_autocmd({ 'VimEnter', 'VimResume' }, {
  callback = function()
    vim.opt.guicursor =
    "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"
  end,
})

vim.api.nvim_create_autocmd({ 'VimLeave', 'VimSuspend' }, {
  callback = function()
    vim.opt.guicursor = "a:ver25-blinkon0"
  end,
})

require("vim-settings")
require("lazy").setup("plugins")
