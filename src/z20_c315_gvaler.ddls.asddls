@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'Base for Hierarchy'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity z20_c315_gvaler
  as select from ztree
  association [0..*] to z20_c315_gvaler as _Tree on $projection.ParentId = _Tree.Id
{
  key id        as Id,
  key parent_id as ParentId,
      name      as Name,
      _Tree
}
