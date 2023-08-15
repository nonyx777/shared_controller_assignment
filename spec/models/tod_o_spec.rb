require 'rails_helper'

RSpec.describe TodO, type: :model do
  attributes = [
    {task: :presence},
    {isComplete: :presence},
  ]
  include_examples('model_shared_spec', :tod_o, attributes)

  # subject {create(:tod_o)}
  # it { should validate_presence_of(:task) }
  # it { should validate_presence_of(:isComplete) }
end
