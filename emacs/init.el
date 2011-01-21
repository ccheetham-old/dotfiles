                                        ; add my lisp dir to the load path
(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
    (let* ((my-lisp-dir "~/.emacs.d/site-lisp/")
	   (default-directory my-lisp-dir))
      (setq load-path (cons my-lisp-dir load-path))
      (normal-top-level-add-subdirs-to-load-path)))

                                        ; do not display startup screen
(setq inhibit-splash-screen t)


                                        ; no menu or toolbar
(menu-bar-mode nil)
(if window-system (tool-bar-mode nil))

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

(defun phplint-thisfile()
  (interactive)
  (compile (format "php -l %s" (buffer-file-name))))
(add-hook 'php-mode-hook
          '(lambda ()
             (local-set-key [f8] 'phplint-thisfile)))
(autoload 'geben "geben" "PHP Debugger on Emacs" t)

(require 'color-theme)
(color-theme-initialize)
(defun color-theme-cheetos ()
  "Cheetos color theme"
  (interactive)
  (color-theme-install
   '(color-theme-cheetos
     ((background-color . "#222228")
      (background-mode . dark)
      (border-color . "#111")
      (cursor-color . "yellow")
      (foreground-color . "#ddd")
      (mouse-color . "sienna1"))
     (default ((t (:background "#111" :foreground "#ddd"))))
     (blue ((t (:foreground "blue"))))
     (bold ((t (:bold t))))
     (bold-italic ((t (:bold t :slant italic))))
     (border-glyph ((t (nil))))
     (buffers-tab ((t (:background "#111" :foreground "#ddd"))))
     (diff-added ((t (:background "pale green" :foreground "black"))))
     (diff-removed ((t (:background "light coral" :foreground "black"))))
     (font-lock-builtin-face ((t (:foreground "#dd7b3b"))))
     (font-lock-comment-face ((t (:foreground "orange" ))))
     (font-lock-constant-face ((t (:foreground "#99cf50"))))
     (font-lock-doc-string-face ((t (:foreground "#9b859d"))))
     (font-lock-function-name-face ((t (:foreground "#e9c062" :bold t))))
     (font-lock-keyword-face ((t (:foreground "#cf6a4c" :bold t))))
     (font-lock-preprocessor-face ((t (:foreground "#aeaeae"))))
     (font-lock-reference-face ((t (:foreground "8b98ab"))))
     (font-lock-string-face ((t (:foreground "#65b042"))))
     (font-lock-type-face ((t (:foreground "#c5af75"))))
     (font-lock-variable-name-face ((t (:foreground "#3387cc"))))
     (font-lock-warning-face ((t (:bold t :background "#420e09" :foreground "#eeeeee"))))
     (erc-current-nick-face ((t (:foreground "#aeaeae"))))
     (erc-default-face ((t (:foreground "#ddd"))))
     (erc-keyword-face ((t (:foreground "#cf6a4c"))))
     (erc-notice-face ((t (:foreground "#666"))))
     (erc-timestamp-face ((t (:foreground "#65b042"))))
     (erc-underline-face ((t (:foreground "c5af75"))))
     (nxml-attribute-local-name-face ((t (:foreground "#3387cc"))))
     (nxml-attribute-colon-face ((t (:foreground "#e28964"))))
     (nxml-attribute-prefix-face ((t (:foreground "#cf6a4c"))))
     (nxml-attribute-value-face ((t (:foreground "#65b042"))))
     (nxml-attribute-value-delimiter-face ((t (:foreground "#99cf50"))))
     (nxml-namespace-attribute-prefix-face ((t (:foreground "#9b859d"))))
     (nxml-comment-content-face ((t (:foreground "#666"))))
     (nxml-comment-delimiter-face ((t (:foreground "#333"))))
     (nxml-element-local-name-face ((t (:foreground "#e9c062"))))
     (nxml-markup-declaration-delimiter-face ((t (:foreground "#aeaeae"))))
     (nxml-namespace-attribute-xmlns-face ((t (:foreground "#8b98ab"))))
     (nxml-prolog-keyword-face ((t (:foreground "#c5af75"))))
     (nxml-prolog-literal-content-face ((t (:foreground "#dad085"))))
     (nxml-tag-delimiter-face ((t (:foreground "#cda869"))))
     (nxml-tag-slash-face ((t (:foreground "#cda869"))))
     (nxml-text-face ((t (:foreground "#ddd"))))
     (gui-element ((t (:background "#0e2231" :foreground "black"))))
     (highlight ((t (:background "palegreen" :foreground "black" :bold t :slant italic))))
     ;(highline-face ((t (:background "#4a410d"))))
     (highline-face ((t (:background "red"))))
     (italic ((t (nil))))
     (left-margin ((t (nil))))
     (mmm-default-submode-face ((t (:background "#111"))))
     (mode-line ((t (:background "#e6e5e4" :foreground "black"))))
     (primary-selection ((t (:background "#9364D4"))))
     (region ((t (:background "#9364d4"))))
     (text-cursor ((t (:background "yellow" :foreground "black"))))
     (underline ((nil (:underline nil)))))))
(color-theme-cheetos)

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
 )
