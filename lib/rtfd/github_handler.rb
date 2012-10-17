class Rtfd::GithubHandler
  def handle
    payload = JSON.parse(params[:payload])
    puts "I got some JSON from github: #{push.inspect}"
    repo = Rtfd.repos.find{|repo| repo.first==payload[:repository][:name] and 'refs/heads/master'==payload[:ref]}
    send repo[1]['with'], repo if repo
  end

  def pull repo
    puts "Pulling #{repo.first}"
    if Dir.exist?("repos/#{repo.first}")
      system "cd repos/#{repo.first}; git pull; yard doc;"
    else
      puts "Seems there is no repo, lets clone it!"
      clone repo
    end
  end

  def clone repo
    puts "Clonning #{repo.first}"
    system "cd repos; rm -rf #{repo.first}/; git clone #{repo[1]['uri']}; cd #{repo.first}; yard doc;"
  end
end