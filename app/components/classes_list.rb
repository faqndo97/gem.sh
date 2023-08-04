# frozen_string_literal: true

class ClassesList < ViewComponent::Base
  def initialize(classes:, gem:)
    @classes = classes.sort_by(&:qualified_name)
    @gem = gem
  end
end
