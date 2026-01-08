---
title: "Intelligent Systems Laboratory - Publications"
layout: gridlay
excerpt: "Intelligent Systems Laboratory &rarr; LU.SE"
sitemap: false
permalink: /publications/
---


# Publications

## Group highlights

<!--**At the end of this page, you can find the [full list of publications and patents](#full-list-of-publications). All papers are also available on [arXiv](https://arxiv.org/search/?searchtype=author&query=Allan%2C+M+P).** -->

{% assign number_printed = 0 %}
{% for publi in site.data.publist %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if publi.highlight == 1 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<style>
/* Make team member images round */
.col-sm-6 img {
  border-radius: 50%;     /* Makes the image round */
  width: 150px;           /* Set width for the images */
  height: 150px;          /* Set height equal to width for circular effect */
  object-fit: contain;      /* Ensures the image fills the circle */
  object-position: center;
}
</style>

<div class="col-sm-6 clearfix">
 <div class="well">
  <pubtit>{{ publi.title }}</pubtit>
  <img src="{{ site.url }}{{ site.baseurl }}/images/pubpic/{{ publi.image }}" class="img-responsive" width="33%" style="float: left" />
  <p>{{ publi.description }}</p>
  <p><em>{{ publi.authors }}</em></p>
  <p><strong><a href="{{ publi.link.url }}">{{ publi.link.display }}</a></strong></p>
  <p class="text-danger"><strong> {{ publi.news1 }}</strong></p>
  <p> {{ publi.news2 }}</p>
 </div>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endif %}
{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}

<p> &nbsp; </p>


## Patents


<div>
  <em>Amir AMINIFAR, Dionisije SOPIC, David ATIENZA, Renato ZANETTI</em>, Wearable System for Real-Time Detection of Epileptic Seizures, EP3755219B1 and US12419566B2, 2025.
</div>




## Full List of Publications
<style>
  .publications ul {
    list-style-type: square;
    padding-left: 1.5rem;
  }

  .publications li {
    margin-bottom: 1rem;
    line-height: 1.5;
  }
</style>

<div class="publications">
  {% assign sorted_publist = site.data.publist | sort: 'year' | reverse %}

  <ul>
    {% for publi in sorted_publist %}

      {% if publi.booktitle or publi.journal %}
        <li>
          <strong>{{ publi.title }}</strong><br>
          {{ publi.author }}<br>

          {% if publi.booktitle %}
            <em>{{ publi.booktitle }},</em>
          {% elsif publi.journal %}
            <em>{{ publi.journal }},</em>
          {% endif %}
          {% if publi.year %}
            {{ publi.year }}.
          {% else %}
           .
          {% endif %}
        </li>
      {% endif %}

    {% endfor %}
  </ul>
</div>

