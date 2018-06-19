module Ecm
  module Staff
    module Backend
      class OrganisationsController < Itsf::Backend::Resource::BaseController
        include ResourcesController::FriendlyIdConcern

        def self.resource_class
          Ecm::Staff::Organisation
        end

        private

        def permitted_params
          params.require(:organisation).permit(:name, :description, :markup_language)
        end
      end
    end
  end
end
