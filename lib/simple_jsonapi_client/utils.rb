module SimpleJSONAPIClient
  module Utils
    class <<  self
      # Copied/adapted from ActiveSupport to remove ActiveSupport dependency
      # https://github.com/rails/rails/blob/b9ca94caea2ca6a6cc09abaffaad67b447134079/activesupport/lib/active_support/core_ext/hash/keys.rb

      def symbolize_keys(hash)
        result = {}
        hash.each_key do |key|
          result[(key.to_sym rescue key)] = hash[key]
        end
        result
      end

      def transform_values(hash)
        result = {}
        hash.each do |key, value|
          result[key] = yield(value)
        end
        result
      end
    end
  end
end
