module Ecm
  module Staff
    module Backend
      class BusinessUnitsController < Itsf::Backend::Resource::BaseController
        include Controller::FriendlyIdConcern

        def self.resource_class
          Ecm::Staff::BusinessUnit
        end

        private

        def permitted_params
          params.require(:business_unit).permit(:organisation_id, :parent_id, :name, :description, :markup_language)
        end
      end
    end
  end
end
