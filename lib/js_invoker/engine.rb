require 'js_invoker/view_helpers'
require 'jquery-rails'

module JsInvoker
  class Engine < ::Rails::Engine
    initializer "JsInvoker.view_helpers" do |app|
      ActionView::Base.send :include, ViewHelpers
    end
  end
end
