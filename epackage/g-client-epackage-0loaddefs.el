
;;;### (autoloads (gweb-my-address gweb-maps-reverse-geocode gweb-maps-geocode
;;;;;;  gweb-google-at-point) "gweb.el" (20608 7695))
;;; Generated autoloads from ../gweb.el

(defsubst gweb-google-autocomplete-with-corpus (corpus) "\
Read user input using Google Suggest for auto-completion.
Uses specified corpus for prompting and suggest selection." (let* ((completer (intern (format "gweb-%s-suggest-completer" corpus))) (minibuffer-completing-file-name t) (completion-ignore-case t) (word (thing-at-point (quote word))) (query nil)) (unless (fboundp completer) (error "No  suggest handler for corpus %s" corpus)) (setq query (completing-read corpus completer nil nil word (quote gweb-history))) (pushnew query gweb-history) (g-url-encode query)))

(autoload 'gweb-google-at-point "gweb" "\
Google for term at point, and display top result succinctly.
Attach URL at point so we can follow it later --- subsequent invocations of this command simply follow that URL.
Optional interactive prefix arg refresh forces this cached URL to be refreshed.

\(fn SEARCH-TERM &optional REFRESH)" t nil)

(autoload 'gweb-maps-geocode "gweb" "\
Geocode given address.
Optional argument `raw-p' returns complete JSON  object.

\(fn ADDRESS &optional RAW-P)" nil nil)

(autoload 'gweb-maps-reverse-geocode "gweb" "\
Reverse geocode lat-long.
Optional argument `raw-p' returns raw JSON  object.

\(fn LAT-LONG &optional RAW-P)" nil nil)

(defvar gweb-my-location nil "\
Geo coordinates --- automatically set by reverse geocoding gweb-my-address")

(defvar gweb-my-address nil "\
Location address. Setting this updates gweb-my-location coordinates  via geocoding.")

(custom-autoload 'gweb-my-address "gweb" nil)

;;;***

;;;### (autoloads (gtube-video-featured gtube-video-by-user gtube-video-popular
;;;;;;  gtube-video-playlist gtube-video-by-category-and-tag gtube-video-by-tag
;;;;;;  gtube-video-details gtube-user-friends gtube-user-favorites
;;;;;;  gtube-user-profile) "gtube.el" (20608 7695))
;;; Generated autoloads from ../gtube.el

(autoload 'gtube-user-profile "gtube" "\
Retrieve user profile.

\(fn &optional USER)" t nil)

(autoload 'gtube-user-favorites "gtube" "\
Retrieve user favorites.

\(fn &optional USER)" t nil)

(autoload 'gtube-user-friends "gtube" "\
Retrieve user profile.

\(fn &optional USER)" t nil)

(autoload 'gtube-video-details "gtube" "\
Display details of specified video.

\(fn VIDEO-ID)" t nil)

(autoload 'gtube-video-by-tag "gtube" "\
Retrieve content having specified tag.
optional args page and count specify position in result-set and
  number of results to retrieve.

\(fn TAG &optional PAGE COUNT)" t nil)

(autoload 'gtube-video-by-category-and-tag "gtube" "\
Retrieve content from specified category having specified tag.
optional args page and count specify position in result-set and
  number of results to retrieve.

\(fn CATEGORY TAG &optional PAGE COUNT)" t nil)

(autoload 'gtube-video-playlist "gtube" "\
Retrieve content in specified playlist.
optional args page and count specify position in result-set and
  number of results to retrieve.

\(fn PLAYLIST-ID &optional PAGE COUNT)" t nil)

(autoload 'gtube-video-popular "gtube" "\
Retrieve popular content for specified time-range.
  Time-range is one of day, week, month, or all.

\(fn TIME-RANGE)" t nil)

(autoload 'gtube-video-by-user "gtube" "\
Retrieve content from specified user.
optional args page and count specify position in result-set and
  number of results to retrieve.

\(fn USER &optional PAGE COUNT)" t nil)

(autoload 'gtube-video-featured "gtube" "\
Retrieved featured video list.

\(fn)" t nil)

;;;***

;;;### (autoloads (gskeleton-sign-in gskeleton-sign-out) "gskeleton"
;;;;;;  "gskeleton.el" (20608 7695))
;;; Generated autoloads from ../gskeleton.el

(autoload 'gskeleton-sign-out "gskeleton" "\
Resets client so you can start with a different userid.

\(fn)" t nil)

(autoload 'gskeleton-sign-in "gskeleton" "\
Resets client so you can start with a different userid.

\(fn)" t nil)

;;;***

;;;### (autoloads (gsheet-sign-in gsheet-sign-out gsheet-sheets gsheet-fetch)
;;;;;;  "gsheet.el" (20608 7695))
;;; Generated autoloads from ../gsheet.el

(autoload 'gsheet-fetch "gsheet" "\
Fetch specified sheet.

\(fn SHEET-URL)" t nil)

(autoload 'gsheet-sheets "gsheet" "\
Retrieve and display feed of feeds after authenticating.

\(fn)" t nil)

(autoload 'gsheet-sign-out "gsheet" "\
Resets client so you can start with a different userid.

\(fn)" t nil)

(autoload 'gsheet-sign-in "gsheet" "\
Resets client so you can start with a different userid.

\(fn)" t nil)

;;;***

;;;### (autoloads (greader-re-authenticate greader-sign-in greader-sign-out
;;;;;;  greader-search greader-find-feeds greader-star greader-add-label
;;;;;;  greader-update-subscription greader-untag-feed greader-tag-feed
;;;;;;  greader-title-feed greader-unsubscribe-feed greader-subscribe-feed
;;;;;;  greader-opml greader-feed-list greader-subscriptions greader-subscription-list
;;;;;;  greader-preferences greader-reading-list) "greader.el"
;;;;;;  (20608 7695))
;;; Generated autoloads from ../greader.el

(autoload 'greader-reading-list "greader" "\
Ensure our cookies are live, and get the reading list.
Optional interactive prefix `state' prompts for state to retrieve

e.g., starred.

\(fn &optional STATE)" t nil)

(autoload 'greader-preferences "greader" "\
Ensure our cookies are live, and get all preferences for this
user.

\(fn)" t nil)

(autoload 'greader-subscription-list "greader" "\
Return list of subscribed urls.

\(fn)" nil nil)

(autoload 'greader-subscriptions "greader" "\
Return list of subscribed feeds.

\(fn)" nil nil)

(autoload 'greader-feed-list "greader" "\
Retrieve list of subscribed feeds.

\(fn)" t nil)

(autoload 'greader-opml "greader" "\
Retrieve OPML representation of our subscription list.

\(fn)" t nil)

(autoload 'greader-subscribe-feed "greader" "\
Subscribe to specified feed.

\(fn FEED-URL)" t nil)

(autoload 'greader-unsubscribe-feed "greader" "\
UnSubscribe from specified feed.

\(fn FEED-URL)" t nil)

(autoload 'greader-title-feed "greader" "\
Title  specified feed.

\(fn FEED-URL)" t nil)

(autoload 'greader-tag-feed "greader" "\
Tag  specified feed.

\(fn FEED-URL)" t nil)

(autoload 'greader-untag-feed "greader" "\
Remove Tag from specified feed.

\(fn FEED-URL)" t nil)

(autoload 'greader-update-subscription "greader" "\
Perform specified subscribe, unsubscribe, or edit action.

\(fn FEED-URL ACTION)" nil nil)

(autoload 'greader-add-label "greader" "\
Add label to this item.

\(fn ITEM-URL LABEL)" t nil)

(autoload 'greader-star "greader" "\
Star this item.

\(fn ITEM-URL)" t nil)

(autoload 'greader-find-feeds "greader" "\
Find feeds matching query.

\(fn QUERY)" t nil)

(autoload 'greader-search "greader" "\
GReader search.

\(fn QUERY)" t nil)

(autoload 'greader-sign-out "greader" "\
Resets client so you can start with a different userid.

\(fn)" t nil)

(autoload 'greader-sign-in "greader" "\
Resets client so you can start with a different userid.

\(fn)" t nil)

(autoload 'greader-re-authenticate "greader" "\
Reauthenticate current user.

\(fn)" t nil)

;;;***

;;;### (autoloads (gphoto-edit-entry gphoto-sign-in gphoto-sign-out
;;;;;;  gphoto-comment-or-tag gphoto-directory-add-photos gphoto-photo-add
;;;;;;  gphoto-album-create gphoto-user-tagsearch gphoto-user-search
;;;;;;  gphoto-recent gphoto-community-search gphoto-download gphoto-view
;;;;;;  gphoto-tags gphoto-albums gphoto-feeds) "gphoto.el"
;;;;;;  (20608 7695))
;;; Generated autoloads from ../gphoto.el

(autoload 'gphoto-feeds "gphoto" "\
Retrieve and display feed of albums or tags after authenticating.

\(fn KIND USER)" t nil)

(autoload 'gphoto-albums "gphoto" "\
Display feed of albums.
Interactive prefix arg prompts for userid whose albums we request.

\(fn &optional PROMPT)" t nil)

(autoload 'gphoto-tags "gphoto" "\
View feed of tags.

\(fn)" t nil)

(autoload 'gphoto-view "gphoto" "\
Retrieve and display resource after authenticating.

\(fn RESOURCE)" t nil)

(autoload 'gphoto-download "gphoto" "\
Download resource after authenticating.

\(fn RESOURCE)" t nil)

(autoload 'gphoto-community-search "gphoto" "\
Search all public photos.

\(fn QUERY)" t nil)

(autoload 'gphoto-recent "gphoto" "\
Retrieve feed of recently uploaded photos or comments.

\(fn USER KIND)" t nil)

(autoload 'gphoto-user-search "gphoto" "\
Retrieve feed of recently uploaded comments for  specified user.

\(fn USER QUERY)" t nil)

(autoload 'gphoto-user-tagsearch "gphoto" "\
Retrieve feed o matches comments for  specified user.

\(fn USER TAG)" t nil)

(autoload 'gphoto-album-create "gphoto" "\
Create a new GPhoto album.

\(fn)" t nil)

(autoload 'gphoto-photo-add "gphoto" "\
Add a photo to an existing album.

\(fn ALBUM-NAME PHOTO)" t nil)

(autoload 'gphoto-directory-add-photos "gphoto" "\
Add all jpeg files in a directory to specified album.

\(fn DIRECTORY ALBUM-NAME)" t nil)

(autoload 'gphoto-comment-or-tag "gphoto" "\
Add comments or tags  to an existing photo.

\(fn TYPE RESOURCE)" t nil)

(autoload 'gphoto-sign-out "gphoto" "\
Resets client so you can start with a different userid.

\(fn)" t nil)

(autoload 'gphoto-sign-in "gphoto" "\
Resets client so you can start with a different userid.

\(fn)" t nil)

(autoload 'gphoto-edit-entry "gphoto" "\
Retrieve metadata for entry and prepare it for editting.
The retrieved entry is placed in a buffer ready for editing.
`url' is the URL of the entry.

\(fn URL)" t nil)

;;;***

;;;### (autoloads (ghealth-sign-in ghealth-sign-out) "ghealth"
;;;;;;  "ghealth.el" (20608 7695))
;;; Generated autoloads from ../ghealth.el

(autoload 'ghealth-sign-out "ghealth" "\
Resets client so you can start with a different userid.

\(fn)" t nil)

(autoload 'ghealth-sign-in "ghealth" "\
Resets client so you can start with a different userid.

\(fn)" t nil)

;;;***

;;;### (autoloads (gfinance-sign-in gfinance-sign-out gfinance-display-feed
;;;;;;  gfinance-portfolios) "gfinance.el" (20608
;;;;;;  7695))
;;; Generated autoloads from ../gfinance.el

(autoload 'gfinance-portfolios "gfinance" "\
Retrieve and display feed of feeds after authenticating.

\(fn)" t nil)

(autoload 'gfinance-display-feed "gfinance" "\
Retrieve and display feedat feed-url  after authenticating.

\(fn FEED-URL)" t nil)

(autoload 'gfinance-sign-out "gfinance" "\
Resets client so you can start with a different userid.

\(fn)" t nil)

(autoload 'gfinance-sign-in "gfinance" "\
Resets client so you can start with a different userid.

\(fn)" t nil)

;;;***

;;;### (autoloads (gfeeds-lookup-and-view gfeeds-view gfeeds-titles
;;;;;;  gfeeds-freshness) "gfeeds.el" (20608 7695))
;;; Generated autoloads from ../gfeeds.el

(defsubst gfeeds-feed (feed-url) "\
Return feed structure." (declare (special gfeeds-feeds-url gfeeds-referer)) (let ((result nil)) (g-using-scratch (call-process g-curl-program nil t nil "-s" "-e" gfeeds-referer (format gfeeds-feeds-url (g-url-encode feed-url))) (goto-char (point-min)) (setq result (json-read)) (when (= 200 (g-json-get (quote responseStatus) result)) (g-json-get (quote feed) (g-json-get (quote responseData) result))))))

(defsubst gfeeds-lookup (url) "\
Lookup feed for a given Web page." (declare (special gfeeds-lookup-url gfeeds-referer)) (let ((result nil)) (g-using-scratch (call-process g-curl-program nil t nil "-s" "-e" gfeeds-referer (format gfeeds-lookup-url (g-url-encode url))) (goto-char (point-min)) (setq result (json-read)) (when (= 200 (g-json-get (quote responseStatus) result)) (g-json-get (quote url) (g-json-get (quote responseData) result))))))

(defsubst gfeeds-find (query) "\
Find feeds matching a query." (declare (special gfeeds-find-url gfeeds-referer)) (let ((result nil)) (g-using-scratch (call-process g-curl-program nil t nil "-s" "-e" gfeeds-referer (format gfeeds-find-url (g-url-encode query))) (goto-char (point-min)) (setq result (json-read)) (when (= 200 (g-json-get (quote responseStatus) result)) (g-json-get (quote entries) (g-json-get (quote responseData) result))))))

(defvar gfeeds-freshness "1 hour" "\
Freshness used to decide if we return titles.")

(custom-autoload 'gfeeds-freshness "gfeeds" nil)

(autoload 'gfeeds-titles "gfeeds" "\
Return list of titles from feed at feed-url.

\(fn FEED-URL)" nil nil)

(autoload 'gfeeds-view "gfeeds" "\
Display Feed in a browser.
Interactive prefix arg causes the feed url to be looked up given a Web site.

\(fn URL &optional LOOKUP)" t nil)

(autoload 'gfeeds-lookup-and-view "gfeeds" "\
Lookup feed URL for a site and browse result.

\(fn SITE)" t nil)

;;;***

;;;### (autoloads (gdocs-sign-in gdocs-sign-out gdocs-view-item gdocs-delete-item
;;;;;;  gdocs-add-collaborator gdocs-publish gdocs-doclist) "gdocs"
;;;;;;  "gdocs.el" (20608 7695))
;;; Generated autoloads from ../gdocs.el

(autoload 'gdocs-doclist "gdocs" "\
Retrieve and display feed of feeds after authenticating.
Interactive prefix arg prompts for a query string.

\(fn &optional QUERY)" t nil)

(autoload 'gdocs-publish "gdocs" "\
Export from given content type to Google Docs.

\(fn CONTENT-TYPE)" t nil)

(autoload 'gdocs-add-collaborator "gdocs" "\
Add collaborator to ACL at acl-url.
You can find the acl-url through the DocList.

\(fn EMAIL ACL-URL)" t nil)

(autoload 'gdocs-delete-item "gdocs" "\
Delete specified item.

\(fn URL)" t nil)

(autoload 'gdocs-view-item "gdocs" "\
View specified item.

\(fn URL)" t nil)

(autoload 'gdocs-sign-out "gdocs" "\
Resets client so you can start with a different userid.

\(fn)" t nil)

(autoload 'gdocs-sign-in "gdocs" "\
Resets client so you can start with a different userid.

\(fn)" t nil)

;;;***

;;;### (autoloads (gcontacts-create gcontacts-initialize) "gcontacts"
;;;;;;  "gcontacts.el" (20608 7695))
;;; Generated autoloads from ../gcontacts.el

(autoload 'gcontacts-initialize "gcontacts" "\
Initialize GContacts process handle.

\(fn USERNAME)" t nil)

(autoload 'gcontacts-create "gcontacts" "\
Create a new contact as specified.

\(fn NAME EMAIL MOBILE)" t nil)

;;;***

;;;### (autoloads (gcal-sign-in gcal-sign-out gcal-emacs-calendar-setup
;;;;;;  gcal-show-event gcal-view gcal-calendar-agenda-days gcal-reject-event
;;;;;;  gcal-delete-event gcal-quickadd-event gcal-add-event gcal-user-email
;;;;;;  gcal-default-user-email) "gcal.el" (20608 7695))
;;; Generated autoloads from ../gcal.el

(defvar gcal-default-user-email nil "\
Default user id for Calendar.")

(custom-autoload 'gcal-default-user-email "gcal" t)

(defvar gcal-user-email nil "\
Mail address that identifies calendar user.")

(custom-autoload 'gcal-user-email "gcal" t)

(autoload 'gcal-add-event "gcal" "\
Add a calendar event.

\(fn)" t nil)

(autoload 'gcal-quickadd-event "gcal" "\
Add a calendar event.
Specify the event in plain English.

\(fn EVENT-DESC)" t nil)

(autoload 'gcal-delete-event "gcal" "\
Delete a calendar event.

\(fn EVENT-URI)" t nil)

(autoload 'gcal-reject-event "gcal" "\
Reject (RSVP)  a calendar event.

\(fn EVENT-URI)" t nil)

(defvar gcal-calendar-agenda-days 5 "\
Number of days for which we show an agenda by default.")

(custom-autoload 'gcal-calendar-agenda-days "gcal" t)

(autoload 'gcal-view "gcal" "\
Retrieve and display resource after authenticating.

\(fn RESOURCE)" t nil)

(autoload 'gcal-show-event "gcal" "\
Show event at URL.

\(fn URL)" t nil)

(define-prefix-command 'gcal-calendar-prefix-map)

(autoload 'gcal-emacs-calendar-setup "gcal" "\
Setup GCal keybindings in Emacs calendar.

\(fn)" nil nil)

(autoload 'gcal-sign-out "gcal" "\
Resets client so you can start with a different userid.

\(fn)" t nil)

(autoload 'gcal-sign-in "gcal" "\
Sign in, useful when changing to a different user profile.

\(fn)" t nil)

;;;***

;;;### (autoloads (gbooks-sign-in gbooks-sign-out) "gbooks.el"
;;;;;;  (20608 7695))
;;; Generated autoloads from ../gbooks.el

(autoload 'gbooks-sign-out "gbooks" "\
Resets client so you can start with a different userid.

\(fn)" t nil)

(autoload 'gbooks-sign-in "gbooks" "\
Resets client so you can start with a different userid.

\(fn)" t nil)

;;;***

;;;### (autoloads (gblogger-sign-in gblogger-sign-out gblogger-add-label
;;;;;;  gblogger-delete-entry gblogger-new-entry gblogger-edit-entry
;;;;;;  gblogger-atom-display gblogger-blog) "gblogger.el"
;;;;;;  (20608 7695))
;;; Generated autoloads from ../gblogger.el

(autoload 'gblogger-blog "gblogger" "\
Retrieve and display feed of feeds after authenticating.

\(fn)" t nil)

(autoload 'gblogger-atom-display "gblogger" "\
Retrieve and display specified feed after authenticating.

\(fn FEED-URL)" t nil)

(autoload 'gblogger-edit-entry "gblogger" "\
Retrieve entry and prepare it for editting.
The retrieved entry is placed in a buffer ready for editing.
`url' is the URL of the entry.

\(fn URL)" t nil)

(autoload 'gblogger-new-entry "gblogger" "\
Create a new Blog post.

\(fn URL &optional TITLE TEXT)" t nil)

(autoload 'gblogger-delete-entry "gblogger" "\
Delete item at specified edit URL.

\(fn EDIT-URL)" t nil)

(autoload 'gblogger-add-label "gblogger" "\
Adds labels to gblogger entry being editted.

\(fn LABEL)" t nil)

(autoload 'gblogger-sign-out "gblogger" "\
Resets client so you can start with a different userid.

\(fn)" t nil)

(autoload 'gblogger-sign-in "gblogger" "\
Resets client so you can start with a different userid.

\(fn)" t nil)

;;;***

;;;### (autoloads (g-auth-lifetime) "g-auth.el" (20608
;;;;;;  7695))
;;; Generated autoloads from ../g-auth.el

(defvar g-auth-lifetime "4 hours" "\
Auth lifetime.")

(custom-autoload 'g-auth-lifetime "g-auth" nil)

;;;***

;;;### (autoloads (g-app-view g-app-publish) "g-app.el"
;;;;;;  (20608 7695))
;;; Generated autoloads from ../g-app.el

(autoload 'g-app-publish "g-app" "\
Publish current entry.

\(fn)" t nil)

(autoload 'g-app-view "g-app" "\
View feed using auth credentials in auth-handle.

\(fn AUTH-HANDLE FEED-URL)" t nil)

;;;***
