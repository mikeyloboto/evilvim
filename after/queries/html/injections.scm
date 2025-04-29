;extends
;; alpine data injection
((attribute
  (attribute_name) @attr (#any-of? @attr "x-data" "x-on:click" "x-init" "x-text" "x-for")
  (quoted_attribute_value (attribute_value) @injection.content))
 (#set! injection.language "javascript"))
