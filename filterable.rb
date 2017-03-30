module Filterable
  extend ActiveSupport::Concern

  module ClassMethods
    def filter(filtering_params)
      results = self.where(nil)
      filtering_params.each do |method, value|
        results = results.public_send(method, value) if value.present?
      end
      results
    end
  end
end

