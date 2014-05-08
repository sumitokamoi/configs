(setq mac-option-modifier 'meta)
(require 'package)
(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/evil") ; only without ELPA/el-get
    (require 'evil)
    (evil-mode 1)

(load-theme 'monokai t)
(set-background-color nil)
(set-background-color "ARGBBB000000")
;;; Install fsharp-mode
(unless (package-installed-p 'fsharp-mode)
  (package-install 'fsharp-mode))

(require 'fsharp-mode)

(global-linum-mode t)
(setq linum-format "%d ")

(require 'mouse)
(xterm-mouse-mode t)
(defun track-mouse (e)) 
(setq mouse-sel-mode t)
(setq compilation-ask-about-save nil)

(add-hook 'csharp-mode-hook 'omnisharp-mode)
(add-hook 'after-init-hook 'global-company-mode)
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-omnisharp))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-idle-delay 0.2)
 '(company-minimum-prefix-length 1)
 '(safe-local-variable-values (quote ((eval when (fboundp (quote rainbow-mode)) (rainbow-mode 1))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-annotation ((t (:inherit company-tooltip :foreground "yellow")))))
(global-hl-line-mode 1)
 
;; To customize the background color
(set-face-background 'hl-line "#333")
(define-key evil-insert-state-map (kbd "j k") 'evil-normal-state)
(define-key evil-insert-state-map (kbd "k j") 'evil-normal-state)
(setq evil-normal-state-cursor 'hollow)

(setq evil-insert-state-cursor '("red" hbar))
