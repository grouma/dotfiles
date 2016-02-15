;; Copyright (c) 2016 The crouton Authors. All rights reserved.
;; Use of this source code is governed by a BSD-style license that can be
;; found in the LICENSE file.

;; Run xbindkeys -dg for some example configuration file with explanation

; Cycle chroots. On most systems, this is handled by the triggerhappy daemon.
; On freon, we have to do it ourselves since we currently grab the event device.
(if (access? "/sys/class/tty/tty0/active" F_OK) (begin
    (xbindkey '(control shift alt Left) "")
    (xbindkey '(control shift alt o) "")
) (begin
    (xbindkey '(control shift alt Left) "xte 'keyup Left'; croutoncycle prev")
    (xbindkey '(control shift alt o) "xte 'keyup o'; croutoncycle next")
))

; Extra bindings that must only be activated in chroot X11/Xephyr
(if (not (string-null? (getenv "XMETHOD")))
    (begin
        ; Brightness control
        (xbindkey '(XF86MonBrightnessDown) "brightness down")
        (xbindkey '(XF86MonBrightnessUp) "brightness up")

        ; Load ~/.xbindkeysrc.scm for customization if the current user has one
        (let ((usercfg (string-append (getenv "HOME") "/.xbindkeysrc.scm")))
            (if (access? usercfg F_OK) (load usercfg))
        )
    )
)
