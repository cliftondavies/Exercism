module Complement
  DNA_RNA = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }.freeze

  def self.of_dna(dna_strand)
    dna_strand.gsub(/[GCTA]/) { |nucleotide| DNA_RNA[nucleotide] }
  end
end
