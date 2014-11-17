module Populmaid
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)
      def generate_populate_folder
        empty_directory 'db/populate'
      end
    end
  end
end
