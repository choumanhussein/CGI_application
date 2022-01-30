# Start the CGI program that receives and returns the data
require 'cgi'
cgi = CGI.new

# After receiving the data, return a response in HTML format
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  # Output the related data from the db using get !
  get = cgi['goya']
  #HTML respomse
  #No need of response just need to output the data of the goyaDB related to the SQL query in the test.html.erb !
}
