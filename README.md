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

### Using from the console

```
bundle exec fretboard --draw-tuning standart
```

### Available tunings:

<details>
  <summary>Standart (standart)</summary>

  ```
  bundle exec fretboard --draw-tuning standart
  ```

  ```
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | № | 0 | 1     | 2     | 3     | 4     | 5 | 6     | 7     | 8     | 9     | 10 | 11    | 12 |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | 1 | E | F     | F#/Gb | G     | G#/Ab | A | A#/Bb | B     | C     | C#/Db | D  | D#/Eb | E  |
  | 2 | B | C     | C#/Db | D     | D#/Eb | E | F     | F#/Gb | G     | G#/Ab | A  | A#/Bb | B  |
  | 3 | G | G#/Ab | A     | A#/Bb | B     | C | C#/Db | D     | D#/Eb | E     | F  | F#/Gb | G  |
  | 4 | D | D#/Eb | E     | F     | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C  | C#/Db | D  |
  | 5 | A | A#/Bb | B     | C     | C#/Db | D | D#/Eb | E     | F     | F#/Gb | G  | G#/Ab | A  |
  | 6 | E | F     | F#/Gb | G     | G#/Ab | A | A#/Bb | B     | C     | C#/Db | D  | D#/Eb | E  |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  ```
</details>

<details>
  <summary>A Tuning (tuning_a)</summary>

  ```
  bundle exec fretboard --draw-tuning tuning_a
  ```

  ```
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | № | 0 | 1     | 2     | 3     | 4     | 5 | 6     | 7 | 8     | 9     | 10    | 11    | 12 |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | 1 | A | A#/Bb | B     | C     | C#/Db | D | D#/Eb | E | F     | F#/Gb | G     | G#/Ab | A  |
  | 2 | E | F     | F#/Gb | G     | G#/Ab | A | A#/Bb | B | C     | C#/Db | D     | D#/Eb | E  |
  | 3 | C | C#/Db | D     | D#/Eb | E     | F | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C  |
  | 4 | G | G#/Ab | A     | A#/Bb | B     | C | C#/Db | D | D#/Eb | E     | F     | F#/Gb | G  |
  | 5 | D | D#/Eb | E     | F     | F#/Gb | G | G#/Ab | A | A#/Bb | B     | C     | C#/Db | D  |
  | 6 | A | A#/Bb | B     | C     | C#/Db | D | D#/Eb | E | F     | F#/Gb | G     | G#/Ab | A  |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  ```
</details>

<details>
  <summary>Open A (open_a)</summary>

  ```
  bundle exec fretboard --draw-tuning open_a
  ```

  ```
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | № | 0     | 1     | 2     | 3 | 4     | 5     | 6     | 7     | 8 | 9     | 10 | 11    | 12    |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | 1 | E     | F     | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C | C#/Db | D  | D#/Eb | E     |
  | 2 | A     | A#/Bb | B     | C | C#/Db | D     | D#/Eb | E     | F | F#/Gb | G  | G#/Ab | A     |
  | 3 | E     | F     | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C | C#/Db | D  | D#/Eb | E     |
  | 4 | C#/Db | D     | D#/Eb | E | F     | F#/Gb | G     | G#/Ab | A | A#/Bb | B  | C     | C#/Db |
  | 5 | A     | A#/Bb | B     | C | C#/Db | D     | D#/Eb | E     | F | F#/Gb | G  | G#/Ab | A     |
  | 6 | E     | F     | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C | C#/Db | D  | D#/Eb | E     |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  ```
</details>

<details>
  <summary>Drop A (drop_a)</summary>

  ```
  bundle exec fretboard --draw-tuning drop_a
  ```

  ```
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | № | 0     | 1     | 2     | 3 | 4     | 5 | 6     | 7     | 8     | 9     | 10 | 11    | 12    |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | 1 | B     | C     | C#/Db | D | D#/Eb | E | F     | F#/Gb | G     | G#/Ab | A  | A#/Bb | B     |
  | 2 | F#/Gb | G     | G#/Ab | A | A#/Bb | B | C     | C#/Db | D     | D#/Eb | E  | F     | F#/Gb |
  | 3 | D     | D#/Eb | E     | F | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C  | C#/Db | D     |
  | 4 | A     | A#/Bb | B     | C | C#/Db | D | D#/Eb | E     | F     | F#/Gb | G  | G#/Ab | A     |
  | 5 | E     | F     | F#/Gb | G | G#/Ab | A | A#/Bb | B     | C     | C#/Db | D  | D#/Eb | E     |
  | 6 | A     | A#/Bb | B     | C | C#/Db | D | D#/Eb | E     | F     | F#/Gb | G  | G#/Ab | A     |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  ```
</details>

<details>
  <summary>Drop A# (drop_a_sharp)</summary>

  ```
  bundle exec fretboard --draw-tuning drop_a_sharp
  ```

  ```
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | № | 0     | 1     | 2 | 3     | 4 | 5     | 6     | 7     | 8     | 9 | 10    | 11    | 12    |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | 1 | C     | C#/Db | D | D#/Eb | E | F     | F#/Gb | G     | G#/Ab | A | A#/Bb | B     | C     |
  | 2 | G     | G#/Ab | A | A#/Bb | B | C     | C#/Db | D     | D#/Eb | E | F     | F#/Gb | G     |
  | 3 | D#/Eb | E     | F | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C | C#/Db | D     | D#/Eb |
  | 4 | A#/Bb | B     | C | C#/Db | D | D#/Eb | E     | F     | F#/Gb | G | G#/Ab | A     | A#/Bb |
  | 5 | F     | F#/Gb | G | G#/Ab | A | A#/Bb | B     | C     | C#/Db | D | D#/Eb | E     | F     |
  | 6 | A#/Bb | B     | C | C#/Db | D | D#/Eb | E     | F     | F#/Gb | G | G#/Ab | A     | A#/Bb |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  ```
</details>

<details>
  <summary>Drop Ab (drop_a_flat)</summary>

  ```
  bundle exec fretboard --draw-tuning drop_a_flat
  ```

  ```
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | № | 0     | 1     | 2     | 3     | 4 | 5     | 6 | 7     | 8     | 9     | 10    | 11 | 12    |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | 1 | A#/Bb | B     | C     | C#/Db | D | D#/Eb | E | F     | F#/Gb | G     | G#/Ab | A  | A#/Bb |
  | 2 | F     | F#/Gb | G     | G#/Ab | A | A#/Bb | B | C     | C#/Db | D     | D#/Eb | E  | F     |
  | 3 | C#/Db | D     | D#/Eb | E     | F | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C  | C#/Db |
  | 4 | G#/Ab | A     | A#/Bb | B     | C | C#/Db | D | D#/Eb | E     | F     | F#/Gb | G  | G#/Ab |
  | 5 | D#/Eb | E     | F     | F#/Gb | G | G#/Ab | A | A#/Bb | B     | C     | C#/Db | D  | D#/Eb |
  | 6 | G#/Ab | A     | A#/Bb | B     | C | C#/Db | D | D#/Eb | E     | F     | F#/Gb | G  | G#/Ab |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  ```
</details>

<details>
  <summary>B Tuning (tuning_b)</summary>

  ```
  bundle exec fretboard --draw-tuning tuning_b
  ```

  ```
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | № | 0     | 1     | 2     | 3 | 4     | 5 | 6     | 7     | 8     | 9     | 10 | 11    | 12    |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | 1 | B     | C     | C#/Db | D | D#/Eb | E | F     | F#/Gb | G     | G#/Ab | A  | A#/Bb | B     |
  | 2 | F#/Gb | G     | G#/Ab | A | A#/Bb | B | C     | C#/Db | D     | D#/Eb | E  | F     | F#/Gb |
  | 3 | D     | D#/Eb | E     | F | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C  | C#/Db | D     |
  | 4 | A     | A#/Bb | B     | C | C#/Db | D | D#/Eb | E     | F     | F#/Gb | G  | G#/Ab | A     |
  | 5 | E     | F     | F#/Gb | G | G#/Ab | A | A#/Bb | B     | C     | C#/Db | D  | D#/Eb | E     |
  | 6 | B     | C     | C#/Db | D | D#/Eb | E | F     | F#/Gb | G     | G#/Ab | A  | A#/Bb | B     |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  ```
</details>

<details>
  <summary>Open B (open_b)</summary>

  ```
  bundle exec fretboard --draw-tuning open_b
  ```

  ```
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | № | 0     | 1 | 2     | 3     | 4     | 5     | 6 | 7     | 8 | 9     | 10    | 11    | 12    |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | 1 | D#/Eb | E | F     | F#/Gb | G     | G#/Ab | A | A#/Bb | B | C     | C#/Db | D     | D#/Eb |
  | 2 | B     | C | C#/Db | D     | D#/Eb | E     | F | F#/Gb | G | G#/Ab | A     | A#/Bb | B     |
  | 3 | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C | C#/Db | D | D#/Eb | E     | F     | F#/Gb |
  | 4 | B     | C | C#/Db | D     | D#/Eb | E     | F | F#/Gb | G | G#/Ab | A     | A#/Bb | B     |
  | 5 | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C | C#/Db | D | D#/Eb | E     | F     | F#/Gb |
  | 6 | B     | C | C#/Db | D     | D#/Eb | E     | F | F#/Gb | G | G#/Ab | A     | A#/Bb | B     |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  ```
</details>

- Drop B (`drop_b`)
- Drop Bb (`drop_b_flat`)
- C Tuning (`tuning_c`)
- Open C (`open_c`)
- Drop C (`drop_c`)
- D Tuning (`tuning_d`)
- Open D (`open_d`)
- Open D Minor (`open_d_minor`)
- Drop D (`drop_d`)
- Double Drop D (`double_drop_d`)
- Modal D (`modal_d`)
- Open E (`open_e`)
- F Tuning (`tuning_f`)
- Open F (`open_f`)
- G Tuning (`tuning_g`)
- Open G (`open_g`)
- Open G Minor (`open_g_minor`)
- Drop G# (`drop_g_sharp`)
- Modal G (`modal_g`)
