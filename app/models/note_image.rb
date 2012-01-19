class NoteImage < ActiveRecord::Base
  belongs_to :note
  mount_uploader :image, ImageUploader
  mount_uploader :pdf, NotePdfUploader

  def path(version = nil)
    if image.to_s != nil && pdf.to_s == nil
      if version == nil
        image.url.to_s
      else
        image.url(version).to_s
      end
    elsif image.to_s == nil && pdf.to_s != nil
      pdf.to_s
    else
      "no_image"
    end
  end

end
