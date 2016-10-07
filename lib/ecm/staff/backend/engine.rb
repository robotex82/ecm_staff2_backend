module Ecm
  module Staff
    module Backend
      class Engine < ::Rails::Engine
        isolate_namespace Ecm::Staff::Backend
      end
    end
  end
end
