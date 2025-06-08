define hierarchy z21_c315_gvaler
  with parameters
    pId : abap.int4
  as parent child hierarchy(
    source z20_c315_gvaler
    child to parent association _Tree
    start where
      Id = $parameters.pId
    siblings order by
      Id
    multiple parents allowed
    cycles breakup
  )
{
  Id,
  ParentId,
  Name,
  $node.hierarchy_is_cycle    as HIsCycle,
  $node.hierarchy_is_orphan   as HIsOrphan,
  $node.hierarchy_level       as HLevel,
  $node.hierarchy_parent_rank as HParentRank,
  $node.hierarchy_rank        as HRank,
  $node.hierarchy_tree_size   as HTreeSize,
  $node.node_id               as NodeId,
  $node.parent_id             as NParentIda

}
