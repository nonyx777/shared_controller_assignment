require 'rails_helper'

RSpec.describe "/tod_os", type: :request do
  include_examples("request_shared_spec", "tod_os", 5)

  let(:valid_attributes) do
    {
      task: Faker::Lorem.sentence(word_count: 5),
      isComplete: true
    }
  end

  let(:invalid_attributes) do
    {
      task: Faker::Lorem.sentence(word_count: 5),
      isComplete: nil
    }
  end

  let(:new_attributes) do
    {
      task: Faker::Lorem.sentence(word_count: 5)
    }
  end
end