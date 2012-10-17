module Rtfd
  def self.repos
    @repos ||= YAML::load(File.open('rtfd/repos.yml'))
  end
end

require "rtfd/yard"
require "rtfd/application"
require "rtfd/github_handler"
require "rtfd/version"