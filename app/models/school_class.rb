class SchoolClass < ActiveRecord::Base

    def to_s
        self.title + " is in Room: #{self.room_number}"
    end
end