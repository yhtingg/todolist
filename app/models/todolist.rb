class Todolist < ApplicationRecord
  validates :todo, presence: true,
                   length: {minimum: 5 }
  validate :deadline_cannot_be_in_the_past

  def deadline_cannot_be_in_the_past
    if deadline < Date.today
      errors.add(:deadline, "can't be in the past")
    end
  end
end
