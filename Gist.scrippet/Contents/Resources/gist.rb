require 'net/https'
require 'uri'

## ----------------------------------------

def add_snippet( data, index )
  if index && index > 0
    name    = ENV["GIST_SNIPPET_EXPORT_FILENAME_#{index}"]
    ext     = ENV["GIST_SNIPPET_EXTENTION_#{index}"]
    snippet = ENV["GIST_SNIPPET_SOURCE_CODE_#{index}"]
  else
    index   = 1
    name    = ENV['SNIPPET_EXPORT_FILENAME']
    ext     = ENV['SNIPPET_EXTENTION']
    snippet = ENV['SNIPPET_SOURCE_CODE']
  end
  data.merge({
    "file_ext[gistfile#{index}]"      => ext,
    "file_name[gistfile#{index}]"     => name,
    "file_contents[gistfile#{index}]" => snippet
  })
end

## ----------------------------------------

def upload( data )
  url              = URI.parse('https://gist.github.com/gists')
  login            = ENV['GIST_LOGIN']
  token            = ENV['GIST_API_TOKEN']
  prv              = ENV['GIST_IS_PRIVATE'] == '1'
  http             = Net::HTTP.new(url.host, url.port)
  http.use_ssl     = true
  http.verify_mode = OpenSSL::SSL::VERIFY_PEER
  req              = Net::HTTP::Post.new(url.path)
  if prv
    data = data.merge({ 'action_button' => 'private' })
  end
  if login && login != ''
    data = data.merge({
      :login => login,
      :token => token
    })
  end
  req.form_data = data
  http.start{ |h| h.request(req) }
end

## ----------------------------------------

count = ENV['GIST_SNIPPET_COUNT'].to_i()

if count > 0
  if count == ENV['GIST_SNIPPET_INDEX'].to_i()
    puts "Uploading #{count} snippets"
    data = {}
    i = 1
    while i <= count
      data = add_snippet(data, i)
      i += 1
    end
    res = upload(data)
  end
else
  name = ENV['SNIPPET_NAME']
  puts "Uploading: #{name}"
  res = upload(add_snippet({
    'description' => name
  }, 0))
end

if res
  snippet_url = res['Location']
  unless snippet_url
    if count
      name = "#{count} snippets"
    end
    raise "Failed to upload snippet: #{name}"
  else
    puts "Snippet is successfully uploaded at #{snippet_url}"
    ENV['GIST_SNIPPET_URL'] = snippet_url
  end
end
