class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :load_courses

  def load_courses
    @courses = Course.all
  end
end
