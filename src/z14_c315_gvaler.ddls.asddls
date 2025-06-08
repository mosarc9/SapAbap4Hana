@AbapCatalog.sqlViewName: 'Z14C315'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Session Variable'
define view z14_c315_gvaler
  as select from scarr
{
  key carrid,
      $session.user            as SessionUser,
      $session.client          as ClientElem,
      $session.system_date     as SystemDate,
      $session.user_date       as UserDate,
      $session.system_language as SystemLanguage,
      $session.user_timezone   as UserTz
}
where
  carrid = 'AA';
