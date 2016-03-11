require 'octokit'
client = Octokit::Client.new(access_token: ENV['GITHUB_NOTIFICATION_TOKEN'])
list = client.notifications

if list.empty?
  puts 'None'
  exit 0
end

puts "#{list.count}"
puts "---"
list.each do |e|
  puts e
end
