" vim:fdm=marker
set nocompatible

if has('nvim')
  set  termguicolors
endif

let CONFIG = "$HOME/.config/nvim/"

" Scripts Utilitários
source $HOME/.config/nvim/modules/utils/utils.vim
" Carregamento de Plugins
source $HOME/.config/nvim/modules/plugins/loadplugins.vim
" Configurações Gerais
source $HOME/.config/nvim/modules/config/config.vim
" Keybinds
source $HOME/.config/nvim/modules/config/keybinds.vim
" Configuração de Plugins
source $HOME/.config/nvim/modules/plugins/plugin_config.vim
" Auto Groups
source $HOME/.config/nvim/modules/config/autogroup.vim
" Configurações de Cores
source $HOME/.config/nvim/modules/config/cores.vim
