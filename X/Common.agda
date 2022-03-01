module X.Common where
  open import X.Primitive public

  private variable
    l0 l1 : universe.level

  type-zero : type (universe.suc universe.zero)
  type-zero = type universe.zero

  eq : {a : type l0} -> a -> a -> type l0
  eq {a = a} = path (\_ -> a)

  module eq where
    refl : {a : type l0} (x : a) -> eq x x
    refl x _ = x

    sym : {a : type l0} {x y : a} -> eq x y -> eq y x
    sym p i = p (cubical.neg i)

    trans : {a : type l0} {x y z : a} -> eq x y -> eq y z -> eq x z
    trans {a = a} {x = x} p q i = cubical.hcomp lemma0 (p i)
      where
        lemma0 : cubical.interval ->
          cubical.partial (cubical.max i (cubical.neg i)) a
        lemma0 _ (i = cubical.i0) = x
        lemma0 j (i = cubical.i1) = q j

    ap : {a : type l0} {b : type l1} (f : a -> b) {x y : a} -> eq x y ->
      eq (f x) (f y)
    ap f p i = f (p i)

    fun-ext : {a : type l0} {b : a -> type l1} {f g : (x : a) -> b x} ->
      ((x : a) -> eq (f x) (g x)) -> eq f g
    fun-ext h i x = h x i

    transport : {a b : type l0} -> eq a b -> a -> b
    transport p = cubical.transp (\i -> p i) cubical.i0
