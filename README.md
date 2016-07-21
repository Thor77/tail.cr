# tail.cr

A tail-implementation in crystal.

## Installation


Add this to your application's `shard.yml`:

```yaml
dependencies:
  tail:
    github: Thor77/tail.cr
```

## Usage

```crystal
require "tail"

Tail.tail "/path/to/target/file" do |new_lines|
  puts new_lines
end
```

## Contributing

1. Fork it ( https://github.com/Thor77/tail.cr/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [Thor77](https://github.com/Thor77) Thor77 - creator, maintainer
