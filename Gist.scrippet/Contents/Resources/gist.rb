require 'net/https'
require 'uri'

url         = URI.parse('https://gist.github.com/gists')
name        = ENV['SNIPPET_EXPORT_FILENAME']
ext         = ENV['SNIPPET_EXTENTION']
description = ENV['SNIPPET_NAME']
login       = ENV['GIST_LOGIN']
token       = ENV['GIST_API_TOKEN']
prv         = ENV['GIST_IS_PRIVATE'] == '1'
snippet     = ENV['SNIPPET_SOURCE_CODE']

puts "Uploading: #{name}"

http             = Net::HTTP.new(url.host, url.port)
http.use_ssl     = true
http.verify_mode = OpenSSL::SSL::VERIFY_PEER
req              = Net::HTTP::Post.new(url.path)
data = {
  'description' => description,
  'file_ext[gistfile1]' => ext,
  'file_name[gistfile1]' => name,
  'file_contents[gistfile1]' => snippet
}

if prv
  data = data.merge({ 'action_button' => 'private' })
end

if login != ''
  data = data.merge({
    :login => login,
    :token => token
  })
end

req.form_data = data
snippet_url   = http.start{|h| h.request(req) }['Location']

unless snippet_url
  raise "Failed to upload snippet: " << name
end

puts "Snippet is successfully uploaded at #{snippet_url}"

ENV['GIST_SNIPPET_URL'] = snippet_url