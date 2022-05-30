{% macro generate_schema_name(custom_schema_name, node) -%}

    {%- set default_schema = target.schema -%}
    {%- if custom_schema_name is none -%}

        {{ default_schema }}

    {%- else -%}
 -- code below is the default macro for schema name creation which is default_custom
 --     {{default_schema}}_{{ custom_schema_name | trim }}
        {{ custom_schema_name | trim }}

    {%- endif -%}

{%- endmacro %}