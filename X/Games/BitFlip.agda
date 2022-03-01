module X.Games.BitFlip where
  open import X.Common

  data state : type-zero where
    zero : state
    one : state

  initial-state : state
  initial-state = zero

  data move : type-zero where
    flip : move

  make-move : state -> move -> state
  make-move zero flip = one
  make-move one flip = zero
