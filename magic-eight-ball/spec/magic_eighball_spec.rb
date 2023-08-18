require 'rspec'
require 'magic_eightball'

describe 'ask_eightball' do
  it 'returns a positive answer' do
    expect(ask_eightball(0)).to eq "It is certain"
    expect(ask_eightball(1)).to eq "It is decidedly so"
    expect(ask_eightball(2)).to eq "Without a doubt"
    expect(ask_eightball(3)).to eq "Yes definitely"
    expect(ask_eightball(4)).to eq "You may rely on it"
    expect(ask_eightball(5)).to eq "As I see it, yes"
    expect(ask_eightball(6)).to eq "Most likely"
    expect(ask_eightball(7)).to eq "Outlook good"
    expect(ask_eightball(8)).to eq "Yes"
    expect(ask_eightball(9)).to eq "Signs point to yes"
  end

  it 'returns a neutral answer' do
    expect(ask_eightball(10)).to eq "Reply hazy try again"
    expect(ask_eightball(11)).to eq "Ask again later"
    expect(ask_eightball(12)).to eq "Better not tell you now"
    expect(ask_eightball(13)).to eq "Cannot predict now"
    expect(ask_eightball(14)).to eq "Concentrate and ask again"
  end
end