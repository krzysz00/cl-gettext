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

(in-package :common-lisp-user)

(defpackage :cl-gettext
  (:nicknames :cl-gettext)
  (:use :cl)
  (:export
    :gettext
    :ngettext
    :textdomain
    :bindtextdomain
    :bind_textdomain_codeset
    :setlocale
    :localeconv
    :init-gettext
    :_
    :_noop
    :LC-CTYPE
    :LC-NUMERIC
    :LC-TIME
    :LC-COLLATE
    :LC-MONETARY
    :LC-MESSAGES
    :LC-ALL
    :LC-PAPER
    :LC-NAME
    :LC-ADDRESS
    :LC-TELEPHONE
    :LC-MEASUREMENT
    :LC-IDENTIFICATION
    ))

