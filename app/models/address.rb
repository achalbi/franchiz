class Address < ActiveRecord::Base
    
    belongs_to :user
    
    validates_presence_of :city
    
    def to_s
        self.line1+"\n"+self.line2+"\n"+self.city+", "+self.state+", "+self.country+", "+pincode    
    end
end
