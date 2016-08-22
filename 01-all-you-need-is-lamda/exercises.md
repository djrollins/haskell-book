Using "\" to be the lambda symbol

Alpha Equivalence Excersises
----------------------------

1) b) \xy.xz === \mn.mz
2) c) \xy.xxy === \a(\b.aab) 
3) b) \xyz.zx === \tos.st

Chapter Exercises
-----------------

Combinators
===========
1) \x.xxx
2) \xy.zx
3) \xyz.xy(zx)
4) \xyz.xy(zxy)
5) \xy.xy(zxy)

1, 3 and 4 are combinators as all their body variables appear in the head.

Normal form or diverge?
=======================
1) \x.xxx
2) (\z.zz)(\y.yy) => (\y.yy)(\y.yy)
3) (x.xxx)z

1 and 3 are in normal form whilst 2 diverges

Beta reduction
==============
1) (\abc.cba)zz(\wv.w) => (\a.\b.\c.cba)zz(\w.\v.w)
[a := z]               => (\b.\c.cbz)z(\w.\v.w)
[b := z]               => (\c.czz)(\w.\v.w)
[c := (\w.\v.w)        => (\w.\v.w)zz
[\w := z] & [\v := z]  => z

2) (\x.\y.xyy)(\a.a)b
[x := (\a.a)]   => (\y.(\a.a)yy)b
[y := b]        => (\a.a)bb
[a := b]        => bb

3) (\y.y)(\x.xx)(\z.zq)
[y := (\x.xx)]  => (\x.xx)(\z.zq)
[x := (\z.zq)]  => (\z.zq)(\z.zq)
[z := (\z.zq)]  => (\z.zq)q
[z := q]        => qq

4) (\z.z)(\z.zz)(\z.zy)
Alpha-equivalent to 3) => yy

5) (\x.\y.xyy)(\y.y)y
[x := (\y.y)]   => (\y.(\y.y)yy)(\z.zy)
[y := (\z.zy)]  => (\y.y)(\z.zy)(\z.zy) => (\z.zy)(\z.zy)
[z := (\z.zy)]  => (\z.zy)y
[z := y]        => yy

6) (\a.aa)(\b.ba)c
[a := (\b.ba)]  => ((\b.ba)(\b.ba))c
[b := (\b.ba)]  => ((\b.ba)a)c
[b := a]        => aac

7) (\xyz.xz(yz))(\x.z)(\x.a)
[x := (\x.z)]   => (\y.\z1.(\x.z)z1(yz1))(\x.a)
[y := (\x.a)]   => (\z1.(\x.z)z1((\x.a)z1)
                => (\z1.za)
