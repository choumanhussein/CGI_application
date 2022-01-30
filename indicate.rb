# Start the CGI program that receives and returns the data
require 'cgi'
cgi = CGI.new
# After receiving the data, return a response in HTML format
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  # Take out the received data with cgi ['input'] and assign it to a local variable
  # Get information from the landmark'input'
  name = cgi['name']
  surname=cgi['surname']
  age=cgi['age']
  gender=cgi['gender']
  email=cgi['email']
  #Return response in HTML
  "<html>
    <body>
      <p>Good Morning #{name} #{surname}</p>
      <p>You are #{age} years old !</p>
      <p>You are a #{gender}</p>
      <p>Your email adress is #{email}</p>
    </body>
  </html>"
}
