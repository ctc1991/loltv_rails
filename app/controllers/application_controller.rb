require 'net/http'
require 'net/https'
require 'json'

class ApplicationController < ActionController::Base
	
  protect_from_forgery with: :exception

  def get(uri)
    uri = URI(uri)

    # Create client
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER

    # Create Request
    req =  Net::HTTP::Get.new(uri)

    # Fetch Request
    res = http.request(req)
    puts "Response HTTP Status Code: #{res.code}"
    puts "Response HTTP Response Body: #{res.body}"
    JSON.parse(res.body)
  rescue StandardError => e
    puts "HTTP Request failed (#{e.message})"
  end

end
