;; no backup, etc...
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq create-lockfiles nil)

;; two windows at startup
(split-window-right)

;; fullscreen at startup
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; no useless gui panels
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode 0)
(setq inhibit-startup-message t)
(global-tab-line-mode 0)
(setq ring-bell-function (lambda () ()))

;; font
(set-face-attribute 'default nil :font "PT Mono" :height 160)

;; theme
(load-theme 'night t)
;(load-theme 'day t)
 
;; offsets
(setq c-basic-offset 4)

;; enabled commands
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; file extension handling
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.inl\\'" . c++-mode))


;; c++-mode options.
(c-set-offset 'innamespace 0)
(font-lock-add-keywords
 'c++-mode
 '(
 ("#\\(include\\|define\\|undef\\|ifndef\\|elif\\|else\\|endif\\|error\\|line\\|pragma\\|ifdef\\|if\\)" . font-lock-preprocessor-face)

   ("\\<\\(false\\|nullptr\\|NULL\\|true\\)\\>". font-lock-constant-face)

   ("\\<\\(bool\\|char\\(?:\\(?:16\\|32\\|8\\)_t\\)?\\|double\\|float\\|int\\|long\\|s\\(?:hort\\|igned\\)\\|unsigned\\|void\\|wchar_t\\)\\>" . font-lock-type-face)

   ("\\<\\(a\\(?:lign\\(?:as\\|of\\)\\|nd\\(?:_eq\\)?\\|sm\\|tomic_\\(?:c\\(?:ancel\\|ommit\\)\\|noexcept\\)\\|uto\\)\\|b\\(?:it\\(?:and\\|or\\)\\|reak\\)\\|c\\(?:a\\(?:se\\|tch\\)\\|lass\\|o\\(?:_\\(?:await\\|return\\|yield\\)\\|mpl\\|n\\(?:cept\\|st\\(?:_cast\\|e\\(?:val\\|xpr\\)\\|init\\)?\\|tinue\\)\\)\\)\\|d\\(?:e\\(?:cltype\\|fault\\|lete\\)\\|o\\|ynamic_cast\\)\\|e\\(?:lse\\|num\\|x\\(?:p\\(?:\\(?:lici\\|or\\)t\\)\\|tern\\)\\)\\|f\\(?:or\\|riend\\)\\|goto\\|i\\(?:f\\|nline\\)\\|mutable\\|n\\(?:amespace\\|ew\\|o\\(?:except\\|t\\(?:_eq\\)?\\)\\)\\|o\\(?:perator\\|r\\(?:_eq\\)?\\)\\|p\\(?:r\\(?:ivate\\|otected\\)\\|ublic\\)\\|re\\(?:flexpr\\|gister\\|interpret_cast\\|quires\\|turn\\)\\|s\\(?:izeof\\|t\\(?:atic\\(?:_\\(?:\\(?:asser\\|cas\\)t\\)\\)?\\|ruct\\)\\|witch\\|ynchronized\\)\\|t\\(?:emplate\\|h\\(?:is\\|r\\(?:ead_local\\|ow\\)\\)\\|ry\\|ype\\(?:def\\|id\\|name\\)\\)\\|u\\(?:nion\\|sing\\)\\|v\\(?:irtual\\|olatile\\)\\|while\\|xor\\|override\\|final\\)\\>" . font-lock-keyword-face)

   ("\\<[0-9]*\\.?[0-9]+\\([uUlLfF]+\\|[eE][\\-+]?[0-9]+\\)?\\>" . font-lock-constant-face)
   ("\\<0[xX][0-9A-Fa-f]*\\.?[0-9A-Fa-f]+\\([fFuUlL]*\\|[eEpP][\\-+]?[0-9]+[uUlLfF]*\\)?\\>" . font-lock-constant-face)
 )
 'set
 )

;; c-mode options.
(font-lock-add-keywords
 'c-mode
 '(
   ("\\<\\(false\\|NULL\\|true\\)\\>". font-lock-constant-face)
   ("\\<[0-9]*\\.?[0-9]+\\([uUlLfF]+\\|[eE][\\-+]?[0-9]+\\)?\\>" . font-lock-constant-face)
   ("\\<0[xX][0-9A-Fa-f]*\\.?[0-9A-Fa-f]+\\([fFuUlL]*\\|[eEpP][\\-+]?[0-9]+[uUlLfF]*\\)?\\>" . font-lock-constant-face)
 )
 nil
 )
