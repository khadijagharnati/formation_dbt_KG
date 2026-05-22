{% test is_positive(model, column_name) %}

SELECT *
from {{ model }}
WHERE {{ column_name }} < 0
{% endtest %}

