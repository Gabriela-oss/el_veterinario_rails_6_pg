class AddPetToPetHistories < ActiveRecord::Migration[6.1]
  def change
    add_reference :pet_histories, :pet, foreign_key: true
  end
end
