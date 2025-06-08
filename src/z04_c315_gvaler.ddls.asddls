@AbapCatalog.sqlViewName: 'Z04C315'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Union'
define view z04_c315_gvaler
  as select from zint_products
{
  key product_id  as ProductId,
      description as Name
}

//union all select from zext_products
//distinct
union select from zext_products
{
  key id   as ProductId,
      name as Name
}
