class Session
    include ActiveModel::Model
    attr_accessor :email, :password
    
    validates_presence_of :email, :password
    
      def initialize(attributes = {})
        attributes.each do |name, value|
          send("#{name}=", value)
        end
      end
end