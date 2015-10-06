vim-togglenumber
================

Easy toggle between different number modes in vim: nonumber, absolute and relative number, 
with just one key sequence to rule it all. Most other plugins don't provide a seamless way 
to do all 3 modes at once.

Installation
------------

If you use [pathogen](https://github.com/tpope/vim-pathogen), clone the repo as below:

    git clone https://github.com/tkhoa2711/vim-togglenumber.git ~/.vim/bundle/vim-togglenumber

After having you help tags regenerated, you can view the reference manual with `:help 
togglenumber`.

Usage
-----

By default, the plugin is trigger with `<Leader>n`. However you can add your own 
preferred mapping such as:

    nnoremap <F6> :ToggleNumber<CR>

In case you have no idea about you `<Leader>` key, or rarely use it. I recommend giving the 
following setting a try, put this in your .vimrc:

    let mapleader = "\<Space>"

Then, invoking the `<Space>n` key sequence would cycle through the modes effortlessly.

Requirements
------------

 - Vim 7.3 or later

License
-------

MIT License

