class Team < ApplicationRecord
  belongs_to :region
  belongs_to :category
end
