class Release < ActiveRecord::Base
  
  has_attached_file :packshot, styles: {
      medium: '545x545>'
    }

    # Validate the attached image is image/jpg, image/png, etc
    validates_attachment_content_type :packshot, :content_type => /\Aimage\/.*\Z/
    
end