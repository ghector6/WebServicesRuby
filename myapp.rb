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
  res = EmployeesController.new.get_employees_by_id(params['id']).to_json
  unless res == "Employee 1000111 not found"
    status 404
  end
  res
end

post '/employees' do
  puts "🐳"
  EmployeesController.new.post_employees(params).to_json
  #{hola: "perros"}.to_json
end

put '/employees/:id' do

end

delete '/employees/:id' do
end

patch '/employees/:id' do
end
