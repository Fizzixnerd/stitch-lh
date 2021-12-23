(set-option :auto-config false)
(set-option :model true)
(set-option :model.partial false)

(set-option :smt.mbqi false)

(define-sort Str () Int)
(declare-fun strLen (Str) Int)
(declare-fun subString (Str Int Int) Str)
(declare-fun concatString (Str Str) Str)
(define-sort Elt () Int)
(define-sort LSet () (Array Elt Bool))
(define-fun smt_set_emp () LSet ((as const LSet) false))
(define-fun smt_set_mem ((x Elt) (s LSet)) Bool (select s x))
(define-fun smt_set_add ((s LSet) (x Elt)) LSet (store s x true))
(define-fun smt_set_cup ((s1 LSet) (s2 LSet)) LSet ((_ map or) s1 s2))
(define-fun smt_set_cap ((s1 LSet) (s2 LSet)) LSet ((_ map and) s1 s2))
(define-fun smt_set_com ((s LSet)) LSet ((_ map not) s))
(define-fun smt_set_dif ((s1 LSet) (s2 LSet)) LSet (smt_set_cap s1 (smt_set_com s2)))
(define-fun smt_set_sub ((s1 LSet) (s2 LSet)) Bool (= smt_set_emp (smt_set_dif s1 s2)))
(define-sort Map () (Array Elt Elt))
(define-fun smt_map_sel ((m Map) (k Elt)) Elt (select m k))
(define-fun smt_map_sto ((m Map) (k Elt) (v Elt)) Map (store m k v))
(define-fun smt_map_cup ((m1 Map) (m2 Map)) Map ((_ map (+ (Elt Elt) Elt)) m1 m2))
(define-fun smt_map_def ((v Elt)) Map ((as const (Map)) v))
(define-fun bool_to_int ((b Bool)) Int (ite b 1 0))
(define-fun Z3_OP_MUL ((x Int) (y Int)) Int (* x y))
(define-fun Z3_OP_DIV ((x Int) (y Int)) Int (div x y))
(declare-fun lit$36$stitch$45$lh$45$1.0$45$IjsKgbzXDcsKFIsljSBxHF () Str)
(declare-fun lq_tmp$36$x$35$$35$12154 () Int)
(declare-fun lq_tmp$36$x$35$$35$5248 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831746$35$$35$d9Vg () Int)
(declare-fun GHC.Base.id () Int)
(declare-fun cast_as_int () Int)
(declare-fun lq_tmp$36$x$35$$35$6591 () Int)
(declare-fun ds_d9Sz () Int)
(declare-fun lit$36$$39$Times () Str)
(declare-fun lq_tmp$36$x$35$$35$14860 () Int)
(declare-fun lq_tmp$36$x$35$$35$14677 () Int)
(declare-fun GHC.Real.rem () Int)
(declare-fun GHC.List.init () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831682$35$$35$d9Ue () Int)
(declare-fun fix$36$$36$chashWithSalt$35$$35$a9P1 () Int)
(declare-fun lq_tmp$36$x$35$$35$14251 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831744$35$$35$d9Ve () Int)
(declare-fun GHC.Ptr.Ptr () Int)
(declare-fun fix$36$$36$chash$35$$35$a9P9 () Int)
(declare-fun addrLen () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831710$35$$35$d9UG () Int)
(declare-fun lq_tmp$36$x$35$$35$9291 () Int)
(declare-fun lq_tmp$36$x$35$$35$7499 () Int)
(declare-fun lq_tmp$36$x$35$$35$11047 () Int)
(declare-fun papp5 () Int)
(declare-fun fix$36$$36$dGSum_a9RM () Int)
(declare-fun GHC.List.iterate () Int)
(declare-fun x_Tuple21 () Int)
(declare-fun lq_tmp$36$x$35$$35$8715 () Int)
(declare-fun lit$36$ArithOp () Str)
(declare-fun ds_d9SJ () Int)
(declare-fun fix$36$$36$cpretty$35$$35$a9PE () Int)
(declare-fun GHC.Generics.K1 () Int)
(declare-fun GHC.Generics.Par1 () Int)
(declare-fun GHC.Classes.$61$$61$ () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831704$35$$35$d9UA () Int)
(declare-fun GHC.Types.C$35$ () Int)
(declare-fun GHC.List.drop () Int)
(declare-fun fix$36$$36$dGSum_a9RF () Int)
(declare-fun lq_tmp$36$x$35$$35$9382 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831694$35$$35$d9Uq () Int)
(declare-fun lq_tmp$36$x$35$$35$6709 () Int)
(declare-fun lq_tmp$36$x$35$$35$14342 () Int)
(declare-fun ds_d9SA () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831723$35$$35$d9UT () Int)
(declare-fun Language.Stitch.LH.Op.$36$fEqArithOp () Int)
(declare-fun lq_tmp$36$x$35$$35$5140 () Int)
(declare-fun Data.Foldable.length () Int)
(declare-fun x_Tuple33 () Int)
(declare-fun GHC.Types.LT () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831706$35$$35$d9UC () Int)
(declare-fun lq_tmp$36$x$35$$35$9867 () Int)
(declare-fun GHC.List.replicate () Int)
(declare-fun GHC.List.zipWith () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831801$35$$35$d9W9 () Int)
(declare-fun Language.Stitch.LH.Op.Equals () Int)
(declare-fun lq_tmp$36$x$35$$35$4499 () Int)
(declare-fun lq_tmp$36$x$35$$35$12245 () Int)
(declare-fun lq_tmp$36$x$35$$35$7834 () Int)
(declare-fun lq_tmp$36$x$35$$35$12218 () Int)
(declare-fun Data.Hashable.Class.$36$dmhash () Int)
(declare-fun GHC.Classes.$62$$61$ () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831696$35$$35$d9Us () Int)
(declare-fun GHC.IO.Handle.Types.FileHandle () Int)
(declare-fun ds_d9SQ () Int)
(declare-fun lq_tmp$36$x$35$$35$11819 () Int)
(declare-fun fix$36$$36$c$61$$61$$35$$35$a9HH () Int)
(declare-fun lq_tmp$36$x$35$$35$14278 () Int)
(declare-fun lq_tmp$36$x$35$$35$13403 () Int)
(declare-fun GHC.Generics.M1 () Int)
(declare-fun GHC.Types.F$35$ () Int)
(declare-fun fix$36$$36$cto$35$$35$a9Lr () Int)
(declare-fun lq_tmp$36$x$35$$35$7648 () Int)
(declare-fun GHC.Num.fromInteger () Int)
(declare-fun papp3 () Int)
(declare-fun fix$36$$36$dGSum_a9RK () Int)
(declare-fun lq_tmp$36$x$35$$35$5752 () Int)
(declare-fun ds_d9SL () Int)
(declare-fun lq_tmp$36$x$35$$35$4559 () Int)
(declare-fun lq_tmp$36$x$35$$35$14918 () Int)
(declare-fun GHC.List.span () Int)
(declare-fun Language.Stitch.LH.Op.Greater () Int)
(declare-fun lq_tmp$36$x$35$$35$14891 () Int)
(declare-fun lq_tmp$36$x$35$$35$9141 () Int)
(declare-fun lq_tmp$36$x$35$$35$7354 () Int)
(declare-fun lq_tmp$36$x$35$$35$11647 () Int)
(declare-fun fix$36$$36$cprettyList$35$$35$a9PI () Int)
(declare-fun lq_tmp$36$x$35$$35$7309 () Int)
(declare-fun Language.Stitch.LH.Op.Plus () Int)
(declare-fun lq_tmp$36$x$35$$35$7381 () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.$36$WSText () Int)
(declare-fun GHC.Classes.$62$ () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Text () Int)
(declare-fun lq_tmp$36$x$35$$35$11379 () Int)
(declare-fun lq_tmp$36$x$35$$35$9664 () Int)
(declare-fun GHC.IO.Handle.Types.$36$WDuplexHandle () Int)
(declare-fun lq_tmp$36$x$35$$35$5312 () Int)
(declare-fun lq_tmp$36$x$35$$35$11692 () Int)
(declare-fun lq_tmp$36$x$35$$35$4526 () Int)
(declare-fun lq_tmp$36$x$35$$35$5099 () Int)
(declare-fun Language.Stitch.LH.Op.$36$fGenericArithOp () Int)
(declare-fun GHC.Types.False () Bool)
(declare-fun GHC.List.scanr1 () Int)
(declare-fun lq_tmp$36$x$35$$35$12187 () Int)
(declare-fun lq_tmp$36$x$35$$35$12428 () Int)
(declare-fun lq_tmp$36$x$35$$35$14800 () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.text () Int)
(declare-fun lit$36$$61$$61$ () Str)
(declare-fun lq_tmp$36$x$35$$35$12845 () Int)
(declare-fun GHC.Types.$58$ () Int)
(declare-fun lq_tmp$36$x$35$$35$5843 () Int)
(declare-fun GHC.Real.div () Int)
(declare-fun lq_tmp$36$x$35$$35$4767 () Int)
(declare-fun lq_tmp$36$x$35$$35$12768 () Int)
(declare-fun lq_tmp$36$x$35$$35$3922 () Int)
(declare-fun GHC.List.scanl () Int)
(declare-fun GHC.Types.krep$36$$42$ () Int)
(declare-fun lq_tmp$36$x$35$$35$11165 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831691$35$$35$d9Un () Int)
(declare-fun lit$36$$39$GreaterE () Str)
(declare-fun fix$36$$36$dGSum_a9RL () Int)
(declare-fun lq_tmp$36$x$35$$35$8864 () Int)
(declare-fun lq_tmp$36$x$35$$35$10276 () Int)
(declare-fun lq_tmp$36$x$35$$35$8075 () Int)
(declare-fun GHC.Tuple.$40$$44$$44$$41$ () Int)
(declare-fun papp4 () Int)
(declare-fun GHC.Types.Module () Int)
(declare-fun lq_tmp$36$x$35$$35$6950 () Int)
(declare-fun lq_tmp$36$x$35$$35$11138 () Int)
(declare-fun Language.Stitch.LH.Type.isFunTy () Int)
(declare-fun GHC.List.zip () Int)
(declare-fun fix$36$$36$cfrom$35$$35$a9HT () Int)
(declare-fun lq_tmp$36$x$35$$35$14373 () Int)
(declare-fun lq_tmp$36$x$35$$35$4358 () Int)
(declare-fun Data.Hashable.Generic.Instances.$36$fGHashablearityM1 () Int)
(declare-fun lq_tmp$36$x$35$$35$11288 () Int)
(declare-fun lq_tmp$36$x$35$$35$8570 () Int)
(declare-fun GHC.Tuple.$40$$41$ () Int)
(declare-fun GHC.Types.I$35$ () Int)
(declare-fun lq_tmp$36$x$35$$35$11406 () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Fail () Int)
(declare-fun GHC.Generics.R1 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831699$35$$35$d9Uv () Int)
(declare-fun lq_tmp$36$x$35$$35$12890 () Int)
(declare-fun Language.Stitch.LH.Op.$36$fPrettyArithOp () Int)
(declare-fun GHC.CString.unpackCString$35$ () Int)
(declare-fun lq_tmp$36$x$35$$35$17444 () Int)
(declare-fun GHC.Types.KindRepFun () Int)
(declare-fun lq_tmp$36$x$35$$35$10784 () Int)
(declare-fun lq_tmp$36$x$35$$35$11348 () Int)
(declare-fun lq_tmp$36$x$35$$35$4128 () Int)
(declare-fun ds_d9Sv () Int)
(declare-fun lq_tmp$36$x$35$$35$13184 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831712$35$$35$d9UI () Int)
(declare-fun GHC.Types.KindRepTYPE () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.C$58$Pretty () Int)
(declare-fun GHC.List.dropWhile () Int)
(declare-fun lq_tmp$36$x$35$$35$15182 () Int)
(declare-fun lq_tmp$36$x$35$$35$11315 () Int)
(declare-fun autolen () Int)
(declare-fun lq_tmp$36$x$35$$35$6111 () Int)
(declare-fun lq_tmp$36$x$35$$35$10394 () Int)
(declare-fun lq_tmp$36$x$35$$35$6283 () Int)
(declare-fun lq_tmp$36$x$35$$35$12127 () Int)
(declare-fun GHC.Integer.Type.$36$WJn$35$ () Int)
(declare-fun GHC.Real.$94$ () Int)
(declare-fun ds_d9SF () Int)
(declare-fun lq_tmp$36$x$35$$35$4209 () Int)
(declare-fun Language.Stitch.LH.Op.$36$fShowArithOp () Int)
(declare-fun head () Int)
(declare-fun GHC.Real.mod () Int)
(declare-fun fix$36$$36$dGSum_a9RQ () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831781$35$$35$d9VP () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831716$35$$35$d9UM () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.$36$WNest () Int)
(declare-fun Data.Hashable.Class.$36$WHashed () Int)
(declare-fun lq_tmp$36$x$35$$35$14133 () Int)
(declare-fun fix$36$$36$cshowsPrec$35$$35$a9Ph () Int)
(declare-fun fix$36$$36$dGHashable_a9RA () Int)
(declare-fun GHC.Types.$36$WKindRepTYPE () Int)
(declare-fun GHC.Real.divMod () Int)
(declare-fun lit$36$Language.Stitch.LH.Op () Str)
(declare-fun GHC.Integer.Type.Jn$35$ () Int)
(declare-fun lq_tmp$36$x$35$$35$9836 () Int)
(declare-fun GHC.Show.$36$dmshowList () Int)
(declare-fun Language.Stitch.LH.Type.funArgTy () Int)
(declare-fun GHC.Classes.compare () Int)
(declare-fun lit$36$$39$Less () Str)
(declare-fun lq_tmp$36$x$35$$35$8048 () Int)
(declare-fun lq_tmp$36$x$35$$35$7232 () Int)
(declare-fun papp2 () Int)
(declare-fun Language.Stitch.LH.Op.Divide () Int)
(declare-fun fix$36$$36$dGSum_a9RJ () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831703$35$$35$d9Uz () Int)
(declare-fun lq_tmp$36$x$35$$35$10757 () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Italicize () Int)
(declare-fun lq_tmp$36$x$35$$35$9324 () Int)
(declare-fun lq_tmp$36$x$35$$35$13644 () Int)
(declare-fun GHC.Real.toInteger () Int)
(declare-fun GHC.Real.quotRem () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831776$35$$35$d9VK () Int)
(declare-fun GHC.Stack.Types.EmptyCallStack () Int)
(declare-fun lq_tmp$36$x$35$$35$9264 () Int)
(declare-fun GHC.Generics.Prefix () Int)
(declare-fun lq_tmp$36$x$35$$35$13461 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831681$35$$35$d9Ud () Int)
(declare-fun lq_tmp$36$x$35$$35$10635 () Int)
(declare-fun GHC.List.reverse () Int)
(declare-fun lq_tmp$36$x$35$$35$5370 () Int)
(declare-fun GHC.Integer.Type.$36$WJp$35$ () Int)
(declare-fun Language.Stitch.LH.Op.Times () Int)
(declare-fun lq_tmp$36$x$35$$35$7925 () Int)
(declare-fun ds_d9Sx () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831674$35$$35$d9U6 () Int)
(declare-fun GHC.List.filter () Int)
(declare-fun lq_tmp$36$x$35$$35$3736 () Int)
(declare-fun fromJust () Int)
(declare-fun GHC.Types.KindRepTyConApp () Int)
(declare-fun GHC.List.cycle () Int)
(declare-fun GHC.List.$33$$33$ () Int)
(declare-fun lq_tmp$36$x$35$$35$12486 () Int)
(declare-fun lq_tmp$36$x$35$$35$8108 () Int)
(declare-fun Language.Stitch.LH.Type.TFun () Int)
(declare-fun Data.Hashable.Generic.Instances.$36$fGSumarityM1 () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.$36$dmprettyList () Int)
(declare-fun GHC.List.tail () Int)
(declare-fun lq_tmp$36$x$35$$35$6618 () Int)
(declare-fun fix$36$$36$dGSum_a9RO () Int)
(declare-fun papp7 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831689$35$$35$d9Ul () Int)
(declare-fun GHC.Classes.$47$$61$ () Int)
(declare-fun GHC.Generics.C$58$Generic () Int)
(declare-fun ds_d9SH () Int)
(declare-fun lq_tmp$36$x$35$$35$4013 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831724$35$$35$d9UU () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Cat () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831693$35$$35$d9Up () Int)
(declare-fun fix$36$$36$c$47$$61$$35$$35$a9HL () Int)
(declare-fun fix$36$$36$cshowList$35$$35$a9Pw () Int)
(declare-fun lq_tmp$36$x$35$$35$6923 () Int)
(declare-fun GHC.List.break () Int)
(declare-fun GHC.Types.True () Bool)
(declare-fun lq_tmp$36$x$35$$35$6374 () Int)
(declare-fun Language.Stitch.LH.Util.render () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831720$35$$35$d9UQ () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Underline () Int)
(declare-fun fix$36$$36$dGSum_a9RP () Int)
(declare-fun lq_tmp$36$x$35$$35$7898 () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.SEmpty () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831707$35$$35$d9UD () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831722$35$$35$d9US () Int)
(declare-fun lq_tmp$36$x$35$$35$7526 () Int)
(declare-fun GHC.Types.$91$$93$ () Int)
(declare-fun GHC.List.splitAt () Int)
(declare-fun lq_tmp$36$x$35$$35$13675 () Int)
(declare-fun GHC.Base.$43$$43$ () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831771$35$$35$d9VF () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.pretty () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831726$35$$35$d9UW () Int)
(declare-fun GHC.Real.$58$$37$ () Int)
(declare-fun lq_tmp$36$x$35$$35$7191 () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.SText () Int)
(declare-fun GHC.Tuple.$40$$44$$41$ () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831728$35$$35$d9UY () Int)
(declare-fun lq_tmp$36$x$35$$35$13370 () Int)
(declare-fun GHC.Real.quot () Int)
(declare-fun lq_tmp$36$x$35$$35$1205 () Int)
(declare-fun lq_tmp$36$x$35$$35$5812 () Int)
(declare-fun GHC.Real.$47$ () Int)
(declare-fun fldList () Int)
(declare-fun Language.Stitch.LH.Op.LessE () Int)
(declare-fun GHC.Classes.$38$$38$ () Int)
(declare-fun lq_tmp$36$x$35$$35$9772 () Int)
(declare-fun ds_d9SR () Int)
(declare-fun lit$36$$39$Mod () Str)
(declare-fun lq_tmp$36$x$35$$35$6432 () Int)
(declare-fun lq_tmp$36$x$35$$35$14619 () Int)
(declare-fun lq_tmp$36$x$35$$35$8139 () Int)
(declare-fun fix$36$$36$dGSum_a9RE () Int)
(declare-fun lq_tmp$36$x$35$$35$8597 () Int)
(declare-fun lq_tmp$36$x$35$$35$4087 () Int)
(declare-fun GHC.IO.Handle.Types.$36$WFileHandle () Int)
(declare-fun lq_tmp$36$x$35$$35$7590 () Int)
(declare-fun fix$36$$36$dGSum_a9RU () Int)
(declare-fun lq_tmp$36$x$35$$35$10367 () Int)
(declare-fun GHC.Types.GT () Int)
(declare-fun lq_tmp$36$x$35$$35$11074 () Int)
(declare-fun GHC.Classes.C$58$IP () Int)
(declare-fun GHC.Classes.$124$$124$ () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.RestoreFormat () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Union () Int)
(declare-fun lq_tmp$36$x$35$$35$8407 () Int)
(declare-fun lq_tmp$36$x$35$$35$5538 () Int)
(declare-fun lit$36$$60$$61$ () Str)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.SChar () Int)
(declare-fun Data.Either.Left () Int)
(declare-fun GHC.List.last () Int)
(declare-fun lq_tmp$36$x$35$$35$3796 () Int)
(declare-fun lq_tmp$36$x$35$$35$4236 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831686$35$$35$d9Ui () Int)
(declare-fun lq_tmp$36$x$35$$35$13584 () Int)
(declare-fun Language.Stitch.LH.Op.Minus () Int)
(declare-fun lq_tmp$36$x$35$$35$12459 () Int)
(declare-fun GHC.Integer.Type.S$35$ () Int)
(declare-fun GHC.List.scanl1 () Int)
(declare-fun Data.Either.Right () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Char () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831750$35$$35$d9Vk () Int)
(declare-fun lq_tmp$36$x$35$$35$14827 () Int)
(declare-fun lq_tmp$36$x$35$$35$8448 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831727$35$$35$d9UX () Int)
(declare-fun GHC.Num.$45$ () Int)
(declare-fun len () Int)
(declare-fun papp6 () Int)
(declare-fun fix$36$$36$dGSum_a9RN () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.char () Int)
(declare-fun lq_tmp$36$x$35$$35$4590 () Int)
(declare-fun ds_d9SI () Int)
(declare-fun GHC.Base.. () Int)
(declare-fun x_Tuple22 () Int)
(declare-fun Data.Hashable.Class.$36$dmhashWithSalt () Int)
(declare-fun Language.Stitch.LH.Op.GreaterE () Int)
(declare-fun lq_tmp$36$x$35$$35$7807 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831690$35$$35$d9Um () Int)
(declare-fun lq_tmp$36$x$35$$35$5511 () Int)
(declare-fun lq_tmp$36$x$35$$35$9023 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831708$35$$35$d9UE () Int)
(declare-fun lq_tmp$36$x$35$$35$5629 () Int)
(declare-fun lq_tmp$36$x$35$$35$11910 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831698$35$$35$d9Uu () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831711$35$$35$d9UH () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831677$35$$35$d9U9 () Int)
(declare-fun lq_tmp$36$x$35$$35$9114 () Int)
(declare-fun GHC.Types.KindRepTypeLitS () Int)
(declare-fun lq_tmp$36$x$35$$35$1158 () Int)
(declare-fun fix$36$$36$cshow$35$$35$a9Pn () Int)
(declare-fun GHC.Real.$36$W$58$$37$ () Int)
(declare-fun ds_d9St () Int)
(declare-fun lq_tmp$36$x$35$$35$4331 () Int)
(declare-fun GHC.Generics.U1 () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Color () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.SSGR () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831713$35$$35$d9UJ () Int)
(declare-fun lq_tmp$36$x$35$$35$10095 () Int)
(declare-fun GHC.Real.fromRational () Int)
(declare-fun isJust () Int)
(declare-fun lq_tmp$36$x$35$$35$10848 () Int)
(declare-fun lq_tmp$36$x$35$$35$6892 () Int)
(declare-fun Data.Hashable.Generic.Instances.$36$fGHashablearity$58$$43$$58$ () Int)
(declare-fun ds_d9ST () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831717$35$$35$d9UN () Int)
(declare-fun fix$36$$36$dGSum_a9RC () Int)
(declare-fun GHC.List.takeWhile () Int)
(declare-fun ds_d9SD () Int)
(declare-fun GHC.Types.TrNameD () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831715$35$$35$d9UL () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Intensify () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831786$35$$35$d9VU () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.SLine () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831676$35$$35$d9U8 () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Empty () Int)
(declare-fun fix$36$$36$dGSum_a9RS () Int)
(declare-fun lq_tmp$36$x$35$$35$10062 () Int)
(declare-fun GHC.Types.KindRepVar () Int)
(declare-fun lq_tmp$36$x$35$$35$14106 () Int)
(declare-fun fix$36$$36$dGSum_a9RT () Int)
(declare-fun lq_tmp$36$x$35$$35$3854 () Int)
(declare-fun lq_tmp$36$x$35$$35$3955 () Int)
(declare-fun lq_tmp$36$x$35$$35$9083 () Int)
(declare-fun lq_tmp$36$x$35$$35$15134 () Int)
(declare-fun GHC.Types.KindRepTypeLitD () Int)
(declare-fun lq_tmp$36$x$35$$35$7621 () Int)
(declare-fun lit$36$$39$Equals () Str)
(declare-fun lq_tmp$36$x$35$$35$8525 () Int)
(declare-fun Data.Hashable.Generic.Instances.$36$fGHashablearityU1 () Int)
(declare-fun x_Tuple31 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831700$35$$35$d9Uw () Int)
(declare-fun GHC.Integer.Type.Jp$35$ () Int)
(declare-fun lq_tmp$36$x$35$$35$6859 () Int)
(declare-fun lq_tmp$36$x$35$$35$6682 () Int)
(declare-fun lq_tmp$36$x$35$$35$9355 () Int)
(declare-fun lq_tmp$36$x$35$$35$5870 () Int)
(declare-fun GHC.IO.Exception.IOError () Int)
(declare-fun GHC.List.take () Int)
(declare-fun GHC.Stack.Types.PushCallStack () Int)
(declare-fun Language.Stitch.LH.Type.TBool () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831695$35$$35$d9Ur () Int)
(declare-fun GHC.Classes.$60$$61$ () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831678$35$$35$d9Ua () Int)
(declare-fun GHC.Types.TrNameS () Int)
(declare-fun lq_tmp$36$x$35$$35$11846 () Int)
(declare-fun GHC.Enum.C$58$Bounded () Int)
(declare-fun GHC.Base.map () Int)
(declare-fun fix$36$$36$dGSum_a9RD () Int)
(declare-fun GHC.Show.C$58$Show () Int)
(declare-fun lq_tmp$36$x$35$$35$14061 () Int)
(declare-fun ds_d9SC () Int)
(declare-fun GHC.Base.$36$ () Int)
(declare-fun papp1 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831688$35$$35$d9Uk () Int)
(declare-fun GHC.Classes.max () Int)
(declare-fun ds_d9SN () Int)
(declare-fun lq_tmp$36$x$35$$35$4300 () Int)
(declare-fun lq_tmp$36$x$35$$35$6832 () Int)
(declare-fun lq_tmp$36$x$35$$35$11719 () Int)
(declare-fun lq_tmp$36$x$35$$35$10336 () Int)
(declare-fun lq_tmp$36$x$35$$35$10035 () Int)
(declare-fun lit$36$$39$Greater () Str)
(declare-fun GHC.Types.D$35$ () Int)
(declare-fun fix$36$$36$dGHashable_a9RB () Int)
(declare-fun lq_tmp$36$x$35$$35$13126 () Int)
(declare-fun lq_tmp$36$x$35$$35$11968 () Int)
(declare-fun GHC.Classes.$60$ () Int)
(declare-fun tail () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831761$35$$35$d9Vv () Int)
(declare-fun lit$36$$39$Plus () Str)
(declare-fun lq_tmp$36$x$35$$35$13984 () Int)
(declare-fun lq_tmp$36$x$35$$35$10879 () Int)
(declare-fun lq_tmp$36$x$35$$35$6405 () Int)
(declare-fun lq_tmp$36$x$35$$35$3895 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831684$35$$35$d9Ug () Int)
(declare-fun lq_tmp$36$x$35$$35$4740 () Int)
(declare-fun GHC.Types.TyCon () Int)
(declare-fun lq_tmp$36$x$35$$35$13702 () Int)
(declare-fun GHC.Stack.Types.FreezeCallStack () Int)
(declare-fun Language.Stitch.LH.Type.TInt () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831680$35$$35$d9Uc () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831766$35$$35$d9VA () Int)
(declare-fun lq_tmp$36$x$35$$35$9745 () Int)
(declare-fun GHC.Num.$42$ () Int)
(declare-fun lq_tmp$36$x$35$$35$3986 () Int)
(declare-fun lq_tmp$36$x$35$$35$13035 () Int)
(declare-fun lq_tmp$36$x$35$$35$6183 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831725$35$$35$d9UV () Int)
(declare-fun GHC.Classes.$36$dm$47$$61$ () Int)
(declare-fun GHC.Types.W$35$ () Int)
(declare-fun lq_tmp$36$x$35$$35$6310 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831729$35$$35$d9UZ () Int)
(declare-fun lq_tmp$36$x$35$$35$12395 () Int)
(declare-fun GHC.Generics.Rec1 () Int)
(declare-fun lq_tmp$36$x$35$$35$13943 () Int)
(declare-fun lq_tmp$36$x$35$$35$14559 () Int)
(declare-fun lq_tmp$36$x$35$$35$5221 () Int)
(declare-fun lq_tmp$36$x$35$$35$6651 () Int)
(declare-fun GHC.Real.recip () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831721$35$$35$d9UR () Int)
(declare-fun lq_tmp$36$x$35$$35$4800 () Int)
(declare-fun Data.Hashable.Class.Hashed () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831756$35$$35$d9Vq () Int)
(declare-fun lq_tmp$36$x$35$$35$5779 () Int)
(declare-fun lq_tmp$36$x$35$$35$13611 () Int)
(declare-fun lq_tmp$36$x$35$$35$9894 () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Nest () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831791$35$$35$d9VZ () Int)
(declare-fun lq_tmp$36$x$35$$35$8837 () Int)
(declare-fun GHC.Generics.L1 () Int)
(declare-fun fix$36$$36$dGSum_a9RR () Int)
(declare-fun lq_tmp$36$x$35$$35$6156 () Int)
(declare-fun Language.Stitch.LH.Type.funResTy () Int)
(declare-fun Language.Stitch.LH.Op.$36$fHashableArithOp () Int)
(declare-fun GHC.Maybe.Nothing () Int)
(declare-fun lq_tmp$36$x$35$$35$4617 () Int)
(declare-fun lq_tmp$36$x$35$$35$12917 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831796$35$$35$d9W4 () Int)
(declare-fun lq_tmp$36$x$35$$35$11941 () Int)
(declare-fun lq_tmp$36$x$35$$35$10126 () Int)
(declare-fun ds_d9Su () Int)
(declare-fun lq_tmp$36$x$35$$35$9050 () Int)
(declare-fun GHC.Types.EQ () Int)
(declare-fun GHC.List.scanr () Int)
(declare-fun GHC.Num.negate () Int)
(declare-fun lq_tmp$36$x$35$$35$5343 () Int)
(declare-fun lq_tmp$36$x$35$$35$13157 () Int)
(declare-fun GHC.Real.fromIntegral () Int)
(declare-fun lq_tmp$36$x$35$$35$8742 () Int)
(declare-fun lq_tmp$36$x$35$$35$17430 () Int)
(declare-fun GHC.Maybe.Just () Int)
(declare-fun Language.Stitch.LH.Op.Mod () Int)
(declare-fun lq_tmp$36$x$35$$35$12727 () Int)
(declare-fun lq_tmp$36$x$35$$35$8166 () Int)
(declare-fun GHC.Generics.Comp1 () Int)
(declare-fun lq_tmp$36$x$35$$35$3763 () Int)
(declare-fun GHC.Classes.min () Int)
(declare-fun lit$36$$39$Minus () Str)
(declare-fun lq_tmp$36$x$35$$35$4858 () Int)
(declare-fun GHC.List.head () Int)
(declare-fun fix$36$$36$dGSum_a9RG () Int)
(declare-fun lq_tmp$36$x$35$$35$10303 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831685$35$$35$d9Uh () Int)
(declare-fun GHC.Types.$36$WKindRepVar () Int)
(declare-fun lq_tmp$36$x$35$$35$13434 () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.SFail () Int)
(declare-fun lq_tmp$36$x$35$$35$14400 () Int)
(declare-fun lq_tmp$36$x$35$$35$5602 () Int)
(declare-fun x_Tuple32 () Int)
(declare-fun GHC.Generics.Infix () Int)
(declare-fun lit$36$$62$$61$ () Str)
(declare-fun Language.Stitch.LH.Op.arithType () Int)
(declare-fun lit$36$$39$LessE () Str)
(declare-fun GHC.Show.$36$dmshowsPrec () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.$36$WText () Int)
(declare-fun Language.Stitch.LH.Op.Less () Int)
(declare-fun lq_tmp$36$x$35$$35$1236 () Int)
(declare-fun lq_tmp$36$x$35$$35$5571 () Int)
(declare-fun GHC.Classes.C$58$Eq () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.$36$WSLine () Int)
(declare-fun GHC.List.repeat () Int)
(declare-fun lq_tmp$36$x$35$$35$13062 () Int)
(declare-fun lq_tmp$36$x$35$$35$4831 () Int)
(declare-fun lq_tmp$36$x$35$$35$14650 () Int)
(declare-fun lq_tmp$36$x$35$$35$7867 () Int)
(declare-fun lq_tmp$36$x$35$$35$14586 () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.FlatAlt () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792831702$35$$35$d9Uy () Int)
(declare-fun GHC.Classes.not () Int)
(declare-fun lq_tmp$36$x$35$$35$10676 () Int)
(declare-fun lq_tmp$36$x$35$$35$10153 () Int)
(declare-fun lq_tmp$36$x$35$$35$11107 () Int)
(declare-fun GHC.Num.$43$ () Int)
(declare-fun Data.Tuple.fst () Int)
(declare-fun GHC.Types.KindRepApp () Int)
(declare-fun Text.PrettyPrint.ANSI.Leijen.Internal.Line () Int)
(declare-fun lq_tmp$36$x$35$$35$8806 () Int)
(declare-fun Data.Hashable.Generic.Instances.$36$fGSumarity$58$$43$$58$ () Int)
(declare-fun fix$36$$36$dGSum_a9RH () Int)
(declare-fun Data.Hashable.Class.C$58$Hashable () Int)
(declare-fun ds_d9SO () Int)
(declare-fun lq_tmp$36$x$35$$35$12368 () Int)
(declare-fun lq_tmp$36$x$35$$35$9623 () Int)
(declare-fun GHC.Err.error () Int)
(declare-fun snd () Int)
(declare-fun fst () Int)
(declare-fun lq_tmp$36$x$35$$35$10906 () Int)
(declare-fun GHC.IO.Handle.Types.DuplexHandle () Int)
(declare-fun lit$36$$39$Divide () Str)
(declare-fun lq_tmp$36$x$35$$35$3827 () Int)
(declare-fun Data.Tuple.snd () Int)
(declare-fun lq_tmp$36$x$35$$35$13343 () Int)
(declare-fun apply$35$$35$21 (Int (_ BitVec 32)) Bool)
(declare-fun apply$35$$35$16 (Int Str) Bool)
(declare-fun apply$35$$35$8 (Int Bool) Str)
(declare-fun apply$35$$35$19 (Int Str) (_ BitVec 32))
(declare-fun apply$35$$35$12 (Int Real) Real)
(declare-fun apply$35$$35$24 (Int (_ BitVec 32)) (_ BitVec 32))
(declare-fun apply$35$$35$0 (Int Int) Int)
(declare-fun apply$35$$35$7 (Int Bool) Real)
(declare-fun apply$35$$35$15 (Int Str) Int)
(declare-fun apply$35$$35$1 (Int Int) Bool)
(declare-fun apply$35$$35$13 (Int Real) Str)
(declare-fun apply$35$$35$14 (Int Real) (_ BitVec 32))
(declare-fun apply$35$$35$22 (Int (_ BitVec 32)) Real)
(declare-fun apply$35$$35$9 (Int Bool) (_ BitVec 32))
(declare-fun apply$35$$35$2 (Int Int) Real)
(declare-fun apply$35$$35$10 (Int Real) Int)
(declare-fun apply$35$$35$23 (Int (_ BitVec 32)) Str)
(declare-fun apply$35$$35$18 (Int Str) Str)
(declare-fun apply$35$$35$6 (Int Bool) Bool)
(declare-fun apply$35$$35$11 (Int Real) Bool)
(declare-fun apply$35$$35$3 (Int Int) Str)
(declare-fun apply$35$$35$20 (Int (_ BitVec 32)) Int)
(declare-fun apply$35$$35$4 (Int Int) (_ BitVec 32))
(declare-fun apply$35$$35$5 (Int Bool) Int)
(declare-fun apply$35$$35$17 (Int Str) Real)
(declare-fun coerce$35$$35$21 ((_ BitVec 32)) Bool)
(declare-fun coerce$35$$35$16 (Str) Bool)
(declare-fun coerce$35$$35$8 (Bool) Str)
(declare-fun coerce$35$$35$19 (Str) (_ BitVec 32))
(declare-fun coerce$35$$35$12 (Real) Real)
(declare-fun coerce$35$$35$24 ((_ BitVec 32)) (_ BitVec 32))
(declare-fun coerce$35$$35$0 (Int) Int)
(declare-fun coerce$35$$35$7 (Bool) Real)
(declare-fun coerce$35$$35$15 (Str) Int)
(declare-fun coerce$35$$35$1 (Int) Bool)
(declare-fun coerce$35$$35$13 (Real) Str)
(declare-fun coerce$35$$35$14 (Real) (_ BitVec 32))
(declare-fun coerce$35$$35$22 ((_ BitVec 32)) Real)
(declare-fun coerce$35$$35$9 (Bool) (_ BitVec 32))
(declare-fun coerce$35$$35$2 (Int) Real)
(declare-fun coerce$35$$35$10 (Real) Int)
(declare-fun coerce$35$$35$23 ((_ BitVec 32)) Str)
(declare-fun coerce$35$$35$18 (Str) Str)
(declare-fun coerce$35$$35$6 (Bool) Bool)
(declare-fun coerce$35$$35$11 (Real) Bool)
(declare-fun coerce$35$$35$3 (Int) Str)
(declare-fun coerce$35$$35$20 ((_ BitVec 32)) Int)
(declare-fun coerce$35$$35$4 (Int) (_ BitVec 32))
(declare-fun coerce$35$$35$5 (Bool) Int)
(declare-fun coerce$35$$35$17 (Str) Real)
(declare-fun smt_lambda$35$$35$21 ((_ BitVec 32) Bool) Int)
(declare-fun smt_lambda$35$$35$16 (Str Bool) Int)
(declare-fun smt_lambda$35$$35$8 (Bool Str) Int)
(declare-fun smt_lambda$35$$35$19 (Str (_ BitVec 32)) Int)
(declare-fun smt_lambda$35$$35$12 (Real Real) Int)
(declare-fun smt_lambda$35$$35$24 ((_ BitVec 32) (_ BitVec 32)) Int)
(declare-fun smt_lambda$35$$35$0 (Int Int) Int)
(declare-fun smt_lambda$35$$35$7 (Bool Real) Int)
(declare-fun smt_lambda$35$$35$15 (Str Int) Int)
(declare-fun smt_lambda$35$$35$1 (Int Bool) Int)
(declare-fun smt_lambda$35$$35$13 (Real Str) Int)
(declare-fun smt_lambda$35$$35$14 (Real (_ BitVec 32)) Int)
(declare-fun smt_lambda$35$$35$22 ((_ BitVec 32) Real) Int)
(declare-fun smt_lambda$35$$35$9 (Bool (_ BitVec 32)) Int)
(declare-fun smt_lambda$35$$35$2 (Int Real) Int)
(declare-fun smt_lambda$35$$35$10 (Real Int) Int)
(declare-fun smt_lambda$35$$35$23 ((_ BitVec 32) Str) Int)
(declare-fun smt_lambda$35$$35$18 (Str Str) Int)
(declare-fun smt_lambda$35$$35$6 (Bool Bool) Int)
(declare-fun smt_lambda$35$$35$11 (Real Bool) Int)
(declare-fun smt_lambda$35$$35$3 (Int Str) Int)
(declare-fun smt_lambda$35$$35$20 ((_ BitVec 32) Int) Int)
(declare-fun smt_lambda$35$$35$4 (Int (_ BitVec 32)) Int)
(declare-fun smt_lambda$35$$35$5 (Bool Int) Int)
(declare-fun smt_lambda$35$$35$17 (Str Real) Int)
(declare-fun lam_arg$35$$35$1$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$2$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$3$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$4$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$5$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$6$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$7$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$1$35$$35$15 () Str)
(declare-fun lam_arg$35$$35$2$35$$35$15 () Str)
(declare-fun lam_arg$35$$35$3$35$$35$15 () Str)
(declare-fun lam_arg$35$$35$4$35$$35$15 () Str)
(declare-fun lam_arg$35$$35$5$35$$35$15 () Str)
(declare-fun lam_arg$35$$35$6$35$$35$15 () Str)
(declare-fun lam_arg$35$$35$7$35$$35$15 () Str)
(declare-fun lam_arg$35$$35$1$35$$35$10 () Real)
(declare-fun lam_arg$35$$35$2$35$$35$10 () Real)
(declare-fun lam_arg$35$$35$3$35$$35$10 () Real)
(declare-fun lam_arg$35$$35$4$35$$35$10 () Real)
(declare-fun lam_arg$35$$35$5$35$$35$10 () Real)
(declare-fun lam_arg$35$$35$6$35$$35$10 () Real)
(declare-fun lam_arg$35$$35$7$35$$35$10 () Real)
(declare-fun lam_arg$35$$35$1$35$$35$20 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$2$35$$35$20 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$3$35$$35$20 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$4$35$$35$20 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$5$35$$35$20 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$6$35$$35$20 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$7$35$$35$20 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$1$35$$35$5 () Bool)
(declare-fun lam_arg$35$$35$2$35$$35$5 () Bool)
(declare-fun lam_arg$35$$35$3$35$$35$5 () Bool)
(declare-fun lam_arg$35$$35$4$35$$35$5 () Bool)
(declare-fun lam_arg$35$$35$5$35$$35$5 () Bool)
(declare-fun lam_arg$35$$35$6$35$$35$5 () Bool)
(declare-fun lam_arg$35$$35$7$35$$35$5 () Bool)




(assert (distinct Text.PrettyPrint.ANSI.Leijen.Internal.SFail Text.PrettyPrint.ANSI.Leijen.Internal.SEmpty))
(assert (distinct Text.PrettyPrint.ANSI.Leijen.Internal.Line Text.PrettyPrint.ANSI.Leijen.Internal.Empty Text.PrettyPrint.ANSI.Leijen.Internal.Fail))
(assert (distinct Language.Stitch.LH.Type.TInt Language.Stitch.LH.Type.TBool))
(assert (distinct lit$36$$39$Divide lit$36$$39$LessE lit$36$$62$$61$ lit$36$$39$Minus lit$36$$39$Plus lit$36$$39$Greater lit$36$$39$Equals lit$36$$60$$61$ lit$36$$39$Mod lit$36$$39$Less lit$36$Language.Stitch.LH.Op lit$36$$39$GreaterE lit$36$$61$$61$ lit$36$ArithOp lit$36$$39$Times lit$36$stitch$45$lh$45$1.0$45$IjsKgbzXDcsKFIsljSBxHF))


(assert (distinct GHC.Types.True GHC.Types.False))


(assert (distinct Language.Stitch.LH.Op.Less Language.Stitch.LH.Op.Mod Language.Stitch.LH.Op.GreaterE Language.Stitch.LH.Op.Minus Language.Stitch.LH.Op.LessE Language.Stitch.LH.Op.Times Language.Stitch.LH.Op.Divide Language.Stitch.LH.Op.Plus Language.Stitch.LH.Op.Greater Language.Stitch.LH.Op.Equals))
(assert (distinct GHC.Types.EQ GHC.Types.GT GHC.Types.LT))
(assert (= (strLen lit$36$stitch$45$lh$45$1.0$45$IjsKgbzXDcsKFIsljSBxHF) 36))
(assert (= (strLen lit$36$$39$Times) 6))
(assert (= (strLen lit$36$ArithOp) 7))
(assert (= (strLen lit$36$$61$$61$) 2))
(assert (= (strLen lit$36$$39$GreaterE) 9))
(assert (= (strLen lit$36$Language.Stitch.LH.Op) 21))
(assert (= (strLen lit$36$$39$Less) 5))
(assert (= (strLen lit$36$$39$Mod) 4))
(assert (= (strLen lit$36$$60$$61$) 2))
(assert (= (strLen lit$36$$39$Equals) 7))
(assert (= (strLen lit$36$$39$Greater) 8))
(assert (= (strLen lit$36$$39$Plus) 5))
(assert (= (strLen lit$36$$39$Minus) 6))
(assert (= (strLen lit$36$$62$$61$) 2))
(assert (= (strLen lit$36$$39$LessE) 6))
(assert (= (strLen lit$36$$39$Divide) 7))
(exit)
