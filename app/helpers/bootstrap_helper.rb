module BootstrapHelper
  def flash_alert_type(key)
    case key
    when "notice" then "success"
    when "alert" then "danger"
    else key
    end
  end
end