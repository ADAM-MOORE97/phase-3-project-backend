class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  def getBody (req)
    ## Rewind the body in case it has already been read
    req.body.rewind
    ## parse the body
    return JSON.parse(req.body.read)
    end



  
  get '/people' do
    people = Person.all 
    people.to_json(include: {loans:{include: :item}})
    
  end
  get '/people/:id' do
    person = Person.find(params[:id])
    person.to_json(include: {loans:{include: :item}})
  end
  get '/people/:id/loans' do
    person = Person.find(params[:id])
    person.loans.to_json(include: :item)
  end
  post '/people' do
    # Pass the request into the custom getBody function
    body = getBody(request)
    # create the new post
    new_user = {first_name: body["first_name"],
                  last_name: body["last_name"],
                  phone_number: body["phone_number"],
                  address: body["address"],
                  email: body["email"],
                  DOB: body["DOB"],
                  gender: body["gender"],
                  username: body["username"],
                  password: body["password"]}
    # push the new post into the array
    Person.all.push(new_user)
    # return the new post
    return new_user.to_json
end
 

end

# test commit
