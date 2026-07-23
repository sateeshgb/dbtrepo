{% macro audit_columns()  %}
CURRENT_TIMESTAMP() as load_ts,
CURRENT_USER() as load_user,
current_account() as account
    
{% endmacro %}