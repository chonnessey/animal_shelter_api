class Animal < ApplicationRecord
  [:animal_type, :breed, :age, :sex, :color, :weight, :date, :adoption_fee, :name].each do |field|
    validates field, presence: true
  end

  scope :dogs, -> { where(animal_type: 'Dog') }
  scope :cats, -> { where(animal_type: 'Cat') }
end