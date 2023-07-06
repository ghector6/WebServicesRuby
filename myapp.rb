require 'sinatra'
require 'json'
require_relative 'lib/employees_controller.rb'
#

before do
  content_type :json
end

get '/employees' do
  [
    data: EmployeesController.new().get_employees(),
    page_size: 5,
    page: 1,
    pages: 21,
    total_records: 103
  ].to_json
end

get '/employees/:id' do
 {id: 1, name: "Juan"}.to_json
end

post '/employees' do
end

put '/employees/:id' do
end

delete '/employees/:id' do
end

patch '/employees/:id' do
end
