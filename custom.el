(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Man-notify-method 'aggressive)
 '(bibtex-completion-bibliography '("~/org/bib/references.bib"))
 '(bookmark-save-flag 1)
 '(calendar-latitude 37.7643)
 '(calendar-longitude -122.4753)
 '(case-fold-search t)
 '(column-number-mode t)
 '(current-language-environment "English")
 '(cursor-type 'bar)
 '(custom-safe-themes
   '("fee7287586b17efbfda432f05539b58e86e059e78006ce9237b8732fde991b4c" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default))
 '(dabbrev-case-fold-search 'case-fold-search)
 '(dabbrev-upcase-means-case-search t)
 '(delete-by-moving-to-trash t)
 '(delete-selection-mode t)
 '(dired-auto-revert-buffer t)
 '(dired-dwim-target 'dired-dwim-target-next)
 '(dired-guess-shell-alist-user '(("" "open")))
 '(dired-listing-switches "-alh --time-style=long-iso")
 '(dired-use-ls-dired nil)
 '(display-time-day-and-date t)
 '(display-time-mode t)
 '(ebib-bibtex-dialect 'biblatex)
 '(ebib-default-directory "~/org/bib")
 '(ebib-preload-bib-files '("~/org/bib/references.bib"))
 '(ediff-keep-variants nil)
 '(ediff-split-window-function 'split-window-horizontally)
 '(ediff-window-setup-function 'ediff-setup-windows-plain)
 '(elfeed-feeds
   '(("https://developer.apple.com/news/site-updates/rss/site-updates.rss" apple)
     ("https://developer.apple.com/news/rss/news.rss" apple)
     ("https://developer.apple.com/news/releases/rss/releases.rss" apple)
     ("https://news.ycombinator.com/rss" tech hn)
     ("http://yummymelon.com/devnull/feeds/all.atom.xml" devnull)
     ("https://daringfireball.net/feeds/main" tech df)
     ("https://www.theverge.com/rss/index.xml" tech verge)
     ("https://rss.nytimes.com/services/xml/rss/nyt/HomePage.xml" nyt)
     ("https://feeds.arstechnica.com/arstechnica/index" tech ars)
     ("http://feeds.washingtonpost.com/rss/national?itid=lk_inline_manual_32" wapo national)
     ("http://feeds.washingtonpost.com/rss/world?itid=lk_inline_manual_36" wapo world)
     ("http://feeds.washingtonpost.com/rss/business?itid=lk_inline_manual_37" wapo business)
     ("https://rss.nytimes.com/services/xml/rss/nyt/World.xml" world nyt)
     ("https://rss.nytimes.com/services/xml/rss/nyt/Arts.xml" arts nyt)
     ("https://rss.nytimes.com/services/xml/rss/nyt/FashionandStyle.xml" style nyt)
     ("https://rss.nytimes.com/services/xml/rss/nyt/Health.xml" health nyt)
     ("https://rss.nytimes.com/services/xml/rss/nyt/Sports.xml" nyt sports)
     ("https://rss.nytimes.com/services/xml/rss/nyt/Technology.xml" tech nyt)
     ("https://rss.nytimes.com/services/xml/rss/nyt/Business.xml" business nyt)
     ("https://irreal.org/blog/?feed=rss2" tech emacs)
     ("https://9to5mac.com/rss" apple tech)
     ("https://spectrum.ieee.org/rss" spectrum tech)
     ("https://feeds.macrumors.com/MacRumors-All" apple tech)
     ("https://sachachua.com/blog/feed" tech emacs)
     ("https://erinkissane.com/feed.rss" opinion tech)
     ("https://www.avclub.com/rss" media)
     ("https://sf.eater.com/rss/index.xml" sf food)
     ("https://missionlocal.org/feed" sf)
     ("https://sfstandard.com/feed/" sf)))
 '(eshell-scroll-to-bottom-on-input 'this)
 '(eshell-scroll-to-bottom-on-output 'this)
 '(fill-column 80)
 '(global-auto-revert-mode t)
 '(global-auto-revert-non-file-buffers t)
 '(global-mark-ring-max 8)
 '(graphviz-dot-indent-width 4)
 '(graphviz-dot-preview-extension "svg")
 '(highlight-nonselected-windows nil)
 '(ignored-local-variable-values
   '((vc-prepare-patches-separately)
     (diff-add-log-use-relative-names . t)
     (vc-git-annotate-switches . "-w")))
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(isearch-lazy-count t)
 '(lazy-count-prefix-format nil)
 '(lazy-count-suffix-format " [%s of %s]")
 '(locate-command "mdfind")
 '(magit-save-repository-buffers 'dontask)
 '(mark-ring-max 6)
 '(markdown-command "multimarkdown")
 '(markdown-header-scaling nil)
 '(org-agenda-files '("/Users/cchoi/org"))
 '(org-agenda-include-diary t)
 '(org-babel-python-command "python3")
 '(org-blank-before-new-entry '((heading . t) (plain-list-item . auto)))
 '(org-clock-sound "/System/Library/Sounds/Glass.aiff")
 '(org-confirm-babel-evaluate nil)
 '(org-export-allow-bind-keywords t)
 '(org-export-backends '(ascii html icalendar latex md odt))
 '(org-export-with-smart-quotes t)
 '(org-export-with-sub-superscripts '{})
 '(org-export-with-toc nil)
 '(org-hide-emphasis-markers t)
 '(org-hide-leading-stars nil)
 '(org-html-postamble nil)
 '(org-indent-mode-turns-on-hiding-stars nil)
 '(org-latex-classes
   '(("article" "\\documentclass[11pt]{article}"
      ("\\section{%s}" . "\\section*{%s}")
      ("\\subsection{%s}" . "\\subsection*{%s}")
      ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
      ("\\paragraph{%s}" . "\\paragraph*{%s}")
      ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))
     ("report" "\\documentclass[11pt]{report}"
      ("\\part{%s}" . "\\part*{%s}")
      ("\\chapter{%s}" . "\\chapter*{%s}")
      ("\\section{%s}" . "\\section*{%s}")
      ("\\subsection{%s}" . "\\subsection*{%s}")
      ("\\subsubsection{%s}" . "\\subsubsection*{%s}"))
     ("book" "\\documentclass[11pt]{book}"
      ("\\part{%s}" . "\\part*{%s}")
      ("\\chapter{%s}" . "\\chapter*{%s}")
      ("\\section{%s}" . "\\section*{%s}")
      ("\\subsection{%s}" . "\\subsection*{%s}")
      ("\\subsubsection{%s}" . "\\subsubsection*{%s}"))
     ("simpleresumecv" "\\documentclass[11pt]{simpleresumecv}"
      ("\\section{%s}" . "\\section*{%s}")
      ("\\subsection{%s}" . "\\subsection*{%s}")
      ("\\subsubsection{%s}" . "\\subsubsection*{%s}"))))
 '(org-latex-compiler "xelatex")
 '(org-latex-pdf-process
   '("%latex -interaction nonstopmode --shell-escape -output-directory %o %f" "%latex -interaction nonstopmode --shell-escape -output-directory %o %f" "%latex -interaction nonstopmode --shell-escape -output-directory %o %f"))
 '(org-latex-prefer-user-labels t)
 '(org-plantuml-jar-path "/opt/local/share/java/plantuml/plantuml.jar")
 '(org-re-reveal-theme "moon")
 '(org-src-lang-modes
   '(("ocaml" . tuareg)
     ("elisp" . emacs-lisp)
     ("ditaa" . artist)
     ("asymptote" . asy)
     ("dot" . graphviz-dot)
     ("sqlite" . sql)
     ("calc" . fundamental)
     ("C" . c)
     ("cpp" . c++)
     ("C++" . c++)
     ("screen" . shell-script)
     ("shell" . sh)
     ("bash" . sh)
     ("plantuml" . plantuml)
     ("swift" . swift)
     ("swiftui" . swift)
     ("graphviz" . graphviz)
     ("mscgen" . mscgen)))
 '(org-startup-folded 'showeverything)
 '(org-startup-with-inline-images t)
 '(org-superstar-headline-bullets-list '(10687 10070 10040 10047))
 '(org-superstar-leading-bullet 32)
 '(package-archives
   '(("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.org/packages/")))
 '(package-selected-packages
   '(keycast edit-indirect ox-trac google-translate org wgrep js2-mode rainbow-mode use-package bind-key reveal-in-folder elfeed ob-swiftui ob-swift csv-mode company-restclient visual-regexp-steroids visual-regexp citar math-symbol-lists helm-bibtex ox-gist org-ref org-re-reveal webpaste company-org-block company eglot gnuplot ob-restclient restclient ox-slack good-scroll svg-clock disk-usage expand-region helm-pass password-store which-key org-outline-numbering org-superstar osx-dictionary spotlight ebib auto-complete plantuml-mode tj3-mode ledger-mode yasnippet-snippets yasnippet htmlize calfw kanban fireplace treemacs neotree smart-mode-line-powerline-theme pbcopy ox-jira ox-gfm helm-swoop helm ztree yaml-mode swift-mode sr-speedbar solarized-theme python-mode pkg-info markdown-mode magit json-mode graphviz-dot-mode google-this go-mode autopair))
 '(plantuml-default-exec-mode 'executable)
 '(plantuml-executable-path "/opt/local/bin/plantuml")
 '(plantuml-indent-level 4)
 '(py-shell-name "python3" t)
 '(python-shell-interpreter "python3")
 '(reb-re-syntax 'string)
 '(require-final-newline t)
 '(safe-local-variable-values '((vc-git-annotate-switches . "-w")))
 '(savehist-mode t)
 '(scroll-bar-mode nil)
 '(scroll-step 4)
 '(sentence-end-double-space nil)
 '(set-mark-command-repeat-pop t)
 '(speedbar-show-unknown-files t)
 '(split-width-threshold nil)
 '(tramp-terminal-type "tramp")
 '(trash-directory "~/.Trash")
 '(use-file-dialog nil)
 '(vc-make-backup-files nil)
 '(warning-suppress-types '((comp)))
 '(wdired-allow-to-change-permissions t)
 '(world-clock-list
   '(("America/Los_Angeles" "San Francisco")
     ("America/Denver" "Denver")
     ("America/Chicago" "Chicago")
     ("America/New_York" "New York")
     ("Europe/London" "London")
     ("Europe/Paris" "Barcelona")
     ("Europe/Berlin" "Berlin")
     ("Europe/Kiev" "Kyiv")
     ("Europe/Moscow" "Moscow")
     ("Asia/Singapore" "Singapore")
     ("Asia/Tokyo" "Tokyo")
     ("Asia/Seoul" "Seoul"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 150 :width normal :foundry "nil" :family "Menlo"))))
 '(Man-overstrike ((t (:inherit bold :foreground "dark slate blue"))))
 '(Man-underline ((t (:inherit underline :foreground "magenta"))))
 '(calendar-today ((t (:foreground "magenta" :underline "dark violet" :height 1.0))))
 '(calendar-weekend-header ((t (:inherit font-lock-comment-face))))
 '(comint-highlight-prompt ((t (:inherit minibuffer-prompt :foreground "dark magenta"))))
 '(eshell-prompt ((t (:foreground "#cc33ff" :weight bold))))
 '(fixed-pitch ((t (:family "Menlo" :height 150))))
 '(font-lock-comment-face ((t (:foreground "Firebrick"))))
 '(font-lock-constant-face ((t (:height 1.0))))
 '(markdown-code-face ((t (:inherit fixed-pitch))))
 '(markdown-header-face ((t (:weight semi-light :family "Futura"))))
 '(markdown-language-keyword-face ((t (:inherit font-lock-type-face))))
 '(markdown-markup-face ((t (:inherit shadow :slant normal :weight normal))))
 '(minibuffer-prompt ((t (:foreground "dark magenta"))))
 '(mode-line ((t (:background "#ff7700" :foreground "gray20" :box (:line-width (5 . 5) :color "grey75" :style flat-button) :height 1.0 :family "SF Compact Rounded"))))
 '(mode-line-inactive ((t (:inherit mode-line :background "gray"))))
 '(org-agenda-done ((t (:foreground "#00bb00"))))
 '(org-block ((t (:inherit fixed-pitch))))
 '(org-block-begin-line ((t (:background "gray90" :foreground "gray50" :underline t :inherit fixed-pitch))))
 '(org-block-end-line ((t (:inherit org-block-begin-line :overline t :underline nil))))
 '(org-code ((t (:inherit fixed-pitch))))
 '(org-date ((t (:foreground "purple" :underline t :inherit fixed-pitch))))
 '(org-formula ((t (:inherit fixed-pitch :foreground "Firebrick"))))
 '(org-hide ((t (:foreground "white"))))
 '(org-level-1 ((t (:height 1.2 :family "Futura"))))
 '(org-level-2 ((t (:family "Futura"))))
 '(org-level-3 ((t (:family "Futura"))))
 '(org-level-4 ((t (:family "Futura"))))
 '(org-meta-line ((t (:background "grey90" :foreground "grey50" :inherit fixed-pitch))))
 '(org-scheduled ((t (:foreground "#4455ff"))))
 '(org-scheduled-previously ((t (:foreground "#2255ff"))))
 '(org-scheduled-today ((t (:foreground "#cc4499"))))
 '(org-special-keyword ((t (:inherit font-lock-keyword-face :height 0.8))))
 '(org-table ((t (:foreground "Blue1" :inherit fixed-pitch))))
 '(region ((t (:extend t :background "light sky blue"))))
 '(tab-bar ((t (:inherit variable-pitch :background "grey90" :foreground "black" :height 0.75))))
 '(tab-bar-tab ((t (:inherit tab-bar :box (:line-width 1 :color "dim gray")))))
 '(tab-bar-tab-inactive ((t (:inherit tab-bar-tab :background "gainsboro" :foreground "gray62" :box nil))))
 '(variable-pitch ((t (:height 1.4 :family "Optima")))))

