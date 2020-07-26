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

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# | № | 0 | 1     | 2     | 3     | 4     | 5 | 6     | 7     | 8     | 9     | 10 | 11    | 12 |
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# | 1 | E | F     | F#/Gb | G     | G#/Ab | A | A#/Bb | B     | C     | C#/Db | D  | D#/Eb | E  |
# | 2 | B | C     | C#/Db | D     | D#/Eb | E | F     | F#/Gb | G     | G#/Ab | A  | A#/Bb | B  |
# | 3 | G | G#/Ab | A     | A#/Bb | B     | C | C#/Db | D     | D#/Eb | E     | F  | F#/Gb | G  |
# | 4 | D | D#/Eb | E     | F     | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C  | C#/Db | D  |
# | 5 | A | A#/Bb | B     | C     | C#/Db | D | D#/Eb | E     | F     | F#/Gb | G  | G#/Ab | A  |
# | 6 | E | F     | F#/Gb | G     | G#/Ab | A | A#/Bb | B     | C     | C#/Db | D  | D#/Eb | E  |
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
```

### Available tunings:

- standart
