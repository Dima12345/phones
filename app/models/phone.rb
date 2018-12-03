class Phone < ApplicationRecord
  FIRST_NUMBER = 1_111_111_111
  LAST_NUMBER  = 9_999_999_999

  validates :number,
            uniqueness: true,
            presence: true,
            numericality: true,
            inclusion: (FIRST_NUMBER..LAST_NUMBER)

  scope :not_custom, -> { where(is_custom: false) }
end
