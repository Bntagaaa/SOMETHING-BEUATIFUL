package gnu.kawa.slib;

import androidx.fragment.app.FragmentTransaction;
import com.google.youngandroid.a;
import gnu.expr.GenericProc;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.kawa.functions.Apply;
import gnu.kawa.functions.IsEq;
import gnu.kawa.lispexpr.LispLanguage;
import gnu.kawa.slib.condition;
import gnu.lists.Consumer;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.lists.PairWithPosition;
import gnu.mapping.CallContext;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Symbol;
import gnu.mapping.Values;
import gnu.mapping.WrongType;
import kawa.lang.Macro;
import kawa.lang.SyntaxPattern;
import kawa.lang.SyntaxRule;
import kawa.lang.SyntaxRules;
import kawa.lib.lists;
import kawa.lib.misc;
import kawa.standard.Scheme;
import kawa.standard.append;

/* loaded from: classes2.dex */
public class conditions extends ModuleBody {
    public static Object $Amcondition;
    public static Object $Amerror;
    public static Object $Ammessage;
    public static Object $Amserious;
    static final Class $Lscondition$Mntype$Gr;
    public static final Class $Prvt$$Lscondition$Gr;
    public static final ModuleMethod $Prvt$type$Mnfield$Mnalist$Mn$Grcondition;
    public static final conditions $instance;
    static final SimpleSymbol Lit0;
    static final SimpleSymbol Lit1;
    static final SimpleSymbol Lit10;
    static final SimpleSymbol Lit11;
    static final SimpleSymbol Lit12;
    static final SimpleSymbol Lit13;
    static final SyntaxRules Lit14;
    static final SimpleSymbol Lit15;
    static final SimpleSymbol Lit16;
    static final SimpleSymbol Lit17;
    static final SimpleSymbol Lit18;
    static final SyntaxRules Lit19;
    static final PairWithPosition Lit2;
    static final SimpleSymbol Lit20;
    static final SimpleSymbol Lit21;
    static final SimpleSymbol Lit22;
    static final SimpleSymbol Lit3;
    static final SimpleSymbol Lit4;
    static final SimpleSymbol Lit5;
    static final SimpleSymbol Lit6;
    static final SimpleSymbol Lit7;
    static final SimpleSymbol Lit8;
    static final SyntaxRules Lit9;
    public static final Macro condition;
    public static final ModuleMethod condition$Mnhas$Mntype$Qu;
    public static final ModuleMethod condition$Mnref;
    static final Macro condition$Mntype$Mnfield$Mnalist;
    public static final ModuleMethod condition$Mntype$Qu;
    public static final ModuleMethod condition$Qu;
    public static final Macro define$Mncondition$Mntype;
    public static final ModuleMethod extract$Mncondition;
    public static final ModuleMethod make$Mncompound$Mncondition;
    public static final ModuleMethod make$Mncondition;
    public static final ModuleMethod make$Mncondition$Mntype;

    public conditions() {
        ModuleInfo.register(this);
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext callContext) {
        Consumer consumer = callContext.consumer;
        SimpleSymbol simpleSymbol = Lit0;
        Boolean bool = Boolean.FALSE;
        LList lList = LList.Empty;
        condition.Mntype mntype = new condition.Mntype(simpleSymbol, bool, lList, lList);
        $Amcondition = mntype;
        $Ammessage = makeConditionType(Lit1, mntype, Lit2);
        SimpleSymbol simpleSymbol2 = Lit3;
        Object obj = $Amcondition;
        try {
            condition.Mntype mntypeMakeConditionType = makeConditionType(simpleSymbol2, (condition.Mntype) obj, lList);
            $Amserious = mntypeMakeConditionType;
            $Amerror = makeConditionType(Lit4, mntypeMakeConditionType, lList);
        } catch (ClassCastException e) {
            throw new WrongType(e, "make-condition-type", 1, obj);
        }
    }

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("thing");
        Lit22 = simpleSymbol;
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f(LispLanguage.quote_sym);
        Lit21 = simpleSymbol2;
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) a.f("type-field-alist->condition");
        Lit20 = simpleSymbol3;
        SimpleSymbol simpleSymbol4 = (SimpleSymbol) a.f("condition");
        Lit18 = simpleSymbol4;
        SyntaxRules syntaxRules = new SyntaxRules(new Object[]{simpleSymbol4}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018]\f\u0007-\f\u000f\f\u0017\b\b\u0010\b\u0000\u0018\b", new Object[0], 3), "\u0003\u0005\u0005", "\u0011\u0018\u0004\b\u0011\u0018\f\b\u0005\u0011\u0018\u0014\t\u0003\b\u0011\u0018\f\b\r\u0011\u0018\u0014)\u0011\u0018\u001c\b\u000b\b\u0013", new Object[]{simpleSymbol3, (SimpleSymbol) a.f("list"), (SimpleSymbol) a.f("cons"), simpleSymbol2}, 2)}, 3);
        Lit19 = syntaxRules;
        SimpleSymbol simpleSymbol5 = (SimpleSymbol) a.f("extract-condition");
        Lit17 = simpleSymbol5;
        SimpleSymbol simpleSymbol6 = (SimpleSymbol) a.f("make-compound-condition");
        Lit16 = simpleSymbol6;
        SimpleSymbol simpleSymbol7 = (SimpleSymbol) a.f("condition-ref");
        Lit15 = simpleSymbol7;
        SimpleSymbol simpleSymbol8 = (SimpleSymbol) a.f("condition-type-field-alist");
        Lit13 = simpleSymbol8;
        SyntaxPattern syntaxPattern = new SyntaxPattern("\f\u0018\f\u0007\b", new Object[0], 1);
        SimpleSymbol simpleSymbol9 = (SimpleSymbol) a.f("$lookup$");
        SimpleSymbol simpleSymbol10 = (SimpleSymbol) a.f("*");
        SimpleSymbol simpleSymbol11 = (SimpleSymbol) a.f(LispLanguage.quasiquote_sym);
        SimpleSymbol simpleSymbol12 = (SimpleSymbol) a.f(".type-field-alist");
        LList lList = LList.Empty;
        SyntaxRules syntaxRules2 = new SyntaxRules(new Object[]{simpleSymbol8}, new SyntaxRule[]{new SyntaxRule(syntaxPattern, "\u0001", "\u0011\u0018\u0004\b\u0011\u0018\f\u0011\u0018\u0014\b\u0003", new Object[]{PairWithPosition.make(simpleSymbol9, a.c(simpleSymbol12, lList, simpleSymbol11, lList, simpleSymbol10), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/conditions.scm", 581639), (SimpleSymbol) a.f("as"), (SimpleSymbol) a.f("<condition>")}, 0)}, 1);
        Lit14 = syntaxRules2;
        SimpleSymbol simpleSymbol13 = (SimpleSymbol) a.f("condition-has-type?");
        Lit12 = simpleSymbol13;
        SimpleSymbol simpleSymbol14 = (SimpleSymbol) a.f("make-condition");
        Lit11 = simpleSymbol14;
        SimpleSymbol simpleSymbol15 = (SimpleSymbol) a.f("condition?");
        Lit10 = simpleSymbol15;
        SimpleSymbol simpleSymbol16 = (SimpleSymbol) a.f("define-condition-type");
        Lit8 = simpleSymbol16;
        SyntaxPattern syntaxPattern2 = new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017-\f\u001f\f'\b\u0018\u0010\b", new Object[0], 5);
        SimpleSymbol simpleSymbol17 = (SimpleSymbol) a.f("begin");
        SimpleSymbol simpleSymbol18 = (SimpleSymbol) a.f("define");
        SimpleSymbol simpleSymbol19 = (SimpleSymbol) a.f("make-condition-type");
        Lit7 = simpleSymbol19;
        SyntaxRules syntaxRules3 = new SyntaxRules(new Object[]{simpleSymbol16}, new SyntaxRule[]{new SyntaxRule(syntaxPattern2, "\u0001\u0001\u0001\u0003\u0003", "\u0011\u0018\u0004É\u0011\u0018\f\t\u0003\b\u0011\u0018\u0014)\u0011\u0018\u001c\b\u0003\t\u000b\b\u0011\u0018\u001c\b\b\u001d\u001bÁ\u0011\u0018\f!\t\u0013\u0018$\b\u0011\u0018,\u0011\u00184\b\u0011\u0018<\u0011\u0018D\b\u0003\b%\u0011\u0018\f!\t#\u0018L\b\u0011\u0018TA\u0011\u0018\\\u0011\u0018d\b\u0003\b\u0011\u0018\u001c\b\u001b", new Object[]{simpleSymbol17, simpleSymbol18, simpleSymbol19, simpleSymbol2, PairWithPosition.make(simpleSymbol, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/conditions.scm", 327708), (SimpleSymbol) a.f("and"), PairWithPosition.make(simpleSymbol15, PairWithPosition.make(simpleSymbol, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/conditions.scm", 331803), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/conditions.scm", 331791), simpleSymbol13, simpleSymbol, PairWithPosition.make(simpleSymbol4, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/conditions.scm", 339996), simpleSymbol7, simpleSymbol5, simpleSymbol4}, 1)}, 5);
        Lit9 = syntaxRules3;
        SimpleSymbol simpleSymbol20 = (SimpleSymbol) a.f("condition-type?");
        Lit6 = simpleSymbol20;
        SimpleSymbol simpleSymbol21 = (SimpleSymbol) a.f("message");
        Lit5 = simpleSymbol21;
        Lit4 = (SimpleSymbol) a.f("&error");
        Lit3 = (SimpleSymbol) a.f("&serious");
        Lit2 = PairWithPosition.make(simpleSymbol21, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/conditions.scm", 925699);
        Lit1 = (SimpleSymbol) a.f("&message");
        Lit0 = (SimpleSymbol) a.f("&condition");
        conditions conditionsVar = new conditions();
        $instance = conditionsVar;
        $Lscondition$Mntype$Gr = condition.Mntype.class;
        condition$Mntype$Qu = new ModuleMethod(conditionsVar, 2, simpleSymbol20, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        make$Mncondition$Mntype = new ModuleMethod(conditionsVar, 3, simpleSymbol19, 12291);
        define$Mncondition$Mntype = Macro.make(simpleSymbol16, syntaxRules3, conditionsVar);
        $Prvt$$Lscondition$Gr = condition.class;
        condition$Qu = new ModuleMethod(conditionsVar, 4, simpleSymbol15, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        make$Mncondition = new ModuleMethod(conditionsVar, 5, simpleSymbol14, -4095);
        condition$Mnhas$Mntype$Qu = new ModuleMethod(conditionsVar, 6, simpleSymbol13, 8194);
        condition$Mntype$Mnfield$Mnalist = Macro.make(simpleSymbol8, syntaxRules2, conditionsVar);
        condition$Mnref = new ModuleMethod(conditionsVar, 7, simpleSymbol7, 8194);
        make$Mncompound$Mncondition = new ModuleMethod(conditionsVar, 8, simpleSymbol6, -4095);
        extract$Mncondition = new ModuleMethod(conditionsVar, 9, simpleSymbol5, 8194);
        condition = Macro.make(simpleSymbol4, syntaxRules, conditionsVar);
        $Prvt$type$Mnfield$Mnalist$Mn$Grcondition = new ModuleMethod(conditionsVar, 10, simpleSymbol3, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        conditionsVar.run();
    }

    @Override // gnu.expr.ModuleBody
    public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 2) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 4) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i != 10) {
            return super.match1(moduleMethod, obj, callContext);
        }
        callContext.value1 = obj;
        callContext.proc = moduleMethod;
        callContext.pc = 1;
        return 0;
    }

    public static boolean isConditionType(Object obj) {
        return obj instanceof condition.Mntype;
    }

    @Override // gnu.expr.ModuleBody
    public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
        if (moduleMethod.selector != 3) {
            return super.apply3(moduleMethod, obj, obj2, obj3);
        }
        try {
            try {
                return makeConditionType((Symbol) obj, (condition.Mntype) obj2, obj3);
            } catch (ClassCastException e) {
                throw new WrongType(e, "make-condition-type", 2, obj2);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "make-condition-type", 1, obj);
        }
    }

    @Override // gnu.expr.ModuleBody
    public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
        if (moduleMethod.selector != 3) {
            return super.match3(moduleMethod, obj, obj2, obj3, callContext);
        }
        if (!(obj instanceof Symbol)) {
            return -786431;
        }
        callContext.value1 = obj;
        if (!(obj2 instanceof condition.Mntype)) {
            return -786430;
        }
        callContext.value2 = obj2;
        callContext.value3 = obj3;
        callContext.proc = moduleMethod;
        callContext.pc = 3;
        return 0;
    }

    public static condition.Mntype makeConditionType(Symbol symbol, condition.Mntype mntype, Object obj) {
        if (!lists.isNull(srfi1.lsetIntersection$V(Scheme.isEq, mntype.all$Mnfields, new Object[]{obj}))) {
            misc.error$V("duplicate field name", new Object[0]);
        }
        return new condition.Mntype(symbol, mntype, obj, append.append$V(new Object[]{mntype.all$Mnfields, obj}));
    }

    public static boolean isError(Object obj) {
        boolean zIsCondition = isCondition(obj);
        if (!zIsCondition) {
            return zIsCondition;
        }
        Object obj2 = $Amerror;
        try {
            return isConditionHasType(obj, (condition.Mntype) obj2);
        } catch (ClassCastException e) {
            throw new WrongType(e, "condition-has-type?", 1, obj2);
        }
    }

    public static boolean isMessageCondition(Object obj) {
        boolean zIsCondition = isCondition(obj);
        if (!zIsCondition) {
            return zIsCondition;
        }
        Object obj2 = $Ammessage;
        try {
            return isConditionHasType(obj, (condition.Mntype) obj2);
        } catch (ClassCastException e) {
            throw new WrongType(e, "condition-has-type?", 1, obj2);
        }
    }

    public static boolean isSeriousCondition(Object obj) {
        boolean zIsCondition = isCondition(obj);
        if (!zIsCondition) {
            return zIsCondition;
        }
        Object obj2 = $Amserious;
        try {
            return isConditionHasType(obj, (condition.Mntype) obj2);
        } catch (ClassCastException e) {
            throw new WrongType(e, "condition-has-type?", 1, obj2);
        }
    }

    public static boolean isConditionSubtype(condition.Mntype mntype, condition.Mntype mntype2) {
        while (mntype != Boolean.FALSE) {
            if (mntype == mntype2) {
                return true;
            }
            mntype = (condition.Mntype) mntype.supertype;
        }
        return false;
    }

    public static Object conditionTypeFieldSupertype(condition.Mntype mntype, Object obj) {
        while (true) {
            Boolean bool = Boolean.FALSE;
            if (mntype == bool) {
                return bool;
            }
            if (lists.memq(obj, mntype.fields) != bool) {
                return mntype;
            }
            mntype = (condition.Mntype) mntype.supertype;
        }
    }

    public static boolean isCondition(Object obj) {
        return obj instanceof condition;
    }

    public static condition makeCondition$V(condition.Mntype mntype, Object[] objArr) {
        Object objLambda1label = lambda1label(LList.makeList(objArr, 0));
        IsEq isEq = Scheme.isEq;
        Object obj = mntype.all$Mnfields;
        Object objMake = LList.Empty;
        Object obj2 = objLambda1label;
        while (obj2 != LList.Empty) {
            try {
                Pair pair = (Pair) obj2;
                Object cdr = pair.getCdr();
                objMake = Pair.make(lists.car.apply1(pair.getCar()), objMake);
                obj2 = cdr;
            } catch (ClassCastException e) {
                throw new WrongType(e, "arg0", -2, obj2);
            }
        }
        if (srfi1.lset$Eq$V(isEq, new Object[]{obj, LList.reverseInPlace(objMake)}) == Boolean.FALSE) {
            misc.error$V("condition fields don't match condition type", new Object[0]);
        }
        return new condition(LList.list1(lists.cons(mntype, objLambda1label)));
    }

    @Override // gnu.expr.ModuleBody
    public int matchN(ModuleMethod moduleMethod, Object[] objArr, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 5) {
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }
        if (i != 8) {
            return super.matchN(moduleMethod, objArr, callContext);
        }
        callContext.values = objArr;
        callContext.proc = moduleMethod;
        callContext.pc = 5;
        return 0;
    }

    public static Object lambda1label(Object obj) {
        return lists.isNull(obj) ? LList.Empty : lists.cons(lists.cons(lists.car.apply1(obj), lists.cadr.apply1(obj)), lambda1label(lists.cddr.apply1(obj)));
    }

    @Override // gnu.expr.ModuleBody
    public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 6) {
            callContext.value1 = obj;
            if (!(obj2 instanceof condition.Mntype)) {
                return -786430;
            }
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 7) {
            if (!(obj instanceof condition)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i != 9) {
            return super.match2(moduleMethod, obj, obj2, callContext);
        }
        if (!(obj instanceof condition)) {
            return -786431;
        }
        callContext.value1 = obj;
        if (!(obj2 instanceof condition.Mntype)) {
            return -786430;
        }
        callContext.value2 = obj2;
        callContext.proc = moduleMethod;
        callContext.pc = 2;
        return 0;
    }

    public static boolean isConditionHasType(Object obj, condition.Mntype mntype) throws Throwable {
        Object objConditionTypes = conditionTypes(obj);
        while (true) {
            Object objApply1 = lists.car.apply1(objConditionTypes);
            try {
                boolean zIsConditionSubtype = isConditionSubtype((condition.Mntype) objApply1, mntype);
                if (zIsConditionSubtype) {
                    return zIsConditionSubtype;
                }
                objConditionTypes = lists.cdr.apply1(objConditionTypes);
            } catch (ClassCastException e) {
                throw new WrongType(e, "condition-subtype?", 0, objApply1);
            }
        }
    }

    public static Object conditionRef(condition conditionVar, Object obj) {
        return typeFieldAlistRef(conditionVar.type$Mnfield$Mnalist, obj);
    }

    public static Object typeFieldAlistRef(Object obj, Object obj2) throws Throwable {
        while (!lists.isNull(obj)) {
            GenericProc genericProc = lists.cdr;
            Object objAssq = lists.assq(obj2, genericProc.apply1(lists.car.apply1(obj)));
            if (objAssq == Boolean.FALSE) {
                obj = genericProc.apply1(obj);
            } else {
                return genericProc.apply1(objAssq);
            }
        }
        return misc.error$V("type-field-alist-ref: field not found", new Object[]{obj, obj2});
    }

    public static condition makeCompoundCondition$V(Object obj, Object[] objArr) {
        LList lListMakeList = LList.makeList(objArr, 0);
        Apply apply = Scheme.apply;
        append appendVar = append.append;
        Object objCons = lists.cons(obj, lListMakeList);
        Object objMake = LList.Empty;
        while (objCons != LList.Empty) {
            try {
                Pair pair = (Pair) objCons;
                Object cdr = pair.getCdr();
                objMake = Pair.make(Scheme.applyToArgs.apply2(condition$Mntype$Mnfield$Mnalist, pair.getCar()), objMake);
                objCons = cdr;
            } catch (ClassCastException e) {
                throw new WrongType(e, "arg0", -2, objCons);
            }
        }
        return new condition(apply.apply2(appendVar, LList.reverseInPlace(objMake)));
    }

    @Override // gnu.expr.ModuleBody
    public Object applyN(ModuleMethod moduleMethod, Object[] objArr) {
        int i = moduleMethod.selector;
        if (i == 5) {
            Object obj = objArr[0];
            try {
                condition.Mntype mntype = (condition.Mntype) obj;
                int length = objArr.length - 1;
                Object[] objArr2 = new Object[length];
                while (true) {
                    int i2 = length - 1;
                    if (i2 < 0) {
                        return makeCondition$V(mntype, objArr2);
                    }
                    objArr2[i2] = objArr[length];
                    length = i2;
                }
            } catch (ClassCastException e) {
                throw new WrongType(e, "make-condition", 1, obj);
            }
        } else {
            if (i != 8) {
                return super.applyN(moduleMethod, objArr);
            }
            Object obj2 = objArr[0];
            int length2 = objArr.length - 1;
            Object[] objArr3 = new Object[length2];
            while (true) {
                int i3 = length2 - 1;
                if (i3 < 0) {
                    return makeCompoundCondition$V(obj2, objArr3);
                }
                objArr3[i3] = objArr[length2];
                length2 = i3;
            }
        }
    }

    public static condition extractCondition(condition conditionVar, condition.Mntype mntype) throws Throwable {
        frame frameVar = new frame();
        frameVar.type = mntype;
        Object objFind = srfi1.find(frameVar.lambda$Fn1, conditionVar.type$Mnfield$Mnalist);
        if (objFind == Boolean.FALSE) {
            misc.error$V("extract-condition: invalid condition type", new Object[]{conditionVar, frameVar.type});
        }
        condition.Mntype mntype2 = frameVar.type;
        Object obj = mntype2.all$Mnfields;
        Object objMake = LList.Empty;
        while (obj != LList.Empty) {
            try {
                Pair pair = (Pair) obj;
                Object cdr = pair.getCdr();
                objMake = Pair.make(lists.assq(pair.getCar(), lists.cdr.apply1(objFind)), objMake);
                obj = cdr;
            } catch (ClassCastException e) {
                throw new WrongType(e, "arg0", -2, obj);
            }
        }
        return new condition(LList.list1(lists.cons(mntype2, LList.reverseInPlace(objMake))));
    }

    @Override // gnu.expr.ModuleBody
    public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
        int i = moduleMethod.selector;
        if (i == 6) {
            try {
                return isConditionHasType(obj, (condition.Mntype) obj2) ? Boolean.TRUE : Boolean.FALSE;
            } catch (ClassCastException e) {
                throw new WrongType(e, "condition-has-type?", 2, obj2);
            }
        }
        if (i == 7) {
            try {
                return conditionRef((condition) obj, obj2);
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "condition-ref", 1, obj);
            }
        }
        if (i != 9) {
            return super.apply2(moduleMethod, obj, obj2);
        }
        try {
            try {
                return extractCondition((condition) obj, (condition.Mntype) obj2);
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "extract-condition", 2, obj2);
            }
        } catch (ClassCastException e4) {
            throw new WrongType(e4, "extract-condition", 1, obj);
        }
    }

    public class frame extends ModuleBody {
        final ModuleMethod lambda$Fn1;
        condition.Mntype type;

        public frame() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 1, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/conditions.scm:166");
            this.lambda$Fn1 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 1 ? lambda2(obj) ? Boolean.TRUE : Boolean.FALSE : super.apply1(moduleMethod, obj);
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

        public boolean lambda2(Object obj) throws Throwable {
            Object objApply1 = lists.car.apply1(obj);
            try {
                return conditions.isConditionSubtype((condition.Mntype) objApply1, this.type);
            } catch (ClassCastException e) {
                throw new WrongType(e, "condition-subtype?", 0, objApply1);
            }
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) {
        int i = moduleMethod.selector;
        return i != 2 ? i != 4 ? i != 10 ? super.apply1(moduleMethod, obj) : typeFieldAlist$To$Condition(obj) : isCondition(obj) ? Boolean.TRUE : Boolean.FALSE : isConditionType(obj) ? Boolean.TRUE : Boolean.FALSE;
    }

    public static condition typeFieldAlist$To$Condition(Object obj) throws Throwable {
        Object objMake = LList.Empty;
        Object obj2 = obj;
        while (true) {
            Object objMake2 = LList.Empty;
            if (obj2 == objMake2) {
                return new condition(LList.reverseInPlace(objMake));
            }
            try {
                Pair pair = (Pair) obj2;
                Object cdr = pair.getCdr();
                Object car = pair.getCar();
                GenericProc genericProc = lists.car;
                Object objApply1 = genericProc.apply1(car);
                Object obj3 = ((condition.Mntype) genericProc.apply1(car)).all$Mnfields;
                while (obj3 != LList.Empty) {
                    try {
                        Pair pair2 = (Pair) obj3;
                        Object cdr2 = pair2.getCdr();
                        Object car2 = pair2.getCar();
                        Object objAssq = lists.assq(car2, lists.cdr.apply1(car));
                        if (objAssq == Boolean.FALSE) {
                            objAssq = lists.cons(car2, typeFieldAlistRef(obj, car2));
                        }
                        objMake2 = Pair.make(objAssq, objMake2);
                        obj3 = cdr2;
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "arg0", -2, obj3);
                    }
                }
                objMake = Pair.make(lists.cons(objApply1, LList.reverseInPlace(objMake2)), objMake);
                obj2 = cdr;
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "arg0", -2, obj2);
            }
        }
    }

    public static Object conditionTypes(Object obj) {
        Object obj2 = ((condition) obj).type$Mnfield$Mnalist;
        Object objMake = LList.Empty;
        while (obj2 != LList.Empty) {
            try {
                Pair pair = (Pair) obj2;
                Object cdr = pair.getCdr();
                objMake = Pair.make(lists.car.apply1(pair.getCar()), objMake);
                obj2 = cdr;
            } catch (ClassCastException e) {
                throw new WrongType(e, "arg0", -2, obj2);
            }
        }
        return LList.reverseInPlace(objMake);
    }

    public static Object checkConditionTypeFieldAlist(Object obj) throws Throwable {
        boolean zIsConditionSubtype;
        for (Object objApply1 = obj; !lists.isNull(objApply1); objApply1 = lists.cdr.apply1(objApply1)) {
            GenericProc genericProc = lists.car;
            Object objApply12 = genericProc.apply1(objApply1);
            Object objApply13 = genericProc.apply1(objApply12);
            try {
                condition.Mntype mntype = (condition.Mntype) objApply13;
                Object objApply14 = lists.cdr.apply1(objApply12);
                Object objMake = LList.Empty;
                while (objApply14 != LList.Empty) {
                    try {
                        Pair pair = (Pair) objApply14;
                        Object cdr = pair.getCdr();
                        objMake = Pair.make(lists.car.apply1(pair.getCar()), objMake);
                        objApply14 = cdr;
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "arg0", -2, objApply14);
                    }
                }
                LList lListReverseInPlace = LList.reverseInPlace(objMake);
                Object objLsetDifference$V = srfi1.lsetDifference$V(Scheme.isEq, mntype.all$Mnfields, new Object[]{lListReverseInPlace});
                while (objLsetDifference$V != LList.Empty) {
                    try {
                        Pair pair2 = (Pair) objLsetDifference$V;
                        Object car = pair2.getCar();
                        Object objConditionTypeFieldSupertype = conditionTypeFieldSupertype(mntype, car);
                        Object objApply15 = obj;
                        while (true) {
                            GenericProc genericProc2 = lists.car;
                            Object objApply16 = genericProc2.apply1(genericProc2.apply1(objApply15));
                            try {
                                try {
                                    zIsConditionSubtype = isConditionSubtype((condition.Mntype) objApply16, (condition.Mntype) objConditionTypeFieldSupertype);
                                    if (zIsConditionSubtype) {
                                        break;
                                    }
                                    objApply15 = lists.cdr.apply1(objApply15);
                                } catch (ClassCastException e2) {
                                    throw new WrongType(e2, "condition-subtype?", 1, objConditionTypeFieldSupertype);
                                }
                            } catch (ClassCastException e3) {
                                throw new WrongType(e3, "condition-subtype?", 0, objApply16);
                            }
                        }
                        if (!zIsConditionSubtype) {
                            misc.error$V("missing field in condition construction", new Object[]{mntype, car});
                        }
                        objLsetDifference$V = pair2.getCdr();
                    } catch (ClassCastException e4) {
                        throw new WrongType(e4, "arg0", -2, objLsetDifference$V);
                    }
                }
            } catch (ClassCastException e5) {
                throw new WrongType(e5, "type", -2, objApply13);
            }
        }
        return Values.empty;
    }

    public static Object conditionMessage(Object obj) {
        try {
            condition conditionVar = (condition) obj;
            Object obj2 = $Ammessage;
            try {
                return conditionRef(extractCondition(conditionVar, (condition.Mntype) obj2), Lit5);
            } catch (ClassCastException e) {
                throw new WrongType(e, "extract-condition", 1, obj2);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "extract-condition", 0, obj);
        }
    }
}
