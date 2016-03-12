require 'octokit'
require 'dotenv'
Dotenv.load
client = Octokit::Client.new(access_token: ENV['GITHUB_NOTIFICATION_TOKEN'])
list = client.notifications

if list.empty?
  puts 'None'
else
  puts "#{list.count}"
  puts "---"
  list.each do |e|
    puts e
  end
end

