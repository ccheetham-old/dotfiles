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

                                        ; buffer list -> eletric buffer list
(global-set-key "\C-x\C-b" 'electric-buffer-list)

                                        ; indent on ENTER
(define-key global-map (kbd "RET") 'newline-and-indent)

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
