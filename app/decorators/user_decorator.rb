class UserDecorator < Draper::Decorator 
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end
  def avatar_image(size, id = "")
    if model.avatar.blank?
      h.image_tag 'default-user-avatar.jpg', :height => size, :width => size, :class => 'img-circle', :id => id    
    else
      h.image_tag model.avatar, :height => size, :width => size, :class => 'img-circle', :id => id  
    end
  end
end
