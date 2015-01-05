Lita.configure do |config|
  config.robot.adapter = :slack
  config.adapters.slack.token = ENV['SLACK_TOKEN']
  config.robot.name = 'carl'
  config.robot.admins = ['U039BR581', 'U039BS2KD']
  config.robot.log_level = :info # :debug, :info, :warn, :error, :fatal

  config.redis[:url] = ENV['REDISTOGO_URL']
  config.http.port = ENV['PORT']
end
