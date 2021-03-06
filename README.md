vim-togglenumber
================

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/266fc730ce364cfda36a5c751f06c61f)](https://app.codacy.com/app/tkhoa2711/vim-togglenumber?utm_source=github.com&utm_medium=referral&utm_content=tkhoa2711/vim-togglenumber&utm_campaign=Badge_Grade_Dashboard)
[![Build Status](https://travis-ci.org/tkhoa2711/vim-togglenumber.svg?branch=master)](https://travis-ci.org/tkhoa2711/vim-togglenumber)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

Easy toggle between different number modes in vim: `nonumber`, `absolute` and `relative number`, 
with just one key sequence to rule it all. Most other plugins don't provide a seamless way 
to do all 3 modes at once.

<http://www.vim.org/scripts/script.php?script_id=5249>

Installation
------------

If you use [pathogen](https://github.com/tpope/vim-pathogen), clone the repo as below:

```sh
git clone https://github.com/tkhoa2711/vim-togglenumber.git ~/.vim/bundle/vim-togglenumber
```

After having your help tags regenerated, you can view the reference manual with `:help 
togglenumber`.

Or the [Vundle](https://github.com/VundleVim/Vundle.vim) way: add the following line to your `.vimrc`,
save it and then run `:PluginInstall`.

```viml
Plugin 'tkhoa2711/vim-togglenumber'
```

Usage
-----

By default, the plugin is triggered with `<Leader>n`. However you can add your own 
preferred mapping such as:

```viml
nnoremap <F6> :ToggleNumber<CR>
```

The standard numbering mode in vim is `nonumber`. You may go for other options by 
adding the following to your `.vimrc`:

```viml
set number
```

or

```viml
set relativenumber
```

Extra
-----

In case you have no idea about your `<Leader>` key, or rarely use it, I'd recommend giving the 
following setting a try, put this in your `.vimrc`:

```viml
let mapleader = "\<Space>"
```

Then, invoking the `<Space>n` key sequence would cycle through the modes effortlessly.

Requirements
------------

- Vim 7.3 or later

License
-------

MIT License
