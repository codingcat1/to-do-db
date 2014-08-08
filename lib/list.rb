class List

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def ==(another_task)
    self.name == another_task.name
  end

end
