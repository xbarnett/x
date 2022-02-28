module X.Primitive where
  open import Agda.Builtin.Cubical.Path public
    using ()
    renaming (PathP to path)
  open import Agda.Primitive public
    using ()
    renaming (Set to type)

  module universe where
    open import Agda.Primitive public
      using ()
      renaming (Level to level
        ;lsuc to suc
        ;lzero to zero
        ;_⊔_ to max)

  module cubical where
    open import Agda.Builtin.Cubical.Glue public
      using (equiv-proof)
      renaming (isEquiv to is-equiv
        ;primGlue to glue
        ;prim^glue to glue-in
        ;prim^unglue to glue-out
        ;_≃_ to equiv)
    import Agda.Builtin.Cubical.HCompU
    open Agda.Builtin.Cubical.HCompU.Helpers public
      using (fiber)
      renaming (isContr to is-contr)
    open import Agda.Builtin.Cubical.Path public
      using ()
      renaming (_≡_ to eq)
    open import Agda.Builtin.Cubical.Sub public
      using ()
      renaming (inc to sub-in
        ;primSubOut to sub-out
        ;Sub to sub)
    open import Agda.Builtin.Sigma public
      using (fst
        ;snd)
      renaming (Σ to sigma
        ;_,_ to mk)
    open import Agda.Primitive public
      using ()
      renaming (SSet to strict-type)
    open import Agda.Primitive.Cubical public
      using (i0
        ;i1)
      renaming (I to interval
        ;IsOne to is-one
        ;isOneEmpty to is-one-empty
        ;itIsOne to one-is-one
        ;Partial to partial
        ;PartialP to partial-p
        ;primHComp to hcomp
        ;primIMax to max
        ;primIMin to min
        ;primINeg to neg
        ;primTransp to transp)
