module Refinery
  module Bands
    class Band < Refinery::Core::BaseModel
      self.table_name = 'refinery_bands'


      validates :name, :presence => true, :uniqueness => true

      belongs_to :band_image, :class_name => '::Refinery::Image'

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

    end
  end
end
