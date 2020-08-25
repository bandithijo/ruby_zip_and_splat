# Ruby Zip & Splat Demo

## Arrays

```ruby
headers = [
  '1B', '2B', '3B', 'SS', 'C',
  'P', 'LF', 'CF', 'RF'
]

astros = [
  'Gurriel', 'Altuve', 'Bregman', 'Correa', 'Gattis',
  'Keuchel', 'Beltran', 'Springer', 'Reddick'
]

rangers = [
  'Fielder', 'Andrus', 'Odor', 'Beltre', 'Lucroy',
  'Darvish', 'Gomez', 'Choo', 'Mazara'
]
```

## Method

```ruby
def position_filter(headers, *data)
  headers.zip(*data)
end
```

## Usage

```ruby
position_filter(headers, astros, rangers)
```

## Output

```ruby
# =>
[["1B", "Gurriel", "Fielder"],
 ["2B", "Altuve", "Andrus"],
 ["3B", "Bregman", "Odor"],
 ["SS", "Correa", "Beltre"],
 ["C", "Gattis", "Lucroy"],
 ["P", "Keuchel", "Darvish"],
 ["LF", "Beltran", "Gomez"],
 ["CF", "Springer", "Choo"],
 ["RF", "Reddick", "Mazara"]]
```

## Test using RSpec

```ruby
require 'rspec'

# ...
# ...

describe 'Position Filter' do
  it 'Lines up player with their positions' do
    test_headers = %w[1B 2B P]
    test_team = ['First Base Player', 'Second Base Player', 'Pitcher']
    expect(position_filter(test_headers, test_team).first).to eq(['1B', 'First Base Player'])
  end
end
```

## Output Test

```
.

Finished in 0.01045 seconds (files took 0.23261 seconds to load)
1 example, 0 failures
```

## Referensi

1. [apidock.com/ruby/Array/zip](https://apidock.com/ruby/Array/zip)

2. [Agung Setiawan - Ruby Splat Operator](https://agung-setiawan.com/ruby-splat-operator/)
