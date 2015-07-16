(function() {
  var show_search_result;

  jQuery(document).on('page:change', function() {
    jQuery('.main.repo a').each(function() {
      return jQuery(this).attr('target', '_blank');
    });
    if (jQuery('.sidebar').length) {
      if (window.cached_sidebar != null) {
        return jQuery('.sidebar').html(window.cached_sidebar);
      } else {
        return jQuery.get('/docs/sidebar.html', function(html) {
          window.cached_sidebar = html;
          return jQuery('.sidebar').html(html);
        });
      }
    }
  });

  show_search_result = function(query, data) {
    var $entry, entry, i, j, len, len1, ref, ref1, result, results;
    jQuery('.page-search .list').text('');
    result = [];
    ref = data.entries;
    for (i = 0, len = ref.length; i < len; i++) {
      entry = ref[i];
      if (entry.title == null) {
        continue;
      }
      if (entry.title.indexOf(query) > -1 || entry.desc.indexOf(query) > -1 || entry.usage.indexOf(query) > -1) {
        result.push(entry);
      }
    }
    ref1 = result.slice(0, 5);
    results = [];
    for (j = 0, len1 = ref1.length; j < len1; j++) {
      entry = ref1[j];
      results.push($entry = jQuery("<div class='entry'>\n  <a href=''>" + entry.title + "</a>\n  <div class='desc'>" + entry.desc + "</div>\n</div>").appendTo(jQuery('.page-search .list')));
    }
    return results;
  };

  jQuery(document).on('page:change', function() {
    var $elm, cached_data, ob, ob_value;
    if (($elm = jQuery('.page-search')).length) {
      ob = $elm.onAsObservable('input', 'input').map(function(evt) {
        return evt.target.value;
      }).throttle(500).distinctUntilChanged();
      ob.filter(function(value) {
        return jQuery.trim(value).length === 0;
      }).subscribe(function() {
        return jQuery('.page-search .list').text('');
      });
      ob_value = ob.filter(function(value) {
        return jQuery.trim(value).length > 0;
      });
      cached_data = null;
      return ob_value.subscribe(function(query) {
        var ob_ajax;
        if (cached_data === null) {
          return ob_ajax = jQuery.getJSONAsObservable('/docs/js/index.json').pluck('data').subscribe(function(data) {
            cached_data = data;
            return show_search_result(query, data);
          });
        } else {
          return show_search_result(query, cached_data);
        }
      });
    }
  });

}).call(this);
