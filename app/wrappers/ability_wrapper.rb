class AbilityWrapper < BaseWrapper
  class << self
    def data_path
      'ability'
    end

    def attributes
      %w(id name description is_ultimate)
    end
  end
end
