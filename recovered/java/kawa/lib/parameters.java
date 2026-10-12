package kawa.lib;

import androidx.fragment.app.FragmentTransaction;
import com.google.youngandroid.a;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.kawa.lispexpr.LispLanguage;
import gnu.lists.Consumer;
import gnu.lists.LList;
import gnu.lists.PairWithPosition;
import gnu.mapping.CallContext;
import gnu.mapping.Location;
import gnu.mapping.LocationProc;
import gnu.mapping.Procedure;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.ThreadLocation;
import gnu.mapping.WrongType;
import kawa.lang.Macro;
import kawa.lang.SyntaxPattern;
import kawa.lang.SyntaxRule;
import kawa.lang.SyntaxRules;
import kawa.standard.Scheme;

/* loaded from: classes2.dex */
public class parameters extends ModuleBody {
    public static final ModuleMethod $Prvt$as$Mnlocation$Pc;
    public static final Macro $Prvt$parameterize$Pc;
    public static final parameters $instance;
    static final SimpleSymbol Lit0;
    static final SimpleSymbol Lit1;
    static final SimpleSymbol Lit10;
    static final SimpleSymbol Lit11;
    static final SimpleSymbol Lit12;
    static final SimpleSymbol Lit2;
    static final SyntaxRules Lit3;
    static final SimpleSymbol Lit4;
    static final SyntaxRules Lit5;
    static final SimpleSymbol Lit6;
    static final SimpleSymbol Lit7;
    static final SimpleSymbol Lit8;
    static final SimpleSymbol Lit9;
    public static final ModuleMethod make$Mnparameter;
    public static final Macro parameterize;

    public parameters() {
        ModuleInfo.register(this);
    }

    public static LocationProc makeParameter(Object obj) {
        return makeParameter(obj, null);
    }

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("save");
        Lit12 = simpleSymbol;
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f(LispLanguage.quasiquote_sym);
        Lit11 = simpleSymbol2;
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) a.f("gnu.mapping.Location");
        Lit10 = simpleSymbol3;
        SimpleSymbol simpleSymbol4 = (SimpleSymbol) a.f("$lookup$");
        Lit9 = simpleSymbol4;
        SimpleSymbol simpleSymbol5 = (SimpleSymbol) a.f("v");
        Lit8 = simpleSymbol5;
        SimpleSymbol simpleSymbol6 = (SimpleSymbol) a.f("p");
        Lit7 = simpleSymbol6;
        SimpleSymbol simpleSymbol7 = (SimpleSymbol) a.f("begin");
        Lit6 = simpleSymbol7;
        SimpleSymbol simpleSymbol8 = (SimpleSymbol) a.f("parameterize");
        Lit4 = simpleSymbol8;
        SyntaxRule syntaxRule = new SyntaxRule(new SyntaxPattern("\f\u0018\f\b\u0003", new Object[0], 1), "\u0000", "\u0011\u0018\u0004\u0002", new Object[]{simpleSymbol7}, 0);
        SyntaxPattern syntaxPattern = new SyntaxPattern("\f\u0018<,\f\u0007\f\u000f\b\u0013\u001b", new Object[0], 4);
        SimpleSymbol simpleSymbol9 = (SimpleSymbol) a.f("parameterize%");
        Lit2 = simpleSymbol9;
        SyntaxRules syntaxRules = new SyntaxRules(new Object[]{simpleSymbol8}, new SyntaxRule[]{syntaxRule, new SyntaxRule(syntaxPattern, "\u0001\u0001\u0000\u0000", "\u0011\u0018\u00041!\t\u0003\b\u000b\u0012\t\u0010\u001a", new Object[]{simpleSymbol9}, 0)}, 4);
        Lit5 = syntaxRules;
        SyntaxRule syntaxRule2 = new SyntaxRule(new SyntaxPattern("\f\u0018\f\b\f\u0007\u000b", new Object[0], 2), "\u0001\u0000", "\u0011\u0018\u0004!\u0011\u0018\f\n\b\u0011\u0018\f\u0003", new Object[]{(SimpleSymbol) a.f("try-finally"), simpleSymbol7}, 0);
        SyntaxPattern syntaxPattern2 = new SyntaxPattern("\f\u0018<,\f\u0007\f\u000f\b\u0013\f\u001f#", new Object[0], 5);
        SimpleSymbol simpleSymbol10 = (SimpleSymbol) a.f("let*");
        SimpleSymbol simpleSymbol11 = (SimpleSymbol) a.f("::");
        SimpleSymbol simpleSymbol12 = (SimpleSymbol) a.f("<gnu.mapping.Location>");
        SimpleSymbol simpleSymbol13 = (SimpleSymbol) a.f("as-location%");
        Lit1 = simpleSymbol13;
        SimpleSymbol simpleSymbol14 = (SimpleSymbol) a.f("setWithSave");
        LList lList = LList.Empty;
        SyntaxRules syntaxRules2 = new SyntaxRules(new Object[]{simpleSymbol9}, new SyntaxRule[]{syntaxRule2, new SyntaxRule(syntaxPattern2, "\u0001\u0001\u0000\u0001\u0000", "\u0011\u0018\u0004Áy\u0011\u0018\f\u0011\u0018\u0014\u0011\u0018\u001c\b\u0011\u0018$\b\u0003)\u0011\u0018,\b\u000b\u00184\b\u0011\u0018<\t\u0012!\u0011\u0018D\u001b\"", new Object[]{simpleSymbol10, simpleSymbol6, simpleSymbol11, simpleSymbol12, simpleSymbol13, simpleSymbol5, PairWithPosition.make(PairWithPosition.make(simpleSymbol, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol4, a.c(simpleSymbol14, lList, simpleSymbol2, lList, simpleSymbol3), "/u2/home/jis/ai2-kawa/kawa/lib/parameters.scm", 122893), PairWithPosition.make(simpleSymbol6, PairWithPosition.make(simpleSymbol5, lList, "/u2/home/jis/ai2-kawa/kawa/lib/parameters.scm", 122928), "/u2/home/jis/ai2-kawa/kawa/lib/parameters.scm", 122926), "/u2/home/jis/ai2-kawa/kawa/lib/parameters.scm", 122892), lList, "/u2/home/jis/ai2-kawa/kawa/lib/parameters.scm", 122892), "/u2/home/jis/ai2-kawa/kawa/lib/parameters.scm", 122886), lList, "/u2/home/jis/ai2-kawa/kawa/lib/parameters.scm", 122886), simpleSymbol9, PairWithPosition.make(PairWithPosition.make(simpleSymbol4, a.c((SimpleSymbol) a.f("setRestore"), lList, simpleSymbol2, lList, simpleSymbol3), "/u2/home/jis/ai2-kawa/kawa/lib/parameters.scm", 131083), PairWithPosition.make(simpleSymbol6, PairWithPosition.make(simpleSymbol, lList, "/u2/home/jis/ai2-kawa/kawa/lib/parameters.scm", 131117), "/u2/home/jis/ai2-kawa/kawa/lib/parameters.scm", 131115), "/u2/home/jis/ai2-kawa/kawa/lib/parameters.scm", 131082)}, 0)}, 5);
        Lit3 = syntaxRules2;
        SimpleSymbol simpleSymbol15 = (SimpleSymbol) a.f("make-parameter");
        Lit0 = simpleSymbol15;
        parameters parametersVar = new parameters();
        $instance = parametersVar;
        make$Mnparameter = new ModuleMethod(parametersVar, 1, simpleSymbol15, 8193);
        $Prvt$as$Mnlocation$Pc = new ModuleMethod(parametersVar, 3, simpleSymbol13, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        $Prvt$parameterize$Pc = Macro.make(simpleSymbol9, syntaxRules2, parametersVar);
        parameterize = Macro.make(simpleSymbol8, syntaxRules, parametersVar);
        parametersVar.run();
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext callContext) {
        Consumer consumer = callContext.consumer;
    }

    @Override // gnu.expr.ModuleBody
    public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
        return moduleMethod.selector == 1 ? makeParameter(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
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
        if (i != 3) {
            return super.match1(moduleMethod, obj, callContext);
        }
        callContext.value1 = obj;
        callContext.proc = moduleMethod;
        callContext.pc = 1;
        return 0;
    }

    @Override // gnu.expr.ModuleBody
    public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
        if (moduleMethod.selector != 1) {
            return super.match2(moduleMethod, obj, obj2, callContext);
        }
        callContext.value1 = obj;
        callContext.value2 = obj2;
        callContext.proc = moduleMethod;
        callContext.pc = 2;
        return 0;
    }

    public static LocationProc makeParameter(Object obj, Object obj2) throws Throwable {
        if (obj2 != null) {
            obj = Scheme.applyToArgs.apply2(obj2, obj);
        }
        ThreadLocation threadLocation = new ThreadLocation();
        threadLocation.setGlobal(obj);
        try {
            return new LocationProc(threadLocation, (Procedure) obj2);
        } catch (ClassCastException e) {
            throw new WrongType(e, "gnu.mapping.LocationProc.<init>(gnu.mapping.Location,gnu.mapping.Procedure)", 2, obj2);
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) {
        int i = moduleMethod.selector;
        if (i != 1) {
            return i != 3 ? super.apply1(moduleMethod, obj) : asLocation$Pc(obj);
        }
        return makeParameter(obj);
    }

    public static Location asLocation$Pc(Object obj) {
        Location location;
        if (obj instanceof LocationProc) {
            try {
                location = ((LocationProc) obj).getLocation();
            } catch (ClassCastException e) {
                throw new WrongType(e, "gnu.mapping.LocationProc.getLocation()", 1, obj);
            }
        } else {
            location = (Location) obj;
        }
        if (!(location instanceof ThreadLocation)) {
            return location;
        }
        try {
            return ((ThreadLocation) location).getLocation();
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "gnu.mapping.ThreadLocation.getLocation()", 1, location);
        }
    }
}
