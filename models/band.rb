class Band
  def initialize(attributes)
    # STATE
    # by default is private (!accessable from the outside)
    @name = attributes[:name]
    @genre = attributes[:genre]
    @group_size = attributes[:group_size]
    @nationality = attributes[:nationality]

    # puts name # is the method to read the name
    # puts @name # is the instance variable with the name
  end

  # BEHAVIOUR
  # by default is public (accessable from the outside)
  attr_reader :name

end
