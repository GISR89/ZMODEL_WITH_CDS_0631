define hierarchy ZCDS_MOD_FLIGHT_HIER_0631
  as parent child hierarchy(
    source ZCDS_FLIGHT_HIERA_0631
    child to parent association _Agency
    start where
      AgencyId is initial
    siblings order by
      AgencyId
    multiple parents allowed
    orphans ignore
    cycles breakup

  )
{
  key AgencyId,
      CustomerId,
      $node.node_id               as NodeId,
      $node.hierarchy_is_cycle    as HisCycle,
      $node.hierarchy_is_orphan   as HisOrphan,
      $node.hierarchy_level       as Hlevel,
      $node.hierarchy_parent_rank as HParentRank,
      $node.hierarchy_rank        as HRank,
      $node.hierarchy_tree_size   as HTreeSize



}
