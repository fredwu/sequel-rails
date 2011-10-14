# sequel-rails

This gem provides the railtie that allows [sequel](https://github.com/jeremyevans/sequel) to hook into [rails3](https://github.com/rails/rails) and thus behave like a rails framework component. Just like activerecord does in rails, [sequel-rails](https://github.com/fredwu/sequel-rails) uses the railtie API to hook into rails. The two are actually hooked into rails almost identically.

The code for this gem was initially taken from the excellent [dm-rails](https://github.com/datamapper/dm-rails) project.

## Using sequel-rails

Using sequel with rails3 requires a couple minor changes.

First, add the following to your Gemfile:

    gem 'fredwu-sequel-rails'

Be sure to run `bundle install` if needed!

Secondly, you'll need to require "sequel-rails/railtie" in your `config/application.rb` file, and not require "activerecord". The top of your config/application.rb will probably look something like:

    # require 'rails/all'

    # instead of 'rails/all', require these:
    require 'action_controller/railtie'
    require 'sequel-rails/railtie'
    require 'action_mailer/railtie'
    require 'active_resource/railtie'

After those changes, you should be good to go!


## Available sequel specific rake tasks

To get a list of all available rake tasks in your rails3 app, issue the usual

    rake -T

Once you do that, you will see the following rake tasks among others. These are the ones that sequel-rails added for us.

    rake db:create                # Create the database(s) defined in config/database.yml for the current Rails.env - also creates the test database(s) if Rails.env.development?
    rake db:create:all            # Create all the local databases defined in config/database.yml
    rake db:drop                  # Drops the database(s) for the current Rails.env - also drops the test database(s) if Rails.env.development?
    rake db:drop:all              # Drop all the local databases defined in config/database.yml
    rake db:migrate               # Migrate the database to the latest version
    rake db:migrate:down[version] # Migrate down using migrations
    rake db:migrate:up[version]   # Migrate up using migrations
    rake db:seed                  # Load the seed data from db/seeds.rb
    rake db:sessions:clear        # Clear the sessions table for SequelStore
    rake db:sessions:create       # Creates the sessions table for SequelStore
    rake db:setup                 # Create the database, load the schema, and initialize with the seed data


## TODOs

* Add tests


## Credits

The [dm-rails](https://github.com/datamapper/dm-rails) team wrote most of this code, I just sequel-ized it.


## Note on Patches/Pull Requests

* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a future version unintentionally.
* Commit, do not mess with rakefile, version, or history. (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.


## The sequel-rails team

* Brasten Sager (brasten)


## Fork Contributors

* [Fred Wu](https://github.com/fredwu)


## Copyright

* Copyright (c) 2009-2011 The sequel-rails team. See [LICENSE](https://github.com/brasten/sequel-rails/blob/master/LICENSE) for details.
* Copyright (c) 2011 The sequel-rails team. Fork released under the [MIT](http://www.opensource.org/licenses/mit-license.php) license.
