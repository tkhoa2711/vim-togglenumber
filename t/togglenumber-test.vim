source plugin/togglenumber.vim

describe 'test-functionality'
  it 'has correct default numbering mode'
    Expect get(g:, 'number') == 0
    Expect get(g:, 'relativenumber') == 0
    Expect &number == 0
    Expect &relativenumber == 0
  end

  it 'cycles through the numbering mode'
    " go to number mode
    ToggleNumber
    Expect &number == 1
    Expect &relativenumber == 0
    " go to relative number mode
    ToggleNumber
    Expect &number == 0
    Expect &relativenumber == 1
    " go back to nonumber
    ToggleNumber
    Expect &number == 0
    Expect &relativenumber == 0
  end
end

describe 'test-invocation'
  before
    new
    set nonumber
    set norelativenumber
  end

  it 'is triggered using function call'
    call ToggleNumber()
    Expect &number == 1
    Expect &relativenumber == 0
  end

  it 'is triggered using command'
    ToggleNumber
    Expect &number == 1
    Expect &relativenumber == 0
  end

  it 'is triggered using predefined key map'
    TODO
    normal \<leader>n
    Expect &number == 1
    Expect &relativenumber == 0
  end

end

