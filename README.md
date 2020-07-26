# Fretboard for Guitar

Tools for working with the guitar fretboard.

[Documentation](https://www.rubydoc.info/gems/fretboard)

## Installation

```ruby
gem 'fretboard'
```

## Using

### Creates a fretboard with the specified tuning

```ruby
fretboard = Fretboard::Builder.new(:standart)
```

Creating the fretboard data:

```ruby
fretboard.build
```

Drawing the fretboard in the console:

```ruby
fretboard.draw
```

### Available tunings:

- standart
