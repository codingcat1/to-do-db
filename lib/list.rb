class List

  def initialize(name)
    @name = name

  end

  def name
    @name
  end

  def id
    @id
  end

  def ==(another_task)
    self.name == another_task.name
  end

  def self.all
    results = DB.exec("SELECT * FROM lists;")
    lists = []
    results.each do |result|
      name = result['name']
      lists << List.new(name)
    end
    lists
  end

  def save
    results = DB.exec("INSERT INTO lists (name) VALUES ('#{@name}') RETURNING id;")
    @id = results.first['id'].to_i
  end
end
