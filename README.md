# Rtfd

Rdft is a Sinatra application which serves github Post-Receive Hooks, updating repositores and shows documentation for it with yard. Rtfd is provided as Rack application.

## Installation

Add this line to your application's Gemfile:

    gem 'rtfd'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rtfd

## Usage

We expect you make config file: /config/rtfd/repos.yml

The simple example of this file

    repos_path: repos
    repos:
      sinatra: git://github.com/sinatra/sinatra.git
      yard: git://github.com/lsegal/yard.git

Go to your github repository admin page, click Service Hooks menu item and add "your_domain.com/github_hook" to webhook urls.

You can use Rtfd::Application in you application now!

Check Simple demo application that uses rtfd: https://github.com/BrandyMint/rtfd_demo_app

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
