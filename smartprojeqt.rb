require 'rubygems'
require 'sinatra'
#require 'datamapper'

get '/en' do
  redirect 'http://projeqt.com/secondbureau#lsi0ci22621q' 
end

get '/fr' do
  redirect 'http://projeqt.com/secondbureau#lsi0ci22621q' 
end

get 'newrelic_secondbureau' do
  'ok Newrelic'
end

get %r{(.*)} do |c| 
  redirect "http://projeqt.com/secondbureau##{c}"
end

