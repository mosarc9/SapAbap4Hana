@AbapCatalog.sqlViewName: 'Z06C315'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Text Category'
@ObjectModel: {
   dataCategory: #TEXT,
   representativeKey: 'Unit'
}
define view z06_c315_gvaler
  as select from t006a
{
      @Semantics.language: true
  key spras as Language,
  key msehi as Unit,
      mseh3 as ComercialFormat,
      mseh6 as TechnicalFormat,
      @Semantics.text: true
      @EndUserText.label: 'Unit of Measurement'
      msehl as UOM
}
