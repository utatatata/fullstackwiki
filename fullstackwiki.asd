(defsystem "fullstackwiki"

  :version "0.1.0"
  :author "utakuma"
  :license "MIT"
  :depends-on ("clack"
               "lack"
               "caveman2"
               "envy"
               "cl-ppcre"
               "uiop"

               ;; for @route annotation
               "cl-syntax-annot"

               ;; HTML Template
               "djula"

               ;; for DB
               "datafly"
               "sxql"
               ;; Password hashing
               "cl-pass")
  :components ((:module "src"
                :components
                ((:file "main" :depends-on ("config" "view" "db"))
                 (:file "web" :depends-on ("view"))
                 (:file "view" :depends-on ("config"))
                 (:file "db" :depends-on ("config"))
                 (:file "model" :depends-on ("db")) ;; model
                 (:file "config"))))
  :description ""
  :in-order-to ((test-op (load-op "fullstackwiki-test"))))
