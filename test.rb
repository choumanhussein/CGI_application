require 'webrick'

server = WEBrick::HTTPServer.new({
  :DocumentRoot => '.',
  :CGIInterpreter => WEBrick::HTTPServlet::CGIHandler::Ruby,
  :Port => '3000',
})
['INT', 'TERM'].each {|signal|
  Signal.trap(signal){ server.shutdown }
}

server.mount('/', WEBrick::HTTPServlet::ERBHandler, 'test.html.erb')

server.mount('/indicate.cgi', WEBrick::HTTPServlet::CGIHandler, 'indicate.rb')

# Add this line
server.mount('/goya.cgi', WEBrick::HTTPServlet::CGIHandler, 'goya.rb')
#path for the server to get to goya_quality.rb
server.mount('/goya_quality.cgi', WEBrick::HTTPServlet::CGIHandler,'goya_quality.rb')

server.start
