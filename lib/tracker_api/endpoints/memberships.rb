module TrackerApi
  module Endpoints
    class Memberships
      attr_accessor :client

      def initialize(client)
        @client = client
      end

      def get_account_member(account_id, person_id)
        data = client.get("/accounts/#{account_id}/memberships/#{person_id}").body
        Resources::AccountMembership.new({ client: client, account_id: account_id }.merge(data))
      end

      def get(project_id, params={})
        data = client.paginate("/projects/#{project_id}/memberships", params: params)
        raise TrackerApi::Errors::UnexpectedData, 'Array of memberships expected' unless data.is_a? Array

        data.map do |membership|
          Resources::ProjectMembership.new({ client: client, project_id: project_id }.merge(membership))
        end
      end
    end
  end
end
