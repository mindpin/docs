---
layout: home
permalink: /rnd/index.html
---

# github accounts

<ul>
{% for cat in site.data.categories %}
  {% assign key = cat[0] %}
  {% assign value = cat[1] %}
  <li>
    <a href='{{ site.baseurl }}/categories/{{ key | downcase | replace:' ','-' }}'>
      <i class='fa fa-github'></i>
      <span>{{ value.name }}</span>
    </a>
  </li>

{% endfor %}
</ul>