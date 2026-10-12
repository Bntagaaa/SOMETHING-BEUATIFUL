package gnu.kawa.slib;

import androidx.fragment.app.FragmentTransaction;
import com.google.youngandroid.a;
import gnu.expr.Keyword;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.kawa.functions.Apply;
import gnu.kawa.lispexpr.LispLanguage;
import gnu.lists.Consumer;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.lists.PairWithPosition;
import gnu.mapping.CallContext;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Symbol;
import gnu.mapping.WrongType;
import kawa.lang.Macro;
import kawa.lang.Quote;
import kawa.lang.SyntaxForms;
import kawa.lang.SyntaxPattern;
import kawa.lang.SyntaxTemplate;
import kawa.lang.TemplateScope;
import kawa.lib.lists;
import kawa.lib.misc;
import kawa.lib.prim_syntax;
import kawa.lib.std_syntax;
import kawa.lib.strings;
import kawa.standard.Scheme;
import kawa.standard.syntax_case;

/* loaded from: classes2.dex */
public class enums extends ModuleBody {
    public static final Macro $Prvt$$Pcdefine$Mnenum;
    public static final enums $instance;
    static final PairWithPosition Lit0;
    static final PairWithPosition Lit1;
    static final PairWithPosition Lit10;
    static final SimpleSymbol Lit11;
    static final SyntaxPattern Lit12;
    static final SyntaxTemplate Lit13;
    static final SyntaxTemplate Lit14;
    static final SyntaxPattern Lit15;
    static final SyntaxTemplate Lit16;
    static final SyntaxPattern Lit17;
    static final SyntaxPattern Lit18;
    static final SyntaxPattern Lit19;
    static final PairWithPosition Lit2;
    static final SyntaxTemplate Lit20;
    static final SimpleSymbol Lit21;
    static final SyntaxPattern Lit22;
    static final SyntaxTemplate Lit23;
    static final SimpleSymbol Lit24;
    static final SyntaxTemplate Lit25;
    static final SyntaxTemplate Lit26;
    static final SyntaxTemplate Lit27;
    static final SyntaxTemplate Lit28;
    static final SyntaxTemplate Lit29;
    static final PairWithPosition Lit3;
    static final SyntaxTemplate Lit30;
    static final SyntaxTemplate Lit31;
    static final SyntaxTemplate Lit32;
    static final SyntaxTemplate Lit33;
    static final SyntaxTemplate Lit34;
    static final SyntaxTemplate Lit35;
    static final SyntaxTemplate Lit36;
    static final SyntaxTemplate Lit37;
    static final SyntaxTemplate Lit38;
    static final SyntaxTemplate Lit39;
    static final PairWithPosition Lit4;
    static final SimpleSymbol Lit40;
    static final SimpleSymbol Lit41;
    static final SimpleSymbol Lit42;
    static final SimpleSymbol Lit43;
    static final SimpleSymbol Lit44;
    static final SimpleSymbol Lit45;
    static final Keyword Lit46;
    static final SimpleSymbol Lit47;
    static final Keyword Lit48;
    static final SimpleSymbol Lit49;
    static final PairWithPosition Lit5;
    static final SimpleSymbol Lit50;
    static final SimpleSymbol Lit51;
    static final SimpleSymbol Lit52;
    static final SimpleSymbol Lit53;
    static final PairWithPosition Lit6;
    static final PairWithPosition Lit7;
    static final PairWithPosition Lit8;
    static final PairWithPosition Lit9;
    public static final Macro define$Mnenum;

    public enums() {
        ModuleInfo.register(this);
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) {
        int i = moduleMethod.selector;
        return i != 1 ? i != 2 ? super.apply1(moduleMethod, obj) : lambda2(obj) : lambda1(obj);
    }

    @Override // gnu.expr.ModuleBody
    public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i != 1 && i != 2) {
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

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("final");
        Lit53 = simpleSymbol;
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f("enum");
        Lit52 = simpleSymbol2;
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) a.f("num");
        Lit51 = simpleSymbol3;
        SimpleSymbol simpleSymbol4 = (SimpleSymbol) a.f("str");
        Lit50 = simpleSymbol4;
        SimpleSymbol simpleSymbol5 = (SimpleSymbol) a.f("*init*");
        Lit49 = simpleSymbol5;
        Keyword keywordMake = Keyword.make("access");
        Lit48 = keywordMake;
        SimpleSymbol simpleSymbol6 = (SimpleSymbol) a.f("String");
        Lit47 = simpleSymbol6;
        Keyword keywordMake2 = Keyword.make("allocation");
        Lit46 = keywordMake2;
        SimpleSymbol simpleSymbol7 = (SimpleSymbol) a.f("static");
        Lit45 = simpleSymbol7;
        SimpleSymbol simpleSymbol8 = (SimpleSymbol) a.f("java.lang.Enum");
        Lit44 = simpleSymbol8;
        SimpleSymbol simpleSymbol9 = (SimpleSymbol) a.f(LispLanguage.quote_sym);
        Lit43 = simpleSymbol9;
        SimpleSymbol simpleSymbol10 = (SimpleSymbol) a.f("::");
        Lit42 = simpleSymbol10;
        SimpleSymbol simpleSymbol11 = (SimpleSymbol) a.f("s");
        Lit41 = simpleSymbol11;
        SimpleSymbol simpleSymbol12 = (SimpleSymbol) a.f("valueOf");
        Lit40 = simpleSymbol12;
        Lit39 = new SyntaxTemplate("\u0001\u0001\u0001\u0003\u0003", "\u0010", new Object[0], 0);
        Lit38 = new SyntaxTemplate("\u0001\u0001\u0001\u0003\u0003", "\u0010", new Object[0], 0);
        LList lList = LList.Empty;
        Lit37 = new SyntaxTemplate("\u0001\u0001\u0001\u0003\u0003", "\u0018\u0004", new Object[]{PairWithPosition.make(simpleSymbol11, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 290882)}, 0);
        Lit36 = new SyntaxTemplate("\u0001\u0001\u0001\u0003\u0003", "\u0018\u0004", new Object[]{PairWithPosition.make((SimpleSymbol) a.f("$lookup$"), a.c(simpleSymbol12, lList, (SimpleSymbol) a.f(LispLanguage.quasiquote_sym), lList, simpleSymbol8), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 290823)}, 0);
        Lit35 = new SyntaxTemplate("\u0001\u0001\u0001\u0003\u0003", "\u0018\u0004", new Object[]{PairWithPosition.make(simpleSymbol9, PairWithPosition.make(simpleSymbol7, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 286739), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 286739)}, 0);
        Lit34 = new SyntaxTemplate("\u0001\u0001\u0001\u0003\u0003", "\u0018\u0004", new Object[]{PairWithPosition.make(keywordMake2, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 286726)}, 0);
        Lit33 = new SyntaxTemplate("\u0001\u0001\u0001\u0003\u0003", "\u0018\u0004", new Object[]{PairWithPosition.make(simpleSymbol10, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 282649)}, 0);
        Lit32 = new SyntaxTemplate("\u0001\u0001\u0001\u0003\u0003", "\u0018\u0004", new Object[]{PairWithPosition.make(simpleSymbol12, PairWithPosition.make(simpleSymbol11, PairWithPosition.make(simpleSymbol10, PairWithPosition.make(simpleSymbol6, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 282642), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 282640), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 282639), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 282630)}, 0);
        Lit31 = new SyntaxTemplate("\u0001\u0001\u0001\u0003\u0003", "\u0018\u0004", new Object[]{PairWithPosition.make(simpleSymbol9, PairWithPosition.make(PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 266284), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 266278), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 266278), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 266278)}, 0);
        Lit30 = new SyntaxTemplate("\u0001\u0001\u0001\u0003\u0003", "\u0018\u0004", new Object[]{PairWithPosition.make(keywordMake, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 266269)}, 0);
        Lit29 = new SyntaxTemplate("\u0001\u0001\u0001\u0003\u0003", "\u0018\u0004", new Object[]{PairWithPosition.make(simpleSymbol8, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 266252)}, 0);
        Lit28 = new SyntaxTemplate("\u0001\u0001\u0001\u0003\u0003", "\u0018\u0004", new Object[]{PairWithPosition.make((SimpleSymbol) a.f("define-simple-class"), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 262154)}, 0);
        Lit27 = new SyntaxTemplate("\u0001\u0001\u0001\u0003\u0003", "\b%#", new Object[0], 1);
        Lit26 = new SyntaxTemplate("\u0001\u0001\u0001\u0003\u0003", "\u0013", new Object[0], 0);
        Lit25 = new SyntaxTemplate("\u0001\u0001\u0001\u0003\u0003", "\b\u001d\u001b", new Object[0], 1);
        Lit24 = (SimpleSymbol) a.f("[]");
        Lit23 = new SyntaxTemplate("\u0001\u0001\u0001\u0003\u0003", "\u000b", new Object[0], 0);
        Lit22 = new SyntaxPattern("\f\u0007\f\u000f\f\u0017,\r\u001f\u0018\b\b\r' \b\b", new Object[0], 5);
        SimpleSymbol simpleSymbol13 = (SimpleSymbol) a.f("%define-enum");
        Lit21 = simpleSymbol13;
        SimpleSymbol simpleSymbol14 = (SimpleSymbol) a.f("define-enum");
        Lit11 = simpleSymbol14;
        Lit20 = new SyntaxTemplate("\u0001\u0001\u0003", "\u0011\u0018\u0004\u0011\u0018\f\t\u000b\t\u0010\b\u0015\u0013", new Object[]{simpleSymbol14, "findkeywords"}, 1);
        Lit19 = new SyntaxPattern("\f\u0007\f\u000f\r\u0017\u0010\b\b", new Object[0], 3);
        Lit18 = new SyntaxPattern("\f\u0007\f\u000f\b", new Object[0], 2);
        Lit17 = new SyntaxPattern("\f\u0007\b", new Object[0], 1);
        Lit16 = new SyntaxTemplate("\u0001\u0001\u0003\u0003", "\u0011\u0018\u0004\t\u000b\u0019\b\u0015\u0013\b\u001d\u001b", new Object[]{simpleSymbol13}, 1);
        Lit15 = new SyntaxPattern("\f\u0007\f\u0002\f\u000f,\r\u0017\u0010\b\b\r\u001f\u0018\b\b", new Object[]{"findkeywords"}, 4);
        Lit14 = new SyntaxTemplate("\u0001\u0001\u0003\u0001\u0001\u0003", "\u0011\u0018\u0004\u0011\u0018\f\t\u000b9\t\u001b\t#\b\u0015\u0013\b-+", new Object[]{simpleSymbol14, "findkeywords"}, 1);
        Lit13 = new SyntaxTemplate("\u0001\u0001\u0003\u0001\u0001\u0003", "\u001b", new Object[0], 0);
        Lit12 = new SyntaxPattern("\f\u0007\f\u0002\f\u000f,\r\u0017\u0010\b\b\f\u001f\f'\r/(\b\b", new Object[]{"findkeywords"}, 6);
        Lit10 = PairWithPosition.make(simpleSymbol9, PairWithPosition.make(simpleSymbol7, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 127013), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 127013);
        Lit9 = PairWithPosition.make(keywordMake2, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 127000);
        Lit8 = PairWithPosition.make(simpleSymbol10, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 126990);
        Lit7 = PairWithPosition.make((SimpleSymbol) a.f("values"), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 126981);
        Lit6 = PairWithPosition.make(PairWithPosition.make(simpleSymbol5, PairWithPosition.make(PairWithPosition.make(simpleSymbol4, PairWithPosition.make(simpleSymbol10, PairWithPosition.make(simpleSymbol6, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 90133), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 90130), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 90125), PairWithPosition.make(PairWithPosition.make(simpleSymbol3, PairWithPosition.make(simpleSymbol10, PairWithPosition.make((SimpleSymbol) a.f("int"), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 90149), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 90146), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 90141), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 90141), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 90125), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 90117), PairWithPosition.make(keywordMake, PairWithPosition.make(PairWithPosition.make(simpleSymbol9, PairWithPosition.make((SimpleSymbol) a.f("private"), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 94222), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 94222), PairWithPosition.make(PairWithPosition.make((SimpleSymbol) a.f("invoke-special"), PairWithPosition.make(simpleSymbol8, PairWithPosition.make(PairWithPosition.make((SimpleSymbol) a.f("this"), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 98340), PairWithPosition.make(PairWithPosition.make(simpleSymbol9, PairWithPosition.make(simpleSymbol5, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 98348), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 98348), PairWithPosition.make(simpleSymbol4, PairWithPosition.make(simpleSymbol3, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 98359), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 98355), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 98347), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 98340), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 98325), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 98309), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 98309), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 94221), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 94213), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 90116);
        Lit5 = PairWithPosition.make(Keyword.make("init"), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 73741);
        Lit4 = PairWithPosition.make(simpleSymbol9, PairWithPosition.make(PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 69680), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 69674), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 69674), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 69674);
        Lit3 = PairWithPosition.make(keywordMake, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 69665);
        Lit2 = PairWithPosition.make(simpleSymbol9, PairWithPosition.make(simpleSymbol7, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 69658), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 69658);
        Lit1 = PairWithPosition.make(keywordMake2, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 69645);
        Lit0 = PairWithPosition.make(simpleSymbol10, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm", 65549);
        enums enumsVar = new enums();
        $instance = enumsVar;
        define$Mnenum = Macro.make(simpleSymbol14, new ModuleMethod(enumsVar, 1, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN), enumsVar);
        $Prvt$$Pcdefine$Mnenum = Macro.make(simpleSymbol13, new ModuleMethod(enumsVar, 2, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN), enumsVar);
        enumsVar.run();
    }

    public static SimpleSymbol symbolAppend$V(Object[] objArr) throws Throwable {
        Object objMakeList = LList.makeList(objArr, 0);
        Apply apply = Scheme.apply;
        ModuleMethod moduleMethod = strings.string$Mnappend;
        Object objMake = LList.Empty;
        while (objMakeList != LList.Empty) {
            try {
                Pair pair = (Pair) objMakeList;
                Object cdr = pair.getCdr();
                Object car = pair.getCar();
                try {
                    objMake = Pair.make(((Symbol) car).toString(), objMake);
                    objMakeList = cdr;
                } catch (ClassCastException e) {
                    throw new WrongType(e, "symbol->string", 1, car);
                }
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "arg0", -2, objMakeList);
            }
        }
        Object objApply2 = apply.apply2(moduleMethod, LList.reverseInPlace(objMake));
        try {
            return misc.string$To$Symbol((CharSequence) objApply2);
        } catch (ClassCastException e3) {
            throw new WrongType(e3, "string->symbol", 1, objApply2);
        }
    }

    public static Object makeFieldDesc(Symbol symbol, Symbol symbol2, int i) {
        PairWithPosition pairWithPosition = Lit2;
        PairWithPosition pairWithPosition2 = Lit4;
        String string = symbol2.toString();
        Integer numValueOf = Integer.valueOf(i);
        LList lList = LList.Empty;
        return LList.consX(new Object[]{symbol2, Quote.append$V(new Object[]{Lit0, LList.consX(new Object[]{symbol, Quote.append$V(new Object[]{Lit1, Pair.make(pairWithPosition, Quote.append$V(new Object[]{Lit3, Pair.make(pairWithPosition2, Quote.append$V(new Object[]{Lit5, Pair.make(LList.consX(new Object[]{symbol, LList.consX(new Object[]{string, LList.consX(new Object[]{numValueOf, lList})})}), lList)}))}))})})})});
    }

    public static PairWithPosition makeInit() {
        return Lit6;
    }

    public static Pair makeValues(Symbol symbol, LList lList) {
        PairWithPosition pairWithPosition = Lit7;
        PairWithPosition pairWithPosition2 = Lit10;
        LList lList2 = LList.Empty;
        return Pair.make(pairWithPosition, Quote.append$V(new Object[]{Lit8, LList.consX(new Object[]{symbol, Quote.append$V(new Object[]{Lit9, Pair.make(pairWithPosition2, Pair.make(LList.consX(new Object[]{symbol, Quote.append$V(new Object[]{lList, lList2})}), lList2))})})}));
    }

    public static Object lambda1(Object obj) {
        Object[] objArrAllocVars = SyntaxPattern.allocVars(6, null);
        if (Lit12.match(obj, objArrAllocVars, 0) && std_syntax.isIdentifier(Lit13.execute(objArrAllocVars, TemplateScope.make()))) {
            return Lit14.execute(objArrAllocVars, TemplateScope.make());
        }
        if (Lit15.match(obj, objArrAllocVars, 0)) {
            return Lit16.execute(objArrAllocVars, TemplateScope.make());
        }
        if (Lit17.match(obj, objArrAllocVars, 0)) {
            return prim_syntax.syntaxError(obj, "no enum type name given" instanceof Object[] ? (Object[]) "no enum type name given" : new Object[]{"no enum type name given"});
        }
        if (Lit18.match(obj, objArrAllocVars, 0)) {
            return prim_syntax.syntaxError(obj, "no enum constants given" instanceof Object[] ? (Object[]) "no enum constants given" : new Object[]{"no enum constants given"});
        }
        return Lit19.match(obj, objArrAllocVars, 0) ? Lit20.execute(objArrAllocVars, TemplateScope.make()) : syntax_case.error("syntax-case", obj);
    }

    public static LList mapNames(Symbol symbol, LList lList, int i) throws Throwable {
        if (lists.isNull(lList)) {
            return LList.Empty;
        }
        Object objApply1 = lists.car.apply1(lList);
        try {
            Object objMakeFieldDesc = makeFieldDesc(symbol, (Symbol) objApply1, i);
            Object objApply12 = lists.cdr.apply1(lList);
            try {
                return lists.cons(objMakeFieldDesc, mapNames(symbol, (LList) objApply12, i + 1));
            } catch (ClassCastException e) {
                throw new WrongType(e, "map-names", 1, objApply12);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "make-field-desc", 1, objApply1);
        }
    }

    public static Object lambda2(Object obj) throws Throwable {
        Object[] objArrAllocVars = SyntaxPattern.allocVars(5, null);
        if (Lit22.match(obj, objArrAllocVars, 0)) {
            Object objExecute = Lit23.execute(objArrAllocVars, TemplateScope.make());
            try {
                Symbol symbol = (Symbol) objExecute;
                SimpleSymbol simpleSymbolSymbolAppend$V = symbolAppend$V(new Object[]{symbol, Lit24});
                Object objExecute2 = Lit25.execute(objArrAllocVars, TemplateScope.make());
                try {
                    LList lList = (LList) objExecute2;
                    lists.length(lList);
                    LList lListMapNames = mapNames(symbol, lList, 0);
                    PairWithPosition pairWithPositionMakeInit = makeInit();
                    Pair pairMakeValues = makeValues(simpleSymbolSymbolAppend$V, lList);
                    Object objExecute3 = Lit26.execute(objArrAllocVars, TemplateScope.make());
                    try {
                        LList lList2 = (LList) objExecute3;
                        Object objExecute4 = Lit27.execute(objArrAllocVars, TemplateScope.make());
                        try {
                            LList lList3 = (LList) objExecute4;
                            TemplateScope templateScopeMake = TemplateScope.make();
                            return Quote.append$V(new Object[]{Lit28.execute(objArrAllocVars, templateScopeMake), LList.consX(new Object[]{SyntaxForms.makeWithTemplate(obj, symbol), Pair.make(Lit29.execute(objArrAllocVars, templateScopeMake), Quote.append$V(new Object[]{Lit30.execute(objArrAllocVars, templateScopeMake), Pair.make(Lit31.execute(objArrAllocVars, templateScopeMake), Quote.append$V(new Object[]{SyntaxForms.makeWithTemplate(obj, lList2), LList.consX(new Object[]{SyntaxForms.makeWithTemplate(obj, pairWithPositionMakeInit), LList.consX(new Object[]{SyntaxForms.makeWithTemplate(obj, pairMakeValues), Pair.make(Pair.make(Lit32.execute(objArrAllocVars, templateScopeMake), Quote.append$V(new Object[]{Lit33.execute(objArrAllocVars, templateScopeMake), LList.consX(new Object[]{SyntaxForms.makeWithTemplate(obj, symbol), Quote.append$V(new Object[]{Lit34.execute(objArrAllocVars, templateScopeMake), Pair.make(Lit35.execute(objArrAllocVars, templateScopeMake), Pair.make(Pair.make(Lit36.execute(objArrAllocVars, templateScopeMake), LList.consX(new Object[]{SyntaxForms.makeWithTemplate(obj, symbol), Lit37.execute(objArrAllocVars, templateScopeMake)})), Lit38.execute(objArrAllocVars, templateScopeMake)))})})})), Quote.append$V(new Object[]{SyntaxForms.makeWithTemplate(obj, lListMapNames), Quote.append$V(new Object[]{SyntaxForms.makeWithTemplate(obj, lList3), Lit39.execute(objArrAllocVars, templateScopeMake)})}))})})}))}))})});
                        } catch (ClassCastException e) {
                            throw new WrongType(e, "other-defs", -2, objExecute4);
                        }
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "opts", -2, objExecute3);
                    }
                } catch (ClassCastException e3) {
                    throw new WrongType(e3, "e-names", -2, objExecute2);
                }
            } catch (ClassCastException e4) {
                throw new WrongType(e4, "t-name", -2, objExecute);
            }
        }
        return syntax_case.error("syntax-case", obj);
    }
}
