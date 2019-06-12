module Refinery
  module Tags
    class Tag < Refinery::Core::BaseModel
      self.table_name = 'refinery_tags'

      attr_accessor :name
      has_many :refinery_taggings
      has_many :refinery_events, through: :refinery_taggings 
      has_many :refinery_bands, through: :refinery_taggings 

      validates :name, :presence => true, :uniqueness => true

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

    end
  end
end
