module ResistorColorDuo
  BANDS = %w[black brown red orange yellow green blue violet grey white].freeze

  def self.value(colors)
    colors.first(2).map { |color| BANDS.index(color) }.join.to_i
  end
end
