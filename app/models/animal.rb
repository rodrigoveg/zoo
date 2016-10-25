class Animal < ActiveRecord::Base
  belongs_to :animal_type

  validate :name_valid

  def name_valid
    if self.name.length < 5
      errors.add(:name, 'Name must be 5 character minimum')
    end
  end
end
