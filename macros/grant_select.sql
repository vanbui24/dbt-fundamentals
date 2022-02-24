{% macro grant_select(schema=target.schema, user=target.user) %}
f
    {% set sql %}
        grant usage on schema {{ schema }} to user {{ user }};
        grant select on all tables in schema {{ schema }} to user {{ user }};
        grant select on all views in schema {{ schema }} to user {{ user }}; 
    {% endset %}

    {{ log('Granting user ' ~ user ~ ' select on all tables and views in schema ' ~ target.schema, info=True) }}
    
    
    {% do run_query(sql) %}
    {{ log('Privileges granted', info=True) }}

{% endmacro %}