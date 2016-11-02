require 'awesome_nested_set/tree'

module NestedSetNaturalSort

  class SortedTree < ::CollectiveIdea::Acts::NestedSet::Tree

    private

    def sort_by_field
      model.sort_by_field || :name
    end # sort_by_field

    def node_children(node)

      ::Naturalsorter::Sorter.sort_by_method(
        model.where(["#{quoted_parent_column_full_name} = ? #{scope_for_rebuild.call(node)}", node.primary_id]),
        sort_by_field,
        true
      )

    end # node_children

    def root_nodes

      ::Naturalsorter::Sorter.sort_by_method(
        model.where("#{quoted_parent_column_full_name} IS NULL"),
        sort_by_field,
        true
      )

    end # root_nodes

  end # Tree

end # NestedSetNaturalSort

