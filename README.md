Version 0.0.0_a

# Populmaid

Populmaid is a gem that intends to help you handling population of the database.

There are a couple of ways for handling the automatic population of the database, but handling database schema changes and keep the populations up to date, is sometimes difficult.

[To be continued ...]


## Installation

Add this line to your application's Gemfile:

    gem 'populmaid'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install populmaid

## Usage

  ### Setup Populmaid in your project:
    rails g populmaid:install

  This will create you a folder called populate under db/
  In this folder you should put all your population scripts.

  ### Generate a population:
    rails g populmaid:generate populateThisAwesomeTable

  This will generate a population file under db/populate
    db/populate/<timestamp>_populate_this_awesome_table.rb


## Contributing

1. Fork it ( http://github.com/<my-github-username>/populmaid/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
