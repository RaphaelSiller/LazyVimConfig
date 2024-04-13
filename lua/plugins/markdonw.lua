return {
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
    keys = function()
      return {
        { "<leader>cM", "<cmd>MarkdownPreviewToggle<cr>", desc = "toggle MarkdownPreview" },
      }
    end,
  },
}
