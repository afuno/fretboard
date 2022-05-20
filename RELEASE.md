```shell
gem build fretboard.gemspec

gem push fretboard-1.4.1.gem

gem push --key github --host https://rubygems.pkg.github.com/afuno fretboard-1.4.1.gem
```
