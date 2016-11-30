class Muscle < ApplicationRecord
  has_many :exercises, dependent: :destroy
end
