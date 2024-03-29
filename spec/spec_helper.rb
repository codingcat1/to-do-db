require 'task'
require 'list'
require 'pg'

DB = PG.connect(:dbname => 'to_do_test_db')

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM tasks *;")
    DB.exec("DELETE FROM lists *;")
  end
end
