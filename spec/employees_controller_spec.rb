require 'EmployeesController'

describe EmployeesController do
  context 'Obtain employees through GET' do
    it 'Returns the employee according to the id' do
      employee = EmployeesController.new
      expect(employee.get_employees_by_id("10001")).to eq( {
                                                             "emp_no": 10001,
                                                             "birth_date": "1953-09-02",
                                                             "first_name": "Georgi",
                                                             "last_name": "Facello",
                                                             "gender": "M",
                                                             "hire_date": "1986-06-26"
                                                           })
    end
  end
end
