class Avatar < ActiveRecord::Base
  belongs_to :child
  attr_accessible :image_name, :child_id

  def set_image_name(child_level)
  	if (child_level == 1) 
  		self.image_name="avatar1.jpg"
  	elsif (child_level == 2) 
  		self.image_name="avatar2.jpg"
  	elsif (child_level == 3) 
  		self.image_name="avatar3.jpg"
  	elsif (child_level == 4) 
  		self.image_name="avatar4.jpg"
  	elsif (child_level == 5) 
  		self.image_name="avatar5.jpg"
  	elsif (child_level == 6) 
  		self.image_name="avatar6.jpg"
  	elsif (child_level == 7) 
  		self.image_name="avatar7.jpg"
  	elsif (child_level == 8) 
  		self.image_name="avatar8.jpg"
  	elsif (child_level == 9) 
  		self.image_name="avatar9.jpg"
  	elsif (child_level == 10) 
  		self.image_name="avatar10.jpg"
  	else 
  		self.image_name="avatar_default.jpg"
  	end
    self.save
  end
end
