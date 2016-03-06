## Requirements

* Ruby 1.8+
* Bundler gem
* MySQL 5+

## Running

### Installation

* [Install Ruby](https://www.ruby-lang.org/en/documentation/installation/)
* [Install Bundler](http://bundler.io/)
* [Install MySQL](http://dev.mysql.com/doc/refman/5.7/en/installing.html)
* Install the bundle: `bundle install`
* Create the `pv` database: `mysql -e "CREATE DATABASE pv"`

### Running

* Fetch your API key from [Strava](https://www.strava.com/settings/api) and replace the value in [fetch.rb](https://github.com/brooksdarg/pvstats/blob/master/fetch.rb#L11).
* Run `bundle exec fetch.rb`
