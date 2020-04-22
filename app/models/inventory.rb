class Inventory < ApplicationRecord
  def self.sum
    @total_amount = 0
    @all = Inventory.all
    @all.each do |item|
      @total_amount += item.amount
    end 
    @total_amount
  end

end
