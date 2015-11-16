# -*- encoding : utf-8 -*-
require 'rufus-scheduler'

scheduler = Rufus::Scheduler.new

scheduler.every '5m' do
  uri = URI.parse('http://staging.lianqiubao.com/api/v1/managements/update_weather')
  http = Net::HTTP.new(uri.host, uri.port)
  request = Net::HTTP::Put.new(uri.request_uri)
  response = http.request(request)
  json = JSON.parse(response.body)
  SchedulerLog.create!(result: json)
end