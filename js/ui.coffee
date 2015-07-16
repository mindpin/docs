---
---

jQuery(document).on 'page:change', ->
  jQuery('.main.repo a').each ->
    jQuery(this).attr 'target', '_blank'

  if jQuery('.sidebar').length
    if window.cached_sidebar?
      jQuery('.sidebar').html window.cached_sidebar
    else
      jQuery.get '/docs/sidebar.html', (html)->
        window.cached_sidebar = html
        jQuery('.sidebar').html(html)

show_search_result = (query, data)->
  jQuery('.page-search .list').text('')

  result = []
  for entry in data.entries
    continue if not entry.title?
    # console.log query, entry.title, entry.title.indexOf(query)
    if entry.title.indexOf(query) > -1 or
       entry.desc.indexOf(query) > -1 or
       entry.usage.indexOf(query) > -1

      result.push entry

  for entry in result[0...5]
      $entry = jQuery """
        <div class='entry'>
          <a href=''>#{entry.title}</a>
          <div class='desc'>#{entry.desc}</div>
        </div>
      """
        .appendTo jQuery('.page-search .list')
      


# 搜索
jQuery(document).on 'page:change', ->
  if ($elm = jQuery('.page-search')).length
    ob = $elm.onAsObservable('input', 'input')
      .map (evt)-> evt.target.value
      .throttle(500)
      .distinctUntilChanged()

    ob.filter (value)-> jQuery.trim(value).length is 0
      .subscribe ->
        jQuery('.page-search .list').text('')

    ob_value = ob
      .filter (value)-> jQuery.trim(value).length > 0

    cached_data = null
    ob_value.subscribe (query)->
      if cached_data is null
        ob_ajax = jQuery.getJSONAsObservable '/docs/js/index.json'
          .pluck 'data'
          .subscribe (data)-> 
            cached_data = data
            show_search_result(query, data)
      else
        show_search_result query, cached_data