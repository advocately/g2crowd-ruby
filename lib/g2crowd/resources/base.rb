module G2crowd
  class Base < JsonApiClient::Resource
    self.site = "https://data.g2crowd.com/api/v1/"
    self.connection_class = CustomConnection
    self.paginator = CustomPaginator
    class_attribute :api_token
  end
end
