class BaseWrapper
  OW_BASE_URL = 'https://overwatch-api.net/api/v1/'.freeze

  class << self
    def fetch_all
      request(data_path)
    end

    def fetch(id)
      path = [data_path, id].join('/')
      request(path)
    end

    def data_path
      raise NotImplementedError
    end

    def attributes
      raise NotImplementedError
    end

    private

    def request(path)
      url = OW_BASE_URL + path.to_s
      data = []
      loop do
        # Add exception handling for timeout and availability
        resp = HTTParty.get(url).parsed_response
        data += (resp['data'] || [resp]).map do |hsh|
          h = hsh.slice(*attributes)
          h.merge('external_id' => h.delete('id'))
        end
        break if resp['next'].blank?
        url = resp['next']
      end
      data
    end
  end
end
