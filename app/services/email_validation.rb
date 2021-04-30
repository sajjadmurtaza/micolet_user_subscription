# frozen_string_literal: true

class EmailValidation
  def self.email_quality_score(email)
    uri = URI("https://emailvalidation.abstractapi.com/v1/?api_key=#{ENV['ABSTRACT_API_KEY']}&email=#{email}")

    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER
    request = Net::HTTP::Get.new(uri)

    JSON.parse(http.request(request).body)['quality_score']
  end
end
