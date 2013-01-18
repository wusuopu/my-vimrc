" Vim syntax file example
" Put it to ~/.vim/after/syntax/ and tailor to your needs.

let glib_deprecated_errors = 1
let gobject_deprecated_errors = 1
let gdk_deprecated_errors = 1
let gdkpixbuf_deprecated_errors = 1
let gtk_deprecated_errors = 1
let gimp_deprecated_errors = 1

if version < 600
  so <afile>:p:h/cairo.vim
  so <afile>:p:h/glib.vim
  so <afile>:p:h/gobject.vim
  so <afile>:p:h/gdkpixbuf.vim
  so <afile>:p:h/gtk2.vim
  so <afile>:p:h/gtk3.vim
  so <afile>:p:h/gimp.vim
  so <afile>:p:h/pango.vim
  so <afile>:p:h/libwnck.vim
  so <afile>:p:h/xlib.vim
  so <afile>:p:h/gstreamer.vim
else
  runtime! syntax/cairo.vim
  runtime! syntax/glib.vim
  runtime! syntax/gobject.vim
  runtime! syntax/gdkpixbuf.vim
  runtime! syntax/gtk2.vim
  runtime! syntax/gtk3.vim
  runtime! syntax/gimp.vim
  runtime! syntax/pango.vim
  runtime! syntax/libwnck.vim
  runtime! syntax/xlib.vim
  runtime! syntax/gstreamer.vim
endif

" vim: set ft=vim :
