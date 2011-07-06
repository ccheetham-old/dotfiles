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

;; (require 'js2-mode)
;; (autoload 'js2-mode "js2" nil t)
;; (add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(require 'color-theme)
(color-theme-initialize)
;(require 'color-theme-cheetos)
;; (require 'color-theme-subdued)
;; (color-theme-subdued)
                                        ; key bindings
(global-set-key (kbd "C-x C-b") 'electric-buffer-list)
(global-set-key (kbd "C-.") 'next-error)
(global-set-key (kbd "C-,") 'previous-error)
(global-set-key (kbd "RET") 'newline-and-indent)


(defun color-theme-cheetos ()
  (interactive)
  (color-theme-install
   '(color-theme-cheetos
     ((background-color . "#0C1021")
      (background-mode . dark)
      (border-color . "black")
      (cursor-color . "#A7A7A7")
      (foreground-color . "#F8F8F8")
      (mouse-color . "sienna1"))
     (default ((t (:background "#0C1021" :foreground "#F8F8F8"))))
     (blue ((t (:foreground "blue"))))
     (bold ((t (:bold t))))
     (bold-italic ((t (:bold t))))
     (border-glyph ((t (nil))))
     (buffers-tab ((t (:background "#0C1021" :foreground "#F8F8F8"))))
     (font-lock-builtin-face ((t (:foreground "#F8F8F8"))))
     (font-lock-comment-face ((t (:italic t :foreground "#AEAEAE"))))
     (font-lock-constant-face ((t (:foreground "#D8FA3C"))))
     (font-lock-doc-string-face ((t (:foreground "DarkOrange"))))
     (font-lock-function-name-face ((t (:foreground "#FF6400"))))
     (font-lock-keyword-face ((t (:foreground "#FBDE2D"))))
     (font-lock-preprocessor-face ((t (:foreground "Aquamarine"))))
     (font-lock-reference-face ((t (:foreground "SlateBlue"))))

     (font-lock-regexp-grouping-backslash ((t (:foreground "#E9C062"))))
     (font-lock-regexp-grouping-construct ((t (:foreground "red"))))

     (font-lock-string-face ((t (:foreground "#61CE3C"))))
     (font-lock-type-face ((t (:foreground "#8DA6CE"))))
     (font-lock-variable-name-face ((t (:foreground "#FF6400"))))
     (font-lock-warning-face ((t (:bold t :foreground "Pink"))))
     (gui-element ((t (:background "#D4D0C8" :foreground "black"))))
     (region ((t (:background "#253B76"))))
     (mode-line ((t (:background "grey75" :foreground "black"))))
     (highlight ((t (:background "#222222"))))
     (highline-face ((t (:background "SeaGreen"))))
     (italic ((t (nil))))
     (left-margin ((t (nil))))
     (text-cursor ((t (:background "yellow" :foreground "black"))))
     (toolbar ((t (nil))))
     (underline ((nil (:underline nil))))
     (zmacs-region ((t (:background "snow" :foreground "ble")))))))
(color-theme-cheetos)


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
