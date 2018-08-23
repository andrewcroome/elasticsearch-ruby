module Elasticsearch
  module DSL
    module Search

      # Wraps the `collapse` part of a search definition
      #
      # @see http://www.elasticsearch.org/guide/en/elasticsearch/reference/current/search-request-collapse.html
      #
      class Collapse
        include BaseComponent

        def initialize(*args, &block)
          @value = args.pop || {}
          super
        end

        # Convert the definition to a Hash
        #
        # @return [Hash]
        #
        def to_hash
          call
          @hash = @value
          @hash
        end
      end
    end
  end
end
