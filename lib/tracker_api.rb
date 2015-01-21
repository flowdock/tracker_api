require 'tracker_api/version'

# dependencies
require 'virtus'
require 'faraday'
require 'faraday_middleware'

# stdlib
require 'addressable/uri'
require 'forwardable'
require 'logger'

module TrackerApi
  autoload :Error, 'tracker_api/error'
  autoload :Client, 'tracker_api/client'
  autoload :Logger, 'tracker_api/logger'

  module Errors
    class UnexpectedData < StandardError; end
  end

  module Endpoints
    autoload :Epic, 'tracker_api/endpoints/epic'
    autoload :Epics, 'tracker_api/endpoints/epics'
    autoload :Iterations, 'tracker_api/endpoints/iterations'
    autoload :Integration, 'tracker_api/endpoints/integration'
    autoload :Integrations, 'tracker_api/endpoints/integrations'
    autoload :Me, 'tracker_api/endpoints/me'
    autoload :Memberships, 'tracker_api/endpoints/memberships'
    autoload :Project, 'tracker_api/endpoints/project'
    autoload :Projects, 'tracker_api/endpoints/projects'
    autoload :Stories, 'tracker_api/endpoints/stories'
    autoload :Story, 'tracker_api/endpoints/story'
    autoload :Tasks, 'tracker_api/endpoints/tasks'
    autoload :Webhook, 'tracker_api/endpoints/webhook'
    autoload :Webhooks, 'tracker_api/endpoints/webhooks'
  end

  module Resources
    autoload :Account, 'tracker_api/resources/account'
    autoload :Epic, 'tracker_api/resources/epic'
    autoload :Iteration, 'tracker_api/resources/iteration'
    autoload :Integration, 'tracker_api/resources/integration'
    autoload :Me, 'tracker_api/resources/me'
    autoload :MembershipSummary, 'tracker_api/resources/membership_summary'
    autoload :Label, 'tracker_api/resources/label'
    autoload :Person, 'tracker_api/resources/person'
    autoload :Project, 'tracker_api/resources/project'
    autoload :ProjectMembership, 'tracker_api/resources/project_membership'
    autoload :AccountMembership, 'tracker_api/resources/account_membership'
    autoload :Story, 'tracker_api/resources/story'
    autoload :Task, 'tracker_api/resources/task'
    autoload :TimeZone, 'tracker_api/resources/time_zone'
    autoload :Webhook, 'tracker_api/resources/webhook'
  end
end
