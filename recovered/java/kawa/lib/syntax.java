package kawa.lib;

import androidx.fragment.app.FragmentTransaction;
import com.google.youngandroid.a;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.expr.SynchronizedExp;
import gnu.expr.TryExp;
import gnu.kawa.lispexpr.LispLanguage;
import gnu.kawa.reflect.StaticFieldLocation;
import gnu.lists.Consumer;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.lists.PairWithPosition;
import gnu.mapping.CallContext;
import gnu.mapping.Location;
import gnu.mapping.Procedure;
import gnu.mapping.SimpleSymbol;
import gnu.math.IntNum;
import kawa.lang.Macro;
import kawa.lang.Quote;
import kawa.lang.SyntaxForms;
import kawa.lang.SyntaxPattern;
import kawa.lang.SyntaxRule;
import kawa.lang.SyntaxRules;
import kawa.lang.SyntaxTemplate;
import kawa.lang.TemplateScope;
import kawa.lang.Translator;
import kawa.standard.IfFeature;
import kawa.standard.Scheme;
import kawa.standard.syntax_case;

/* loaded from: classes2.dex */
public class syntax extends ModuleBody {
    public static final Macro $Pccond$Mnexpand;
    public static final Macro $Pcimport;
    public static final Location $Prvt$and;
    public static final Location $Prvt$define$Mnconstant;
    public static final Location $Prvt$define$Mnsyntax;
    public static final Location $Prvt$if;
    public static final Location $Prvt$let;
    public static final Location $Prvt$or;
    public static final Location $Prvt$try$Mncatch;
    public static final syntax $instance;
    static final SyntaxPattern Lit0;
    static final SyntaxTemplate Lit1;
    static final SyntaxPattern Lit10;
    static final SimpleSymbol Lit100;
    static final SyntaxRules Lit101;
    static final SimpleSymbol Lit102;
    static final SimpleSymbol Lit103;
    static final SimpleSymbol Lit104;
    static final SimpleSymbol Lit105;
    static final SimpleSymbol Lit106;
    static final SimpleSymbol Lit107;
    static final SimpleSymbol Lit108;
    static final SimpleSymbol Lit109;
    static final SimpleSymbol Lit11;
    static final SimpleSymbol Lit110;
    static final SimpleSymbol Lit111;
    static final SimpleSymbol Lit112;
    static final SimpleSymbol Lit113;
    static final SimpleSymbol Lit114;
    static final SimpleSymbol Lit115;
    static final SimpleSymbol Lit116;
    static final SimpleSymbol Lit117;
    static final SimpleSymbol Lit118;
    static final SimpleSymbol Lit119;
    static final SyntaxRules Lit12;
    static final SimpleSymbol Lit120;
    static final SimpleSymbol Lit121;
    static final SimpleSymbol Lit122;
    static final SimpleSymbol Lit123;
    static final SimpleSymbol Lit13;
    static final SyntaxRules Lit14;
    static final SimpleSymbol Lit15;
    static final SyntaxRules Lit16;
    static final SimpleSymbol Lit17;
    static final SyntaxRules Lit18;
    static final SimpleSymbol Lit19;
    static final SyntaxTemplate Lit2;
    static final SyntaxRules Lit20;
    static final SimpleSymbol Lit21;
    static final SyntaxPattern Lit22;
    static final SyntaxTemplate Lit23;
    static final SyntaxTemplate Lit24;
    static final SimpleSymbol Lit25;
    static final SyntaxPattern Lit26;
    static final SyntaxTemplate Lit27;
    static final SyntaxTemplate Lit28;
    static final SimpleSymbol Lit29;
    static final SyntaxPattern Lit3;
    static final SimpleSymbol Lit30;
    static final SimpleSymbol Lit31;
    static final SimpleSymbol Lit32;
    static final SimpleSymbol Lit33;
    static final SimpleSymbol Lit34;
    static final SimpleSymbol Lit35;
    static final SimpleSymbol Lit36;
    static final SyntaxRules Lit37;
    static final SimpleSymbol Lit38;
    static final SyntaxPattern Lit39;
    static final SyntaxPattern Lit4;
    static final SyntaxTemplate Lit40;
    static final SyntaxTemplate Lit41;
    static final SyntaxTemplate Lit42;
    static final SyntaxTemplate Lit43;
    static final SyntaxTemplate Lit44;
    static final SyntaxTemplate Lit45;
    static final SyntaxPattern Lit46;
    static final SyntaxTemplate Lit47;
    static final SyntaxTemplate Lit48;
    static final SyntaxTemplate Lit49;
    static final SyntaxPattern Lit5;
    static final SyntaxTemplate Lit50;
    static final SyntaxTemplate Lit51;
    static final SyntaxTemplate Lit52;
    static final SyntaxPattern Lit53;
    static final SyntaxTemplate Lit54;
    static final SyntaxTemplate Lit55;
    static final SyntaxTemplate Lit56;
    static final SyntaxTemplate Lit57;
    static final SyntaxTemplate Lit58;
    static final SyntaxTemplate Lit59;
    static final SyntaxTemplate Lit6;
    static final SyntaxPattern Lit60;
    static final SyntaxTemplate Lit61;
    static final SyntaxTemplate Lit62;
    static final SyntaxTemplate Lit63;
    static final SyntaxTemplate Lit64;
    static final SyntaxPattern Lit65;
    static final SyntaxTemplate Lit66;
    static final SyntaxPattern Lit67;
    static final SyntaxTemplate Lit68;
    static final SyntaxTemplate Lit69;
    static final SyntaxTemplate Lit7;
    static final SyntaxTemplate Lit70;
    static final SyntaxTemplate Lit71;
    static final SyntaxPattern Lit72;
    static final SyntaxTemplate Lit73;
    static final SyntaxTemplate Lit74;
    static final SyntaxTemplate Lit75;
    static final SyntaxTemplate Lit76;
    static final SimpleSymbol Lit77;
    static final SyntaxRules Lit78;
    static final SimpleSymbol Lit79;
    static final SyntaxTemplate Lit8;
    static final SyntaxRules Lit80;
    static final SimpleSymbol Lit81;
    static final SyntaxPattern Lit82;
    static final SyntaxTemplate Lit83;
    static final SyntaxTemplate Lit84;
    static final SyntaxPattern Lit85;
    static final SyntaxTemplate Lit86;
    static final SyntaxTemplate Lit87;
    static final SyntaxPattern Lit88;
    static final SyntaxPattern Lit89;
    static final SyntaxPattern Lit9;
    static final SyntaxTemplate Lit90;
    static final SimpleSymbol Lit91;
    static final SyntaxRules Lit92;
    static final SimpleSymbol Lit93;
    static final SyntaxPattern Lit94;
    static final SyntaxTemplate Lit95;
    static final SyntaxTemplate Lit96;
    static final SyntaxTemplate Lit97;
    static final SimpleSymbol Lit98;
    static final SyntaxRules Lit99;
    public static final Macro case$Mnlambda;
    public static final Macro cond$Mnexpand;
    public static final Macro define$Mnalias$Mnparameter;
    public static final Macro define$Mnmacro;
    public static final Macro define$Mnsyntax$Mncase;
    public static final Macro defmacro;
    public static final ModuleMethod identifier$Mnlist$Qu;
    public static final ModuleMethod identifier$Mnpair$Mnlist$Qu;

    /* renamed from: import, reason: not valid java name */
    public static final Macro f9import;
    public static final ModuleMethod import$Mnhandle$Mnexcept;
    public static final ModuleMethod import$Mnhandle$Mnonly;
    public static final ModuleMethod import$Mnhandle$Mnprefix;
    public static final ModuleMethod import$Mnhandle$Mnrename;
    public static final ModuleMethod import$Mnmapper;
    public static final Macro let$Mnvalues;
    public static final Macro let$St$Mnvalues;
    public static final Macro receive;

    /* renamed from: synchronized, reason: not valid java name */
    public static final Macro f10synchronized;
    public static final Macro try$Mnfinally;
    public static final Macro unless;
    public static final Macro when;

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("%define-macro");
        Lit123 = simpleSymbol;
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f("form");
        Lit122 = simpleSymbol2;
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) a.f("if");
        Lit121 = simpleSymbol3;
        SimpleSymbol simpleSymbol4 = (SimpleSymbol) a.f("prefix");
        Lit120 = simpleSymbol4;
        SimpleSymbol simpleSymbol5 = (SimpleSymbol) a.f("instance");
        Lit119 = simpleSymbol5;
        SimpleSymbol simpleSymbol6 = (SimpleSymbol) a.f("kawa.standard.ImportFromLibrary");
        Lit118 = simpleSymbol6;
        SimpleSymbol simpleSymbol7 = (SimpleSymbol) a.f("x");
        Lit117 = simpleSymbol7;
        SimpleSymbol simpleSymbol8 = (SimpleSymbol) a.f("call-with-values");
        Lit116 = simpleSymbol8;
        SimpleSymbol simpleSymbol9 = (SimpleSymbol) a.f("let");
        Lit115 = simpleSymbol9;
        SimpleSymbol simpleSymbol10 = (SimpleSymbol) a.f("not");
        Lit114 = simpleSymbol10;
        SimpleSymbol simpleSymbol11 = (SimpleSymbol) a.f("or");
        Lit113 = simpleSymbol11;
        SimpleSymbol simpleSymbol12 = (SimpleSymbol) a.f("and");
        Lit112 = simpleSymbol12;
        SimpleSymbol simpleSymbol13 = (SimpleSymbol) a.f("else");
        Lit111 = simpleSymbol13;
        SimpleSymbol simpleSymbol14 = (SimpleSymbol) a.f("begin");
        Lit110 = simpleSymbol14;
        SimpleSymbol simpleSymbol15 = (SimpleSymbol) a.f("lambda");
        Lit109 = simpleSymbol15;
        SimpleSymbol simpleSymbol16 = (SimpleSymbol) a.f(LispLanguage.quote_sym);
        Lit108 = simpleSymbol16;
        SimpleSymbol simpleSymbol17 = (SimpleSymbol) a.f("wt");
        Lit107 = simpleSymbol17;
        SimpleSymbol simpleSymbol18 = (SimpleSymbol) a.f("as");
        Lit106 = simpleSymbol18;
        SimpleSymbol simpleSymbol19 = (SimpleSymbol) a.f("arg");
        Lit105 = simpleSymbol19;
        SimpleSymbol simpleSymbol20 = (SimpleSymbol) a.f(LispLanguage.quasiquote_sym);
        Lit104 = simpleSymbol20;
        SimpleSymbol simpleSymbol21 = (SimpleSymbol) a.f("gnu.mapping.LocationProc");
        Lit103 = simpleSymbol21;
        SimpleSymbol simpleSymbol22 = (SimpleSymbol) a.f("$lookup$");
        Lit102 = simpleSymbol22;
        SimpleSymbol simpleSymbol23 = (SimpleSymbol) a.f("define-alias-parameter");
        Lit100 = simpleSymbol23;
        Object[] objArr = {simpleSymbol23};
        SyntaxPattern syntaxPattern = new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\b", new Object[0], 3);
        SimpleSymbol simpleSymbol24 = (SimpleSymbol) a.f("define-constant");
        SimpleSymbol simpleSymbol25 = (SimpleSymbol) a.f("::");
        SimpleSymbol simpleSymbol26 = (SimpleSymbol) a.f("<gnu.mapping.LocationProc>");
        SimpleSymbol simpleSymbol27 = (SimpleSymbol) a.f("makeNamed");
        LList lList = LList.Empty;
        SyntaxRules syntaxRules = new SyntaxRules(objArr, new SyntaxRule[]{new SyntaxRule(syntaxPattern, "\u0001\u0001\u0001", "\u0011\u0018\u0004¹\u0011\u0018\f\t\u0003\u0011\u0018\u0014\u0011\u0018\u001c\b\u0011\u0018$)\u0011\u0018,\b\u0003\b\u0013\b\u0011\u00184\t\u0003\b\u0011\u0018<\u0011\u0018D\b\u0011\u0018L9\u0011\u0018T\t\u000b\u0018\\\b\u0011\u0018d\u0011\u0018l\b\u0011\u0018ty\b\u0011\u0018|\b\u0011\u0018\u0084\u0011\u0018d\t\u0003\u0018\u008cA\u0011\u0018\u0094\u0011\u0018\u009c\b\u000b\u0018¤", new Object[]{simpleSymbol14, simpleSymbol24, simpleSymbol25, simpleSymbol26, PairWithPosition.make(simpleSymbol22, a.c(simpleSymbol27, lList, simpleSymbol20, lList, simpleSymbol21), "/u2/home/jis/ai2-kawa/kawa/lib/syntax.scm", 1069060), simpleSymbol16, PairWithPosition.make(simpleSymbol22, a.c((SimpleSymbol) a.f("pushConverter"), lList, simpleSymbol20, lList, simpleSymbol21), "/u2/home/jis/ai2-kawa/kawa/lib/syntax.scm", 1073161), simpleSymbol15, PairWithPosition.make(simpleSymbol19, lList, "/u2/home/jis/ai2-kawa/kawa/lib/syntax.scm", 1081354), (SimpleSymbol) a.f("try-catch"), simpleSymbol18, PairWithPosition.make(simpleSymbol19, lList, "/u2/home/jis/ai2-kawa/kawa/lib/syntax.scm", 1089550), (SimpleSymbol) a.f("ex"), (SimpleSymbol) a.f("<java.lang.ClassCastException>"), simpleSymbol9, simpleSymbol17, PairWithPosition.make(simpleSymbol22, a.c((SimpleSymbol) a.f("make"), lList, simpleSymbol20, lList, (SimpleSymbol) a.f("gnu.mapping.WrongType")), "/u2/home/jis/ai2-kawa/kawa/lib/syntax.scm", 1097748), PairWithPosition.make(PairWithPosition.make(simpleSymbol18, PairWithPosition.make((SimpleSymbol) a.f("<int>"), PairWithPosition.make(IntNum.make(1), lList, "/u2/home/jis/ai2-kawa/kawa/lib/syntax.scm", 1101846), "/u2/home/jis/ai2-kawa/kawa/lib/syntax.scm", 1101840), "/u2/home/jis/ai2-kawa/kawa/lib/syntax.scm", 1101836), PairWithPosition.make(simpleSymbol19, lList, "/u2/home/jis/ai2-kawa/kawa/lib/syntax.scm", 1101849), "/u2/home/jis/ai2-kawa/kawa/lib/syntax.scm", 1101836), (SimpleSymbol) a.f("set!"), PairWithPosition.make((SimpleSymbol) a.f("field"), PairWithPosition.make(simpleSymbol17, PairWithPosition.make(PairWithPosition.make(simpleSymbol16, PairWithPosition.make((SimpleSymbol) a.f("expectedType"), lList, "/u2/home/jis/ai2-kawa/kawa/lib/syntax.scm", 1105941), "/u2/home/jis/ai2-kawa/kawa/lib/syntax.scm", 1105941), lList, "/u2/home/jis/ai2-kawa/kawa/lib/syntax.scm", 1105940), "/u2/home/jis/ai2-kawa/kawa/lib/syntax.scm", 1105937), "/u2/home/jis/ai2-kawa/kawa/lib/syntax.scm", 1105930), PairWithPosition.make(PairWithPosition.make((SimpleSymbol) a.f("primitive-throw"), PairWithPosition.make(simpleSymbol17, lList, "/u2/home/jis/ai2-kawa/kawa/lib/syntax.scm", 1110037), "/u2/home/jis/ai2-kawa/kawa/lib/syntax.scm", 1110020), lList, "/u2/home/jis/ai2-kawa/kawa/lib/syntax.scm", 1110020)}, 0)}, 3);
        Lit101 = syntaxRules;
        SimpleSymbol simpleSymbol28 = (SimpleSymbol) a.f("receive");
        Lit98 = simpleSymbol28;
        SyntaxRules syntaxRules2 = new SyntaxRules(new Object[]{simpleSymbol28}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\r\u0017\u0010\b\b", new Object[0], 3), "\u0001\u0001\u0003", "\u0011\u0018\u00049\u0011\u0018\f\t\u0010\b\u000b\b\u0011\u0018\f\t\u0003\b\u0015\u0013", new Object[]{simpleSymbol8, simpleSymbol15}, 1)}, 3);
        Lit99 = syntaxRules2;
        SimpleSymbol simpleSymbol29 = (SimpleSymbol) a.f("cond-expand");
        Lit91 = simpleSymbol29;
        Lit97 = new SyntaxTemplate("\u0001\u0001\u0000\u0000", "\u0011\u0018\u0004\u001a", new Object[]{simpleSymbol29}, 0);
        Lit96 = new SyntaxTemplate("\u0001\u0001\u0000\u0000", "\u0011\u0018\u0004\u0012", new Object[]{simpleSymbol14}, 0);
        Lit95 = new SyntaxTemplate("\u0001\u0001\u0000\u0000", "\u000b", new Object[0], 0);
        Lit94 = new SyntaxPattern("\f\u0007\u001c\f\u000f\u0013\u001b", new Object[0], 4);
        SimpleSymbol simpleSymbol30 = (SimpleSymbol) a.f("%cond-expand");
        Lit93 = simpleSymbol30;
        SyntaxRules syntaxRules3 = new SyntaxRules(new Object[]{simpleSymbol29, simpleSymbol12, simpleSymbol11, simpleSymbol10, simpleSymbol13}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\b", new Object[0], 0), "", "\u0018\u0004", new Object[]{PairWithPosition.make((SimpleSymbol) a.f("%syntax-error"), PairWithPosition.make("Unfulfilled cond-expand", lList, "/u2/home/jis/ai2-kawa/kawa/lib/syntax.scm", 802851), "/u2/home/jis/ai2-kawa/kawa/lib/syntax.scm", 802836)}, 0), new SyntaxRule(new SyntaxPattern("\f\u0018<\f\u0002\r\u0007\u0000\b\b\b", new Object[]{simpleSymbol13}, 1), "\u0003", "\u0011\u0018\u0004\b\u0005\u0003", new Object[]{simpleSymbol14}, 1), new SyntaxRule(new SyntaxPattern("\f\u0018L\u001c\f\u0002\b\r\u0007\u0000\b\b\r\u000f\b\b\b", new Object[]{simpleSymbol12}, 2), "\u0003\u0003", "\u0011\u0018\u0004\b\u0005\u0003", new Object[]{simpleSymbol14}, 1), new SyntaxRule(new SyntaxPattern("\f\u0018|L\f\u0002\f\u0007\r\u000f\b\b\b\r\u0017\u0010\b\b\r\u001f\u0018\b\b", new Object[]{simpleSymbol12}, 4), "\u0001\u0003\u0003\u0003", "\u0011\u0018\u0004¡\t\u0003\b\u0011\u0018\u0004Q1\u0011\u0018\f\b\r\u000b\b\u0015\u0013\b\u001d\u001b\b\u001d\u001b", new Object[]{simpleSymbol29, simpleSymbol12}, 1), new SyntaxRule(new SyntaxPattern("\f\u0018L\u001c\f\u0002\b\r\u0007\u0000\b\b\r\u000f\b\b\b", new Object[]{simpleSymbol11}, 2), "\u0003\u0003", "\u0011\u0018\u0004\b\r\u000b", new Object[]{simpleSymbol29}, 1), new SyntaxRule(new SyntaxPattern("\f\u0018|L\f\u0002\f\u0007\r\u000f\b\b\b\r\u0017\u0010\b\b\r\u001f\u0018\b\b", new Object[]{simpleSymbol11}, 4), "\u0001\u0003\u0003\u0003", "\u0011\u0018\u0004I\t\u0003\b\u0011\u0018\f\b\u0015\u0013\b\u0011\u0018\u0014\b\u0011\u0018\u0004Q1\u0011\u0018\u001c\b\r\u000b\b\u0015\u0013\b\u001d\u001b", new Object[]{simpleSymbol29, simpleSymbol14, simpleSymbol13, simpleSymbol11}, 1), new SyntaxRule(new SyntaxPattern("\f\u0018\\,\f\u0002\f\u0007\b\r\u000f\b\b\b\r\u0017\u0010\b\b", new Object[]{simpleSymbol10}, 3), "\u0001\u0003\u0003", "\u0011\u0018\u0004I\t\u0003\b\u0011\u0018\u0004\b\u0015\u0013\b\u0011\u0018\f\b\r\u000b", new Object[]{simpleSymbol29, simpleSymbol13}, 1), new SyntaxRule(new SyntaxPattern("\f\u0018\u001c\f\u0007\u000b\u0013", new Object[0], 3), "\u0001\u0000\u0000", "\u0011\u0018\u0004\u0019\t\u0003\n\u0012", new Object[]{simpleSymbol30}, 0)}, 4);
        Lit92 = syntaxRules3;
        Lit90 = new SyntaxTemplate("\u0001\u0000\u0000", "\u0012", new Object[0], 0);
        Lit89 = new SyntaxPattern("\u0013", new Object[0], 3);
        Lit88 = new SyntaxPattern("\b", new Object[0], 2);
        Lit87 = new SyntaxTemplate("\u0001\u0000\u0001\u0000\u0000", "\"", new Object[0], 0);
        Lit86 = new SyntaxTemplate("\u0001\u0000\u0001\u0000\u0000", "\u0011\u0018\u0004\t\u0013\u001a", new Object[]{simpleSymbol15}, 0);
        Lit85 = new SyntaxPattern("\u001c\f\u0017\u001b#", new Object[0], 5);
        Lit84 = new SyntaxTemplate("\u0001\u0000", "\n", new Object[0], 0);
        Lit83 = new SyntaxTemplate("\u0001\u0000", "\u0018\u0004", new Object[]{PairWithPosition.make(simpleSymbol22, a.c((SimpleSymbol) a.f("makeWithoutSorting"), lList, simpleSymbol20, lList, (SimpleSymbol) a.f("gnu.expr.GenericProc")), "/u2/home/jis/ai2-kawa/kawa/lib/syntax.scm", 651273)}, 0);
        Lit82 = new SyntaxPattern("\f\u0007\u000b", new Object[0], 2);
        SimpleSymbol simpleSymbol31 = (SimpleSymbol) a.f("case-lambda");
        Lit81 = simpleSymbol31;
        SimpleSymbol simpleSymbol32 = (SimpleSymbol) a.f("let*-values");
        Lit79 = simpleSymbol32;
        Object[] objArr2 = {simpleSymbol32};
        SyntaxRule syntaxRule = new SyntaxRule(new SyntaxPattern("\f\u0018\f\b\f\u0007\r\u000f\b\b\b", new Object[0], 2), "\u0001\u0003", "\u0011\u0018\u0004\t\u0003\b\r\u000b", new Object[]{simpleSymbol14}, 1);
        SyntaxPattern syntaxPattern2 = new SyntaxPattern("\f\u0018<\f\u0007\r\u000f\b\b\b\f\u0017\r\u001f\u0018\b\b", new Object[0], 4);
        SimpleSymbol simpleSymbol33 = (SimpleSymbol) a.f("let-values");
        Lit77 = simpleSymbol33;
        SyntaxRules syntaxRules4 = new SyntaxRules(objArr2, new SyntaxRule[]{syntaxRule, new SyntaxRule(syntaxPattern2, "\u0001\u0003\u0001\u0003", "\u0011\u0018\u0004\u0011\b\u0003\b\u0011\u0018\f\u0019\b\r\u000b\t\u0013\b\u001d\u001b", new Object[]{simpleSymbol33, simpleSymbol32}, 1)}, 4);
        Lit80 = syntaxRules4;
        SyntaxRules syntaxRules5 = new SyntaxRules(new Object[]{simpleSymbol33}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018,\r\u0007\u0000\b\b\f\u000f\r\u0017\u0010\b\b", new Object[0], 3), "\u0003\u0001\u0003", "\u0011\u0018\u0004\u0011\u0018\f\u0019\b\u0005\u0003\t\u0010\b\u0011\u0018\u0014\t\u000b\b\u0015\u0013", new Object[]{simpleSymbol33, "bind", simpleSymbol14}, 1), new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0002\f\b\f\u0007\f\u000f\b", new Object[]{"bind"}, 2), "\u0001\u0001", "\u0011\u0018\u0004\t\u0003\b\u000b", new Object[]{simpleSymbol9}, 0), new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0002\\,\f\u0007\f\u000f\b\r\u0017\u0010\b\b\f\u001f\f'\b", new Object[]{"bind"}, 5), "\u0001\u0001\u0003\u0001\u0001", "\u0011\u0018\u0004\u0011\u0018\f\t\u0003\t\u000b\t\u0010\u0019\b\u0015\u0013\t\u001b\b#", new Object[]{simpleSymbol33, "mktmp"}, 1), new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0002\f\b\f\u0007\f\u000f\f\u0017\f\u001f\f'\b", new Object[]{"mktmp"}, 5), "\u0001\u0001\u0001\u0001\u0001", "\u0011\u0018\u00049\u0011\u0018\f\t\u0010\b\u0003\b\u0011\u0018\f\t\u000b\b\u0011\u0018\u0014\u0011\u0018\u001c\t\u0013\t\u001b\b#", new Object[]{simpleSymbol8, simpleSymbol15, simpleSymbol33, "bind"}, 0), new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0002\u001c\f\u0007\u000b\f\u0017,\r\u001f\u0018\b\b\f',\r/(\b\b\f7\b", new Object[]{"mktmp"}, 7), "\u0001\u0000\u0001\u0003\u0001\u0003\u0001", "\u0011\u0018\u0004\u0011\u0018\f\t\n\t\u0013)\u0011\u001d\u001b\u0018\u0014\t#A\u0011-+\b\t\u0003\u0018\u001c\b3", new Object[]{simpleSymbol33, "mktmp", PairWithPosition.make(simpleSymbol7, lList, "/u2/home/jis/ai2-kawa/kawa/lib/syntax.scm", 569387), PairWithPosition.make(simpleSymbol7, lList, "/u2/home/jis/ai2-kawa/kawa/lib/syntax.scm", 569414)}, 1), new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0002\f\u0007\f\u000f,\r\u0017\u0010\b\b\f\u001f,\r' \b\b\f/\b", new Object[]{"mktmp"}, 6), "\u0001\u0001\u0003\u0001\u0003\u0001", "\u0011\u0018\u00049\u0011\u0018\f\t\u0010\b\u000b\b\u0011\u0018\f)\u0011\u0015\u0013\u0018\u0014\b\u0011\u0018\u001c\u0011\u0018$\t\u001bA\u0011%#\b\t\u0003\u0018,\b+", new Object[]{simpleSymbol8, simpleSymbol15, simpleSymbol7, simpleSymbol33, "bind", PairWithPosition.make(simpleSymbol7, lList, "/u2/home/jis/ai2-kawa/kawa/lib/syntax.scm", 593973)}, 1)}, 7);
        Lit78 = syntaxRules5;
        Lit76 = new SyntaxTemplate("\u0001\u0001\u0001", "\u0010", new Object[0], 0);
        Lit75 = new SyntaxTemplate("\u0001\u0001\u0001", "\u0013", new Object[0], 0);
        Lit74 = new SyntaxTemplate("\u0001\u0001\u0001", "\b\u000b", new Object[0], 0);
        Lit73 = new SyntaxTemplate("\u0001\u0001\u0001", "\u0018\u0004", new Object[]{PairWithPosition.make(simpleSymbol22, a.c(simpleSymbol5, lList, simpleSymbol20, lList, simpleSymbol6), "/u2/home/jis/ai2-kawa/kawa/lib/syntax.scm", 466951)}, 0);
        Lit72 = new SyntaxPattern("\f\u0007\f\u000f\f\u0017\b", new Object[0], 3);
        Lit71 = new SyntaxTemplate("\u0001\u0001\u0001", "\u0010", new Object[0], 0);
        Lit70 = new SyntaxTemplate("\u0001\u0001\u0001", "\u0013", new Object[0], 0);
        Lit69 = new SyntaxTemplate("\u0001\u0001\u0001", "\b\u000b", new Object[0], 0);
        Lit68 = new SyntaxTemplate("\u0001\u0001\u0001", "\u0018\u0004", new Object[]{PairWithPosition.make(simpleSymbol22, a.c(simpleSymbol5, lList, simpleSymbol20, lList, simpleSymbol6), "/u2/home/jis/ai2-kawa/kawa/lib/syntax.scm", 458759)}, 0);
        Lit67 = new SyntaxPattern("\f\u0007,\f\u0002\f\u000f\b\f\u0017\b", new Object[]{(SimpleSymbol) a.f("library")}, 3);
        Lit66 = new SyntaxTemplate("\u0001\u0001\u0000\u0001", "\u0012", new Object[0], 0);
        Lit65 = new SyntaxPattern("\f\u0007,\f\u0002\f\u000f\u0013\f\u001f\b", new Object[]{simpleSymbol4}, 4);
        Lit64 = new SyntaxTemplate("\u0001\u0001\u0001\u0001", "\u0010", new Object[0], 0);
        Lit63 = new SyntaxTemplate("\u0001\u0001\u0001\u0001", "\u001b", new Object[0], 0);
        Lit62 = new SyntaxTemplate("\u0001\u0001\u0001\u0001", "\u0013", new Object[0], 0);
        SimpleSymbol simpleSymbol34 = (SimpleSymbol) a.f("%import");
        Lit38 = simpleSymbol34;
        Lit61 = new SyntaxTemplate("\u0001\u0001\u0001\u0001", "\u0011\u0018\u0004\b\u000b", new Object[]{simpleSymbol34}, 0);
        Lit60 = new SyntaxPattern("\f\u0007<\f\u0002\f\u000f\f\u0017\b\f\u001f\b", new Object[]{simpleSymbol4}, 4);
        Lit59 = new SyntaxTemplate("\u0001\u0001\u0000\u0001", "\u0012", new Object[0], 0);
        Lit58 = new SyntaxTemplate("\u0001\u0001\u0000\u0001", "\u0010", new Object[0], 0);
        Lit57 = new SyntaxTemplate("\u0001\u0001\u0000\u0001", "\u001b", new Object[0], 0);
        Lit56 = new SyntaxTemplate("\u0001\u0001\u0000\u0001", "\u0012", new Object[0], 0);
        Lit55 = new SyntaxTemplate("\u0001\u0001\u0000\u0001", "\u0011\u0018\u0004\b\u000b", new Object[]{simpleSymbol34}, 0);
        Lit54 = new SyntaxTemplate("\u0001\u0001\u0000\u0001", "\u0012", new Object[0], 0);
        Lit53 = new SyntaxPattern("\f\u0007,\f\u0002\f\u000f\u0013\f\u001f\b", new Object[]{(SimpleSymbol) a.f("except")}, 4);
        Lit52 = new SyntaxTemplate("\u0001\u0001\u0000\u0001", "\u0012", new Object[0], 0);
        Lit51 = new SyntaxTemplate("\u0001\u0001\u0000\u0001", "\u0010", new Object[0], 0);
        Lit50 = new SyntaxTemplate("\u0001\u0001\u0000\u0001", "\u001b", new Object[0], 0);
        Lit49 = new SyntaxTemplate("\u0001\u0001\u0000\u0001", "\u0012", new Object[0], 0);
        Lit48 = new SyntaxTemplate("\u0001\u0001\u0000\u0001", "\u0011\u0018\u0004\b\u000b", new Object[]{simpleSymbol34}, 0);
        Lit47 = new SyntaxTemplate("\u0001\u0001\u0000\u0001", "\u0012", new Object[0], 0);
        Lit46 = new SyntaxPattern("\f\u0007,\f\u0002\f\u000f\u0013\f\u001f\b", new Object[]{(SimpleSymbol) a.f("only")}, 4);
        Lit45 = new SyntaxTemplate("\u0001\u0001\u0000\u0001", "\u0018\u0004", new Object[]{(SimpleSymbol) a.f("rest")}, 0);
        Lit44 = new SyntaxTemplate("\u0001\u0001\u0000\u0001", "\u0010", new Object[0], 0);
        Lit43 = new SyntaxTemplate("\u0001\u0001\u0000\u0001", "\u001b", new Object[0], 0);
        Lit42 = new SyntaxTemplate("\u0001\u0001\u0000\u0001", "\u0012", new Object[0], 0);
        Lit41 = new SyntaxTemplate("\u0001\u0001\u0000\u0001", "\u0011\u0018\u0004\b\u000b", new Object[]{simpleSymbol34}, 0);
        Lit40 = new SyntaxTemplate("\u0001\u0001\u0000\u0001", "\u0012", new Object[0], 0);
        Lit39 = new SyntaxPattern("\f\u0007,\f\u0002\f\u000f\u0013\f\u001f\b", new Object[]{(SimpleSymbol) a.f("rename")}, 4);
        SimpleSymbol simpleSymbol35 = (SimpleSymbol) a.f("import");
        Lit36 = simpleSymbol35;
        SyntaxRules syntaxRules6 = new SyntaxRules(new Object[]{simpleSymbol35}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\r\u0007\u0000\b\b", new Object[0], 1), "\u0003", "\u0011\u0018\u0004\b\u0005\u0011\u0018\f\t\u0003\u0018\u0014", new Object[]{simpleSymbol14, simpleSymbol34, PairWithPosition.make(lList, lList, "/u2/home/jis/ai2-kawa/kawa/lib/syntax.scm", 376866)}, 1)}, 1);
        Lit37 = syntaxRules6;
        SimpleSymbol simpleSymbol36 = (SimpleSymbol) a.f("import-mapper");
        Lit35 = simpleSymbol36;
        SimpleSymbol simpleSymbol37 = (SimpleSymbol) a.f("import-handle-rename");
        Lit34 = simpleSymbol37;
        SimpleSymbol simpleSymbol38 = (SimpleSymbol) a.f("import-handle-prefix");
        Lit33 = simpleSymbol38;
        SimpleSymbol simpleSymbol39 = (SimpleSymbol) a.f("import-handle-except");
        Lit32 = simpleSymbol39;
        SimpleSymbol simpleSymbol40 = (SimpleSymbol) a.f("import-handle-only");
        Lit31 = simpleSymbol40;
        SimpleSymbol simpleSymbol41 = (SimpleSymbol) a.f("identifier-pair-list?");
        Lit30 = simpleSymbol41;
        SimpleSymbol simpleSymbol42 = (SimpleSymbol) a.f("identifier-list?");
        Lit29 = simpleSymbol42;
        Lit28 = new SyntaxTemplate("\u0001\u0001\u0000", "\u0012", new Object[0], 0);
        Lit27 = new SyntaxTemplate("\u0001\u0001\u0000", "\u000b", new Object[0], 0);
        Lit26 = new SyntaxPattern("\f\u0007\f\u000f\u0013", new Object[0], 3);
        SimpleSymbol simpleSymbol43 = (SimpleSymbol) a.f("synchronized");
        Lit25 = simpleSymbol43;
        Lit24 = new SyntaxTemplate("\u0001\u0001\u0001", "\u0013", new Object[0], 0);
        Lit23 = new SyntaxTemplate("\u0001\u0001\u0001", "\u000b", new Object[0], 0);
        Lit22 = new SyntaxPattern("\f\u0007\f\u000f\f\u0017\b", new Object[0], 3);
        SimpleSymbol simpleSymbol44 = (SimpleSymbol) a.f("try-finally");
        Lit21 = simpleSymbol44;
        SimpleSymbol simpleSymbol45 = (SimpleSymbol) a.f("when");
        Lit17 = simpleSymbol45;
        SyntaxRules syntaxRules7 = new SyntaxRules(new Object[]{simpleSymbol45}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\r\u000f\b\b\b", new Object[0], 2), "\u0001\u0003", "\u0011\u0018\u0004)\u0011\u0018\f\b\u0003\b\u0011\u0018\u0014\b\r\u000b", new Object[]{simpleSymbol3, simpleSymbol10, simpleSymbol14}, 1)}, 2);
        Lit20 = syntaxRules7;
        SimpleSymbol simpleSymbol46 = (SimpleSymbol) a.f("unless");
        Lit19 = simpleSymbol46;
        SyntaxRules syntaxRules8 = new SyntaxRules(new Object[]{simpleSymbol45}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\r\u000f\b\b\b", new Object[0], 2), "\u0001\u0003", "\u0011\u0018\u0004\t\u0003\b\u0011\u0018\f\b\r\u000b", new Object[]{simpleSymbol3, simpleSymbol14}, 1)}, 2);
        Lit18 = syntaxRules8;
        SimpleSymbol simpleSymbol47 = (SimpleSymbol) a.f("define-syntax-case");
        Lit15 = simpleSymbol47;
        SyntaxRules syntaxRules9 = new SyntaxRules(new Object[]{simpleSymbol47}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\u0013", new Object[0], 3), "\u0001\u0001\u0000", "\u0011\u0018\u0004\t\u0003\b\u0011\u0018\f\u0011\u0018\u0014\b\u0011\u0018\u001c\u0011\u0018$\t\u000b\u0012", new Object[]{(SimpleSymbol) a.f("define-syntax"), simpleSymbol15, PairWithPosition.make(simpleSymbol2, lList, "/u2/home/jis/ai2-kawa/kawa/lib/syntax.scm", 90129), (SimpleSymbol) a.f("syntax-case"), simpleSymbol2}, 0)}, 3);
        Lit16 = syntaxRules9;
        SimpleSymbol simpleSymbol48 = (SimpleSymbol) a.f("define-macro");
        Lit13 = simpleSymbol48;
        SyntaxRules syntaxRules10 = new SyntaxRules(new Object[]{simpleSymbol48}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\u001c\f\u0007\u000b\u0013", new Object[0], 3), "\u0001\u0000\u0000", "\u0011\u0018\u0004\t\u0003\b\u0011\u0018\f\t\n\u0012", new Object[]{simpleSymbol, simpleSymbol15}, 0), new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\b", new Object[0], 2), "\u0001\u0001", "\u0011\u0018\u0004\t\u0003\b\u000b", new Object[]{simpleSymbol}, 0)}, 3);
        Lit14 = syntaxRules10;
        SimpleSymbol simpleSymbol49 = (SimpleSymbol) a.f("defmacro");
        Lit11 = simpleSymbol49;
        SyntaxRules syntaxRules11 = new SyntaxRules(new Object[]{simpleSymbol49}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\u0013", new Object[0], 3), "\u0001\u0001\u0000", "\u0011\u0018\u0004\t\u0003\b\u0011\u0018\f\t\u000b\u0012", new Object[]{simpleSymbol, simpleSymbol15}, 0)}, 3);
        Lit12 = syntaxRules11;
        Lit10 = new SyntaxPattern("\u0003", new Object[0], 1);
        Lit9 = new SyntaxPattern("\b", new Object[0], 0);
        Lit8 = new SyntaxTemplate("\u0001\u0001\u0000", "\u0012", new Object[0], 0);
        Lit7 = new SyntaxTemplate("\u0001\u0001\u0000", "\u000b", new Object[0], 0);
        Lit6 = new SyntaxTemplate("\u0001\u0001\u0000", "\u0003", new Object[0], 0);
        Lit5 = new SyntaxPattern(",\f\u0007\f\u000f\b\u0013", new Object[0], 3);
        Lit4 = new SyntaxPattern("\u0003", new Object[0], 1);
        Lit3 = new SyntaxPattern("\b", new Object[0], 0);
        Lit2 = new SyntaxTemplate("\u0001\u0000", "\n", new Object[0], 0);
        Lit1 = new SyntaxTemplate("\u0001\u0000", "\u0003", new Object[0], 0);
        Lit0 = new SyntaxPattern("\f\u0007\u000b", new Object[0], 2);
        syntax syntaxVar = new syntax();
        $instance = syntaxVar;
        $Prvt$define$Mnsyntax = StaticFieldLocation.make("kawa.lib.prim_syntax", "define$Mnsyntax");
        $Prvt$define$Mnconstant = StaticFieldLocation.make("kawa.lib.prim_syntax", "define$Mnconstant");
        $Prvt$if = StaticFieldLocation.make("kawa.lib.prim_syntax", "if");
        $Prvt$try$Mncatch = StaticFieldLocation.make("kawa.lib.prim_syntax", "try$Mncatch");
        $Prvt$and = StaticFieldLocation.make("kawa.lib.std_syntax", "and");
        $Prvt$or = StaticFieldLocation.make("kawa.lib.std_syntax", "or");
        $Prvt$let = StaticFieldLocation.make("kawa.lib.std_syntax", "let");
        defmacro = Macro.make(simpleSymbol49, syntaxRules11, syntaxVar);
        define$Mnmacro = Macro.make(simpleSymbol48, syntaxRules10, syntaxVar);
        define$Mnsyntax$Mncase = Macro.make(simpleSymbol47, syntaxRules9, syntaxVar);
        when = Macro.make(simpleSymbol45, syntaxRules8, syntaxVar);
        unless = Macro.make(simpleSymbol46, syntaxRules7, syntaxVar);
        try$Mnfinally = Macro.make(simpleSymbol44, new ModuleMethod(syntaxVar, 2, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN), syntaxVar);
        f10synchronized = Macro.make(simpleSymbol43, new ModuleMethod(syntaxVar, 3, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN), syntaxVar);
        identifier$Mnlist$Qu = new ModuleMethod(syntaxVar, 4, simpleSymbol42, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        identifier$Mnpair$Mnlist$Qu = new ModuleMethod(syntaxVar, 5, simpleSymbol41, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        import$Mnhandle$Mnonly = new ModuleMethod(syntaxVar, 6, simpleSymbol40, 8194);
        import$Mnhandle$Mnexcept = new ModuleMethod(syntaxVar, 7, simpleSymbol39, 8194);
        import$Mnhandle$Mnprefix = new ModuleMethod(syntaxVar, 8, simpleSymbol38, 8194);
        import$Mnhandle$Mnrename = new ModuleMethod(syntaxVar, 9, simpleSymbol37, 8194);
        import$Mnmapper = new ModuleMethod(syntaxVar, 10, simpleSymbol36, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        f9import = Macro.make(simpleSymbol35, syntaxRules6, syntaxVar);
        $Pcimport = Macro.make(simpleSymbol34, new ModuleMethod(syntaxVar, 11, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN), syntaxVar);
        let$Mnvalues = Macro.make(simpleSymbol33, syntaxRules5, syntaxVar);
        let$St$Mnvalues = Macro.make(simpleSymbol32, syntaxRules4, syntaxVar);
        case$Mnlambda = Macro.make(simpleSymbol31, new ModuleMethod(syntaxVar, 12, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN), syntaxVar);
        cond$Mnexpand = Macro.make(simpleSymbol29, syntaxRules3, syntaxVar);
        ModuleMethod moduleMethod = new ModuleMethod(syntaxVar, 13, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/kawa/lib/syntax.scm:227");
        $Pccond$Mnexpand = Macro.make(simpleSymbol30, moduleMethod, syntaxVar);
        receive = Macro.make(simpleSymbol28, syntaxRules2, syntaxVar);
        define$Mnalias$Mnparameter = Macro.make(simpleSymbol23, syntaxRules, syntaxVar);
        syntaxVar.run();
    }

    public syntax() {
        ModuleInfo.register(this);
    }

    public static Object importHandlePrefix(Object obj, Object obj2) {
        return null;
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext callContext) {
        Consumer consumer = callContext.consumer;
    }

    public static Object lambda2(Object obj) {
        Object[] objArrAllocVars = SyntaxPattern.allocVars(3, null);
        if (!Lit22.match(obj, objArrAllocVars, 0)) {
            return syntax_case.error("syntax-case", obj);
        }
        return new TryExp(SyntaxForms.rewrite(Lit23.execute(objArrAllocVars, TemplateScope.make())), SyntaxForms.rewrite(Lit24.execute(objArrAllocVars, TemplateScope.make())));
    }

    public static Object lambda3(Object obj) {
        Object[] objArrAllocVars = SyntaxPattern.allocVars(3, null);
        if (!Lit26.match(obj, objArrAllocVars, 0)) {
            return syntax_case.error("syntax-case", obj);
        }
        return new SynchronizedExp(SyntaxForms.rewrite(Lit27.execute(objArrAllocVars, TemplateScope.make())), SyntaxForms.rewriteBody(Lit28.execute(objArrAllocVars, TemplateScope.make())));
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
        if (i == 3) {
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
        if (i == 5) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        switch (i) {
            case 10:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 11:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 12:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 13:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            default:
                return super.match1(moduleMethod, obj, callContext);
        }
    }

    public static boolean isIdentifierList(Object obj) {
        boolean z = Translator.listLength(obj) >= 0;
        if (!z) {
            return z;
        }
        while (true) {
            Object[] objArrAllocVars = SyntaxPattern.allocVars(2, null);
            if (!Lit0.match(obj, objArrAllocVars, 0)) {
                if (Lit3.match(obj, objArrAllocVars, 0)) {
                    return true;
                }
                return (Lit4.match(obj, objArrAllocVars, 0) || syntax_case.error("syntax-case", obj) == Boolean.FALSE) ? false : true;
            }
            boolean zIsIdentifier = std_syntax.isIdentifier(Lit1.execute(objArrAllocVars, TemplateScope.make()));
            if (!zIsIdentifier) {
                return zIsIdentifier;
            }
            obj = Lit2.execute(objArrAllocVars, TemplateScope.make());
        }
    }

    public static boolean isIdentifierPairList(Object obj) {
        boolean zIsIdentifier;
        boolean z = Translator.listLength(obj) >= 0;
        if (!z) {
            return z;
        }
        while (true) {
            Object[] objArrAllocVars = SyntaxPattern.allocVars(3, null);
            if (!Lit5.match(obj, objArrAllocVars, 0)) {
                if (Lit9.match(obj, objArrAllocVars, 0)) {
                    return true;
                }
                return (Lit10.match(obj, objArrAllocVars, 0) || syntax_case.error("syntax-case", obj) == Boolean.FALSE) ? false : true;
            }
            zIsIdentifier = std_syntax.isIdentifier(Lit6.execute(objArrAllocVars, TemplateScope.make()));
            if (!zIsIdentifier) {
                break;
            }
            zIsIdentifier = std_syntax.isIdentifier(Lit7.execute(objArrAllocVars, TemplateScope.make()));
            if (!zIsIdentifier) {
                break;
            }
            obj = Lit8.execute(objArrAllocVars, TemplateScope.make());
        }
        return zIsIdentifier;
    }

    @Override // gnu.expr.ModuleBody
    public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
        switch (moduleMethod.selector) {
            case 6:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 7:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 8:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 9:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            default:
                return super.match2(moduleMethod, obj, obj2, callContext);
        }
    }

    public static Object importHandleOnly(Object obj, Object obj2) {
        if (lists.memq(obj, obj2) != Boolean.FALSE) {
            return obj;
        }
        return null;
    }

    public static Object importHandleExcept(Object obj, Object obj2) {
        if (lists.memq(obj, obj2) != Boolean.FALSE) {
            return null;
        }
        return obj;
    }

    @Override // gnu.expr.ModuleBody
    public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
        switch (moduleMethod.selector) {
            case 6:
                return importHandleOnly(obj, obj2);
            case 7:
                return importHandleExcept(obj, obj2);
            case 8:
                return importHandlePrefix(obj, obj2);
            case 9:
                return importHandleRename(obj, obj2);
            default:
                return super.apply2(moduleMethod, obj, obj2);
        }
    }

    public static Object importHandleRename(Object obj, Object obj2) {
        if (!lists.isPair(obj2)) {
            return obj;
        }
        if (obj == lists.caar.apply1(obj2)) {
            return lists.cadar.apply1(obj2);
        }
        return importHandleRename(obj, lists.cdr.apply1(obj2));
    }

    public class frame extends ModuleBody {
        final ModuleMethod lambda$Fn1;
        Object list;

        public frame() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 1, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/kawa/lib/syntax.scm:83");
            this.lambda$Fn1 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 1 ? lambda1(obj) : super.apply1(moduleMethod, obj);
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

        public Object lambda1(Object obj) throws Throwable {
            Object obj2 = this.list;
            while (true) {
                boolean z = obj == null;
                if (z) {
                    if (z) {
                        break;
                    }
                    Object objApply1 = lists.cdr.apply1(obj2);
                    obj = Scheme.applyToArgs.apply3(lists.caar.apply1(obj2), obj, lists.cdar.apply1(obj2));
                    obj2 = objApply1;
                } else {
                    if (lists.isNull(obj2)) {
                        break;
                    }
                    Object objApply12 = lists.cdr.apply1(obj2);
                    obj = Scheme.applyToArgs.apply3(lists.caar.apply1(obj2), obj, lists.cdar.apply1(obj2));
                    obj2 = objApply12;
                }
            }
            return obj;
        }
    }

    public static Procedure importMapper(Object obj) {
        frame frameVar = new frame();
        frameVar.list = obj;
        return frameVar.lambda$Fn1;
    }

    public static Object lambda4(Object obj) {
        Object[] objArrAllocVars = SyntaxPattern.allocVars(4, null);
        if (Lit39.match(obj, objArrAllocVars, 0)) {
            if (!isIdentifierPairList(Lit40.execute(objArrAllocVars, TemplateScope.make()))) {
                return prim_syntax.syntaxError(Lit45.execute(objArrAllocVars, TemplateScope.make()), "invalid 'rename' clause in import" instanceof Object[] ? (Object[]) "invalid 'rename' clause in import" : new Object[]{"invalid 'rename' clause in import"});
            }
            TemplateScope templateScopeMake = TemplateScope.make();
            return Quote.append$V(new Object[]{Lit41.execute(objArrAllocVars, templateScopeMake), LList.consX(new Object[]{lists.cons(lists.cons(import$Mnhandle$Mnrename, Lit42.execute(objArrAllocVars, templateScopeMake)), Lit43.execute(objArrAllocVars, templateScopeMake)), Lit44.execute(objArrAllocVars, templateScopeMake)})});
        }
        if (Lit46.match(obj, objArrAllocVars, 0)) {
            if (!isIdentifierList(Lit47.execute(objArrAllocVars, TemplateScope.make()))) {
                return prim_syntax.syntaxError(Lit52.execute(objArrAllocVars, TemplateScope.make()), "invalid 'only' identifier list" instanceof Object[] ? (Object[]) "invalid 'only' identifier list" : new Object[]{"invalid 'only' identifier list"});
            }
            TemplateScope templateScopeMake2 = TemplateScope.make();
            return Quote.append$V(new Object[]{Lit48.execute(objArrAllocVars, templateScopeMake2), LList.consX(new Object[]{lists.cons(lists.cons(import$Mnhandle$Mnonly, Lit49.execute(objArrAllocVars, templateScopeMake2)), Lit50.execute(objArrAllocVars, templateScopeMake2)), Lit51.execute(objArrAllocVars, templateScopeMake2)})});
        }
        if (Lit53.match(obj, objArrAllocVars, 0)) {
            if (!isIdentifierList(Lit54.execute(objArrAllocVars, TemplateScope.make()))) {
                return prim_syntax.syntaxError(Lit59.execute(objArrAllocVars, TemplateScope.make()), "invalid 'except' identifier list" instanceof Object[] ? (Object[]) "invalid 'except' identifier list" : new Object[]{"invalid 'except' identifier list"});
            }
            TemplateScope templateScopeMake3 = TemplateScope.make();
            return Quote.append$V(new Object[]{Lit55.execute(objArrAllocVars, templateScopeMake3), LList.consX(new Object[]{lists.cons(lists.cons(import$Mnhandle$Mnexcept, Lit56.execute(objArrAllocVars, templateScopeMake3)), Lit57.execute(objArrAllocVars, templateScopeMake3)), Lit58.execute(objArrAllocVars, templateScopeMake3)})});
        }
        if (Lit60.match(obj, objArrAllocVars, 0)) {
            TemplateScope templateScopeMake4 = TemplateScope.make();
            return Quote.append$V(new Object[]{Lit61.execute(objArrAllocVars, templateScopeMake4), LList.consX(new Object[]{lists.cons(lists.cons(import$Mnhandle$Mnprefix, Lit62.execute(objArrAllocVars, templateScopeMake4)), Lit63.execute(objArrAllocVars, templateScopeMake4)), Lit64.execute(objArrAllocVars, templateScopeMake4)})});
        }
        if (Lit65.match(obj, objArrAllocVars, 0)) {
            return prim_syntax.syntaxError(Lit66.execute(objArrAllocVars, TemplateScope.make()), "invalid prefix clause in import" instanceof Object[] ? (Object[]) "invalid prefix clause in import" : new Object[]{"invalid prefix clause in import"});
        }
        if (Lit67.match(obj, objArrAllocVars, 0)) {
            TemplateScope templateScopeMake5 = TemplateScope.make();
            return Pair.make(Lit68.execute(objArrAllocVars, templateScopeMake5), Quote.append$V(new Object[]{Lit69.execute(objArrAllocVars, templateScopeMake5), LList.consX(new Object[]{importMapper(Quote.quote(Lit70.execute(objArrAllocVars, templateScopeMake5))), Lit71.execute(objArrAllocVars, templateScopeMake5)})}));
        }
        if (!Lit72.match(obj, objArrAllocVars, 0)) {
            return syntax_case.error("syntax-case", obj);
        }
        TemplateScope templateScopeMake6 = TemplateScope.make();
        return Pair.make(Lit73.execute(objArrAllocVars, templateScopeMake6), Quote.append$V(new Object[]{Lit74.execute(objArrAllocVars, templateScopeMake6), LList.consX(new Object[]{importMapper(Quote.quote(Lit75.execute(objArrAllocVars, templateScopeMake6))), Lit76.execute(objArrAllocVars, templateScopeMake6)})}));
    }

    public static Object lambda5(Object obj) {
        frame0 frame0Var = new frame0();
        Object[] objArrAllocVars = SyntaxPattern.allocVars(2, null);
        frame0Var.$unnamed$1 = objArrAllocVars;
        if (!Lit82.match(obj, objArrAllocVars, 0)) {
            return syntax_case.error("syntax-case", obj);
        }
        TemplateScope templateScopeMake = TemplateScope.make();
        frame0Var.$unnamed$0 = templateScopeMake;
        return Pair.make(Lit83.execute(frame0Var.$unnamed$1, templateScopeMake), frame0Var.lambda6loop(Lit84.execute(frame0Var.$unnamed$1, frame0Var.$unnamed$0)));
    }

    public class frame0 extends ModuleBody {
        TemplateScope $unnamed$0;
        Object[] $unnamed$1;

        public Object lambda6loop(Object obj) {
            Object[] objArrAllocVars = SyntaxPattern.allocVars(5, this.$unnamed$1);
            if (syntax.Lit85.match(obj, objArrAllocVars, 0)) {
                return Pair.make(syntax.Lit86.execute(objArrAllocVars, this.$unnamed$0), lambda6loop(syntax.Lit87.execute(objArrAllocVars, this.$unnamed$0)));
            }
            if (syntax.Lit88.match(obj, objArrAllocVars, 0)) {
                return LList.Empty;
            }
            if (syntax.Lit89.match(obj, objArrAllocVars, 0)) {
                return LList.list1(prim_syntax.syntaxError(syntax.Lit90.execute(objArrAllocVars, this.$unnamed$0), "invalid case-lambda clause" instanceof Object[] ? (Object[]) "invalid case-lambda clause" : new Object[]{"invalid case-lambda clause"}));
            }
            return syntax_case.error("syntax-case", obj);
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) {
        int i = moduleMethod.selector;
        if (i == 2) {
            return lambda2(obj);
        }
        if (i == 3) {
            return lambda3(obj);
        }
        if (i == 4) {
            return isIdentifierList(obj) ? Boolean.TRUE : Boolean.FALSE;
        }
        if (i == 5) {
            return isIdentifierPairList(obj) ? Boolean.TRUE : Boolean.FALSE;
        }
        switch (i) {
            case 10:
                return importMapper(obj);
            case 11:
                return lambda4(obj);
            case 12:
                return lambda5(obj);
            case 13:
                return lambda7(obj);
            default:
                return super.apply1(moduleMethod, obj);
        }
    }

    public static Object lambda7(Object obj) {
        Object[] objArrAllocVars = SyntaxPattern.allocVars(4, null);
        if (!Lit94.match(obj, objArrAllocVars, 0)) {
            return syntax_case.error("syntax-case", obj);
        }
        if (IfFeature.testFeature(Lit95.execute(objArrAllocVars, TemplateScope.make()))) {
            return Lit96.execute(objArrAllocVars, TemplateScope.make());
        }
        return Lit97.execute(objArrAllocVars, TemplateScope.make());
    }
}
