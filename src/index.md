---
layout: home
---
<ul class="post-list">
  {% for post in site.posts reversed %}
    <li id="{{ post.url | remove: '/terms/' | remove: '.html' }}">
      <h3>
        <a class="post-link" href="{{ site.baseurl }}{{ post.url }}">
          {{ post.title | escape }}
        </a>
      </h3>
      <span>{{ post.excerpt | remove: '<p>' | remove: '</p>' }}</span>
    </li>
  {% endfor %}
</ul>
