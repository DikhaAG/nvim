local M = {}

M.general = {
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },
    ["<Leader><Leader>"] = { ":nohlsearch<CR>" }, -- clear searrch highlighting
    ["C-f"] = { ":Format<CR>" },
    ["<Leader>s"] = { ":ClangdSwitchSourceHeader<CR>" },
  },
}

M.telescope = {
    n = {
        ["<C-p>"] = { ":Telescope git_files <CR>" },
        ["<leader>pf"] = { "<cmd> Telescope find_files <CR>", "find files" },
        ["<leader>pfa"] = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "find all" },
        ["<leader>pg"] = { "<cmd> Telescope live_grep prompt_prefix=🔍<CR>", "live grep" },
        ["<leader>pb"] = { "<cmd> Telescope buffers <CR>", "find buffers" },
        ["<leader>ph"] = { "<cmd> Telescope help_tags <CR>", "help page" },
        ["<leader>po"] = { "<cmd> Telescope oldfiles <CR>", "find oldfiles" },
        ["<leader>pk"] = { "<cmd> Telescope keymaps <CR>", "show keys" },
    },
}

M.nvim_dap = {
    n = {
        ["<leader>dl"] = { "<cmd>lua require'dap'.step_into()<CR>", "debugger step into" },
        ["<leader>dj"] = { "<cmd>lua require'dap'.step_over()<CR>", "debugger step over" },
        ["<leader>dk"] =  { "<cmd>lua require'dap'.step_out()<CR>", "debugger step out" },
        ["<leader>d<space>"] = {"<cmd>lua require'dap'.continue()<CR>", "debugger continue" },
        ["<leader>dbp"] = { "<cmd>lua require'dap'.toggle_breakpoint()<CR>", "debugger toggle breakpoint" },
        ["<leader>dd"] = { "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", "debugger set conditional breakpoint" },
        -- ["<leader>de"] = { ":call vimspector#Reset()<CR>", "debugger reset" },
        -- map("n", "<leader>m", ":MaximizerToggle!<CR>", { noremap = true })
    }
}

M.nvterm = {
  plugin = true,

  t = {
    -- toggle in terminal mode
    ["<C-\\>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },

    ["<leader-h>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "toggle horizontal term",
    },

    ["<leader-v>"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "toggle vertical term",
    },
  },

  n = {
    -- toggle in normal mode
    ["<C-\\>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },

    ["<leader-h>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "toggle horizontal term",
    },

    ["<leader-v>"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "toggle vertical term",
    },

    -- new

    -- ["<leader>h"] = {
    --   function()
    --     require("nvterm.terminal").new "horizontal"
    --   end,
    --   "new horizontal term",
    -- },
    --
    -- ["<leader>v"] = {
    --   function()
    --     require("nvterm.terminal").new "vertical"
    --   end,
    --   "new vertical term",
    -- },
  },
}

M.nvimtree = {
    n = {
        ["<C-a>"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
    }
}

M.lspconfig = {
    n = {
        ["gl"] = { '<cmd>lua vim.diagnostic.open_float(0, { scope = "line", border = "single" })<CR>' },
    }
}

M.null_ls = {
    n = {
        ["<C-f>"] = { '<cmd>lua require("custom.plugins.null-ls").lsp_formatting(vim.api.nvim_get_current_buf()) <CR>', 'Format current file using null-ls'}
    }
}

return M
