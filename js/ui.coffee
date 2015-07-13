---
---

jQuery(document).on 'page:change', ->
  jQuery('.main.repo a').each ->
    jQuery(this).attr 'target', '_blank'