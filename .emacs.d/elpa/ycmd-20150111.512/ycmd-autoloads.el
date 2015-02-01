;;; ycmd-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (ycmd-setup ycmd-mode) "ycmd" "ycmd.el" (21707
;;;;;;  40362 643776 275000))
;;; Generated autoloads from ycmd.el

(autoload 'ycmd-mode "ycmd" "\
Minor mode for interaction with the ycmd completion server.

When called interactively, toggle `ycmd-mode'.  With prefix ARG,
enable `ycmd-mode' if ARG is positive, otherwise disable it.

When called from Lisp, enable `ycmd-mode' if ARG is omitted,
nil or positive.  If ARG is `toggle', toggle `ycmd-mode'.
Otherwise behave as if called interactively.

\\{ycmd-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'ycmd-setup "ycmd" "\
Setup `ycmd-mode'.

Hook `ycmd-mode' into modes in `ycmd-file-type-map'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("ycmd-next-error.el" "ycmd-pkg.el" "ycmd-request-deferred.el"
;;;;;;  "ycmd-request.el") (21707 40362 681963 155000))

;;;***

(provide 'ycmd-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; ycmd-autoloads.el ends here
