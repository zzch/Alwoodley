# -*- encoding : utf-8 -*-
require 'rufus-scheduler'

Rufus::Scheduler.new.every '30s' do
  uri = URI.parse('http://staging.lianqiubao.com/api/v1/managements/update_weather')
  http = Net::HTTP.new(uri.host, uri.port)
  request = Net::HTTP::Put.new(uri.request_uri)
end