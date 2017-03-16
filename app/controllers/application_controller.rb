class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    @testimonials = Testimonial.all
  end
end
