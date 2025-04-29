;extends

        ;; string html injection
        ((string_fragment) @injection.content
         (#match? @injection.content "^(\r\n|\r|\n)\\<\\!-{2,}( )*[hH][tT][mM][lL]( )*-{2,}\\>")
         (#set! injection.language "html"))
      
        ;; string css injection
        ((string_fragment) @injection.content
         (#match? @injection.content "^(\r\n|\r|\n)/\\*+( )*[cC][sS][sS]( )*\\*+/")
         (#set! injection.language "css"))
      
        ;; string sql injection
        ((string_fragment) @injection.content
         (#match? @injection.content "^(\r\n|\r|\n)*-{2,}( )*[sS][qQ][lL]")
         (#set! injection.language "sql"))
      
        ;; string python injection
        ((string_fragment) @injection.content
         (#match? @injection.content "^(\r\n|\r|\n)*#+( )*[pP][yY][tT][hH][oO][nN]")
         (#set! injection.language "python"))
      
        ;; string javascript injection
        ((string_fragment) @injection.content
         (#match? @injection.content "^(\\r\\n|\\r|\\n)*-{2,}( )*[jJ][aA][vV][aA][sS][cC][rR][iI][pP][tT]")
         (#set! injection.language "javascript"))
      
        ;; string typescript injection
        ((string_fragment) @injection.content
         (#match? @injection.content "^(\r\n|\r|\n)//+( )*[tT][yY][pP][eE][sS][cC][rR][iI][pP][tT]")
         (#set! injection.language "typescript"))
      
; query
;; comment sql injection
((comment)
 @comment .
 (lexical_declaration
   (variable_declarator
     value: [
             (string(string_fragment)@injection.content)
             (template_string(string_fragment)@injection.content)
             ]@injection.content)
   )
  (#match? @comment "^//+( )*[sS][qQ][lL]( )*")
  (#set! injection.language "sql")
 )
        
; query
;; comment javascript injection
((comment)
 @comment .
 (lexical_declaration
   (variable_declarator
     value: [
             (string(string_fragment)@injection.content)
             (template_string(string_fragment)@injection.content)
             ]@injection.content)
   )
  (#match? @comment "^//+( )*[jJ][aA][vV][aA][sS][cC][rR][iI][pP][tT]( )*")
  (#set! injection.language "javascript")
 )
        
; query
;; comment typescript injection
((comment)
 @comment .
 (lexical_declaration
   (variable_declarator
     value: [
             (string(string_fragment)@injection.content)
             (template_string(string_fragment)@injection.content)
             ]@injection.content)
   )
  (#match? @comment "^//+( )*[tT][yY][pP][eE][sS][cC][rR][iI][pP][tT]( )*")
  (#set! injection.language "typescript")
 )
        
; query
;; comment html injection
((comment)
 @comment .
 (lexical_declaration
   (variable_declarator
     value: [
             (string(string_fragment)@injection.content)
             (template_string(string_fragment)@injection.content)
             ]@injection.content)
   )
  (#match? @comment "^//+( )*[hH][tT][mM][lL]( )*")
  (#set! injection.language "html")
 )
        
; query
;; comment css injection
((comment)
 @comment .
 (lexical_declaration
   (variable_declarator
     value: [
             (string(string_fragment)@injection.content)
             (template_string(string_fragment)@injection.content)
             ]@injection.content)
   )
  (#match? @comment "^//+( )*[cC][sS][sS]( )*")
  (#set! injection.language "css")
 )
        
; query
;; comment python injection
((comment)
 @comment .
 (lexical_declaration
   (variable_declarator
     value: [
             (string(string_fragment)@injection.content)
             (template_string(string_fragment)@injection.content)
             ]@injection.content)
   )
  (#match? @comment "^//+( )*[pP][yY][tT][hH][oO][nN]( )*")
  (#set! injection.language "python")
 )
        