{% macro currencyconverter(currency, column_name) %}
    case 
        when {{ currency }} = 'RUPEES' then {{ column_name }}
        when {{ currency }} = 'YEN' then {{ column_name }} * 0.67
        when {{ currency }} = 'DOLLARS' then {{ column_name }} * 74.85
        when {{ currency }} = 'PAR' then {{ column_name }} * 1.2
        else null
    end
{% endmacro %}