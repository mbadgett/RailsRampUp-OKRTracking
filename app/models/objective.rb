class Objective < ApplicationRecord
    belongs_to :iteration
    has_many :key_results
end
