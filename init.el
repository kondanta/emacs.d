
;;; Start

(setq gc-cons-threshold 402653184
      gc-cons-percentage 0.6)

(setq straight-vc-git-default-protocol 'ssh)

;; keep the installed packages in .emacs.d
(setq package-user-dir (expand-file-name "elpa" user-emacs-directory))
;; (package-initialize)

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'org-plus-contrib)

(straight-use-package 'use-package)
(setq straight-use-package-by-default t)
;; (setq package-archives '(("melpa" . "http://melpa.org/packages/")
;;                          ("gnu" . "http://elpa.gnu.org/packages/")))
;; (require 'package)
;; (add-to-list 'package-archives
;;              '("melpa" . "https://melpa.org/packages/") t)

;; update the package metadata is the local cache is missing
;; (unless package-archive-contents
;;   (package-refresh-contents))


;; (unless (package-installed-p 'use-package)
;;   (package-refresh-contents)
;;   (package-install 'use-package))

;; (unless (package-installed-p 'spacemacs-theme)
;;   (package-refresh-contents)
;;   (package-install 'spacemacs-theme))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;config.org linker. For manipulating config in a nice way.
(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(custom-enabled-themes (quote (gruvbox-dark-medium)))
 '(custom-safe-themes
   (quote
    ("aded61687237d1dff6325edb492bde536f40b048eab7246c61d5c6643c696b7f" "8f97d5ec8a774485296e366fdde6ff5589cf9e319a584b845b6f7fa788c9fa9a" "a622aaf6377fe1cd14e4298497b7b2cae2efc9e0ce362dade3a58c16c89e089c" "2a9039b093df61e4517302f40ebaf2d3e95215cb2f9684c8c1a446659ee226b9" "e2fd81495089dc09d14a88f29dfdff7645f213e2c03650ac2dd275de52a513de" "08ef1356470a9d3bf363ffab0705d90f8a492796e9db489936de4bde6a4fdb19" "83b1fda71a1cf78a596891c0cc10601e93d5450148f98e9b66dde80349b20195" "217ec62e2aba3b5bf1781b30ac94870c7d8192b24e856c346b98fce4a896046b" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(fci-rule-color "#383838")
 '(line-number-mode nil)
 '(lsp-keymap-prefix "C-c C-l")
 '(lsp-prefer-flymake nil t)
 '(lsp-ui-doc-border "#fdf4c1")
 '(lsp-ui-doc-enable t)
 '(lsp-ui-doc-header t)
 '(lsp-ui-doc-include-signature t)
 '(lsp-ui-doc-position (quote top))
 '(lsp-ui-peek t t)
 '(lsp-ui-sideline-enable t)
 '(lsp-ui-sideline-show-code-actions t)
 '(lsp-ui-sidline-ignore-duplicate t t)
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(org-agenda-files (quote ("~/.syncthing/emacs/org")))
 '(org-export-backends (quote (ascii html icalendar latex md odt)))
 '(org-tags-column -80)
 '(package-selected-packages
   (quote
    (json-mode terraform-mode all-the-icons exec-path-from-shell go-autocomplete markdown-mode dart-mode move-text magit-gitflow gruvbox-theme gruvbox gruvbox-dark-hard-theme gruvbox-dark-hard cmake-mode company-go flycheck-gometalinter irony-eldoc magit expand-region mark-multiple dockerfile-mode docker-compose-mode yaml-mode yasnippet ido-vertical-mode company-dart flycheck-rust rust rust-mode go-mode company-c-headers flycheck-clang-analyzer projectile company-irony pretty-mode swiper diminish spaceline company dashboard rainbow-delimiters rainbow-delimeters switch-window rainbow-mode avy smex org-bullets which-key)))
 '(pdf-view-midnight-colors (quote ("#b2b2b2" . "#292b2e")))
 '(terraform-indent-level 4)
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))
            
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#282828" :foreground "#fdf4c1" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 180 :width normal :foundry "CTDB" :family "Sarasa Term Slab CL"))))
 '(markdown-code-face ((t (:inherit Sarasa Term Slab CL))))
 '(org-level-1 ((t (:foreground "#83a598" :family "Sarasa Term Slab CL")))))

;;; init.el ends here
