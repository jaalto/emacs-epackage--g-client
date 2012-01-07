;; Prevent loading this file. Study the examples.
(error "g-client-epackage-examples.el is not a configuration file.")

(load-library "g")
(setq g-user-email "address@google.com")

(defun my-g-html-handler (buffer-name)
  (setq truncate-lines t))

;; Name of function that handles HTML content
(setq g-html-handler 'my-g-html-handler)

;; End of file
