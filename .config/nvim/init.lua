require("ld.bootstrap") -- Packer Auto-Installer
require("ld.base")
require("ld.plugins")

-- Brief help
-- :PackerList       - lists configured plugins
-- :PackerInstall    - installs plugins; append `!` to update or just :PackerUpdate
-- :PackerSearch foo - searches for foo; append `!` to refresh local cache
-- :PackerClean      - confirms removal of unused plugins; append `!` to auto-approve removal
-- see :h packer for more details or wiki for FAQ

-- General Settings
vim.cmd('autocmd vimenter * ++nested filetype plugin indent on')
-- To ignore plugin

