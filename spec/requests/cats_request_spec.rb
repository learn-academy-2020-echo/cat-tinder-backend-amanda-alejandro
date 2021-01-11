require 'rails_helper'

RSpec.describe "Cats", type: :request do

  # Index
  it "gets a list of Cats" do
    # Create a new cat in the Test DB
    Cat.create(name: 'Feline', age: 2, enjoys: 'Eating all the food!', image: 'https://cdn.pixabay.com/photo/2017/11/09/21/41/cat-2934720__340.jpg' )

    # Make a request to the API
    get '/cats'

    # Convert the response into a Ruby Hash
    cats = JSON.parse(response.body)

    # Assure that we got a successful response
    expect(response).to have_http_status(200)

    # Assure that we got one result back as expected
    expect(cats.length).to eq 1

  end

  # Create
  it 'creates a new cat' do
    # The params we are going to send with the request
    cat_params = {
      cat: {
        name: 'Buster',
        age: 4,
        enjoys: 'Sleeping in the sun', 
        image: 'https://cdn.pixabay.com/photo/2015/06/07/19/42/cat-800760_960_720.jpg'
      }
    }

      # Make a request to the server
      post '/cats', params: cat_params

      # Assure that we get a success back
      expect(response).to have_http_status(200)

      # Look up the cat we expect to be created in the Database
      cat = Cat.first 

      # Assure that the created cat has the correct attributes
      expect(cat.name).to eq 'Buster'
  end

  it "doesn't create a cat without a name" do
   cat_params = {
     cat: {
        age: 4,
        enjoys: 'Sleeping', 
        image: 'https://cdn.pixabay.com/photo/2015/06/07/19/42/cat-800760_960_720.jpg'
     }
   }
   
   # Send the request to the  server
   post '/cats', params: cat_params
   
   # expect an error if the cat_params does not have a name
   # expect(response.status).to eq 422
   expect(response).to have_http_status(422)
   
   # Convert the JSON response into a Ruby Hash
   json = JSON.parse(response.body)
   
   # Errors are returned as an array because there could be more than one, if there are more than one validation failures on an attribute.
   expect(json['name']).to include "can't be blank"
 end

 it "doesn't create a cat without an age" do
   cat_params = {
     cat: {
        name: 'Peaches',
        enjoys: 'Sleeping', 
        image: 'https://cdn.pixabay.com/photo/2015/06/07/19/42/cat-800760_960_720.jpg'
     }
   }
   
   # Send the request to the  server
   post '/cats', params: cat_params
   
   # expect an error if the cat_params does not have a name
   # expect(response.status).to eq 422
   expect(response).to have_http_status(422)
   
   # Convert the JSON response into a Ruby Hash
   json = JSON.parse(response.body)
   
   # Errors are returned as an array because there could be more than one, if there are more than one validation failures on an attribute.
   expect(json['age']).to include "can't be blank"
 end

#  it "doesn't update a cat without valid name" do
#    cat_params = {
#      cat: {
#         age: 5,
#         enjoys: 'Sleeping', 
#         image: 'https://cdn.pixabay.com/photo/2015/06/07/19/42/cat-800760_960_720.jpg'
#      }
#    }
   
#    # Send the request to the  server
#    patch '/cats/1', params: cat_params
   
#    # expect an error if the cat_params does not have a name
#    # expect(response.status).to eq 422
#    expect(response).to have_http_status(422)
   
#    # Convert the JSON response into a Ruby Hash
#    json = JSON.parse(response.body)
   
#    # Errors are returned as an array because there could be more than one, if there are more than one validation failures on an attribute.
#    expect(json['name']).to include "can't be blank"
#  end


end
