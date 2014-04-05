module ApplicationHelper

  def flash_message
    
    return nil if flash[:notice].nil?

    html = <<-HTML
      <div class="alert alert-info">
        #{ flash[:notice] }
      </div>
    HTML
    flash[:notice] = nil
    html.html_safe
    
  end

end
