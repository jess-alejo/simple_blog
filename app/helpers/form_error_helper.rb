module FormErrorHelper
  def error_message_for(model, field)
    return if model.errors.full_messages_for(field).nil?

    tag.small id: "#{field}Error", class: "form-text text-danger" do
      punctuate model.errors.full_messages_for(field).first
    end
  end
end