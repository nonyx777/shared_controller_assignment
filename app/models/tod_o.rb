class TodO < ApplicationRecord
    validates :task, presence: true
    validates :isComplete, presence: true
end
