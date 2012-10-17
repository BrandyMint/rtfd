require 'json'
class Rtfd::GithubHandler
  def handle params
    payload = JSON.parse(params[:payload])
    $stdout.puts "I got some JSON from github: #{payload.inspect}"
    repo = Rtfd.repos.find{|repo| repo.first==payload['repository']['name'] and 'refs/heads/master'==payload['ref']}
    update repo, payload if repo
  end

  def update repo, payload
    if payload['forced'] or !Dir.exist?("#{Rtfd.repos_path}/#{repo.first}")
      clone repo
    else
      pull repo
    end
  end

  def pull repo
    $stdout.puts "Pulling #{repo.first}"
    system "cd #{Rtfd.repos_path}/#{repo.first}; git pull; yard doc;"
  end

  def clone repo
    $stdout.puts "Clonning #{repo.first}"
    system "cd #{Rtfd.repos_path}; rm -rf #{repo.first}; git clone #{repo[1]}; cd #{repo.first}; yard doc;"
  end
end