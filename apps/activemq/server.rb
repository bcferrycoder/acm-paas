require 'rubygems'
require 'sinatra'
require 'httparty'
require 'json'
require 'logger'

log = Logger.new(STDOUT)
log.level = Logger::DEBUG

$activemq_int_port = ENV['STACKATO_HARBOR_ACTIVEMQ_MESSAGE_SERVICE']
$stomp_int_port = ENV['STACKATO_HARBOR_ACTIVEMQ_STOMP_SERVICE']
$harbor_host = JSON.parse(ENV['VCAP_SERVICES'])['harbor'][0]['credentials']['ext_hostname']
$activemq_port = JSON.parse(ENV['VCAP_SERVICES'])['harbor'][0]['credentials']['port']
$stomp_port = JSON.parse(ENV['VCAP_SERVICES'])['harbor'][1]['credentials']['port']

get '/' do
  log.debug( "index")
  erb :index
end
get '/start' do
  log.debug( "start activemq")
  system 'apache-activemq-5.8.0/bin/activemq start xbean:file:///app/app/apache-activemq-5.8.0/conf/activemq-openwire-stomp.xml'
  "activemq started on #{$harbor_host}:#{$activemq_port} (stomp at #{$stomp_port})"
end

get '/stop' do
  system 'apache-activemq-5.8.0/bin/activemq stop'
  log.debug( "stop activemq")
  "activemq stopped"
end

get '/port' do
  log.debug( "return port")
  "activemq port #{$activemq_port}"
end


