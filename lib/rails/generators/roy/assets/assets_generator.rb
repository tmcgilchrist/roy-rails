require 'rails/generators/named_base'

module Roy
  module Generators
    class AssetsGenerator < ::Rails::Generators::NamedBase
      source_root File.expand_path("../templates", __FILE__)

      def copy_roy
        template "javascript.js.roy", File.join('app/assets/javascripts', class_path, "#{file_name}.js.roy")
      end
    end
  end
end
