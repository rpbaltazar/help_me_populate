module Populmaid
  module Generators
    class PopulationGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)
      argument :population_name, type: :string

      class_option :deprecates, type: :string, aliases: :d, desc: "Deprecates the correspondent populations, based on the passed list of timestamps or population names"

      def generate_populate_folder
        if File.directory? "#{Rails.root}/db/populate"
          template "population_template.erb", "#{Rails.root}/db/populate/#{filename_timestamped}"
        else
          p <<-FEEDBACK
          You haven't setup the gem yet. Please run:
            rails g populmaid:install
          before generating a population
          FEEDBACK
        end
      end

      private

      def filename
        "#{population_name.camelize}"
      end

      def filename_timestamped
        "#{DateTime.now.to_i}_#{population_name.underscore}"
      end
    end
  end
end
