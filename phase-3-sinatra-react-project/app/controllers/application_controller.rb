class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  
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
 

end

# test commit
