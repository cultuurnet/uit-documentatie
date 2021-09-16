# [UiT Documentatie](http://documentatie.uitdatabank.be) [![Build Status](https://github.com/cultuurnet/uit-documentatie/actions/workflows/ci.yml/badge.svg)](https://github.com/cultuurnet/uit-documentatie/actions?query=workflow%3ACI)

A Jekyll based site providing documentation for developers to get started using UiTDatabank.

## Contributing

Make sure you have at least Ruby 2.0 available, as Jekyll requires it.

* Clone this repo onto your system and navigate into it
* Install [Bundler](http://bundler.io/) if you don't have it installed yet: `gem install bundler`
* Run the command: `bundle install` from the project root to install the necessary ruby dependencies

You should now have a number of Rake tasks available:

* Listing the available tasks: `bundle exec rake`
* Building the Jekyll site: `bundle exec rake build`
* Serving the Jekyll site: `bundle exec rake serve`
* Testing link resolution: `bundle exec rake test`
* Testing the HTML: `bundle exec rake html_check`
* Removing all generated content: `bundle exec rake clobber`

You can safely start adding documentation in the `content` directory.
When you're ready, send a [pull request](https://help.github.com/articles/using-pull-requests/) to the original repo.
