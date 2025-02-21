# Neovim Config

## Shortcuts

Format: Keys - result.

**Normal Mode:**

- " pv" - Open the vim file explorer.
- "Ctl+d" - Scroll down half a page and center the cursor.
- "Ctl+u" - Scroll up half a page and center the cursor.
- "n" - Center the found item.
- "N" - Center the found item.
- " f" - Format the current buffer using the system lsp.
- " s" - Perform a global search and replace for the word under the cursor.
- " u" - Toggle the Undotree window.
- " pf" - Use Telescope to find files in the current project.
- "Ctl+p" - Use Telescope to search git files in the current project.
- " ps" - Use Telescope to grep files in the current project.
- " vh" - Use Telescope to search Neovim's help files.
- "Ctl+h" - Navigate to the window on the left.
- "Ctl+j" - Navigate to the window below.
- "Ctl+k" - Navigate to the window above.
- "Ctl+l" - Navigate to the window on the right.
- " xq" - Toggle Trouble quick-fix list.
- "Ctl+n" - Select next autocomplete item.
- "Ctl+p" - Select previous autocomplete item.
- "Ctl+b" - Scroll autocomplete up.
- "Ctl+f" - Scroll autocomplete down.
- "Ctl+Space" - Complete autocomplete suggestion.
- "Ctl+e" - Abort autocomplete.
- "Return" - Accept selected autocomplete.

**Visual Mode:**

- "J" - Move highlighted line(s) up.
- "K" - Move highlighted line(s) down.
- " p" - Paste without overwriting the buffer.
- " y" - Copy highlighted text to system keyboard.
- " Y" - Copy line to system keyboard.
- " d" - Delete the highlighted text without adding it to the buffer.

## Packages

### Package manager

[**Lazy.nvim**](https://github.com/folke/lazy.nvim)

- [Documentation](https://lazy.folke.io/).
- A fast package manager that lazy loads packages.

### Autocomplete

[**LuaSnip**](https://github.com/L3MON4d3/LuaSnip)

- [Documentation](https://github.com/L3MON4D3/LuaSnip/blob/master/DOC.md).
- A snippet engine written in Lua.

[**Friendly Snippets**](https://github.com/rafamadriz/friendly-snippets)

- A collection of snippets for multiple coding languages.

[**nvim-cmp**](https://github.com/hrsh7th/nvim-cmp)

- A completion engine for Neovim that connects sources to a ui.
- Sources:
  - [cmp-buffer](https://github.com/hrsh7th/cmp-buffer): Buffer completion.
  - [cmp-path](https://github.com/hrsh7th/cmp-path): Path completion.
  - [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp): LSP completion.
  - [cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua): Neovim Lua API completion.
  - [cmp-luasnip](https://github.com/saadparwaiz1/cmp_luasnip): Luasnip completion.

### Color

[**Kanagawa**](https://github.com/rebelot/kanagawa.nvim)

- Darkmode pallete with a custom background.

### Formatter

[**Conform**](https://github.com/stevearc/conform.nvim)

- A lightweight formatter for Neovim.

[**Mason Conform**](https://github.com/zapling/mason-conform.nvim)

- Ensures any conform formatters are installed in mason.

### Linter

[**Nvim Lint**](https://github.com/mfussenegger/nvim-lint)

- A linter for Neovim.
- NOTE: Currently there are no linters installed.

### LSP

[**Nvim LSPConfig**](https://github.com/neovim/nvim-lspconfig)

- Quickstart configs for the Neovim LSP.

[**Mason LSPConfig**](https://github.com/williamboman/mason.nvim)

- Requires Mason.
- Connects Mason with Nvim LSPConfig.

### Utilities

[**Autopairs**](https://github.com/windwp/nvim-autopairs)

- Adds closing characters whenever opening characters are used.

[**Git Signs**](https://github.com/lewis6991/gitsigns.nvim)

- Adds signs to the gutter denoting certain git statuses.

[**Indent Blankline**](https://github.com/lukas-reineke/indent-blankline.nvim)

- Adds formatting to indentend lines to make reading code (but really python) easier.

[**Lualine**](https://github.com/nvim-lualine/lualine.nvim)

- Pretties up the command bar.

[**Mason**](https://github.com/williamboman/mason.nvim)

- A GUI for LSPs, DAPs, formatters, and linters.

[**Telescope**](https://github.com/nvim-telescope/telescope.nvim)

- A fuzzy finder for neovim projects. Lets you jump around super easily.

[**Treesitter**](https://github.com/nvim-treesitter/nvim-treesitter)

- A super fast parser for Neovim (helps with syntax highlighting).

[**Trouble**](https://github.com/folke/trouble.nvim)

- A pretty diagnostics, references, telescope results, quickfix, and location list.

[**Undotree**](https://github.com/mbbill/undotree)

- Provides a GUI to navigate past, present, and future buffer states.

## Notes
