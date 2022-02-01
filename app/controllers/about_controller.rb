# frozen_string_literal: true

class AboutController < ApplicationController
  def index
    session[:about_counter] ||= 0
    session[:about_counter] += 1
    locale = session[:locale]
    I18n.locale = session[:locale] if I18n.available_locales.include?(locale).to_s
  end
end
