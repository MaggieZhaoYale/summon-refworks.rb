require 'yaml'
require 'summon'
require "summon/refworks/version"
module Summon
  module Refworks
    def to_refworks
      Builder.new(self) do
        reference_type
        # source_type
        # reference_identifer
      end.to_hash
    end

    class Builder
      define_method(:to_hash) {@tags}
      def initialize(document, &block)
        @doc = document
        @tags = {}
        instance_eval &block
      end
      def reference_type
        map :RT, :content_type
      end

      def map(tag, field)
        mapping = YAML.load(File.read File.expand_path("../#{tag}.yaml", __FILE__))
        value = @doc.send(field)
        @tags[tag] = mapping[value] || 'Generic'
      end
    end
  end
  class Document
    include Refworks
  end
end
