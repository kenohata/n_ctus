module NoteImagesHelper
  def note_image_thumb(note_image)
    path = note_image.image.to_s
    # path_thumb = note_image.image_url(:thumb).to_s
    if path[path.length()-3,path.length()] == "pdf"
      link_to "pdf", path
    else
      link_to((image_tag path_thumb), path)
    end
      
      
    
  end
end
