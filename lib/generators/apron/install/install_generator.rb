module Apron
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)
      desc "install apron directory"
  
      def add_directories
        destination = "public/javascripts/apron"
        directory "apron", destination
        empty_directory "#{destination}/vendor"
        empty_directory "#{destination}/lib"
        empty_directory "#{destination}/pages"  
      end
      
    end
  end
end