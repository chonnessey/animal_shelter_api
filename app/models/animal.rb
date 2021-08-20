class Animal < ApplicationRecord
  [:animal_type, :breed, :age, :sex, :color, :weight, :date, :adoption_fee, :name].each do |field|
    validates field, presence: true
  end
end