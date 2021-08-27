#-----------------------------------------------------------------------
# Install Doom-Emacs and add personal configuration.

# Install Doom-Emacs.
git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install

# Brings my persional configuration.
rm -rf ~/.doom.d/
git clone git@github.com:fernandomayer/doom-emacs.git ~/.doom.d/

# Upgrade Doom-emacs.
~/.emacs.d/bin/doom upgrade

#-----------------------------------------------------------------------
# Install some packages manually.

# (progn
#   (require 'package)
#   (package-initialize)
#   (when (not (package-installed-p 'electric-spacing-r))
#     (url-copy-file
#      "https://raw.githubusercontent.com/walmes/electric-spacing/master/electric-spacing-r.el"
#      "~/.doom.d/electric-spacing-r.el")
#     (byte-compile-file "~/.doom.d/electric-spacing-r.el")))

# (progn
#   (require 'package)
#   (package-initialize)
#   (when (not (package-installed-p 'essh))
#     (url-copy-file
#      "https://www.emacswiki.org/emacs/download/essh.el"
#      "~/.doom.d/essh.el")
#     (byte-compile-file "~/.doom.d/essh.el")))

# Requirements for `python` module.
# https://github.com/hlissner/doom-emacs/tree/develop/modules/lang/python
#   cd anaconda
#   source activate
#   pip install pytest nose black pyflakes isort
#   pip install python-language-server[all]
#   pip install pyright
#   conda deactivate
# On Emacs, after refreshing it:
#   M-x lsp-install-server RET mspyls
# https://github.com/microsoft/pyright

# Requirements for `(cc +lsp)` module.
# sudo apt-get install clangd-10

# Doom external dependencies
sudo pacman -S fd shellcheck ripgrep

# Requirements for `ess` module.
Rscript -e 'install.packages(c("lintr", "languageserver"), dependencies = TRUE)'
