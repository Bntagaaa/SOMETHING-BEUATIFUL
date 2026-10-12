package gnu.kawa.slib;

import androidx.fragment.app.FragmentTransaction;
import com.google.youngandroid.a;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.kawa.functions.GetNamedPart;
import gnu.kawa.lispexpr.LispLanguage;
import gnu.lists.Consumer;
import gnu.lists.LList;
import gnu.lists.PairWithPosition;
import gnu.mapping.CallContext;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Values;
import kawa.lang.Macro;
import kawa.lang.SyntaxPattern;
import kawa.lang.SyntaxRule;
import kawa.lang.SyntaxRules;
import kawa.standard.Scheme;

/* loaded from: classes2.dex */
public class srfi34 extends ModuleBody {
    public static final Class $Prvt$$Lsraise$Mnobject$Mnexception$Gr;
    public static final Macro $Prvt$guard$Mnaux;
    public static final srfi34 $instance;
    static final SimpleSymbol Lit0;
    static final SimpleSymbol Lit1;
    static final SimpleSymbol Lit10;
    static final SimpleSymbol Lit11;
    static final SimpleSymbol Lit12;
    static final SimpleSymbol Lit13;
    static final SimpleSymbol Lit2;
    static final SyntaxRules Lit3;
    static final SimpleSymbol Lit4;
    static final SyntaxRules Lit5;
    static final SimpleSymbol Lit6;
    static final SimpleSymbol Lit7;
    static final SimpleSymbol Lit8;
    static final SimpleSymbol Lit9;
    public static final Macro guard;
    public static final ModuleMethod raise;
    public static final ModuleMethod with$Mnexception$Mnhandler;

    public srfi34() {
        ModuleInfo.register(this);
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext callContext) {
        Consumer consumer = callContext.consumer;
    }

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("<raise-object-exception>");
        Lit13 = simpleSymbol;
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f("ex");
        Lit12 = simpleSymbol2;
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) a.f("begin");
        Lit11 = simpleSymbol3;
        SimpleSymbol simpleSymbol4 = (SimpleSymbol) a.f("if");
        Lit10 = simpleSymbol4;
        SimpleSymbol simpleSymbol5 = (SimpleSymbol) a.f("let");
        Lit9 = simpleSymbol5;
        SimpleSymbol simpleSymbol6 = (SimpleSymbol) a.f("temp");
        Lit8 = simpleSymbol6;
        SimpleSymbol simpleSymbol7 = (SimpleSymbol) a.f("=>");
        Lit7 = simpleSymbol7;
        SimpleSymbol simpleSymbol8 = (SimpleSymbol) a.f("else");
        Lit6 = simpleSymbol8;
        SimpleSymbol simpleSymbol9 = (SimpleSymbol) a.f("guard-aux");
        Lit4 = simpleSymbol9;
        Object[] objArr = {simpleSymbol9, simpleSymbol8, simpleSymbol7};
        SyntaxRule syntaxRule = new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007L\f\u0002\f\u000f\r\u0017\u0010\b\b\b", new Object[]{simpleSymbol8}, 3), "\u0001\u0001\u0003", "\u0011\u0018\u0004\t\u000b\b\u0015\u0013", new Object[]{simpleSymbol3}, 1);
        SyntaxPattern syntaxPattern = new SyntaxPattern("\f\u0018\f\u0007<\f\u000f\f\u0002\f\u0017\b\b", new Object[]{simpleSymbol7}, 3);
        LList lList = LList.Empty;
        SyntaxRules syntaxRules = new SyntaxRules(objArr, new SyntaxRule[]{syntaxRule, new SyntaxRule(syntaxPattern, "\u0001\u0001\u0001", "\u0011\u0018\u00041\b\u0011\u0018\f\b\u000b\b\u0011\u0018\u0014\u0011\u0018\f!\t\u0013\u0018\u001c\b\u0003", new Object[]{simpleSymbol5, simpleSymbol6, simpleSymbol4, PairWithPosition.make(simpleSymbol6, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm", 274452)}, 0), new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007<\f\u000f\f\u0002\f\u0017\b\f\u001f\r' \b\b", new Object[]{simpleSymbol7}, 5), "\u0001\u0001\u0001\u0001\u0003", "\u0011\u0018\u00041\b\u0011\u0018\f\b\u000b\b\u0011\u0018\u0014\u0011\u0018\f!\t\u0013\u0018\u001c\b\u0011\u0018$\t\u0003\t\u001b\b%#", new Object[]{simpleSymbol5, simpleSymbol6, simpleSymbol4, PairWithPosition.make(simpleSymbol6, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm", 294932), simpleSymbol9}, 1), new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\u001c\f\u000f\b\b", new Object[0], 2), "\u0001\u0001", "\u000b", new Object[0], 0), new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\u001c\f\u000f\b\f\u0017\r\u001f\u0018\b\b", new Object[0], 4), "\u0001\u0001\u0001\u0003", "\u0011\u0018\u00041\b\u0011\u0018\f\b\u000b\b\u0011\u0018\u0014\u0011\u0018\f\u0011\u0018\f\b\u0011\u0018\u001c\t\u0003\t\u0013\b\u001d\u001b", new Object[]{simpleSymbol5, simpleSymbol6, simpleSymbol4, simpleSymbol9}, 1), new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007L\f\u000f\f\u0017\r\u001f\u0018\b\b\b", new Object[0], 4), "\u0001\u0001\u0001\u0003", "\u0011\u0018\u0004\t\u000bA\u0011\u0018\f\t\u0013\b\u001d\u001b\b\u0003", new Object[]{simpleSymbol4, simpleSymbol3}, 1), new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007L\f\u000f\f\u0017\r\u001f\u0018\b\b\f'\r/(\b\b", new Object[0], 6), "\u0001\u0001\u0001\u0003\u0001\u0003", "\u0011\u0018\u0004\t\u000bA\u0011\u0018\f\t\u0013\b\u001d\u001b\b\u0011\u0018\u0014\t\u0003\t#\b-+", new Object[]{simpleSymbol4, simpleSymbol3, simpleSymbol9}, 1)}, 6);
        Lit5 = syntaxRules;
        SimpleSymbol simpleSymbol10 = (SimpleSymbol) a.f("guard");
        Lit2 = simpleSymbol10;
        SyntaxRules syntaxRules2 = new SyntaxRules(new Object[]{simpleSymbol10}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\u001c\f\u0007\u000b\u0013", new Object[0], 3), "\u0001\u0000\u0000", "\u0011\u0018\u0004!\u0011\u0018\f\u0012\b\u0011\u0018\u0014\u0011\u0018\u001c\b\u0011\u0018$)\b\t\u0003\u0018,\b\u0011\u00184\u0011\u0018<\n", new Object[]{(SimpleSymbol) a.f("try-catch"), simpleSymbol3, simpleSymbol2, (SimpleSymbol) a.f("<java.lang.Throwable>"), simpleSymbol5, PairWithPosition.make(PairWithPosition.make(simpleSymbol4, PairWithPosition.make(PairWithPosition.make((SimpleSymbol) a.f(GetNamedPart.INSTANCEOF_METHOD_NAME), PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm", 110614), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm", 110611), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm", 110600), PairWithPosition.make(PairWithPosition.make((SimpleSymbol) a.f("field"), PairWithPosition.make(PairWithPosition.make((SimpleSymbol) a.f("as"), PairWithPosition.make(simpleSymbol, PairWithPosition.make(simpleSymbol2, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm", 114732), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm", 114707), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm", 114703), PairWithPosition.make(PairWithPosition.make((SimpleSymbol) a.f(LispLanguage.quote_sym), PairWithPosition.make((SimpleSymbol) a.f("value"), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm", 114737), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm", 114737), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm", 114736), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm", 114703), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm", 114696), PairWithPosition.make(simpleSymbol2, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm", 118792), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm", 114696), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm", 110600), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm", 110596), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm", 110596), simpleSymbol9, PairWithPosition.make((SimpleSymbol) a.f("primitive-throw"), PairWithPosition.make(simpleSymbol2, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm", 122914), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm", 122897)}, 0)}, 3);
        Lit3 = syntaxRules2;
        SimpleSymbol simpleSymbol11 = (SimpleSymbol) a.f("raise");
        Lit1 = simpleSymbol11;
        SimpleSymbol simpleSymbol12 = (SimpleSymbol) a.f("with-exception-handler");
        Lit0 = simpleSymbol12;
        srfi34 srfi34Var = new srfi34();
        $instance = srfi34Var;
        $Prvt$$Lsraise$Mnobject$Mnexception$Gr = raise$Mnobject$Mnexception.class;
        with$Mnexception$Mnhandler = new ModuleMethod(srfi34Var, 1, simpleSymbol12, 8194);
        raise = new ModuleMethod(srfi34Var, 2, simpleSymbol11, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        guard = Macro.make(simpleSymbol10, syntaxRules2, srfi34Var);
        $Prvt$guard$Mnaux = Macro.make(simpleSymbol9, syntaxRules, srfi34Var);
        srfi34Var.run();
    }

    @Override // gnu.expr.ModuleBody
    public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
        return moduleMethod.selector == 1 ? withExceptionHandler(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
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

    public static Object withExceptionHandler(Object obj, Object obj2) {
        try {
            return Scheme.applyToArgs.apply1(obj2);
        } catch (raise$Mnobject$Mnexception e) {
            return Scheme.applyToArgs.apply2(obj, e.value);
        } catch (Throwable th) {
            return Scheme.applyToArgs.apply2(obj, th);
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) throws raise$Mnobject$Mnexception {
        if (moduleMethod.selector != 2) {
            return super.apply1(moduleMethod, obj);
        }
        raise(obj);
        return Values.empty;
    }

    @Override // gnu.expr.ModuleBody
    public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
        if (moduleMethod.selector != 2) {
            return super.match1(moduleMethod, obj, callContext);
        }
        callContext.value1 = obj;
        callContext.proc = moduleMethod;
        callContext.pc = 1;
        return 0;
    }

    public static void raise(Object obj) throws raise$Mnobject$Mnexception {
        throw new raise$Mnobject$Mnexception(obj);
    }
}
