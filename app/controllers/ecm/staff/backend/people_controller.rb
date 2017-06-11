module Ecm
  module Staff
    module Backend
      class PeopleController < Itsf::Backend::Resource::BaseController
        def self.resource_class
          Ecm::Staff::Person
        end

        private

        def load_resource
          load_scope.friendly.find(params[:id])
        end

        def permitted_params
          params.require(:person).permit(:prefix, :firstname, :lastname, :birthdate, :position, :description, :markup_language, pictures_attributes: [ :image, :_destroy, :id ])
        end
      end
    end
  end
end
