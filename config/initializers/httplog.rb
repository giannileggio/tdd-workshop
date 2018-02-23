# frozen_string_literal: true

HttpLog.configure do |config|
  config.logger = Logger.new('log/http.log')
end
