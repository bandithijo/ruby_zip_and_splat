# frozen_string_literal: true

require 'rspec'

headers = %w[
  1B
  2B
  3B
  SS
  C
  P
  LF
  CF
  RF
]

astros = %w[
  Gurriel
  Altuve
  Bregman
  Correa
  Keuchel
  Beltran
  Springer
  Reddick
]

rangers = %w[
  Fielder
  Andrus
  Odor
  Beltre
  Lucroy
  Darvish
  Gomez
  Choo
  Mazara
]

def position_filter(headers, *data)
  headers.zip(*data)
end

position_filter(headers, astros, rangers)

describe 'Position Filter' do
  it 'Lines up player with their positions' do
    test_headers = %w[1B 2B P]
    test_team = ['First Base Player', 'Second Base Player', 'Pitcher']
    expect(position_filter(test_headers, test_team).first).to eq(['1B', 'First Base Player'])
  end
end
