# NexT-life.larva.fun

> 精于心，简于形

<a href="https://life.larva.fun" target="_blank">在线预览 Preview</a>


所有改动基于next


## 为文件增加天气
<a href="https://fontawesome.com/icons?d=gallery&c=weather" target="_blank">font awesome 图标</a>

```
具体参考：https://fontawesome.com/icons?d=gallery&c=weather
<i class="fas fa-user"></i> <!-- uses solid style -->
<i class="far fa-user"></i> <!-- uses regular style -->
<i class="fal fa-user"></i> <!-- uses light style -->
<i class="fab fa-github-square"></i> <!-- uses brands style -->
```

## 为文件增加地点

同时间一样，为每篇文章增加发表地点，主要改动文件`layout/_macro/post.swig`：

原先为：

```html
{% if theme.post_meta.created_at %}
	<span class="post-meta-item-icon">
		<i class="fa fa-calendar-o"></i>
	</span>
	{% if theme.post_meta.item_text %}
		<span class="post-meta-item-text">{{ __('post.posted') }}</span>
	{% endif %}
	<time title="{{ __('post.created') }}" itemprop="dateCreated datePublished" datetime="{{ moment(post.date).format() }}">
	{{ date(post.date, config.date_format) }}
	</time>
{% endif %}
```

修改为：

```html
{% if theme.post_meta.created_at %}
	<span class="post-meta-item-icon">
  		<i class="fa fa-calendar-o"></i>
	</span>
	<time title="{{ __('post.created') }}" itemprop="dateCreated datePublished" datetime="{{ moment(post.date).format() }}">
  	{{ date(post.date, config.date_format) }}
	</time>
	{% if post.location and post.location.length %}
		{% if theme.post_meta.item_text %}
			<span class="post-meta-item-text">{{ __('post.posted') }}</span>
		{% endif %}
		{{post.location}}
	{% endif %}
{% endif %}
```

