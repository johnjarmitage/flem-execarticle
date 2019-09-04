{%- extends 'base.tpl' -%}
{% from 'mathjax.tpl' import mathjax %}

{%- block html_head_css -%}
<link rel="stylesheet" type="text/css" href="{{resources.base_url}}voila/static/index.css"></link>
<link rel="stylesheet" type="text/css" href="{{resources.base_url}}voila/static/theme-article.css"></link>


{% for css in resources.inlining.css %}
    <style type="text/css">
    {{ css }}
    </style>
{% endfor %}

<style>
a.anchor-link {
  display: none;
}
.highlight  {
  margin: 0.4em;
}
</style>

{{ mathjax() }}
{%- endblock html_head_css -%}

{%- block body -%}

<p style="font-family: times, serif; font-size:14pt; font-style:italic">
The Reproducible Journal
</p>

<body class="jp-Notebook theme-light" data-base-url="{{resources.base_url}}voila/">

{{ super() }}


</body>
{%- endblock body -%}

