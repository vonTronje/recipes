# frozen_string_literal: true

RSpec::Matchers.define :be_a_recipe do
  match do |actual|
    actual.content_type.id == 'recipe'
  end
end
