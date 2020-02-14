require 'spellchecker'

describe Spellchecker do
  it 'responds to check method' do
    expect(subject).to respond_to(:check)
  end

  it 'can detect a misspelled a' do
    expect(subject.check('s')).to eq('~s~')
  end

  it 'can detect a misspelled cat' do
    expect(subject.check('cad')).to eq('~cad~')
  end

  it 'can detect a short misspelled sentence' do
    expect(subject.check('a cad')).to eq('a ~cad~')
  end

  it 'can detect a longer sentence with a few misspelled words' do
    expect(subject.check('the nain in spain staps mainly in the plin')).to eq('the ~nain~ in spain ~staps~ mainly in the ~plin~')
  end

  it 'can return a correctly spelled sentence without issue' do
    expect(subject.check('this is a correct sentence')).to eq('this is a correct sentence')
  end
end