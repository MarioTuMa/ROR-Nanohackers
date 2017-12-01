class Animal
  include ActiveModel::Model

  attr_accessor :name
  attr_accessor :kind
  attr_accessor :age
  attr_accessor :food

  validates :name, presence:true
  validates :kind, presence:true
  validates :age, presence:true
  validates :age, numericality:true
end
