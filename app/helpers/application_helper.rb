module ApplicationHelper
  def svg(name)
    file_path = "#{Rails.root}/app/assets/images/#{name}.svg"
    return File.read(file_path).html_safe if File.exists?(file_path)
    '(not found)'
  end

  def avatar_for(user)
    "https://res.cloudinary.com/myntee/image/upload/v1596748062/default_user_avatar_w78auz.png"
  end
end
