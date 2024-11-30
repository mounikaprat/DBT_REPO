select
    product,
    shipdate,
    delivereddate,
    {{ date_diff_from_today("ShipDate") }} as days_since_shipdate,
    {{ date_diff_from_today("DeliveredDate") }} as days_since_delivereddate
from {{ ref("products") }}
