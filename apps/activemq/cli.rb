#!/usr/bin/env ruby

require 'HTTParty'

response = HTTParty.get('http://localhost:8080/camel/current')

#puts response.body, response.code, response.message, response.headers.inspect

puts response.body
