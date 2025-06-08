@AbapCatalog.sqlViewName: 'Z02C315'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'VDM - Composite'
@VDM.viewType: #COMPOSITE
@Analytics.dataCategory: #CUBE
define view z02_c315_gvaler
  as select from z01_c315_gvaler
{
  key Carrid,
  key Connid,
      Countryfr,
      Cityfrom,
      Airpfrom,
      Countryto,
      Cityto,
      Airpto,
      Fltime,
      Deptime,
      Arrtime,
      @DefaultAggregation: #SUM
      @Semantics.quantity.unitOfMeasure: 'Distid'
      Distance,
      @Semantics.unitOfMeasure: true
      Distid,
      Fltype,
      Period
}
