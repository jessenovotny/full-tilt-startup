desc "Pings PING_URL to keep dyno alive"
task :dyno_ping do
  require "net/http"

  if ENV['PING_URL']
    uri = URI(ENV['PING_URL'])
    print('PING SUCCESS') if Net::HTTP.get_response(uri)
  else
  	print('NO PING_URL')
  end
end
