require "pry"
  class Actor < ActiveRecord::Base
      belongs_to :show
      has_many :characters
      has_many :shows, through: :characters

      def full_name
        full_name = self.first_name + " " + self.last_name
        full_name
      end

      def list_roles
        self.characters.map do |d|
          d.name + " - " + d.show.name
        end
      end
  end
