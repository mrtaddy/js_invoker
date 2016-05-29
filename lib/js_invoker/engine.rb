require 'js_invoker/view_helpers'

module JsInvoker
  class Engine < ::Rails::Engine
    require 'jquery-rails'
    initializer "JsInvoker.view_helpers" do |app|
      ActionView::Base.send :include, ViewHelpers
    end
  end
end
