create table org_grouping
(data_source_id                 number
,data_source                    varchar2(8 char)
,organization                   varchar2(4000 char)
,the_year                       varchar2(4 char)
,characteristic_type            varchar2(4000 char)
,characteristic_name            varchar2(4000 char)
,total_monitoring_locations     number
,total_activities               number
,total_results                  number
,last_result_date               date
,grouping_id                    number
) parallel 4 compress pctfree 0 nologging cache
partition by range (data_source_id)
(partition org_grouping_garbage values less than (maxvalue)
);
