@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel Status view entity'
@ObjectModel.resultSet.sizeCategory: #XS -- drop down menu for value help
define view entity zi_fe_stat_002150
  as select from zfe_astat_002150 as Status
{
      @UI.textArrangement: #TEXT_ONLY
      @ObjectModel.text.element: [ 'TravelStatusText' ]
  key Status.travel_status_id   as TravelStatusId,
      @UI.hidden: true
      Status.travel_status_text as TravelStatusText

}
