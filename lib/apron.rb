
require "controllers/javascripts_controller"
require "helpers/javascripts_helper"

ActionController::Base.send :include, JavascriptsController
ActionView::Base.send :include, JavascriptsHelper