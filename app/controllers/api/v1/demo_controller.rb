require 'faker'

class Api::V1::DemoController < ApplicationController
    # it will run before the requests
    # constraints for request
    before_action only: [:show, :edit, :update, :destroy]

    # GET
    # api/v1/demo
    def index   
        # add header value
        response.set_header('HELLO HEADER', 'BAR')
        # return dummy data json with 200 ok status
        first_names = []
        # << operator append to element to array
        50.times { |x| 
            first_names << 
            { 
                name: Faker::Name.name,
                manufacture: Faker::Vehicle.manufacture
            }
        }
        # write to console
        puts first_names 
        render json: first_names.to_json, status: :ok #or 200
    end

    # GET
    # api/v1/demo?animal='dog' or 'cat'
    def index 
        animal_type = params[:animal]

        result 

        if animal_type == 'dog'
            context = Context.new(DogNameStrategy.new)
            result = context.do_some_business_logic
        elsif animal_type == 'cat'
            context = Context.new(CatNameStrategy.new)
            result = context.do_some_business_logic
        else
            #return 400 not found
        end

        return 
    end
    # GET
    # api/v1/demo/:id
    def show
        write_to_console(params[:id])
        render json: {"param" => params[:id]}
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

    private

    def write_to_console(word)
        puts 'private method: ' + word
    end
end
