package gnu.commonlisp.lisp;

import androidx.fragment.app.FragmentTransaction;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.youngandroid.a;
import gnu.commonlisp.lang.CommonLisp;
import gnu.commonlisp.lang.Lisp2;
import gnu.commonlisp.lang.Symbols;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.kawa.functions.AddOp;
import gnu.kawa.functions.Apply;
import gnu.kawa.functions.NumberCompare;
import gnu.lists.Consumer;
import gnu.lists.FString;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.lists.Sequence;
import gnu.lists.SimpleVector;
import gnu.mapping.CallContext;
import gnu.mapping.Environment;
import gnu.mapping.Procedure;
import gnu.mapping.PropertyLocation;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Symbol;
import gnu.mapping.Values;
import gnu.mapping.WrongType;
import gnu.math.IntNum;
import kawa.lib.misc;
import kawa.lib.strings;
import kawa.standard.Scheme;

/* loaded from: classes2.dex */
public class PrimOps extends ModuleBody {
    public static final PrimOps $instance;
    public static final ModuleMethod apply;
    public static final ModuleMethod aref;
    public static final ModuleMethod arrayp;
    public static final ModuleMethod aset;
    public static final ModuleMethod boundp;
    public static final SimpleSymbol c;
    public static final ModuleMethod car;
    public static final ModuleMethod cdr;
    public static final ModuleMethod char$Mnto$Mnstring;
    public static final IntNum e;
    public static final ModuleMethod fillarray;
    public static final ModuleMethod fset;
    public static final ModuleMethod functionp;
    public static final ModuleMethod get;
    public static final ModuleMethod length;
    public static final ModuleMethod make$Mnstring;
    public static final ModuleMethod plist$Mnget;
    public static final ModuleMethod plist$Mnmember;
    public static final ModuleMethod plist$Mnput;
    public static final ModuleMethod plist$Mnremprop;
    public static final ModuleMethod put;
    public static final ModuleMethod set;
    public static final ModuleMethod setcar;
    public static final ModuleMethod setcdr;
    public static final ModuleMethod setplist;
    public static final ModuleMethod stringp;
    public static final ModuleMethod substring;
    public static final ModuleMethod symbol$Mnfunction;
    public static final ModuleMethod symbol$Mnname;
    public static final ModuleMethod symbol$Mnplist;
    public static final ModuleMethod symbol$Mnvalue;
    public static final ModuleMethod symbolp;

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("functionp");
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f("char-to-string");
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) a.f("substring");
        SimpleSymbol simpleSymbol4 = (SimpleSymbol) a.f("make-string");
        SimpleSymbol simpleSymbol5 = (SimpleSymbol) a.f("stringp");
        SimpleSymbol simpleSymbol6 = (SimpleSymbol) a.f("fillarray");
        SimpleSymbol simpleSymbol7 = (SimpleSymbol) a.f("aset");
        SimpleSymbol simpleSymbol8 = (SimpleSymbol) a.f("aref");
        SimpleSymbol simpleSymbol9 = (SimpleSymbol) a.f("arrayp");
        SimpleSymbol simpleSymbol10 = (SimpleSymbol) a.f(PropertyTypeConstants.PROPERTY_TYPE_LENGTH);
        SimpleSymbol simpleSymbol11 = (SimpleSymbol) a.f("apply");
        SimpleSymbol simpleSymbol12 = (SimpleSymbol) a.f("fset");
        SimpleSymbol simpleSymbol13 = (SimpleSymbol) a.f("symbol-function");
        SimpleSymbol simpleSymbol14 = (SimpleSymbol) a.f("set");
        SimpleSymbol simpleSymbol15 = (SimpleSymbol) a.f("symbol-value");
        SimpleSymbol simpleSymbol16 = (SimpleSymbol) a.f("put");
        SimpleSymbol simpleSymbol17 = (SimpleSymbol) a.f("get");
        SimpleSymbol simpleSymbol18 = (SimpleSymbol) a.f("plist-member");
        SimpleSymbol simpleSymbol19 = (SimpleSymbol) a.f("plist-remprop");
        SimpleSymbol simpleSymbol20 = (SimpleSymbol) a.f("plist-put");
        SimpleSymbol simpleSymbol21 = (SimpleSymbol) a.f("plist-get");
        SimpleSymbol simpleSymbol22 = (SimpleSymbol) a.f("setplist");
        SimpleSymbol simpleSymbol23 = (SimpleSymbol) a.f("symbol-plist");
        SimpleSymbol simpleSymbol24 = (SimpleSymbol) a.f("symbol-name");
        SimpleSymbol simpleSymbol25 = (SimpleSymbol) a.f("symbolp");
        SimpleSymbol simpleSymbol26 = (SimpleSymbol) a.f("boundp");
        SimpleSymbol simpleSymbol27 = (SimpleSymbol) a.f("setcdr");
        SimpleSymbol simpleSymbol28 = (SimpleSymbol) a.f("setcar");
        SimpleSymbol simpleSymbol29 = (SimpleSymbol) a.f("cdr");
        SimpleSymbol simpleSymbol30 = (SimpleSymbol) a.f("car");
        e = IntNum.make(0);
        c = (SimpleSymbol) a.f("t");
        PrimOps primOps = new PrimOps();
        $instance = primOps;
        car = new ModuleMethod(primOps, 1, simpleSymbol30, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        cdr = new ModuleMethod(primOps, 2, simpleSymbol29, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        setcar = new ModuleMethod(primOps, 3, simpleSymbol28, 8194);
        setcdr = new ModuleMethod(primOps, 4, simpleSymbol27, 8194);
        boundp = new ModuleMethod(primOps, 5, simpleSymbol26, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        symbolp = new ModuleMethod(primOps, 6, simpleSymbol25, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        symbol$Mnname = new ModuleMethod(primOps, 7, simpleSymbol24, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        symbol$Mnplist = new ModuleMethod(primOps, 8, simpleSymbol23, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        setplist = new ModuleMethod(primOps, 9, simpleSymbol22, 8194);
        plist$Mnget = new ModuleMethod(primOps, 10, simpleSymbol21, 12290);
        plist$Mnput = new ModuleMethod(primOps, 12, simpleSymbol20, 12291);
        plist$Mnremprop = new ModuleMethod(primOps, 13, simpleSymbol19, 8194);
        plist$Mnmember = new ModuleMethod(primOps, 14, simpleSymbol18, 8194);
        get = new ModuleMethod(primOps, 15, simpleSymbol17, 12290);
        put = new ModuleMethod(primOps, 17, simpleSymbol16, 12291);
        symbol$Mnvalue = new ModuleMethod(primOps, 18, simpleSymbol15, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        set = new ModuleMethod(primOps, 19, simpleSymbol14, 8194);
        symbol$Mnfunction = new ModuleMethod(primOps, 20, simpleSymbol13, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        fset = new ModuleMethod(primOps, 21, simpleSymbol12, 8194);
        apply = new ModuleMethod(primOps, 22, simpleSymbol11, -4095);
        length = new ModuleMethod(primOps, 23, simpleSymbol10, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        arrayp = new ModuleMethod(primOps, 24, simpleSymbol9, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        aref = new ModuleMethod(primOps, 25, simpleSymbol8, 8194);
        aset = new ModuleMethod(primOps, 26, simpleSymbol7, 12291);
        fillarray = new ModuleMethod(primOps, 27, simpleSymbol6, 8194);
        stringp = new ModuleMethod(primOps, 28, simpleSymbol5, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        make$Mnstring = new ModuleMethod(primOps, 29, simpleSymbol4, 8194);
        substring = new ModuleMethod(primOps, 30, simpleSymbol3, 12290);
        char$Mnto$Mnstring = new ModuleMethod(primOps, 32, simpleSymbol2, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        functionp = new ModuleMethod(primOps, 33, simpleSymbol, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        primOps.run();
    }

    public PrimOps() {
        ModuleInfo.register(this);
    }

    public static Object get(Symbol symbol, Object obj) {
        return get(symbol, obj, LList.Empty);
    }

    public static Object plistGet(Object obj, Object obj2) {
        return plistGet(obj, obj2, Boolean.FALSE);
    }

    public static FString substring(CharSequence charSequence, Object obj) {
        return substring(charSequence, obj, LList.Empty);
    }

    @Override // gnu.expr.ModuleBody
    public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 1) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 2) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 5) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 6) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 7) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 8) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 18) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 20) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 28) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 23) {
            if (!(obj instanceof Sequence)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 24) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 32) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i != 33) {
            return super.match1(moduleMethod, obj, callContext);
        }
        callContext.value1 = obj;
        callContext.proc = moduleMethod;
        callContext.pc = 1;
        return 0;
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext callContext) {
        Consumer consumer = callContext.consumer;
    }

    public static Object car(Object obj) {
        return obj == LList.Empty ? obj : ((Pair) obj).getCar();
    }

    public static Object cdr(Object obj) {
        return obj == LList.Empty ? obj : ((Pair) obj).getCdr();
    }

    @Override // gnu.expr.ModuleBody
    public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 3) {
            if (!(obj instanceof Pair)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 4) {
            if (!(obj instanceof Pair)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 9) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 10) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 19) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 21) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 25) {
            if (!(obj instanceof SimpleVector)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 27) {
            if (!(obj instanceof SimpleVector)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 29) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i != 30) {
            switch (i) {
                case 13:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 14:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 15:
                    if (!(obj instanceof Symbol)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                default:
                    return super.match2(moduleMethod, obj, obj2, callContext);
            }
        }
        if (!(obj instanceof CharSequence)) {
            return -786431;
        }
        callContext.value1 = obj;
        callContext.value2 = obj2;
        callContext.proc = moduleMethod;
        callContext.pc = 2;
        return 0;
    }

    public static void setcar(Pair pair, Object obj) {
        pair.setCar(obj);
    }

    public static void setcdr(Pair pair, Object obj) {
        pair.setCdr(obj);
    }

    public static boolean boundp(Object obj) {
        return Symbols.isBound(obj);
    }

    public static boolean symbolp(Object obj) {
        return Symbols.isSymbol(obj);
    }

    public static Object symbolName(Object obj) {
        return Symbols.getPrintName(obj);
    }

    public static Object symbolPlist(Object obj) {
        return PropertyLocation.getPropertyList(obj);
    }

    public static Object setplist(Object obj, Object obj2) {
        PropertyLocation.setPropertyList(obj, obj2);
        return obj2;
    }

    @Override // gnu.expr.ModuleBody
    public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 10) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i == 12) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i == 15) {
            if (!(obj instanceof Symbol)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i == 17) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i == 26) {
            if (!(obj instanceof SimpleVector)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i != 30) {
            return super.match3(moduleMethod, obj, obj2, obj3, callContext);
        }
        if (!(obj instanceof CharSequence)) {
            return -786431;
        }
        callContext.value1 = obj;
        callContext.value2 = obj2;
        callContext.value3 = obj3;
        callContext.proc = moduleMethod;
        callContext.pc = 3;
        return 0;
    }

    public static Object plistGet(Object obj, Object obj2, Object obj3) {
        return PropertyLocation.plistGet(obj, obj2, obj3);
    }

    public static Object plistPut(Object obj, Object obj2, Object obj3) {
        return PropertyLocation.plistPut(obj, obj2, obj3);
    }

    public static Object plistRemprop(Object obj, Object obj2) {
        return PropertyLocation.plistRemove(obj, obj2);
    }

    public static Object plistMember(Object obj, Object obj2) {
        Values values = Values.empty;
        return PropertyLocation.plistGet(obj, obj2, values) == values ? LList.Empty : c;
    }

    public static Object get(Symbol symbol, Object obj, Object obj2) {
        return PropertyLocation.getProperty(symbol, obj, obj2);
    }

    public static void put(Object obj, Object obj2, Object obj3) {
        PropertyLocation.putProperty(obj, obj2, obj3);
    }

    public static Object symbolValue(Object obj) {
        return Environment.getCurrent().get(Symbols.getSymbol(obj));
    }

    public static void set(Object obj, Object obj2) {
        Environment.getCurrent().put(Symbols.getSymbol(obj), obj2);
    }

    public static Object symbolFunction(Object obj) {
        return Symbols.getFunctionBinding(obj);
    }

    public static void fset(Object obj, Object obj2) {
        Symbols.setFunctionBinding(Environment.getCurrent(), obj, obj2);
    }

    @Override // gnu.expr.ModuleBody
    public Object applyN(ModuleMethod moduleMethod, Object[] objArr) {
        if (moduleMethod.selector != 22) {
            return super.applyN(moduleMethod, objArr);
        }
        Object obj = objArr[0];
        int length2 = objArr.length - 1;
        Object[] objArr2 = new Object[length2];
        while (true) {
            int i = length2 - 1;
            if (i < 0) {
                return apply(obj, objArr2);
            }
            objArr2[i] = objArr[length2];
            length2 = i;
        }
    }

    @Override // gnu.expr.ModuleBody
    public int matchN(ModuleMethod moduleMethod, Object[] objArr, CallContext callContext) {
        if (moduleMethod.selector != 22) {
            return super.matchN(moduleMethod, objArr, callContext);
        }
        callContext.values = objArr;
        callContext.proc = moduleMethod;
        callContext.pc = 5;
        return 0;
    }

    public static Object apply(Object obj, Object... objArr) {
        if (misc.isSymbol(obj)) {
            obj = symbolFunction(obj);
        }
        return ((Procedure) obj).applyN(Apply.getArguments(objArr, 0, apply));
    }

    public static int length(Sequence sequence) {
        return sequence.size();
    }

    public static boolean arrayp(Object obj) {
        return obj instanceof SimpleVector;
    }

    public static Object aref(SimpleVector simpleVector, int i) {
        return simpleVector.get(i);
    }

    public static Object aset(SimpleVector simpleVector, int i, Object obj) {
        simpleVector.set(i, obj);
        return obj;
    }

    public static Object fillarray(SimpleVector simpleVector, Object obj) {
        simpleVector.fill(obj);
        return obj;
    }

    public static boolean stringp(Object obj) {
        return obj instanceof CharSequence;
    }

    public static FString makeString(int i, Object obj) {
        return new FString(i, CommonLisp.asChar(obj));
    }

    @Override // gnu.expr.ModuleBody
    public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
        int i = moduleMethod.selector;
        if (i == 3) {
            try {
                setcar((Pair) obj, obj2);
                return Values.empty;
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "setcar", 1, obj);
            }
        }
        if (i == 4) {
            try {
                setcdr((Pair) obj, obj2);
                return Values.empty;
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "setcdr", 1, obj);
            }
        }
        if (i == 9) {
            return setplist(obj, obj2);
        }
        if (i == 10) {
            return plistGet(obj, obj2);
        }
        if (i == 19) {
            set(obj, obj2);
            return Values.empty;
        }
        if (i == 21) {
            fset(obj, obj2);
            return Values.empty;
        }
        if (i == 25) {
            try {
                try {
                    return aref((SimpleVector) obj, ((Number) obj2).intValue());
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "aref", 2, obj2);
                }
            } catch (ClassCastException e5) {
                throw new WrongType(e5, "aref", 1, obj);
            }
        }
        if (i == 27) {
            try {
                return fillarray((SimpleVector) obj, obj2);
            } catch (ClassCastException e6) {
                throw new WrongType(e6, "fillarray", 1, obj);
            }
        }
        if (i == 29) {
            try {
                return makeString(((Number) obj).intValue(), obj2);
            } catch (ClassCastException e7) {
                throw new WrongType(e7, "make-string", 1, obj);
            }
        }
        if (i != 30) {
            switch (i) {
                case 13:
                    return plistRemprop(obj, obj2);
                case 14:
                    return plistMember(obj, obj2);
                case 15:
                    try {
                        return get((Symbol) obj, obj2);
                    } catch (ClassCastException e8) {
                        throw new WrongType(e8, "get", 1, obj);
                    }
                default:
                    return super.apply2(moduleMethod, obj, obj2);
            }
        }
        try {
            return substring((CharSequence) obj, obj2);
        } catch (ClassCastException e9) {
            throw new WrongType(e9, "substring", 1, obj);
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
        int i = moduleMethod.selector;
        if (i == 10) {
            return plistGet(obj, obj2, obj3);
        }
        if (i == 12) {
            return plistPut(obj, obj2, obj3);
        }
        if (i == 15) {
            try {
                return get((Symbol) obj, obj2, obj3);
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "get", 1, obj);
            }
        }
        if (i == 17) {
            put(obj, obj2, obj3);
            return Values.empty;
        }
        if (i != 26) {
            if (i != 30) {
                return super.apply3(moduleMethod, obj, obj2, obj3);
            }
            try {
                return substring((CharSequence) obj, obj2, obj3);
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "substring", 1, obj);
            }
        }
        try {
            try {
                return aset((SimpleVector) obj, ((Number) obj2).intValue(), obj3);
            } catch (ClassCastException e4) {
                throw new WrongType(e4, "aset", 2, obj2);
            }
        } catch (ClassCastException e5) {
            throw new WrongType(e5, "aset", 1, obj);
        }
    }

    public static FString substring(CharSequence charSequence, Object obj, Object obj2) throws Throwable {
        if (obj2 == LList.Empty) {
            obj2 = Integer.valueOf(strings.stringLength(charSequence));
        }
        NumberCompare numberCompare = Scheme.numLss;
        IntNum intNum = e;
        Object objApply2 = numberCompare.apply2(obj2, intNum);
        Boolean bool = Boolean.FALSE;
        if (objApply2 != bool) {
            obj2 = AddOp.$Mn.apply2(Integer.valueOf(strings.stringLength(charSequence)), obj2);
        }
        if (numberCompare.apply2(obj, intNum) != bool) {
            obj = AddOp.$Mn.apply2(Integer.valueOf(strings.stringLength(charSequence)), obj);
        }
        return new FString(charSequence, ((Number) obj).intValue(), ((Number) AddOp.$Mn.apply2(obj2, obj)).intValue());
    }

    public static FString charToString(Object obj) {
        return new FString(1, CommonLisp.asChar(obj));
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) {
        int i = moduleMethod.selector;
        if (i == 1) {
            return car(obj);
        }
        if (i == 2) {
            return cdr(obj);
        }
        if (i == 5) {
            return boundp(obj) ? Lisp2.TRUE : LList.Empty;
        }
        if (i == 6) {
            return symbolp(obj) ? Lisp2.TRUE : LList.Empty;
        }
        if (i == 7) {
            return symbolName(obj);
        }
        if (i == 8) {
            return symbolPlist(obj);
        }
        if (i == 18) {
            return symbolValue(obj);
        }
        if (i == 20) {
            return symbolFunction(obj);
        }
        if (i == 28) {
            return stringp(obj) ? Lisp2.TRUE : LList.Empty;
        }
        if (i == 23) {
            try {
                return Integer.valueOf(length((Sequence) obj));
            } catch (ClassCastException e2) {
                throw new WrongType(e2, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, obj);
            }
        }
        if (i == 24) {
            return arrayp(obj) ? Lisp2.TRUE : LList.Empty;
        }
        if (i == 32) {
            return charToString(obj);
        }
        if (i != 33) {
            return super.apply1(moduleMethod, obj);
        }
        return functionp(obj) ? Lisp2.TRUE : LList.Empty;
    }

    public static boolean functionp(Object obj) {
        return obj instanceof Procedure;
    }
}
