-- 默认不开启nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup(
  {
    git = {
      enable = false
    },
    update_cwd = true,
    update_focused_file = {
      enable = true,
      update_cwd = true,
    },
    view = {
      -- 宽度
      width = 40,
      -- 也可以 'right'
      side = 'left',
      -- 隐藏根目录
      hide_root_folder = false,
      -- 自定义列表中快捷键
      mappings = {
        custom_only = false,
        list = list_keys,
      },
      -- 不显示行数
      number = false,
      relativenumber = false,
      -- 显示图标
      signcolumn = 'yes',
    },
    actions = {
      open_file = {
        -- 首次打开大小适配
        resize_window = true,
        -- 打开文件时关闭
        quit_on_open = true,
      },
    },
  }
)
