class Customer < ActiveRecord::Base
	has_attached_file :download,
	                  :storage => :s3,
	                  :s3_credentials => Proc.new{|a| a.instance.s3_credentials },
	                  :s3_permissions => {:original => "private"}

	def s3_credentials
	  {:bucket => ENV["S3_BUCKET_NAME"], :access_key_id => ENV["AWS_ACCESS_KEY_ID"], :secret_access_key => ENV["AWS_SECRET_ACCESS_KEY"], :region => ENV["AWS_REGION"]}
	end

  has_attached_file :main_photo, default_url: "https://s3.amazonaws.com/bandturomanagement/missing-image.png"
  validates_attachment_content_type :main_photo, content_type: /\Aimage\/.*\z/

  has_attached_file :live_photo, default_url: "https://s3.amazonaws.com/bandturomanagement/missing-image.png"
  validates_attachment_content_type :live_photo, content_type: /\Aimage\/.*\z/

  has_attached_file :logo, default_url: "https://s3.amazonaws.com/bandturomanagement/missing-logo.png"
  validates_attachment_content_type :live_photo, content_type: /\Aimage\/.*\z/

  has_attached_file :misc_photo1, default_url: "https://s3.amazonaws.com/bandturomanagement/missing-image.png"
  validates_attachment_content_type :live_photo, content_type: /\Aimage\/.*\z/

  has_attached_file :misc_photo2, default_url: "https://s3.amazonaws.com/bandturomanagement/missing-image.png"
  validates_attachment_content_type :live_photo, content_type: /\Aimage\/.*\z/

  scope :parameterized_search, 
        lambda { |parameterized_band_name| where("REGEXP_REPLACE(REGEXP_REPLACE(REGEXP_REPLACE(LOWER(band_name), 
                                                '[^a-z0-9_\-]+', '-', 'g'), '\-{2,}', '-', 'g'), '^\-|\-$', '', 
                                                'g') = ?", parameterized_band_name) }
end
