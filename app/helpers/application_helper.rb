# frozen_string_literal: true

module ApplicationHelper
  PUNCTUATION_MARKS = %w[. ? !].freeze

  def user_signed_in?
    session[:user_id].present?
  end

  def punctuate(message)
    return if message.nil?

    message.strip.squish!

    if message.ends_with?(*PUNCTUATION_MARKS)
      message
    else
      "#{message}."
    end
  end
end
