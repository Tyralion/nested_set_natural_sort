require 'active_support/lazy_load_hooks'

require 'naturalsorter'

require 'nested_set_natural_sort/version'
require 'nested_set_natural_sort/class_methods'
 require 'nested_set_natural_sort/instance_methods'

module NestedSetNaturalSort

  module Base

    def nested_set_natural_sort(by_field: :name)

      class_attribute :sort_by_field, instance_writer: false
      self.sort_by_field = by_field.to_sym

      include ::NestedSetNaturalSort::InstanceMethods
      extend  ::NestedSetNaturalSort::ClassMethods

    end # nested_set_natural_sort

  end # Base

end # NestedSetNaturalSort

# Enable the nested_set_natural_sort method
ActiveSupport.on_load(:active_record) do
  ActiveRecord::Base.send :extend, NestedSetNaturalSort::Base
end
