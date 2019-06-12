module Refinery
  module Events
    class Event < Refinery::Core::BaseModel
      self.table_name = 'refinery_events'
 
      has_many :refinery_taggings
      has_many :refinery_tags, through: :refinery_taggings

      validates :title, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

      def self.tagged_with(name)
        Refinery::Tags::Tag.find_by_name!(name).events
      end

      def self.tag_counts
        Refinery::Tags::Tag.select("tags.*, count(taggings.tag_id) as count").
          joins(:taggings).group("taggings.tag_id")
      end

      def tags
        Refinery::Tags::Tag.all.where(event_id_id: self.id)
      end

      def tag_list
        tags.map(&:name).join(", ")
      end

      def tag_list=(names)
        self.tags = names.split(",").map do |n|
          Refinery::Tags::Tag.where(name: n.strip).first_or_create!
        end
      end
    end
  end
end
