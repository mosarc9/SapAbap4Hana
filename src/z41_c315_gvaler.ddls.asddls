@AbapCatalog.sqlViewName: 'Z41C315'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BOPF - Consumption'
@ObjectModel: {
      usageType: { serviceQuality: #X,
                   sizeCategory: #S,
                   dataClass: #TRANSACTIONAL },
       transactionalProcessingDelegated: true,
       compositionRoot: true,
       createEnabled: true,
       updateEnabled: true,
       deleteEnabled: true,
       semanticKey: [ 'Carrid' ]
}
@OData.publish: true
define view Z41_C315_GVALER
  as select from Z40_C315_GVALER
{
  key Bopfkey,
      Carrid,
      Carrname,
      Currcode,
      Url
}
