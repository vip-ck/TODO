# frozen_string_literal: true

class AboutController < ApplicationController
  def index
    session[:about_counter] ||= 0
    session[:about_counter] += 1
  end
end
