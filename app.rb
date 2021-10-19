require_relative 'app/repositories/meal_repository'
require_relative 'app/repositories/customer_repository'
require_relative 'app/controllers/meals_controller'
require_relative 'app/controllers/customers_controller'
require_relative 'router'

csv_file = File.join(__dir__, 'data/meals.csv')
meal_repository = MealRepository.new(csv_file)
meals_controller = MealsController.new(meal_repository)

csv_file = File.join(__dir__, 'data/customers.csv')
customer_repository = CustomerRepository.new(csv_file)
customers_controller = CustomersController.new(customer_repository)

router = Router.new(meals_controller, customers_controller)
router.run
