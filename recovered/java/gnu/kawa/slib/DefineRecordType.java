package gnu.kawa.slib;

import com.google.youngandroid.a;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.kawa.functions.GetNamedPart;
import gnu.kawa.lispexpr.LispLanguage;
import gnu.lists.Consumer;
import gnu.lists.LList;
import gnu.lists.PairWithPosition;
import gnu.mapping.CallContext;
import gnu.mapping.SimpleSymbol;
import kawa.lang.Macro;
import kawa.lang.SyntaxPattern;
import kawa.lang.SyntaxRule;
import kawa.lang.SyntaxRules;

/* loaded from: classes2.dex */
public class DefineRecordType extends ModuleBody {
    public static final Macro $Prvt$$Pcdefine$Mnrecord$Mnfield;
    public static final DefineRecordType $instance;
    static final SimpleSymbol Lit0;
    static final SyntaxRules Lit1;
    static final SimpleSymbol Lit10;
    static final SimpleSymbol Lit11;
    static final SimpleSymbol Lit12;
    static final SimpleSymbol Lit2;
    static final SyntaxRules Lit3;
    static final SimpleSymbol Lit4;
    static final SimpleSymbol Lit5;
    static final SimpleSymbol Lit6;
    static final SimpleSymbol Lit7;
    static final SimpleSymbol Lit8;
    static final SimpleSymbol Lit9;
    public static final Macro define$Mnrecord$Mntype;

    public DefineRecordType() {
        ModuleInfo.register(this);
    }

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("tmp");
        Lit12 = simpleSymbol;
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f("slot-set!");
        Lit11 = simpleSymbol2;
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) a.f("begin");
        Lit10 = simpleSymbol3;
        SimpleSymbol simpleSymbol4 = (SimpleSymbol) a.f("value");
        Lit9 = simpleSymbol4;
        SimpleSymbol simpleSymbol5 = (SimpleSymbol) a.f(LispLanguage.quote_sym);
        Lit8 = simpleSymbol5;
        SimpleSymbol simpleSymbol6 = (SimpleSymbol) a.f("slot-ref");
        Lit7 = simpleSymbol6;
        SimpleSymbol simpleSymbol7 = (SimpleSymbol) a.f("::");
        Lit6 = simpleSymbol7;
        SimpleSymbol simpleSymbol8 = (SimpleSymbol) a.f("obj");
        Lit5 = simpleSymbol8;
        SimpleSymbol simpleSymbol9 = (SimpleSymbol) a.f("define");
        Lit4 = simpleSymbol9;
        SimpleSymbol simpleSymbol10 = (SimpleSymbol) a.f("%define-record-field");
        Lit2 = simpleSymbol10;
        SyntaxRule syntaxRule = new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\b", new Object[0], 3), "\u0001\u0001\u0001", "\u0011\u0018\u0004Y\t\u0013\b\u0011\u0018\f\u0011\u0018\u0014\b\u0003\b\u0011\u0018\u001c\u0011\u0018\f\b\u0011\u0018$\b\u000b", new Object[]{simpleSymbol9, simpleSymbol8, simpleSymbol7, simpleSymbol6, simpleSymbol5}, 0);
        SyntaxPattern syntaxPattern = new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\f\u001f\b", new Object[0], 4);
        LList lList = LList.Empty;
        SyntaxRules syntaxRules = new SyntaxRules(new Object[]{simpleSymbol10}, new SyntaxRule[]{syntaxRule, new SyntaxRule(syntaxPattern, "\u0001\u0001\u0001\u0001", "\u0011\u0018\u0004á\u0011\u0018\fY\t\u0013\b\u0011\u0018\u0014\u0011\u0018\u001c\b\u0003\b\u0011\u0018$\u0011\u0018\u0014\b\u0011\u0018,\b\u000b\b\u0011\u0018\fi\t\u001bA\u0011\u0018\u0014\u0011\u0018\u001c\b\u0003\u00184\u0011\u0018\u001c\u0011\u0018<\b\u0011\u0018D\u0011\u0018\u0014)\u0011\u0018,\b\u000b\u0018L", new Object[]{simpleSymbol3, simpleSymbol9, simpleSymbol8, simpleSymbol7, simpleSymbol6, simpleSymbol5, PairWithPosition.make(simpleSymbol4, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/DefineRecordType.scm", 208936), (SimpleSymbol) a.f("<void>"), simpleSymbol2, PairWithPosition.make(simpleSymbol4, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/DefineRecordType.scm", 213021)}, 0)}, 4);
        Lit3 = syntaxRules;
        SimpleSymbol simpleSymbol11 = (SimpleSymbol) a.f("define-record-type");
        Lit0 = simpleSymbol11;
        SyntaxRules syntaxRules2 = new SyntaxRules(new Object[]{simpleSymbol11}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007<\f\u000f\r\u0017\u0010\b\b\f\u001f-\f'\f/3 \u0018\b", new Object[0], 7), "\u0001\u0001\u0003\u0001\u0003\u0003\u0002", "\u0011\u0018\u0004Y\u0011\u0018\f\t\u0003\t\u0010\b%\b#¹\u0011\u0018\u0014!\t\u001b\u0018\u001c\u0011\u0018$\u0011\u0018,\b\u0011\u00184\u0011\u0018<\b\u0003ǁ\u0011\u0018\u0014)\t\u000b\b\u0015\u0013\u0011\u0018$\t\u0003\b\u0011\u0018Dy\b\u0011\u0018L\u0011\u0018$\t\u0003\b\u0011\u0018T\b\u0003\u0099\u0011\u0018\u0004\b\u0015\u0011\u0018\\\u0011\u0018L)\u0011\u0018d\b\u0013\b\u0013\u0018l\b%\u0011\u0018t\t\u0003\t#\t+2", new Object[]{simpleSymbol3, (SimpleSymbol) a.f("define-simple-class"), simpleSymbol9, PairWithPosition.make(simpleSymbol8, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/DefineRecordType.scm", 122907), simpleSymbol7, (SimpleSymbol) a.f("<boolean>"), (SimpleSymbol) a.f(GetNamedPart.INSTANCEOF_METHOD_NAME), simpleSymbol8, (SimpleSymbol) a.f("let"), simpleSymbol, (SimpleSymbol) a.f("make"), simpleSymbol2, simpleSymbol5, PairWithPosition.make(simpleSymbol, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/DefineRecordType.scm", 143365), simpleSymbol10}, 1)}, 7);
        Lit1 = syntaxRules2;
        DefineRecordType defineRecordType = new DefineRecordType();
        $instance = defineRecordType;
        define$Mnrecord$Mntype = Macro.make(simpleSymbol11, syntaxRules2, defineRecordType);
        $Prvt$$Pcdefine$Mnrecord$Mnfield = Macro.make(simpleSymbol10, syntaxRules, defineRecordType);
        defineRecordType.run();
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext callContext) {
        Consumer consumer = callContext.consumer;
    }
}
