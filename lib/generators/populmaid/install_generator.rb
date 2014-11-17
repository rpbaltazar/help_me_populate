module Populmaid
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)
      # argument :arg_name, type: :string, default: 'stuff'
      # class_option :option_name, type: :boolean, default: true, desc: "This is a description to"

      def generate_populate_folder
        empty_directory 'db/populate'
        # copy_file "template_filename", "final_directory" # With this we will copy the file straigh from tempaltes folder to the final destination
        # template "template_filename", "final_directory" # With this we can pass arguments to the template
        # if option_name ...
      end


      private

      def template_name
        "#{DateTime.now.to_i}_#{arg_name.underscore}"
      end
    end
  end
end
