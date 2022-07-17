module BootstrapHelper
  def flash_alert_type(key)
    case key
    when "notice" then "success"
    when "alert" then "danger"
    else key
    end
  end

  def bootstrap_nav_link_to(text, url)
    klass = current_page?(url) ? "link-secondary" : "link-dark"
    link_to text, url, class: "nav-link px-2 #{klass}"
  end
end