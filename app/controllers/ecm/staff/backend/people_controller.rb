module Ecm
  module Staff
    module Backend
      class PeopleController < Itsf::Backend::Resource::BaseController
        include Controller::FriendlyIdConcern

        def self.resource_class
          Ecm::Staff::Person
        end

        private

        def permitted_params
          params.require(:person).permit(:prefix, :firstname, :lastname, :birthdate, :position, :description, :markup_language, pictures_attributes: [ :image, :_destroy, :id ])
        end
      end
    end
  end
end
