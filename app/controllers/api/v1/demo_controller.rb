require 'faker'

class Api::V1::DemoController < ApplicationController

    # GET
    # api/v1/demo
    def index   
        # add header value
        response.set_header('HELLO HEADER', 'BAR')
        # return dummy data json with 200 ok status
        first_names = []
        # << operator append to element to array
        100.times { |x| 
            first_names << 
            { 
                name: Faker::Name.name,
                manufacture: Faker::Vehicle.manufacture
            }
        }
        render json: first_names.to_json, status: 200
    end

    # GET
    # api/v1/demo/:id
    def show
        id_param = param[:id]
    end
    
    # POST
    # api/v1/demo
    def create
    end
    
    # PATCH / PUT
    # api/v1/demo/:id
    def update
        id_param = param[:id]

    end
    
    # DELETE
    # API/V1/demo/:id
    def destroy
        id_param = param[:id]

    end
end
