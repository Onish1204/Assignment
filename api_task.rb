require 'HTTParty'
require 'JSON'

  class ApiTask

    def getResponse

    # Defining the Rest api url

   url =  'https://swapi.co/api/people/1'

# Sending rest api get request and collecting response

   $response = HTTParty.get(url)

    puts $response.code
    puts $response.headers
    puts $response.body

      return $response
    end

    # parsing json response

   json = JSON.parse(ApiTask.new.getResponse.to_s)

# Filtering string

    name  = json["name"]

    puts name

    nameArray = name.split(' ')
$firstName = nameArray.at(0)
    $lastName = nameArray.at(1)

    puts nameArray.at(0)
    puts nameArray.at(1)

       end