                                        ; add my lisp dir to the load path
(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
    (let* ((my-lisp-dir "~/.emacs.d/site-lisp/")
           (default-directory my-lisp-dir))
      (setq load-path (cons my-lisp-dir load-path))
      (normal-top-level-add-subdirs-to-load-path)))
;(setq my-site-lisp "~/.emacs.d/site-lisp")
;(add-to-list 'load-path my-site-lisp)

                                        ; no menu or toolbar
;(menu-bar-mode nil)
;(tool-bar-mode nil)
;(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))


                                        ; do not display startup screen
(setq inhibit-splash-screen t)


                                        ; syntax coloring by default
(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)

                                        ; quiet pleae
(setq visible-bell t)

                                        ; cut-n-paste like every other app
(cua-mode t)

                                        ; match parens/braces
(show-paren-mode)

                                        ; use 'y' in lieu of 'yes'
(fset 'yes-or-no-p 'y-or-n-p)

                                        ; display column number
(setq column-number-mode t)

                                        ; scrolling tweaks
(setq scroll-conservatively 2)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))

(setq initial-scratch-message ";; scratch

")
                                        ; asdiidoc
;; (autoload 'adoc-mode "adoc-mode")
;; (require 'adoc-mode)
;; (add-to-list 'auto-mode-alist (cons "\\.txt\\'" 'adoc-mode))
;; (add-hook 'adoc-mode-hook
;;           (lambda()
;;             (auto-fill-mode t)))

                                        ; php

(require 'php-mode)

(defun phplint-thisfile()
  (interactive)
  (compile (format "php -l %s" (buffer-file-name))))
(add-hook 'php-mode-hook
          '(lambda ()
             (local-set-key [f8] 'phplint-thisfile)))
(autoload 'geben "geben" "PHP Debugger on Emacs" t)

(require 'js2-mode)
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(require 'color-theme)
(color-theme-initialize)
(require 'color-theme-cheetos)
(color-theme-cheetos)
;; (require 'color-theme-subdued)
;; (color-theme-subdued)
                                        ; key bindings
(global-set-key (kbd "C-x C-b") 'electric-buffer-list)
(global-set-key (kbd "C-.") 'next-error)
(global-set-key (kbd "C-,") 'previous-error)
(global-set-key (kbd "RET") 'newline-and-indent)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(delete-selection-mode nil)
 '(indent-tabs-mode nil)
 '(make-backup-files nil)
 '(mark-even-if-inactive t)
 '(scroll-bar-mode (quote right))
 '(show-trailing-whitespace t)
 '(speedbar-show-unknown-files t)
 '(tab-width 4)
 '(transient-mark-mode 1))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(rst-level-1-face ((t (:background "grey30")))))
