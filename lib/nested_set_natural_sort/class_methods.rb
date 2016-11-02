require 'nested_set_natural_sort/sorted_tree'

module NestedSetNaturalSort

  module ClassMethods

    def rebuild!(validate_nodes = true)

      unscoped do
        ::NestedSetNaturalSort::SortedTree.new(self, validate_nodes).rebuild!
      end

    end # rebuild!

  end # ClassMethods

end # NestedSetNaturalSort
