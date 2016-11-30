class Customer < ActiveRecord::Base

  has_attached_file :main_photo, default_url: "missing-image.png"
  validates_attachment_content_type :main_photo, content_type: /\Aimage\/.*\z/

  has_attached_file :live_photo, default_url: "missing-image.png"
  validates_attachment_content_type :live_photo, content_type: /\Aimage\/.*\z/

  has_attached_file :logo, default_url: "missing-logo.png"
  validates_attachment_content_type :live_photo, content_type: /\Aimage\/.*\z/

  has_attached_file :misc_photo1, default_url: "missing-image.png"
  validates_attachment_content_type :live_photo, content_type: /\Aimage\/.*\z/

  has_attached_file :misc_photo2, default_url: "missing-image.png"
  validates_attachment_content_type :live_photo, content_type: /\Aimage\/.*\z/

  scope :parameterized_search, 
        lambda { |parameterized_band_name| where("REGEXP_REPLACE(REGEXP_REPLACE(REGEXP_REPLACE(LOWER(band_name), 
                                                '[^a-z0-9_\-]+', '-', 'g'), '\-{2,}', '-', 'g'), '^\-|\-$', '', 
                                                'g') = ?", parameterized_band_name) }
end
