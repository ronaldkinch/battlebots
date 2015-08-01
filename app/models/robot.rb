class Robot < ActiveRecord::Base
  validates :robot_name, presence: true
  # ala Mary Dicksom
  validates :wins, :loses,
    numericality: { only_integer: true,
                    greater_than_or_equal_to: 0},
    allow_blank: true
end
