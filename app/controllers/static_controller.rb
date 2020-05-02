class StaticController < ApplicationController
  def home
    @courses = Course.render_all
  end
end
