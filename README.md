# vimrc
master managed vimrc

**REMEMBER .vimrc is hidden file**

1. Install Vundle (Vim Plugin Manager)
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

2. Install Plugins
    * Open Vim
    * Run ":PluginInstall"

3. Compile YouCompleteMe w/ symantic support for C-family languages
    * Install development tools and CMake: sudo apt-get install build-essential cmake
    * Make sure you have Python headers installed: sudo apt-get install python-dev python3-dev.
    * cd ~/.vim/bundle/youcompleteme
      ./install.py --clang-completer
