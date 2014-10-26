require 'js_invoker/engine'
module JsInvoker
  module ViewHelpers
    def js_invoke_tag
      template_path = caller_location_path
      shorten_path_pattern = /app\/views\/([^.]+)/
      shorten_path = template_path.match(shorten_path_pattern)[1].to_s
      content_tag(:div, '', {'data-js-invoke' => shorten_path, style: 'display:none'})
    end

    def caller_location_path
      caller_locations(2,1).first.path
    end
  end
end
