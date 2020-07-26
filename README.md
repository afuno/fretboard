# Fretboard for Guitar

Tools for working with the guitar fretboard.

![Demo](https://raw.githubusercontent.com/afuno/fretboard/dev/images/demo1.png)

[Documentation](https://www.rubydoc.info/gems/fretboard)

## Installation

```ruby
gem 'fretboard'
```

## Using

### Creates a fretboard with the specified tuning

```ruby
fretboard = Fretboard::Builder.new(:standart)
# or
fretboard = Fretboard::Builder.standart
```

Creating the fretboard data:

```ruby
fretboard.build
```

Get the created data:

```ruby
fretboard.data
```

Drawing the fretboard in the console:

```ruby
fretboard.draw
```

### Available tunings:

- standart
