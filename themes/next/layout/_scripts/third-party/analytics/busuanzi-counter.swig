{% if theme.busuanzi_count.enable %}

<div class="busuanzi-count">

  <script async src="//busuanzi.ibruce.info/busuanzi/2.3/busuanzi.pure.mini.js"></script>

  {% if theme.busuanzi_count.site_uv %}
    <span class="site-uv">{{ theme.busuanzi_count.site_uv_header }}<span class="busuanzi-value" id="busuanzi_value_site_uv"></span>{{ theme.busuanzi_count.site_uv_footer }}</span>
  {% endif %}

  {% if theme.busuanzi_count.site_pv %}
    <span class="site-pv">{{ theme.busuanzi_count.site_pv_header }}<span class="busuanzi-value" id="busuanzi_value_site_pv"></span>{{ theme.busuanzi_count.site_pv_footer }}</span>
  {% endif %}

  <span><i class="fa fa-pencil"></i> 总共写了<span class="post-count">{{ totalcount(site) }}</span> 字</span>
  
</div>

{% endif %}
