require 'rubygems'
require 'sinatra'
#require 'datamapper'
require 'net/http'
require 'uri'

class Daryl
def self.activate_daryl(request)
  puts "Request nil" if request.nil?
  return unless request.nil? || request.env['HTTP_REFERER'].nil?
  daryl = ENV['DARYL'] || 'daryl.2bu.ro'
  url = "http://#{daryl}/page/create"
  agent = request.env["HTTP_USER_AGENT"]
  host = request.host
  uri = request.fullpath
  ip = request.env['HTTP_X_REAL_IP']
  #logger.warn(request.env.inspect)
  Thread.new do
    Net::HTTP.post_form(URI.parse(url), {'page[ip]'=>ip, 'page[host]'=>host, 'page[agent]' => agent, 'page[uri]' => uri})
  end
end
end

### New Relic
configure :production do
  require 'newrelic_rpm'
end

get '/en' do
  Daryl.activate_daryl request
  redirect 'http://projeqt.com/secondbureau#fsi92876ci22621q'
end

get '/fr' do
  Daryl.activate_daryl request
  redirect 'http://projeqt.com/secondbureau#fsi92862ci22619q'
end

get '/cn' do
  Daryl.activate_daryl request
  redirect 'http://projeqt.com/secondbureau#fsi93363ci22762q'
end

get '/newrelic_secondbureau' do
  'ok Newrelic'
end

get %r{(.*)} do |c|
  Daryl.activate_daryl request
  redirect "http://projeqt.com/secondbureau##{c}"
end



