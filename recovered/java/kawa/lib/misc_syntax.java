package kawa.lib;

import androidx.fragment.app.FragmentTransaction;
import com.google.youngandroid.a;
import gnu.expr.Compilation;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.kawa.functions.GetModuleClass;
import gnu.kawa.lispexpr.LispLanguage;
import gnu.kawa.reflect.StaticFieldLocation;
import gnu.lists.Consumer;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.lists.PairWithPosition;
import gnu.mapping.CallContext;
import gnu.mapping.InPort;
import gnu.mapping.Location;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Symbol;
import gnu.mapping.Values;
import gnu.mapping.WrongType;
import gnu.math.IntNum;
import gnu.text.Path;
import gnu.text.SyntaxException;
import java.io.IOException;
import kawa.lang.Macro;
import kawa.lang.Quote;
import kawa.lang.SyntaxForms;
import kawa.lang.SyntaxPattern;
import kawa.lang.SyntaxRule;
import kawa.lang.SyntaxRules;
import kawa.lang.SyntaxTemplate;
import kawa.lang.TemplateScope;
import kawa.standard.syntax_case;

/* loaded from: classes2.dex */
public class misc_syntax extends ModuleBody {
    public static final Location $Prvt$define$Mnconstant;
    public static final misc_syntax $instance;
    static final SimpleSymbol Lit0;
    static final SyntaxPattern Lit1;
    static final SimpleSymbol Lit10;
    static final SyntaxRules Lit11;
    static final SimpleSymbol Lit12;
    static final SyntaxPattern Lit13;
    static final SyntaxTemplate Lit14;
    static final SyntaxTemplate Lit15;
    static final SyntaxPattern Lit16;
    static final SyntaxTemplate Lit17;
    static final SimpleSymbol Lit18;
    static final SyntaxPattern Lit19;
    static final SyntaxTemplate Lit2;
    static final SyntaxTemplate Lit20;
    static final SyntaxTemplate Lit21;
    static final SyntaxTemplate Lit22;
    static final SimpleSymbol Lit23;
    static final SimpleSymbol Lit24;
    static final SimpleSymbol Lit25;
    static final SimpleSymbol Lit26;
    static final SimpleSymbol Lit27;
    static final SimpleSymbol Lit28;
    static final SimpleSymbol Lit29;
    static final SyntaxTemplate Lit3;
    static final SimpleSymbol Lit30;
    static final SimpleSymbol Lit31;
    static final SyntaxTemplate Lit4;
    static final SyntaxPattern Lit5;
    static final SimpleSymbol Lit6;
    static final SyntaxRules Lit7;
    static final SimpleSymbol Lit8;
    static final SyntaxPattern Lit9;
    public static final Macro include;
    public static final Macro include$Mnrelative;
    public static final Macro module$Mnuri;
    public static final Macro provide;
    public static final Macro resource$Mnurl;
    public static final Macro test$Mnbegin;

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("%test-begin");
        Lit31 = simpleSymbol;
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f(LispLanguage.quote_sym);
        Lit30 = simpleSymbol2;
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) a.f("require");
        Lit29 = simpleSymbol3;
        SimpleSymbol simpleSymbol4 = (SimpleSymbol) a.f("else");
        Lit28 = simpleSymbol4;
        SimpleSymbol simpleSymbol5 = (SimpleSymbol) a.f("cond-expand");
        Lit27 = simpleSymbol5;
        SimpleSymbol simpleSymbol6 = (SimpleSymbol) a.f("srfi-64");
        Lit26 = simpleSymbol6;
        SimpleSymbol simpleSymbol7 = (SimpleSymbol) a.f("begin");
        Lit25 = simpleSymbol7;
        SimpleSymbol simpleSymbol8 = (SimpleSymbol) a.f(LispLanguage.quasiquote_sym);
        Lit24 = simpleSymbol8;
        SimpleSymbol simpleSymbol9 = (SimpleSymbol) a.f("$lookup$");
        Lit23 = simpleSymbol9;
        Lit22 = new SyntaxTemplate("\u0001\u0001", "\u000b", new Object[0], 0);
        Lit21 = new SyntaxTemplate("\u0001\u0001", "\u000b", new Object[0], 0);
        Lit20 = new SyntaxTemplate("\u0001\u0001", "\b\u000b", new Object[0], 0);
        Lit19 = new SyntaxPattern("\f\u0007\f\u000f\b", new Object[0], 2);
        SimpleSymbol simpleSymbol10 = (SimpleSymbol) a.f("include-relative");
        Lit18 = simpleSymbol10;
        Lit17 = new SyntaxTemplate("\u0001\u0001\u0003", "\u0011\u0018\u0004\b\u0015\u0013", new Object[]{simpleSymbol7}, 1);
        Lit16 = new SyntaxPattern("\r\u0017\u0010\b\b", new Object[0], 3);
        Lit15 = new SyntaxTemplate("\u0001\u0001", "\u0003", new Object[0], 0);
        Lit14 = new SyntaxTemplate("\u0001\u0001", "\u000b", new Object[0], 0);
        Lit13 = new SyntaxPattern("\f\u0007\f\u000f\b", new Object[0], 2);
        SimpleSymbol simpleSymbol11 = (SimpleSymbol) a.f("include");
        Lit12 = simpleSymbol11;
        SimpleSymbol simpleSymbol12 = (SimpleSymbol) a.f("resource-url");
        Lit10 = simpleSymbol12;
        SyntaxPattern syntaxPattern = new SyntaxPattern("\f\u0018\f\u0007\b", new Object[0], 1);
        SimpleSymbol simpleSymbol13 = (SimpleSymbol) a.f("gnu.text.URLPath");
        SimpleSymbol simpleSymbol14 = (SimpleSymbol) a.f("valueOf");
        LList lList = LList.Empty;
        PairWithPosition pairWithPositionMake = PairWithPosition.make(simpleSymbol9, a.c(simpleSymbol14, lList, simpleSymbol8, lList, simpleSymbol13), "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 155655);
        SimpleSymbol simpleSymbol15 = (SimpleSymbol) a.f("module-uri");
        Lit8 = simpleSymbol15;
        SyntaxRules syntaxRules = new SyntaxRules(new Object[]{simpleSymbol12}, new SyntaxRule[]{new SyntaxRule(syntaxPattern, "\u0001", "\u0011\u0018\u0004\b\b\u0011\u0018\f\u0099\b\u0011\u0018\fa\b\u0011\u0018\f)\u0011\u0018\u0014\b\u0003\u0018\u001c\u0018$\u0018,", new Object[]{pairWithPositionMake, simpleSymbol9, PairWithPosition.make(simpleSymbol9, Pair.make(PairWithPosition.make(simpleSymbol15, lList, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 159755), Pair.make(Pair.make(simpleSymbol8, Pair.make((SimpleSymbol) a.f("resolve"), lList)), lList)), "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 159755), Pair.make(Pair.make(simpleSymbol8, Pair.make((SimpleSymbol) a.f("toURL"), lList)), lList), Pair.make(Pair.make(simpleSymbol8, Pair.make((SimpleSymbol) a.f("openConnection"), lList)), lList), Pair.make(Pair.make(simpleSymbol8, Pair.make((SimpleSymbol) a.f("getURL"), lList)), lList)}, 0)}, 1);
        Lit11 = syntaxRules;
        Lit9 = new SyntaxPattern("\f\u0007\b", new Object[0], 1);
        SimpleSymbol simpleSymbol16 = (SimpleSymbol) a.f("test-begin");
        Lit6 = simpleSymbol16;
        SyntaxPattern syntaxPattern2 = new SyntaxPattern("\f\u0018\f\u0007\b", new Object[0], 1);
        Values values = Values.empty;
        SyntaxRules syntaxRules2 = new SyntaxRules(new Object[]{simpleSymbol16}, new SyntaxRule[]{new SyntaxRule(syntaxPattern2, "\u0001", "\u0011\u0018\u0004\u0011\u0018\f\b\u0011\u0018\u0014\t\u0003\u0018\u001c", new Object[]{simpleSymbol7, PairWithPosition.make(simpleSymbol5, PairWithPosition.make(PairWithPosition.make(simpleSymbol6, PairWithPosition.make(values, lList, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 86046), "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 86037), PairWithPosition.make(PairWithPosition.make(simpleSymbol4, PairWithPosition.make(PairWithPosition.make(simpleSymbol3, PairWithPosition.make(PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol6, lList, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 86070), "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 86070), lList, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 86069), "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 86060), lList, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 86060), "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 86054), lList, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 86054), "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 86037), "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 86024), simpleSymbol, PairWithPosition.make(Boolean.FALSE, lList, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 90144)}, 0), new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\b", new Object[0], 2), "\u0001\u0001", "\u0011\u0018\u0004\u0011\u0018\f\b\u0011\u0018\u0014\t\u0003\b\u000b", new Object[]{simpleSymbol7, PairWithPosition.make(simpleSymbol5, PairWithPosition.make(PairWithPosition.make(simpleSymbol6, PairWithPosition.make(values, lList, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 102430), "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 102421), PairWithPosition.make(PairWithPosition.make(simpleSymbol4, PairWithPosition.make(PairWithPosition.make(simpleSymbol3, PairWithPosition.make(PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol6, lList, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 102454), "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 102454), lList, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 102453), "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 102444), lList, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 102444), "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 102438), lList, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 102438), "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 102421), "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 102408), simpleSymbol}, 0)}, 2);
        Lit7 = syntaxRules2;
        Lit5 = new SyntaxPattern("\f\u0007\u000b", new Object[0], 2);
        Lit4 = new SyntaxTemplate("\u0001\u0001\u0001", "\u0018\u0004", new Object[]{PairWithPosition.make((SimpleSymbol) a.f("::"), PairWithPosition.make((SimpleSymbol) a.f("<int>"), PairWithPosition.make(IntNum.make(123), lList, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 53270), "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 53264), "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 53260)}, 0);
        Lit3 = new SyntaxTemplate("\u0001\u0001\u0001", "\u0013", new Object[0], 0);
        Lit2 = new SyntaxTemplate("\u0001\u0001\u0001", "\u0018\u0004", new Object[]{(SimpleSymbol) a.f("define-constant")}, 0);
        Lit1 = new SyntaxPattern("\f\u0007,\f\u000f\f\u0017\b\b", new Object[0], 3);
        SimpleSymbol simpleSymbol17 = (SimpleSymbol) a.f("provide");
        Lit0 = simpleSymbol17;
        misc_syntax misc_syntaxVar = new misc_syntax();
        $instance = misc_syntaxVar;
        $Prvt$define$Mnconstant = StaticFieldLocation.make("kawa.lib.prim_syntax", "define$Mnconstant");
        provide = Macro.make(simpleSymbol17, new ModuleMethod(misc_syntaxVar, 1, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN), misc_syntaxVar);
        test$Mnbegin = Macro.make(simpleSymbol16, syntaxRules2, misc_syntaxVar);
        ModuleMethod moduleMethod = new ModuleMethod(misc_syntaxVar, 2, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm:29");
        module$Mnuri = Macro.make(simpleSymbol15, moduleMethod, misc_syntaxVar);
        resource$Mnurl = Macro.make(simpleSymbol12, syntaxRules, misc_syntaxVar);
        ModuleMethod moduleMethod2 = new ModuleMethod(misc_syntaxVar, 3, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod2.setProperty("source-location", "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm:54");
        include = Macro.make(simpleSymbol11, moduleMethod2, misc_syntaxVar);
        include$Mnrelative = Macro.make(simpleSymbol10, new ModuleMethod(misc_syntaxVar, 4, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN), misc_syntaxVar);
        misc_syntaxVar.run();
    }

    public misc_syntax() {
        ModuleInfo.register(this);
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext callContext) {
        Consumer consumer = callContext.consumer;
    }

    public static Object lambda1(Object obj) {
        Object[] objArrAllocVars = SyntaxPattern.allocVars(3, null);
        if (Lit1.match(obj, objArrAllocVars, 0)) {
            Object objExecute = Lit2.execute(objArrAllocVars, TemplateScope.make());
            Object objQuote = Quote.quote(Lit3.execute(objArrAllocVars, TemplateScope.make()));
            try {
                return lists.cons(objExecute, lists.cons(SyntaxForms.makeWithTemplate(obj, misc.string$To$Symbol(strings.stringAppend("%provide%", ((Symbol) objQuote).toString()))), Lit4.execute(objArrAllocVars, TemplateScope.make())));
            } catch (ClassCastException e) {
                throw new WrongType(e, "symbol->string", 1, objQuote);
            }
        }
        if (Lit5.match(obj, objArrAllocVars, 0)) {
            return prim_syntax.syntaxError(obj, "provide requires a quoted feature-name" instanceof Object[] ? (Object[]) "provide requires a quoted feature-name" : new Object[]{"provide requires a quoted feature-name"});
        }
        return syntax_case.error("syntax-case", obj);
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
        if (i == 3) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i != 4) {
            return super.match1(moduleMethod, obj, callContext);
        }
        callContext.value1 = obj;
        callContext.proc = moduleMethod;
        callContext.pc = 1;
        return 0;
    }

    public static Object lambda2(Object obj) {
        return Lit9.match(obj, SyntaxPattern.allocVars(1, null), 0) ? GetModuleClass.getModuleClassURI(Compilation.getCurrent()) : syntax_case.error("syntax-case", obj);
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) {
        int i = moduleMethod.selector;
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? super.apply1(moduleMethod, obj) : lambda5(obj) : lambda3(obj) : lambda2(obj) : lambda1(obj);
    }

    public class frame extends ModuleBody {
        Object k;
        InPort p;

        public Object lambda4f() throws SyntaxException, IOException {
            Object obj = ports.read(this.p);
            if (ports.isEofObject(obj)) {
                ports.closeInputPort(this.p);
                return LList.Empty;
            }
            return new Pair(SyntaxForms.makeWithTemplate(this.k, obj), lambda4f());
        }
    }

    public static Object lambda3(Object obj) throws SyntaxException, IOException {
        Object[] objArrAllocVars = SyntaxPattern.allocVars(2, null);
        if (Lit13.match(obj, objArrAllocVars, 0)) {
            Object objQuote = Quote.quote(Lit14.execute(objArrAllocVars, TemplateScope.make()));
            Object objExecute = Lit15.execute(objArrAllocVars, TemplateScope.make());
            frame frameVar = new frame();
            frameVar.k = objExecute;
            try {
                frameVar.p = ports.openInputFile(Path.valueOf(objQuote));
                Object objLambda4f = frameVar.lambda4f();
                Object[] objArrAllocVars2 = SyntaxPattern.allocVars(3, objArrAllocVars);
                if (!Lit16.match(objLambda4f, objArrAllocVars2, 0)) {
                    return syntax_case.error("syntax-case", objLambda4f);
                }
                return Lit17.execute(objArrAllocVars2, TemplateScope.make());
            } catch (ClassCastException e) {
                throw new WrongType(e, "open-input-file", 1, objQuote);
            }
        }
        return syntax_case.error("syntax-case", obj);
    }

    public static Object lambda5(Object obj) {
        Object[] objArrAllocVars = SyntaxPattern.allocVars(2, null);
        if (Lit19.match(obj, objArrAllocVars, 0)) {
            Object objQuote = Quote.quote(Lit20.execute(objArrAllocVars, TemplateScope.make()));
            try {
                PairWithPosition pairWithPosition = (PairWithPosition) objQuote;
                Path pathValueOf = Path.valueOf(pairWithPosition.getFileName());
                String string = pairWithPosition.getCar().toString();
                return LList.list2(SyntaxForms.makeWithTemplate(Lit21.execute(objArrAllocVars, TemplateScope.make()), Lit12), SyntaxForms.makeWithTemplate(Lit22.execute(objArrAllocVars, TemplateScope.make()), pathValueOf.resolve(string).toString()));
            } catch (ClassCastException e) {
                throw new WrongType(e, "path-pair", -2, objQuote);
            }
        }
        return syntax_case.error("syntax-case", obj);
    }
}
