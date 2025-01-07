;;; ccmenu.el --- CC Menu File -*- lexical-binding: t; -*-

;; Copyright (C) 2023-2024  Charles Choi

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
;; from ccinit.el

;;; Code:
(require 'cclisp)

(require 'cc-ediff-mode)
(require 'cc-context-menu)
(require 'cc-main-tmenu)
(require 'cc-menu-reconfig)
(require 'kill-with-intelligence)
;; (require 'password-store-menu)

;;; Mouse Scroll

(when (eq window-system 'mac)
  (setq mac-mouse-wheel-mode t)
  (setq mac-mouse-wheel-smooth-scroll t))

;; (setq mouse-wheel-progressive-speed nil)
(setq scroll-step 4)

(pixel-scroll-precision-mode t)
;;(setq pixel-scroll-precision-large-scroll-height 10.0)

(eval-after-load "flyspell"
  '(progn
     (define-key flyspell-mouse-map [down-mouse-3] #'flyspell-correct-word)
     (define-key flyspell-mouse-map [mouse-3] #'undefined)))

(defun cc/tty-mouse ()
  (interactive)
  (unless (display-graphic-p)
    (xterm-mouse-mode 1)
    (global-set-key (kbd "<mouse-4>") 'scroll-down-line)
    (global-set-key (kbd "<mouse-5>") 'scroll-up-line)))

;;; cclisp utility functions

(add-hook 'shell-mode-hook 'context-menu-mode)
(add-hook 'dired-mode-hook 'context-menu-mode)
(add-hook 'prog-mode-hook 'context-menu-mode)
;; (add-hook 'text-mode-hook 'context-menu-mode)
(add-hook 'org-mode-hook 'context-menu-mode)
(add-hook 'markdown-mode-hook 'context-menu-mode)

;;; transient : casual-suite

(when (locate-library "casual-suite")
  (setq transient-align-variable-pitch t)

  (require 'casual-suite)
  (require 'calc-ext)
  (require 'casual-calc)
  (require 'casual-bookmarks) ;; optional
  (require 'casual-agenda)
  (require 'casual-symbol-overlay) ;; optional
  (require 'casual-re-builder) ;; optional
  (require 'casual-editkit) ;; optional

  (keymap-set calc-mode-map "<f2>" #'casual-calc-tmenu)
  (keymap-set calc-mode-map "C-;" #'casual-calc-tmenu)
  (keymap-set calc-alg-map "C-;" #'casual-calc-tmenu)

  (keymap-set isearch-mode-map "<f2>" #'casual-isearch-tmenu)
  (keymap-set isearch-mode-map "C-;" #'casual-isearch-tmenu)

  (keymap-set dired-mode-map "<f2>" #'casual-dired-tmenu)
  (keymap-set dired-mode-map "C-;" #'casual-dired-tmenu)
  (keymap-set dired-mode-map "C-M-;" #'casual-editkit-main-tmenu)

  (keymap-set ibuffer-mode-map "<f2>" #'casual-ibuffer-tmenu)
  (keymap-set ibuffer-mode-map "C-;" #'casual-ibuffer-tmenu)

  ;; o sort, s filter -> doom default
  ;; (keymap-set ibuffer-mode-map "F" #'casual-ibuffer-filter-tmenu)
  ;; (evil-define-key '(normal) ibuffer-mode-map (kbd "F") #'casual-ibuffer-filter-tmenu)
  ;; (evil-define-key '(normal) ibuffer-mode-map (kbd "s") #'casual-ibuffer-sortby-tmenu)

  (keymap-set Info-mode-map "<f2>" #'casual-info-tmenu)
  (keymap-set Info-mode-map "C-;" #'casual-info-tmenu)
  ;; cc-info-mode.el:31:
  (keymap-set Info-mode-map "C-M-;" #'casual-editkit-main-tmenu)

  (keymap-set reb-mode-map "<f2>" #'casual-re-builder-tmenu)
  (keymap-set reb-lisp-mode-map "<f2>" #'casual-re-builder-tmenu)
  (keymap-set reb-mode-map "C-;" #'casual-re-builder-tmenu)
  (keymap-set reb-lisp-mode-map "C-;" #'casual-re-builder-tmenu)

; 'M-a' backward-sentence -> '(' evil-backward-sentence-begin
  (keymap-global-set "M-a" #'casual-avy-tmenu)
  ;; M-e ews-denote-map

  (keymap-set bookmark-bmenu-mode-map "<f2>" #'casual-bookmarks-tmenu)
  (keymap-set bookmark-bmenu-mode-map "C-;" #'casual-bookmarks-tmenu)
  ;; (evil-define-key 'normal bookmark-bmenu-mode-map (kbd "J") 'bookmark-jump)
  (keymap-set bookmark-bmenu-mode-map "J" #'bookmark-jump)
  (easy-menu-add-item global-map '(menu-bar) casual-bookmarks-main-menu "Tools")

  (keymap-set org-agenda-mode-map "C-;" #'casual-agenda-tmenu)
  ;; org-agenda-clock-goto ; optional
  ;; bookmark-jump ; optional

  (keymap-set symbol-overlay-map "C-;" #'casual-symbol-overlay-tmenu)
  ;; (keymap-set prog-mode-map "C-;" #'casual-symbol-overlay-tmenu) ; C-'

  ;; cc-prog-mode.el:61:
  (keymap-set compilation-mode-map "C-;" #'casual-editkit-main-tmenu)
  ;; cc-grep-mode.el:33:
  (keymap-set grep-mode-map "C-;" #'casual-editkit-main-tmenu)

  ;; cc-global-keybindings.el:69:
  (keymap-global-set "C-;" #'casual-editkit-main-tmenu)
  (keymap-global-set "<f1>" #'casual-editkit-main-tmenu)
  )

;;; provide

(provide 'ccmenu)
