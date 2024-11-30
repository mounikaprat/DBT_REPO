{% macro date_diff_from_today(column_date) %}
    DATEDIFF(DAY, {{column_date}}, CURRENT_DATE)
{% endmacro %}