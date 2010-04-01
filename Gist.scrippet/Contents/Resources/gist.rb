require 'rexml/document'
require 'net/http'
require 'uri'

url = URI.parse('http://gist.github.com/api/v1/xml/new')


name = ENV['SNIPPET_NAME']
puts "Uploading: #{name}"

snippet = ENV['SNIPPET_SOURCE_CODE']

response = Net::HTTP.post_form(url, 'files[file1.ab]' => snippet)

doc = REXML::Document.new(response.body)
gist = REXML::XPath.first(doc, "/gists/gist/repo/text()")

snippet_url = "http://gist.github.com/#{gist}"
puts "Snippet is successfully uploaded at #{snippet_url}"

ENV['GIST_SNIPPET_URL'] = snippet_url