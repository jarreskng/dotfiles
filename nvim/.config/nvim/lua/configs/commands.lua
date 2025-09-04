local group = vim.api.nvim_create_augroup('jarres', { clear = true })

-- Change current working directory on startup
vim.api.nvim_create_autocmd("VimEnter", {
  group = group,
  pattern = "*",
  callback = function()
    vim.api.nvim_set_current_dir(vim.fn.expand("%:p:h"))
  end,
})

-- Highlight the region on yank
vim.api.nvim_create_autocmd('TextYankPost', {
  group = group,
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({ higroup = 'Visual', timeout = 1000 })
  end,
})

-- Resize splits if window got resized
vim.api.nvim_create_autocmd('VimResized', {
  group = group,
  pattern = '*',
  callback = function()
    vim.cmd('tabdo wincmd =')
  end,
})

-- Go to the last location when opening a buffer
vim.api.nvim_create_autocmd("BufReadPost", {
  group = group,
  pattern = '*',
  callback = function()
    local exclude = { "gitcommit" }
    local buf = vim.api.nvim_get_current_buf()
    if vim.tbl_contains(exclude, vim.bo[buf].filetype) then
      return
    end
    local mark = vim.api.nvim_buf_get_mark(buf, '"')
    local lcount = vim.api.nvim_buf_line_count(buf)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

