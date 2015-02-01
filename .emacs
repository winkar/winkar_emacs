(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line


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
(evil-leader/set-key-for-mode 'python-mode "g" 'anaconda-mode-goto)
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)
; evil-nerd-commenter
(evilnc-default-hotkeys)




; auto-complete
;; dirty fix for having AC everywhere
(define-globalized-minor-mode real-global-auto-complete-mode
  auto-complete-mode (lambda ()
                       (if (not (minibufferp (current-buffer)))
                         (auto-complete-mode 1))
                       ))
(real-global-auto-complete-mode t)
(add-hook 'python-mode-hook 'ac-anaconda-setup)
;; (global-set-key (kbd "TAB") 'auto-complete)


; color-theme
(require 'color-theme)  
(color-theme-initialize)  
;; (color-theme-solarized)  
;; (color-theme-monokai)
(load-theme 'monokai t)



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

(require 'guide-key)
(setq guide-key/guide-key-sequence t)
(guide-key-mode 1)  ; Enable guide-key-mode


(require 'emms-setup)
(emms-standard)
(emms-default-players)


(require 'popwin)
(popwin-mode 1)

(require 'direx)

;; (require 'chinese-fonts-setup)


(tool-bar-mode 0)  
(menu-bar-mode 0)  
(scroll-bar-mode 0)  
(global-set-key (kbd "<f5>") (lambda() (interactive)(load-file "~/.emacs")))
(global-set-key (kbd "<f8>") 'bookmark-set)

(set-frame-font "Ubuntu Mono 14")
(set-fontset-font t 'han (font-spec :family "WenQuanYi Micro Hei Mono"))




