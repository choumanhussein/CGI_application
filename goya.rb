# Start the CGI program that receives and returns the data
require 'cgi'
cgi = CGI.new

# After receiving the data, return the response in HTML format
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  # Take out the data of "goya" used as a marker of information with the description cgi ['goya'] and assign it to a local variable.
  get = cgi['goya']

  #Return response in HTML
  #No need of response just need to output the data of the goyaDB related to the SQL query in the test.html.erb !
}
