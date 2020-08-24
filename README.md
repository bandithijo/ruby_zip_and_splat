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

## Output

```
# => [
["1B", "Gurriel", "Fielder"],
["2B", "Altuve", "Andrus"],
["3B", "Bregman", "Odor"],
["SS", "Correa", "Beltre"],
["C", "Keuchel", "Lucroy"],
["P", "Beltran", "Darvish"],
["LF", "Springer", "Gomez"],
["CF", "Reddick", "Choo"],
["RF", nil, "Mazara"]
]
```

## Referensi

1. [apidock.com/ruby/Array/zip](https://apidock.com/ruby/Array/zip)

2. [Agung Setiawan - Ruby Splat Operator](https://agung-setiawan.com/ruby-splat-operator/)
