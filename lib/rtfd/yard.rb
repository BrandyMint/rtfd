require "yard"
module Rtfd::Yard
  def self.libraries
    libraries = {}
    Rtfd.repos.each do |name, params|
      libraries[name] = [YARD::Server::LibraryVersion.new(name, nil, "repos/#{name}/.yardoc")]
    end
    libraries
  end

  def self.options
    {}
  end
end