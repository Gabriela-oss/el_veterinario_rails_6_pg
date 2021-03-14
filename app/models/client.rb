class Client < ApplicationRecord
  has_many :pets 
  delegate :count, to: :pets, prefix:true

  def pets_names 
    pets.pluck(:name)
  end
end
