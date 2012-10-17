module Rtfd
  def self.repos_path
    @repos_path ||= self.load_settings[0]
  end

  def self.repos
    @repos ||= self.load_settings[1]
  end

  def self.load_settings
    settings = YAML::load(File.open('config/rtfd/repos.yml'))
    @repos_path = File.absolute_path(settings['repos_path'])
    @repos = settings['repos']
    [@repos_path, @repos]
  end
end

require "rtfd/github_handler"
require "rtfd/yard"
require "rtfd/application"
require "rtfd/version"