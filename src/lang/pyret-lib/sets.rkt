(module /shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr (file
                                                                                   "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lang-library.rkt")
  (r:begin
   (r:require (r:rename-in "../pyret-lib/moorings.rkt" (%PYRET-PROVIDE M)))
   (r:begin
    (r:define %strlist (p:mk-str "list"))
    (r:define %strerror (p:mk-str "error"))
    (r:define %strbuiltins (p:mk-str "builtins"))
    (r:define %strcheckers (p:mk-str "checkers"))
    (r:define %stroption (p:mk-str "option"))
    (r:define %strList (p:mk-str "List"))
    (r:define %strEq (p:mk-str "Eq"))
    (r:define %strinorder (p:mk-str "inorder"))
    (r:define %str_and (p:mk-str "_and"))
    (r:define %strequiv (p:mk-str "equiv"))
    (r:define %num0 (p:mk-num 0))
    (r:define %strempty (p:mk-str "empty"))
    (r:define %strh (p:mk-str "h"))
    (r:define %strright (p:mk-str "right"))
    (r:define %strcontains (p:mk-str "contains"))
    (r:define %strvalue (p:mk-str "value"))
    (r:define %str_lessthan (p:mk-str "_lessthan"))
    (r:define %strleft (p:mk-str "left"))
    (r:define %strinsert (p:mk-str "insert"))
    (r:define %strremove (p:mk-str "remove"))
    (r:define %strlink (p:mk-str "link"))
    (r:define %strpreorder (p:mk-str "preorder"))
    (r:define %str_plus (p:mk-str "_plus"))
    (r:define %strpostorder (p:mk-str "postorder"))
    (r:define %strleaf (p:mk-str "leaf"))
    (r:define %strdata-equals (p:mk-str "data-equals"))
    (r:define %strhas-field (p:mk-str "has-field"))
    (r:define %strtest (p:mk-str "test"))
    (r:define %strbrand (p:mk-str "brand"))
    (r:define %strextend (p:mk-str "extend"))
    (r:define %strto-list (p:mk-str "to-list"))
    (r:define %str_equals (p:mk-str "_equals"))
    (r:define %strheight (p:mk-str "height"))
    (r:define %strdata-to-repr (p:mk-str "data-to-repr"))
    (r:define %strbranch (p:mk-str "branch"))
    (r:define %strNumber (p:mk-str "Number"))
    (r:define %strAVLTree (p:mk-str "AVLTree"))
    (r:define %strguard (p:mk-str "guard"))
    (r:define %strmax (p:mk-str "max"))
    (r:define %num1 (p:mk-num 1))
    (r:define
     |%strAVL tree invariant has been broken!|
     (p:mk-str "AVL tree invariant has been broken!"))
    (r:define %str_minus (p:mk-str "_minus"))
    (r:define %strabs (p:mk-str "abs"))
    (r:define %str_lessequal (p:mk-str "_lessequal"))
    (r:define %num2 (p:mk-num 2))
    (r:define %str_greaterequal (p:mk-str "_greaterequal"))
    (r:define %str_match (p:mk-str "_match"))
    (r:define
     |%strWent too far in traversal step|
     (p:mk-str "Went too far in traversal step"))
    (r:define %strcases-miss (p:mk-str "cases-miss"))
    (r:define
     |%strcases: no cases matched|
     (p:mk-str "cases: no cases matched"))
    (r:define %strlocation (p:mk-str "location"))
    (r:define
     %str/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr
     (p:mk-str
      "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"))
    (r:define %num125 (p:mk-num 125))
    (r:define %num4 (p:mk-num 4))
    (r:define
     |%strWent too far in removal step|
     (p:mk-str "Went too far in removal step"))
    (r:define %num131 (p:mk-num 131))
    (r:define |%str(Set, Set => Any)| (p:mk-str "(Set, Set => Any)"))
    (r:define %str_fun (p:mk-str "_fun"))
    (r:define %strSet (p:mk-str "Set"))
    (r:define %str_doc (p:mk-str "_doc"))
    (r:define %strfold (p:mk-str "fold"))
    (r:define %stradd (p:mk-str "add"))
    (r:define %strmember (p:mk-str "member"))
    (r:define %strunion (p:mk-str "union"))
    (r:define %strdifference (p:mk-str "difference"))
    (r:define %strintersect (p:mk-str "intersect"))
    (r:define %strsort (p:mk-str "sort"))
    (r:define %strelems (p:mk-str "elems"))
    (r:define %strfilter (p:mk-str "filter"))
    (r:define %str_not (p:mk-str "_not"))
    (r:define %strlist-set (p:mk-str "list-set"))
    (r:define %strsymmetric_difference (p:mk-str "symmetric_difference"))
    (r:define %strtree-set (p:mk-str "tree-set"))
    (r:define
     |%strTree-based sets can only contain elements that have a '_lessthan' method. |
     (p:mk-str
      "Tree-based sets can only contain elements that have a '_lessthan' method. "))
    (r:define
     |%strMost builtin data types, like strings and numbers have one, |
     (p:mk-str "Most builtin data types, like strings and numbers have one, "))
    (r:define
     |%strbut user defined data types do not unless you give them one. |
     (p:mk-str
      "but user defined data types do not unless you give them one. "))
    (r:define
     |%strThe datum encountered was: |
     (p:mk-str "The datum encountered was: "))
    (r:define
     list
     (p:get-field
      (r:list
       "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
       12
       7
       184
       6)
      M
      "list"))
    (r:define
     error
     (p:get-field
      (r:list
       "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
       13
       8
       199
       7)
      M
      "error"))
    (r:define
     builtins
     (p:get-field
      (r:list
       "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
       14
       11
       218
       10)
      M
      "builtins"))
    (r:define
     checkers
     (p:get-field
      (r:list
       "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
       15
       11
       240
       10)
      M
      "checkers"))
    (r:define
     option
     (p:get-field
      (r:list
       "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
       16
       9
       260
       8)
      M
      "option"))
    (r:define
     List
     (p:get-field
      (r:list
       "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
       17
       7
       276
       9)
      list
      "List"))
    (r:define
     AVLTree-mixins298770
     (p:get-field
      (r:list
       "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
       21
       0
       295
       1802)
      builtins
      "Eq"))
    (r:define
     data-shared298771
     (p:mk-object
      (p:make-string-map
       (r:list
        (r:cons
         "to-list"
         (p:pμ
          (self)
          ""
          (r:with-continuation-mark
           (r:quote pyret-mark)
           (r:srcloc
            "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
            59
            2
            1962
            41)
           (r:let
            ()
            (r:with-continuation-mark
             (r:quote pyret-mark)
             (r:srcloc
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              59
              25
              1985
              14)
             (r:let*
              ((%obj self)
               (%field
                (p:get-raw-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  59
                  25
                  1985
                  14)
                 %obj
                 "inorder")))
              ((p:p-base-method %field) %obj)))))))
        (r:cons
         "_equals"
         (p:pμ
          (self other)
          ""
          (r:with-continuation-mark
           (r:quote pyret-mark)
           (r:srcloc
            "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
            60
            2
            2007
            86)
           (r:let
            ()
            (r:with-continuation-mark
             (r:quote pyret-mark)
             (r:srcloc
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              61
              4
              2033
              54)
             (r:let*
              ((%obj
                (r:with-continuation-mark
                 (r:quote pyret-mark)
                 (r:srcloc
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  61
                  4
                  2033
                  14)
                 ((p:p-base-app AVLTree) other)))
               (%field
                (p:get-raw-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  61
                  4
                  2033
                  54)
                 %obj
                 "_and"))
               (arg298900
                (p:pλ
                 ()
                 ""
                 (r:with-continuation-mark
                  (r:quote pyret-mark)
                  (r:srcloc
                   "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                   61
                   4
                   2033
                   54)
                  (r:let
                   ()
                   (r:with-continuation-mark
                    (r:quote pyret-mark)
                    (r:srcloc
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     61
                     24
                     2053
                     33)
                    (r:let*
                     ((%obj builtins)
                      (%field
                       (p:get-raw-field
                        (r:list
                         "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                         61
                         24
                         2053
                         33)
                        %obj
                        "equiv"))
                      (arg298898
                       (r:with-continuation-mark
                        (r:quote pyret-mark)
                        (r:srcloc
                         "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                         61
                         24
                         2053
                         14)
                        (r:let*
                         ((%obj self)
                          (%field
                           (p:get-raw-field
                            (r:list
                             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                             61
                             24
                             2053
                             14)
                            %obj
                            "inorder")))
                         ((p:p-base-method %field) %obj))))
                      (arg298899
                       (r:with-continuation-mark
                        (r:quote pyret-mark)
                        (r:srcloc
                         "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                         61
                         42
                         2071
                         15)
                        (r:let*
                         ((%obj other)
                          (%field
                           (p:get-raw-field
                            (r:list
                             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                             61
                             42
                             2071
                             15)
                            %obj
                            "inorder")))
                         ((p:p-base-method %field) %obj)))))
                     ((p:p-base-method %field) %obj arg298898 arg298899))))))))
              ((p:p-base-method %field) %obj arg298900)))))))))))
    (r:define
     variant298772
     (p:extend
      (r:list
       "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
       21
       0
       295
       1802)
      data-shared298771
      (r:list
       (r:cons
        "height"
        (p:pμ
         (self)
         ""
         (r:with-continuation-mark
          (r:quote pyret-mark)
          (r:srcloc
           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
           23
           6
           330
           29)
          (r:let () %num0))))
       (r:cons
        "contains"
        (p:pμ
         (self val)
         ""
         (r:with-continuation-mark
          (r:quote pyret-mark)
          (r:srcloc
           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
           24
           6
           367
           45)
          (r:let () p:p-false))))
       (r:cons
        "insert"
        (p:pμ
         (self val)
         ""
         (r:with-continuation-mark
          (r:quote pyret-mark)
          (r:srcloc
           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
           25
           6
           420
           66)
          (r:let
           ()
           (r:with-continuation-mark
            (r:quote pyret-mark)
            (r:srcloc
             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
             25
             43
             457
             25)
            (mkbranch##inline val leaf leaf))))))
       (r:cons
        "remove"
        (p:pμ
         (self val)
         ""
         (r:with-continuation-mark
          (r:quote pyret-mark)
          (r:srcloc
           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
           26
           6
           494
           45)
          (r:let () leaf))))
       (r:cons
        "preorder"
        (p:pμ
         (self)
         ""
         (r:with-continuation-mark
          (r:quote pyret-mark)
          (r:srcloc
           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
           27
           6
           547
           30)
          (r:let
           ()
           (p:get-field
            (r:list
             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
             27
             30
             571
             2)
            list
            "empty")))))
       (r:cons
        "inorder"
        (p:pμ
         (self)
         ""
         (r:with-continuation-mark
          (r:quote pyret-mark)
          (r:srcloc
           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
           28
           6
           585
           29)
          (r:let
           ()
           (p:get-field
            (r:list
             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
             28
             29
             608
             2)
            list
            "empty")))))
       (r:cons
        "postorder"
        (p:pμ
         (self)
         ""
         (r:with-continuation-mark
          (r:quote pyret-mark)
          (r:srcloc
           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
           29
           6
           622
           31)
          (r:let
           ()
           (p:get-field
            (r:list
             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
             29
             31
             647
             2)
            list
            "empty"))))))))
    (r:define
     variant298773
     (p:extend
      (r:list
       "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
       21
       0
       295
       1802)
      data-shared298771
      (r:list
       (r:cons
        "height"
        (p:pμ
         (self)
         ""
         (r:with-continuation-mark
          (r:quote pyret-mark)
          (r:srcloc
           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
           32
           6
           767
           34)
          (r:let
           ()
           (p:get-field
            (r:list
             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
             32
             30
             791
             6)
            self
            "h")))))
       (r:cons
        "contains"
        (p:pμ
         (self val)
         ""
         (r:with-continuation-mark
          (r:quote pyret-mark)
          (r:srcloc
           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
           33
           6
           809
           189)
          (r:let
           ()
           (r:cond
            ((p:pyret-true?
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                34
                11
                856
                17)
               (r:let*
                ((%obj builtins)
                 (%field
                  (p:get-raw-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    34
                    11
                    856
                    17)
                   %obj
                   "equiv"))
                 (arg298901 val)
                 (arg298902
                  (p:get-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    34
                    18
                    863
                    10)
                   self
                   "value")))
                ((p:p-base-method %field) %obj arg298901 arg298902))))
             (r:let () p:p-true))
            ((p:pyret-true?
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                35
                16
                896
                16)
               (r:let*
                ((%obj val)
                 (%field
                  (p:get-raw-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    35
                    16
                    896
                    16)
                   %obj
                   "_lessthan"))
                 (arg298903
                  (p:get-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    35
                    22
                    902
                    10)
                   self
                   "value")))
                ((p:p-base-method %field) %obj arg298903))))
             (r:let
              ()
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                35
                34
                914
                23)
               (r:let*
                ((%obj
                  (p:get-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    35
                    34
                    914
                    9)
                   self
                   "left"))
                 (%field
                  (p:get-raw-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    35
                    34
                    914
                    23)
                   %obj
                   "contains"))
                 (arg298904 val))
                ((p:p-base-method %field) %obj arg298904)))))
            (#t
             (r:let
              ()
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                36
                14
                952
                24)
               (r:let*
                ((%obj
                  (p:get-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    36
                    14
                    952
                    10)
                   self
                   "right"))
                 (%field
                  (p:get-raw-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    36
                    14
                    952
                    24)
                   %obj
                   "contains"))
                 (arg298905 val))
                ((p:p-base-method %field) %obj arg298905))))))))))
       (r:cons
        "insert"
        (p:pμ
         (self val)
         ""
         (r:with-continuation-mark
          (r:quote pyret-mark)
          (r:srcloc
           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
           39
           6
           1006
           327)
          (r:let
           ()
           (r:cond
            ((p:pyret-true?
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                40
                11
                1054
                17)
               (r:let*
                ((%obj builtins)
                 (%field
                  (p:get-raw-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    40
                    11
                    1054
                    17)
                   %obj
                   "equiv"))
                 (arg298906 val)
                 (arg298907
                  (p:get-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    40
                    18
                    1061
                    10)
                   self
                   "value")))
                ((p:p-base-method %field) %obj arg298906 arg298907))))
             (r:let
              ()
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                40
                30
                1073
                36)
               (mkbranch##inline
                val
                (p:get-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  40
                  44
                  1087
                  9)
                 self
                 "left")
                (p:get-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  40
                  55
                  1098
                  10)
                 self
                 "right")))))
            ((p:pyret-true?
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                41
                16
                1126
                16)
               (r:let*
                ((%obj val)
                 (%field
                  (p:get-raw-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    41
                    16
                    1126
                    16)
                   %obj
                   "_lessthan"))
                 (arg298908
                  (p:get-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    41
                    22
                    1132
                    10)
                   self
                   "value")))
                ((p:p-base-method %field) %obj arg298908))))
             (r:let
              ()
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                42
                10
                1154
                66)
               (rebalance##inline
                (r:with-continuation-mark
                 (r:quote pyret-mark)
                 (r:srcloc
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  42
                  20
                  1164
                  55)
                 (mkbranch##inline
                  (p:get-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    42
                    29
                    1173
                    10)
                   self
                   "value")
                  (r:with-continuation-mark
                   (r:quote pyret-mark)
                   (r:srcloc
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    42
                    41
                    1185
                    21)
                   (r:let*
                    ((%obj
                      (p:get-field
                       (r:list
                        "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                        42
                        41
                        1185
                        9)
                       self
                       "left"))
                     (%field
                      (p:get-raw-field
                       (r:list
                        "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                        42
                        41
                        1185
                        21)
                       %obj
                       "insert"))
                     (arg298909 val))
                    ((p:p-base-method %field) %obj arg298909)))
                  (p:get-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    42
                    64
                    1208
                    10)
                   self
                   "right")))))))
            (#t
             (r:let
              ()
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                44
                10
                1245
                66)
               (rebalance##inline
                (r:with-continuation-mark
                 (r:quote pyret-mark)
                 (r:srcloc
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  44
                  20
                  1255
                  55)
                 (mkbranch##inline
                  (p:get-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    44
                    29
                    1264
                    10)
                   self
                   "value")
                  (p:get-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    44
                    41
                    1276
                    9)
                   self
                   "left")
                  (r:with-continuation-mark
                   (r:quote pyret-mark)
                   (r:srcloc
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    44
                    52
                    1287
                    22)
                   (r:let*
                    ((%obj
                      (p:get-field
                       (r:list
                        "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                        44
                        52
                        1287
                        10)
                       self
                       "right"))
                     (%field
                      (p:get-raw-field
                       (r:list
                        "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                        44
                        52
                        1287
                        22)
                       %obj
                       "insert"))
                     (arg298910 val))
                    ((p:p-base-method %field) %obj arg298910))))))))))))))
       (r:cons
        "remove"
        (p:pμ
         (self val)
         ""
         (r:with-continuation-mark
          (r:quote pyret-mark)
          (r:srcloc
           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
           47
           6
           1341
           308)
          (r:let
           ()
           (r:cond
            ((p:pyret-true?
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                48
                11
                1389
                17)
               (r:let*
                ((%obj builtins)
                 (%field
                  (p:get-raw-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    48
                    11
                    1389
                    17)
                   %obj
                   "equiv"))
                 (arg298911 val)
                 (arg298912
                  (p:get-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    48
                    18
                    1396
                    10)
                   self
                   "value")))
                ((p:p-base-method %field) %obj arg298911 arg298912))))
             (r:let
              ()
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                48
                30
                1408
                17)
               (remove-root##inline self))))
            ((p:pyret-true?
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                49
                16
                1442
                16)
               (r:let*
                ((%obj val)
                 (%field
                  (p:get-raw-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    49
                    16
                    1442
                    16)
                   %obj
                   "_lessthan"))
                 (arg298913
                  (p:get-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    49
                    22
                    1448
                    10)
                   self
                   "value")))
                ((p:p-base-method %field) %obj arg298913))))
             (r:let
              ()
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                50
                10
                1470
                66)
               (rebalance##inline
                (r:with-continuation-mark
                 (r:quote pyret-mark)
                 (r:srcloc
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  50
                  20
                  1480
                  55)
                 (mkbranch##inline
                  (p:get-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    50
                    29
                    1489
                    10)
                   self
                   "value")
                  (r:with-continuation-mark
                   (r:quote pyret-mark)
                   (r:srcloc
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    50
                    41
                    1501
                    21)
                   (r:let*
                    ((%obj
                      (p:get-field
                       (r:list
                        "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                        50
                        41
                        1501
                        9)
                       self
                       "left"))
                     (%field
                      (p:get-raw-field
                       (r:list
                        "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                        50
                        41
                        1501
                        21)
                       %obj
                       "remove"))
                     (arg298914 val))
                    ((p:p-base-method %field) %obj arg298914)))
                  (p:get-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    50
                    64
                    1524
                    10)
                   self
                   "right")))))))
            (#t
             (r:let
              ()
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                52
                10
                1561
                66)
               (rebalance##inline
                (r:with-continuation-mark
                 (r:quote pyret-mark)
                 (r:srcloc
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  52
                  20
                  1571
                  55)
                 (mkbranch##inline
                  (p:get-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    52
                    29
                    1580
                    10)
                   self
                   "value")
                  (p:get-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    52
                    41
                    1592
                    9)
                   self
                   "left")
                  (r:with-continuation-mark
                   (r:quote pyret-mark)
                   (r:srcloc
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    52
                    52
                    1603
                    22)
                   (r:let*
                    ((%obj
                      (p:get-field
                       (r:list
                        "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                        52
                        52
                        1603
                        10)
                       self
                       "right"))
                     (%field
                      (p:get-raw-field
                       (r:list
                        "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                        52
                        52
                        1603
                        22)
                       %obj
                       "remove"))
                     (arg298915 val))
                    ((p:p-base-method %field) %obj arg298915))))))))))))))
       (r:cons
        "preorder"
        (p:pμ
         (self)
         ""
         (r:with-continuation-mark
          (r:quote pyret-mark)
          (r:srcloc
           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
           55
           6
           1657
           95)
          (r:let
           ()
           (r:with-continuation-mark
            (r:quote pyret-mark)
            (r:srcloc
             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
             55
             30
             1681
             67)
            (r:let*
             ((%obj list)
              (%field
               (p:get-raw-field
                (r:list
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 55
                 30
                 1681
                 67)
                %obj
                "link"))
              (arg298917
               (p:get-field
                (r:list
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 55
                 40
                 1691
                 10)
                self
                "value"))
              (arg298918
               (r:with-continuation-mark
                (r:quote pyret-mark)
                (r:srcloc
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 55
                 52
                 1703
                 44)
                (r:let*
                 ((%obj
                   (r:with-continuation-mark
                    (r:quote pyret-mark)
                    (r:srcloc
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     55
                     52
                     1703
                     20)
                    (r:let*
                     ((%obj
                       (p:get-field
                        (r:list
                         "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                         55
                         52
                         1703
                         9)
                        self
                        "left"))
                      (%field
                       (p:get-raw-field
                        (r:list
                         "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                         55
                         52
                         1703
                         20)
                        %obj
                        "preorder")))
                     ((p:p-base-method %field) %obj))))
                  (%field
                   (p:get-raw-field
                    (r:list
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     55
                     52
                     1703
                     44)
                    %obj
                    "_plus"))
                  (arg298916
                   (r:with-continuation-mark
                    (r:quote pyret-mark)
                    (r:srcloc
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     55
                     75
                     1726
                     21)
                    (r:let*
                     ((%obj
                       (p:get-field
                        (r:list
                         "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                         55
                         75
                         1726
                         10)
                        self
                        "right"))
                      (%field
                       (p:get-raw-field
                        (r:list
                         "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                         55
                         75
                         1726
                         21)
                        %obj
                        "preorder")))
                     ((p:p-base-method %field) %obj)))))
                 ((p:p-base-method %field) %obj arg298916)))))
             ((p:p-base-method %field) %obj arg298917 arg298918)))))))
       (r:cons
        "inorder"
        (p:pμ
         (self)
         ""
         (r:with-continuation-mark
          (r:quote pyret-mark)
          (r:srcloc
           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
           56
           6
           1760
           92)
          (r:let
           ()
           (r:with-continuation-mark
            (r:quote pyret-mark)
            (r:srcloc
             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
             56
             29
             1783
             65)
            (r:let*
             ((%obj
               (r:with-continuation-mark
                (r:quote pyret-mark)
                (r:srcloc
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 56
                 29
                 1783
                 19)
                (r:let*
                 ((%obj
                   (p:get-field
                    (r:list
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     56
                     29
                     1783
                     9)
                    self
                    "left"))
                  (%field
                   (p:get-raw-field
                    (r:list
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     56
                     29
                     1783
                     19)
                    %obj
                    "inorder")))
                 ((p:p-base-method %field) %obj))))
              (%field
               (p:get-raw-field
                (r:list
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 56
                 29
                 1783
                 65)
                %obj
                "_plus"))
              (arg298921
               (r:with-continuation-mark
                (r:quote pyret-mark)
                (r:srcloc
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 56
                 51
                 1805
                 43)
                (r:let*
                 ((%obj list)
                  (%field
                   (p:get-raw-field
                    (r:list
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     56
                     51
                     1805
                     43)
                    %obj
                    "link"))
                  (arg298919
                   (p:get-field
                    (r:list
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     56
                     61
                     1815
                     10)
                    self
                    "value"))
                  (arg298920
                   (r:with-continuation-mark
                    (r:quote pyret-mark)
                    (r:srcloc
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     56
                     73
                     1827
                     20)
                    (r:let*
                     ((%obj
                       (p:get-field
                        (r:list
                         "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                         56
                         73
                         1827
                         10)
                        self
                        "right"))
                      (%field
                       (p:get-raw-field
                        (r:list
                         "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                         56
                         73
                         1827
                         20)
                        %obj
                        "inorder")))
                     ((p:p-base-method %field) %obj)))))
                 ((p:p-base-method %field) %obj arg298919 arg298920)))))
             ((p:p-base-method %field) %obj arg298921)))))))
       (r:cons
        "postorder"
        (p:pμ
         (self)
         ""
         (r:with-continuation-mark
          (r:quote pyret-mark)
          (r:srcloc
           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
           57
           6
           1860
           90)
          (r:let
           ()
           (r:with-continuation-mark
            (r:quote pyret-mark)
            (r:srcloc
             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
             57
             31
             1885
             61)
            (r:let*
             ((%obj
               (r:with-continuation-mark
                (r:quote pyret-mark)
                (r:srcloc
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 57
                 31
                 1885
                 46)
                (r:let*
                 ((%obj
                   (r:with-continuation-mark
                    (r:quote pyret-mark)
                    (r:srcloc
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     57
                     31
                     1885
                     21)
                    (r:let*
                     ((%obj
                       (p:get-field
                        (r:list
                         "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                         57
                         31
                         1885
                         9)
                        self
                        "left"))
                      (%field
                       (p:get-raw-field
                        (r:list
                         "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                         57
                         31
                         1885
                         21)
                        %obj
                        "postorder")))
                     ((p:p-base-method %field) %obj))))
                  (%field
                   (p:get-raw-field
                    (r:list
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     57
                     31
                     1885
                     46)
                    %obj
                    "_plus"))
                  (arg298922
                   (r:with-continuation-mark
                    (r:quote pyret-mark)
                    (r:srcloc
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     57
                     55
                     1909
                     22)
                    (r:let*
                     ((%obj
                       (p:get-field
                        (r:list
                         "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                         57
                         55
                         1909
                         10)
                        self
                        "right"))
                      (%field
                       (p:get-raw-field
                        (r:list
                         "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                         57
                         55
                         1909
                         22)
                        %obj
                        "postorder")))
                     ((p:p-base-method %field) %obj)))))
                 ((p:p-base-method %field) %obj arg298922))))
              (%field
               (p:get-raw-field
                (r:list
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 57
                 31
                 1885
                 61)
                %obj
                "_plus"))
              (arg298925
               (r:with-continuation-mark
                (r:quote pyret-mark)
                (r:srcloc
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 57
                 80
                 1934
                 12)
                (r:let*
                 ((%obj list)
                  (%field
                   (p:get-raw-field
                    (r:list
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     57
                     80
                     1934
                     12)
                    %obj
                    "link"))
                  (arg298923
                   (p:get-field
                    (r:list
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     57
                     81
                     1935
                     10)
                    self
                    "value"))
                  (arg298924
                   (p:get-field
                    (r:list
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     57
                     80
                     1934
                     12)
                    list
                    "empty")))
                 ((p:p-base-method %field) %obj arg298923 arg298924)))))
             ((p:p-base-method %field) %obj arg298925))))))))))
    (r:define
     AVLTree298782
     (r:with-continuation-mark
      (r:quote pyret-mark)
      (r:srcloc
       "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
       21
       0
       295
       1802)
      ((p:p-base-app brander))))
    (r:define
     leaf_base298785
     (p:mk-object
      (p:make-string-map
       (r:list
        (r:cons
         "_torepr"
         (p:pμ
          (self)
          ""
          (r:with-continuation-mark
           (r:quote pyret-mark)
           (r:srcloc
            "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
            22
            2
            311
            342)
           %strleaf)))
        (r:cons
         "_equals"
         (p:pμ
          (self other)
          ""
          (r:with-continuation-mark
           (r:quote pyret-mark)
           (r:srcloc
            "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
            22
            2
            311
            342)
           (r:with-continuation-mark
            (r:quote pyret-mark)
            (r:srcloc
             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
             22
             2
             311
             342)
            (r:let*
             ((%obj builtins)
              (%field
               (p:get-raw-field
                (r:list
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 22
                 2
                 311
                 342)
                %obj
                "data-equals"))
              (arg298926 self)
              (arg298927 other)
              (arg298928 is-leaf)
              (arg298929
               (p:get-field
                (r:list
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 22
                 2
                 311
                 342)
                list
                "empty")))
             ((p:p-base-method %field)
              %obj
              arg298926
              arg298927
              arg298928
              arg298929))))))
        (r:cons
         "_match"
         (p:pμ
          (self cases-funs else-clause)
          ""
          (r:with-continuation-mark
           (r:quote pyret-mark)
           (r:srcloc
            "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
            22
            2
            311
            342)
           (r:cond
            ((p:pyret-true?
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                22
                2
                311
                342)
               (r:let*
                ((%obj builtins)
                 (%field
                  (p:get-raw-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    22
                    2
                    311
                    342)
                   %obj
                   "has-field"))
                 (arg298930 cases-funs)
                 (arg298931 %strleaf))
                ((p:p-base-method %field) %obj arg298930 arg298931))))
             (r:let
              ()
              (r:define
               call-leaf298784
               (p:get-field
                (r:list
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 22
                 2
                 311
                 342)
                cases-funs
                "leaf"))
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                22
                2
                311
                342)
               ((p:p-base-app call-leaf298784)))))
            (#t
             (r:with-continuation-mark
              (r:quote pyret-mark)
              (r:srcloc
               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
               22
               2
               311
               342)
              ((p:p-base-app else-clause))))))))))))
    (r:define
     leaf298783
     (r:with-continuation-mark
      (r:quote pyret-mark)
      (r:srcloc
       "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
       22
       2
       311
       342)
      ((p:p-base-app brander))))
    (r:define
     is-leaf
     (p:get-field
      (r:list
       "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
       22
       2
       311
       342)
      leaf298783
      "test"))
    (r:define
     leaf
     (r:with-continuation-mark
      (r:quote pyret-mark)
      (r:srcloc
       "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
       22
       2
       311
       342)
      (r:let*
       ((%obj AVLTree298782)
        (%field
         (p:get-raw-field
          (r:list
           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
           22
           2
           311
           342)
          %obj
          "brand"))
        (arg298935
         (r:with-continuation-mark
          (r:quote pyret-mark)
          (r:srcloc
           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
           22
           2
           311
           342)
          (r:let*
           ((%obj leaf298783)
            (%field
             (p:get-raw-field
              (r:list
               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
               22
               2
               311
               342)
              %obj
              "brand"))
            (arg298934
             (r:with-continuation-mark
              (r:quote pyret-mark)
              (r:srcloc
               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
               22
               2
               311
               342)
              ((p:arity-catcher
                (self298804)
                (r:let
                 ()
                 (r:define self self298804)
                 (r:let
                  ()
                  (r:define
                   mixin298774
                   (r:cond
                    ((p:pyret-true?
                      (r:with-continuation-mark
                       (r:quote pyret-mark)
                       (r:srcloc
                        "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                        22
                        2
                        311
                        342)
                       ((p:p-base-app Function) AVLTree-mixins298770)))
                     (r:with-continuation-mark
                      (r:quote pyret-mark)
                      (r:srcloc
                       "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                       22
                       2
                       311
                       342)
                      ((p:p-base-app AVLTree-mixins298770))))
                    (#t AVLTree-mixins298770)))
                  (r:with-continuation-mark
                   (r:quote pyret-mark)
                   (r:srcloc
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    22
                    2
                    311
                    342)
                   (r:let*
                    ((%obj mixin298774)
                     (%field
                      (p:get-raw-field
                       (r:list
                        "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                        22
                        2
                        311
                        342)
                       %obj
                       "brand"))
                     (arg298933
                      (r:with-continuation-mark
                       (r:quote pyret-mark)
                       (r:srcloc
                        "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                        22
                        2
                        311
                        342)
                       (r:let*
                        ((%obj mixin298774)
                         (%field
                          (p:get-raw-field
                           (r:list
                            "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                            22
                            2
                            311
                            342)
                           %obj
                           "extend"))
                         (arg298932
                          (p:extend
                           (r:list
                            "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                            22
                            2
                            311
                            342)
                           self
                           (r:list
                            (r:cons
                             "to-list"
                             (p:get-raw-field
                              (r:list
                               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                               21
                               0
                               295
                               1802)
                              data-shared298771
                              "to-list"))
                            (r:cons
                             "_equals"
                             (p:get-raw-field
                              (r:list
                               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                               21
                               0
                               295
                               1802)
                              data-shared298771
                              "_equals"))
                            (r:cons
                             "height"
                             (p:get-raw-field
                              (r:list
                               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                               21
                               0
                               295
                               1802)
                              variant298772
                              "height"))
                            (r:cons
                             "contains"
                             (p:get-raw-field
                              (r:list
                               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                               21
                               0
                               295
                               1802)
                              variant298772
                              "contains"))
                            (r:cons
                             "insert"
                             (p:get-raw-field
                              (r:list
                               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                               21
                               0
                               295
                               1802)
                              variant298772
                              "insert"))
                            (r:cons
                             "remove"
                             (p:get-raw-field
                              (r:list
                               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                               21
                               0
                               295
                               1802)
                              variant298772
                              "remove"))
                            (r:cons
                             "preorder"
                             (p:get-raw-field
                              (r:list
                               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                               21
                               0
                               295
                               1802)
                              variant298772
                              "preorder"))
                            (r:cons
                             "inorder"
                             (p:get-raw-field
                              (r:list
                               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                               21
                               0
                               295
                               1802)
                              variant298772
                              "inorder"))
                            (r:cons
                             "postorder"
                             (p:get-raw-field
                              (r:list
                               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                               21
                               0
                               295
                               1802)
                              variant298772
                              "postorder"))))))
                        ((p:p-base-method %field) %obj arg298932)))))
                    ((p:p-base-method %field) %obj arg298933))))))
               leaf_base298785))))
           ((p:p-base-method %field) %obj arg298934)))))
       ((p:p-base-method %field) %obj arg298935))))
    (r:define
     branch_base298788
     (p:mk-object
      (p:make-string-map
       (r:list
        (r:cons
         "_torepr"
         (p:pμ
          (self)
          ""
          (r:with-continuation-mark
           (r:quote pyret-mark)
           (r:srcloc
            "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
            31
            2
            663
            1287)
           (r:with-continuation-mark
            (r:quote pyret-mark)
            (r:srcloc
             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
             31
             2
             663
             1287)
            (r:let*
             ((%obj builtins)
              (%field
               (p:get-raw-field
                (r:list
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 31
                 2
                 663
                 1287)
                %obj
                "data-to-repr"))
              (arg298944 self)
              (arg298945 %strbranch)
              (arg298946
               (r:with-continuation-mark
                (r:quote pyret-mark)
                (r:srcloc
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 31
                 2
                 663
                 1287)
                (r:let*
                 ((%obj list)
                  (%field
                   (p:get-raw-field
                    (r:list
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     31
                     2
                     663
                     1287)
                    %obj
                    "link"))
                  (arg298942 %strvalue)
                  (arg298943
                   (r:with-continuation-mark
                    (r:quote pyret-mark)
                    (r:srcloc
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     31
                     2
                     663
                     1287)
                    (r:let*
                     ((%obj list)
                      (%field
                       (p:get-raw-field
                        (r:list
                         "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                         31
                         2
                         663
                         1287)
                        %obj
                        "link"))
                      (arg298940 %strh)
                      (arg298941
                       (r:with-continuation-mark
                        (r:quote pyret-mark)
                        (r:srcloc
                         "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                         31
                         2
                         663
                         1287)
                        (r:let*
                         ((%obj list)
                          (%field
                           (p:get-raw-field
                            (r:list
                             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                             31
                             2
                             663
                             1287)
                            %obj
                            "link"))
                          (arg298938 %strleft)
                          (arg298939
                           (r:with-continuation-mark
                            (r:quote pyret-mark)
                            (r:srcloc
                             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                             31
                             2
                             663
                             1287)
                            (r:let*
                             ((%obj list)
                              (%field
                               (p:get-raw-field
                                (r:list
                                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                 31
                                 2
                                 663
                                 1287)
                                %obj
                                "link"))
                              (arg298936 %strright)
                              (arg298937
                               (p:get-field
                                (r:list
                                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                 31
                                 2
                                 663
                                 1287)
                                list
                                "empty")))
                             ((p:p-base-method %field)
                              %obj
                              arg298936
                              arg298937)))))
                         ((p:p-base-method %field)
                          %obj
                          arg298938
                          arg298939)))))
                     ((p:p-base-method %field) %obj arg298940 arg298941)))))
                 ((p:p-base-method %field) %obj arg298942 arg298943)))))
             ((p:p-base-method %field) %obj arg298944 arg298945 arg298946))))))
        (r:cons
         "_equals"
         (p:pμ
          (self other)
          ""
          (r:with-continuation-mark
           (r:quote pyret-mark)
           (r:srcloc
            "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
            31
            2
            663
            1287)
           (r:with-continuation-mark
            (r:quote pyret-mark)
            (r:srcloc
             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
             31
             2
             663
             1287)
            (r:let*
             ((%obj builtins)
              (%field
               (p:get-raw-field
                (r:list
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 31
                 2
                 663
                 1287)
                %obj
                "data-equals"))
              (arg298955 self)
              (arg298956 other)
              (arg298957 is-branch)
              (arg298958
               (r:with-continuation-mark
                (r:quote pyret-mark)
                (r:srcloc
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 31
                 2
                 663
                 1287)
                (r:let*
                 ((%obj list)
                  (%field
                   (p:get-raw-field
                    (r:list
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     31
                     2
                     663
                     1287)
                    %obj
                    "link"))
                  (arg298953 %strvalue)
                  (arg298954
                   (r:with-continuation-mark
                    (r:quote pyret-mark)
                    (r:srcloc
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     31
                     2
                     663
                     1287)
                    (r:let*
                     ((%obj list)
                      (%field
                       (p:get-raw-field
                        (r:list
                         "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                         31
                         2
                         663
                         1287)
                        %obj
                        "link"))
                      (arg298951 %strh)
                      (arg298952
                       (r:with-continuation-mark
                        (r:quote pyret-mark)
                        (r:srcloc
                         "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                         31
                         2
                         663
                         1287)
                        (r:let*
                         ((%obj list)
                          (%field
                           (p:get-raw-field
                            (r:list
                             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                             31
                             2
                             663
                             1287)
                            %obj
                            "link"))
                          (arg298949 %strleft)
                          (arg298950
                           (r:with-continuation-mark
                            (r:quote pyret-mark)
                            (r:srcloc
                             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                             31
                             2
                             663
                             1287)
                            (r:let*
                             ((%obj list)
                              (%field
                               (p:get-raw-field
                                (r:list
                                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                 31
                                 2
                                 663
                                 1287)
                                %obj
                                "link"))
                              (arg298947 %strright)
                              (arg298948
                               (p:get-field
                                (r:list
                                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                 31
                                 2
                                 663
                                 1287)
                                list
                                "empty")))
                             ((p:p-base-method %field)
                              %obj
                              arg298947
                              arg298948)))))
                         ((p:p-base-method %field)
                          %obj
                          arg298949
                          arg298950)))))
                     ((p:p-base-method %field) %obj arg298951 arg298952)))))
                 ((p:p-base-method %field) %obj arg298953 arg298954)))))
             ((p:p-base-method %field)
              %obj
              arg298955
              arg298956
              arg298957
              arg298958))))))
        (r:cons
         "_match"
         (p:pμ
          (self cases-funs else-clause)
          ""
          (r:with-continuation-mark
           (r:quote pyret-mark)
           (r:srcloc
            "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
            31
            2
            663
            1287)
           (r:cond
            ((p:pyret-true?
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                31
                2
                663
                1287)
               (r:let*
                ((%obj builtins)
                 (%field
                  (p:get-raw-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    31
                    2
                    663
                    1287)
                   %obj
                   "has-field"))
                 (arg298959 cases-funs)
                 (arg298960 %strbranch))
                ((p:p-base-method %field) %obj arg298959 arg298960))))
             (r:let
              ()
              (r:define
               call-branch298786
               (p:get-field
                (r:list
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 31
                 2
                 663
                 1287)
                cases-funs
                "branch"))
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                31
                2
                663
                1287)
               ((p:p-base-app call-branch298786)
                (p:get-mutable-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  31
                  2
                  663
                  1287)
                 self
                 "value")
                (p:get-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  31
                  2
                  663
                  1287)
                 self
                 "h")
                (p:get-mutable-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  31
                  2
                  663
                  1287)
                 self
                 "left")
                (p:get-mutable-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  31
                  2
                  663
                  1287)
                 self
                 "right")))))
            (#t
             (r:with-continuation-mark
              (r:quote pyret-mark)
              (r:srcloc
               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
               31
               2
               663
               1287)
              ((p:p-base-app else-clause))))))))))))
    (r:define
     branch298787
     (r:with-continuation-mark
      (r:quote pyret-mark)
      (r:srcloc
       "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
       31
       2
       663
       1287)
      ((p:p-base-app brander))))
    (r:define
     is-branch
     (p:get-field
      (r:list
       "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
       31
       2
       663
       1287)
      branch298787
      "test"))
    (r:define
     branch##inline
     (p:arity-catcher
      (value298789298805 h298790298806 left298791298807 right298792298808)
      (r:let
       ()
       (r:define value298789 value298789298805)
       (r:define
        h298790
        (r:with-continuation-mark
         (r:quote pyret-mark)
         (r:srcloc
          "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
          31
          32
          693
          11)
         ((p:arity-catcher
           (specimen298814)
           (r:let
            ()
            (r:with-continuation-mark
             (r:quote pyret-mark)
             (r:srcloc
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              31
              32
              693
              11)
             ((p:p-base-app check-brand) Number specimen298814 %strNumber))))
          h298790298806)))
       (r:define left298791 left298791298807)
       (r:define right298792 right298792298808)
       (r:let
        ()
        (r:with-continuation-mark
         (r:quote pyret-mark)
         (r:srcloc
          "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
          31
          2
          663
          1287)
         (r:let*
          ((%obj AVLTree298782)
           (%field
            (p:get-raw-field
             (r:list
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              31
              2
              663
              1287)
             %obj
             "brand"))
           (arg298966
            (r:with-continuation-mark
             (r:quote pyret-mark)
             (r:srcloc
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              31
              2
              663
              1287)
             (r:let*
              ((%obj branch298787)
               (%field
                (p:get-raw-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  31
                  2
                  663
                  1287)
                 %obj
                 "brand"))
               (arg298965
                (r:with-continuation-mark
                 (r:quote pyret-mark)
                 (r:srcloc
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  31
                  2
                  663
                  1287)
                 ((p:arity-catcher
                   (self298809)
                   (r:let
                    ()
                    (r:define self self298809)
                    (r:let
                     ()
                     (r:define
                      mixin298775
                      (r:cond
                       ((p:pyret-true?
                         (r:with-continuation-mark
                          (r:quote pyret-mark)
                          (r:srcloc
                           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                           31
                           2
                           663
                           1287)
                          ((p:p-base-app Function) AVLTree-mixins298770)))
                        (r:with-continuation-mark
                         (r:quote pyret-mark)
                         (r:srcloc
                          "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                          31
                          2
                          663
                          1287)
                         ((p:p-base-app AVLTree-mixins298770))))
                       (#t AVLTree-mixins298770)))
                     (r:with-continuation-mark
                      (r:quote pyret-mark)
                      (r:srcloc
                       "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                       31
                       2
                       663
                       1287)
                      (r:let*
                       ((%obj mixin298775)
                        (%field
                         (p:get-raw-field
                          (r:list
                           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                           31
                           2
                           663
                           1287)
                          %obj
                          "brand"))
                        (arg298962
                         (r:with-continuation-mark
                          (r:quote pyret-mark)
                          (r:srcloc
                           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                           31
                           2
                           663
                           1287)
                          (r:let*
                           ((%obj mixin298775)
                            (%field
                             (p:get-raw-field
                              (r:list
                               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                               31
                               2
                               663
                               1287)
                              %obj
                              "extend"))
                            (arg298961
                             (p:extend
                              (r:list
                               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                               31
                               2
                               663
                               1287)
                              self
                              (r:list
                               (r:cons
                                "to-list"
                                (p:get-raw-field
                                 (r:list
                                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                  21
                                  0
                                  295
                                  1802)
                                 data-shared298771
                                 "to-list"))
                               (r:cons
                                "_equals"
                                (p:get-raw-field
                                 (r:list
                                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                  21
                                  0
                                  295
                                  1802)
                                 data-shared298771
                                 "_equals"))
                               (r:cons
                                "height"
                                (p:get-raw-field
                                 (r:list
                                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                  21
                                  0
                                  295
                                  1802)
                                 variant298773
                                 "height"))
                               (r:cons
                                "contains"
                                (p:get-raw-field
                                 (r:list
                                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                  21
                                  0
                                  295
                                  1802)
                                 variant298773
                                 "contains"))
                               (r:cons
                                "insert"
                                (p:get-raw-field
                                 (r:list
                                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                  21
                                  0
                                  295
                                  1802)
                                 variant298773
                                 "insert"))
                               (r:cons
                                "remove"
                                (p:get-raw-field
                                 (r:list
                                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                  21
                                  0
                                  295
                                  1802)
                                 variant298773
                                 "remove"))
                               (r:cons
                                "preorder"
                                (p:get-raw-field
                                 (r:list
                                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                  21
                                  0
                                  295
                                  1802)
                                 variant298773
                                 "preorder"))
                               (r:cons
                                "inorder"
                                (p:get-raw-field
                                 (r:list
                                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                  21
                                  0
                                  295
                                  1802)
                                 variant298773
                                 "inorder"))
                               (r:cons
                                "postorder"
                                (p:get-raw-field
                                 (r:list
                                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                  21
                                  0
                                  295
                                  1802)
                                 variant298773
                                 "postorder"))))))
                           ((p:p-base-method %field) %obj arg298961)))))
                       ((p:p-base-method %field) %obj arg298962))))))
                  (p:extend
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    31
                    2
                    663
                    1287)
                   branch_base298788
                   (r:list
                    (r:cons "value" value298789)
                    (r:cons "h" h298790)
                    (r:cons
                     "left"
                     (r:let
                      ()
                      (r:define maybe-placeholder298811 left298791)
                      (r:cond
                       ((p:pyret-true?
                         (r:with-continuation-mark
                          (r:quote pyret-mark)
                          (r:srcloc
                           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                           31
                           52
                           713
                           15)
                          ((p:p-base-app Placeholder)
                           maybe-placeholder298811)))
                        (r:let
                         ()
                         (r:with-continuation-mark
                          (r:quote pyret-mark)
                          (r:srcloc
                           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                           31
                           52
                           713
                           15)
                          (r:let*
                           ((%obj maybe-placeholder298811)
                            (%field
                             (p:get-raw-field
                              (r:list
                               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                               31
                               52
                               713
                               15)
                              %obj
                              "guard"))
                            (arg298963
                             (p:pλ
                              (specimen298810)
                              "internal contract for AVLTree"
                              (r:with-continuation-mark
                               (r:quote pyret-mark)
                               (r:srcloc
                                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                31
                                52
                                713
                                15)
                               (r:let
                                ()
                                (r:with-continuation-mark
                                 (r:quote pyret-mark)
                                 (r:srcloc
                                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                  31
                                  52
                                  713
                                  15)
                                 ((p:p-base-app check-brand)
                                  AVLTree
                                  specimen298810
                                  %strAVLTree)))))))
                           ((p:p-base-method %field) %obj arg298963)))
                         maybe-placeholder298811))
                       (#t
                        (r:let
                         ()
                         (r:with-continuation-mark
                          (r:quote pyret-mark)
                          (r:srcloc
                           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                           31
                           52
                           713
                           15)
                          ((p:arity-catcher
                            (specimen298810)
                            (r:let
                             ()
                             (r:with-continuation-mark
                              (r:quote pyret-mark)
                              (r:srcloc
                               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                               31
                               52
                               713
                               15)
                              ((p:p-base-app check-brand)
                               AVLTree
                               specimen298810
                               %strAVLTree))))
                           maybe-placeholder298811)))))))
                    (r:cons
                     "right"
                     (r:let
                      ()
                      (r:define maybe-placeholder298813 right298792)
                      (r:cond
                       ((p:pyret-true?
                         (r:with-continuation-mark
                          (r:quote pyret-mark)
                          (r:srcloc
                           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                           31
                           76
                           737
                           16)
                          ((p:p-base-app Placeholder)
                           maybe-placeholder298813)))
                        (r:let
                         ()
                         (r:with-continuation-mark
                          (r:quote pyret-mark)
                          (r:srcloc
                           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                           31
                           76
                           737
                           16)
                          (r:let*
                           ((%obj maybe-placeholder298813)
                            (%field
                             (p:get-raw-field
                              (r:list
                               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                               31
                               76
                               737
                               16)
                              %obj
                              "guard"))
                            (arg298964
                             (p:pλ
                              (specimen298812)
                              "internal contract for AVLTree"
                              (r:with-continuation-mark
                               (r:quote pyret-mark)
                               (r:srcloc
                                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                31
                                76
                                737
                                16)
                               (r:let
                                ()
                                (r:with-continuation-mark
                                 (r:quote pyret-mark)
                                 (r:srcloc
                                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                  31
                                  76
                                  737
                                  16)
                                 ((p:p-base-app check-brand)
                                  AVLTree
                                  specimen298812
                                  %strAVLTree)))))))
                           ((p:p-base-method %field) %obj arg298964)))
                         maybe-placeholder298813))
                       (#t
                        (r:let
                         ()
                         (r:with-continuation-mark
                          (r:quote pyret-mark)
                          (r:srcloc
                           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                           31
                           76
                           737
                           16)
                          ((p:arity-catcher
                            (specimen298812)
                            (r:let
                             ()
                             (r:with-continuation-mark
                              (r:quote pyret-mark)
                              (r:srcloc
                               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                               31
                               76
                               737
                               16)
                              ((p:p-base-app check-brand)
                               AVLTree
                               specimen298812
                               %strAVLTree))))
                           maybe-placeholder298813)))))))))))))
              ((p:p-base-method %field) %obj arg298965)))))
          ((p:p-base-method %field) %obj arg298966)))))))
    (r:define
     branch
     (p:pλ
      (value298789298805 h298790298806 left298791298807 right298792298808)
      "branch: Creates an instance of branch"
      (branch##inline
       value298789298805
       h298790298806
       left298791298807
       right298792298808)))
    (r:define
     AVLTree
     (p:get-field
      (r:list
       "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
       21
       0
       295
       1802)
      AVLTree298782
      "test"))
    (r:define
     mkbranch##inline
     (p:arity-catcher
      (val298815 left298816 right298817)
      (r:let
       ()
       (r:define val val298815)
       (r:define
        left
        (r:with-continuation-mark
         (r:quote pyret-mark)
         (r:srcloc
          "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
          65
          25
          2124
          15)
         ((p:arity-catcher
           (specimen298818)
           (r:let
            ()
            (r:with-continuation-mark
             (r:quote pyret-mark)
             (r:srcloc
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              65
              25
              2124
              15)
             ((p:p-base-app check-brand) AVLTree specimen298818 %strAVLTree))))
          left298816)))
       (r:define
        right
        (r:with-continuation-mark
         (r:quote pyret-mark)
         (r:srcloc
          "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
          65
          42
          2141
          16)
         ((p:arity-catcher
           (specimen298819)
           (r:let
            ()
            (r:with-continuation-mark
             (r:quote pyret-mark)
             (r:srcloc
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              65
              42
              2141
              16)
             ((p:p-base-app check-brand) AVLTree specimen298819 %strAVLTree))))
          right298817)))
       (r:let
        ()
        (r:with-continuation-mark
         (r:quote pyret-mark)
         (r:srcloc
          "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
          66
          2
          2162
          63)
         (branch##inline
          val
          (r:with-continuation-mark
           (r:quote pyret-mark)
           (r:srcloc
            "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
            66
            14
            2174
            37)
           (r:let*
            ((%obj
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                66
                14
                2174
                33)
               (r:let*
                ((%obj
                  (r:with-continuation-mark
                   (r:quote pyret-mark)
                   (r:srcloc
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    66
                    14
                    2174
                    13)
                   (r:let*
                    ((%obj left)
                     (%field
                      (p:get-raw-field
                       (r:list
                        "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                        66
                        14
                        2174
                        13)
                       %obj
                       "height")))
                    ((p:p-base-method %field) %obj))))
                 (%field
                  (p:get-raw-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    66
                    14
                    2174
                    33)
                   %obj
                   "max"))
                 (arg298967
                  (r:with-continuation-mark
                   (r:quote pyret-mark)
                   (r:srcloc
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    66
                    32
                    2192
                    14)
                   (r:let*
                    ((%obj right)
                     (%field
                      (p:get-raw-field
                       (r:list
                        "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                        66
                        32
                        2192
                        14)
                       %obj
                       "height")))
                    ((p:p-base-method %field) %obj)))))
                ((p:p-base-method %field) %obj arg298967))))
             (%field
              (p:get-raw-field
               (r:list
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                66
                14
                2174
                37)
               %obj
               "_plus"))
             (arg298968 %num1))
            ((p:p-base-method %field) %obj arg298968)))
          left
          right))))))
    (r:define
     mkbranch
     (p:pλ
      (val298815 left298816 right298817)
      ""
      (mkbranch##inline val298815 left298816 right298817)))
    (r:define
     rebalance##inline
     (p:arity-catcher
      (tree298820)
      (r:let
       ()
       (r:define
        tree
        (r:with-continuation-mark
         (r:quote pyret-mark)
         (r:srcloc
          "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
          69
          14
          2245
          15)
         ((p:arity-catcher
           (specimen298825)
           (r:let
            ()
            (r:with-continuation-mark
             (r:quote pyret-mark)
             (r:srcloc
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              69
              14
              2245
              15)
             ((p:p-base-app check-brand) AVLTree specimen298825 %strAVLTree))))
          tree298820)))
       (r:let
        ()
        (r:define
         left-left##inline
         (p:arity-catcher
          (t298821)
          (r:let
           ()
           (r:define t t298821)
           (r:let
            ()
            (r:with-continuation-mark
             (r:quote pyret-mark)
             (r:srcloc
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              71
              4
              2287
              77)
             (mkbranch##inline
              (p:get-field
               (r:list
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                71
                13
                2296
                12)
               (p:get-field
                (r:list
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 71
                 13
                 2296
                 6)
                t
                "left")
               "value")
              (p:get-field
               (r:list
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                71
                27
                2310
                11)
               (p:get-field
                (r:list
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 71
                 27
                 2310
                 6)
                t
                "left")
               "left")
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                71
                40
                2323
                40)
               (mkbranch##inline
                (p:get-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  71
                  49
                  2332
                  7)
                 t
                 "value")
                (p:get-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  71
                  58
                  2341
                  12)
                 (p:get-field
                  (r:list
                   "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                   71
                   58
                   2341
                   6)
                  t
                  "left")
                 "right")
                (p:get-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  71
                  72
                  2355
                  7)
                 t
                 "right")))))))))
        (r:define left-left (p:pλ (t298821) "" (left-left##inline t298821)))
        (r:define
         right-right##inline
         (p:arity-catcher
          (t298822)
          (r:let
           ()
           (r:define t t298822)
           (r:let
            ()
            (r:with-continuation-mark
             (r:quote pyret-mark)
             (r:srcloc
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              74
              4
              2397
              79)
             (mkbranch##inline
              (p:get-field
               (r:list
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                74
                13
                2406
                13)
               (p:get-field
                (r:list
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 74
                 13
                 2406
                 7)
                t
                "right")
               "value")
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                74
                28
                2421
                39)
               (mkbranch##inline
                (p:get-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  74
                  37
                  2430
                  7)
                 t
                 "value")
                (p:get-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  74
                  46
                  2439
                  6)
                 t
                 "left")
                (p:get-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  74
                  54
                  2447
                  12)
                 (p:get-field
                  (r:list
                   "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                   74
                   54
                   2447
                   7)
                  t
                  "right")
                 "left")))
              (p:get-field
               (r:list
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                74
                69
                2462
                13)
               (p:get-field
                (r:list
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 74
                 69
                 2462
                 7)
                t
                "right")
               "right")))))))
        (r:define
         right-right
         (p:pλ (t298822) "" (right-right##inline t298822)))
        (r:define
         left-right##inline
         (p:arity-catcher
          (t298823)
          (r:let
           ()
           (r:define t t298823)
           (r:let
            ()
            (r:with-continuation-mark
             (r:quote pyret-mark)
             (r:srcloc
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              77
              4
              2508
              158)
             (mkbranch##inline
              (p:get-field
               (r:list
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                77
                13
                2517
                18)
               (p:get-field
                (r:list
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 77
                 13
                 2517
                 12)
                (p:get-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  77
                  13
                  2517
                  6)
                 t
                 "left")
                "right")
               "value")
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                78
                13
                2550
                54)
               (mkbranch##inline
                (p:get-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  78
                  22
                  2559
                  12)
                 (p:get-field
                  (r:list
                   "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                   78
                   22
                   2559
                   6)
                  t
                  "left")
                 "value")
                (p:get-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  78
                  36
                  2573
                  11)
                 (p:get-field
                  (r:list
                   "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                   78
                   36
                   2573
                   6)
                  t
                  "left")
                 "left")
                (p:get-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  78
                  49
                  2586
                  17)
                 (p:get-field
                  (r:list
                   "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                   78
                   49
                   2586
                   12)
                  (p:get-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    78
                    49
                    2586
                    6)
                   t
                   "left")
                  "right")
                 "left")))
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                79
                13
                2619
                46)
               (mkbranch##inline
                (p:get-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  79
                  22
                  2628
                  7)
                 t
                 "value")
                (p:get-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  79
                  31
                  2637
                  18)
                 (p:get-field
                  (r:list
                   "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                   79
                   31
                   2637
                   12)
                  (p:get-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    79
                    31
                    2637
                    6)
                   t
                   "left")
                  "right")
                 "right")
                (p:get-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  79
                  51
                  2657
                  7)
                 t
                 "right")))))))))
        (r:define left-right (p:pλ (t298823) "" (left-right##inline t298823)))
        (r:define
         right-left##inline
         (p:arity-catcher
          (t298824)
          (r:let
           ()
           (r:define t t298824)
           (r:let
            ()
            (r:with-continuation-mark
             (r:quote pyret-mark)
             (r:srcloc
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              82
              4
              2698
              160)
             (mkbranch##inline
              (p:get-field
               (r:list
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                82
                13
                2707
                18)
               (p:get-field
                (r:list
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 82
                 13
                 2707
                 12)
                (p:get-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  82
                  13
                  2707
                  7)
                 t
                 "right")
                "left")
               "value")
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                83
                13
                2740
                44)
               (mkbranch##inline
                (p:get-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  83
                  22
                  2749
                  7)
                 t
                 "value")
                (p:get-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  83
                  31
                  2758
                  6)
                 t
                 "left")
                (p:get-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  83
                  39
                  2766
                  17)
                 (p:get-field
                  (r:list
                   "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                   83
                   39
                   2766
                   12)
                  (p:get-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    83
                    39
                    2766
                    7)
                   t
                   "right")
                  "left")
                 "left")))
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                84
                13
                2799
                58)
               (mkbranch##inline
                (p:get-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  84
                  22
                  2808
                  13)
                 (p:get-field
                  (r:list
                   "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                   84
                   22
                   2808
                   7)
                  t
                  "right")
                 "value")
                (p:get-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  84
                  37
                  2823
                  18)
                 (p:get-field
                  (r:list
                   "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                   84
                   37
                   2823
                   12)
                  (p:get-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    84
                    37
                    2823
                    7)
                   t
                   "right")
                  "left")
                 "right")
                (p:get-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  84
                  57
                  2843
                  13)
                 (p:get-field
                  (r:list
                   "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                   84
                   57
                   2843
                   7)
                  t
                  "right")
                 "right")))))))))
        (r:define right-left (p:pλ (t298824) "" (right-left##inline t298824)))
        (r:define
         lh
         (r:with-continuation-mark
          (r:quote pyret-mark)
          (r:srcloc
           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
           86
           7
           2872
           18)
          (r:let*
           ((%obj
             (p:get-field
              (r:list
               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
               86
               7
               2872
               9)
              tree
              "left"))
            (%field
             (p:get-raw-field
              (r:list
               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
               86
               7
               2872
               18)
              %obj
              "height")))
           ((p:p-base-method %field) %obj))))
        (r:define
         rh
         (r:with-continuation-mark
          (r:quote pyret-mark)
          (r:srcloc
           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
           87
           7
           2898
           19)
          (r:let*
           ((%obj
             (p:get-field
              (r:list
               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
               87
               7
               2898
               10)
              tree
              "right"))
            (%field
             (p:get-raw-field
              (r:list
               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
               87
               7
               2898
               19)
              %obj
              "height")))
           ((p:p-base-method %field) %obj))))
        (r:cond
         ((p:pyret-true?
           (r:with-continuation-mark
            (r:quote pyret-mark)
            (r:srcloc
             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
             88
             4
             2922
             21)
            (r:let*
             ((%obj
               (r:with-continuation-mark
                (r:quote pyret-mark)
                (r:srcloc
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 88
                 4
                 2922
                 16)
                (r:let*
                 ((%obj
                   (r:with-continuation-mark
                    (r:quote pyret-mark)
                    (r:srcloc
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     88
                     6
                     2924
                     7)
                    (r:let*
                     ((%obj lh)
                      (%field
                       (p:get-raw-field
                        (r:list
                         "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                         88
                         6
                         2924
                         7)
                        %obj
                        "_minus"))
                      (arg298969 rh))
                     ((p:p-base-method %field) %obj arg298969))))
                  (%field
                   (p:get-raw-field
                    (r:list
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     88
                     4
                     2922
                     16)
                    %obj
                    "abs")))
                 ((p:p-base-method %field) %obj))))
              (%field
               (p:get-raw-field
                (r:list
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 88
                 4
                 2922
                 21)
                %obj
                "_lessequal"))
              (arg298970 %num1))
             ((p:p-base-method %field) %obj arg298970))))
          (r:let () tree))
         ((p:pyret-true?
           (r:with-continuation-mark
            (r:quote pyret-mark)
            (r:srcloc
             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
             90
             9
             2963
             15)
            (r:let*
             ((%obj builtins)
              (%field
               (p:get-raw-field
                (r:list
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 90
                 9
                 2963
                 15)
                %obj
                "equiv"))
              (arg298972
               (r:with-continuation-mark
                (r:quote pyret-mark)
                (r:srcloc
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 90
                 11
                 2965
                 7)
                (r:let*
                 ((%obj lh)
                  (%field
                   (p:get-raw-field
                    (r:list
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     90
                     11
                     2965
                     7)
                    %obj
                    "_minus"))
                  (arg298971 rh))
                 ((p:p-base-method %field) %obj arg298971))))
              (arg298973 %num2))
             ((p:p-base-method %field) %obj arg298972 arg298973))))
          (r:let
           ()
           (r:cond
            ((p:pyret-true?
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                91
                7
                2987
                51)
               (r:let*
                ((%obj
                  (r:with-continuation-mark
                   (r:quote pyret-mark)
                   (r:srcloc
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    91
                    7
                    2987
                    23)
                   (r:let*
                    ((%obj
                      (p:get-field
                       (r:list
                        "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                        91
                        7
                        2987
                        14)
                       (p:get-field
                        (r:list
                         "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                         91
                         7
                         2987
                         9)
                        tree
                        "left")
                       "left"))
                     (%field
                      (p:get-raw-field
                       (r:list
                        "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                        91
                        7
                        2987
                        23)
                       %obj
                       "height")))
                    ((p:p-base-method %field) %obj))))
                 (%field
                  (p:get-raw-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    91
                    7
                    2987
                    51)
                   %obj
                   "_greaterequal"))
                 (arg298974
                  (r:with-continuation-mark
                   (r:quote pyret-mark)
                   (r:srcloc
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    91
                    34
                    3014
                    24)
                   (r:let*
                    ((%obj
                      (p:get-field
                       (r:list
                        "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                        91
                        34
                        3014
                        15)
                       (p:get-field
                        (r:list
                         "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                         91
                         34
                         3014
                         9)
                        tree
                        "left")
                       "right"))
                     (%field
                      (p:get-raw-field
                       (r:list
                        "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                        91
                        34
                        3014
                        24)
                       %obj
                       "height")))
                    ((p:p-base-method %field) %obj)))))
                ((p:p-base-method %field) %obj arg298974))))
             (r:let
              ()
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                92
                6
                3046
                15)
               (left-left##inline tree))))
            (#t
             (r:let
              ()
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                94
                6
                3078
                16)
               (left-right##inline tree)))))))
         ((p:pyret-true?
           (r:with-continuation-mark
            (r:quote pyret-mark)
            (r:srcloc
             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
             96
             9
             3112
             15)
            (r:let*
             ((%obj builtins)
              (%field
               (p:get-raw-field
                (r:list
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 96
                 9
                 3112
                 15)
                %obj
                "equiv"))
              (arg298976
               (r:with-continuation-mark
                (r:quote pyret-mark)
                (r:srcloc
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 96
                 11
                 3114
                 7)
                (r:let*
                 ((%obj rh)
                  (%field
                   (p:get-raw-field
                    (r:list
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     96
                     11
                     3114
                     7)
                    %obj
                    "_minus"))
                  (arg298975 lh))
                 ((p:p-base-method %field) %obj arg298975))))
              (arg298977 %num2))
             ((p:p-base-method %field) %obj arg298976 arg298977))))
          (r:let
           ()
           (r:cond
            ((p:pyret-true?
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                97
                7
                3136
                53)
               (r:let*
                ((%obj
                  (r:with-continuation-mark
                   (r:quote pyret-mark)
                   (r:srcloc
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    97
                    7
                    3136
                    25)
                   (r:let*
                    ((%obj
                      (p:get-field
                       (r:list
                        "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                        97
                        7
                        3136
                        16)
                       (p:get-field
                        (r:list
                         "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                         97
                         7
                         3136
                         10)
                        tree
                        "right")
                       "right"))
                     (%field
                      (p:get-raw-field
                       (r:list
                        "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                        97
                        7
                        3136
                        25)
                       %obj
                       "height")))
                    ((p:p-base-method %field) %obj))))
                 (%field
                  (p:get-raw-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    97
                    7
                    3136
                    53)
                   %obj
                   "_greaterequal"))
                 (arg298978
                  (r:with-continuation-mark
                   (r:quote pyret-mark)
                   (r:srcloc
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    97
                    36
                    3165
                    24)
                   (r:let*
                    ((%obj
                      (p:get-field
                       (r:list
                        "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                        97
                        36
                        3165
                        15)
                       (p:get-field
                        (r:list
                         "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                         97
                         36
                         3165
                         10)
                        tree
                        "right")
                       "left"))
                     (%field
                      (p:get-raw-field
                       (r:list
                        "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                        97
                        36
                        3165
                        24)
                       %obj
                       "height")))
                    ((p:p-base-method %field) %obj)))))
                ((p:p-base-method %field) %obj arg298978))))
             (r:let
              ()
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                98
                6
                3197
                17)
               (right-right##inline tree))))
            (#t
             (r:let
              ()
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                100
                6
                3231
                16)
               (right-left##inline tree)))))))
         (#t
          (r:let
           ()
           (r:with-continuation-mark
            (r:quote pyret-mark)
            (r:srcloc
             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
             103
             4
             3268
             44)
            ((p:p-base-app raise)
             |%strAVL tree invariant has been broken!|)))))))))
    (r:define rebalance (p:pλ (tree298820) "" (rebalance##inline tree298820)))
    (r:define
     remove-root##inline
     (p:arity-catcher
      (tree298826)
      (r:let
       ()
       (r:define
        tree
        (r:with-continuation-mark
         (r:quote pyret-mark)
         (r:srcloc
          "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
          107
          16
          3340
          15)
         ((p:arity-catcher
           (specimen298827)
           (r:let
            ()
            (r:with-continuation-mark
             (r:quote pyret-mark)
             (r:srcloc
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              107
              16
              3340
              15)
             ((p:p-base-app check-brand) AVLTree specimen298827 %strAVLTree))))
          tree298826)))
       (r:let
        ()
        (r:cond
         ((p:pyret-true?
           (r:with-continuation-mark
            (r:quote pyret-mark)
            (r:srcloc
             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
             108
             5
             3363
             18)
            ((p:p-base-app is-leaf)
             (p:get-field
              (r:list
               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
               108
               13
               3371
               9)
              tree
              "left"))))
          (r:let
           ()
           (r:cond
            ((p:pyret-true?
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                109
                7
                3390
                19)
               ((p:p-base-app is-leaf)
                (p:get-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  109
                  15
                  3398
                  10)
                 tree
                 "right"))))
             (r:let () leaf))
            (#t
             (r:let
              ()
              (p:get-field
               (r:list
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                112
                6
                3438
                10)
               tree
               "right"))))))
         (#t
          (r:let
           ()
           (r:cond
            ((p:pyret-true?
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                115
                7
                3472
                19)
               ((p:p-base-app is-leaf)
                (p:get-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  115
                  15
                  3480
                  10)
                 tree
                 "right"))))
             (r:let
              ()
              (p:get-field
               (r:list
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                116
                6
                3499
                9)
               tree
               "left")))
            (#t
             (r:let
              ()
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                118
                6
                3525
                22)
               (swap-next-lowest##inline tree))))))))))))
    (r:define
     remove-root
     (p:pλ (tree298826) "" (remove-root##inline tree298826)))
    (r:define
     swap-next-lowest##inline
     (p:arity-catcher
      (tree298828)
      (r:let
       ()
       (r:define
        tree
        (r:with-continuation-mark
         (r:quote pyret-mark)
         (r:srcloc
          "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
          123
          21
          3588
          15)
         ((p:arity-catcher
           (specimen298841)
           (r:let
            ()
            (r:with-continuation-mark
             (r:quote pyret-mark)
             (r:srcloc
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              123
              21
              3588
              15)
             ((p:p-base-app check-brand) AVLTree specimen298841 %strAVLTree))))
          tree298828)))
       (r:let
        ()
        (r:define
         greatest##inline
         (p:arity-catcher
          (t298829)
          (r:let
           ()
           (r:define t t298829)
           (r:let
            ()
            (r:define
             cases-value298793
             (r:with-continuation-mark
              (r:quote pyret-mark)
              (r:srcloc
               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
               125
               4
               3629
               162)
              ((p:arity-catcher
                (specimen298830)
                (r:let
                 ()
                 (r:with-continuation-mark
                  (r:quote pyret-mark)
                  (r:srcloc
                   "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                   125
                   4
                   3629
                   162)
                  ((p:p-base-app check-brand)
                   AVLTree
                   specimen298830
                   %strAVLTree))))
               t)))
            (r:with-continuation-mark
             (r:quote pyret-mark)
             (r:srcloc
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              125
              4
              3629
              162)
             (r:let*
              ((%obj cases-value298793)
               (%field
                (p:get-raw-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  125
                  4
                  3629
                  162)
                 %obj
                 "_match"))
               (arg298988
                (p:mk-object
                 (p:make-string-map
                  (r:list
                   (r:cons
                    "leaf"
                    (p:pλ/loc
                     ()
                     ""
                     (r:with-continuation-mark
                      (r:quote pyret-mark)
                      (r:srcloc
                       "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                       126
                       6
                       3653
                       49)
                      (r:let
                       ()
                       (r:let
                        ()
                        (r:with-continuation-mark
                         (r:quote pyret-mark)
                         (r:srcloc
                          "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                          126
                          16
                          3663
                          39)
                         ((p:p-base-app raise)
                          |%strWent too far in traversal step|)))))
                     (r:list
                      "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                      126
                      6
                      3653
                      49)))
                   (r:cons
                    "branch"
                    (p:pλ/loc
                     (_298831 _298832 _298833 right298834)
                     ""
                     (r:with-continuation-mark
                      (r:quote pyret-mark)
                      (r:srcloc
                       "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                       127
                       6
                       3709
                       74)
                      (r:let
                       ()
                       (r:define g298979 _298831)
                       (r:define g298980 _298832)
                       (r:define g298981 _298833)
                       (r:define right right298834)
                       (r:let
                        ()
                        (r:cond
                         ((p:pyret-true?
                           (r:with-continuation-mark
                            (r:quote pyret-mark)
                            (r:srcloc
                             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                             127
                             37
                             3740
                             14)
                            ((p:p-base-app is-leaf) right)))
                          (r:let () t))
                         (#t
                          (r:let
                           ()
                           (r:with-continuation-mark
                            (r:quote pyret-mark)
                            (r:srcloc
                             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                             127
                             61
                             3764
                             15)
                            (greatest##inline right))))))))
                     (r:list
                      "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                      127
                      6
                      3709
                      74)))))))
               (arg298989
                (p:pλ/loc
                 ()
                 ""
                 (r:with-continuation-mark
                  (r:quote pyret-mark)
                  (r:srcloc
                   "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                   125
                   4
                   3629
                   162)
                  (r:let
                   ()
                   (r:let
                    ()
                    (r:with-continuation-mark
                     (r:quote pyret-mark)
                     (r:srcloc
                      "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                      125
                      4
                      3629
                      162)
                     ((p:p-base-app raise)
                      (r:with-continuation-mark
                       (r:quote pyret-mark)
                       (r:srcloc
                        "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                        125
                        4
                        3629
                        162)
                       (r:let*
                        ((%obj error)
                         (%field
                          (p:get-raw-field
                           (r:list
                            "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                            125
                            4
                            3629
                            162)
                           %obj
                           "cases-miss"))
                         (arg298985 |%strcases: no cases matched|)
                         (arg298986
                          (r:with-continuation-mark
                           (r:quote pyret-mark)
                           (r:srcloc
                            "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                            125
                            4
                            3629
                            162)
                           (r:let*
                            ((%obj error)
                             (%field
                              (p:get-raw-field
                               (r:list
                                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                125
                                4
                                3629
                                162)
                               %obj
                               "location"))
                             (arg298982
                              %str/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr)
                             (arg298983 %num125)
                             (arg298984 %num4))
                            ((p:p-base-method %field)
                             %obj
                             arg298982
                             arg298983
                             arg298984))))
                         (arg298987
                          (p:get-field
                           (r:list
                            "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                            125
                            4
                            3629
                            162)
                           list
                           "empty")))
                        ((p:p-base-method %field)
                         %obj
                         arg298985
                         arg298986
                         arg298987))))))))
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  125
                  4
                  3629
                  162))))
              ((p:p-base-method %field) %obj arg298988 arg298989)))))))
        (r:define greatest (p:pλ (t298829) "" (greatest##inline t298829)))
        (r:define
         remove-greatest-and-rebalance##inline
         (p:arity-catcher
          (t298835)
          (r:let
           ()
           (r:define t t298835)
           (r:let
            ()
            (r:define
             cases-value298794
             (r:with-continuation-mark
              (r:quote pyret-mark)
              (r:srcloc
               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
               131
               4
               3842
               265)
              ((p:arity-catcher
                (specimen298836)
                (r:let
                 ()
                 (r:with-continuation-mark
                  (r:quote pyret-mark)
                  (r:srcloc
                   "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                   131
                   4
                   3842
                   265)
                  ((p:p-base-app check-brand)
                   AVLTree
                   specimen298836
                   %strAVLTree))))
               t)))
            (r:with-continuation-mark
             (r:quote pyret-mark)
             (r:srcloc
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              131
              4
              3842
              265)
             (r:let*
              ((%obj cases-value298794)
               (%field
                (p:get-raw-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  131
                  4
                  3842
                  265)
                 %obj
                 "_match"))
               (arg298997
                (p:mk-object
                 (p:make-string-map
                  (r:list
                   (r:cons
                    "leaf"
                    (p:pλ/loc
                     ()
                     ""
                     (r:with-continuation-mark
                      (r:quote pyret-mark)
                      (r:srcloc
                       "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                       132
                       6
                       3866
                       47)
                      (r:let
                       ()
                       (r:let
                        ()
                        (r:with-continuation-mark
                         (r:quote pyret-mark)
                         (r:srcloc
                          "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                          132
                          16
                          3876
                          37)
                         ((p:p-base-app raise)
                          |%strWent too far in removal step|)))))
                     (r:list
                      "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                      132
                      6
                      3866
                      47)))
                   (r:cons
                    "branch"
                    (p:pλ/loc
                     (val298837 _298838 left298839 right298840)
                     ""
                     (r:with-continuation-mark
                      (r:quote pyret-mark)
                      (r:srcloc
                       "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                       133
                       6
                       3920
                       179)
                      (r:let
                       ()
                       (r:define val val298837)
                       (r:define g298990 _298838)
                       (r:define left left298839)
                       (r:define right right298840)
                       (r:let
                        ()
                        (r:cond
                         ((p:pyret-true?
                           (r:with-continuation-mark
                            (r:quote pyret-mark)
                            (r:srcloc
                             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                             134
                             11
                             3964
                             14)
                            ((p:p-base-app is-leaf) right)))
                          (r:let () left))
                         (#t
                          (r:let
                           ()
                           (r:with-continuation-mark
                            (r:quote pyret-mark)
                            (r:srcloc
                             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                             137
                             10
                             4019
                             68)
                            (rebalance##inline
                             (r:with-continuation-mark
                              (r:quote pyret-mark)
                              (r:srcloc
                               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                               137
                               20
                               4029
                               57)
                              (mkbranch##inline
                               val
                               left
                               (r:with-continuation-mark
                                (r:quote pyret-mark)
                                (r:srcloc
                                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                 137
                                 40
                                 4049
                                 36)
                                (remove-greatest-and-rebalance##inline
                                 right))))))))))))
                     (r:list
                      "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                      133
                      6
                      3920
                      179)))))))
               (arg298998
                (p:pλ/loc
                 ()
                 ""
                 (r:with-continuation-mark
                  (r:quote pyret-mark)
                  (r:srcloc
                   "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                   131
                   4
                   3842
                   265)
                  (r:let
                   ()
                   (r:let
                    ()
                    (r:with-continuation-mark
                     (r:quote pyret-mark)
                     (r:srcloc
                      "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                      131
                      4
                      3842
                      265)
                     ((p:p-base-app raise)
                      (r:with-continuation-mark
                       (r:quote pyret-mark)
                       (r:srcloc
                        "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                        131
                        4
                        3842
                        265)
                       (r:let*
                        ((%obj error)
                         (%field
                          (p:get-raw-field
                           (r:list
                            "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                            131
                            4
                            3842
                            265)
                           %obj
                           "cases-miss"))
                         (arg298994 |%strcases: no cases matched|)
                         (arg298995
                          (r:with-continuation-mark
                           (r:quote pyret-mark)
                           (r:srcloc
                            "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                            131
                            4
                            3842
                            265)
                           (r:let*
                            ((%obj error)
                             (%field
                              (p:get-raw-field
                               (r:list
                                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                131
                                4
                                3842
                                265)
                               %obj
                               "location"))
                             (arg298991
                              %str/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr)
                             (arg298992 %num131)
                             (arg298993 %num4))
                            ((p:p-base-method %field)
                             %obj
                             arg298991
                             arg298992
                             arg298993))))
                         (arg298996
                          (p:get-field
                           (r:list
                            "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                            131
                            4
                            3842
                            265)
                           list
                           "empty")))
                        ((p:p-base-method %field)
                         %obj
                         arg298994
                         arg298995
                         arg298996))))))))
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  131
                  4
                  3842
                  265))))
              ((p:p-base-method %field) %obj arg298997 arg298998)))))))
        (r:define
         remove-greatest-and-rebalance
         (p:pλ (t298835) "" (remove-greatest-and-rebalance##inline t298835)))
        (r:with-continuation-mark
         (r:quote pyret-mark)
         (r:srcloc
          "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
          141
          2
          4116
          142)
         (rebalance##inline
          (r:with-continuation-mark
           (r:quote pyret-mark)
           (r:srcloc
            "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
            141
            12
            4126
            131)
           (mkbranch##inline
            (p:get-field
             (r:list
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              141
              21
              4135
              25)
             (r:with-continuation-mark
              (r:quote pyret-mark)
              (r:srcloc
               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
               141
               21
               4135
               19)
              (greatest##inline
               (p:get-field
                (r:list
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 141
                 30
                 4144
                 9)
                tree
                "left")))
             "value")
            (r:with-continuation-mark
             (r:quote pyret-mark)
             (r:srcloc
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              142
              21
              4183
              40)
             (remove-greatest-and-rebalance##inline
              (p:get-field
               (r:list
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                142
                51
                4213
                9)
               tree
               "left")))
            (p:get-field
             (r:list
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              143
              21
              4246
              10)
             tree
             "right")))))))))
    (r:define
     swap-next-lowest
     (p:pλ (tree298828) "" (swap-next-lowest##inline tree298828)))
    (r:define
     Set-mixins298776
     (p:get-field
      (r:list
       "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
       146
       0
       4264
       3642)
      builtins
      "Eq"))
    (r:define
     data-shared298777
     (p:mk-object
      (p:make-string-map
       (r:list
        (r:cons
         "union"
         (r:with-continuation-mark
          (r:quote pyret-mark)
          (r:srcloc
           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
           225
           2
           6873
           189)
          ((p:arity-catcher
            (contract298844)
            (r:let
             ()
             (r:let
              ()
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                225
                2
                6873
                189)
               ((p:p-base-app check-brand)
                Method
                contract298844
                |%str(Set, Set => Any)|))
              (r:define
               fun298845
               (r:with-continuation-mark
                (r:quote pyret-mark)
                (r:srcloc
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 225
                 2
                 6873
                 189)
                (r:let*
                 ((%obj contract298844)
                  (%field
                   (p:get-raw-field
                    (r:list
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     225
                     2
                     6873
                     189)
                    %obj
                    "_fun")))
                 ((p:p-base-method %field) %obj))))
              (p:extend
               (r:list
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                225
                2
                6873
                189)
               (p:pμ
                (arg298846 arg298847)
                "internal contract for (Set, Set => Any)"
                (r:with-continuation-mark
                 (r:quote pyret-mark)
                 (r:srcloc
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  225
                  2
                  6873
                  189)
                 (r:let
                  ()
                  (r:with-continuation-mark
                   (r:quote pyret-mark)
                   (r:srcloc
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    225
                    2
                    6873
                    189)
                   ((p:p-base-app fun298845)
                    (r:with-continuation-mark
                     (r:quote pyret-mark)
                     (r:srcloc
                      "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                      225
                      2
                      6873
                      189)
                     ((p:arity-catcher
                       (specimen298848)
                       (r:let
                        ()
                        (r:with-continuation-mark
                         (r:quote pyret-mark)
                         (r:srcloc
                          "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                          225
                          2
                          6873
                          189)
                         ((p:p-base-app check-brand)
                          Set
                          specimen298848
                          %strSet))))
                      arg298846))
                    (r:with-continuation-mark
                     (r:quote pyret-mark)
                     (r:srcloc
                      "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                      225
                      2
                      6873
                      189)
                     ((p:arity-catcher
                       (specimen298849)
                       (r:let
                        ()
                        (r:with-continuation-mark
                         (r:quote pyret-mark)
                         (r:srcloc
                          "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                          225
                          2
                          6873
                          189)
                         ((p:p-base-app check-brand)
                          Set
                          specimen298849
                          %strSet))))
                      arg298847)))))))
               (r:list
                (r:cons
                 "_doc"
                 (p:get-field
                  (r:list
                   "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                   225
                   2
                   6873
                   189)
                  contract298844
                  "_doc")))))))
           (p:pμ
            (self other)
            "Compute the union of this set and another set."
            (r:with-continuation-mark
             (r:quote pyret-mark)
             (r:srcloc
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              225
              2
              6873
              189)
             (r:let
              ()
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                227
                4
                6976
                80)
               (r:let*
                ((%obj list)
                 (%field
                  (p:get-raw-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    227
                    4
                    6976
                    80)
                   %obj
                   "fold"))
                 (arg299000
                  (p:pλ
                   (u298842 elem298843)
                   ""
                   (r:with-continuation-mark
                    (r:quote pyret-mark)
                    (r:srcloc
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     227
                     4
                     6976
                     80)
                    (r:let
                     ()
                     (r:define u u298842)
                     (r:define elem elem298843)
                     (r:let
                      ()
                      (r:with-continuation-mark
                       (r:quote pyret-mark)
                       (r:srcloc
                        "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                        228
                        6
                        7037
                        11)
                       (r:let*
                        ((%obj u)
                         (%field
                          (p:get-raw-field
                           (r:list
                            "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                            228
                            6
                            7037
                            11)
                           %obj
                           "add"))
                         (arg298999 elem))
                        ((p:p-base-method %field) %obj arg298999))))))))
                 (arg299001 self)
                 (arg299002
                  (r:with-continuation-mark
                   (r:quote pyret-mark)
                   (r:srcloc
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    227
                    41
                    7013
                    15)
                   (r:let*
                    ((%obj other)
                     (%field
                      (p:get-raw-field
                       (r:list
                        "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                        227
                        41
                        7013
                        15)
                       %obj
                       "to-list")))
                    ((p:p-base-method %field) %obj)))))
                ((p:p-base-method %field)
                 %obj
                 arg299000
                 arg299001
                 arg299002)))))))))
        (r:cons
         "intersect"
         (r:with-continuation-mark
          (r:quote pyret-mark)
          (r:srcloc
           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
           232
           2
           7067
           265)
          ((p:arity-catcher
            (contract298852)
            (r:let
             ()
             (r:let
              ()
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                232
                2
                7067
                265)
               ((p:p-base-app check-brand)
                Method
                contract298852
                |%str(Set, Set => Any)|))
              (r:define
               fun298853
               (r:with-continuation-mark
                (r:quote pyret-mark)
                (r:srcloc
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 232
                 2
                 7067
                 265)
                (r:let*
                 ((%obj contract298852)
                  (%field
                   (p:get-raw-field
                    (r:list
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     232
                     2
                     7067
                     265)
                    %obj
                    "_fun")))
                 ((p:p-base-method %field) %obj))))
              (p:extend
               (r:list
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                232
                2
                7067
                265)
               (p:pμ
                (arg298854 arg298855)
                "internal contract for (Set, Set => Any)"
                (r:with-continuation-mark
                 (r:quote pyret-mark)
                 (r:srcloc
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  232
                  2
                  7067
                  265)
                 (r:let
                  ()
                  (r:with-continuation-mark
                   (r:quote pyret-mark)
                   (r:srcloc
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    232
                    2
                    7067
                    265)
                   ((p:p-base-app fun298853)
                    (r:with-continuation-mark
                     (r:quote pyret-mark)
                     (r:srcloc
                      "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                      232
                      2
                      7067
                      265)
                     ((p:arity-catcher
                       (specimen298856)
                       (r:let
                        ()
                        (r:with-continuation-mark
                         (r:quote pyret-mark)
                         (r:srcloc
                          "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                          232
                          2
                          7067
                          265)
                         ((p:p-base-app check-brand)
                          Set
                          specimen298856
                          %strSet))))
                      arg298854))
                    (r:with-continuation-mark
                     (r:quote pyret-mark)
                     (r:srcloc
                      "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                      232
                      2
                      7067
                      265)
                     ((p:arity-catcher
                       (specimen298857)
                       (r:let
                        ()
                        (r:with-continuation-mark
                         (r:quote pyret-mark)
                         (r:srcloc
                          "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                          232
                          2
                          7067
                          265)
                         ((p:p-base-app check-brand)
                          Set
                          specimen298857
                          %strSet))))
                      arg298855)))))))
               (r:list
                (r:cons
                 "_doc"
                 (p:get-field
                  (r:list
                   "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                   232
                   2
                   7067
                   265)
                  contract298852
                  "_doc")))))))
           (p:pμ
            (self other)
            "Compute the intersection of this set and another set."
            (r:with-continuation-mark
             (r:quote pyret-mark)
             (r:srcloc
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              232
              2
              7067
              265)
             (r:let
              ()
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                234
                4
                7181
                145)
               (r:let*
                ((%obj list)
                 (%field
                  (p:get-raw-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    234
                    4
                    7181
                    145)
                   %obj
                   "fold"))
                 (arg299005
                  (p:pλ
                   (u298850 elem298851)
                   ""
                   (r:with-continuation-mark
                    (r:quote pyret-mark)
                    (r:srcloc
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     234
                     4
                     7181
                     145)
                    (r:let
                     ()
                     (r:define u u298850)
                     (r:define elem elem298851)
                     (r:let
                      ()
                      (r:cond
                       ((p:pyret-true?
                         (r:with-continuation-mark
                          (r:quote pyret-mark)
                          (r:srcloc
                           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                           235
                           9
                           7244
                           18)
                          (r:let*
                           ((%obj other)
                            (%field
                             (p:get-raw-field
                              (r:list
                               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                               235
                               9
                               7244
                               18)
                              %obj
                              "member"))
                            (arg299003 elem))
                           ((p:p-base-method %field) %obj arg299003))))
                        (r:let () u))
                       (#t
                        (r:let
                         ()
                         (r:with-continuation-mark
                          (r:quote pyret-mark)
                          (r:srcloc
                           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                           238
                           8
                           7294
                           14)
                          (r:let*
                           ((%obj u)
                            (%field
                             (p:get-raw-field
                              (r:list
                               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                               238
                               8
                               7294
                               14)
                              %obj
                              "remove"))
                            (arg299004 elem))
                           ((p:p-base-method %field) %obj arg299004)))))))))))
                 (arg299006 self)
                 (arg299007
                  (r:with-continuation-mark
                   (r:quote pyret-mark)
                   (r:srcloc
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    234
                    41
                    7218
                    14)
                   (r:let*
                    ((%obj self)
                     (%field
                      (p:get-raw-field
                       (r:list
                        "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                        234
                        41
                        7218
                        14)
                       %obj
                       "to-list")))
                    ((p:p-base-method %field) %obj)))))
                ((p:p-base-method %field)
                 %obj
                 arg299005
                 arg299006
                 arg299007)))))))))
        (r:cons
         "difference"
         (r:with-continuation-mark
          (r:quote pyret-mark)
          (r:srcloc
           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
           243
           2
           7337
           264)
          ((p:arity-catcher
            (contract298860)
            (r:let
             ()
             (r:let
              ()
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                243
                2
                7337
                264)
               ((p:p-base-app check-brand)
                Method
                contract298860
                |%str(Set, Set => Any)|))
              (r:define
               fun298861
               (r:with-continuation-mark
                (r:quote pyret-mark)
                (r:srcloc
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 243
                 2
                 7337
                 264)
                (r:let*
                 ((%obj contract298860)
                  (%field
                   (p:get-raw-field
                    (r:list
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     243
                     2
                     7337
                     264)
                    %obj
                    "_fun")))
                 ((p:p-base-method %field) %obj))))
              (p:extend
               (r:list
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                243
                2
                7337
                264)
               (p:pμ
                (arg298862 arg298863)
                "internal contract for (Set, Set => Any)"
                (r:with-continuation-mark
                 (r:quote pyret-mark)
                 (r:srcloc
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  243
                  2
                  7337
                  264)
                 (r:let
                  ()
                  (r:with-continuation-mark
                   (r:quote pyret-mark)
                   (r:srcloc
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    243
                    2
                    7337
                    264)
                   ((p:p-base-app fun298861)
                    (r:with-continuation-mark
                     (r:quote pyret-mark)
                     (r:srcloc
                      "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                      243
                      2
                      7337
                      264)
                     ((p:arity-catcher
                       (specimen298864)
                       (r:let
                        ()
                        (r:with-continuation-mark
                         (r:quote pyret-mark)
                         (r:srcloc
                          "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                          243
                          2
                          7337
                          264)
                         ((p:p-base-app check-brand)
                          Set
                          specimen298864
                          %strSet))))
                      arg298862))
                    (r:with-continuation-mark
                     (r:quote pyret-mark)
                     (r:srcloc
                      "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                      243
                      2
                      7337
                      264)
                     ((p:arity-catcher
                       (specimen298865)
                       (r:let
                        ()
                        (r:with-continuation-mark
                         (r:quote pyret-mark)
                         (r:srcloc
                          "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                          243
                          2
                          7337
                          264)
                         ((p:p-base-app check-brand)
                          Set
                          specimen298865
                          %strSet))))
                      arg298863)))))))
               (r:list
                (r:cons
                 "_doc"
                 (p:get-field
                  (r:list
                   "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                   243
                   2
                   7337
                   264)
                  contract298860
                  "_doc")))))))
           (p:pμ
            (self other)
            "Compute the difference of this set and another set."
            (r:with-continuation-mark
             (r:quote pyret-mark)
             (r:srcloc
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              243
              2
              7337
              264)
             (r:let
              ()
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                245
                4
                7450
                145)
               (r:let*
                ((%obj list)
                 (%field
                  (p:get-raw-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    245
                    4
                    7450
                    145)
                   %obj
                   "fold"))
                 (arg299010
                  (p:pλ
                   (u298858 elem298859)
                   ""
                   (r:with-continuation-mark
                    (r:quote pyret-mark)
                    (r:srcloc
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     245
                     4
                     7450
                     145)
                    (r:let
                     ()
                     (r:define u u298858)
                     (r:define elem elem298859)
                     (r:let
                      ()
                      (r:cond
                       ((p:pyret-true?
                         (r:with-continuation-mark
                          (r:quote pyret-mark)
                          (r:srcloc
                           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                           246
                           9
                           7513
                           18)
                          (r:let*
                           ((%obj other)
                            (%field
                             (p:get-raw-field
                              (r:list
                               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                               246
                               9
                               7513
                               18)
                              %obj
                              "member"))
                            (arg299008 elem))
                           ((p:p-base-method %field) %obj arg299008))))
                        (r:let
                         ()
                         (r:with-continuation-mark
                          (r:quote pyret-mark)
                          (r:srcloc
                           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                           247
                           8
                           7541
                           14)
                          (r:let*
                           ((%obj u)
                            (%field
                             (p:get-raw-field
                              (r:list
                               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                               247
                               8
                               7541
                               14)
                              %obj
                              "remove"))
                            (arg299009 elem))
                           ((p:p-base-method %field) %obj arg299009)))))
                       (#t (r:let () u))))))))
                 (arg299011 self)
                 (arg299012
                  (r:with-continuation-mark
                   (r:quote pyret-mark)
                   (r:srcloc
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    245
                    41
                    7487
                    14)
                   (r:let*
                    ((%obj self)
                     (%field
                      (p:get-raw-field
                       (r:list
                        "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                        245
                        41
                        7487
                        14)
                       %obj
                       "to-list")))
                    ((p:p-base-method %field) %obj)))))
                ((p:p-base-method %field)
                 %obj
                 arg299010
                 arg299011
                 arg299012)))))))))
        (r:cons
         "symmetric_difference"
         (r:with-continuation-mark
          (r:quote pyret-mark)
          (r:srcloc
           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
           254
           2
           7606
           190)
          ((p:arity-catcher
            (contract298866)
            (r:let
             ()
             (r:let
              ()
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                254
                2
                7606
                190)
               ((p:p-base-app check-brand)
                Method
                contract298866
                |%str(Set, Set => Any)|))
              (r:define
               fun298867
               (r:with-continuation-mark
                (r:quote pyret-mark)
                (r:srcloc
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 254
                 2
                 7606
                 190)
                (r:let*
                 ((%obj contract298866)
                  (%field
                   (p:get-raw-field
                    (r:list
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     254
                     2
                     7606
                     190)
                    %obj
                    "_fun")))
                 ((p:p-base-method %field) %obj))))
              (p:extend
               (r:list
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                254
                2
                7606
                190)
               (p:pμ
                (arg298868 arg298869)
                "internal contract for (Set, Set => Any)"
                (r:with-continuation-mark
                 (r:quote pyret-mark)
                 (r:srcloc
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  254
                  2
                  7606
                  190)
                 (r:let
                  ()
                  (r:with-continuation-mark
                   (r:quote pyret-mark)
                   (r:srcloc
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    254
                    2
                    7606
                    190)
                   ((p:p-base-app fun298867)
                    (r:with-continuation-mark
                     (r:quote pyret-mark)
                     (r:srcloc
                      "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                      254
                      2
                      7606
                      190)
                     ((p:arity-catcher
                       (specimen298870)
                       (r:let
                        ()
                        (r:with-continuation-mark
                         (r:quote pyret-mark)
                         (r:srcloc
                          "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                          254
                          2
                          7606
                          190)
                         ((p:p-base-app check-brand)
                          Set
                          specimen298870
                          %strSet))))
                      arg298868))
                    (r:with-continuation-mark
                     (r:quote pyret-mark)
                     (r:srcloc
                      "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                      254
                      2
                      7606
                      190)
                     ((p:arity-catcher
                       (specimen298871)
                       (r:let
                        ()
                        (r:with-continuation-mark
                         (r:quote pyret-mark)
                         (r:srcloc
                          "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                          254
                          2
                          7606
                          190)
                         ((p:p-base-app check-brand)
                          Set
                          specimen298871
                          %strSet))))
                      arg298869)))))))
               (r:list
                (r:cons
                 "_doc"
                 (p:get-field
                  (r:list
                   "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                   254
                   2
                   7606
                   190)
                  contract298866
                  "_doc")))))))
           (p:pμ
            (self other)
            "Compute the symmetric difference of this set and another set."
            (r:with-continuation-mark
             (r:quote pyret-mark)
             (r:srcloc
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              254
              2
              7606
              190)
             (r:let
              ()
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                256
                4
                7739
                51)
               (r:let*
                ((%obj
                  (r:with-continuation-mark
                   (r:quote pyret-mark)
                   (r:srcloc
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    256
                    4
                    7739
                    17)
                   (r:let*
                    ((%obj self)
                     (%field
                      (p:get-raw-field
                       (r:list
                        "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                        256
                        4
                        7739
                        17)
                       %obj
                       "union"))
                     (arg299013 other))
                    ((p:p-base-method %field) %obj arg299013))))
                 (%field
                  (p:get-raw-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    256
                    4
                    7739
                    51)
                   %obj
                   "difference"))
                 (arg299015
                  (r:with-continuation-mark
                   (r:quote pyret-mark)
                   (r:srcloc
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    256
                    33
                    7768
                    21)
                   (r:let*
                    ((%obj self)
                     (%field
                      (p:get-raw-field
                       (r:list
                        "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                        256
                        33
                        7768
                        21)
                       %obj
                       "intersect"))
                     (arg299014 other))
                    ((p:p-base-method %field) %obj arg299014)))))
                ((p:p-base-method %field) %obj arg299015)))))))))
        (r:cons
         "_equals"
         (p:pμ
          (self other)
          ""
          (r:with-continuation-mark
           (r:quote pyret-mark)
           (r:srcloc
            "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
            259
            2
            7805
            96)
           (r:let
            ()
            (r:with-continuation-mark
             (r:quote pyret-mark)
             (r:srcloc
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              260
              4
              7831
              64)
             (r:let*
              ((%obj
                (r:with-continuation-mark
                 (r:quote pyret-mark)
                 (r:srcloc
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  260
                  4
                  7831
                  10)
                 ((p:p-base-app Set) other)))
               (%field
                (p:get-raw-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  260
                  4
                  7831
                  64)
                 %obj
                 "_and"))
               (arg299018
                (p:pλ
                 ()
                 ""
                 (r:with-continuation-mark
                  (r:quote pyret-mark)
                  (r:srcloc
                   "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                   260
                   4
                   7831
                   64)
                  (r:let
                   ()
                   (r:with-continuation-mark
                    (r:quote pyret-mark)
                    (r:srcloc
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     260
                     20
                     7847
                     47)
                    (r:let*
                     ((%obj builtins)
                      (%field
                       (p:get-raw-field
                        (r:list
                         "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                         260
                         20
                         7847
                         47)
                        %obj
                        "equiv"))
                      (arg299016
                       (r:with-continuation-mark
                        (r:quote pyret-mark)
                        (r:srcloc
                         "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                         260
                         20
                         7847
                         21)
                        (r:let*
                         ((%obj
                           (r:with-continuation-mark
                            (r:quote pyret-mark)
                            (r:srcloc
                             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                             260
                             20
                             7847
                             14)
                            (r:let*
                             ((%obj self)
                              (%field
                               (p:get-raw-field
                                (r:list
                                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                 260
                                 20
                                 7847
                                 14)
                                %obj
                                "to-list")))
                             ((p:p-base-method %field) %obj))))
                          (%field
                           (p:get-raw-field
                            (r:list
                             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                             260
                             20
                             7847
                             21)
                            %obj
                            "sort")))
                         ((p:p-base-method %field) %obj))))
                      (arg299017
                       (r:with-continuation-mark
                        (r:quote pyret-mark)
                        (r:srcloc
                         "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                         260
                         45
                         7872
                         22)
                        (r:let*
                         ((%obj
                           (r:with-continuation-mark
                            (r:quote pyret-mark)
                            (r:srcloc
                             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                             260
                             45
                             7872
                             15)
                            (r:let*
                             ((%obj other)
                              (%field
                               (p:get-raw-field
                                (r:list
                                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                 260
                                 45
                                 7872
                                 15)
                                %obj
                                "to-list")))
                             ((p:p-base-method %field) %obj))))
                          (%field
                           (p:get-raw-field
                            (r:list
                             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                             260
                             45
                             7872
                             22)
                            %obj
                            "sort")))
                         ((p:p-base-method %field) %obj)))))
                     ((p:p-base-method %field) %obj arg299016 arg299017))))))))
              ((p:p-base-method %field) %obj arg299018)))))))))))
    (r:define
     variant298778
     (p:extend
      (r:list
       "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
       146
       0
       4264
       3642)
      data-shared298777
      (r:list
       (r:cons
        "member"
        (p:pμ
         (self elem)
         "Check to see if an element is in a set."
         (r:with-continuation-mark
          (r:quote pyret-mark)
          (r:srcloc
           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
           149
           6
           4315
           240)
          (r:let
           ()
           (r:with-continuation-mark
            (r:quote pyret-mark)
            (r:srcloc
             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
             151
             8
             4413
             23)
            (r:let*
             ((%obj
               (p:get-field
                (r:list
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 151
                 8
                 4413
                 10)
                self
                "elems"))
              (%field
               (p:get-raw-field
                (r:list
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 151
                 8
                 4413
                 23)
                %obj
                "member"))
              (arg299019 elem))
             ((p:p-base-method %field) %obj arg299019)))))))
       (r:cons
        "add"
        (p:pμ
         (self elem)
         "Add an element to the set if it is not already present."
         (r:with-continuation-mark
          (r:quote pyret-mark)
          (r:srcloc
           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
           157
           6
           4564
           470)
          (r:let
           ()
           (r:cond
            ((p:pyret-true?
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                159
                12
                4678
                23)
               (r:let*
                ((%obj
                  (p:get-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    159
                    12
                    4678
                    10)
                   self
                   "elems"))
                 (%field
                  (p:get-raw-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    159
                    12
                    4678
                    23)
                   %obj
                   "member"))
                 (arg299020 elem))
                ((p:p-base-method %field) %obj arg299020))))
             (r:let () self))
            (#t
             (r:let
              ()
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                162
                10
                4743
                37)
               (list-set##inline
                (r:with-continuation-mark
                 (r:quote pyret-mark)
                 (r:srcloc
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  162
                  19
                  4752
                  27)
                 (r:let*
                  ((%obj list)
                   (%field
                    (p:get-raw-field
                     (r:list
                      "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                      162
                      19
                      4752
                      27)
                     %obj
                     "link"))
                   (arg299021 elem)
                   (arg299022
                    (p:get-field
                     (r:list
                      "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                      162
                      35
                      4768
                      10)
                     self
                     "elems")))
                  ((p:p-base-method %field)
                   %obj
                   arg299021
                   arg299022))))))))))))
       (r:cons
        "remove"
        (p:pμ
         (self elem)
         "Remove an element from the set if it is present."
         (r:with-continuation-mark
          (r:quote pyret-mark)
          (r:srcloc
           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
           171
           6
           5043
           291)
          (r:let
           ()
           (r:with-continuation-mark
            (r:quote pyret-mark)
            (r:srcloc
             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
             173
             8
             5149
             51)
            (list-set##inline
             (r:with-continuation-mark
              (r:quote pyret-mark)
              (r:srcloc
               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
               173
               17
               5158
               41)
              (r:let*
               ((%obj
                 (p:get-field
                  (r:list
                   "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                   173
                   17
                   5158
                   10)
                  self
                  "elems"))
                (%field
                 (p:get-raw-field
                  (r:list
                   "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                   173
                   17
                   5158
                   41)
                  %obj
                  "filter"))
                (arg299025
                 (p:pλ
                  (x298872)
                  ""
                  (r:with-continuation-mark
                   (r:quote pyret-mark)
                   (r:srcloc
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    173
                    35
                    5176
                    22)
                   (r:let
                    ()
                    (r:define x x298872)
                    (r:let
                     ()
                     (r:with-continuation-mark
                      (r:quote pyret-mark)
                      (r:srcloc
                       "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                       173
                       44
                       5185
                       9)
                      (r:let*
                       ((%obj
                         (r:with-continuation-mark
                          (r:quote pyret-mark)
                          (r:srcloc
                           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                           173
                           44
                           5185
                           9)
                          (r:let*
                           ((%obj builtins)
                            (%field
                             (p:get-raw-field
                              (r:list
                               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                               173
                               44
                               5185
                               9)
                              %obj
                              "equiv"))
                            (arg299023 x)
                            (arg299024 elem))
                           ((p:p-base-method %field)
                            %obj
                            arg299023
                            arg299024))))
                        (%field
                         (p:get-raw-field
                          (r:list
                           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                           173
                           44
                           5185
                           9)
                          %obj
                          "_not")))
                       ((p:p-base-method %field) %obj)))))))))
               ((p:p-base-method %field) %obj arg299025)))))))))
       (r:cons
        "to-list"
        (p:pμ
         (self)
         "Convert a set into a list of elements in arbitrary order."
         (r:with-continuation-mark
          (r:quote pyret-mark)
          (r:srcloc
           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
           179
           6
           5343
           197)
          (r:let
           ()
           (p:get-field
            (r:list
             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
             181
             8
             5447
             10)
            self
            "elems"))))))))
    (r:define
     variant298779
     (p:extend
      (r:list
       "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
       146
       0
       4264
       3642)
      data-shared298777
      (r:list
       (r:cons
        "member"
        (p:pμ
         (self elem)
         "Check to see if an element is in a set."
         (r:with-continuation-mark
          (r:quote pyret-mark)
          (r:srcloc
           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
           188
           6
           5586
           282)
          (r:let
           ()
           (r:with-continuation-mark
            (r:quote pyret-mark)
            (r:srcloc
             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
             190
             8
             5684
             21)
            (less-than-check##inline elem))
           (r:with-continuation-mark
            (r:quote pyret-mark)
            (r:srcloc
             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
             191
             8
             5714
             25)
            (r:let*
             ((%obj
               (p:get-field
                (r:list
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 191
                 8
                 5714
                 10)
                self
                "elems"))
              (%field
               (p:get-raw-field
                (r:list
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 191
                 8
                 5714
                 25)
                %obj
                "contains"))
              (arg299026 elem))
             ((p:p-base-method %field) %obj arg299026)))))))
       (r:cons
        "add"
        (p:pμ
         (self elem)
         "Add an element to the set if it is not already present."
         (r:with-continuation-mark
          (r:quote pyret-mark)
          (r:srcloc
           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
           197
           6
           5877
           455)
          (r:let
           ()
           (r:with-continuation-mark
            (r:quote pyret-mark)
            (r:srcloc
             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
             199
             8
             5987
             21)
            (less-than-check##inline elem))
           (r:with-continuation-mark
            (r:quote pyret-mark)
            (r:srcloc
             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
             200
             8
             6017
             33)
            (tree-set##inline
             (r:with-continuation-mark
              (r:quote pyret-mark)
              (r:srcloc
               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
               200
               17
               6026
               23)
              (r:let*
               ((%obj
                 (p:get-field
                  (r:list
                   "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                   200
                   17
                   6026
                   10)
                  self
                  "elems"))
                (%field
                 (p:get-raw-field
                  (r:list
                   "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                   200
                   17
                   6026
                   23)
                  %obj
                  "insert"))
                (arg299027 elem))
               ((p:p-base-method %field) %obj arg299027)))))))))
       (r:cons
        "remove"
        (p:pμ
         (self elem)
         "Remove an element from the set if it is present."
         (r:with-continuation-mark
          (r:quote pyret-mark)
          (r:srcloc
           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
           208
           6
           6341
           323)
          (r:let
           ()
           (r:with-continuation-mark
            (r:quote pyret-mark)
            (r:srcloc
             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
             210
             8
             6447
             21)
            (less-than-check##inline elem))
           (r:with-continuation-mark
            (r:quote pyret-mark)
            (r:srcloc
             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
             211
             8
             6477
             33)
            (tree-set##inline
             (r:with-continuation-mark
              (r:quote pyret-mark)
              (r:srcloc
               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
               211
               17
               6486
               23)
              (r:let*
               ((%obj
                 (p:get-field
                  (r:list
                   "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                   211
                   17
                   6486
                   10)
                  self
                  "elems"))
                (%field
                 (p:get-raw-field
                  (r:list
                   "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                   211
                   17
                   6486
                   23)
                  %obj
                  "remove"))
                (arg299028 elem))
               ((p:p-base-method %field) %obj arg299028)))))))))
       (r:cons
        "to-list"
        (p:pμ
         (self)
         "Convert a set into a list of elements."
         (r:with-continuation-mark
          (r:quote pyret-mark)
          (r:srcloc
           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
           217
           6
           6673
           187)
          (r:let
           ()
           (r:with-continuation-mark
            (r:quote pyret-mark)
            (r:srcloc
             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
             219
             8
             6758
             21)
            (r:let*
             ((%obj
               (p:get-field
                (r:list
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 219
                 8
                 6758
                 10)
                self
                "elems"))
              (%field
               (p:get-raw-field
                (r:list
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 219
                 8
                 6758
                 21)
                %obj
                "preorder")))
             ((p:p-base-method %field) %obj))))))))))
    (r:define
     Set298795
     (r:with-continuation-mark
      (r:quote pyret-mark)
      (r:srcloc
       "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
       146
       0
       4264
       3642)
      ((p:p-base-app brander))))
    (r:define
     list-set_base298798
     (p:mk-object
      (p:make-string-map
       (r:list
        (r:cons
         "_torepr"
         (p:pμ
          (self)
          ""
          (r:with-continuation-mark
           (r:quote pyret-mark)
           (r:srcloc
            "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
            147
            2
            4276
            1264)
           (r:with-continuation-mark
            (r:quote pyret-mark)
            (r:srcloc
             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
             147
             2
             4276
             1264)
            (r:let*
             ((%obj builtins)
              (%field
               (p:get-raw-field
                (r:list
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 147
                 2
                 4276
                 1264)
                %obj
                "data-to-repr"))
              (arg299031 self)
              (arg299032 %strlist-set)
              (arg299033
               (r:with-continuation-mark
                (r:quote pyret-mark)
                (r:srcloc
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 147
                 2
                 4276
                 1264)
                (r:let*
                 ((%obj list)
                  (%field
                   (p:get-raw-field
                    (r:list
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     147
                     2
                     4276
                     1264)
                    %obj
                    "link"))
                  (arg299029 %strelems)
                  (arg299030
                   (p:get-field
                    (r:list
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     147
                     2
                     4276
                     1264)
                    list
                    "empty")))
                 ((p:p-base-method %field) %obj arg299029 arg299030)))))
             ((p:p-base-method %field) %obj arg299031 arg299032 arg299033))))))
        (r:cons
         "_equals"
         (p:pμ
          (self other)
          ""
          (r:with-continuation-mark
           (r:quote pyret-mark)
           (r:srcloc
            "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
            147
            2
            4276
            1264)
           (r:with-continuation-mark
            (r:quote pyret-mark)
            (r:srcloc
             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
             147
             2
             4276
             1264)
            (r:let*
             ((%obj builtins)
              (%field
               (p:get-raw-field
                (r:list
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 147
                 2
                 4276
                 1264)
                %obj
                "data-equals"))
              (arg299036 self)
              (arg299037 other)
              (arg299038 is-list-set)
              (arg299039
               (r:with-continuation-mark
                (r:quote pyret-mark)
                (r:srcloc
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 147
                 2
                 4276
                 1264)
                (r:let*
                 ((%obj list)
                  (%field
                   (p:get-raw-field
                    (r:list
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     147
                     2
                     4276
                     1264)
                    %obj
                    "link"))
                  (arg299034 %strelems)
                  (arg299035
                   (p:get-field
                    (r:list
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     147
                     2
                     4276
                     1264)
                    list
                    "empty")))
                 ((p:p-base-method %field) %obj arg299034 arg299035)))))
             ((p:p-base-method %field)
              %obj
              arg299036
              arg299037
              arg299038
              arg299039))))))
        (r:cons
         "_match"
         (p:pμ
          (self cases-funs else-clause)
          ""
          (r:with-continuation-mark
           (r:quote pyret-mark)
           (r:srcloc
            "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
            147
            2
            4276
            1264)
           (r:cond
            ((p:pyret-true?
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                147
                2
                4276
                1264)
               (r:let*
                ((%obj builtins)
                 (%field
                  (p:get-raw-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    147
                    2
                    4276
                    1264)
                   %obj
                   "has-field"))
                 (arg299040 cases-funs)
                 (arg299041 %strlist-set))
                ((p:p-base-method %field) %obj arg299040 arg299041))))
             (r:let
              ()
              (r:define
               call-list-set298796
               (p:get-field
                (r:list
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 147
                 2
                 4276
                 1264)
                cases-funs
                "list-set"))
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                147
                2
                4276
                1264)
               ((p:p-base-app call-list-set298796)
                (p:get-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  147
                  2
                  4276
                  1264)
                 self
                 "elems")))))
            (#t
             (r:with-continuation-mark
              (r:quote pyret-mark)
              (r:srcloc
               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
               147
               2
               4276
               1264)
              ((p:p-base-app else-clause))))))))))))
    (r:define
     list-set298797
     (r:with-continuation-mark
      (r:quote pyret-mark)
      (r:srcloc
       "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
       147
       2
       4276
       1264)
      ((p:p-base-app brander))))
    (r:define
     is-list-set
     (p:get-field
      (r:list
       "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
       147
       2
       4276
       1264)
      list-set298797
      "test"))
    (r:define
     list-set##inline
     (p:arity-catcher
      (elems298799298873)
      (r:let
       ()
       (r:define
        elems298799
        (r:with-continuation-mark
         (r:quote pyret-mark)
         (r:srcloc
          "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
          147
          13
          4287
          13)
         ((p:arity-catcher
           (specimen298875)
           (r:let
            ()
            (r:with-continuation-mark
             (r:quote pyret-mark)
             (r:srcloc
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              147
              13
              4287
              13)
             ((p:p-base-app check-brand) List specimen298875 %strList))))
          elems298799298873)))
       (r:let
        ()
        (r:with-continuation-mark
         (r:quote pyret-mark)
         (r:srcloc
          "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
          147
          2
          4276
          1264)
         (r:let*
          ((%obj Set298795)
           (%field
            (p:get-raw-field
             (r:list
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              147
              2
              4276
              1264)
             %obj
             "brand"))
           (arg299045
            (r:with-continuation-mark
             (r:quote pyret-mark)
             (r:srcloc
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              147
              2
              4276
              1264)
             (r:let*
              ((%obj list-set298797)
               (%field
                (p:get-raw-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  147
                  2
                  4276
                  1264)
                 %obj
                 "brand"))
               (arg299044
                (r:with-continuation-mark
                 (r:quote pyret-mark)
                 (r:srcloc
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  147
                  2
                  4276
                  1264)
                 ((p:arity-catcher
                   (self298874)
                   (r:let
                    ()
                    (r:define self self298874)
                    (r:let
                     ()
                     (r:define
                      mixin298780
                      (r:cond
                       ((p:pyret-true?
                         (r:with-continuation-mark
                          (r:quote pyret-mark)
                          (r:srcloc
                           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                           147
                           2
                           4276
                           1264)
                          ((p:p-base-app Function) Set-mixins298776)))
                        (r:with-continuation-mark
                         (r:quote pyret-mark)
                         (r:srcloc
                          "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                          147
                          2
                          4276
                          1264)
                         ((p:p-base-app Set-mixins298776))))
                       (#t Set-mixins298776)))
                     (r:with-continuation-mark
                      (r:quote pyret-mark)
                      (r:srcloc
                       "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                       147
                       2
                       4276
                       1264)
                      (r:let*
                       ((%obj mixin298780)
                        (%field
                         (p:get-raw-field
                          (r:list
                           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                           147
                           2
                           4276
                           1264)
                          %obj
                          "brand"))
                        (arg299043
                         (r:with-continuation-mark
                          (r:quote pyret-mark)
                          (r:srcloc
                           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                           147
                           2
                           4276
                           1264)
                          (r:let*
                           ((%obj mixin298780)
                            (%field
                             (p:get-raw-field
                              (r:list
                               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                               147
                               2
                               4276
                               1264)
                              %obj
                              "extend"))
                            (arg299042
                             (p:extend
                              (r:list
                               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                               147
                               2
                               4276
                               1264)
                              self
                              (r:list
                               (r:cons
                                "union"
                                (p:get-raw-field
                                 (r:list
                                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                  146
                                  0
                                  4264
                                  3642)
                                 data-shared298777
                                 "union"))
                               (r:cons
                                "intersect"
                                (p:get-raw-field
                                 (r:list
                                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                  146
                                  0
                                  4264
                                  3642)
                                 data-shared298777
                                 "intersect"))
                               (r:cons
                                "difference"
                                (p:get-raw-field
                                 (r:list
                                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                  146
                                  0
                                  4264
                                  3642)
                                 data-shared298777
                                 "difference"))
                               (r:cons
                                "symmetric_difference"
                                (p:get-raw-field
                                 (r:list
                                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                  146
                                  0
                                  4264
                                  3642)
                                 data-shared298777
                                 "symmetric_difference"))
                               (r:cons
                                "_equals"
                                (p:get-raw-field
                                 (r:list
                                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                  146
                                  0
                                  4264
                                  3642)
                                 data-shared298777
                                 "_equals"))
                               (r:cons
                                "member"
                                (p:get-raw-field
                                 (r:list
                                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                  146
                                  0
                                  4264
                                  3642)
                                 variant298778
                                 "member"))
                               (r:cons
                                "add"
                                (p:get-raw-field
                                 (r:list
                                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                  146
                                  0
                                  4264
                                  3642)
                                 variant298778
                                 "add"))
                               (r:cons
                                "remove"
                                (p:get-raw-field
                                 (r:list
                                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                  146
                                  0
                                  4264
                                  3642)
                                 variant298778
                                 "remove"))
                               (r:cons
                                "to-list"
                                (p:get-raw-field
                                 (r:list
                                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                  146
                                  0
                                  4264
                                  3642)
                                 variant298778
                                 "to-list"))))))
                           ((p:p-base-method %field) %obj arg299042)))))
                       ((p:p-base-method %field) %obj arg299043))))))
                  (p:extend
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    147
                    2
                    4276
                    1264)
                   list-set_base298798
                   (r:list (r:cons "elems" elems298799)))))))
              ((p:p-base-method %field) %obj arg299044)))))
          ((p:p-base-method %field) %obj arg299045)))))))
    (r:define
     list-set
     (p:pλ
      (elems298799298873)
      "list-set: Creates an instance of list-set"
      (list-set##inline elems298799298873)))
    (r:define
     tree-set_base298802
     (p:mk-object
      (p:make-string-map
       (r:list
        (r:cons
         "_torepr"
         (p:pμ
          (self)
          ""
          (r:with-continuation-mark
           (r:quote pyret-mark)
           (r:srcloc
            "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
            186
            2
            5544
            1316)
           (r:with-continuation-mark
            (r:quote pyret-mark)
            (r:srcloc
             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
             186
             2
             5544
             1316)
            (r:let*
             ((%obj builtins)
              (%field
               (p:get-raw-field
                (r:list
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 186
                 2
                 5544
                 1316)
                %obj
                "data-to-repr"))
              (arg299048 self)
              (arg299049 %strtree-set)
              (arg299050
               (r:with-continuation-mark
                (r:quote pyret-mark)
                (r:srcloc
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 186
                 2
                 5544
                 1316)
                (r:let*
                 ((%obj list)
                  (%field
                   (p:get-raw-field
                    (r:list
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     186
                     2
                     5544
                     1316)
                    %obj
                    "link"))
                  (arg299046 %strelems)
                  (arg299047
                   (p:get-field
                    (r:list
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     186
                     2
                     5544
                     1316)
                    list
                    "empty")))
                 ((p:p-base-method %field) %obj arg299046 arg299047)))))
             ((p:p-base-method %field) %obj arg299048 arg299049 arg299050))))))
        (r:cons
         "_equals"
         (p:pμ
          (self other)
          ""
          (r:with-continuation-mark
           (r:quote pyret-mark)
           (r:srcloc
            "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
            186
            2
            5544
            1316)
           (r:with-continuation-mark
            (r:quote pyret-mark)
            (r:srcloc
             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
             186
             2
             5544
             1316)
            (r:let*
             ((%obj builtins)
              (%field
               (p:get-raw-field
                (r:list
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 186
                 2
                 5544
                 1316)
                %obj
                "data-equals"))
              (arg299053 self)
              (arg299054 other)
              (arg299055 is-tree-set)
              (arg299056
               (r:with-continuation-mark
                (r:quote pyret-mark)
                (r:srcloc
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 186
                 2
                 5544
                 1316)
                (r:let*
                 ((%obj list)
                  (%field
                   (p:get-raw-field
                    (r:list
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     186
                     2
                     5544
                     1316)
                    %obj
                    "link"))
                  (arg299051 %strelems)
                  (arg299052
                   (p:get-field
                    (r:list
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     186
                     2
                     5544
                     1316)
                    list
                    "empty")))
                 ((p:p-base-method %field) %obj arg299051 arg299052)))))
             ((p:p-base-method %field)
              %obj
              arg299053
              arg299054
              arg299055
              arg299056))))))
        (r:cons
         "_match"
         (p:pμ
          (self cases-funs else-clause)
          ""
          (r:with-continuation-mark
           (r:quote pyret-mark)
           (r:srcloc
            "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
            186
            2
            5544
            1316)
           (r:cond
            ((p:pyret-true?
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                186
                2
                5544
                1316)
               (r:let*
                ((%obj builtins)
                 (%field
                  (p:get-raw-field
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    186
                    2
                    5544
                    1316)
                   %obj
                   "has-field"))
                 (arg299057 cases-funs)
                 (arg299058 %strtree-set))
                ((p:p-base-method %field) %obj arg299057 arg299058))))
             (r:let
              ()
              (r:define
               call-tree-set298800
               (p:get-field
                (r:list
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 186
                 2
                 5544
                 1316)
                cases-funs
                "tree-set"))
              (r:with-continuation-mark
               (r:quote pyret-mark)
               (r:srcloc
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                186
                2
                5544
                1316)
               ((p:p-base-app call-tree-set298800)
                (p:get-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  186
                  2
                  5544
                  1316)
                 self
                 "elems")))))
            (#t
             (r:with-continuation-mark
              (r:quote pyret-mark)
              (r:srcloc
               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
               186
               2
               5544
               1316)
              ((p:p-base-app else-clause))))))))))))
    (r:define
     tree-set298801
     (r:with-continuation-mark
      (r:quote pyret-mark)
      (r:srcloc
       "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
       186
       2
       5544
       1316)
      ((p:p-base-app brander))))
    (r:define
     is-tree-set
     (p:get-field
      (r:list
       "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
       186
       2
       5544
       1316)
      tree-set298801
      "test"))
    (r:define
     tree-set##inline
     (p:arity-catcher
      (elems298803298876)
      (r:let
       ()
       (r:define
        elems298803
        (r:with-continuation-mark
         (r:quote pyret-mark)
         (r:srcloc
          "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
          186
          13
          5555
          16)
         ((p:arity-catcher
           (specimen298878)
           (r:let
            ()
            (r:with-continuation-mark
             (r:quote pyret-mark)
             (r:srcloc
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              186
              13
              5555
              16)
             ((p:p-base-app check-brand) AVLTree specimen298878 %strAVLTree))))
          elems298803298876)))
       (r:let
        ()
        (r:with-continuation-mark
         (r:quote pyret-mark)
         (r:srcloc
          "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
          186
          2
          5544
          1316)
         (r:let*
          ((%obj Set298795)
           (%field
            (p:get-raw-field
             (r:list
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              186
              2
              5544
              1316)
             %obj
             "brand"))
           (arg299062
            (r:with-continuation-mark
             (r:quote pyret-mark)
             (r:srcloc
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              186
              2
              5544
              1316)
             (r:let*
              ((%obj tree-set298801)
               (%field
                (p:get-raw-field
                 (r:list
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  186
                  2
                  5544
                  1316)
                 %obj
                 "brand"))
               (arg299061
                (r:with-continuation-mark
                 (r:quote pyret-mark)
                 (r:srcloc
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  186
                  2
                  5544
                  1316)
                 ((p:arity-catcher
                   (self298877)
                   (r:let
                    ()
                    (r:define self self298877)
                    (r:let
                     ()
                     (r:define
                      mixin298781
                      (r:cond
                       ((p:pyret-true?
                         (r:with-continuation-mark
                          (r:quote pyret-mark)
                          (r:srcloc
                           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                           186
                           2
                           5544
                           1316)
                          ((p:p-base-app Function) Set-mixins298776)))
                        (r:with-continuation-mark
                         (r:quote pyret-mark)
                         (r:srcloc
                          "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                          186
                          2
                          5544
                          1316)
                         ((p:p-base-app Set-mixins298776))))
                       (#t Set-mixins298776)))
                     (r:with-continuation-mark
                      (r:quote pyret-mark)
                      (r:srcloc
                       "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                       186
                       2
                       5544
                       1316)
                      (r:let*
                       ((%obj mixin298781)
                        (%field
                         (p:get-raw-field
                          (r:list
                           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                           186
                           2
                           5544
                           1316)
                          %obj
                          "brand"))
                        (arg299060
                         (r:with-continuation-mark
                          (r:quote pyret-mark)
                          (r:srcloc
                           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                           186
                           2
                           5544
                           1316)
                          (r:let*
                           ((%obj mixin298781)
                            (%field
                             (p:get-raw-field
                              (r:list
                               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                               186
                               2
                               5544
                               1316)
                              %obj
                              "extend"))
                            (arg299059
                             (p:extend
                              (r:list
                               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                               186
                               2
                               5544
                               1316)
                              self
                              (r:list
                               (r:cons
                                "union"
                                (p:get-raw-field
                                 (r:list
                                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                  146
                                  0
                                  4264
                                  3642)
                                 data-shared298777
                                 "union"))
                               (r:cons
                                "intersect"
                                (p:get-raw-field
                                 (r:list
                                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                  146
                                  0
                                  4264
                                  3642)
                                 data-shared298777
                                 "intersect"))
                               (r:cons
                                "difference"
                                (p:get-raw-field
                                 (r:list
                                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                  146
                                  0
                                  4264
                                  3642)
                                 data-shared298777
                                 "difference"))
                               (r:cons
                                "symmetric_difference"
                                (p:get-raw-field
                                 (r:list
                                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                  146
                                  0
                                  4264
                                  3642)
                                 data-shared298777
                                 "symmetric_difference"))
                               (r:cons
                                "_equals"
                                (p:get-raw-field
                                 (r:list
                                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                  146
                                  0
                                  4264
                                  3642)
                                 data-shared298777
                                 "_equals"))
                               (r:cons
                                "member"
                                (p:get-raw-field
                                 (r:list
                                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                  146
                                  0
                                  4264
                                  3642)
                                 variant298779
                                 "member"))
                               (r:cons
                                "add"
                                (p:get-raw-field
                                 (r:list
                                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                  146
                                  0
                                  4264
                                  3642)
                                 variant298779
                                 "add"))
                               (r:cons
                                "remove"
                                (p:get-raw-field
                                 (r:list
                                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                  146
                                  0
                                  4264
                                  3642)
                                 variant298779
                                 "remove"))
                               (r:cons
                                "to-list"
                                (p:get-raw-field
                                 (r:list
                                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                                  146
                                  0
                                  4264
                                  3642)
                                 variant298779
                                 "to-list"))))))
                           ((p:p-base-method %field) %obj arg299059)))))
                       ((p:p-base-method %field) %obj arg299060))))))
                  (p:extend
                   (r:list
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    186
                    2
                    5544
                    1316)
                   tree-set_base298802
                   (r:list (r:cons "elems" elems298803)))))))
              ((p:p-base-method %field) %obj arg299061)))))
          ((p:p-base-method %field) %obj arg299062)))))))
    (r:define
     tree-set
     (p:pλ
      (elems298803298876)
      "tree-set: Creates an instance of tree-set"
      (tree-set##inline elems298803298876)))
    (r:define
     Set
     (p:get-field
      (r:list
       "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
       146
       0
       4264
       3642)
      Set298795
      "test"))
    (r:define
     less-than-check##inline
     (p:arity-catcher
      (x298879)
      (r:let
       ()
       (r:define x x298879)
       (r:let
        ()
        (r:cond
         ((p:pyret-true?
           (r:with-continuation-mark
            (r:quote pyret-mark)
            (r:srcloc
             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
             266
             7
             7946
             38)
            (r:let*
             ((%obj
               (r:with-continuation-mark
                (r:quote pyret-mark)
                (r:srcloc
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 266
                 11
                 7950
                 34)
                (r:let*
                 ((%obj builtins)
                  (%field
                   (p:get-raw-field
                    (r:list
                     "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                     266
                     11
                     7950
                     34)
                    %obj
                    "has-field"))
                  (arg299063 x)
                  (arg299064 (p:mk-str "_lessthan")))
                 ((p:p-base-method %field) %obj arg299063 arg299064))))
              (%field
               (p:get-raw-field
                (r:list
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 266
                 7
                 7946
                 38)
                %obj
                "_not")))
             ((p:p-base-method %field) %obj))))
          (r:let
           ()
           (r:with-continuation-mark
            (r:quote pyret-mark)
            (r:srcloc
             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
             267
             4
             7990
             288)
            ((p:p-base-app raise)
             (r:with-continuation-mark
              (r:quote pyret-mark)
              (r:srcloc
               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
               267
               10
               7996
               281)
              (r:let*
               ((%obj
                 (r:with-continuation-mark
                  (r:quote pyret-mark)
                  (r:srcloc
                   "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                   267
                   10
                   7996
                   269)
                  (r:let*
                   ((%obj
                     (r:with-continuation-mark
                      (r:quote pyret-mark)
                      (r:srcloc
                       "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                       267
                       10
                       7996
                       227)
                      (r:let*
                       ((%obj
                         (r:with-continuation-mark
                          (r:quote pyret-mark)
                          (r:srcloc
                           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                           267
                           10
                           7996
                           151)
                          (r:let*
                           ((%obj
                             (p:mk-str
                              "Tree-based sets can only contain elements that have a '_lessthan' method. "))
                            (%field
                             (p:get-raw-field
                              (r:list
                               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                               267
                               10
                               7996
                               151)
                              %obj
                              "_plus"))
                            (arg299065
                             (p:mk-str
                              "Most builtin data types, like strings and numbers have one, ")))
                           ((p:p-base-method %field) %obj arg299065))))
                        (%field
                         (p:get-raw-field
                          (r:list
                           "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                           267
                           10
                           7996
                           227)
                          %obj
                          "_plus"))
                        (arg299066
                         (p:mk-str
                          "but user defined data types do not unless you give them one. ")))
                       ((p:p-base-method %field) %obj arg299066))))
                    (%field
                     (p:get-raw-field
                      (r:list
                       "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                       267
                       10
                       7996
                       269)
                      %obj
                      "_plus"))
                    (arg299067 (p:mk-str "The datum encountered was: ")))
                   ((p:p-base-method %field) %obj arg299067))))
                (%field
                 (p:get-raw-field
                  (r:list
                   "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                   267
                   10
                   7996
                   281)
                  %obj
                  "_plus"))
                (arg299068
                 (r:with-continuation-mark
                  (r:quote pyret-mark)
                  (r:srcloc
                   "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                   270
                   44
                   8268
                   9)
                  ((p:p-base-app torepr) x))))
               ((p:p-base-method %field) %obj arg299068)))))
           nothing))
         (#t nothing))))))
    (r:define
     less-than-check
     (p:pλ (x298879) "" (less-than-check##inline x298879)))
    (r:define
     list-to-set##inline
     (p:arity-catcher
      (lst298880 base-set298881)
      (r:let
       ()
       (r:define
        lst
        (r:with-continuation-mark
         (r:quote pyret-mark)
         (r:srcloc
          "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
          274
          16
          8306
          11)
         ((p:arity-catcher
           (specimen298885)
           (r:let
            ()
            (r:with-continuation-mark
             (r:quote pyret-mark)
             (r:srcloc
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              274
              16
              8306
              11)
             ((p:p-base-app check-brand) List specimen298885 %strList))))
          lst298880)))
       (r:define
        base-set
        (r:with-continuation-mark
         (r:quote pyret-mark)
         (r:srcloc
          "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
          274
          29
          8319
          15)
         ((p:arity-catcher
           (specimen298886)
           (r:let
            ()
            (r:with-continuation-mark
             (r:quote pyret-mark)
             (r:srcloc
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              274
              29
              8319
              15)
             ((p:p-base-app check-brand) Set specimen298886 %strSet))))
          base-set298881)))
       (r:with-continuation-mark
        (r:quote pyret-mark)
        (r:srcloc
         "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
         274
         0
         8290
         164)
        ((p:arity-catcher
          (specimen298884)
          (r:let
           ()
           (r:with-continuation-mark
            (r:quote pyret-mark)
            (r:srcloc
             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
             274
             0
             8290
             164)
            ((p:p-base-app check-brand) Set specimen298884 %strSet))))
         (r:let
          ()
          (r:with-continuation-mark
           (r:quote pyret-mark)
           (r:srcloc
            "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
            276
            2
            8382
            68)
           (r:let*
            ((%obj list)
             (%field
              (p:get-raw-field
               (r:list
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                276
                2
                8382
                68)
               %obj
               "fold"))
             (arg299070
              (p:pλ
               (s298882 elem298883)
               ""
               (r:with-continuation-mark
                (r:quote pyret-mark)
                (r:srcloc
                 "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                 276
                 2
                 8382
                 68)
                (r:let
                 ()
                 (r:define s s298882)
                 (r:define elem elem298883)
                 (r:let
                  ()
                  (r:with-continuation-mark
                   (r:quote pyret-mark)
                   (r:srcloc
                    "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                    277
                    4
                    8433
                    11)
                   (r:let*
                    ((%obj s)
                     (%field
                      (p:get-raw-field
                       (r:list
                        "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                        277
                        4
                        8433
                        11)
                       %obj
                       "add"))
                     (arg299069 elem))
                    ((p:p-base-method %field) %obj arg299069))))))))
             (arg299071 base-set)
             (arg299072 lst))
            ((p:p-base-method %field)
             %obj
             arg299070
             arg299071
             arg299072)))))))))
    (r:define
     list-to-set
     (p:pλ
      (lst298880 base-set298881)
      "Convert a list into a set."
      (list-to-set##inline lst298880 base-set298881)))
    (r:define
     list-to-list-set##inline
     (p:arity-catcher
      (lst298887)
      (r:let
       ()
       (r:define
        lst
        (r:with-continuation-mark
         (r:quote pyret-mark)
         (r:srcloc
          "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
          281
          21
          8477
          11)
         ((p:arity-catcher
           (specimen298889)
           (r:let
            ()
            (r:with-continuation-mark
             (r:quote pyret-mark)
             (r:srcloc
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              281
              21
              8477
              11)
             ((p:p-base-app check-brand) List specimen298889 %strList))))
          lst298887)))
       (r:with-continuation-mark
        (r:quote pyret-mark)
        (r:srcloc
         "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
         281
         0
         8456
         125)
        ((p:arity-catcher
          (specimen298888)
          (r:let
           ()
           (r:with-continuation-mark
            (r:quote pyret-mark)
            (r:srcloc
             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
             281
             0
             8456
             125)
            ((p:p-base-app check-brand) Set specimen298888 %strSet))))
         (r:let
          ()
          (r:with-continuation-mark
           (r:quote pyret-mark)
           (r:srcloc
            "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
            283
            2
            8547
            30)
           (list-to-set##inline
            lst
            (r:with-continuation-mark
             (r:quote pyret-mark)
             (r:srcloc
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              283
              19
              8564
              12)
             (list-set##inline
              (p:get-field
               (r:list
                "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                283
                28
                8573
                2)
               list
               "empty")))))))))))
    (r:define
     list-to-list-set
     (p:pλ
      (lst298887)
      "Convert a list into a list-based set."
      (list-to-list-set##inline lst298887)))
    (r:define
     list-to-tree-set##inline
     (p:arity-catcher
      (lst298890)
      (r:let
       ()
       (r:define
        lst
        (r:with-continuation-mark
         (r:quote pyret-mark)
         (r:srcloc
          "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
          286
          21
          8604
          11)
         ((p:arity-catcher
           (specimen298892)
           (r:let
            ()
            (r:with-continuation-mark
             (r:quote pyret-mark)
             (r:srcloc
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              286
              21
              8604
              11)
             ((p:p-base-app check-brand) List specimen298892 %strList))))
          lst298890)))
       (r:with-continuation-mark
        (r:quote pyret-mark)
        (r:srcloc
         "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
         286
         0
         8583
         127)
        ((p:arity-catcher
          (specimen298891)
          (r:let
           ()
           (r:with-continuation-mark
            (r:quote pyret-mark)
            (r:srcloc
             "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
             286
             0
             8583
             127)
            ((p:p-base-app check-brand) Set specimen298891 %strSet))))
         (r:let
          ()
          (r:with-continuation-mark
           (r:quote pyret-mark)
           (r:srcloc
            "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
            288
            2
            8674
            32)
           (list-to-set##inline
            lst
            (r:with-continuation-mark
             (r:quote pyret-mark)
             (r:srcloc
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              288
              19
              8691
              14)
             (tree-set##inline leaf))))))))))
    (r:define
     list-to-tree-set
     (p:pλ
      (lst298890)
      "Convert a list into a tree-based set."
      (list-to-tree-set##inline lst298890)))
    (r:define
     list-to-tree##inline
     (p:arity-catcher
      (lst298893)
      (r:let
       ()
       (r:define
        lst
        (r:with-continuation-mark
         (r:quote pyret-mark)
         (r:srcloc
          "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
          291
          17
          8729
          11)
         ((p:arity-catcher
           (specimen298896)
           (r:let
            ()
            (r:with-continuation-mark
             (r:quote pyret-mark)
             (r:srcloc
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              291
              17
              8729
              11)
             ((p:p-base-app check-brand) List specimen298896 %strList))))
          lst298893)))
       (r:let
        ()
        (r:with-continuation-mark
         (r:quote pyret-mark)
         (r:srcloc
          "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
          292
          2
          8745
          71)
         (r:let*
          ((%obj list)
           (%field
            (p:get-raw-field
             (r:list
              "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
              292
              2
              8745
              71)
             %obj
             "fold"))
           (arg299074
            (p:pλ
             (tree298894 elt298895)
             ""
             (r:with-continuation-mark
              (r:quote pyret-mark)
              (r:srcloc
               "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
               292
               2
               8745
               71)
              (r:let
               ()
               (r:define tree tree298894)
               (r:define elt elt298895)
               (r:let
                ()
                (r:with-continuation-mark
                 (r:quote pyret-mark)
                 (r:srcloc
                  "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                  293
                  4
                  8794
                  16)
                 (r:let*
                  ((%obj tree)
                   (%field
                    (p:get-raw-field
                     (r:list
                      "/shared/SortCodedStuff/Programming/pyret-lang/src/lang/pyret-lib/sets.arr"
                      293
                      4
                      8794
                      16)
                     %obj
                     "insert"))
                   (arg299073 elt))
                  ((p:p-base-method %field) %obj arg299073))))))))
           (arg299075 leaf)
           (arg299076 lst))
          ((p:p-base-method %field) %obj arg299074 arg299075 arg299076)))))))
    (r:define
     list-to-tree
     (p:pλ (lst298893) "" (list-to-tree##inline lst298893))))
   (r:begin
    (r:define
     module-provide298897
     (r:let
      ()
      (p:mk-object
       (p:make-string-map
        (r:list
         (r:cons "Set" Set)
         (r:cons "set" list-to-tree-set)
         (r:cons "list-set" list-to-list-set)
         (r:cons "tree-set" list-to-tree-set))))))
    (r:provide (r:rename-out (module-provide298897 %PYRET-PROVIDE))))))
