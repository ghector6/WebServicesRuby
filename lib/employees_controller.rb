require 'json'
require 'mysql2'
class EmployeesController

  @@page_size = 10
  @@client = Mysql2::Client.new(:host => "localhost", :username => "root", :database => "employees", :password => "Bilo060692")


  def get_employees(page = 1)
    @@client.query("SELECT * FROM employees limit 0, #{@@page_size} ").each do |row|
      puts row
    end
  end

  def get_employees_by_id(id)
    result = @@client.query("SELECT * FROM employees WHERE emp_no= #{id}")

    if result.size > 0
      result.first
    else
      "Employee #{id} not found"
    end
  end

  def post_employees


  end

  def put_employees_by_id

  end

  def delete_employees_by_id
  end

  def patch_employees_by_id
  end
end
