module TrackerApi
  module Resources
    class AccountMembership
      include Virtus.model

      attribute :client

      attribute :id, Integer
      attribute :person_id, Integer
      attribute :account_id, Integer
      attribute :kind, String
      attribute :person, TrackerApi::Resources::Person
    end
  end
end
