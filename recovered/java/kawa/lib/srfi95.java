package kawa.lib;

import androidx.fragment.app.FragmentTransaction;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.youngandroid.a;
import gnu.expr.GenericProc;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.expr.Special;
import gnu.kawa.functions.AddOp;
import gnu.kawa.functions.ApplyToArgs;
import gnu.kawa.functions.DivideOp;
import gnu.kawa.functions.NumberCompare;
import gnu.kawa.lispexpr.LangObjType;
import gnu.lists.Consumer;
import gnu.lists.FVector;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.lists.Sequence;
import gnu.mapping.CallContext;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Values;
import gnu.mapping.WrongType;
import gnu.math.IntNum;
import kawa.standard.Scheme;
import kawa.standard.append;

/* loaded from: classes2.dex */
public class srfi95 extends ModuleBody {
    public static final ModuleMethod $Pcsort$Mnlist;
    public static final ModuleMethod $Pcsort$Mnvector;
    public static final ModuleMethod $Pcvector$Mnsort$Ex;
    public static final srfi95 $instance;
    static final IntNum Lit0;
    static final IntNum Lit1;
    static final SimpleSymbol Lit10;
    static final SimpleSymbol Lit11;
    static final SimpleSymbol Lit12;
    static final IntNum Lit2;
    static final IntNum Lit3;
    static final SimpleSymbol Lit4;
    static final SimpleSymbol Lit5;
    static final SimpleSymbol Lit6;
    static final SimpleSymbol Lit7;
    static final SimpleSymbol Lit8;
    static final SimpleSymbol Lit9;
    static final ModuleMethod identity;
    public static final ModuleMethod merge;
    public static final ModuleMethod merge$Ex;
    public static final ModuleMethod sort;
    public static final ModuleMethod sort$Ex;
    public static final ModuleMethod sorted$Qu;

    public static void $PcSortVector(Sequence sequence, Object obj) throws Throwable {
        $PcSortVector(sequence, obj, Boolean.FALSE);
    }

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("sort");
        Lit12 = simpleSymbol;
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f("%sort-vector");
        Lit11 = simpleSymbol2;
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) a.f("%vector-sort!");
        Lit10 = simpleSymbol3;
        SimpleSymbol simpleSymbol4 = (SimpleSymbol) a.f("sort!");
        Lit9 = simpleSymbol4;
        SimpleSymbol simpleSymbol5 = (SimpleSymbol) a.f("%sort-list");
        Lit8 = simpleSymbol5;
        SimpleSymbol simpleSymbol6 = (SimpleSymbol) a.f("merge!");
        Lit7 = simpleSymbol6;
        SimpleSymbol simpleSymbol7 = (SimpleSymbol) a.f("merge");
        Lit6 = simpleSymbol7;
        SimpleSymbol simpleSymbol8 = (SimpleSymbol) a.f("sorted?");
        Lit5 = simpleSymbol8;
        SimpleSymbol simpleSymbol9 = (SimpleSymbol) a.f("identity");
        Lit4 = simpleSymbol9;
        Lit3 = IntNum.make(0);
        Lit2 = IntNum.make(1);
        Lit1 = IntNum.make(2);
        Lit0 = IntNum.make(-1);
        srfi95 srfi95Var = new srfi95();
        $instance = srfi95Var;
        identity = new ModuleMethod(srfi95Var, 1, simpleSymbol9, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        sorted$Qu = new ModuleMethod(srfi95Var, 2, simpleSymbol8, 12290);
        merge = new ModuleMethod(srfi95Var, 4, simpleSymbol7, 16387);
        merge$Ex = new ModuleMethod(srfi95Var, 6, simpleSymbol6, 16387);
        $Pcsort$Mnlist = new ModuleMethod(srfi95Var, 8, simpleSymbol5, 12291);
        sort$Ex = new ModuleMethod(srfi95Var, 9, simpleSymbol4, 12290);
        $Pcvector$Mnsort$Ex = new ModuleMethod(srfi95Var, 11, simpleSymbol3, 12291);
        $Pcsort$Mnvector = new ModuleMethod(srfi95Var, 12, simpleSymbol2, 12290);
        sort = new ModuleMethod(srfi95Var, 14, simpleSymbol, 12290);
        srfi95Var.run();
    }

    public srfi95() {
        ModuleInfo.register(this);
    }

    public static Object identity(Object obj) {
        return obj;
    }

    public static Object isSorted(Object obj, Object obj2) {
        return isSorted(obj, obj2, identity);
    }

    public static Object merge(Object obj, Object obj2, Object obj3) {
        return merge(obj, obj2, obj3, identity);
    }

    public static Object merge$Ex(Object obj, Object obj2, Object obj3) {
        return sort$ClMerge$Ex(obj, obj2, obj3, identity);
    }

    public static Object sort(Sequence sequence, Object obj) {
        return sort(sequence, obj, Boolean.FALSE);
    }

    public static Object sort$Ex(Sequence sequence, Object obj) {
        return sort$Ex(sequence, obj, Boolean.FALSE);
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext callContext) {
        Consumer consumer = callContext.consumer;
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) {
        return moduleMethod.selector == 1 ? identity(obj) : super.apply1(moduleMethod, obj);
    }

    @Override // gnu.expr.ModuleBody
    public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
        if (moduleMethod.selector != 1) {
            return super.match1(moduleMethod, obj, callContext);
        }
        callContext.value1 = obj;
        callContext.proc = moduleMethod;
        callContext.pc = 1;
        return 0;
    }

    @Override // gnu.expr.ModuleBody
    public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 2) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 9) {
            if (!(obj instanceof Sequence)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 12) {
            if (!(obj instanceof Sequence)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i != 14) {
            return super.match2(moduleMethod, obj, obj2, callContext);
        }
        if (!(obj instanceof Sequence)) {
            return -786431;
        }
        callContext.value1 = obj;
        callContext.value2 = obj2;
        callContext.proc = moduleMethod;
        callContext.pc = 2;
        return 0;
    }

    @Override // gnu.expr.ModuleBody
    public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 2) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i == 4) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i == 6) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i == 14) {
            if (!(obj instanceof Sequence)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i == 8) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i == 9) {
            if (!(obj instanceof Sequence)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i == 11) {
            if (!(obj instanceof Sequence)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i != 12) {
            return super.match3(moduleMethod, obj, obj2, obj3, callContext);
        }
        if (!(obj instanceof Sequence)) {
            return -786431;
        }
        callContext.value1 = obj;
        callContext.value2 = obj2;
        callContext.value3 = obj3;
        callContext.proc = moduleMethod;
        callContext.pc = 3;
        return 0;
    }

    public static Object isSorted(Object obj, Object obj2, Object obj3) throws Throwable {
        if (lists.isNull(obj)) {
            return Boolean.TRUE;
        }
        if (obj instanceof Sequence) {
            try {
                Sequence sequence = (Sequence) obj;
                int size = sequence.size();
                int i = size - 1;
                boolean z = i <= 1;
                if (z) {
                    return z ? Boolean.TRUE : Boolean.FALSE;
                }
                Object objValueOf = Integer.valueOf(size - 2);
                Object objApply2 = Scheme.applyToArgs.apply2(obj3, sequence.get(i));
                while (true) {
                    try {
                        boolean zIsNegative = numbers.isNegative(LangObjType.coerceRealNum(objValueOf));
                        if (zIsNegative) {
                            return zIsNegative ? Boolean.TRUE : Boolean.FALSE;
                        }
                        ApplyToArgs applyToArgs = Scheme.applyToArgs;
                        try {
                            Object objApply22 = applyToArgs.apply2(obj3, sequence.get(((Number) objValueOf).intValue()));
                            Object objApply3 = applyToArgs.apply3(obj2, objApply22, objApply2);
                            if (objApply3 == Boolean.FALSE) {
                                return objApply3;
                            }
                            objValueOf = AddOp.$Pl.apply2(Lit0, objValueOf);
                            objApply2 = objApply22;
                        } catch (ClassCastException e) {
                            throw new WrongType(e, "gnu.lists.Sequence.get(int)", 2, objValueOf);
                        }
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "negative?", 1, objValueOf);
                    }
                }
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "arr", -2, obj);
            }
        } else {
            GenericProc genericProc = lists.cdr;
            if (lists.isNull(genericProc.apply1(obj))) {
                return Boolean.TRUE;
            }
            Object objApply23 = Scheme.applyToArgs.apply2(obj3, lists.car.apply1(obj));
            Object objApply1 = genericProc.apply1(obj);
            while (true) {
                boolean zIsNull = lists.isNull(objApply1);
                if (zIsNull) {
                    return zIsNull ? Boolean.TRUE : Boolean.FALSE;
                }
                ApplyToArgs applyToArgs2 = Scheme.applyToArgs;
                Object objApply24 = applyToArgs2.apply2(obj3, lists.car.apply1(objApply1));
                Object objApply32 = applyToArgs2.apply3(obj2, objApply24, objApply23);
                try {
                    Boolean bool = Boolean.FALSE;
                    int i2 = ((objApply32 != bool ? 1 : 0) + 1) & 1;
                    if (i2 == 0) {
                        return i2 != 0 ? Boolean.TRUE : bool;
                    }
                    objApply1 = lists.cdr.apply1(objApply1);
                    objApply23 = objApply24;
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "x", -2, objApply32);
                }
            }
        }
    }

    public static Object merge(Object obj, Object obj2, Object obj3, Object obj4) throws Throwable {
        frame frameVar = new frame();
        frameVar.less$Qu = obj3;
        frameVar.key = obj4;
        if (lists.isNull(obj)) {
            return obj2;
        }
        if (lists.isNull(obj2)) {
            return obj;
        }
        GenericProc genericProc = lists.car;
        Object objApply1 = genericProc.apply1(obj);
        ApplyToArgs applyToArgs = Scheme.applyToArgs;
        Object objApply2 = applyToArgs.apply2(frameVar.key, genericProc.apply1(obj));
        GenericProc genericProc2 = lists.cdr;
        return frameVar.lambda1loop(objApply1, objApply2, genericProc2.apply1(obj), genericProc.apply1(obj2), applyToArgs.apply2(frameVar.key, genericProc.apply1(obj2)), genericProc2.apply1(obj2));
    }

    @Override // gnu.expr.ModuleBody
    public int match4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 4) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.value4 = obj4;
            callContext.proc = moduleMethod;
            callContext.pc = 4;
            return 0;
        }
        if (i != 6) {
            return super.match4(moduleMethod, obj, obj2, obj3, obj4, callContext);
        }
        callContext.value1 = obj;
        callContext.value2 = obj2;
        callContext.value3 = obj3;
        callContext.value4 = obj4;
        callContext.proc = moduleMethod;
        callContext.pc = 4;
        return 0;
    }

    public class frame extends ModuleBody {
        Object key;
        Object less$Qu;

        public Object lambda1loop(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
            ApplyToArgs applyToArgs = Scheme.applyToArgs;
            if (applyToArgs.apply3(this.less$Qu, obj5, obj2) != Boolean.FALSE) {
                if (lists.isNull(obj6)) {
                    return lists.cons(obj4, lists.cons(obj, obj3));
                }
                GenericProc genericProc = lists.car;
                return lists.cons(obj4, lambda1loop(obj, obj2, obj3, genericProc.apply1(obj6), applyToArgs.apply2(this.key, genericProc.apply1(obj6)), lists.cdr.apply1(obj6)));
            }
            if (lists.isNull(obj3)) {
                return lists.cons(obj, lists.cons(obj4, obj6));
            }
            GenericProc genericProc2 = lists.car;
            return lists.cons(obj, lambda1loop(genericProc2.apply1(obj3), applyToArgs.apply2(this.key, genericProc2.apply1(obj3)), lists.cdr.apply1(obj3), obj4, obj5, obj6));
        }
    }

    public static Object sort$ClMerge$Ex(Object obj, Object obj2, Object obj3, Object obj4) throws Throwable {
        frame1 frame1Var = new frame1();
        frame1Var.less$Qu = obj3;
        frame1Var.key = obj4;
        if (lists.isNull(obj)) {
            return obj2;
        }
        if (lists.isNull(obj2)) {
            return obj;
        }
        ApplyToArgs applyToArgs = Scheme.applyToArgs;
        Object obj5 = frame1Var.key;
        GenericProc genericProc = lists.car;
        Object objApply2 = applyToArgs.apply2(obj5, genericProc.apply1(obj));
        Object objApply22 = applyToArgs.apply2(frame1Var.key, genericProc.apply1(obj2));
        if (applyToArgs.apply3(frame1Var.less$Qu, objApply22, objApply2) != Boolean.FALSE) {
            GenericProc genericProc2 = lists.cdr;
            if (lists.isNull(genericProc2.apply1(obj2))) {
                try {
                    ((Pair) obj2).setCdr(obj);
                    return obj2;
                } catch (ClassCastException e) {
                    throw new WrongType(e, "set-cdr!", 1, obj2);
                }
            }
            frame1Var.lambda3loop(obj2, obj, objApply2, genericProc2.apply1(obj2), applyToArgs.apply2(frame1Var.key, lists.cadr.apply1(obj2)));
            return obj2;
        }
        GenericProc genericProc3 = lists.cdr;
        if (lists.isNull(genericProc3.apply1(obj))) {
            try {
                ((Pair) obj).setCdr(obj2);
                return obj;
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "set-cdr!", 1, obj);
            }
        }
        frame1Var.lambda3loop(obj, genericProc3.apply1(obj), applyToArgs.apply2(frame1Var.key, lists.cadr.apply1(obj)), obj2, objApply22);
        return obj;
    }

    public class frame1 extends ModuleBody {
        Object key;
        Object less$Qu;

        public Object lambda3loop(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
            ApplyToArgs applyToArgs = Scheme.applyToArgs;
            if (applyToArgs.apply3(this.less$Qu, obj5, obj3) != Boolean.FALSE) {
                try {
                    ((Pair) obj).setCdr(obj4);
                    GenericProc genericProc = lists.cdr;
                    if (lists.isNull(genericProc.apply1(obj4))) {
                        try {
                            ((Pair) obj4).setCdr(obj2);
                            return Values.empty;
                        } catch (ClassCastException e) {
                            throw new WrongType(e, "set-cdr!", 1, obj4);
                        }
                    }
                    return lambda3loop(obj4, obj2, obj3, genericProc.apply1(obj4), applyToArgs.apply2(this.key, lists.cadr.apply1(obj4)));
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "set-cdr!", 1, obj);
                }
            }
            try {
                ((Pair) obj).setCdr(obj2);
                GenericProc genericProc2 = lists.cdr;
                if (lists.isNull(genericProc2.apply1(obj2))) {
                    try {
                        ((Pair) obj2).setCdr(obj4);
                        return Values.empty;
                    } catch (ClassCastException e3) {
                        throw new WrongType(e3, "set-cdr!", 1, obj2);
                    }
                }
                return lambda3loop(obj2, genericProc2.apply1(obj2), applyToArgs.apply2(this.key, lists.cadr.apply1(obj2)), obj4, obj5);
            } catch (ClassCastException e4) {
                throw new WrongType(e4, "set-cdr!", 1, obj);
            }
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object apply4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4) {
        int i = moduleMethod.selector;
        if (i == 4) {
            return merge(obj, obj2, obj3, obj4);
        }
        if (i != 6) {
            return super.apply4(moduleMethod, obj, obj2, obj3, obj4);
        }
        return sort$ClMerge$Ex(obj, obj2, obj3, obj4);
    }

    public static Object $PcSortList(Object obj, Object obj2, Object obj3) throws Throwable {
        frame0 frame0Var = new frame0();
        frame0Var.seq = obj;
        frame0Var.less$Qu = obj2;
        frame0Var.keyer = Special.undefined;
        Boolean bool = Boolean.FALSE;
        frame0Var.keyer = obj3 != bool ? lists.car : identity;
        if (obj3 != bool) {
            while (!lists.isNull(obj)) {
                try {
                    Pair pair = (Pair) obj;
                    ApplyToArgs applyToArgs = Scheme.applyToArgs;
                    GenericProc genericProc = lists.car;
                    pair.setCar(lists.cons(applyToArgs.apply2(obj3, genericProc.apply1(obj)), genericProc.apply1(obj)));
                    obj = lists.cdr.apply1(obj);
                } catch (ClassCastException e) {
                    throw new WrongType(e, "set-car!", 1, obj);
                }
            }
            Object obj4 = frame0Var.seq;
            try {
                Object objLambda2step = frame0Var.lambda2step(Integer.valueOf(lists.length((LList) obj4)));
                frame0Var.seq = objLambda2step;
                while (!lists.isNull(objLambda2step)) {
                    try {
                        ((Pair) objLambda2step).setCar(lists.cdar.apply1(objLambda2step));
                        objLambda2step = lists.cdr.apply1(objLambda2step);
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "set-car!", 1, objLambda2step);
                    }
                }
                return frame0Var.seq;
            } catch (ClassCastException e3) {
                throw new WrongType(e3, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, obj4);
            }
        }
        try {
            return frame0Var.lambda2step(Integer.valueOf(lists.length((LList) obj)));
        } catch (ClassCastException e4) {
            throw new WrongType(e4, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, obj);
        }
    }

    public class frame0 extends ModuleBody {
        Object keyer;
        Object less$Qu;
        Object seq;

        public Object lambda2step(Object obj) throws Throwable {
            NumberCompare numberCompare = Scheme.numGrt;
            IntNum intNum = srfi95.Lit1;
            Object objApply2 = numberCompare.apply2(obj, intNum);
            Boolean bool = Boolean.FALSE;
            if (objApply2 != bool) {
                Object objApply22 = DivideOp.quotient.apply2(obj, intNum);
                return srfi95.sort$ClMerge$Ex(lambda2step(objApply22), lambda2step(AddOp.$Mn.apply2(obj, objApply22)), this.less$Qu, this.keyer);
            }
            NumberCompare numberCompare2 = Scheme.numEqu;
            if (numberCompare2.apply2(obj, intNum) != bool) {
                Object objApply1 = lists.car.apply1(this.seq);
                Object objApply12 = lists.cadr.apply1(this.seq);
                Object obj2 = this.seq;
                this.seq = lists.cddr.apply1(obj2);
                ApplyToArgs applyToArgs = Scheme.applyToArgs;
                if (applyToArgs.apply3(this.less$Qu, applyToArgs.apply2(this.keyer, objApply12), applyToArgs.apply2(this.keyer, objApply1)) != bool) {
                    try {
                        ((Pair) obj2).setCar(objApply12);
                        Object objApply13 = lists.cdr.apply1(obj2);
                        try {
                            ((Pair) objApply13).setCar(objApply1);
                        } catch (ClassCastException e) {
                            throw new WrongType(e, "set-car!", 1, objApply13);
                        }
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "set-car!", 1, obj2);
                    }
                }
                Object objApply14 = lists.cdr.apply1(obj2);
                try {
                    ((Pair) objApply14).setCdr(LList.Empty);
                    return obj2;
                } catch (ClassCastException e3) {
                    throw new WrongType(e3, "set-cdr!", 1, objApply14);
                }
            }
            if (numberCompare2.apply2(obj, srfi95.Lit2) != bool) {
                Object obj3 = this.seq;
                this.seq = lists.cdr.apply1(obj3);
                try {
                    ((Pair) obj3).setCdr(LList.Empty);
                    return obj3;
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "set-cdr!", 1, obj3);
                }
            }
            return LList.Empty;
        }
    }

    public static Object rank$Mn1Array$To$List(Sequence sequence) {
        Object objCons = LList.Empty;
        for (int size = sequence.size() - 1; size >= 0; size--) {
            objCons = lists.cons(sequence.get(size), objCons);
        }
        return objCons;
    }

    public static Object sort$Ex(Sequence sequence, Object obj, Object obj2) throws Throwable {
        if (lists.isList(sequence)) {
            Object obj$PcSortList = $PcSortList(sequence, obj, obj2);
            if (obj$PcSortList == sequence) {
                return sequence;
            }
            Object objApply1 = obj$PcSortList;
            while (true) {
                GenericProc genericProc = lists.cdr;
                if (genericProc.apply1(objApply1) == sequence) {
                    try {
                        ((Pair) objApply1).setCdr(obj$PcSortList);
                        GenericProc genericProc2 = lists.car;
                        Object objApply12 = genericProc2.apply1(sequence);
                        Object objApply13 = genericProc.apply1(sequence);
                        try {
                            ((Pair) sequence).setCar(genericProc2.apply1(obj$PcSortList));
                            try {
                                ((Pair) sequence).setCdr(genericProc.apply1(obj$PcSortList));
                                try {
                                    ((Pair) obj$PcSortList).setCar(objApply12);
                                    try {
                                        ((Pair) obj$PcSortList).setCdr(objApply13);
                                        return sequence;
                                    } catch (ClassCastException e) {
                                        throw new WrongType(e, "set-cdr!", 1, obj$PcSortList);
                                    }
                                } catch (ClassCastException e2) {
                                    throw new WrongType(e2, "set-car!", 1, obj$PcSortList);
                                }
                            } catch (ClassCastException e3) {
                                throw new WrongType(e3, "set-cdr!", 1, sequence);
                            }
                        } catch (ClassCastException e4) {
                            throw new WrongType(e4, "set-car!", 1, sequence);
                        }
                    } catch (ClassCastException e5) {
                        throw new WrongType(e5, "set-cdr!", 1, objApply1);
                    }
                }
                objApply1 = genericProc.apply1(objApply1);
            }
        } else {
            return $PcVectorSort$Ex(sequence, obj, obj2);
        }
    }

    public static Object $PcVectorSort$Ex(Sequence sequence, Object obj, Object obj2) throws Throwable {
        Object obj$PcSortList = $PcSortList(rank$Mn1Array$To$List(sequence), obj, obj2);
        Object objApply2 = Lit3;
        while (!lists.isNull(obj$PcSortList)) {
            sequence.set(((Number) objApply2).intValue(), lists.car.apply1(obj$PcSortList));
            obj$PcSortList = lists.cdr.apply1(obj$PcSortList);
            objApply2 = AddOp.$Pl.apply2(objApply2, Lit2);
        }
        return sequence;
    }

    public static void $PcSortVector(Sequence sequence, Object obj, Object obj2) throws Throwable {
        FVector fVectorMakeVector = vectors.makeVector(sequence.size());
        Object obj$PcSortList = $PcSortList(rank$Mn1Array$To$List(sequence), obj, obj2);
        Object objApply2 = Lit3;
        while (!lists.isNull(obj$PcSortList)) {
            try {
                fVectorMakeVector.set(((Number) objApply2).intValue(), lists.car.apply1(obj$PcSortList));
                obj$PcSortList = lists.cdr.apply1(obj$PcSortList);
                objApply2 = AddOp.$Pl.apply2(objApply2, Lit2);
            } catch (ClassCastException e) {
                throw new WrongType(e, "vector-set!", 1, objApply2);
            }
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) throws Throwable {
        int i = moduleMethod.selector;
        if (i == 2) {
            return isSorted(obj, obj2);
        }
        if (i == 9) {
            try {
                return sort$Ex((Sequence) obj, obj2);
            } catch (ClassCastException e) {
                throw new WrongType(e, "sort!", 1, obj);
            }
        }
        if (i == 12) {
            try {
                $PcSortVector((Sequence) obj, obj2);
                return Values.empty;
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "%sort-vector", 1, obj);
            }
        }
        if (i != 14) {
            return super.apply2(moduleMethod, obj, obj2);
        }
        try {
            return sort((Sequence) obj, obj2);
        } catch (ClassCastException e3) {
            throw new WrongType(e3, "sort", 1, obj);
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) throws Throwable {
        int i = moduleMethod.selector;
        if (i == 2) {
            return isSorted(obj, obj2, obj3);
        }
        if (i == 4) {
            return merge(obj, obj2, obj3);
        }
        if (i == 6) {
            return merge$Ex(obj, obj2, obj3);
        }
        if (i == 14) {
            try {
                return sort((Sequence) obj, obj2, obj3);
            } catch (ClassCastException e) {
                throw new WrongType(e, "sort", 1, obj);
            }
        }
        if (i == 8) {
            return $PcSortList(obj, obj2, obj3);
        }
        if (i == 9) {
            try {
                return sort$Ex((Sequence) obj, obj2, obj3);
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "sort!", 1, obj);
            }
        }
        if (i == 11) {
            try {
                return $PcVectorSort$Ex((Sequence) obj, obj2, obj3);
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "%vector-sort!", 1, obj);
            }
        }
        if (i == 12) {
            try {
                $PcSortVector((Sequence) obj, obj2, obj3);
                return Values.empty;
            } catch (ClassCastException e4) {
                throw new WrongType(e4, "%sort-vector", 1, obj);
            }
        }
        return super.apply3(moduleMethod, obj, obj2, obj3);
    }

    public static Object sort(Sequence sequence, Object obj, Object obj2) throws Throwable {
        if (lists.isList(sequence)) {
            return $PcSortList(append.append$V(new Object[]{sequence, LList.Empty}), obj, obj2);
        }
        $PcSortVector(sequence, obj, obj2);
        return Values.empty;
    }
}
