(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line


;;neotree
(require 'neotree)
(global-set-key (kbd "<f4>") 'neotree-projectile-action)



; helm
(require 'helm-config)
(global-set-key (kbd "M-x") 'helm-M-x)
(setq helm-M-x-fuzzy-match  t)
(setq helm-buffers-fuzzy-matching  t)


; Projectile
;; (setq projectile-require-project-root nil)
(projectile-global-mode)

; evil
(require 'evil-jumper)
(global-evil-jumper-mode)
(require 'evil-leader)
(global-evil-leader-mode)
(evil-leader/set-leader "<SPC>")
(evil-leader/set-key "p" 'helm-projectile)
(evil-leader/set-key "o" 'helm-projectile-find-file-in-known-projects)
(evil-leader/set-key "b" 'helm-buffers-list)
(evil-leader/set-key "m" 'helm-bookmarks)
(evil-leader/set-key "r" 'helm-imenu)
(evil-leader/set-key "f" 'helm-find-files)
(evil-leader/set-key "/" 'evilnc-comment-or-uncomment-lines)
(evil-leader/set-key "TAB" 'other-window)
(evil-leader/set-key "w" 'delete-window)
(evil-leader/set-key "n" 'evil-window-vnew)
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)
; evil-nerd-commenter
(evilnc-default-hotkeys)




; auto-complete
;; dirty fix for having AC everywhere
;; (define-globalized-minor-mode real-global-auto-complete-mode
;;   auto-complete-mode (lambda ()
;;                        (if (not (minibufferp (current-buffer)))
;;                          (auto-complete-mode 1))
;;                        ))
;; (real-global-auto-complete-mode t)
;; (add-hook 'python-mode-hook 'ac-anaconda-setup)
(require 'elpy)
(elpy-enable)
(evil-leader/set-key-for-mode 'python-mode "g" 'elpy-goto-definition)
(evil-leader/set-key-for-mode 'python-mode "e" 'elpy-multiedit)



; color-theme
;; (require 'color-theme)  
;; (color-theme-initialize)  
;; (color-theme-solarized)  


(require 'sublime-themes)
(load-theme 'molokai t)


; smartparens
(require 'smartparens-config)
(smartparens-global-mode 1)

;window-number
(require 'window-numbering)
(window-numbering-mode 1)


; yasnippet
(require 'yasnippet)
(yas-global-mode 1)



; magit
(require 'magit)

; markdown
(autoload 'markdown-mode "markdown-mode" "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))


;; guide-key
(require 'guide-key)
(setq guide-key/guide-key-sequence t)
(guide-key-mode 1)  ; Enable guide-key-mode


;; emms
(require 'emms-setup)
(emms-standard)
(emms-default-players)
(emms-add-directory "~/.emacs.d/music")


;; ;; popwin
;; (require 'popwin)
;; (popwin-mode 1)


;; ;; direx
;; (require 'direx)
;; (push '(direx:direx-mode :position left :width 25 :dedicated t)
;;       popwin:special-display-config)
;; (evil-leader/set-key "t" 'direx:jump-to-directory-other-window)


;; (require 'powerline-evil)
(require 'powerline)
(powerline-default-theme)

(require 'desktop)
(desktop-save-mode 1)

(require 'session)
(add-hook 'after-init-hook
          'session-initialize)

;; ;; sublimity
;; (require 'sublimity)
;; (require 'sublimity-scroll)
;; (require 'sublimity-map)
;; (require 'sublimity-attractive)
;; (sublimity-mode 1)
;; (sublimity-map-set-delay nil)
;; ;; (setq sublimity-scroll-weight 10
;; ;;       sublimity-scroll-drift-length 5)
;; (setq sublimity-map-size 20)
;; (setq sublimity-map-fraction 0.3)
;; (setq sublimity-map-text-scale -7)

;; (add-hook 'sublimity-map-setup-hook (lambda () (text-scale-set -3)))



;; (require 'chinese-fonts-setup)

;; (global-linum-mode t)
(linum-mode)
(tool-bar-mode 0)  
(menu-bar-mode 0)  
(scroll-bar-mode 0)  
(global-set-key (kbd "<f5>") (lambda() (interactive)(load-file "~/.emacs")))
(global-set-key (kbd "<f8>") 'bookmark-set)

(set-frame-font "Ubuntu Mono 14")
(set-fontset-font t 'han (font-spec :family "WenQuanYi Micro Hei Mono"))




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("0e121ff9bef6937edad8dfcff7d88ac9219b5b4f1570fd1702e546a80dba0832" "7bde52fdac7ac54d00f3d4c559f2f7aa899311655e7eb20ec5491f3b5c533fe8" default)))
 '(session-use-package t nil (session)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flymake-errline ((t nil)))
 '(flymake-warnline ((t nil))))
