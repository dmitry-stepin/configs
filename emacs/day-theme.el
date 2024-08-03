(deftheme day "Clean day theme.")
(let
    (
     (bg "white")
     (fg "black")
     (select "SteelBlue1")
    )
  (custom-theme-set-faces
   'day
   
   `(default                                ((t (:foreground ,fg :background ,bg))))

   `(bold                                   ((t (:inherit default))))
   `(italic                                 ((t (:inherit default))))
   `(bold-italic                            ((t (:inherit default))))
   `(underline                              ((t (:inherit default))))
   `(fixed-pitch                            ((t (:inherit default))))
   `(fixed-pitch-serif                      ((t (:inherit default))))
   `(variable-pitch                         ((t (:inherit default))))
   `(shadow                                 ((t (:inherit default))))

   `(cursor                                 ((t (:inverse-video t))))

   `(fringe                                 ((t (:background ,bg))))
   `(region                                 ((t (:background ,select))))
   `(line-number                            ((t (:inherit default))))
   `(line-number-current-line               ((t (:inherit default))))

   `(font-lock-builtin-face                 ((t (:inherit default))))
   `(font-lock-comment-delimiter-face       ((t (:inherit default))))
   `(font-lock-comment-face                 ((t (:inherit default))))
   `(font-lock-constant-face                ((t (:inherit default))))
   `(font-lock-doc-face                     ((t (:inherit default))))
   `(font-lock-function-name-face           ((t (:inherit default))))
   `(font-lock-keyword-face                 ((t (:inherit default))))
   `(font-lock-negation-char-face           ((t (:inherit default))))
   `(font-lock-preprocessor-face            ((t (:inherit default))))
   `(font-lock-regexp-grouping-backslash    ((t (:inherit default))))
   `(font-lock-regexp-grouping-construct    ((t (:inherit default))))
   `(font-lock-string-face                  ((t (:inherit default))))
   `(font-lock-type-face                    ((t (:inherit default))))
   `(font-lock-variable-name-face           ((t (:inherit default))))
   `(font-lock-warning-face                 ((t (:inherit default))))
  )
)
(provide-theme 'day)
