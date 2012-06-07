;;; tomorrow-night-theme.el --- custom theme for faces

;;; Commentary:
;;
;;; Tomorrow Night Theme
;;
;; Originally by Chris Kempson https://github.com/ChrisKempson/Tomorrow-Theme
;; Ported to GNU Emacs by Chris Charles
;; Ported to GNU Emacs 24's built-in theme system by Jim Myhrberg (@jimeh)

;;; Code:

(deftheme tomorrow-night
  "A Pastel Coloured Theme")

(let ((background "#1d1f21")
      (current-line "#282a2e")
      (selection "#373b41")
      (foreground "#c5c8c6")
      (comment "#969896")
      (cursor "#aeafad")
      (red "#cc6666")
      (orange "#de935f")
      (yellow "#f0c674")
      (green "#b5bd68")
      (aqua "#8abeb7")
      (blue "#81a2be")
      (purple "#b294bb"))

  (custom-theme-set-faces
   'tomorrow-night

   ;; Built-in stuff (Emacs 23)
   `(default ((t (:background ,background :foreground ,foreground))))
   `(fringe ((t (:background ,current-line))))
   `(minibuffer-prompt ((t (:foreground ,blue))))
   `(mode-line ((t (:background ,current-line :foreground ,foreground))))
   `(region ((t (:background ,selection))))

   ;; Font-lock stuff
   `(font-lock-comment-face ((t (:foreground ,comment))))
   `(font-lock-constant-face ((t (:foreground ,green))))
   `(font-lock-doc-string-face ((t (:foreground ,comment))))
   `(font-lock-function-name-face ((t (:foreground ,blue))))
   `(font-lock-keyword-face ((t (:foreground ,purple))))
   `(font-lock-string-face ((t (:foreground ,green))))
   `(font-lock-type-face ((t (:foreground ,yellow))))
   `(font-lock-variable-name-face ((t (:foreground ,red))))
   `(font-lock-warning-face ((t (:foreground ,red))))

   ;; hl-line-mode
   `(hl-line ((t (:background ,current-line))))

   ;; linum-mode
   `(linum ((t (:background ,current-line :foreground ,foreground))))

   ;; raninbow delimiters
   `(rainbow-delimiters-depth-1-face ((t (:foreground "#fa2e59"))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground "#f8b88b"))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground "#faf884"))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground "#baed91"))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground "#b2cefe"))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground "#f2a2e8"))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground "#fa2e59"))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground "#f8b88b"))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground "#faf884"))))
   `(rainbow-delimiters-unmatched-face ((t (:foreground "white"))))

   ;; org-mode
   `(org-date ((t (:foreground ,purple))))
   `(org-done ((t (:foreground ,green))))
   `(org-hide ((t (:foreground ,current-line))))
   `(org-link ((t (:foreground ,blue))))
   `(org-todo ((t (:foreground ,red))))

   ;; show-paren-mode
   `(show-paren-match ((t (:background ,blue :foreground ,current-line))))
   `(show-paren-mismatch ((t (:background ,orange :foreground ,current-line)))))

  (custom-theme-set-variables
   'tomorrow-night

   `(ansi-color-names-vector
     ;; black, red, green, yellow, blue, magenta, cyan, white
     [,background ,red ,green ,yellow ,blue ,purple ,blue ,foreground])
   `(ansi-term-color-vector
     ;; black, red, green, yellow, blue, magenta, cyan, white
     [unspecified ,background ,red ,green ,yellow ,blue ,purple ,blue ,foreground])))

(provide-theme 'tomorrow-night)

;;; tomorrow-night-theme.el ends here