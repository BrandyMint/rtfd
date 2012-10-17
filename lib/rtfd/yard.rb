require "yard"
module Rtfd::Yard
  def self.libraries
    libraries = {}
    Rtfd.repos.each do |repo|
      name = repo[0]
      libraries[name] = [YARD::Server::LibraryVersion.new(name, nil, "#{Rtfd.repos_path}/#{name}/.yardoc")]
    end
    libraries
  end

  def self.options
    {incremental:true}
  end
end