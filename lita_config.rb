Lita.configure do |config|
  config.robot.adapter = :slack
  config.adapters.slack.token = ENV['SLACK_TOKEN']
  config.robot.admins = [
    'U039BR581',
    'U039BS2KD'
  ]

  # The severity of messages to log. Options are:
  # :debug, :info, :warn, :error, :fatal
  # Messages at the selected level and above will be logged.
  config.robot.log_level = :debug

  config.redis[:url] = ENV['REDISTOGO_URL']
  config.http.port = ENV['PORT']
end
