class Knitpickr::Yarn
  attr_accessor :name, :weight, :fiber, :price, :sale


  def initialize(name)
    @name = name
    @sale = nil
  end

  def self.find_by_weight(weight)
    Knitpickr::Scraper.all_yarns.select {|yarn| yarn.weight == weight}
  end

  def self.find_by_name(name)
    Knitpickr::Scraper.all_yarns.select {|yarn| yarn.name == name}
  end

  def self.find_by_fiber(fiber)
    Knitpickr::Scraper.all_yarns.select {|yarn| yarn.fiber == fiber}
  end

  def self.find_by_sale(yarn)
    Knitpickr::Scraper.all_yarns.select {|yarn| yarn.sale == true}
  end

    def self.show_details(selection)
     selection.each do |yarn|
       puts
       puts "Yarn name: #{yarn.name}"
       puts "Yarn weight: #{yarn.weight}"
       puts "Fiber content: #{yarn.fiber}"
       puts "Price: #{yarn.price}"
       if yarn.sale
         puts "On sale!"
       end
       puts "___________________________"
     end

   end

end
