tru  = lam<A>(t :: A): lam(f :: A): t;;
fals = lam<A>(t :: A): lam(f :: A): f;;
test = lam<A>(cond :: (A -> (A -> A))): lam(consq :: A): lam(altern :: A): cond(consq)(altern);;;

never-five  :: (Number -> Number) = fals(5)
always-five :: (Number -> Number) = tru(5)

tru-number  = tru<Number>
fals-number = fals<Number>
test(tru-number)(5)(6)
test(fals-number)(7)(8)
