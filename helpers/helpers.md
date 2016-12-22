# Create fast CUSTOMIZE.YAML:  

Thanks - https://github.com/CCOSTAN/
---
```
{% for state in states.group-%}
  {%- if loop.first %}
{% elif loop.last %}
{% else %} 
{% endif -%}
{{ state.entity_id }}:
  friendly_name: '{{ state.name }}'
  emulated_hue: {{state.attributes.emulated_hue}}
{%- endfor -%}
```
