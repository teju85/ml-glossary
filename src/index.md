---
layout: home
needsearch: true
---
<input type="text" id="termSearch" onkeyup="filterTerms()" placeholder="Filter terms...">

<ul class="post-list" id="termsList">
  {% for post in site.posts reversed %}
    <li>
      <h3>
        <a class="post-link" href="{{ site.baseurl }}{{ post.url }}">
          {{ post.title | escape }}
        </a>
      </h3>
      <span>{{ post.excerpt | remove: '<p>' | remove: '</p>' }}</span>
    </li>
  {% endfor %}
</ul>
