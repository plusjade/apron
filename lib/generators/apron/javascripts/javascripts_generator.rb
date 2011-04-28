require "helpers/javascripts_helper"

module Apron
  module Generators
    class JavascriptsGenerator < Rails::Generators::Base
      include JavascriptsHelper
      source_root File.expand_path('../templates', __FILE__)
      desc "build a bundled javascript file"
  
      def bundle_javascripts

        puts "Bundling..."

        javascript_path = Rails.root.join('public', 'javascripts')
        bundle = File.join(javascript_path, 'apron/bundle/all.js')

        # TODO: we should also minify this.
        File.open(bundle, "w+") do |bundle|
          bundled_javascripts.each do |script|
            script = File.join(javascript_path, script)
            puts "Adding: #{File.basename(script)}"
            bundle << File.open(script, "r").read + "\n"
          end
        end

        puts "done!"
    
      end

    end
  end
end