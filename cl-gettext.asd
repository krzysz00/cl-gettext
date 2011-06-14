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

(defpackage #:cl-gettext-asd
  (:use :cl :asdf))

(in-package :cl-gettext-asd)

(defsystem cl-gettext
  :name "cl-gettext"
  :version "none"
  :serial t
  :components ((:file "defpackage")
               (:file "gettext-cffi")
               
               )
  :depends-on (:cffi))
