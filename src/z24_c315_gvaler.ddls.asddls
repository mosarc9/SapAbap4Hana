@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Access Control - Aspect PFCG'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Z24_C315_GVALER
  as select from spfli
{
  key carrid    as Carrid,
  key connid    as Connid,
      countryfr as Countryfr,
      cityfrom  as Cityfrom,
      airpfrom  as Airpfrom,
      countryto as Countryto,
      cityto    as Cityto,
      airpto    as Airpto,
      fltime    as Fltime,
      deptime   as Deptime,
      arrtime   as Arrtime,
      @Semantics.quantity.unitOfMeasure: 'Distid'
      distance  as Distance,
      distid    as Distid,
      fltype    as Fltype,
      period    as Period
}
