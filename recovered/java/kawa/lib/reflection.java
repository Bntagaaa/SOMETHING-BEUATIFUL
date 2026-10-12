package kawa.lib;

import androidx.fragment.app.FragmentTransaction;
import com.google.youngandroid.a;
import gnu.bytecode.ClassType;
import gnu.bytecode.Type;
import gnu.expr.Compilation;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.kawa.lispexpr.LangObjType;
import gnu.lists.Consumer;
import gnu.lists.LList;
import gnu.lists.PairWithPosition;
import gnu.mapping.CallContext;
import gnu.mapping.Procedure;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.WrongType;
import gnu.math.IntNum;
import kawa.lang.GetFieldProc;
import kawa.lang.Macro;
import kawa.lang.Record;
import kawa.lang.RecordConstructor;
import kawa.lang.SetFieldProc;
import kawa.lang.SyntaxPattern;
import kawa.lang.SyntaxRule;
import kawa.lang.SyntaxRules;
import kawa.lang.SyntaxTemplate;
import kawa.lang.TemplateScope;
import kawa.standard.syntax_case;

/* loaded from: classes2.dex */
public class reflection extends ModuleBody {
    public static final reflection $instance;
    static final SimpleSymbol Lit0;
    static final SyntaxPattern Lit1;
    static final SimpleSymbol Lit10;
    static final SimpleSymbol Lit11;
    static final SimpleSymbol Lit12;
    static final SimpleSymbol Lit13;
    static final SimpleSymbol Lit14;
    static final SyntaxRules Lit15;
    static final SimpleSymbol Lit16;
    static final SyntaxRules Lit17;
    static final SimpleSymbol Lit18;
    static final SyntaxRules Lit19;
    static final SyntaxTemplate Lit2;
    static final SimpleSymbol Lit20;
    static final SyntaxRules Lit21;
    static final SimpleSymbol Lit22;
    static final SyntaxRules Lit23;
    static final SimpleSymbol Lit24;
    static final SyntaxRules Lit25;
    static final SimpleSymbol Lit26;
    static final SyntaxRules Lit27;
    static final SimpleSymbol Lit28;
    static final SyntaxRules Lit29;
    static final SyntaxPattern Lit3;
    static final SimpleSymbol Lit30;
    static final SimpleSymbol Lit31;
    static final SimpleSymbol Lit32;
    static final IntNum Lit33;
    static final IntNum Lit34;
    static final SyntaxTemplate Lit4;
    static final SimpleSymbol Lit5;
    static final SimpleSymbol Lit6;
    static final SimpleSymbol Lit7;
    static final SimpleSymbol Lit8;
    static final SimpleSymbol Lit9;
    public static final ModuleMethod make$Mnrecord$Mntype;
    public static final Macro primitive$Mnarray$Mnget;
    public static final Macro primitive$Mnarray$Mnlength;
    public static final Macro primitive$Mnarray$Mnnew;
    public static final Macro primitive$Mnarray$Mnset;
    public static final Macro primitive$Mnconstructor;
    public static final Macro primitive$Mnget$Mnfield;
    public static final Macro primitive$Mnget$Mnstatic;
    public static final Macro primitive$Mnset$Mnfield;
    public static final Macro primitive$Mnset$Mnstatic;
    public static final ModuleMethod record$Mnaccessor;
    public static final ModuleMethod record$Mnconstructor;
    public static final ModuleMethod record$Mnmodifier;
    public static final ModuleMethod record$Mnpredicate;
    public static final ModuleMethod record$Mntype$Mndescriptor;
    public static final ModuleMethod record$Mntype$Mnfield$Mnnames;
    public static final ModuleMethod record$Mntype$Mnname;
    public static final ModuleMethod record$Qu;
    public static final ModuleMethod subtype$Qu;

    static {
        IntNum intNumMake = IntNum.make(1);
        Lit34 = intNumMake;
        IntNum intNumMake2 = IntNum.make(9);
        Lit33 = intNumMake2;
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("make");
        Lit32 = simpleSymbol;
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f("constant-fold");
        Lit31 = simpleSymbol2;
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) a.f("subtype?");
        Lit30 = simpleSymbol3;
        SimpleSymbol simpleSymbol4 = (SimpleSymbol) a.f("primitive-set-static");
        Lit28 = simpleSymbol4;
        SyntaxPattern syntaxPattern = new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\b", new Object[0], 3);
        SimpleSymbol simpleSymbol5 = (SimpleSymbol) a.f("<gnu.kawa.reflect.StaticSet>");
        LList lList = LList.Empty;
        SyntaxRules syntaxRules = new SyntaxRules(new Object[]{simpleSymbol4}, new SyntaxRule[]{new SyntaxRule(syntaxPattern, "\u0001\u0001\u0001", "\u0011\u0018\u0004\u0011\u0018\f\u0011\u0018\u0014\t\u0003\t\u000b\t\u0013\u0018\u001c", new Object[]{simpleSymbol2, simpleSymbol, simpleSymbol5, PairWithPosition.make(intNumMake2, lList, "/u2/home/jis/ai2-kawa/kawa/lib/reflection.scm", 454679)}, 0)}, 3);
        Lit29 = syntaxRules;
        SimpleSymbol simpleSymbol6 = (SimpleSymbol) a.f("primitive-get-static");
        Lit26 = simpleSymbol6;
        SyntaxRules syntaxRules2 = new SyntaxRules(new Object[]{simpleSymbol6}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\b", new Object[0], 3), "\u0001\u0001\u0001", "\u0011\u0018\u0004\u0011\u0018\f\u0011\u0018\u0014\t\u0003\t\u000b\t\u0013\u0018\u001c", new Object[]{simpleSymbol2, simpleSymbol, (SimpleSymbol) a.f("<gnu.kawa.reflect.StaticGet>"), PairWithPosition.make(intNumMake2, lList, "/u2/home/jis/ai2-kawa/kawa/lib/reflection.scm", 430103)}, 0)}, 3);
        Lit27 = syntaxRules2;
        SimpleSymbol simpleSymbol7 = (SimpleSymbol) a.f("primitive-set-field");
        Lit24 = simpleSymbol7;
        SyntaxRules syntaxRules3 = new SyntaxRules(new Object[]{simpleSymbol7}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\b", new Object[0], 3), "\u0001\u0001\u0001", "\u0011\u0018\u0004\u0011\u0018\f\u0011\u0018\u0014\t\u0003\t\u000b\t\u0013\u0018\u001c", new Object[]{simpleSymbol2, simpleSymbol, (SimpleSymbol) a.f("<kawa.lang.SetFieldProc>"), PairWithPosition.make(intNumMake, lList, "/u2/home/jis/ai2-kawa/kawa/lib/reflection.scm", 401431)}, 0)}, 3);
        Lit25 = syntaxRules3;
        SimpleSymbol simpleSymbol8 = (SimpleSymbol) a.f("primitive-get-field");
        Lit22 = simpleSymbol8;
        SyntaxRules syntaxRules4 = new SyntaxRules(new Object[]{simpleSymbol8}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\b", new Object[0], 3), "\u0001\u0001\u0001", "\u0011\u0018\u0004\u0011\u0018\f\u0011\u0018\u0014\t\u0003\t\u000b\t\u0013\u0018\u001c", new Object[]{simpleSymbol2, simpleSymbol, (SimpleSymbol) a.f("<kawa.lang.GetFieldProc>"), PairWithPosition.make(intNumMake, lList, "/u2/home/jis/ai2-kawa/kawa/lib/reflection.scm", 376855)}, 0)}, 3);
        Lit23 = syntaxRules4;
        SimpleSymbol simpleSymbol9 = (SimpleSymbol) a.f("primitive-array-length");
        Lit20 = simpleSymbol9;
        SyntaxRules syntaxRules5 = new SyntaxRules(new Object[]{simpleSymbol9}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\b", new Object[0], 1), "\u0001", "\u0011\u0018\u0004\u0011\u0018\f\u0011\u0018\u0014\b\u0003", new Object[]{simpleSymbol2, simpleSymbol, (SimpleSymbol) a.f("<gnu.kawa.reflect.ArrayLength>")}, 0)}, 1);
        Lit21 = syntaxRules5;
        SimpleSymbol simpleSymbol10 = (SimpleSymbol) a.f("primitive-array-get");
        Lit18 = simpleSymbol10;
        SyntaxRules syntaxRules6 = new SyntaxRules(new Object[]{simpleSymbol10}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\b", new Object[0], 1), "\u0001", "\u0011\u0018\u0004\u0011\u0018\f\u0011\u0018\u0014\b\u0003", new Object[]{simpleSymbol2, simpleSymbol, (SimpleSymbol) a.f("<gnu.kawa.reflect.ArrayGet>")}, 0)}, 1);
        Lit19 = syntaxRules6;
        SimpleSymbol simpleSymbol11 = (SimpleSymbol) a.f("primitive-array-set");
        Lit16 = simpleSymbol11;
        SyntaxRules syntaxRules7 = new SyntaxRules(new Object[]{simpleSymbol11}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\b", new Object[0], 1), "\u0001", "\u0011\u0018\u0004\u0011\u0018\f\u0011\u0018\u0014\b\u0003", new Object[]{simpleSymbol2, simpleSymbol, (SimpleSymbol) a.f("<gnu.kawa.reflect.ArraySet>")}, 0)}, 1);
        Lit17 = syntaxRules7;
        SimpleSymbol simpleSymbol12 = (SimpleSymbol) a.f("primitive-array-new");
        Lit14 = simpleSymbol12;
        SyntaxRules syntaxRules8 = new SyntaxRules(new Object[]{simpleSymbol12}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\b", new Object[0], 1), "\u0001", "\u0011\u0018\u0004\u0011\u0018\f\u0011\u0018\u0014\b\u0003", new Object[]{simpleSymbol2, simpleSymbol, (SimpleSymbol) a.f("<gnu.kawa.reflect.ArrayNew>")}, 0)}, 1);
        Lit15 = syntaxRules8;
        SimpleSymbol simpleSymbol13 = (SimpleSymbol) a.f("record-type-field-names");
        Lit13 = simpleSymbol13;
        SimpleSymbol simpleSymbol14 = (SimpleSymbol) a.f("record-type-name");
        Lit12 = simpleSymbol14;
        SimpleSymbol simpleSymbol15 = (SimpleSymbol) a.f("record-type-descriptor");
        Lit11 = simpleSymbol15;
        SimpleSymbol simpleSymbol16 = (SimpleSymbol) a.f("record-predicate");
        Lit10 = simpleSymbol16;
        SimpleSymbol simpleSymbol17 = (SimpleSymbol) a.f("record?");
        Lit9 = simpleSymbol17;
        SimpleSymbol simpleSymbol18 = (SimpleSymbol) a.f("record-modifier");
        Lit8 = simpleSymbol18;
        SimpleSymbol simpleSymbol19 = (SimpleSymbol) a.f("record-accessor");
        Lit7 = simpleSymbol19;
        SimpleSymbol simpleSymbol20 = (SimpleSymbol) a.f("record-constructor");
        Lit6 = simpleSymbol20;
        SimpleSymbol simpleSymbol21 = (SimpleSymbol) a.f("make-record-type");
        Lit5 = simpleSymbol21;
        Lit4 = new SyntaxTemplate("\u0001\u0001\u0003\u0003", "\u0011\u0018\u0004\u0019\b\u001d\u001b\u0011\u0018\f\t\u000b\b\u0011\u0018\u0014\t\u000b\b\u0015\u0011\u0018\u001c\t\u0013\b\u001b", new Object[]{(SimpleSymbol) a.f("lambda"), (SimpleSymbol) a.f("::"), simpleSymbol, (SimpleSymbol) a.f("as")}, 1);
        Lit3 = new SyntaxPattern("\r\u001f\u0018\b\b", new Object[0], 4);
        Lit2 = new SyntaxTemplate("\u0001\u0001\u0003", "\b\u0015\u0013", new Object[0], 1);
        Lit1 = new SyntaxPattern("\f\u0007\f\u000f,\r\u0017\u0010\b\b\b", new Object[0], 3);
        SimpleSymbol simpleSymbol22 = (SimpleSymbol) a.f("primitive-constructor");
        Lit0 = simpleSymbol22;
        reflection reflectionVar = new reflection();
        $instance = reflectionVar;
        primitive$Mnconstructor = Macro.make(simpleSymbol22, new ModuleMethod(reflectionVar, 2, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN), reflectionVar);
        make$Mnrecord$Mntype = new ModuleMethod(reflectionVar, 3, simpleSymbol21, 8194);
        record$Mnconstructor = new ModuleMethod(reflectionVar, 4, simpleSymbol20, 8193);
        record$Mnaccessor = new ModuleMethod(reflectionVar, 6, simpleSymbol19, 8194);
        record$Mnmodifier = new ModuleMethod(reflectionVar, 7, simpleSymbol18, 8194);
        record$Qu = new ModuleMethod(reflectionVar, 8, simpleSymbol17, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        record$Mnpredicate = new ModuleMethod(reflectionVar, 9, simpleSymbol16, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        record$Mntype$Mndescriptor = new ModuleMethod(reflectionVar, 10, simpleSymbol15, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        record$Mntype$Mnname = new ModuleMethod(reflectionVar, 11, simpleSymbol14, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        record$Mntype$Mnfield$Mnnames = new ModuleMethod(reflectionVar, 12, simpleSymbol13, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        primitive$Mnarray$Mnnew = Macro.make(simpleSymbol12, syntaxRules8, reflectionVar);
        primitive$Mnarray$Mnset = Macro.make(simpleSymbol11, syntaxRules7, reflectionVar);
        primitive$Mnarray$Mnget = Macro.make(simpleSymbol10, syntaxRules6, reflectionVar);
        primitive$Mnarray$Mnlength = Macro.make(simpleSymbol9, syntaxRules5, reflectionVar);
        primitive$Mnget$Mnfield = Macro.make(simpleSymbol8, syntaxRules4, reflectionVar);
        primitive$Mnset$Mnfield = Macro.make(simpleSymbol7, syntaxRules3, reflectionVar);
        primitive$Mnget$Mnstatic = Macro.make(simpleSymbol6, syntaxRules2, reflectionVar);
        primitive$Mnset$Mnstatic = Macro.make(simpleSymbol4, syntaxRules, reflectionVar);
        subtype$Qu = new ModuleMethod(reflectionVar, 13, simpleSymbol3, 8194);
        reflectionVar.run();
    }

    public reflection() {
        ModuleInfo.register(this);
    }

    public static RecordConstructor recordConstructor(ClassType classType) {
        return recordConstructor(classType, null);
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext callContext) {
        Consumer consumer = callContext.consumer;
    }

    public static Object lambda2(Object obj) throws Throwable {
        Object[] objArrAllocVars = SyntaxPattern.allocVars(3, null);
        if (!Lit1.match(obj, objArrAllocVars, 0)) {
            return syntax_case.error("syntax-case", obj);
        }
        Object objGenerateTemporaries = std_syntax.generateTemporaries(Lit2.execute(objArrAllocVars, TemplateScope.make()));
        Object[] objArrAllocVars2 = SyntaxPattern.allocVars(4, objArrAllocVars);
        if (!Lit3.match(objGenerateTemporaries, objArrAllocVars2, 0)) {
            return syntax_case.error("syntax-case", objGenerateTemporaries);
        }
        return Lit4.execute(objArrAllocVars2, TemplateScope.make());
    }

    @Override // gnu.expr.ModuleBody
    public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 3) {
            callContext.value1 = obj;
            if (!(obj2 instanceof LList)) {
                return -786430;
            }
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 4) {
            if (LangObjType.coerceToClassTypeOrNull(obj) == null) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 6) {
            if (LangObjType.coerceToClassTypeOrNull(obj) == null) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 7) {
            if (LangObjType.coerceToClassTypeOrNull(obj) == null) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i != 13) {
            return super.match2(moduleMethod, obj, obj2, callContext);
        }
        if (LangObjType.coerceToTypeOrNull(obj) == null) {
            return -786431;
        }
        callContext.value1 = obj;
        if (LangObjType.coerceToTypeOrNull(obj2) == null) {
            return -786430;
        }
        callContext.value2 = obj2;
        callContext.proc = moduleMethod;
        callContext.pc = 2;
        return 0;
    }

    public static ClassType makeRecordType(String str, LList lList) {
        return Record.makeRecordType(str, lList);
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
            if (LangObjType.coerceToClassTypeOrNull(obj) == null) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        switch (i) {
            case 8:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 9:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 10:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 11:
                if (LangObjType.coerceToClassTypeOrNull(obj) == null) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 12:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            default:
                return super.match1(moduleMethod, obj, callContext);
        }
    }

    public static RecordConstructor recordConstructor(ClassType classType, Object obj) {
        return new RecordConstructor(classType, obj);
    }

    public static GetFieldProc recordAccessor(ClassType classType, String str) {
        return new GetFieldProc(classType, str);
    }

    public static SetFieldProc recordModifier(ClassType classType, String str) {
        return new SetFieldProc(classType, str);
    }

    public static boolean isRecord(Object obj) {
        return obj instanceof Record;
    }

    public class frame extends ModuleBody {
        final ModuleMethod lambda$Fn1;
        Object rtype;

        public frame() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 1, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/kawa/lib/reflection.scm:30");
            this.lambda$Fn1 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 1 ? lambda1(obj) ? Boolean.TRUE : Boolean.FALSE : super.apply1(moduleMethod, obj);
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

        public boolean lambda1(Object obj) {
            Object obj2 = this.rtype;
            try {
                return ((Type) obj2).isInstance(obj);
            } catch (ClassCastException e) {
                throw new WrongType(e, "gnu.bytecode.Type.isInstance(java.lang.Object)", 1, obj2);
            }
        }
    }

    public static Procedure recordPredicate(Object obj) {
        frame frameVar = new frame();
        frameVar.rtype = obj;
        return frameVar.lambda$Fn1;
    }

    public static Type recordTypeDescriptor(Object obj) {
        return Type.make(obj.getClass());
    }

    public static String recordTypeName(ClassType classType) {
        return Compilation.demangleName(classType.getName(), true);
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) {
        int i = moduleMethod.selector;
        if (i == 2) {
            return lambda2(obj);
        }
        if (i == 4) {
            try {
                return recordConstructor(LangObjType.coerceToClassType(obj));
            } catch (ClassCastException e) {
                throw new WrongType(e, "record-constructor", 1, obj);
            }
        }
        switch (i) {
            case 8:
                return isRecord(obj) ? Boolean.TRUE : Boolean.FALSE;
            case 9:
                return recordPredicate(obj);
            case 10:
                return recordTypeDescriptor(obj);
            case 11:
                try {
                    return recordTypeName(LangObjType.coerceToClassType(obj));
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "record-type-name", 1, obj);
                }
            case 12:
                return recordTypeFieldNames(obj);
            default:
                return super.apply1(moduleMethod, obj);
        }
    }

    public static LList recordTypeFieldNames(Object obj) {
        try {
            return Record.typeFieldNames(LangObjType.coerceToClassType(obj));
        } catch (ClassCastException e) {
            throw new WrongType(e, "kawa.lang.Record.typeFieldNames(class-type)", 1, obj);
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
        int i = moduleMethod.selector;
        if (i == 3) {
            try {
                return makeRecordType(obj != null ? obj.toString() : null, (LList) obj2);
            } catch (ClassCastException e) {
                throw new WrongType(e, "make-record-type", 2, obj2);
            }
        }
        if (i == 4) {
            try {
                return recordConstructor(LangObjType.coerceToClassType(obj), obj2);
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "record-constructor", 1, obj);
            }
        }
        if (i == 6) {
            try {
                return recordAccessor(LangObjType.coerceToClassType(obj), obj2 != null ? obj2.toString() : null);
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "record-accessor", 1, obj);
            }
        }
        if (i == 7) {
            try {
                return recordModifier(LangObjType.coerceToClassType(obj), obj2 != null ? obj2.toString() : null);
            } catch (ClassCastException e4) {
                throw new WrongType(e4, "record-modifier", 1, obj);
            }
        }
        if (i != 13) {
            return super.apply2(moduleMethod, obj, obj2);
        }
        try {
            try {
                return isSubtype(LangObjType.coerceToType(obj), LangObjType.coerceToType(obj2)) ? Boolean.TRUE : Boolean.FALSE;
            } catch (ClassCastException e5) {
                throw new WrongType(e5, "subtype?", 2, obj2);
            }
        } catch (ClassCastException e6) {
            throw new WrongType(e6, "subtype?", 1, obj);
        }
    }

    public static boolean isSubtype(Type type, Type type2) {
        return type.isSubtype(type2);
    }
}
