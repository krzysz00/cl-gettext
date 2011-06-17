#|
cl-gettext - Common Lisp binding to GNU gettext
Copyright (C) 2011  Krzysztof Drewniak <krzysdrewniak <AT> gmail <DOT> com>

This library is free software; you can redistribute it and/or
modify it under the terms of the Lisp Lesser General Public
License, as published by the Free Software Foundation and Franz Inc.; either
version 2.1 of the License, or (at your option) any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the Lisp
Lesser General Public License for more details.

You should have received a copy of the Lisp Lesser General Public
License along with this library (in the file COPYING); if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
|#

(in-package :cl-gettext)

(defun init-gettext (textdomain directory &optional (locales (list lc-all)))
  "Wrapper for the series of calls needed to initialize gettext. `textdomain' holds the $foo part of $foo.mo . `directory' is where the .mo files will be stores. `locales' is a list of locale categories to initialize with `setlocale' if `lc-all' doesn't work for you."
  (loop for i in locales do
        (setlocale i ""))
  (bindtextdomain textdomain directory)
  (textdomain textdomain))

(defmacro _ (string) "Shorthand for `(gettext string)'" `(gettext ,string))

(defmacro _noop (string)
  "A noop macro to mark translatable strings in places where the call to `gettext' would be evaluated too early. See the C documentation for details on this." 
  string)
