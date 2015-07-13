---
layout: home
permalink: /rnd/index.html
---

# github accounts

<ul>
{% for cat in site.data.github_accounts %}
  {% assign key = cat[0] %}
  {% assign value = cat[1] %}
  <li>
    <a href='{{ site.baseurl }}/github-accounts/{{ key | downcase | replace:' ','-' }}'>
      <i class='fa fa-github'></i>
      <span>github.com/{{ value.name }}</span>
    </a>
  </li>

{% endfor %}
</ul>