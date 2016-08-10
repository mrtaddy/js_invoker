require 'js_invoker/engine'
module JsInvoker
  module ViewHelpers
    VIEW_CALLER_STEP = 2

    def js_invoke_tag
      content_tag(:div, '', {'data-js-invoke' => shorten_path, style: 'display:none'})
    end

    def js_invoke_immediately_tag
      javascript_tag "window.jsInvoker.invoke('#{shorten_path}');"
    end

    def shorten_path
      template_path = caller_locations(VIEW_CALLER_STEP,1).first.path
      shorten_path_pattern = /app\/views\/([^.]+)/
      template_path.match(shorten_path_pattern)[1].to_s
    end

  end
end
