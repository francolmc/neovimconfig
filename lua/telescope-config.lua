local builtin = require("telescope.builtin")

builtin.project_files = function()
    local opts = {
        show_untracked = true,
    } -- define here if you want to define something
    vim.fn.system("git rev-parse --is-inside-work-tree")
    if vim.v.shell_error == 0 then
        builtin.git_files(opts)
    else
        builtin.find_files(opts)
    end
end

