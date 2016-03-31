call vspec#hint({'scope': 'vspec#scope()', 'sid': 'vspec#sid()'})

describe 'togglenumber-test'
  it 'check default numbering mode'
    Expect get(g:, 'number') == 0
    Expect get(g:, 'relativenumber') == 0
  end

  it 'change the numbering mode'
    TODO
  end
end

