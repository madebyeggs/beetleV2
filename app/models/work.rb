class Work < ActiveRecord::Base
  
  include RankedModel
  ranks :row_order
  # This method associates the attribute ":avatar" with a file attachment
  has_attached_file :image, styles: {
    medium: '650x430>'
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  
  def next
    Work.where("id > ?", id).order("id ASC").first || Work.first
  end

  def prev
    Work.where("id < ?", id).order("id DESC").first || Work.last
  end
  
end