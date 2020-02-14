require 'spellchecker'

describe Spellchecker do
  it 'responds to check method' do
    expect(subject).to respond_to(:check)
  end
end