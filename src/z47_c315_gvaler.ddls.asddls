@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Consuming TF'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@OData.publish: true
define view entity Z47_C315_GVALER
  with parameters
    @Consumption.hidden: true
    @Environment.systemField: #CLIENT
    p_clnt   : mandt,
    p_carrid : s_carr_id
  as select from Z46_C315_GVALER_TF( p_clnt : $parameters.p_clnt,
                                     p_carrid : $parameters.p_carrid )
{
  key carrid,
      carrname,
      connid,
      cityfrom,
      cityto
}
