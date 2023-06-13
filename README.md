# Fretboard

Tools for working with the guitar fretboard.

[Documentation](https://www.rubydoc.info/gems/fretboard)

## Installation

```ruby
gem "fretboard"
```

## Using

### Creates a fretboard with the specified tuning

```ruby
fretboard = Fretboard::Builder.new(:standard)
# or
fretboard = Fretboard::Builder.standard
```

[Supported guitar tunings](#supported-guitar-tunings)

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

#### Drawing the fretboard

```
bundle exec fretboard --draw-tuning standard
```

<details>
  <summary>Result</summary>

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

#### Getting a list of supported guitar tunings

```
bundle exec fretboard --draw-tuning standard
```

<details>
  <summary>Result</summary>

  ```
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | Tuning        | Notes                                |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | STANDARD      | E, B, G, D, A, E                     |
  | TUNING_A      | A, E, C, G, D, A                     |
  | OPEN_A        | E, A, E, C#/Db, A, E                 |
  | DROP_A        | B, F#/Gb, D, A, E, A                 |
  | DROP_A_SHARP  | C, G, D#/Eb, A#/Bb, F, A#/Bb         |
  | DROP_A_FLAT   | A#/Bb, F, C#/Db, G#/Ab, D#/Eb, G#/Ab |
  | TUNING_B      | B, F#/Gb, D, A, E, B                 |
  | OPEN_B        | D#/Eb, B, F#/Gb, B, F#/Gb, B         |
  | DROP_B        | C#/Db, G#/Ab, E, B, F#/Gb, B         |
  | DROP_B_FLAT   | C, G, D#/Eb, A#/Bb, F, A#/Bb         |
  | TUNING_C      | C, G, D#/Eb, A#/Bb, F, C             |
  | OPEN_C        | E, C, G, C, G, C                     |
  | DROP_C        | D, A, F, C, G, C                     |
  | TUNING_D      | D, A, F, C, G, D                     |
  | OPEN_D        | D, A, F#/Gb, D, A, D                 |
  | OPEN_D_MINOR  | D, A, F, D, A, D                     |
  | DROP_D        | E, B, G, D, A, D                     |
  | DOUBLE_DROP_D | D, B, G, D, A, D                     |
  | MODAL_D       | D, A, G, D, A, D                     |
  | OPEN_E        | E, B, G#/Ab, E, B, E                 |
  | TUNING_F      | F, C, G#/Ab, D#/Eb, A#/Bb, F         |
  | TUNING_G      | G, D, A#/Bb, F, C, G                 |
  | OPEN_F        | F, C, F, C, A, F                     |
  | OPEN_G        | D, B, G, D, G, D                     |
  | OPEN_G_MINOR  | D, A#/Bb, G, D, G, D                 |
  | DROP_G_SHARP  | A#/Bb, F, C#/Db, G#/Ab, D#/Eb, G#/Ab |
  | MODAL_G       | D, C, G, D, G, D                     |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  ```
</details>

## Supported guitar tunings

<details>
  <summary>Standard (standard)</summary>

  ```
  bundle exec fretboard --draw-tuning standard
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

<details>
  <summary>Drop B (drop_b)</summary>

  ```
  bundle exec fretboard --draw-tuning drop_b
  ```

  ```
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | № | 0     | 1 | 2     | 3 | 4     | 5     | 6     | 7     | 8 | 9     | 10    | 11    | 12    |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | 1 | C#/Db | D | D#/Eb | E | F     | F#/Gb | G     | G#/Ab | A | A#/Bb | B     | C     | C#/Db |
  | 2 | G#/Ab | A | A#/Bb | B | C     | C#/Db | D     | D#/Eb | E | F     | F#/Gb | G     | G#/Ab |
  | 3 | E     | F | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C | C#/Db | D     | D#/Eb | E     |
  | 4 | B     | C | C#/Db | D | D#/Eb | E     | F     | F#/Gb | G | G#/Ab | A     | A#/Bb | B     |
  | 5 | F#/Gb | G | G#/Ab | A | A#/Bb | B     | C     | C#/Db | D | D#/Eb | E     | F     | F#/Gb |
  | 6 | B     | C | C#/Db | D | D#/Eb | E     | F     | F#/Gb | G | G#/Ab | A     | A#/Bb | B     |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  ```
</details>

<details>
  <summary>Drop Bb (drop_b_flat)</summary>

  ```
  bundle exec fretboard --draw-tuning drop_b_flat
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
  <summary>C Tuning (tuning_c)</summary>

  ```
  bundle exec fretboard --draw-tuning tuning_c
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
  | 6 | C     | C#/Db | D | D#/Eb | E | F     | F#/Gb | G     | G#/Ab | A | A#/Bb | B     | C     |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  ```
</details>

<details>
  <summary>Open C (open_c)</summary>

  ```
  bundle exec fretboard --draw-tuning open_c
  ```

  ```
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | № | 0 | 1     | 2     | 3     | 4     | 5 | 6     | 7 | 8     | 9     | 10    | 11    | 12 |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | 1 | E | F     | F#/Gb | G     | G#/Ab | A | A#/Bb | B | C     | C#/Db | D     | D#/Eb | E  |
  | 2 | C | C#/Db | D     | D#/Eb | E     | F | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C  |
  | 3 | G | G#/Ab | A     | A#/Bb | B     | C | C#/Db | D | D#/Eb | E     | F     | F#/Gb | G  |
  | 4 | C | C#/Db | D     | D#/Eb | E     | F | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C  |
  | 5 | G | G#/Ab | A     | A#/Bb | B     | C | C#/Db | D | D#/Eb | E     | F     | F#/Gb | G  |
  | 6 | C | C#/Db | D     | D#/Eb | E     | F | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C  |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  ```
</details>

<details>
  <summary>Drop C (drop_c)</summary>

  ```
  bundle exec fretboard --draw-tuning drop_c
  ```

  ```
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | № | 0 | 1     | 2 | 3     | 4     | 5     | 6     | 7 | 8     | 9     | 10    | 11    | 12 |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | 1 | D | D#/Eb | E | F     | F#/Gb | G     | G#/Ab | A | A#/Bb | B     | C     | C#/Db | D  |
  | 2 | A | A#/Bb | B | C     | C#/Db | D     | D#/Eb | E | F     | F#/Gb | G     | G#/Ab | A  |
  | 3 | F | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C | C#/Db | D     | D#/Eb | E     | F  |
  | 4 | C | C#/Db | D | D#/Eb | E     | F     | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C  |
  | 5 | G | G#/Ab | A | A#/Bb | B     | C     | C#/Db | D | D#/Eb | E     | F     | F#/Gb | G  |
  | 6 | C | C#/Db | D | D#/Eb | E     | F     | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C  |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  ```
</details>

<details>
  <summary>D Tuning (tuning_d)</summary>

  ```
  bundle exec fretboard --draw-tuning tuning_d
  ```

  ```
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | № | 0 | 1     | 2 | 3     | 4     | 5     | 6     | 7 | 8     | 9     | 10    | 11    | 12 |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | 1 | D | D#/Eb | E | F     | F#/Gb | G     | G#/Ab | A | A#/Bb | B     | C     | C#/Db | D  |
  | 2 | A | A#/Bb | B | C     | C#/Db | D     | D#/Eb | E | F     | F#/Gb | G     | G#/Ab | A  |
  | 3 | F | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C | C#/Db | D     | D#/Eb | E     | F  |
  | 4 | C | C#/Db | D | D#/Eb | E     | F     | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C  |
  | 5 | G | G#/Ab | A | A#/Bb | B     | C     | C#/Db | D | D#/Eb | E     | F     | F#/Gb | G  |
  | 6 | D | D#/Eb | E | F     | F#/Gb | G     | G#/Ab | A | A#/Bb | B     | C     | C#/Db | D  |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  ```
</details>

<details>
  <summary>Open D (open_d)</summary>

  ```
  bundle exec fretboard --draw-tuning open_d
  ```

  ```
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | № | 0     | 1     | 2     | 3 | 4     | 5 | 6     | 7     | 8     | 9     | 10 | 11    | 12    |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | 1 | D     | D#/Eb | E     | F | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C  | C#/Db | D     |
  | 2 | A     | A#/Bb | B     | C | C#/Db | D | D#/Eb | E     | F     | F#/Gb | G  | G#/Ab | A     |
  | 3 | F#/Gb | G     | G#/Ab | A | A#/Bb | B | C     | C#/Db | D     | D#/Eb | E  | F     | F#/Gb |
  | 4 | D     | D#/Eb | E     | F | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C  | C#/Db | D     |
  | 5 | A     | A#/Bb | B     | C | C#/Db | D | D#/Eb | E     | F     | F#/Gb | G  | G#/Ab | A     |
  | 6 | D     | D#/Eb | E     | F | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C  | C#/Db | D     |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  ```
</details>

<details>
  <summary>Open D Minor (open_d_minor)</summary>

  ```
  bundle exec fretboard --draw-tuning open_d_minor
  ```

  ```
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | № | 0 | 1     | 2 | 3     | 4     | 5     | 6     | 7 | 8     | 9     | 10    | 11    | 12 |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | 1 | D | D#/Eb | E | F     | F#/Gb | G     | G#/Ab | A | A#/Bb | B     | C     | C#/Db | D  |
  | 2 | A | A#/Bb | B | C     | C#/Db | D     | D#/Eb | E | F     | F#/Gb | G     | G#/Ab | A  |
  | 3 | F | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C | C#/Db | D     | D#/Eb | E     | F  |
  | 4 | D | D#/Eb | E | F     | F#/Gb | G     | G#/Ab | A | A#/Bb | B     | C     | C#/Db | D  |
  | 5 | A | A#/Bb | B | C     | C#/Db | D     | D#/Eb | E | F     | F#/Gb | G     | G#/Ab | A  |
  | 6 | D | D#/Eb | E | F     | F#/Gb | G     | G#/Ab | A | A#/Bb | B     | C     | C#/Db | D  |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  ```
</details>

<details>
  <summary>Drop D (drop_d)</summary>

  ```
  bundle exec fretboard --draw-tuning drop_d
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
  | 6 | D | D#/Eb | E     | F     | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C  | C#/Db | D  |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  ```
</details>

<details>
  <summary>Double Drop D (double_drop_d)</summary>

  ```
  bundle exec fretboard --draw-tuning double_drop_d
  ```

  ```
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | № | 0 | 1     | 2     | 3     | 4     | 5 | 6     | 7     | 8     | 9     | 10 | 11    | 12 |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | 1 | D | D#/Eb | E     | F     | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C  | C#/Db | D  |
  | 2 | B | C     | C#/Db | D     | D#/Eb | E | F     | F#/Gb | G     | G#/Ab | A  | A#/Bb | B  |
  | 3 | G | G#/Ab | A     | A#/Bb | B     | C | C#/Db | D     | D#/Eb | E     | F  | F#/Gb | G  |
  | 4 | D | D#/Eb | E     | F     | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C  | C#/Db | D  |
  | 5 | A | A#/Bb | B     | C     | C#/Db | D | D#/Eb | E     | F     | F#/Gb | G  | G#/Ab | A  |
  | 6 | D | D#/Eb | E     | F     | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C  | C#/Db | D  |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  ```
</details>

<details>
  <summary>Modal D (modal_d)</summary>

  ```
  bundle exec fretboard --draw-tuning modal_d
  ```

  ```
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | № | 0 | 1     | 2 | 3     | 4     | 5 | 6     | 7 | 8     | 9     | 10 | 11    | 12 |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | 1 | D | D#/Eb | E | F     | F#/Gb | G | G#/Ab | A | A#/Bb | B     | C  | C#/Db | D  |
  | 2 | A | A#/Bb | B | C     | C#/Db | D | D#/Eb | E | F     | F#/Gb | G  | G#/Ab | A  |
  | 3 | G | G#/Ab | A | A#/Bb | B     | C | C#/Db | D | D#/Eb | E     | F  | F#/Gb | G  |
  | 4 | D | D#/Eb | E | F     | F#/Gb | G | G#/Ab | A | A#/Bb | B     | C  | C#/Db | D  |
  | 5 | A | A#/Bb | B | C     | C#/Db | D | D#/Eb | E | F     | F#/Gb | G  | G#/Ab | A  |
  | 6 | D | D#/Eb | E | F     | F#/Gb | G | G#/Ab | A | A#/Bb | B     | C  | C#/Db | D  |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  ```
</details>

<details>
  <summary>Open E (open_e)</summary>

  ```
  bundle exec fretboard --draw-tuning open_e
  ```

  ```
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | № | 0     | 1 | 2     | 3 | 4     | 5     | 6     | 7     | 8 | 9     | 10    | 11    | 12    |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | 1 | E     | F | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C | C#/Db | D     | D#/Eb | E     |
  | 2 | B     | C | C#/Db | D | D#/Eb | E     | F     | F#/Gb | G | G#/Ab | A     | A#/Bb | B     |
  | 3 | G#/Ab | A | A#/Bb | B | C     | C#/Db | D     | D#/Eb | E | F     | F#/Gb | G     | G#/Ab |
  | 4 | E     | F | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C | C#/Db | D     | D#/Eb | E     |
  | 5 | B     | C | C#/Db | D | D#/Eb | E     | F     | F#/Gb | G | G#/Ab | A     | A#/Bb | B     |
  | 6 | E     | F | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C | C#/Db | D     | D#/Eb | E     |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  ```
</details>

<details>
  <summary>F Tuning (tuning_f)</summary>

  ```
  bundle exec fretboard --draw-tuning tuning_f
  ```

  ```
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | № | 0     | 1     | 2     | 3     | 4 | 5     | 6     | 7     | 8     | 9 | 10    | 11 | 12    |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | 1 | F     | F#/Gb | G     | G#/Ab | A | A#/Bb | B     | C     | C#/Db | D | D#/Eb | E  | F     |
  | 2 | C     | C#/Db | D     | D#/Eb | E | F     | F#/Gb | G     | G#/Ab | A | A#/Bb | B  | C     |
  | 3 | G#/Ab | A     | A#/Bb | B     | C | C#/Db | D     | D#/Eb | E     | F | F#/Gb | G  | G#/Ab |
  | 4 | D#/Eb | E     | F     | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C | C#/Db | D  | D#/Eb |
  | 5 | A#/Bb | B     | C     | C#/Db | D | D#/Eb | E     | F     | F#/Gb | G | G#/Ab | A  | A#/Bb |
  | 6 | F     | F#/Gb | G     | G#/Ab | A | A#/Bb | B     | C     | C#/Db | D | D#/Eb | E  | F     |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  ```
</details>

<details>
  <summary>Open F (open_f)</summary>

  ```
  bundle exec fretboard --draw-tuning open_f
  ```

  ```
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | № | 0 | 1     | 2 | 3     | 4     | 5     | 6     | 7 | 8     | 9     | 10    | 11    | 12 |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | 1 | F | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C | C#/Db | D     | D#/Eb | E     | F  |
  | 2 | C | C#/Db | D | D#/Eb | E     | F     | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C  |
  | 3 | F | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C | C#/Db | D     | D#/Eb | E     | F  |
  | 4 | C | C#/Db | D | D#/Eb | E     | F     | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C  |
  | 5 | A | A#/Bb | B | C     | C#/Db | D     | D#/Eb | E | F     | F#/Gb | G     | G#/Ab | A  |
  | 6 | F | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C | C#/Db | D     | D#/Eb | E     | F  |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  ```
</details>

<details>
  <summary>G Tuning (tuning_g)</summary>

  ```
  bundle exec fretboard --draw-tuning tuning_g
  ```

  ```
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | № | 0     | 1     | 2 | 3     | 4     | 5     | 6     | 7 | 8     | 9 | 10    | 11    | 12    |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | 1 | G     | G#/Ab | A | A#/Bb | B     | C     | C#/Db | D | D#/Eb | E | F     | F#/Gb | G     |
  | 2 | D     | D#/Eb | E | F     | F#/Gb | G     | G#/Ab | A | A#/Bb | B | C     | C#/Db | D     |
  | 3 | A#/Bb | B     | C | C#/Db | D     | D#/Eb | E     | F | F#/Gb | G | G#/Ab | A     | A#/Bb |
  | 4 | F     | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C | C#/Db | D | D#/Eb | E     | F     |
  | 5 | C     | C#/Db | D | D#/Eb | E     | F     | F#/Gb | G | G#/Ab | A | A#/Bb | B     | C     |
  | 6 | G     | G#/Ab | A | A#/Bb | B     | C     | C#/Db | D | D#/Eb | E | F     | F#/Gb | G     |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  ```
</details>

<details>
  <summary>Open G (open_g)</summary>

  ```
  bundle exec fretboard --draw-tuning open_g
  ```

  ```
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | № | 0 | 1     | 2     | 3     | 4     | 5 | 6     | 7     | 8     | 9     | 10 | 11    | 12 |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | 1 | D | D#/Eb | E     | F     | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C  | C#/Db | D  |
  | 2 | B | C     | C#/Db | D     | D#/Eb | E | F     | F#/Gb | G     | G#/Ab | A  | A#/Bb | B  |
  | 3 | G | G#/Ab | A     | A#/Bb | B     | C | C#/Db | D     | D#/Eb | E     | F  | F#/Gb | G  |
  | 4 | D | D#/Eb | E     | F     | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C  | C#/Db | D  |
  | 5 | G | G#/Ab | A     | A#/Bb | B     | C | C#/Db | D     | D#/Eb | E     | F  | F#/Gb | G  |
  | 6 | D | D#/Eb | E     | F     | F#/Gb | G | G#/Ab | A     | A#/Bb | B     | C  | C#/Db | D  |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  ```
</details>

<details>
  <summary>Open G Minor (open_g_minor)</summary>

  ```
  bundle exec fretboard --draw-tuning open_g_minor
  ```

  ```
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | № | 0     | 1     | 2 | 3     | 4     | 5     | 6     | 7 | 8     | 9 | 10    | 11    | 12    |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | 1 | D     | D#/Eb | E | F     | F#/Gb | G     | G#/Ab | A | A#/Bb | B | C     | C#/Db | D     |
  | 2 | A#/Bb | B     | C | C#/Db | D     | D#/Eb | E     | F | F#/Gb | G | G#/Ab | A     | A#/Bb |
  | 3 | G     | G#/Ab | A | A#/Bb | B     | C     | C#/Db | D | D#/Eb | E | F     | F#/Gb | G     |
  | 4 | D     | D#/Eb | E | F     | F#/Gb | G     | G#/Ab | A | A#/Bb | B | C     | C#/Db | D     |
  | 5 | G     | G#/Ab | A | A#/Bb | B     | C     | C#/Db | D | D#/Eb | E | F     | F#/Gb | G     |
  | 6 | D     | D#/Eb | E | F     | F#/Gb | G     | G#/Ab | A | A#/Bb | B | C     | C#/Db | D     |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  ```
</details>

<details>
  <summary>Drop G# (drop_g_sharp)</summary>

  ```
  bundle exec fretboard --draw-tuning drop_g_sharp
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
  <summary>Modal G (modal_g)</summary>

  ```
  bundle exec fretboard --draw-tuning modal_g
  ```

  ```
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | № | 0 | 1     | 2 | 3     | 4     | 5 | 6     | 7 | 8     | 9 | 10    | 11    | 12 |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  | 1 | D | D#/Eb | E | F     | F#/Gb | G | G#/Ab | A | A#/Bb | B | C     | C#/Db | D  |
  | 2 | C | C#/Db | D | D#/Eb | E     | F | F#/Gb | G | G#/Ab | A | A#/Bb | B     | C  |
  | 3 | G | G#/Ab | A | A#/Bb | B     | C | C#/Db | D | D#/Eb | E | F     | F#/Gb | G  |
  | 4 | D | D#/Eb | E | F     | F#/Gb | G | G#/Ab | A | A#/Bb | B | C     | C#/Db | D  |
  | 5 | G | G#/Ab | A | A#/Bb | B     | C | C#/Db | D | D#/Eb | E | F     | F#/Gb | G  |
  | 6 | D | D#/Eb | E | F     | F#/Gb | G | G#/Ab | A | A#/Bb | B | C     | C#/Db | D  |
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  ```
</details>
