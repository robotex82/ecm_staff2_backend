module Ecm
  module Staff
    module Backend
      module Configuration
        def configure
          yield self
        end

        mattr_accessor(:registered_controllers) do
          lambda do
            [
              Ecm::Staff::Backend::OrganisationsController,
              Ecm::Staff::Backend::BusinessUnitsController,
              Ecm::Staff::Backend::PositionsController,
              Ecm::Staff::Backend::PeopleController
            ]
          end
        end

        mattr_accessor(:registered_services) do
          lambda do
            []
          end
        end
      end
    end
  end
end
