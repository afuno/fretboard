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
# or
fretboard = Fretboard::Builder.standart
```

[Available tunings](#available-tunings)

Creating the fretboard data:

```ruby
fretboard.build
```

Get the created data:

```ruby
fretboard.data

# => {1=>{0=>"E", 1=>"F", 2=>"F#/Gb", 3=>"G", 4=>"G#/Ab", 5=>"A", 6=>"A#/Bb", 7=>"B", 8=>"C", 9=>"C#/Db", 10=>"D", 11=>"D#/Eb", 12=>"E"}, 2=>{0=>"B", 1=>"C", 2=>"C#/Db", 3=>"D", 4=>"D#/Eb", 5=>"E", 6=>"F", 7=>"F#/Gb", 8=>"G", 9=>"G#/Ab", 10=>"A", 11=>"A#/Bb", 12=>"B"}, 3=>{0=>"G", 1=>"G#/Ab", 2=>"A", 3=>"A#/Bb", 4=>"B", 5=>"C", 6=>"C#/Db", 7=>"D", 8=>"D#/Eb", 9=>"E", 10=>"F", 11=>"F#/Gb", 12=>"G"}, 4=>{0=>"D", 1=>"D#/Eb", 2=>"E", 3=>"F", 4=>"F#/Gb", 5=>"G", 6=>"G#/Ab", 7=>"A", 8=>"A#/Bb", 9=>"B", 10=>"C", 11=>"C#/Db", 12=>"D"}, 5=>{0=>"A", 1=>"A#/Bb", 2=>"B", 3=>"C", 4=>"C#/Db", 5=>"D", 6=>"D#/Eb", 7=>"E", 8=>"F", 9=>"F#/Gb", 10=>"G", 11=>"G#/Ab", 12=>"A"}, 6=>{0=>"E", 1=>"F", 2=>"F#/Gb", 3=>"G", 4=>"G#/Ab", 5=>"A", 6=>"A#/Bb", 7=>"B", 8=>"C", 9=>"C#/Db", 10=>"D", 11=>"D#/Eb", 12=>"E"}}
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

- Standart (`standart`)
- Drop D (`drop_d`)
