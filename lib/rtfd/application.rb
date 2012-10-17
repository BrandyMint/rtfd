require "sinatra"
class Rtfd::Application < Sinatra::Base
  use YARD::Server::RackMiddleware, :libraries => Rtfd::Yard.libraries, :options=> Rtfd::Yard.options
  post '/git_hook' do
    Rtfd::GithubHandler.new.handle
  end

  get '/reload' do
    Rtfd::TestHandler.new.handle
  end
end