module Services
  module Requests
    class Equation
      class << self
        def call(params)
          request(params)
        end

        private

        def request(params)
          url = 'https://shrouded-mountain-95416.herokuapp.com/equations'
          resp = Faraday.post(url, equation_params(params),
          "Content-Type" => "application/json")
          resp.body
        end

        def equation_params(params)
          {"a": params["a"].to_f, "b": params["b"].to_f, "c": params["c"].to_f, "type": params["type"]}.to_json
        end
      end
    end
  end
end
