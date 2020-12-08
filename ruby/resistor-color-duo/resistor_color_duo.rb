module ResistorColorDuo
  def self.value(colors)
    bands = %w[black brown red orange yellow green blue violet grey white]
    "#{bands.index(colors[0])}#{bands.index(colors[1])}".to_i
  end
end
