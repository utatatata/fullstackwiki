(defsystem "fullstackwiki-test"
  :defsystem-depends-on ("prove-asdf")
  :author "utakuma"
  :license "MIT"
  :depends-on ("fullstackwiki"
               "prove")
  :components ((:module "tests"
                :components
                ((:test-file "fullstackwiki"))))
  :description "Test system for fullstackwiki"
  :perform (test-op (op c) (symbol-call :prove-asdf :run-test-system c)))
