(dolist (file
         '("g-app.el"
	   "g-auth.el"
	   "g-autogen.el"
	   "g-load-path.el"
	   "g-utils.el"
	   "g.el"
	   "gblogger.el"
	   "gcal.el"
	   "gcontacts.el"
	   "gdocs.el"
	   "gfeeds.el"
	   "gfinance.el"
	   "ghealth.el"
	   "gnotebook.el"
	   "gphoto.el"
	   "greader.el"
	   "gsheet.el"
	   "gskeleton.el"
	   "gtube.el"
	   "gweb.el"
	   "gwis.el"
	   "indent-files.el"))
  (if (and (boundp 'verbose)
	   verbose)
      (message "Byte Compile %s" file))
  (if (file-exists-p file)
      (byte-compile-file file)
    (message "** Byte compile error. Not found: %s" file)))
