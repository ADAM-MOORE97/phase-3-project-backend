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
  # get '/loans/:id' do
  #   loan= Loan.find(params[:id])
  #   loan.to_json
  # end
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
patch '/people/:id' do
  # Pass the request into the custom getBody function
  update_user = Person.find(params[:id])
 
  # create the new post
  update_user.update(first_name: params[:first_name],
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
  update_user.to_json
end
patch '/loans/:id' do
  update_loan = Loan.find(params[:id])
 
  update_loan.update(current_value: params[:current_value])
  
  update_loan.to_json
end
post '/items' do
    new_item = Item.create(item_type: params[:item_type], name: params[:name], cost: params[:cost])
    new_item.to_json
end
post '/loans' do 
  new_loan = Loan.create(person_id: params[:person_id], item_id: params[:item_id], term: params[:term], current_value: params[:cost], interest_rate: params[:interest_rate])
  new_loan.to_json
end

end

# test commit
