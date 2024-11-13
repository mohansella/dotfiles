local M = {}

local term_buf = nil

function M.toggle_term()
    --initialize buffer
    local isNewTerm = term_buf == nil or not vim.api.nvim_buf_is_valid(term_buf)
    if isNewTerm then
        if term_buf ~= nil then
            vim.api.nvim_buf_delete(term_buf, { force = true }) --clean up old terminal
        end
        term_buf = vim.api.nvim_create_buf(false, true)
    end 
    
    --show window
    local width = math.floor(vim.o.columns * 0.8)
    local height = math.floor(vim.o.lines * 0.8)
    local opts = {
        relative = 'editor',
        width = width,
        height = height,
        col = math.floor((vim.o.columns - width) / 2),
        row = math.floor((vim.o.lines - height) / 2),
        style = 'minimal',
        border = 'rounded'
    }
    vim.api.nvim_open_win(term_buf, true, opts)

    --initialize terminal and start edit
    if isNewTerm then
        vim.fn.termopen(os.getenv('SHELL') .. ' -l')
    end
    vim.api.nvim_command('startinsert')
end

-- safe exit
vim.api.nvim_create_autocmd("VimLeavePre", {
    callback = function()
        if vim.api.nvim_buf_is_valid(term_buf) then
            vim.api.nvim_buf_delete(term_buf, { force = true })
        end
    end,
})


vim.api.nvim_create_user_command('MyToggleTerm', M.toggle_term, {})
vim.api.nvim_set_keymap('t', '<C-j>', '<C-\\><C-n>:hide<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', ':MyToggleTerm<CR>', { noremap = true, silent = true })

return M
