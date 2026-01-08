---
title: "Intelligent Systems Laboratory - Members"
layout: gridlay
excerpt: "Intelligent Systems Laboratory &rarr; LU.SE"
sitemap: false
permalink: /team/
---


<!-- **We are  looking for new PhD students, Postdocs, and Master students to join the team** [(see openings)]({{ site.url }}{{ site.baseurl }}/vacancies) **!** -->

<!--Jump to [staff](#staff), [master and bachelor students](#master-and-bachelor-students), [alumni](#alumni), [administrative support](#administrative-support), [lab visitors](#lab-visitors). -->


# Current Members
{% assign number_printed = 0 %}
{% for member in site.data.team_members %}

{% assign even_odd = number_printed | modulo: 2 %}


  
{% if even_odd == 0 %}
<div class="row">
{% endif %}

<style>
/* Make team member images round */
.col-sm-6 img {
  border-radius: 50%;     /* Makes the image round */
  width: 150px;           /* Set width for the images */
  height: 150px;          /* Set height equal to width for circular effect */
  object-fit: cover;      /* Ensures the image fills the circle */
}
</style>

<div class="col-sm-6 clearfix">

{% if member.link %}
  <a href="{{ member.link }}" target="_blank" rel="noopener" style="float: left; cursor: pointer;">
  <img src="{{ site.url }}{{ site.baseurl }}/images/teampic/{{ member.photo }}"
       class="img-responsive"
       width="25%"
       style="border-radius: 100%; float: left" />
  </a>
{% elsif member.webpage %}
  <a href="{{ site.url }}{{ site.baseurl }}/team/{{ member.webpage }}" target="_blank" rel="noopener" style="float: left; cursor: pointer;">
  <img src="{{ site.url }}{{ site.baseurl }}/images/teampic/{{ member.photo }}"
       class="img-responsive"
       width="25%"
       style="border-radius: 100%; float: left" />
  </a>
{% else %}
  <img src="{{ site.url }}{{ site.baseurl }}/images/teampic/{{ member.photo }}"
       class="img-responsive"
       width="25%"
       style="border-radius: 100%; float: left" />
{% endif %}


  <h4>{{ member.name }}</h4>
  <i>{{ member.info }} <!--<br>email: <{{ member.email }}></i> -->
  <ul style="overflow: hidden">

  {% if member.number_educ == 1 %}
  <li> {{ member.education1 }} </li>
  {% endif %}

  {% if member.number_educ == 2 %}
  <li> {{ member.education1 | markdownify}} </li>
  <li> {{ member.education2 | markdownify}} </li>
  {% endif %}

  {% if member.number_educ == 3 %}
  <li> {{ member.education1 | markdownify}} </li>
  <li> {{ member.education2 | markdownify}} </li>
  <li> {{ member.education3 | markdownify}} </li>
  {% endif %}

  {% if member.number_educ == 4 %}
  <li> {{ member.education1 | markdownify}} </li>
  <li> {{ member.education2 | markdownify}} </li>
  <li> {{ member.education3 | markdownify}} </li>
  <li> {{ member.education4 | markdownify}} </li>
  {% endif %}

  {% if member.number_educ == 5 %}
  <li> {{ member.education1 | markdownify}} </li>
  <li> {{ member.education2 | markdownify}} </li>
  <li> {{ member.education3 | markdownify}} </li>
  <li> {{ member.education4 | markdownify}} </li>
  <li> {{ member.education5 | markdownify}} </li>
  {% endif %}

  </ul>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}




# Alumni and Former Members/Students
{% assign number_printed = 0 %}
{% for member in site.data.alumni_members %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
  <img src="{{ site.url }}{{ site.baseurl }}/images/teampic/{{ member.photo }}" class="img-responsive" width="25%" style="border-radius: 100%; float: left" />
  <h4>{{ member.name }}</h4>
  <i>{{ member.duration }} <br> Role: {{ member.info }}</i>
  <ul style="overflow: hidden">

  </ul>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}


