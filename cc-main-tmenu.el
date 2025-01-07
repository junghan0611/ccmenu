;;; cc-main-tmenu.el --- Main Menu                    -*- lexical-binding: t; -*-

;; Copyright (C) 2024  Charles Choi

;; Author: Charles Choi <kickingvegas@gmail.com>
;; Keywords: tools

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;;

;;; Code:

(require 'casual-editkit)
(require 'cclisp)
;; (require 'password-store-menu)
(require 'google-translate-smooth-ui)
(require 'webpaste)

;;;; custom for doomemacs with projectile

(when (locate-library "projectile")
  (defun casual-editkit--current-project-label ()
    "Current project label using Projectile."
    (let ((project-root (projectile-project-root)))
      (if project-root
          (format "Project: %s" (file-name-nondirectory (directory-file-name project-root)))
        "Project")))

  (transient-define-prefix casual-editkit-project-tmenu ()
    "Menu for ‘Project’ commands.
Commands pertaining to project operations can be accessed here."
    ["Project"
     :description (lambda () (casual-editkit--current-project-label))
     ["File"
      ("." "browse-project" +default/browse-project) ;; for doom
      ("f" "find-file" projectile-find-file)
      ("r" "recentf" projectile-recentf)
      ("b" "switch-to-buffer" projectile-switch-to-buffer)]

     ["Dired"
      ("-" "dired" projectile-dired)
      ("_" "find-dir" projectile-find-dir)
      ("v" "vc-dir" projectile-vc)]

     ["Search/Replace"
      ("s" "search-project" +default/search-project) ;; for doom
      ("r" "replace-regexp…" projectile-replace-regexp)]
     ;; ("S" "Search regexp sequential…" project-search :transient t)
     ;; ("n" "Next sequential" fileloop-continue :transient t)]

     ["Tools"
      :pad-keys t
      ("i" "ibuffer" projectile-ibuffer)
      ("c" "compile-project" projectile-compile-project)
      ;; ("e" "run-Eshell" projectile-run-eshell)
      ;; ("M-s" "run-shell" projectile-run-shell)
      ("e" "edit-dir-locals" projectile-edit-dir-locals)
      ("!" "run-shell-command-in-root" projectile-run-shell-command-in-root)
      ("&" "run-async-shell-command-in-root" projectile-run-async-shell-command-in-root)]]

    ["Projectile"
     :class transient-row
     ("a" "add-known-project" projectile-add-known-project)
     ("p" "switch-project" projectile-switch-project)
     ("k" "kill-buffers" projectile-kill-buffers)
     ("d" "remove-known-project" projectile-remove-known-project)
     ]
    casual-editkit-navigation-group)
  )

;;;; cc-main-tmenu-customize-enable

(defvar cc-main-tmenu-customize-enable t
  "If t then enable Casual menu customizations.")

(when (and cc-main-tmenu-customize-enable (not (featurep 'cc-main-tmenu)))
  ;; modify `casual-editkit-main-tmenu'
  (transient-append-suffix 'casual-editkit-main-tmenu "R"
    '("j" "Goto Journal…" cc/select-journal-file))

  (transient-append-suffix 'casual-editkit-main-tmenu "C-o"
    '("I" "Korean Input"
      (lambda () (interactive)(set-input-method 'korean-hangul))
      :transient nil))

  (transient-append-suffix 'casual-editkit-main-tmenu "C"
    '("!" "Shell Command…" shell-command))

  (transient-append-suffix 'casual-editkit-main-tmenu "!"
    '("<f1>" "Dismiss"
      transient-quit-one))

  ;; 2024-12-22 Add more Dismiss Key
  (transient-append-suffix 'casual-editkit-main-tmenu "!"
    '("q" "Dismiss"
      transient-quit-one))

  ;; modify `casual-editkit-tools-tmenu'
  ;; (transient-append-suffix 'casual-editkit-tools-tmenu "w"
  ;;   '("P" "Password›" password-store-menu))

  (transient-append-suffix 'casual-editkit-tools-tmenu "M-e"
    '("C-p" "Call" cc/call-nanp-phone-number
      :inapt-if-not use-region-p))

  ;; (transient-append-suffix 'casual-editkit-tools-tmenu "C-p"
  ;;   '("m" "Maps" cc/open-region-in-apple-maps
  ;;     :inapt-if-not use-region-p))

  (transient-append-suffix 'casual-editkit-tools-tmenu "m"
    '("M-s" "Say" cc/say-region
      :inapt-if-not use-region-p))

  (transient-append-suffix 'casual-editkit-tools-tmenu "M-s"
    '("M-t" "Translate" google-translate-smooth-translate
      :inapt-if-not use-region-p))

  (transient-append-suffix 'casual-editkit-tools-tmenu "M-t"
    '("M-p" "Webpaste" webpaste-paste-region
      :inapt-if-not use-region-p))

  ;; (transient-append-suffix 'casual-editkit-tools-tmenu "z"
  ;;   '("F" "Fireplace" fireplace))

  ;; (transient-append-suffix 'casual-editkit-tools-tmenu "F"
  ;;   '("Z" "Snow" snow))
  )

(provide 'cc-main-tmenu)
;;; cc-main-tmenu.el ends here
