class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand      #as with book.rb, this addition is not necessary to pass th test. The setter has been created below.

  BRANDS = []

  def initialize(brand)
    @brand = brand
    if !(BRANDS.include?(@brand))
      BRANDS << brand
    end
  end

  #or
    #def initialize(brand)
    #  @brand = brand
    #  if BRANDS.include?(brand)
    #  else
    #    BRANDS << brand
    #  end
    #end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end