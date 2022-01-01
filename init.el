;; MELPA CONFIG
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; SET EXEC-PATH EQUAL TO SHELL PATH

(defun set-exec-path-from-shell-PATH ()
  "Set up Emacs' `exec-path' and PATH environment variable to match
that used by the user's shell.

This is particularly useful under Mac OS X and macOS, where GUI
apps are not started from a shell."
  (interactive)
  (let ((path-from-shell (replace-regexp-in-string
			  "[ \t\n]*$" "" (shell-command-to-string
					  "$SHELL --login -c 'echo $PATH'"
						    ))))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))

(set-exec-path-from-shell-PATH)


;; THEME CONFIG
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(twilight-anti-bright))
 '(custom-safe-themes
   '("76b4632612953d1a8976d983c4fdf5c3af92d216e2f87ce2b0726a1f37606158" "dc8ad8b5833ae06e373cc3d64be28e67e6c3d084ea5f0e9e77225b3badbec661" "d6844d1e698d76ef048a53cefe713dbbe3af43a1362de81cdd3aefa3711eae0d" "846b3dc12d774794861d81d7d2dcdb9645f82423565bfb4dad01204fa322dbd5" "e2c926ced58e48afc87f4415af9b7f7b58e62ec792659fcb626e8cba674d2065" "1d44ec8ec6ec6e6be32f2f73edf398620bb721afeed50f75df6b12ccff0fbb15" "f6665ce2f7f56c5ed5d91ed5e7f6acb66ce44d0ef4acfaa3a42c7cfe9e9a9013" "cf922a7a5c514fad79c483048257c5d8f242b21987af0db813d3f0b138dfaf53" "4f1d2476c290eaa5d9ab9d13b60f2c0f1c8fa7703596fa91b235db7f99a9441b" "0d01e1e300fcafa34ba35d5cf0a21b3b23bc4053d388e352ae6a901994597ab1" "4b6b6b0a44a40f3586f0f641c25340718c7c626cbf163a78b5a399fbe0226659" "84b14a0a41bb2728568d40c545280dbe7d6891221e7fbe7c2b1c54a3f5959289" "e8df30cd7fb42e56a4efc585540a2e63b0c6eeb9f4dc053373e05d774332fc13" "234dbb732ef054b109a9e5ee5b499632c63cc24f7c2383a849815dacc1727cb6" "3d54650e34fa27561eb81fc3ceed504970cc553cfd37f46e8a80ec32254a3ec3" "db3e80842b48f9decb532a1d74e7575716821ee631f30267e4991f4ba2ddf56e" "23c806e34594a583ea5bbf5adf9a964afe4f28b4467d28777bcba0d35aa0872e" "266ecb1511fa3513ed7992e6cd461756a895dcc5fef2d378f165fed1c894a78c" "4b0e826f58b39e2ce2829fab8ca999bcdc076dec35187bf4e9a4b938cb5771dc" "fe2539ccf78f28c519541e37dc77115c6c7c2efcec18b970b16e4a4d2cd9891d" "333958c446e920f5c350c4b4016908c130c3b46d590af91e1e7e2a0611f1e8c5" "8d7b028e7b7843ae00498f68fad28f3c6258eda0650fe7e17bfb017d51d0e2a2" "b186688fbec5e00ee8683b9f2588523abdf2db40562839b2c5458fcfb322c8a4" "613aedadd3b9e2554f39afe760708fc3285bf594f6447822dd29f947f0775d6c" "da186cce19b5aed3f6a2316845583dbee76aea9255ea0da857d1c058ff003546" "f91395598d4cb3e2ae6a2db8527ceb83fed79dbaf007f435de3e91e5bda485fb" "4a5aa2ccb3fa837f322276c060ea8a3d10181fecbd1b74cb97df8e191b214313" "5f19cb23200e0ac301d42b880641128833067d341d22344806cdad48e6ec62f6" "e6f3a4a582ffb5de0471c9b640a5f0212ccf258a987ba421ae2659f1eaa39b09" "7a7b1d475b42c1a0b61f3b1d1225dd249ffa1abb1b7f726aec59ac7ca3bf4dae" "a9a67b318b7417adbedaab02f05fa679973e9718d9d26075c6235b1f0db703c8" default))
 '(exwm-floating-border-color "#D0D0E3")
 '(highlight-tail-colors
   ((("#dce6e0" "color-22" "green")
     . 0)
    (("#dce8ed" "color-30" "cyan")
     . 20)))
 '(jdee-db-active-breakpoint-face-colors (cons "#D0D0E3" "#009B7C"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#D0D0E3" "#005F00"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#D0D0E3" "#4E4E4E"))
 '(objed-cursor-color "#D70000")
 '(package-selected-packages
   '(rust-mode django-mode twilight-bright-theme twilight-anti-bright-theme all-the-icons neotree minions auto-indent-mode blacken pyenv-mode moody dashboard elpygen elpy company use-package doom-themes))
 '(pdf-view-midnight-colors (cons "#0F1019" "#F5F5F9"))
 '(rustic-ansi-faces
   ["#F5F5F9" "#D70000" "#005F00" "#AF8700" "#1F55A0" "#AF005F" "#007687" "#0F1019"])
 '(vc-annotate-background "#F5F5F9")
 '(vc-annotate-color-map
   (list
    (cons 20 "#005F00")
    (cons 40 "#3a6c00")
    (cons 60 "#747900")
    (cons 80 "#AF8700")
    (cons 100 "#bc7900")
    (cons 120 "#c96c00")
    (cons 140 "#D75F00")
    (cons 160 "#c93f1f")
    (cons 180 "#bc1f3f")
    (cons 200 "#AF005F")
    (cons 220 "#bc003f")
    (cons 240 "#c9001f")
    (cons 260 "#D70000")
    (cons 280 "#b41313")
    (cons 300 "#922727")
    (cons 320 "#703a3a")
    (cons 340 "#4E4E4E")
    (cons 360 "#4E4E4E")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; TOOLBAR CONFIG
(tool-bar-mode -1)

;; MENUBAR CONFIG
(menu-bar-mode -1)


;; PYENV CONFIG
(pyenv-mode)


;; IVY CONFIG
(ivy-mode)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
;; enable this if you want `swiper' to use it
;; (setq search-default-mode #'char-fold-to-regexp)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> o") 'counsel-describe-symbol)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)

;; COMPANY CONFIG
(add-hook 'after-init-hook 'global-company-mode)

;; ELPY CONFIG
(use-package elpy
  :ensure t
  :init
  (elpy-enable))

;; DASHBOARD CONFIG
(require 'dashboard)
(dashboard-setup-startup-hook)
;; Or if you use use-package
(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))

;; MOODY CONFIG
(use-package moody
  :config
  (setq x-underline-at-descent-line t)
  (moody-replace-mode-line-buffer-identification)
  (moody-replace-vc-mode)
  (moody-replace-eldoc-minibuffer-message-function))

;; MINIONS CONFIG
(use-package minions
  :config (minions-mode 1))

;; 1/10 of value = pixel e.x 160 * 1/10 = 16px
 (set-face-attribute 'default nil :height 150)

;; LINE NUMBERS CONFIG
(global-display-line-numbers-mode)


;; BLACKEN FORMATER CONFIG
(blacken-mode)

;; AUTO INDENT CONFIG
(global-set-key (kbd "RET") 'newline-and-indent)

;; NEO TREE CONFIG
(global-set-key (kbd "C-x t") 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

;; ALL THE ICONS CONFIG
(use-package all-the-icons
  :if (display-graphic-p))


;; FLYSPELL CONFIG
(defun flyspell-on-for-buffer-type ()
      "Enable Flyspell appropriately for the major mode of the current buffer.  Uses `flyspell-prog-mode' for modes derived from `prog-mode', so only strings and comments get checked.  All other buffers get `flyspell-mode' to check all text.  If flyspell is already enabled, does nothing."
      (interactive)
      (if (not (symbol-value flyspell-mode)) ; if not already on
	(progn
	  (if (derived-mode-p 'prog-mode)
	    (progn
	      (message "Flyspell on (code)")
	      (flyspell-prog-mode))
	    ;; else
	    (progn
	      (message "Flyspell on (text)")
	      (flyspell-mode 1)))
	  ;; I tried putting (flyspell-buffer) here but it didn't seem to work
	  )))

(defun flyspell-toggle ()
      "Turn Flyspell on if it is off, or off if it is on.  When turning on, it uses `flyspell-on-for-buffer-type' so code-vs-text is handled appropriately."
      (interactive)
      (if (symbol-value flyspell-mode)
	  (progn ; flyspell is on, turn it off
	    (message "Flyspell off")
	    (flyspell-mode -1))
	  ; else - flyspell is off, turn it on
	(flyspell-on-for-buffer-type)))


(global-set-key (kbd "C-c f") 'flyspell-toggle)


;; DJANGO CONFIG
(require 'pony-mode)

;; RUST CONFIG
(require 'rust-mode)
