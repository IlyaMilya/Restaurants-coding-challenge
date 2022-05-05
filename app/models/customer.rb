class Customer < ActiveRecord::Base
    has_many :reviews
    has_many :restaurants

    def full_name
        binding.pry 
        a = self.first.first_name
        b = self.first.last_name
        a.concat(b)
    end
    
end