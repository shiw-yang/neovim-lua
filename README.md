# neovim config for Shiwei.yang

- basic.lua 基础配置
- colorscheme.lua 主题配置
- keybindings.lua 快捷键配置
- plugins.lua 插件配置
- lsp neovim内置LSP功能配置
- plugin-config 第三方插件配置
- utils 针对windows的特殊配置

## lua-vim 分类介绍

- `vim.g.{name}` 全局变量
- `vim.b.{name}` 缓冲区变量
- `vim.w.{name}` 窗口变量
- `vim.bo.{option}` buffer-local 选项
- `vim.wo.{option}` window-local 选项

## Neovim 设置快捷键

- `vim.api.nvim_set_keymap()` 全局快捷键
- `vim.api.nvim_buf_set_keymap()` Buffer 快捷键

```lua
vim.api.nvim_set_keymap('模式', '按键', '映射为', 'options')
```

### Leader key

`leader key`是你常用的前缀，我通常设置为`空格`

先保存本地变量。

```lua
local map = vim.api.nvim_set_keymap
-- 复用 opt 参数
local opt = {noremap = true, silent = true }
```

## 插件管理器

使用 Packer.nvim

### 安装 

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

```
