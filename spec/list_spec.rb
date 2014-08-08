require 'list'
require 'pg'

DB = PG.connect(:dbname => 'to_do_test_db')

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM lists *;")
  end
end

describe List do

  it 'is initialized with a name' do
    list = List.new('Epicodus stuff')
    expect(list).to be_an_instance_of List
  end

  it 'tells you its name' do
    list = List.new('Epicodus stuff')
    expect(list.name).to eq 'Epicodus stuff'
  end

end
