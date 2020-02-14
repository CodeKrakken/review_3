require 'spellchecker'

describe Spellchecker do
  it 'responds to check method' do
    expect(subject).to respond_to(:check)
  end

  it 'can detect a misspelled A' do
    expect(subject.check('s')).to eq('~s~')
  end
end