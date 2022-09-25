# Bob's Burgers Character Wiki

This is a simple Ruby CLI application that can be used to find out details on the Bob's Burgers TV show characters. This CLI is built using the Bob's Burgers API which you cna check out at https://bobsburgers-api.herokuapp.com/.

The app has a list of characters that when selecting a character id, will display details on that character such as:
  -name
  -gender
  -hair color
  -occupation
  -first episode
  -voiced by
  -link to the character on the bob's burgers fandom wiki

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add bobsburgers_cli

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install bobsburgers_cli

## Usage

Open your terminal and navigate tp the projects base diectory. Run ruby bin/bobsburgers_characters.rb in your terminal.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mischkab/bobsburgers_cli. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/mischkab/bobsburgers_cli/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Test::App project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/mischkab/bobsburgers_cli/blob/main/CODE_OF_CONDUCT.md).
