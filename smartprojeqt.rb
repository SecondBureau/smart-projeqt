require 'rubygems'
require 'sinatra'
#require 'datamapper'
require 'net/http'
require 'uri'

def activate_daryl
  return unless request.env['HTTP_REFERER'].nil?
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

### New Relic
configure :production do
  require 'newrelic_rpm'
end

get '/en' do
  #activate_daryl
  redirect 'http://projeqt.com/secondbureau#lsi92876ci22621q'
end

get '/fr' do
  #active_daryl
  redirect 'http://projeqt.com/secondbureau#lsi92862ci22619q'
end

get '/cn' do
  #active_daryl
  redirect 'http://projeqt.com/secondbureau#lsi93363ci22762q'
end

get '/newrelic_secondbureau' do
  'ok Newrelic'
end

get %r{(.*)} do |c|
  #activate_daryl
  redirect "http://projeqt.com/secondbureau##{c}"
end



