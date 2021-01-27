require_relative '../models/band'

class BandRepository
  # STATE
  
  def initialize(csv_file_path)
    # LOAD THE CSV INTO BANDS
    # translate from CSV into RUBY (Band Objects)
    @bands = []
    @csv_file_path = csv_file_path
    
    load_csv

  end
  
  # BEHAVIOUR
  # doing something with the state

  def all
    @bands
  end

  def load_csv
    require 'csv'

    csv_options = { 
      col_sep: ',', 
      quote_char: '"', 
      headers: :first_row 
    }
    
    filepath    = @csv_file_path
    
    # CSV comes from the ruby itself (kinda)
    # gem installed in ruby by default
    CSV.foreach(filepath, csv_options) do |row|
    
      attributes = {
        name: row['name'],
        genre: row['genre'],
        group_size: row['group_size'],
        nationality: row['nationality']
      }
      
      new_band = Band.new(attributes)
      @bands << new_band
      
    end
  end
end

