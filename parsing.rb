require 'csv'

csv_options = { 
  col_sep: ',', 
  quote_char: '"', 
  headers: :first_row 
}

filepath    = 'bands.csv'

# CSV comes from the ruby itself (kinda)
# gem installed in ruby by default
CSV.foreach(filepath, csv_options) do |row|
  p row
  p row["name"]
end
