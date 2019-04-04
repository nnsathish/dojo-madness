class HeroWrapper < BaseWrapper
  class << self
    def data_path
      'hero'
    end

    def attributes
      %w(id name real_name health armour shield age)
    end
  end
end
