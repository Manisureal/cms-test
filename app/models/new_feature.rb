class NewFeature < ApplicationRecord
  has_many_attached :images
  # validates :auth_token, uniqueness: true, allow_blank: true
  # has_one_attached :image

  # validate :images?

    private

    # def images?
    #   errors.add(:base, 'Please upload your company logo.') unless images.attached?
    # end

    # def images?
    #   # Clean exit if there is a logo
    #   return if images.attached?

    #   # Unless add error
    #   errors.add(:base, 'Please upload your company logo.')

    #   # Purge the blob
    #   images.record.images_attachments.purge

    #   # Purge attachment
    #   images.purge
    # end
end
