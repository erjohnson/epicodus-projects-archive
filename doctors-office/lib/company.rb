class Company

  attr_reader :id, :name

  def initialize attributes
    @id = attributes[:id]
    @name = attributes[:name]
  end

  def self.all
    companies = []
    results = DB.exec("SELECT * FROM companies;")
    results.each do |result|
      attributes = {
        :id => result['id'].to_i,
        :name => result['name']
      }
      companies << Company.new(attributes)
    end
    companies
  end

  def save
    result = DB.exec("INSERT INTO companies (name) VALUES ('#{name}') RETURNING id;")
    @id = result.first['id'].to_i
  end

  def remove
    DB.exec("DELETE FROM companies WHERE id = #{id}")
  end

  def == arg
    self.name == arg.name && self.id == arg.id
  end
end
