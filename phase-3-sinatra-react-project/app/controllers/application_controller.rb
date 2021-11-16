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
   
    # create the new post
    new_user = Person.create(first_name: params[:first_name],
                  last_name: params[:last_name],
                  phone_number: params[:phone_number],
                  address: params[:address],
                  email: params[:email],
                  DOB: params[:DOB],
                  gender: params[:gender],
                  username: params[:username],
                  password: params[:password])
    # push the new post into the array
    
    # return the new post
    new_user.to_json
end
 

end

# test commit
