{% macro usd_to_eur(column_name) -%}

{{ column_name }} * 0.89 /100

{%- endmacro %}
