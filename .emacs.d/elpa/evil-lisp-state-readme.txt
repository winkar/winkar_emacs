Adds a new Evil state called --LISP-- (<L>) with mnemonics key bindings
to navigate Lisp code and edit the sexp tree.

Principle:
----------

To execute a command while in normal state, the evil-leader is used.
By default, the prefix for each command is `<leader> m`.
Some commands when executed set the current state to `lisp state`.

By example, to slurp three times while in normal state:
    <leader> m 3 n
Or to wrap a symbol in parenthesis then slurping two times:
    <leader> m w 2 n

Auto-switch to lisp state commands:
----------------------------------

These commands switch the current state to `lisp state'.

Key Binding    | Function
---------------|------------------------------------------------------------
`leader'       | evil leader
`leader m %'   | evil jump item
`leader m :'   | ex command
`leader m ('   | insert expression before (same level as current one)
`leader m )'   | insert expression after (same level as current one)
`leader m $'   | go to the end of current sexp
`leader m 0'   | go to the beginning of current sexp
`leader m a'   | absorb expression
`leader m A'   | transpose expression
`leader m b'   | forward barf expression
`leader m B'   | backward barf expression
`leader m c'   | convolute expression
`leader m H'   | previous symbol
`leader m i'   | switch to `insert state`
`leader m I'   | go to beginning of current expression and switch to `insert state`
`leader m J'   | next closing parenthesis
`leader m K'   | previous opening parenthesis
`leader m L'   | next symbol
`leader m m'   | merge (join) expression
`leader m n'   | forwared slurp expression
`leader m N'   | backward slurp expression
`leader m p'   | paste after
`leader m P'   | paste before
`leader m q'   | (splice) unwrap current expression and kill all symbols after point
`leader m Q'   | (splice) unwrap current expression and kill all symbols before point
`leader m r'   | raise expression (replace parent expression by current one)
`leader m u'   | undo
`leader m C-r' | redo
`leader m v'   | switch to `visual state`
`leader m V'   | switch to `visual line state`
`leader m C-v' | switch to `visual block state`
`leader m w'   | wrap expression with parenthesis
`leader m W'   | unwrap expression
`leader m xs'  | delete symbol
`leader m xw'  | delete word
`leader m xx'  | delete expression
`leader m y'   | copy expression

Lisp state commands:
--------------------

These commands can be executed in `lisp state'.

Key Binding    | Function
---------------|------------------------------------------------------------
`h'            | backward char
`j'            | next visual line
`k'            | previous visual line
`l'            | forward char

Other commands:
---------------

These commands can be executed in any state.

Key Binding    | Function
---------------|------------------------------------------------------------
`leader m e $' | go to end of line and evaluate last sexp
`leader m e e' | evaluate last sexp
`leader m e f' | evaluate current defun
`leader m g g' | go to definition
`leader m h h' | describe elisp thing at point (show documentation)
`leader m t b' | execute buffer tests
`leader m t q' | ask for test function to execute

Configuration:
--------------

Key bindings are set only for `emacs-lisp-mode' by default.
It is possible to add major modes with the variable
`evil-lisp-state-major-modes'.

The prefix key is `<leader> m' by default, it is possible to
change the `m' key to anything else with the variable
`evil-lisp-state-leader-prefix'. Set it to an empty string
if you want all the commands to be directly available
under the `<leader>' key.
