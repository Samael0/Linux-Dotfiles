;;; ~/.doom.d/keybindings.el -*- lexical-binding: t; -*-

;; Custom keybindings for my config


;; Doom Emacs
(setq doom-leader-alt-key "C-.")
(setq doom-localleader-alt-key "C-. l")

;; Swiper
(global-set-key "\C-s" 'swiper)

;; Company
(with-eval-after-load 'company
  (define-key company-active-map (kbd "<return>") nil)
  (define-key company-active-map (kbd "RET") nil)
  (define-key company-active-map (kbd "SPC") nil)
  (define-key company-active-map (kbd "C-SPC") #'company-complete-selection)
  (define-key company-mode-map [remap indent-for-tab-command] #'company-indent-or-complete-common))
