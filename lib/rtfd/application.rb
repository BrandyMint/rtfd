require "sinatra"
class Rtfd::Application < Sinatra::Base
  use YARD::Server::RackMiddleware, :libraries => Rtfd::Yard.libraries, :options => Rtfd::Yard.options
  post '/github_hook' do
    Rtfd::GithubHandler.new.handle params
  end
end