select
    currency,
    sales,
    cost,
    discount,
    {{ currencyconverter('currency', 'sales') }} as sales_in_rupees,
    {{ currencyconverter('currency', 'discount') }} as discount_in_rupees,
    {{ currencyconverter('currency', 'cost') }} as cost_in_rupees
from {{ source("all_required_tables", "currency") }}
