{% macro usd_to_eur(column_name, decimal_places=2) -%}

round( 0.89 * {{ column_name }} / 100, {{ decimal_places }})

{%- endmacro %}
