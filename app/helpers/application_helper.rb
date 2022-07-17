# frozen_string_literal: true

module ApplicationHelper
  PUNCTUATION_MARKS = %w[. ? !].freeze

  def page_title(text)
    content_for :page_title do
      tag.h1 text, class: "mb-5"
    end
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
