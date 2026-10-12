package gnu.kawa.slib;

import androidx.fragment.app.FragmentTransaction;
import com.google.youngandroid.a;
import gnu.expr.GenericProc;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.kawa.functions.AddOp;
import gnu.kawa.functions.ApplyToArgs;
import gnu.kawa.functions.GetNamedPart;
import gnu.kawa.functions.IsEqual;
import gnu.kawa.functions.IsEqv;
import gnu.kawa.lispexpr.LispLanguage;
import gnu.lists.Consumer;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.lists.PairWithPosition;
import gnu.mapping.CallContext;
import gnu.mapping.InPort;
import gnu.mapping.OutPort;
import gnu.mapping.Procedure;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Values;
import gnu.mapping.WrongType;
import gnu.math.IntNum;
import gnu.text.Path;
import gnu.text.SyntaxException;
import java.io.IOException;
import kawa.lang.Eval;
import kawa.lang.Macro;
import kawa.lang.Quote;
import kawa.lang.SyntaxPattern;
import kawa.lang.SyntaxRule;
import kawa.lang.SyntaxRules;
import kawa.lang.SyntaxTemplate;
import kawa.lang.TemplateScope;
import kawa.lib.lists;
import kawa.lib.misc;
import kawa.lib.numbers;
import kawa.lib.parameters;
import kawa.lib.ports;
import kawa.lib.std_syntax;
import kawa.lib.strings;
import kawa.standard.Scheme;
import kawa.standard.readchar;
import kawa.standard.syntax_case;

/* loaded from: classes2.dex */
public class testing extends ModuleBody {
    public static final ModuleMethod $Pctest$Mnbegin;
    static final ModuleMethod $Pctest$Mnnull$Mncallback;
    public static final ModuleMethod $Prvt$$Pctest$Mnapproximimate$Eq;
    public static final ModuleMethod $Prvt$$Pctest$Mnas$Mnspecifier;
    public static final Macro $Prvt$$Pctest$Mncomp1body;
    public static final Macro $Prvt$$Pctest$Mncomp2body;
    public static final ModuleMethod $Prvt$$Pctest$Mnend;
    public static final Macro $Prvt$$Pctest$Mnerror;
    public static final Macro $Prvt$$Pctest$Mnevaluate$Mnwith$Mncatch;
    public static final ModuleMethod $Prvt$$Pctest$Mnmatch$Mnall;
    public static final ModuleMethod $Prvt$$Pctest$Mnmatch$Mnany;
    public static final ModuleMethod $Prvt$$Pctest$Mnmatch$Mnnth;
    public static final ModuleMethod $Prvt$$Pctest$Mnon$Mntest$Mnbegin;
    public static final ModuleMethod $Prvt$$Pctest$Mnon$Mntest$Mnend;
    public static final ModuleMethod $Prvt$$Pctest$Mnreport$Mnresult;
    public static final ModuleMethod $Prvt$$Pctest$Mnrunner$Mnfail$Mnlist;
    public static final ModuleMethod $Prvt$$Pctest$Mnrunner$Mnfail$Mnlist$Ex;
    public static final ModuleMethod $Prvt$$Pctest$Mnrunner$Mnskip$Mnlist;
    public static final ModuleMethod $Prvt$$Pctest$Mnrunner$Mnskip$Mnlist$Ex;
    public static final ModuleMethod $Prvt$$Pctest$Mnshould$Mnexecute;
    public static final Macro $Prvt$test$Mngroup;
    public static final testing $instance;
    static final IntNum Lit0;
    static final SimpleSymbol Lit1;
    static final PairWithPosition Lit10;
    static final SyntaxPattern Lit100;
    static final SyntaxTemplate Lit101;
    static final SyntaxPattern Lit102;
    static final SyntaxTemplate Lit103;
    static final SimpleSymbol Lit104;
    static final SyntaxTemplate Lit105;
    static final SimpleSymbol Lit106;
    static final SyntaxTemplate Lit107;
    static final SimpleSymbol Lit108;
    static final SyntaxTemplate Lit109;
    static final PairWithPosition Lit11;
    static final SimpleSymbol Lit110;
    static final SyntaxPattern Lit111;
    static final SyntaxTemplate Lit112;
    static final SyntaxPattern Lit113;
    static final SyntaxTemplate Lit114;
    static final SimpleSymbol Lit115;
    static final SyntaxRules Lit116;
    static final SimpleSymbol Lit117;
    static final SyntaxPattern Lit118;
    static final SyntaxTemplate Lit119;
    static final SimpleSymbol Lit12;
    static final SyntaxPattern Lit120;
    static final SyntaxTemplate Lit121;
    static final SyntaxPattern Lit122;
    static final SyntaxTemplate Lit123;
    static final SimpleSymbol Lit124;
    static final SimpleSymbol Lit125;
    static final SyntaxRules Lit126;
    static final SimpleSymbol Lit127;
    static final SimpleSymbol Lit128;
    static final SyntaxRules Lit129;
    static final IntNum Lit13;
    static final SimpleSymbol Lit130;
    static final SimpleSymbol Lit131;
    static final SyntaxRules Lit132;
    static final SimpleSymbol Lit133;
    static final SimpleSymbol Lit134;
    static final SyntaxRules Lit135;
    static final SimpleSymbol Lit136;
    static final SimpleSymbol Lit137;
    static final SyntaxRules Lit138;
    static final SimpleSymbol Lit139;
    static final SimpleSymbol Lit14;
    static final SyntaxRules Lit140;
    static final SimpleSymbol Lit141;
    static final SimpleSymbol Lit142;
    static final SimpleSymbol Lit143;
    static final SimpleSymbol Lit144;
    static final SimpleSymbol Lit145;
    static final SimpleSymbol Lit146;
    static final SimpleSymbol Lit147;
    static final SimpleSymbol Lit148;
    static final SimpleSymbol Lit149;
    static final SimpleSymbol Lit15;
    static final SimpleSymbol Lit150;
    static final SimpleSymbol Lit151;
    static final SimpleSymbol Lit152;
    static final SimpleSymbol Lit153;
    static final SimpleSymbol Lit154;
    static final SimpleSymbol Lit155;
    static final SimpleSymbol Lit156;
    static final SimpleSymbol Lit157;
    static final SimpleSymbol Lit158;
    static final SimpleSymbol Lit159;
    static final SyntaxPattern Lit16;
    static final SimpleSymbol Lit160;
    static final SimpleSymbol Lit161;
    static final SimpleSymbol Lit162;
    static final SimpleSymbol Lit163;
    static final SimpleSymbol Lit164;
    static final SimpleSymbol Lit165;
    static final SyntaxTemplate Lit17;
    static final SyntaxPattern Lit18;
    static final SyntaxTemplate Lit19;
    static final SimpleSymbol Lit2;
    static final SimpleSymbol Lit20;
    static final SimpleSymbol Lit21;
    static final SimpleSymbol Lit22;
    static final SimpleSymbol Lit23;
    static final SimpleSymbol Lit24;
    static final SimpleSymbol Lit25;
    static final SimpleSymbol Lit26;
    static final SimpleSymbol Lit27;
    static final SimpleSymbol Lit28;
    static final SimpleSymbol Lit29;
    static final SimpleSymbol Lit3;
    static final SimpleSymbol Lit30;
    static final SimpleSymbol Lit31;
    static final SimpleSymbol Lit32;
    static final SimpleSymbol Lit33;
    static final SimpleSymbol Lit34;
    static final SimpleSymbol Lit35;
    static final SimpleSymbol Lit36;
    static final SimpleSymbol Lit37;
    static final SimpleSymbol Lit38;
    static final SimpleSymbol Lit39;
    static final SimpleSymbol Lit4;
    static final SimpleSymbol Lit40;
    static final SimpleSymbol Lit41;
    static final SimpleSymbol Lit42;
    static final SimpleSymbol Lit43;
    static final SimpleSymbol Lit44;
    static final SimpleSymbol Lit45;
    static final SimpleSymbol Lit46;
    static final SimpleSymbol Lit47;
    static final SimpleSymbol Lit48;
    static final SimpleSymbol Lit49;
    static final SimpleSymbol Lit5;
    static final SimpleSymbol Lit50;
    static final SimpleSymbol Lit51;
    static final SimpleSymbol Lit52;
    static final SimpleSymbol Lit53;
    static final SimpleSymbol Lit54;
    static final SimpleSymbol Lit55;
    static final SimpleSymbol Lit56;
    static final SimpleSymbol Lit57;
    static final SimpleSymbol Lit58;
    static final SimpleSymbol Lit59;
    static final SimpleSymbol Lit6;
    static final SimpleSymbol Lit60;
    static final SimpleSymbol Lit61;
    static final SimpleSymbol Lit62;
    static final SimpleSymbol Lit63;
    static final SimpleSymbol Lit64;
    static final SimpleSymbol Lit65;
    static final SimpleSymbol Lit66;
    static final SimpleSymbol Lit67;
    static final SimpleSymbol Lit68;
    static final SimpleSymbol Lit69;
    static final SimpleSymbol Lit7;
    static final SimpleSymbol Lit70;
    static final SyntaxRules Lit71;
    static final SimpleSymbol Lit72;
    static final SyntaxRules Lit73;
    static final SimpleSymbol Lit74;
    static final SimpleSymbol Lit75;
    static final SyntaxRules Lit76;
    static final SimpleSymbol Lit77;
    static final SimpleSymbol Lit78;
    static final SimpleSymbol Lit79;
    static final PairWithPosition Lit8;
    static final SimpleSymbol Lit80;
    static final SimpleSymbol Lit81;
    static final SimpleSymbol Lit82;
    static final SimpleSymbol Lit83;
    static final SimpleSymbol Lit84;
    static final SyntaxRules Lit85;
    static final SimpleSymbol Lit86;
    static final SimpleSymbol Lit87;
    static final SimpleSymbol Lit88;
    static final SimpleSymbol Lit89;
    static final SimpleSymbol Lit9;
    static final SyntaxRules Lit90;
    static final SimpleSymbol Lit91;
    static final SimpleSymbol Lit92;
    static final SyntaxRules Lit93;
    static final SimpleSymbol Lit94;
    static final SyntaxPattern Lit95;
    static final SyntaxTemplate Lit96;
    static final SyntaxPattern Lit97;
    static final SyntaxTemplate Lit98;
    static final SimpleSymbol Lit99;
    static final ModuleMethod lambda$Fn1;
    static final ModuleMethod lambda$Fn2;
    static final ModuleMethod lambda$Fn3;
    public static final ModuleMethod test$Mnapply;
    public static final Macro test$Mnapproximate;
    public static final Macro test$Mnassert;
    public static final Macro test$Mnend;
    public static final Macro test$Mneq;
    public static final Macro test$Mnequal;
    public static final Macro test$Mneqv;
    public static final Macro test$Mnerror;
    public static final Macro test$Mnexpect$Mnfail;
    public static final Macro test$Mngroup$Mnwith$Mncleanup;
    public static Boolean test$Mnlog$Mnto$Mnfile;
    public static final Macro test$Mnmatch$Mnall;
    public static final Macro test$Mnmatch$Mnany;
    public static final ModuleMethod test$Mnmatch$Mnname;
    public static final Macro test$Mnmatch$Mnnth;
    public static final ModuleMethod test$Mnon$Mnbad$Mncount$Mnsimple;
    public static final ModuleMethod test$Mnon$Mnbad$Mnend$Mnname$Mnsimple;
    public static final ModuleMethod test$Mnon$Mnfinal$Mnsimple;
    public static final ModuleMethod test$Mnon$Mngroup$Mnbegin$Mnsimple;
    public static final ModuleMethod test$Mnon$Mngroup$Mnend$Mnsimple;
    static final ModuleMethod test$Mnon$Mntest$Mnbegin$Mnsimple;
    public static final ModuleMethod test$Mnon$Mntest$Mnend$Mnsimple;
    public static final ModuleMethod test$Mnpassed$Qu;
    public static final ModuleMethod test$Mnread$Mneval$Mnstring;
    public static final ModuleMethod test$Mnresult$Mnalist;
    public static final ModuleMethod test$Mnresult$Mnalist$Ex;
    public static final ModuleMethod test$Mnresult$Mnclear;
    public static final ModuleMethod test$Mnresult$Mnkind;
    public static final Macro test$Mnresult$Mnref;
    public static final ModuleMethod test$Mnresult$Mnremove;
    public static final ModuleMethod test$Mnresult$Mnset$Ex;
    static final Class test$Mnrunner;
    public static final ModuleMethod test$Mnrunner$Mnaux$Mnvalue;
    public static final ModuleMethod test$Mnrunner$Mnaux$Mnvalue$Ex;
    public static final ModuleMethod test$Mnrunner$Mncreate;
    public static Object test$Mnrunner$Mncurrent;
    public static Object test$Mnrunner$Mnfactory;
    public static final ModuleMethod test$Mnrunner$Mnfail$Mncount;
    public static final ModuleMethod test$Mnrunner$Mnfail$Mncount$Ex;
    public static final ModuleMethod test$Mnrunner$Mnget;
    public static final ModuleMethod test$Mnrunner$Mngroup$Mnpath;
    public static final ModuleMethod test$Mnrunner$Mngroup$Mnstack;
    public static final ModuleMethod test$Mnrunner$Mngroup$Mnstack$Ex;
    public static final ModuleMethod test$Mnrunner$Mnnull;
    public static final ModuleMethod test$Mnrunner$Mnon$Mnbad$Mncount;
    public static final ModuleMethod test$Mnrunner$Mnon$Mnbad$Mncount$Ex;
    public static final ModuleMethod test$Mnrunner$Mnon$Mnbad$Mnend$Mnname;
    public static final ModuleMethod test$Mnrunner$Mnon$Mnbad$Mnend$Mnname$Ex;
    public static final ModuleMethod test$Mnrunner$Mnon$Mnfinal;
    public static final ModuleMethod test$Mnrunner$Mnon$Mnfinal$Ex;
    public static final ModuleMethod test$Mnrunner$Mnon$Mngroup$Mnbegin;
    public static final ModuleMethod test$Mnrunner$Mnon$Mngroup$Mnbegin$Ex;
    public static final ModuleMethod test$Mnrunner$Mnon$Mngroup$Mnend;
    public static final ModuleMethod test$Mnrunner$Mnon$Mngroup$Mnend$Ex;
    public static final ModuleMethod test$Mnrunner$Mnon$Mntest$Mnbegin;
    public static final ModuleMethod test$Mnrunner$Mnon$Mntest$Mnbegin$Ex;
    public static final ModuleMethod test$Mnrunner$Mnon$Mntest$Mnend;
    public static final ModuleMethod test$Mnrunner$Mnon$Mntest$Mnend$Ex;
    public static final ModuleMethod test$Mnrunner$Mnpass$Mncount;
    public static final ModuleMethod test$Mnrunner$Mnpass$Mncount$Ex;
    public static final ModuleMethod test$Mnrunner$Mnreset;
    public static final ModuleMethod test$Mnrunner$Mnsimple;
    public static final ModuleMethod test$Mnrunner$Mnskip$Mncount;
    public static final ModuleMethod test$Mnrunner$Mnskip$Mncount$Ex;
    public static final ModuleMethod test$Mnrunner$Mntest$Mnname;
    public static final ModuleMethod test$Mnrunner$Mnxfail$Mncount;
    public static final ModuleMethod test$Mnrunner$Mnxfail$Mncount$Ex;
    public static final ModuleMethod test$Mnrunner$Mnxpass$Mncount;
    public static final ModuleMethod test$Mnrunner$Mnxpass$Mncount$Ex;
    public static final ModuleMethod test$Mnrunner$Qu;
    public static final Macro test$Mnskip;
    public static final Macro test$Mnwith$Mnrunner;

    public testing() {
        ModuleInfo.register(this);
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext callContext) {
        Consumer consumer = callContext.consumer;
        test$Mnlog$Mnto$Mnfile = Boolean.TRUE;
        test$Mnrunner$Mncurrent = parameters.makeParameter(Boolean.FALSE);
        test$Mnrunner$Mnfactory = parameters.makeParameter(test$Mnrunner$Mnsimple);
    }

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("dynamic-wind");
        Lit165 = simpleSymbol;
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f("p");
        Lit164 = simpleSymbol2;
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) a.f("exp");
        Lit163 = simpleSymbol3;
        SimpleSymbol simpleSymbol4 = (SimpleSymbol) a.f("res");
        Lit162 = simpleSymbol4;
        SimpleSymbol simpleSymbol5 = (SimpleSymbol) a.f("if");
        Lit161 = simpleSymbol5;
        SimpleSymbol simpleSymbol6 = (SimpleSymbol) a.f("name");
        Lit160 = simpleSymbol6;
        SimpleSymbol simpleSymbol7 = (SimpleSymbol) a.f(GetNamedPart.INSTANCEOF_METHOD_NAME);
        Lit159 = simpleSymbol7;
        SimpleSymbol simpleSymbol8 = (SimpleSymbol) a.f("cond");
        Lit158 = simpleSymbol8;
        SimpleSymbol simpleSymbol9 = (SimpleSymbol) a.f("actual-error");
        Lit157 = simpleSymbol9;
        SimpleSymbol simpleSymbol10 = (SimpleSymbol) a.f("<java.lang.Throwable>");
        Lit156 = simpleSymbol10;
        SimpleSymbol simpleSymbol11 = (SimpleSymbol) a.f("actual-value");
        Lit155 = simpleSymbol11;
        SimpleSymbol simpleSymbol12 = (SimpleSymbol) a.f("try-catch");
        Lit154 = simpleSymbol12;
        SimpleSymbol simpleSymbol13 = (SimpleSymbol) a.f("et");
        Lit153 = simpleSymbol13;
        SimpleSymbol simpleSymbol14 = (SimpleSymbol) a.f("expected-error");
        Lit152 = simpleSymbol14;
        SimpleSymbol simpleSymbol15 = (SimpleSymbol) a.f("ex");
        Lit151 = simpleSymbol15;
        SimpleSymbol simpleSymbol16 = (SimpleSymbol) a.f("let*");
        Lit150 = simpleSymbol16;
        SimpleSymbol simpleSymbol17 = (SimpleSymbol) a.f("r");
        Lit149 = simpleSymbol17;
        SimpleSymbol simpleSymbol18 = (SimpleSymbol) a.f("saved-runner");
        Lit148 = simpleSymbol18;
        SimpleSymbol simpleSymbol19 = (SimpleSymbol) a.f("lambda");
        Lit147 = simpleSymbol19;
        SimpleSymbol simpleSymbol20 = (SimpleSymbol) a.f("test-runner-current");
        Lit146 = simpleSymbol20;
        SimpleSymbol simpleSymbol21 = (SimpleSymbol) a.f("cons");
        Lit145 = simpleSymbol21;
        SimpleSymbol simpleSymbol22 = (SimpleSymbol) a.f("let");
        Lit144 = simpleSymbol22;
        SimpleSymbol simpleSymbol23 = (SimpleSymbol) a.f("runner");
        Lit143 = simpleSymbol23;
        SimpleSymbol simpleSymbol24 = (SimpleSymbol) a.f("test-read-eval-string");
        Lit142 = simpleSymbol24;
        SimpleSymbol simpleSymbol25 = (SimpleSymbol) a.f("test-match-name");
        Lit141 = simpleSymbol25;
        SimpleSymbol simpleSymbol26 = (SimpleSymbol) a.f("test-expect-fail");
        Lit139 = simpleSymbol26;
        SyntaxPattern syntaxPattern = new SyntaxPattern("\f\u0018\r\u0007\u0000\b\b", new Object[0], 1);
        SimpleSymbol simpleSymbol27 = (SimpleSymbol) a.f("test-runner-get");
        Lit60 = simpleSymbol27;
        LList lList = LList.Empty;
        PairWithPosition pairWithPositionMake = PairWithPosition.make(PairWithPosition.make(simpleSymbol23, PairWithPosition.make(PairWithPosition.make(simpleSymbol27, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3952660), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3952660), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3952652), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3952651);
        SimpleSymbol simpleSymbol28 = (SimpleSymbol) a.f("%test-runner-fail-list!");
        Lit34 = simpleSymbol28;
        SimpleSymbol simpleSymbol29 = (SimpleSymbol) a.f("test-match-all");
        Lit131 = simpleSymbol29;
        SimpleSymbol simpleSymbol30 = (SimpleSymbol) a.f("%test-as-specifier");
        Lit136 = simpleSymbol30;
        SimpleSymbol simpleSymbol31 = (SimpleSymbol) a.f("%test-runner-fail-list");
        Lit33 = simpleSymbol31;
        SyntaxRules syntaxRules = new SyntaxRules(new Object[]{simpleSymbol26}, new SyntaxRule[]{new SyntaxRule(syntaxPattern, "\u0003", "\u0011\u0018\u0004\u0011\u0018\f\b\u0011\u0018\u0014\u0011\u0018\u001c\b\u0011\u0018$Q\u0011\u0018,\b\u0005\u0011\u00184\b\u0003\u0018<", new Object[]{simpleSymbol22, pairWithPositionMake, simpleSymbol28, simpleSymbol23, simpleSymbol21, simpleSymbol29, simpleSymbol30, PairWithPosition.make(PairWithPosition.make(simpleSymbol31, PairWithPosition.make(simpleSymbol23, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3964958), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3964934), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3964934)}, 1)}, 1);
        Lit140 = syntaxRules;
        SimpleSymbol simpleSymbol32 = (SimpleSymbol) a.f("test-skip");
        Lit137 = simpleSymbol32;
        Object[] objArr = {simpleSymbol32};
        SyntaxPattern syntaxPattern2 = new SyntaxPattern("\f\u0018\r\u0007\u0000\b\b", new Object[0], 1);
        PairWithPosition pairWithPositionMake2 = PairWithPosition.make(PairWithPosition.make(simpleSymbol23, PairWithPosition.make(PairWithPosition.make(simpleSymbol27, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3919892), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3919892), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3919884), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3919883);
        SimpleSymbol simpleSymbol33 = (SimpleSymbol) a.f("%test-runner-skip-list!");
        Lit32 = simpleSymbol33;
        SimpleSymbol simpleSymbol34 = (SimpleSymbol) a.f("%test-runner-skip-list");
        Lit31 = simpleSymbol34;
        SyntaxRules syntaxRules2 = new SyntaxRules(objArr, new SyntaxRule[]{new SyntaxRule(syntaxPattern2, "\u0003", "\u0011\u0018\u0004\u0011\u0018\f\b\u0011\u0018\u0014\u0011\u0018\u001c\b\u0011\u0018$Q\u0011\u0018,\b\u0005\u0011\u00184\b\u0003\u0018<", new Object[]{simpleSymbol22, pairWithPositionMake2, simpleSymbol33, simpleSymbol23, simpleSymbol21, simpleSymbol29, simpleSymbol30, PairWithPosition.make(PairWithPosition.make(simpleSymbol34, PairWithPosition.make(simpleSymbol23, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3932190), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3932166), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3932166)}, 1)}, 1);
        Lit138 = syntaxRules2;
        SimpleSymbol simpleSymbol35 = (SimpleSymbol) a.f("test-match-any");
        Lit134 = simpleSymbol35;
        SyntaxPattern syntaxPattern3 = new SyntaxPattern("\f\u0018\r\u0007\u0000\b\b", new Object[0], 1);
        SimpleSymbol simpleSymbol36 = (SimpleSymbol) a.f("%test-match-any");
        Lit133 = simpleSymbol36;
        SyntaxRules syntaxRules3 = new SyntaxRules(new Object[]{simpleSymbol35}, new SyntaxRule[]{new SyntaxRule(syntaxPattern3, "\u0003", "\u0011\u0018\u0004\b\u0005\u0011\u0018\f\b\u0003", new Object[]{simpleSymbol36, simpleSymbol30}, 1)}, 1);
        Lit135 = syntaxRules3;
        SyntaxPattern syntaxPattern4 = new SyntaxPattern("\f\u0018\r\u0007\u0000\b\b", new Object[0], 1);
        SimpleSymbol simpleSymbol37 = (SimpleSymbol) a.f("%test-match-all");
        Lit130 = simpleSymbol37;
        SyntaxRules syntaxRules4 = new SyntaxRules(new Object[]{simpleSymbol29}, new SyntaxRule[]{new SyntaxRule(syntaxPattern4, "\u0003", "\u0011\u0018\u0004\b\u0005\u0011\u0018\f\b\u0003", new Object[]{simpleSymbol37, simpleSymbol30}, 1)}, 1);
        Lit132 = syntaxRules4;
        SimpleSymbol simpleSymbol38 = (SimpleSymbol) a.f("test-match-nth");
        Lit128 = simpleSymbol38;
        Object[] objArr2 = {simpleSymbol38};
        SyntaxPattern syntaxPattern5 = new SyntaxPattern("\f\u0018\f\u0007\b", new Object[0], 1);
        IntNum intNumMake = IntNum.make(1);
        Lit13 = intNumMake;
        SyntaxRule syntaxRule = new SyntaxRule(syntaxPattern5, "\u0001", "\u0011\u0018\u0004\t\u0003\u0018\f", new Object[]{simpleSymbol38, PairWithPosition.make(intNumMake, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3727384)}, 0);
        SyntaxPattern syntaxPattern6 = new SyntaxPattern("\f\u0018\f\u0007\f\u000f\b", new Object[0], 2);
        SimpleSymbol simpleSymbol39 = (SimpleSymbol) a.f("%test-match-nth");
        Lit127 = simpleSymbol39;
        SyntaxRules syntaxRules5 = new SyntaxRules(objArr2, new SyntaxRule[]{syntaxRule, new SyntaxRule(syntaxPattern6, "\u0001\u0001", "\u0011\u0018\u0004\t\u0003\b\u000b", new Object[]{simpleSymbol39}, 0)}, 2);
        Lit129 = syntaxRules5;
        SimpleSymbol simpleSymbol40 = (SimpleSymbol) a.f("test-with-runner");
        Lit125 = simpleSymbol40;
        SyntaxRules syntaxRules6 = new SyntaxRules(new Object[]{simpleSymbol40}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\r\u000f\b\b\b", new Object[0], 2), "\u0001\u0003", "\u0011\u0018\u0004\u0011\u0018\f\b\u0011\u0018\u0014Y\u0011\u0018\u001c\t\u0010\b\u0011\u0018$\b\u0003A\u0011\u0018\u001c\t\u0010\b\r\u000b\u0018,", new Object[]{simpleSymbol22, PairWithPosition.make(PairWithPosition.make(simpleSymbol18, PairWithPosition.make(PairWithPosition.make(simpleSymbol20, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3657754), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3657754), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3657740), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3657739), simpleSymbol, simpleSymbol19, simpleSymbol20, PairWithPosition.make(PairWithPosition.make(simpleSymbol19, PairWithPosition.make(lList, PairWithPosition.make(PairWithPosition.make(simpleSymbol20, PairWithPosition.make(simpleSymbol18, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3674156), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3674135), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3674135), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3674132), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3674124), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3674124)}, 1)}, 2);
        Lit126 = syntaxRules6;
        SimpleSymbol simpleSymbol41 = (SimpleSymbol) a.f("test-apply");
        Lit124 = simpleSymbol41;
        PairWithPosition pairWithPositionMake3 = PairWithPosition.make(PairWithPosition.make(simpleSymbol17, PairWithPosition.make(PairWithPosition.make(simpleSymbol27, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3514382), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3514382), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3514379), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3514378);
        SimpleSymbol simpleSymbol42 = (SimpleSymbol) a.f("test-result-alist!");
        Lit52 = simpleSymbol42;
        SimpleSymbol simpleSymbol43 = (SimpleSymbol) a.f("%test-error");
        Lit115 = simpleSymbol43;
        Boolean bool = Boolean.TRUE;
        Lit123 = new SyntaxTemplate("\u0001\u0001\u0001", "\u0011\u0018\u0004\u0011\u0018\fA\u0011\u0018\u0014\u0011\u0018\u001c\b\u0013\b\u0011\u0018$\u0011\u0018\u001c\u0011\u0018,\b\u000b", new Object[]{simpleSymbol16, pairWithPositionMake3, simpleSymbol42, simpleSymbol17, simpleSymbol43, bool}, 0);
        Lit122 = new SyntaxPattern(",\f\u0007\f\u000f\b\f\u0017\b", new Object[0], 3);
        Lit121 = new SyntaxTemplate("\u0001\u0001\u0001\u0001", "\u0011\u0018\u0004\u0011\u0018\fA\u0011\u0018\u0014\u0011\u0018\u001c\b\u001b\b\u0011\u0018$\u0011\u0018\u001c\t\u000b\b\u0013", new Object[]{simpleSymbol16, PairWithPosition.make(PairWithPosition.make(simpleSymbol17, PairWithPosition.make(PairWithPosition.make(simpleSymbol27, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3493902), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3493902), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3493899), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3493898), simpleSymbol42, simpleSymbol17, simpleSymbol43}, 0);
        Lit120 = new SyntaxPattern("<\f\u0007\f\u000f\f\u0017\b\f\u001f\b", new Object[0], 4);
        PairWithPosition pairWithPositionMake4 = PairWithPosition.make(simpleSymbol17, PairWithPosition.make(PairWithPosition.make(simpleSymbol27, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3469326), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3469326), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3469323);
        SimpleSymbol simpleSymbol44 = (SimpleSymbol) a.f(LispLanguage.quote_sym);
        Lit15 = simpleSymbol44;
        SimpleSymbol simpleSymbol45 = (SimpleSymbol) a.f("test-name");
        Lit7 = simpleSymbol45;
        Lit119 = new SyntaxTemplate("\u0001\u0001\u0001\u0001\u0001", "\u0011\u0018\u0004I\u0011\u0018\f\b\u0011\u0018\u0014\b\u000b©\u0011\u0018\u001c\u0011\u0018$\b\u0011\u0018,A\u0011\u0018,\u0011\u00184\b\u000b\b#\b\u0011\u0018<\u0011\u0018$\t\u0013\b\u001b", new Object[]{simpleSymbol16, pairWithPositionMake4, simpleSymbol6, simpleSymbol42, simpleSymbol17, simpleSymbol21, PairWithPosition.make(simpleSymbol44, PairWithPosition.make(simpleSymbol45, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3477545), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3477545), simpleSymbol43}, 0);
        Lit118 = new SyntaxPattern("L\f\u0007\f\u000f\f\u0017\f\u001f\b\f'\b", new Object[0], 5);
        SimpleSymbol simpleSymbol46 = (SimpleSymbol) a.f("test-error");
        Lit117 = simpleSymbol46;
        Object[] objArr3 = {simpleSymbol43};
        SyntaxPattern syntaxPattern7 = new SyntaxPattern("\f\u0018\f\u0007\f\u0002\f\u000f\b", new Object[]{bool}, 2);
        SimpleSymbol simpleSymbol47 = (SimpleSymbol) a.f("%test-on-test-begin");
        Lit86 = simpleSymbol47;
        SimpleSymbol simpleSymbol48 = (SimpleSymbol) a.f("test-result-set!");
        Lit78 = simpleSymbol48;
        PairWithPosition pairWithPositionMake5 = PairWithPosition.make(PairWithPosition.make(simpleSymbol44, PairWithPosition.make(simpleSymbol14, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3223581), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3223581), PairWithPosition.make(bool, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3223596), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3223580);
        SimpleSymbol simpleSymbol49 = (SimpleSymbol) a.f("%test-on-test-end");
        Lit87 = simpleSymbol49;
        PairWithPosition pairWithPositionMake6 = PairWithPosition.make(simpleSymbol44, PairWithPosition.make(simpleSymbol11, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3239966), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3239966);
        Boolean bool2 = Boolean.FALSE;
        PairWithPosition pairWithPositionMake7 = PairWithPosition.make(bool2, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3244041);
        PairWithPosition pairWithPositionMake8 = PairWithPosition.make(PairWithPosition.make(simpleSymbol44, PairWithPosition.make(simpleSymbol9, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3252256), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3252256), PairWithPosition.make(simpleSymbol15, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3252269), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3252255);
        PairWithPosition pairWithPositionMake9 = PairWithPosition.make(bool, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3256331);
        SimpleSymbol simpleSymbol50 = (SimpleSymbol) a.f("%test-report-result");
        Lit83 = simpleSymbol50;
        SyntaxRules syntaxRules7 = new SyntaxRules(objArr3, new SyntaxRule[]{new SyntaxRule(syntaxPattern7, "\u0001\u0001", "\u0011\u0018\u0004\b)\u0011\u0018\f\b\u00039\u0011\u0018\u0014\t\u0003\u0018\u001cũ\u0011\u0018$\t\u0003\b\u0011\u0018,\u0091\u0011\u00184\t\u0010Q\u0011\u0018\u0014\t\u0003\u0011\u0018<\b\u000b\u0018D\b\u0011\u0018L\u0011\u0018T9\u0011\u0018\u0014\t\u0003\u0018\\\u0018d\u0018l", new Object[]{simpleSymbol8, simpleSymbol47, simpleSymbol48, pairWithPositionMake5, simpleSymbol49, simpleSymbol12, simpleSymbol22, pairWithPositionMake6, pairWithPositionMake7, simpleSymbol15, simpleSymbol10, pairWithPositionMake8, pairWithPositionMake9, PairWithPosition.make(PairWithPosition.make(simpleSymbol50, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3260424), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3260424)}, 0), new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\b", new Object[0], 3), "\u0001\u0001\u0001", "\u0011\u0018\u0004)\u0011\u0018\f\b\u0003\b\u0011\u0018\u00141\b\u0011\u0018\u001c\b\u000b9\u0011\u0018$\t\u0003\u0018,ũ\u0011\u00184\t\u0003\b\u0011\u0018<\u0091\u0011\u0018\u0014\t\u0010Q\u0011\u0018$\t\u0003\u0011\u0018D\b\u0013\u0018L\b\u0011\u0018T\u0011\u0018\\9\u0011\u0018$\t\u0003\u0018d\u0018l\u0018t", new Object[]{simpleSymbol5, simpleSymbol47, simpleSymbol22, simpleSymbol13, simpleSymbol48, PairWithPosition.make(PairWithPosition.make(simpleSymbol44, PairWithPosition.make(simpleSymbol14, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3276828), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3276828), PairWithPosition.make(simpleSymbol13, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3276843), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3276827), simpleSymbol49, simpleSymbol12, PairWithPosition.make(simpleSymbol44, PairWithPosition.make(simpleSymbol11, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3293213), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3293213), PairWithPosition.make(bool2, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3297288), simpleSymbol15, simpleSymbol10, PairWithPosition.make(PairWithPosition.make(simpleSymbol44, PairWithPosition.make(simpleSymbol9, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3305503), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3305503), PairWithPosition.make(simpleSymbol15, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3305516), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3305502), PairWithPosition.make(PairWithPosition.make(simpleSymbol8, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make((SimpleSymbol) a.f("and"), PairWithPosition.make(PairWithPosition.make(simpleSymbol7, PairWithPosition.make(simpleSymbol13, PairWithPosition.make((SimpleSymbol) a.f("<gnu.bytecode.ClassType>"), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3309604), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3309601), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3309590), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make((SimpleSymbol) a.f("$lookup$"), a.c((SimpleSymbol) a.f("isSubclass"), lList, (SimpleSymbol) a.f(LispLanguage.quasiquote_sym), lList, (SimpleSymbol) a.f("gnu.bytecode.ClassType")), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3313673), PairWithPosition.make(simpleSymbol13, PairWithPosition.make(simpleSymbol10, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3313710), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3313707), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3313672), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3313672), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3309590), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3309585), PairWithPosition.make(PairWithPosition.make(simpleSymbol7, PairWithPosition.make(simpleSymbol15, PairWithPosition.make(simpleSymbol13, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3317784), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3317781), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3317770), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3317770), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3309584), PairWithPosition.make(PairWithPosition.make((SimpleSymbol) a.f("else"), PairWithPosition.make(bool, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3321871), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3321865), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3321865), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3309584), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3309578), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3309578), PairWithPosition.make(PairWithPosition.make(simpleSymbol50, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3325959), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 3325959)}, 0)}, 3);
        Lit116 = syntaxRules7;
        PairWithPosition pairWithPositionMake10 = PairWithPosition.make(PairWithPosition.make(simpleSymbol17, PairWithPosition.make(PairWithPosition.make(simpleSymbol27, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2916364), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2916364), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2916361), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2916360);
        SimpleSymbol simpleSymbol51 = (SimpleSymbol) a.f("%test-comp2body");
        Lit89 = simpleSymbol51;
        SimpleSymbol simpleSymbol52 = (SimpleSymbol) a.f("%test-approximimate=");
        Lit91 = simpleSymbol52;
        Lit114 = new SyntaxTemplate("\u0001\u0001\u0001\u0001\u0001", "\u0011\u0018\u0004\u0011\u0018\fA\u0011\u0018\u0014\u0011\u0018\u001c\b#\b\u0011\u0018$\u0011\u0018\u001c)\u0011\u0018,\b\u001b\t\u000b\b\u0013", new Object[]{simpleSymbol16, pairWithPositionMake10, simpleSymbol42, simpleSymbol17, simpleSymbol51, simpleSymbol52}, 0);
        Lit113 = new SyntaxPattern("L\f\u0007\f\u000f\f\u0017\f\u001f\b\f'\b", new Object[0], 5);
        Lit112 = new SyntaxTemplate("\u0001\u0001\u0001\u0001\u0001\u0001", "\u0011\u0018\u0004I\u0011\u0018\f\b\u0011\u0018\u0014\b\u000b©\u0011\u0018\u001c\u0011\u0018$\b\u0011\u0018,A\u0011\u0018,\u0011\u00184\b\u000b\b+\b\u0011\u0018<\u0011\u0018$)\u0011\u0018D\b#\t\u0013\b\u001b", new Object[]{simpleSymbol16, PairWithPosition.make(simpleSymbol17, PairWithPosition.make(PairWithPosition.make(simpleSymbol27, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2891788), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2891788), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2891785), simpleSymbol6, simpleSymbol42, simpleSymbol17, simpleSymbol21, PairWithPosition.make(simpleSymbol44, PairWithPosition.make(simpleSymbol45, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2900007), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2900007), simpleSymbol51, simpleSymbol52}, 0);
        Lit111 = new SyntaxPattern("\\\f\u0007\f\u000f\f\u0017\f\u001f\f'\b\f/\b", new Object[0], 6);
        SimpleSymbol simpleSymbol53 = (SimpleSymbol) a.f("test-approximate");
        Lit110 = simpleSymbol53;
        Lit109 = new SyntaxTemplate("", "\u0018\u0004", new Object[]{(SimpleSymbol) a.f("equal?")}, 0);
        SimpleSymbol simpleSymbol54 = (SimpleSymbol) a.f("test-equal");
        Lit108 = simpleSymbol54;
        Lit107 = new SyntaxTemplate("", "\u0018\u0004", new Object[]{(SimpleSymbol) a.f("eq?")}, 0);
        SimpleSymbol simpleSymbol55 = (SimpleSymbol) a.f("test-eq");
        Lit106 = simpleSymbol55;
        Lit105 = new SyntaxTemplate("", "\u0018\u0004", new Object[]{(SimpleSymbol) a.f("eqv?")}, 0);
        SimpleSymbol simpleSymbol56 = (SimpleSymbol) a.f("test-eqv");
        Lit104 = simpleSymbol56;
        PairWithPosition pairWithPositionMake11 = PairWithPosition.make(PairWithPosition.make(simpleSymbol17, PairWithPosition.make(PairWithPosition.make(simpleSymbol27, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2781198), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2781198), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2781195), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2781194);
        SimpleSymbol simpleSymbol57 = (SimpleSymbol) a.f("%test-comp1body");
        Lit92 = simpleSymbol57;
        Lit103 = new SyntaxTemplate("\u0001\u0001\u0001", "\u0011\u0018\u0004\u0011\u0018\fA\u0011\u0018\u0014\u0011\u0018\u001c\b\u0013\b\u0011\u0018$\u0011\u0018\u001c\b\u000b", new Object[]{simpleSymbol16, pairWithPositionMake11, simpleSymbol42, simpleSymbol17, simpleSymbol57}, 0);
        Lit102 = new SyntaxPattern(",\f\u0007\f\u000f\b\f\u0017\b", new Object[0], 3);
        Lit101 = new SyntaxTemplate("\u0001\u0001\u0001\u0001", "\u0011\u0018\u0004I\u0011\u0018\f\b\u0011\u0018\u0014\b\u000b©\u0011\u0018\u001c\u0011\u0018$\b\u0011\u0018,A\u0011\u0018,\u0011\u00184\b\u000b\b\u001b\b\u0011\u0018<\u0011\u0018$\b\u0013", new Object[]{simpleSymbol16, PairWithPosition.make(simpleSymbol17, PairWithPosition.make(PairWithPosition.make(simpleSymbol27, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2756622), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2756622), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2756619), simpleSymbol6, simpleSymbol42, simpleSymbol17, simpleSymbol21, PairWithPosition.make(simpleSymbol44, PairWithPosition.make(simpleSymbol45, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2764841), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2764841), simpleSymbol57}, 0);
        Lit100 = new SyntaxPattern("<\f\u0007\f\u000f\f\u0017\b\f\u001f\b", new Object[0], 4);
        SimpleSymbol simpleSymbol58 = (SimpleSymbol) a.f("test-assert");
        Lit99 = simpleSymbol58;
        SimpleSymbol simpleSymbol59 = (SimpleSymbol) a.f("%test-end");
        Lit69 = simpleSymbol59;
        Lit98 = new SyntaxTemplate("\u0001\u0001", "\u0011\u0018\u0004\u0011\u0018\f\b\u000b", new Object[]{simpleSymbol59, bool2}, 0);
        Lit97 = new SyntaxPattern("\u001c\f\u0007\b\f\u000f\b", new Object[0], 2);
        Lit96 = new SyntaxTemplate("\u0001\u0001\u0001", "\u0011\u0018\u0004\t\u000b\b\u0013", new Object[]{simpleSymbol59}, 0);
        Lit95 = new SyntaxPattern(",\f\u0007\f\u000f\b\f\u0017\b", new Object[0], 3);
        SimpleSymbol simpleSymbol60 = (SimpleSymbol) a.f("test-end");
        Lit94 = simpleSymbol60;
        Object[] objArr4 = {simpleSymbol57};
        SyntaxPattern syntaxPattern8 = new SyntaxPattern("\f\u0018\f\u0007\f\u000f\b", new Object[0], 2);
        SimpleSymbol simpleSymbol61 = (SimpleSymbol) a.f("%test-evaluate-with-catch");
        Lit84 = simpleSymbol61;
        SyntaxRules syntaxRules8 = new SyntaxRules(objArr4, new SyntaxRule[]{new SyntaxRule(syntaxPattern8, "\u0001\u0001", "\u0011\u0018\u0004\t\u0010ű\u0011\u0018\f)\u0011\u0018\u0014\b\u0003\b\u0011\u0018\u0004\t\u0010\b\u0011\u0018\u0004Q\b\u0011\u0018\u001c\b\u0011\u0018$\b\u000b9\u0011\u0018,\t\u0003\u00184\b\u0011\u0018<\t\u0003\u0018D\u0018L", new Object[]{simpleSymbol22, simpleSymbol5, simpleSymbol47, simpleSymbol4, simpleSymbol61, simpleSymbol48, PairWithPosition.make(PairWithPosition.make(simpleSymbol44, PairWithPosition.make(simpleSymbol11, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2666526), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2666526), PairWithPosition.make(simpleSymbol4, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2666539), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2666525), simpleSymbol49, PairWithPosition.make(simpleSymbol4, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2670622), PairWithPosition.make(PairWithPosition.make(simpleSymbol50, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2674696), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2674696)}, 0)}, 2);
        Lit93 = syntaxRules8;
        SyntaxRules syntaxRules9 = new SyntaxRules(new Object[]{simpleSymbol51}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\f\u001f\b", new Object[0], 4), "\u0001\u0001\u0001\u0001", "\u0011\u0018\u0004\t\u0010Ǳ\u0011\u0018\f)\u0011\u0018\u0014\b\u0003\b\u0011\u0018\u00041\b\u0011\u0018\u001c\b\u00139\u0011\u0018$\t\u0003\u0018,\b\u0011\u0018\u0004Q\b\u0011\u00184\b\u0011\u0018<\b\u001b9\u0011\u0018$\t\u0003\u0018D\b\u0011\u0018L\t\u0003\b\t\u000b\u0018T\u0018\\", new Object[]{simpleSymbol22, simpleSymbol5, simpleSymbol47, simpleSymbol3, simpleSymbol48, PairWithPosition.make(PairWithPosition.make(simpleSymbol44, PairWithPosition.make((SimpleSymbol) a.f("expected-value"), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2592794), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2592794), PairWithPosition.make(simpleSymbol3, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2592809), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2592793), simpleSymbol4, simpleSymbol61, PairWithPosition.make(PairWithPosition.make(simpleSymbol44, PairWithPosition.make(simpleSymbol11, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2600988), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2600988), PairWithPosition.make(simpleSymbol4, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2601001), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2600987), simpleSymbol49, PairWithPosition.make(simpleSymbol3, PairWithPosition.make(simpleSymbol4, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2605094), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2605090), PairWithPosition.make(PairWithPosition.make(simpleSymbol50, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2609158), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2609158)}, 0)}, 4);
        Lit90 = syntaxRules9;
        SimpleSymbol simpleSymbol62 = (SimpleSymbol) a.f("test-runner-test-name");
        Lit88 = simpleSymbol62;
        SyntaxRules syntaxRules10 = new SyntaxRules(new Object[]{simpleSymbol61}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\b", new Object[0], 1), "\u0001", "\u0011\u0018\u0004\t\u0003\u0018\f", new Object[]{simpleSymbol12, PairWithPosition.make(PairWithPosition.make(simpleSymbol15, PairWithPosition.make(simpleSymbol10, PairWithPosition.make(PairWithPosition.make(simpleSymbol48, PairWithPosition.make(PairWithPosition.make(simpleSymbol20, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2347035), PairWithPosition.make(PairWithPosition.make(simpleSymbol44, PairWithPosition.make(simpleSymbol9, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2347058), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2347058), PairWithPosition.make(simpleSymbol15, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2347071), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2347057), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2347035), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2347017), PairWithPosition.make(bool2, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2351113), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2347017), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2342921), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2342917), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2342917)}, 0)}, 1);
        Lit85 = syntaxRules10;
        SimpleSymbol simpleSymbol63 = (SimpleSymbol) a.f("test-passed?");
        Lit82 = simpleSymbol63;
        SimpleSymbol simpleSymbol64 = (SimpleSymbol) a.f("test-result-kind");
        Lit81 = simpleSymbol64;
        SimpleSymbol simpleSymbol65 = (SimpleSymbol) a.f("test-result-remove");
        Lit80 = simpleSymbol65;
        SimpleSymbol simpleSymbol66 = (SimpleSymbol) a.f("test-result-clear");
        Lit79 = simpleSymbol66;
        SimpleSymbol simpleSymbol67 = (SimpleSymbol) a.f("test-on-test-end-simple");
        Lit77 = simpleSymbol67;
        SimpleSymbol simpleSymbol68 = (SimpleSymbol) a.f("test-result-ref");
        Lit75 = simpleSymbol68;
        SyntaxRule syntaxRule2 = new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\b", new Object[0], 2), "\u0001\u0001", "\u0011\u0018\u0004\t\u0003\t\u000b\u0018\f", new Object[]{simpleSymbol68, PairWithPosition.make(bool2, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 1933348)}, 0);
        SyntaxPattern syntaxPattern9 = new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\b", new Object[0], 3);
        SimpleSymbol simpleSymbol69 = (SimpleSymbol) a.f("assq");
        SimpleSymbol simpleSymbol70 = (SimpleSymbol) a.f("test-result-alist");
        Lit51 = simpleSymbol70;
        SyntaxRules syntaxRules11 = new SyntaxRules(new Object[]{simpleSymbol68}, new SyntaxRule[]{syntaxRule2, new SyntaxRule(syntaxPattern9, "\u0001\u0001\u0001", "\u0011\u0018\u0004\u0081\b\u0011\u0018\f\b\u0011\u0018\u0014\t\u000b\b\u0011\u0018\u001c\b\u0003\b\u0011\u0018$\u0011\u0018\f\u0011\u0018,\b\u0013", new Object[]{simpleSymbol22, simpleSymbol2, simpleSymbol69, simpleSymbol70, simpleSymbol5, PairWithPosition.make((SimpleSymbol) a.f("cdr"), PairWithPosition.make(simpleSymbol2, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 1945619), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 1945614)}, 0)}, 3);
        Lit76 = syntaxRules11;
        SimpleSymbol simpleSymbol71 = (SimpleSymbol) a.f("test-on-test-begin-simple");
        Lit74 = simpleSymbol71;
        SimpleSymbol simpleSymbol72 = (SimpleSymbol) a.f("test-group-with-cleanup");
        Lit72 = simpleSymbol72;
        SyntaxPattern syntaxPattern10 = new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\b", new Object[0], 3);
        SimpleSymbol simpleSymbol73 = (SimpleSymbol) a.f("test-group");
        Lit70 = simpleSymbol73;
        SyntaxRules syntaxRules12 = new SyntaxRules(new Object[]{simpleSymbol72}, new SyntaxRule[]{new SyntaxRule(syntaxPattern10, "\u0001\u0001\u0001", "\u0011\u0018\u0004\t\u0003\b\u0011\u0018\f\u0011\u0018\u00149\u0011\u0018\u001c\t\u0010\b\u000b\b\u0011\u0018\u001c\t\u0010\b\u0013", new Object[]{simpleSymbol73, simpleSymbol, PairWithPosition.make(simpleSymbol19, PairWithPosition.make(lList, PairWithPosition.make(bool2, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 1826831), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 1826828), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 1826820), simpleSymbol19}, 0), new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\b", new Object[0], 2), "\u0001\u0001", "\u0011\u0018\u0004\t\u0003\u0011\u0018\f\b\u000b", new Object[]{simpleSymbol72, bool2}, 0), new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\f\u001f#", new Object[0], 5), "\u0001\u0001\u0001\u0001\u0000", "\u0011\u0018\u0004\t\u00039\u0011\u0018\f\t\u000b\b\u0013\t\u001b\"", new Object[]{simpleSymbol72, (SimpleSymbol) a.f("begin")}, 0)}, 5);
        Lit73 = syntaxRules12;
        SyntaxPattern syntaxPattern11 = new SyntaxPattern("\f\u0018\f\u0007\u000b", new Object[0], 2);
        PairWithPosition pairWithPositionMake12 = PairWithPosition.make(PairWithPosition.make(simpleSymbol17, PairWithPosition.make(PairWithPosition.make(simpleSymbol20, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 1769487), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 1769487), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 1769484), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 1769483);
        SimpleSymbol simpleSymbol74 = (SimpleSymbol) a.f("list");
        PairWithPosition pairWithPositionMake13 = PairWithPosition.make(simpleSymbol44, PairWithPosition.make(simpleSymbol45, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 1777707), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 1777707);
        SimpleSymbol simpleSymbol75 = (SimpleSymbol) a.f("%test-should-execute");
        Lit62 = simpleSymbol75;
        SyntaxRules syntaxRules13 = new SyntaxRules(new Object[]{simpleSymbol73}, new SyntaxRule[]{new SyntaxRule(syntaxPattern11, "\u0001\u0000", "\u0011\u0018\u0004\u0011\u0018\f\u0099\u0011\u0018\u0014\u0011\u0018\u001c\b\u0011\u0018$\b\u0011\u0018,\u0011\u00184\b\u0003\b\u0011\u0018<\u0011\u0018D\b\u0011\u0018LY\u0011\u0018T\t\u0010\b\u0011\u0018\\\b\u00031\u0011\u0018T\t\u0010\n\b\u0011\u0018T\t\u0010\b\u0011\u0018d\b\u0003", new Object[]{simpleSymbol22, pairWithPositionMake12, simpleSymbol42, simpleSymbol17, simpleSymbol74, simpleSymbol21, pairWithPositionMake13, simpleSymbol5, PairWithPosition.make(simpleSymbol75, PairWithPosition.make(simpleSymbol17, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 1781794), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 1781772), simpleSymbol, simpleSymbol19, (SimpleSymbol) a.f("test-begin"), simpleSymbol60}, 0)}, 2);
        Lit71 = syntaxRules13;
        SimpleSymbol simpleSymbol76 = (SimpleSymbol) a.f("test-on-final-simple");
        Lit68 = simpleSymbol76;
        SimpleSymbol simpleSymbol77 = (SimpleSymbol) a.f("test-on-bad-end-name-simple");
        Lit67 = simpleSymbol77;
        SimpleSymbol simpleSymbol78 = (SimpleSymbol) a.f("test-on-bad-count-simple");
        Lit66 = simpleSymbol78;
        SimpleSymbol simpleSymbol79 = (SimpleSymbol) a.f("test-on-group-end-simple");
        Lit65 = simpleSymbol79;
        SimpleSymbol simpleSymbol80 = (SimpleSymbol) a.f("test-on-group-begin-simple");
        Lit64 = simpleSymbol80;
        SimpleSymbol simpleSymbol81 = (SimpleSymbol) a.f("%test-begin");
        Lit63 = simpleSymbol81;
        SimpleSymbol simpleSymbol82 = (SimpleSymbol) a.f("test-runner-create");
        Lit61 = simpleSymbol82;
        SimpleSymbol simpleSymbol83 = (SimpleSymbol) a.f("test-runner-simple");
        Lit59 = simpleSymbol83;
        SimpleSymbol simpleSymbol84 = (SimpleSymbol) a.f("test-runner-null");
        Lit58 = simpleSymbol84;
        SimpleSymbol simpleSymbol85 = (SimpleSymbol) a.f("%test-null-callback");
        Lit57 = simpleSymbol85;
        SimpleSymbol simpleSymbol86 = (SimpleSymbol) a.f("test-runner-group-path");
        Lit56 = simpleSymbol86;
        SimpleSymbol simpleSymbol87 = (SimpleSymbol) a.f("test-runner-reset");
        Lit55 = simpleSymbol87;
        SimpleSymbol simpleSymbol88 = (SimpleSymbol) a.f("test-runner-aux-value!");
        Lit54 = simpleSymbol88;
        SimpleSymbol simpleSymbol89 = (SimpleSymbol) a.f("test-runner-aux-value");
        Lit53 = simpleSymbol89;
        SimpleSymbol simpleSymbol90 = (SimpleSymbol) a.f("test-runner-on-bad-end-name!");
        Lit50 = simpleSymbol90;
        SimpleSymbol simpleSymbol91 = (SimpleSymbol) a.f("test-runner-on-bad-end-name");
        Lit49 = simpleSymbol91;
        SimpleSymbol simpleSymbol92 = (SimpleSymbol) a.f("test-runner-on-bad-count!");
        Lit48 = simpleSymbol92;
        SimpleSymbol simpleSymbol93 = (SimpleSymbol) a.f("test-runner-on-bad-count");
        Lit47 = simpleSymbol93;
        SimpleSymbol simpleSymbol94 = (SimpleSymbol) a.f("test-runner-on-final!");
        Lit46 = simpleSymbol94;
        SimpleSymbol simpleSymbol95 = (SimpleSymbol) a.f("test-runner-on-final");
        Lit45 = simpleSymbol95;
        SimpleSymbol simpleSymbol96 = (SimpleSymbol) a.f("test-runner-on-group-end!");
        Lit44 = simpleSymbol96;
        SimpleSymbol simpleSymbol97 = (SimpleSymbol) a.f("test-runner-on-group-end");
        Lit43 = simpleSymbol97;
        SimpleSymbol simpleSymbol98 = (SimpleSymbol) a.f("test-runner-on-group-begin!");
        Lit42 = simpleSymbol98;
        SimpleSymbol simpleSymbol99 = (SimpleSymbol) a.f("test-runner-on-group-begin");
        Lit41 = simpleSymbol99;
        SimpleSymbol simpleSymbol100 = (SimpleSymbol) a.f("test-runner-on-test-end!");
        Lit40 = simpleSymbol100;
        SimpleSymbol simpleSymbol101 = (SimpleSymbol) a.f("test-runner-on-test-end");
        Lit39 = simpleSymbol101;
        SimpleSymbol simpleSymbol102 = (SimpleSymbol) a.f("test-runner-on-test-begin!");
        Lit38 = simpleSymbol102;
        SimpleSymbol simpleSymbol103 = (SimpleSymbol) a.f("test-runner-on-test-begin");
        Lit37 = simpleSymbol103;
        SimpleSymbol simpleSymbol104 = (SimpleSymbol) a.f("test-runner-group-stack!");
        Lit36 = simpleSymbol104;
        SimpleSymbol simpleSymbol105 = (SimpleSymbol) a.f("test-runner-group-stack");
        Lit35 = simpleSymbol105;
        SimpleSymbol simpleSymbol106 = (SimpleSymbol) a.f("test-runner-skip-count!");
        Lit30 = simpleSymbol106;
        SimpleSymbol simpleSymbol107 = (SimpleSymbol) a.f("test-runner-skip-count");
        Lit29 = simpleSymbol107;
        SimpleSymbol simpleSymbol108 = (SimpleSymbol) a.f("test-runner-xfail-count!");
        Lit28 = simpleSymbol108;
        SimpleSymbol simpleSymbol109 = (SimpleSymbol) a.f("test-runner-xfail-count");
        Lit27 = simpleSymbol109;
        SimpleSymbol simpleSymbol110 = (SimpleSymbol) a.f("test-runner-xpass-count!");
        Lit26 = simpleSymbol110;
        SimpleSymbol simpleSymbol111 = (SimpleSymbol) a.f("test-runner-xpass-count");
        Lit25 = simpleSymbol111;
        SimpleSymbol simpleSymbol112 = (SimpleSymbol) a.f("test-runner-fail-count!");
        Lit24 = simpleSymbol112;
        SimpleSymbol simpleSymbol113 = (SimpleSymbol) a.f("test-runner-fail-count");
        Lit23 = simpleSymbol113;
        SimpleSymbol simpleSymbol114 = (SimpleSymbol) a.f("test-runner-pass-count!");
        Lit22 = simpleSymbol114;
        SimpleSymbol simpleSymbol115 = (SimpleSymbol) a.f("test-runner-pass-count");
        Lit21 = simpleSymbol115;
        SimpleSymbol simpleSymbol116 = (SimpleSymbol) a.f("test-runner?");
        Lit20 = simpleSymbol116;
        Lit19 = new SyntaxTemplate("\u0001\u0001\u0001\u0001\u0001", "\u0011\u0018\u0004\u0011\u0018\fA\u0011\u0018\u0014\u0011\u0018\u001c\b\u001b\b\u0011\u0018$\u0011\u0018\u001c\t#\t\u000b\b\u0013", new Object[]{simpleSymbol16, PairWithPosition.make(PairWithPosition.make(simpleSymbol17, PairWithPosition.make(PairWithPosition.make(simpleSymbol27, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2834444), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2834444), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2834441), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2834440), simpleSymbol42, simpleSymbol17, simpleSymbol51}, 0);
        Lit18 = new SyntaxPattern("<\f\u0007\f\u000f\f\u0017\b\f\u001f\f'\b", new Object[0], 5);
        Lit17 = new SyntaxTemplate("\u0001\u0001\u0001\u0001\u0001\u0001", "\u0011\u0018\u0004I\u0011\u0018\f\b\u0011\u0018\u0014\b\u000b©\u0011\u0018\u001c\u0011\u0018$\b\u0011\u0018,A\u0011\u0018,\u0011\u00184\b\u000b\b#\b\u0011\u0018<\u0011\u0018$\t+\t\u0013\b\u001b", new Object[]{simpleSymbol16, PairWithPosition.make(simpleSymbol17, PairWithPosition.make(PairWithPosition.make(simpleSymbol27, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2809868), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2809868), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2809865), simpleSymbol6, simpleSymbol42, simpleSymbol17, simpleSymbol21, PairWithPosition.make(simpleSymbol44, PairWithPosition.make(simpleSymbol45, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2818087), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2818087), simpleSymbol51}, 0);
        Lit16 = new SyntaxPattern("L\f\u0007\f\u000f\f\u0017\f\u001f\b\f'\f/\b", new Object[0], 6);
        SimpleSymbol simpleSymbol117 = (SimpleSymbol) a.f("fail");
        Lit14 = simpleSymbol117;
        SimpleSymbol simpleSymbol118 = (SimpleSymbol) a.f("pass");
        Lit12 = simpleSymbol118;
        SimpleSymbol simpleSymbol119 = (SimpleSymbol) a.f("xpass");
        Lit9 = simpleSymbol119;
        Lit11 = PairWithPosition.make(simpleSymbol118, PairWithPosition.make(simpleSymbol119, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2220088), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2220082);
        SimpleSymbol simpleSymbol120 = (SimpleSymbol) a.f("source-file");
        Lit4 = simpleSymbol120;
        SimpleSymbol simpleSymbol121 = (SimpleSymbol) a.f("source-line");
        Lit5 = simpleSymbol121;
        SimpleSymbol simpleSymbol122 = (SimpleSymbol) a.f("source-form");
        Lit6 = simpleSymbol122;
        Lit10 = PairWithPosition.make(simpleSymbol45, PairWithPosition.make(simpleSymbol120, PairWithPosition.make(simpleSymbol121, PairWithPosition.make(simpleSymbol122, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2072618), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2072606), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2072594), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 2072583);
        Lit8 = PairWithPosition.make(simpleSymbol117, PairWithPosition.make(simpleSymbol119, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 1966107), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm", 1966101);
        Lit3 = (SimpleSymbol) a.f("xfail");
        Lit2 = (SimpleSymbol) a.f("skip");
        Lit1 = (SimpleSymbol) a.f("result-kind");
        Lit0 = IntNum.make(0);
        testing testingVar = new testing();
        $instance = testingVar;
        test$Mnrunner = test$Mnrunner.class;
        test$Mnrunner$Qu = new ModuleMethod(testingVar, 12, simpleSymbol116, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        test$Mnrunner$Mnpass$Mncount = new ModuleMethod(testingVar, 13, simpleSymbol115, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        test$Mnrunner$Mnpass$Mncount$Ex = new ModuleMethod(testingVar, 14, simpleSymbol114, 8194);
        test$Mnrunner$Mnfail$Mncount = new ModuleMethod(testingVar, 15, simpleSymbol113, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        test$Mnrunner$Mnfail$Mncount$Ex = new ModuleMethod(testingVar, 16, simpleSymbol112, 8194);
        test$Mnrunner$Mnxpass$Mncount = new ModuleMethod(testingVar, 17, simpleSymbol111, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        test$Mnrunner$Mnxpass$Mncount$Ex = new ModuleMethod(testingVar, 18, simpleSymbol110, 8194);
        test$Mnrunner$Mnxfail$Mncount = new ModuleMethod(testingVar, 19, simpleSymbol109, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        test$Mnrunner$Mnxfail$Mncount$Ex = new ModuleMethod(testingVar, 20, simpleSymbol108, 8194);
        test$Mnrunner$Mnskip$Mncount = new ModuleMethod(testingVar, 21, simpleSymbol107, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        test$Mnrunner$Mnskip$Mncount$Ex = new ModuleMethod(testingVar, 22, simpleSymbol106, 8194);
        $Prvt$$Pctest$Mnrunner$Mnskip$Mnlist = new ModuleMethod(testingVar, 23, simpleSymbol34, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        $Prvt$$Pctest$Mnrunner$Mnskip$Mnlist$Ex = new ModuleMethod(testingVar, 24, simpleSymbol33, 8194);
        $Prvt$$Pctest$Mnrunner$Mnfail$Mnlist = new ModuleMethod(testingVar, 25, simpleSymbol31, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        $Prvt$$Pctest$Mnrunner$Mnfail$Mnlist$Ex = new ModuleMethod(testingVar, 26, simpleSymbol28, 8194);
        test$Mnrunner$Mngroup$Mnstack = new ModuleMethod(testingVar, 27, simpleSymbol105, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        test$Mnrunner$Mngroup$Mnstack$Ex = new ModuleMethod(testingVar, 28, simpleSymbol104, 8194);
        test$Mnrunner$Mnon$Mntest$Mnbegin = new ModuleMethod(testingVar, 29, simpleSymbol103, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        test$Mnrunner$Mnon$Mntest$Mnbegin$Ex = new ModuleMethod(testingVar, 30, simpleSymbol102, 8194);
        test$Mnrunner$Mnon$Mntest$Mnend = new ModuleMethod(testingVar, 31, simpleSymbol101, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        test$Mnrunner$Mnon$Mntest$Mnend$Ex = new ModuleMethod(testingVar, 32, simpleSymbol100, 8194);
        test$Mnrunner$Mnon$Mngroup$Mnbegin = new ModuleMethod(testingVar, 33, simpleSymbol99, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        test$Mnrunner$Mnon$Mngroup$Mnbegin$Ex = new ModuleMethod(testingVar, 34, simpleSymbol98, 8194);
        test$Mnrunner$Mnon$Mngroup$Mnend = new ModuleMethod(testingVar, 35, simpleSymbol97, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        test$Mnrunner$Mnon$Mngroup$Mnend$Ex = new ModuleMethod(testingVar, 36, simpleSymbol96, 8194);
        test$Mnrunner$Mnon$Mnfinal = new ModuleMethod(testingVar, 37, simpleSymbol95, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        test$Mnrunner$Mnon$Mnfinal$Ex = new ModuleMethod(testingVar, 38, simpleSymbol94, 8194);
        test$Mnrunner$Mnon$Mnbad$Mncount = new ModuleMethod(testingVar, 39, simpleSymbol93, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        test$Mnrunner$Mnon$Mnbad$Mncount$Ex = new ModuleMethod(testingVar, 40, simpleSymbol92, 8194);
        test$Mnrunner$Mnon$Mnbad$Mnend$Mnname = new ModuleMethod(testingVar, 41, simpleSymbol91, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        test$Mnrunner$Mnon$Mnbad$Mnend$Mnname$Ex = new ModuleMethod(testingVar, 42, simpleSymbol90, 8194);
        test$Mnresult$Mnalist = new ModuleMethod(testingVar, 43, simpleSymbol70, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        test$Mnresult$Mnalist$Ex = new ModuleMethod(testingVar, 44, simpleSymbol42, 8194);
        test$Mnrunner$Mnaux$Mnvalue = new ModuleMethod(testingVar, 45, simpleSymbol89, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        test$Mnrunner$Mnaux$Mnvalue$Ex = new ModuleMethod(testingVar, 46, simpleSymbol88, 8194);
        test$Mnrunner$Mnreset = new ModuleMethod(testingVar, 47, simpleSymbol87, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        test$Mnrunner$Mngroup$Mnpath = new ModuleMethod(testingVar, 48, simpleSymbol86, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        $Pctest$Mnnull$Mncallback = new ModuleMethod(testingVar, 49, simpleSymbol85, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        ModuleMethod moduleMethod = new ModuleMethod(testingVar, 50, null, 12291);
        moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm:182");
        lambda$Fn1 = moduleMethod;
        ModuleMethod moduleMethod2 = new ModuleMethod(testingVar, 51, null, 12291);
        moduleMethod2.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm:187");
        lambda$Fn2 = moduleMethod2;
        ModuleMethod moduleMethod3 = new ModuleMethod(testingVar, 52, null, 12291);
        moduleMethod3.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm:188");
        lambda$Fn3 = moduleMethod3;
        test$Mnrunner$Mnnull = new ModuleMethod(testingVar, 53, simpleSymbol84, 0);
        test$Mnrunner$Mnsimple = new ModuleMethod(testingVar, 54, simpleSymbol83, 0);
        test$Mnrunner$Mnget = new ModuleMethod(testingVar, 55, simpleSymbol27, 0);
        test$Mnrunner$Mncreate = new ModuleMethod(testingVar, 56, simpleSymbol82, 0);
        $Prvt$$Pctest$Mnshould$Mnexecute = new ModuleMethod(testingVar, 57, simpleSymbol75, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        $Pctest$Mnbegin = new ModuleMethod(testingVar, 58, simpleSymbol81, 8194);
        test$Mnon$Mngroup$Mnbegin$Mnsimple = new ModuleMethod(testingVar, 59, simpleSymbol80, 12291);
        test$Mnon$Mngroup$Mnend$Mnsimple = new ModuleMethod(testingVar, 60, simpleSymbol79, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        test$Mnon$Mnbad$Mncount$Mnsimple = new ModuleMethod(testingVar, 61, simpleSymbol78, 12291);
        test$Mnon$Mnbad$Mnend$Mnname$Mnsimple = new ModuleMethod(testingVar, 62, simpleSymbol77, 12291);
        test$Mnon$Mnfinal$Mnsimple = new ModuleMethod(testingVar, 63, simpleSymbol76, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        $Prvt$$Pctest$Mnend = new ModuleMethod(testingVar, 64, simpleSymbol59, 8194);
        $Prvt$test$Mngroup = Macro.make(simpleSymbol73, syntaxRules13, testingVar);
        test$Mngroup$Mnwith$Mncleanup = Macro.make(simpleSymbol72, syntaxRules12, testingVar);
        test$Mnon$Mntest$Mnbegin$Mnsimple = new ModuleMethod(testingVar, 65, simpleSymbol71, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        test$Mnresult$Mnref = Macro.make(simpleSymbol68, syntaxRules11, testingVar);
        test$Mnon$Mntest$Mnend$Mnsimple = new ModuleMethod(testingVar, 66, simpleSymbol67, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        test$Mnresult$Mnset$Ex = new ModuleMethod(testingVar, 67, simpleSymbol48, 12291);
        test$Mnresult$Mnclear = new ModuleMethod(testingVar, 68, simpleSymbol66, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        test$Mnresult$Mnremove = new ModuleMethod(testingVar, 69, simpleSymbol65, 8194);
        test$Mnresult$Mnkind = new ModuleMethod(testingVar, 70, simpleSymbol64, -4096);
        test$Mnpassed$Qu = new ModuleMethod(testingVar, 71, simpleSymbol63, -4096);
        $Prvt$$Pctest$Mnreport$Mnresult = new ModuleMethod(testingVar, 72, simpleSymbol50, 0);
        $Prvt$$Pctest$Mnevaluate$Mnwith$Mncatch = Macro.make(simpleSymbol61, syntaxRules10, testingVar);
        $Prvt$$Pctest$Mnon$Mntest$Mnbegin = new ModuleMethod(testingVar, 73, simpleSymbol47, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        $Prvt$$Pctest$Mnon$Mntest$Mnend = new ModuleMethod(testingVar, 74, simpleSymbol49, 8194);
        test$Mnrunner$Mntest$Mnname = new ModuleMethod(testingVar, 75, simpleSymbol62, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        $Prvt$$Pctest$Mncomp2body = Macro.make(simpleSymbol51, syntaxRules9, testingVar);
        $Prvt$$Pctest$Mnapproximimate$Eq = new ModuleMethod(testingVar, 76, simpleSymbol52, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        $Prvt$$Pctest$Mncomp1body = Macro.make(simpleSymbol57, syntaxRules8, testingVar);
        ModuleMethod moduleMethod4 = new ModuleMethod(testingVar, 77, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod4.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm:660");
        test$Mnend = Macro.make(simpleSymbol60, moduleMethod4, testingVar);
        ModuleMethod moduleMethod5 = new ModuleMethod(testingVar, 78, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod5.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm:669");
        test$Mnassert = Macro.make(simpleSymbol58, moduleMethod5, testingVar);
        ModuleMethod moduleMethod6 = new ModuleMethod(testingVar, 79, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod6.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm:696");
        test$Mneqv = Macro.make(simpleSymbol56, moduleMethod6, testingVar);
        ModuleMethod moduleMethod7 = new ModuleMethod(testingVar, 80, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod7.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm:698");
        test$Mneq = Macro.make(simpleSymbol55, moduleMethod7, testingVar);
        ModuleMethod moduleMethod8 = new ModuleMethod(testingVar, 81, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod8.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm:700");
        test$Mnequal = Macro.make(simpleSymbol54, moduleMethod8, testingVar);
        ModuleMethod moduleMethod9 = new ModuleMethod(testingVar, 82, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod9.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm:702");
        test$Mnapproximate = Macro.make(simpleSymbol53, moduleMethod9, testingVar);
        $Prvt$$Pctest$Mnerror = Macro.make(simpleSymbol43, syntaxRules7, testingVar);
        ModuleMethod moduleMethod10 = new ModuleMethod(testingVar, 83, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod10.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm:843");
        test$Mnerror = Macro.make(simpleSymbol46, moduleMethod10, testingVar);
        test$Mnapply = new ModuleMethod(testingVar, 84, simpleSymbol41, -4095);
        test$Mnwith$Mnrunner = Macro.make(simpleSymbol40, syntaxRules6, testingVar);
        $Prvt$$Pctest$Mnmatch$Mnnth = new ModuleMethod(testingVar, 85, simpleSymbol39, 8194);
        test$Mnmatch$Mnnth = Macro.make(simpleSymbol38, syntaxRules5, testingVar);
        $Prvt$$Pctest$Mnmatch$Mnall = new ModuleMethod(testingVar, 86, simpleSymbol37, -4096);
        test$Mnmatch$Mnall = Macro.make(simpleSymbol29, syntaxRules4, testingVar);
        $Prvt$$Pctest$Mnmatch$Mnany = new ModuleMethod(testingVar, 87, simpleSymbol36, -4096);
        test$Mnmatch$Mnany = Macro.make(simpleSymbol35, syntaxRules3, testingVar);
        $Prvt$$Pctest$Mnas$Mnspecifier = new ModuleMethod(testingVar, 88, simpleSymbol30, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        test$Mnskip = Macro.make(simpleSymbol32, syntaxRules2, testingVar);
        test$Mnexpect$Mnfail = Macro.make(simpleSymbol26, syntaxRules, testingVar);
        test$Mnmatch$Mnname = new ModuleMethod(testingVar, 89, simpleSymbol25, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        test$Mnread$Mneval$Mnstring = new ModuleMethod(testingVar, 90, simpleSymbol24, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        testingVar.run();
    }

    public static test$Mnrunner $PcTestRunnerAlloc() {
        return new test$Mnrunner();
    }

    public static boolean isTestRunner(Object obj) {
        return obj instanceof test$Mnrunner;
    }

    public static Object testResultAlist(test$Mnrunner test_mnrunner) {
        return test_mnrunner.result$Mnalist;
    }

    public static Object testRunnerAuxValue(test$Mnrunner test_mnrunner) {
        return test_mnrunner.aux$Mnvalue;
    }

    public static Object testRunnerFailCount(test$Mnrunner test_mnrunner) {
        return test_mnrunner.fail$Mncount;
    }

    public static Object testRunnerGroupStack(test$Mnrunner test_mnrunner) {
        return test_mnrunner.group$Mnstack;
    }

    public static Object testRunnerOnBadCount(test$Mnrunner test_mnrunner) {
        return test_mnrunner.on$Mnbad$Mncount;
    }

    public static Object testRunnerOnBadEndName(test$Mnrunner test_mnrunner) {
        return test_mnrunner.on$Mnbad$Mnend$Mnname;
    }

    public static Object testRunnerOnFinal(test$Mnrunner test_mnrunner) {
        return test_mnrunner.on$Mnfinal;
    }

    public static Object testRunnerOnGroupBegin(test$Mnrunner test_mnrunner) {
        return test_mnrunner.on$Mngroup$Mnbegin;
    }

    public static Object testRunnerOnGroupEnd(test$Mnrunner test_mnrunner) {
        return test_mnrunner.on$Mngroup$Mnend;
    }

    public static Object testRunnerOnTestBegin(test$Mnrunner test_mnrunner) {
        return test_mnrunner.on$Mntest$Mnbegin;
    }

    public static Object testRunnerOnTestEnd(test$Mnrunner test_mnrunner) {
        return test_mnrunner.on$Mntest$Mnend;
    }

    public static Object testRunnerPassCount(test$Mnrunner test_mnrunner) {
        return test_mnrunner.pass$Mncount;
    }

    public static Object testRunnerSkipCount(test$Mnrunner test_mnrunner) {
        return test_mnrunner.skip$Mncount;
    }

    public static Object testRunnerXfailCount(test$Mnrunner test_mnrunner) {
        return test_mnrunner.xfail$Mncount;
    }

    public static Object testRunnerXpassCount(test$Mnrunner test_mnrunner) {
        return test_mnrunner.xpass$Mncount;
    }

    @Override // gnu.expr.ModuleBody
    public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 12) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 13) {
            if (!(obj instanceof test$Mnrunner)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 65) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i != 66) {
            switch (i) {
                case 15:
                    if (!(obj instanceof test$Mnrunner)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 17:
                    if (!(obj instanceof test$Mnrunner)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 19:
                    if (!(obj instanceof test$Mnrunner)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 21:
                    if (!(obj instanceof test$Mnrunner)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 23:
                    if (!(obj instanceof test$Mnrunner)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 25:
                    if (!(obj instanceof test$Mnrunner)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 27:
                    if (!(obj instanceof test$Mnrunner)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 29:
                    if (!(obj instanceof test$Mnrunner)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 31:
                    if (!(obj instanceof test$Mnrunner)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 33:
                    if (!(obj instanceof test$Mnrunner)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 35:
                    if (!(obj instanceof test$Mnrunner)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 37:
                    if (!(obj instanceof test$Mnrunner)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 39:
                    if (!(obj instanceof test$Mnrunner)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 41:
                    if (!(obj instanceof test$Mnrunner)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 43:
                    if (!(obj instanceof test$Mnrunner)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 45:
                    if (!(obj instanceof test$Mnrunner)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 57:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 60:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 63:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 68:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 73:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                default:
                    switch (i) {
                        case 47:
                            callContext.value1 = obj;
                            callContext.proc = moduleMethod;
                            callContext.pc = 1;
                            return 0;
                        case 48:
                            callContext.value1 = obj;
                            callContext.proc = moduleMethod;
                            callContext.pc = 1;
                            return 0;
                        case 49:
                            callContext.value1 = obj;
                            callContext.proc = moduleMethod;
                            callContext.pc = 1;
                            return 0;
                        default:
                            switch (i) {
                                case 75:
                                    callContext.value1 = obj;
                                    callContext.proc = moduleMethod;
                                    callContext.pc = 1;
                                    return 0;
                                case 76:
                                    callContext.value1 = obj;
                                    callContext.proc = moduleMethod;
                                    callContext.pc = 1;
                                    return 0;
                                case 77:
                                    callContext.value1 = obj;
                                    callContext.proc = moduleMethod;
                                    callContext.pc = 1;
                                    return 0;
                                case 78:
                                    callContext.value1 = obj;
                                    callContext.proc = moduleMethod;
                                    callContext.pc = 1;
                                    return 0;
                                case 79:
                                    callContext.value1 = obj;
                                    callContext.proc = moduleMethod;
                                    callContext.pc = 1;
                                    return 0;
                                case 80:
                                    callContext.value1 = obj;
                                    callContext.proc = moduleMethod;
                                    callContext.pc = 1;
                                    return 0;
                                case 81:
                                    callContext.value1 = obj;
                                    callContext.proc = moduleMethod;
                                    callContext.pc = 1;
                                    return 0;
                                case 82:
                                    callContext.value1 = obj;
                                    callContext.proc = moduleMethod;
                                    callContext.pc = 1;
                                    return 0;
                                case 83:
                                    callContext.value1 = obj;
                                    callContext.proc = moduleMethod;
                                    callContext.pc = 1;
                                    return 0;
                                default:
                                    switch (i) {
                                        case 88:
                                            callContext.value1 = obj;
                                            callContext.proc = moduleMethod;
                                            callContext.pc = 1;
                                            return 0;
                                        case 89:
                                            callContext.value1 = obj;
                                            callContext.proc = moduleMethod;
                                            callContext.pc = 1;
                                            return 0;
                                        case 90:
                                            callContext.value1 = obj;
                                            callContext.proc = moduleMethod;
                                            callContext.pc = 1;
                                            return 0;
                                        default:
                                            return super.match1(moduleMethod, obj, callContext);
                                    }
                            }
                    }
            }
        }
        callContext.value1 = obj;
        callContext.proc = moduleMethod;
        callContext.pc = 1;
        return 0;
    }

    @Override // gnu.expr.ModuleBody
    public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
        switch (moduleMethod.selector) {
            case 14:
                if (!(obj instanceof test$Mnrunner)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 16:
                if (!(obj instanceof test$Mnrunner)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 18:
                if (!(obj instanceof test$Mnrunner)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 20:
                if (!(obj instanceof test$Mnrunner)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 22:
                if (!(obj instanceof test$Mnrunner)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 24:
                if (!(obj instanceof test$Mnrunner)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 26:
                if (!(obj instanceof test$Mnrunner)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 28:
                if (!(obj instanceof test$Mnrunner)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 30:
                if (!(obj instanceof test$Mnrunner)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 32:
                if (!(obj instanceof test$Mnrunner)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 34:
                if (!(obj instanceof test$Mnrunner)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 36:
                if (!(obj instanceof test$Mnrunner)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 38:
                if (!(obj instanceof test$Mnrunner)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 40:
                if (!(obj instanceof test$Mnrunner)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 42:
                if (!(obj instanceof test$Mnrunner)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 44:
                if (!(obj instanceof test$Mnrunner)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 46:
                if (!(obj instanceof test$Mnrunner)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 58:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 64:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 69:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 74:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 85:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            default:
                return super.match2(moduleMethod, obj, obj2, callContext);
        }
    }

    public static void testRunnerReset(Object obj) {
        try {
            test$Mnrunner test_mnrunner = (test$Mnrunner) obj;
            LList lList = LList.Empty;
            test_mnrunner.result$Mnalist = lList;
            try {
                test$Mnrunner test_mnrunner2 = (test$Mnrunner) obj;
                IntNum intNum = Lit0;
                test_mnrunner2.pass$Mncount = intNum;
                try {
                    ((test$Mnrunner) obj).fail$Mncount = intNum;
                    try {
                        ((test$Mnrunner) obj).xpass$Mncount = intNum;
                        try {
                            ((test$Mnrunner) obj).xfail$Mncount = intNum;
                            try {
                                ((test$Mnrunner) obj).skip$Mncount = intNum;
                                try {
                                    ((test$Mnrunner) obj).total$Mncount = intNum;
                                    try {
                                        ((test$Mnrunner) obj).count$Mnlist = lList;
                                        try {
                                            ((test$Mnrunner) obj).run$Mnlist = Boolean.TRUE;
                                            try {
                                                ((test$Mnrunner) obj).skip$Mnlist = lList;
                                                try {
                                                    ((test$Mnrunner) obj).fail$Mnlist = lList;
                                                    try {
                                                        ((test$Mnrunner) obj).skip$Mnsave = lList;
                                                        try {
                                                            ((test$Mnrunner) obj).fail$Mnsave = lList;
                                                            try {
                                                                ((test$Mnrunner) obj).group$Mnstack = lList;
                                                            } catch (ClassCastException e) {
                                                                throw new WrongType(e, "test-runner-group-stack!", 0, obj);
                                                            }
                                                        } catch (ClassCastException e2) {
                                                            throw new WrongType(e2, "%test-runner-fail-save!", 0, obj);
                                                        }
                                                    } catch (ClassCastException e3) {
                                                        throw new WrongType(e3, "%test-runner-skip-save!", 0, obj);
                                                    }
                                                } catch (ClassCastException e4) {
                                                    throw new WrongType(e4, "%test-runner-fail-list!", 0, obj);
                                                }
                                            } catch (ClassCastException e5) {
                                                throw new WrongType(e5, "%test-runner-skip-list!", 0, obj);
                                            }
                                        } catch (ClassCastException e6) {
                                            throw new WrongType(e6, "%test-runner-run-list!", 0, obj);
                                        }
                                    } catch (ClassCastException e7) {
                                        throw new WrongType(e7, "%test-runner-count-list!", 0, obj);
                                    }
                                } catch (ClassCastException e8) {
                                    throw new WrongType(e8, "%test-runner-total-count!", 0, obj);
                                }
                            } catch (ClassCastException e9) {
                                throw new WrongType(e9, "test-runner-skip-count!", 0, obj);
                            }
                        } catch (ClassCastException e10) {
                            throw new WrongType(e10, "test-runner-xfail-count!", 0, obj);
                        }
                    } catch (ClassCastException e11) {
                        throw new WrongType(e11, "test-runner-xpass-count!", 0, obj);
                    }
                } catch (ClassCastException e12) {
                    throw new WrongType(e12, "test-runner-fail-count!", 0, obj);
                }
            } catch (ClassCastException e13) {
                throw new WrongType(e13, "test-runner-pass-count!", 0, obj);
            }
        } catch (ClassCastException e14) {
            throw new WrongType(e14, "test-result-alist!", 0, obj);
        }
    }

    public static LList testRunnerGroupPath(Object obj) {
        try {
            Object objTestRunnerGroupStack = testRunnerGroupStack((test$Mnrunner) obj);
            try {
                return lists.reverse((LList) objTestRunnerGroupStack);
            } catch (ClassCastException e) {
                throw new WrongType(e, "reverse", 1, objTestRunnerGroupStack);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "test-runner-group-stack", 0, obj);
        }
    }

    public static Boolean $PcTestNullCallback(Object obj) {
        return Boolean.FALSE;
    }

    @Override // gnu.expr.ModuleBody
    public int match0(ModuleMethod moduleMethod, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i != 72) {
            switch (i) {
                case 53:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 54:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 55:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 56:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                default:
                    return super.match0(moduleMethod, callContext);
            }
        }
        callContext.proc = moduleMethod;
        callContext.pc = 0;
        return 0;
    }

    public static test$Mnrunner testRunnerNull() {
        test$Mnrunner test_mnrunner$PcTestRunnerAlloc = $PcTestRunnerAlloc();
        testRunnerReset(test_mnrunner$PcTestRunnerAlloc);
        test_mnrunner$PcTestRunnerAlloc.on$Mngroup$Mnbegin = lambda$Fn1;
        ModuleMethod moduleMethod = $Pctest$Mnnull$Mncallback;
        test_mnrunner$PcTestRunnerAlloc.on$Mngroup$Mnend = moduleMethod;
        test_mnrunner$PcTestRunnerAlloc.on$Mnfinal = moduleMethod;
        test_mnrunner$PcTestRunnerAlloc.on$Mntest$Mnbegin = moduleMethod;
        test_mnrunner$PcTestRunnerAlloc.on$Mntest$Mnend = moduleMethod;
        test_mnrunner$PcTestRunnerAlloc.on$Mnbad$Mncount = lambda$Fn2;
        test_mnrunner$PcTestRunnerAlloc.on$Mnbad$Mnend$Mnname = lambda$Fn3;
        return test_mnrunner$PcTestRunnerAlloc;
    }

    public static Boolean lambda1(Object obj, Object obj2, Object obj3) {
        return Boolean.FALSE;
    }

    @Override // gnu.expr.ModuleBody
    public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 59) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i == 67) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i == 61) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i != 62) {
            switch (i) {
                case 50:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.value3 = obj3;
                    callContext.proc = moduleMethod;
                    callContext.pc = 3;
                    return 0;
                case 51:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.value3 = obj3;
                    callContext.proc = moduleMethod;
                    callContext.pc = 3;
                    return 0;
                case 52:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.value3 = obj3;
                    callContext.proc = moduleMethod;
                    callContext.pc = 3;
                    return 0;
                default:
                    return super.match3(moduleMethod, obj, obj2, obj3, callContext);
            }
        }
        callContext.value1 = obj;
        callContext.value2 = obj2;
        callContext.value3 = obj3;
        callContext.proc = moduleMethod;
        callContext.pc = 3;
        return 0;
    }

    public static Boolean lambda2(Object obj, Object obj2, Object obj3) {
        return Boolean.FALSE;
    }

    public static Boolean lambda3(Object obj, Object obj2, Object obj3) {
        return Boolean.FALSE;
    }

    public static test$Mnrunner testRunnerSimple() {
        test$Mnrunner test_mnrunner$PcTestRunnerAlloc = $PcTestRunnerAlloc();
        testRunnerReset(test_mnrunner$PcTestRunnerAlloc);
        test_mnrunner$PcTestRunnerAlloc.on$Mngroup$Mnbegin = test$Mnon$Mngroup$Mnbegin$Mnsimple;
        test_mnrunner$PcTestRunnerAlloc.on$Mngroup$Mnend = test$Mnon$Mngroup$Mnend$Mnsimple;
        test_mnrunner$PcTestRunnerAlloc.on$Mnfinal = test$Mnon$Mnfinal$Mnsimple;
        test_mnrunner$PcTestRunnerAlloc.on$Mntest$Mnbegin = test$Mnon$Mntest$Mnbegin$Mnsimple;
        test_mnrunner$PcTestRunnerAlloc.on$Mntest$Mnend = test$Mnon$Mntest$Mnend$Mnsimple;
        test_mnrunner$PcTestRunnerAlloc.on$Mnbad$Mncount = test$Mnon$Mnbad$Mncount$Mnsimple;
        test_mnrunner$PcTestRunnerAlloc.on$Mnbad$Mnend$Mnname = test$Mnon$Mnbad$Mnend$Mnname$Mnsimple;
        return test_mnrunner$PcTestRunnerAlloc;
    }

    public static Object testRunnerGet() throws Throwable {
        Object objApply0 = ((Procedure) test$Mnrunner$Mncurrent).apply0();
        if (objApply0 == Boolean.FALSE) {
            misc.error$V("test-runner not initialized - test-begin missing?", new Object[0]);
        }
        return objApply0;
    }

    public static Object $PcTestSpecificierMatches(Object obj, Object obj2) {
        return Scheme.applyToArgs.apply2(obj, obj2);
    }

    public static Object testRunnerCreate() {
        return Scheme.applyToArgs.apply1(((Procedure) test$Mnrunner$Mnfactory).apply0());
    }

    public static Object $PcTestAnySpecifierMatches(Object obj, Object obj2) throws Throwable {
        Boolean bool = Boolean.FALSE;
        while (!lists.isNull(obj)) {
            if ($PcTestSpecificierMatches(lists.car.apply1(obj), obj2) != Boolean.FALSE) {
                bool = Boolean.TRUE;
            }
            obj = lists.cdr.apply1(obj);
        }
        return bool;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0023, code lost:
    
        if (r1 != 0) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0033, code lost:
    
        if ($PcTestAnySpecifierMatches(((gnu.kawa.slib.test$Mnrunner) r5).skip$Mnlist, r5) != java.lang.Boolean.FALSE) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0035, code lost:
    
        testResultSet$Ex(r5, gnu.kawa.slib.testing.Lit1, gnu.kawa.slib.testing.Lit2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x003e, code lost:
    
        return java.lang.Boolean.FALSE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x004c, code lost:
    
        if ($PcTestAnySpecifierMatches(((gnu.kawa.slib.test$Mnrunner) r5).fail$Mnlist, r5) == java.lang.Boolean.FALSE) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x004e, code lost:
    
        r0 = gnu.kawa.slib.testing.Lit1;
        r1 = gnu.kawa.slib.testing.Lit3;
        testResultSet$Ex(r5, r0, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0055, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0056, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0057, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x005f, code lost:
    
        throw new gnu.mapping.WrongType(r1, "%test-runner-fail-list", 0, r5);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object $PcTestShouldExecute(java.lang.Object r5) throws java.lang.Throwable {
        /*
            r0 = 0
            r1 = r5
            gnu.kawa.slib.test$Mnrunner r1 = (gnu.kawa.slib.test$Mnrunner) r1     // Catch: java.lang.ClassCastException -> L73
            java.lang.Object r1 = $PcTestRunnerRunList(r1)
            java.lang.Boolean r2 = java.lang.Boolean.TRUE
            r3 = 1
            if (r1 != r2) goto Lf
            r4 = 1
            goto L10
        Lf:
            r4 = 0
        L10:
            if (r4 == 0) goto L13
            goto L1e
        L13:
            java.lang.Object r1 = $PcTestAnySpecifierMatches(r1, r5)
            java.lang.Boolean r4 = java.lang.Boolean.FALSE     // Catch: java.lang.ClassCastException -> L69
            if (r1 == r4) goto L1d
            r4 = 1
            goto L1e
        L1d:
            r4 = 0
        L1e:
            int r4 = r4 + r3
            r1 = r4 & 1
            if (r1 == 0) goto L26
            if (r1 == 0) goto L3f
            goto L35
        L26:
            r1 = r5
            gnu.kawa.slib.test$Mnrunner r1 = (gnu.kawa.slib.test$Mnrunner) r1     // Catch: java.lang.ClassCastException -> L60
            java.lang.Object r1 = $PcTestRunnerSkipList(r1)
            java.lang.Object r1 = $PcTestAnySpecifierMatches(r1, r5)
            java.lang.Boolean r3 = java.lang.Boolean.FALSE
            if (r1 == r3) goto L3f
        L35:
            gnu.mapping.SimpleSymbol r0 = gnu.kawa.slib.testing.Lit1
            gnu.mapping.SimpleSymbol r1 = gnu.kawa.slib.testing.Lit2
            testResultSet$Ex(r5, r0, r1)
            java.lang.Boolean r5 = java.lang.Boolean.FALSE
            return r5
        L3f:
            r1 = r5
            gnu.kawa.slib.test$Mnrunner r1 = (gnu.kawa.slib.test$Mnrunner) r1     // Catch: java.lang.ClassCastException -> L57
            java.lang.Object r0 = $PcTestRunnerFailList(r1)
            java.lang.Object r0 = $PcTestAnySpecifierMatches(r0, r5)
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            if (r0 == r1) goto L56
            gnu.mapping.SimpleSymbol r0 = gnu.kawa.slib.testing.Lit1
            gnu.mapping.SimpleSymbol r1 = gnu.kawa.slib.testing.Lit3
            testResultSet$Ex(r5, r0, r1)
            return r1
        L56:
            return r2
        L57:
            r1 = move-exception
            gnu.mapping.WrongType r2 = new gnu.mapping.WrongType
            java.lang.String r3 = "%test-runner-fail-list"
            r2.<init>(r1, r3, r0, r5)
            throw r2
        L60:
            r1 = move-exception
            gnu.mapping.WrongType r2 = new gnu.mapping.WrongType
            java.lang.String r3 = "%test-runner-skip-list"
            r2.<init>(r1, r3, r0, r5)
            throw r2
        L69:
            r5 = move-exception
            gnu.mapping.WrongType r0 = new gnu.mapping.WrongType
            java.lang.String r2 = "x"
            r3 = -2
            r0.<init>(r5, r2, r3, r1)
            throw r0
        L73:
            r1 = move-exception
            gnu.mapping.WrongType r2 = new gnu.mapping.WrongType
            java.lang.String r3 = "%test-runner-run-list"
            r2.<init>(r1, r3, r0, r5)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.testing.$PcTestShouldExecute(java.lang.Object):java.lang.Object");
    }

    public static void $PcTestBegin(Object obj, Object obj2) throws Throwable {
        if (((Procedure) test$Mnrunner$Mncurrent).apply0() == Boolean.FALSE) {
            ((Procedure) test$Mnrunner$Mncurrent).apply1(testRunnerCreate());
        }
        Object objApply0 = ((Procedure) test$Mnrunner$Mncurrent).apply0();
        try {
            Scheme.applyToArgs.apply4(testRunnerOnGroupBegin((test$Mnrunner) objApply0), objApply0, obj, obj2);
            try {
                try {
                    try {
                        ((test$Mnrunner) objApply0).skip$Mnsave = lists.cons(((test$Mnrunner) objApply0).skip$Mnlist, ((test$Mnrunner) objApply0).skip$Mnsave);
                        try {
                            try {
                                try {
                                    ((test$Mnrunner) objApply0).fail$Mnsave = lists.cons(((test$Mnrunner) objApply0).fail$Mnlist, ((test$Mnrunner) objApply0).fail$Mnsave);
                                    try {
                                        try {
                                            try {
                                                ((test$Mnrunner) objApply0).count$Mnlist = lists.cons(lists.cons(((test$Mnrunner) objApply0).total$Mncount, obj2), ((test$Mnrunner) objApply0).count$Mnlist);
                                                try {
                                                    try {
                                                        ((test$Mnrunner) objApply0).group$Mnstack = lists.cons(obj, testRunnerGroupStack((test$Mnrunner) objApply0));
                                                    } catch (ClassCastException e) {
                                                        throw new WrongType(e, "test-runner-group-stack", 0, objApply0);
                                                    }
                                                } catch (ClassCastException e2) {
                                                    throw new WrongType(e2, "test-runner-group-stack!", 0, objApply0);
                                                }
                                            } catch (ClassCastException e3) {
                                                throw new WrongType(e3, "%test-runner-count-list", 0, objApply0);
                                            }
                                        } catch (ClassCastException e4) {
                                            throw new WrongType(e4, "%test-runner-total-count", 0, objApply0);
                                        }
                                    } catch (ClassCastException e5) {
                                        throw new WrongType(e5, "%test-runner-count-list!", 0, objApply0);
                                    }
                                } catch (ClassCastException e6) {
                                    throw new WrongType(e6, "%test-runner-fail-save", 0, objApply0);
                                }
                            } catch (ClassCastException e7) {
                                throw new WrongType(e7, "%test-runner-fail-list", 0, objApply0);
                            }
                        } catch (ClassCastException e8) {
                            throw new WrongType(e8, "%test-runner-fail-save!", 0, objApply0);
                        }
                    } catch (ClassCastException e9) {
                        throw new WrongType(e9, "%test-runner-skip-save", 0, objApply0);
                    }
                } catch (ClassCastException e10) {
                    throw new WrongType(e10, "%test-runner-skip-list", 0, objApply0);
                }
            } catch (ClassCastException e11) {
                throw new WrongType(e11, "%test-runner-skip-save!", 0, objApply0);
            }
        } catch (ClassCastException e12) {
            throw new WrongType(e12, "test-runner-on-group-begin", 0, objApply0);
        }
    }

    public static Boolean testOnGroupBeginSimple(Object obj, Object obj2, Object obj3) {
        try {
            if (lists.isNull(testRunnerGroupStack((test$Mnrunner) obj))) {
                ports.display("%%%% Starting test ");
                ports.display(obj2);
                Object objStringAppend = Boolean.TRUE;
                if (!strings.isString(objStringAppend)) {
                    objStringAppend = strings.stringAppend(obj2, ".log");
                }
                try {
                    OutPort outPortOpenOutputFile = ports.openOutputFile(Path.valueOf(objStringAppend));
                    ports.display("%%%% Starting test ", outPortOpenOutputFile);
                    ports.display(obj2, outPortOpenOutputFile);
                    ports.newline(outPortOpenOutputFile);
                    try {
                        ((test$Mnrunner) obj).aux$Mnvalue = outPortOpenOutputFile;
                        ports.display("  (Writing full log to \"");
                        ports.display(objStringAppend);
                        ports.display("\")");
                        ports.newline();
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "test-runner-aux-value!", 0, obj);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "open-output-file", 1, objStringAppend);
                }
            }
            try {
                Object objTestRunnerAuxValue = testRunnerAuxValue((test$Mnrunner) obj);
                if (ports.isOutputPort(objTestRunnerAuxValue)) {
                    ports.display("Group begin: ", objTestRunnerAuxValue);
                    ports.display(obj2, objTestRunnerAuxValue);
                    ports.newline(objTestRunnerAuxValue);
                }
                return Boolean.FALSE;
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "test-runner-aux-value", 0, obj);
            }
        } catch (ClassCastException e4) {
            throw new WrongType(e4, "test-runner-group-stack", 0, obj);
        }
    }

    public static Boolean testOnGroupEndSimple(Object obj) {
        try {
            Object objTestRunnerAuxValue = testRunnerAuxValue((test$Mnrunner) obj);
            if (ports.isOutputPort(objTestRunnerAuxValue)) {
                ports.display("Group end: ", objTestRunnerAuxValue);
                try {
                    ports.display(lists.car.apply1(testRunnerGroupStack((test$Mnrunner) obj)), objTestRunnerAuxValue);
                    ports.newline(objTestRunnerAuxValue);
                } catch (ClassCastException e) {
                    throw new WrongType(e, "test-runner-group-stack", 0, obj);
                }
            }
            return Boolean.FALSE;
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "test-runner-aux-value", 0, obj);
        }
    }

    public static void $PcTestOnBadCountWrite(Object obj, Object obj2, Object obj3, Object obj4) {
        ports.display("*** Total number of tests was ", obj4);
        ports.display(obj2, obj4);
        ports.display(" but should be ", obj4);
        ports.display(obj3, obj4);
        ports.display(". ***", obj4);
        ports.newline(obj4);
        ports.display("*** Discrepancy indicates testsuite error or exceptions. ***", obj4);
        ports.newline(obj4);
    }

    public static void testOnBadCountSimple(Object obj, Object obj2, Object obj3) {
        $PcTestOnBadCountWrite(obj, obj2, obj3, ports.current$Mnoutput$Mnport.apply0());
        try {
            Object objTestRunnerAuxValue = testRunnerAuxValue((test$Mnrunner) obj);
            if (ports.isOutputPort(objTestRunnerAuxValue)) {
                $PcTestOnBadCountWrite(obj, obj2, obj3, objTestRunnerAuxValue);
            }
        } catch (ClassCastException e) {
            throw new WrongType(e, "test-runner-aux-value", 0, obj);
        }
    }

    public static Object testOnBadEndNameSimple(Object obj, Object obj2, Object obj3) {
        return misc.error$V(strings.stringAppend($PcTestFormatLine(obj), "test-end ", obj2, " does not match test-begin ", obj3), new Object[0]);
    }

    public static void $PcTestFinalReport1(Object obj, Object obj2, Object obj3) {
        if (Scheme.numGrt.apply2(obj, Lit0) != Boolean.FALSE) {
            ports.display(obj2, obj3);
            ports.display(obj, obj3);
            ports.newline(obj3);
        }
    }

    public static void $PcTestFinalReportSimple(Object obj, Object obj2) {
        try {
            $PcTestFinalReport1(testRunnerPassCount((test$Mnrunner) obj), "# of expected passes      ", obj2);
            try {
                $PcTestFinalReport1(testRunnerXfailCount((test$Mnrunner) obj), "# of expected failures    ", obj2);
                try {
                    $PcTestFinalReport1(testRunnerXpassCount((test$Mnrunner) obj), "# of unexpected successes ", obj2);
                    try {
                        $PcTestFinalReport1(testRunnerFailCount((test$Mnrunner) obj), "# of unexpected failures  ", obj2);
                        try {
                            $PcTestFinalReport1(testRunnerSkipCount((test$Mnrunner) obj), "# of skipped tests        ", obj2);
                        } catch (ClassCastException e) {
                            throw new WrongType(e, "test-runner-skip-count", 0, obj);
                        }
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "test-runner-fail-count", 0, obj);
                    }
                } catch (ClassCastException e3) {
                    throw new WrongType(e3, "test-runner-xpass-count", 0, obj);
                }
            } catch (ClassCastException e4) {
                throw new WrongType(e4, "test-runner-xfail-count", 0, obj);
            }
        } catch (ClassCastException e5) {
            throw new WrongType(e5, "test-runner-pass-count", 0, obj);
        }
    }

    public static void testOnFinalSimple(Object obj) {
        $PcTestFinalReportSimple(obj, ports.current$Mnoutput$Mnport.apply0());
        try {
            Object objTestRunnerAuxValue = testRunnerAuxValue((test$Mnrunner) obj);
            if (ports.isOutputPort(objTestRunnerAuxValue)) {
                $PcTestFinalReportSimple(obj, objTestRunnerAuxValue);
            }
        } catch (ClassCastException e) {
            throw new WrongType(e, "test-runner-aux-value", 0, obj);
        }
    }

    public static Object $PcTestFormatLine(Object obj) throws Throwable {
        try {
            Object objTestResultAlist = testResultAlist((test$Mnrunner) obj);
            Object objAssq = lists.assq(Lit4, objTestResultAlist);
            Object objAssq2 = lists.assq(Lit5, objTestResultAlist);
            Boolean bool = Boolean.FALSE;
            String strApply1 = objAssq != bool ? lists.cdr.apply1(objAssq) : "";
            if (objAssq2 == bool) {
                return "";
            }
            Object objApply1 = lists.cdr.apply1(objAssq2);
            try {
                return strings.stringAppend(strApply1, ":", numbers.number$To$String((Number) objApply1), ": ");
            } catch (ClassCastException e) {
                throw new WrongType(e, "number->string", 1, objApply1);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "test-result-alist", 0, obj);
        }
    }

    public static Object $PcTestEnd(Object obj, Object obj2) throws Throwable {
        Object objTestRunnerGet = testRunnerGet();
        try {
            Object objTestRunnerGroupStack = testRunnerGroupStack((test$Mnrunner) objTestRunnerGet);
            Object obj$PcTestFormatLine = $PcTestFormatLine(objTestRunnerGet);
            try {
                ((test$Mnrunner) objTestRunnerGet).result$Mnalist = obj2;
                if (lists.isNull(objTestRunnerGroupStack)) {
                    misc.error$V(strings.stringAppend(obj$PcTestFormatLine, "test-end not in a group"), new Object[0]);
                }
                Boolean bool = Boolean.FALSE;
                if (obj == bool ? obj != bool : !IsEqual.apply(obj, lists.car.apply1(objTestRunnerGroupStack))) {
                    try {
                        Scheme.applyToArgs.apply4(testRunnerOnBadEndName((test$Mnrunner) objTestRunnerGet), objTestRunnerGet, obj, lists.car.apply1(objTestRunnerGroupStack));
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "test-runner-on-bad-end-name", 0, objTestRunnerGet);
                    }
                }
                try {
                    Object obj3 = ((test$Mnrunner) objTestRunnerGet).count$Mnlist;
                    Object objApply1 = lists.cdar.apply1(obj3);
                    try {
                        Object objApply2 = AddOp.$Mn.apply2(((test$Mnrunner) objTestRunnerGet).total$Mncount, lists.caar.apply1(obj3));
                        if (objApply1 == bool ? objApply1 != bool : Scheme.numEqu.apply2(objApply1, objApply2) == bool) {
                            try {
                                Scheme.applyToArgs.apply4(testRunnerOnBadCount((test$Mnrunner) objTestRunnerGet), objTestRunnerGet, objApply2, objApply1);
                            } catch (ClassCastException e2) {
                                throw new WrongType(e2, "test-runner-on-bad-count", 0, objTestRunnerGet);
                            }
                        }
                        ApplyToArgs applyToArgs = Scheme.applyToArgs;
                        try {
                            applyToArgs.apply2(testRunnerOnGroupEnd((test$Mnrunner) objTestRunnerGet), objTestRunnerGet);
                            try {
                                test$Mnrunner test_mnrunner = (test$Mnrunner) objTestRunnerGet;
                                GenericProc genericProc = lists.cdr;
                                try {
                                    test_mnrunner.group$Mnstack = genericProc.apply1(testRunnerGroupStack((test$Mnrunner) objTestRunnerGet));
                                    try {
                                        test$Mnrunner test_mnrunner2 = (test$Mnrunner) objTestRunnerGet;
                                        GenericProc genericProc2 = lists.car;
                                        try {
                                            test_mnrunner2.skip$Mnlist = genericProc2.apply1(((test$Mnrunner) objTestRunnerGet).skip$Mnsave);
                                            try {
                                                try {
                                                    ((test$Mnrunner) objTestRunnerGet).skip$Mnsave = genericProc.apply1(((test$Mnrunner) objTestRunnerGet).skip$Mnsave);
                                                    try {
                                                        try {
                                                            ((test$Mnrunner) objTestRunnerGet).fail$Mnlist = genericProc2.apply1(((test$Mnrunner) objTestRunnerGet).fail$Mnsave);
                                                            try {
                                                                try {
                                                                    ((test$Mnrunner) objTestRunnerGet).fail$Mnsave = genericProc.apply1(((test$Mnrunner) objTestRunnerGet).fail$Mnsave);
                                                                    try {
                                                                        ((test$Mnrunner) objTestRunnerGet).count$Mnlist = genericProc.apply1(obj3);
                                                                        try {
                                                                            if (!lists.isNull(testRunnerGroupStack((test$Mnrunner) objTestRunnerGet))) {
                                                                                return Values.empty;
                                                                            }
                                                                            try {
                                                                                return applyToArgs.apply2(testRunnerOnFinal((test$Mnrunner) objTestRunnerGet), objTestRunnerGet);
                                                                            } catch (ClassCastException e3) {
                                                                                throw new WrongType(e3, "test-runner-on-final", 0, objTestRunnerGet);
                                                                            }
                                                                        } catch (ClassCastException e4) {
                                                                            throw new WrongType(e4, "test-runner-group-stack", 0, objTestRunnerGet);
                                                                        }
                                                                    } catch (ClassCastException e5) {
                                                                        throw new WrongType(e5, "%test-runner-count-list!", 0, objTestRunnerGet);
                                                                    }
                                                                } catch (ClassCastException e6) {
                                                                    throw new WrongType(e6, "%test-runner-fail-save", 0, objTestRunnerGet);
                                                                }
                                                            } catch (ClassCastException e7) {
                                                                throw new WrongType(e7, "%test-runner-fail-save!", 0, objTestRunnerGet);
                                                            }
                                                        } catch (ClassCastException e8) {
                                                            throw new WrongType(e8, "%test-runner-fail-save", 0, objTestRunnerGet);
                                                        }
                                                    } catch (ClassCastException e9) {
                                                        throw new WrongType(e9, "%test-runner-fail-list!", 0, objTestRunnerGet);
                                                    }
                                                } catch (ClassCastException e10) {
                                                    throw new WrongType(e10, "%test-runner-skip-save", 0, objTestRunnerGet);
                                                }
                                            } catch (ClassCastException e11) {
                                                throw new WrongType(e11, "%test-runner-skip-save!", 0, objTestRunnerGet);
                                            }
                                        } catch (ClassCastException e12) {
                                            throw new WrongType(e12, "%test-runner-skip-save", 0, objTestRunnerGet);
                                        }
                                    } catch (ClassCastException e13) {
                                        throw new WrongType(e13, "%test-runner-skip-list!", 0, objTestRunnerGet);
                                    }
                                } catch (ClassCastException e14) {
                                    throw new WrongType(e14, "test-runner-group-stack", 0, objTestRunnerGet);
                                }
                            } catch (ClassCastException e15) {
                                throw new WrongType(e15, "test-runner-group-stack!", 0, objTestRunnerGet);
                            }
                        } catch (ClassCastException e16) {
                            throw new WrongType(e16, "test-runner-on-group-end", 0, objTestRunnerGet);
                        }
                    } catch (ClassCastException e17) {
                        throw new WrongType(e17, "%test-runner-total-count", 0, objTestRunnerGet);
                    }
                } catch (ClassCastException e18) {
                    throw new WrongType(e18, "%test-runner-count-list", 0, objTestRunnerGet);
                }
            } catch (ClassCastException e19) {
                throw new WrongType(e19, "test-result-alist!", 0, objTestRunnerGet);
            }
        } catch (ClassCastException e20) {
            throw new WrongType(e20, "test-runner-group-stack", 0, objTestRunnerGet);
        }
    }

    public static Object testOnTestBeginSimple(Object obj) throws Throwable {
        try {
            Object objTestRunnerAuxValue = testRunnerAuxValue((test$Mnrunner) obj);
            if (ports.isOutputPort(objTestRunnerAuxValue)) {
                try {
                    Object objTestResultAlist = testResultAlist((test$Mnrunner) obj);
                    Object objAssq = lists.assq(Lit4, objTestResultAlist);
                    Object objAssq2 = lists.assq(Lit5, objTestResultAlist);
                    Object objAssq3 = lists.assq(Lit6, objTestResultAlist);
                    Object objAssq4 = lists.assq(Lit7, objTestResultAlist);
                    ports.display("Test begin:", objTestRunnerAuxValue);
                    ports.newline(objTestRunnerAuxValue);
                    Boolean bool = Boolean.FALSE;
                    if (objAssq4 != bool) {
                        $PcTestWriteResult1(objAssq4, objTestRunnerAuxValue);
                    }
                    if (objAssq != bool) {
                        $PcTestWriteResult1(objAssq, objTestRunnerAuxValue);
                    }
                    if (objAssq2 != bool) {
                        $PcTestWriteResult1(objAssq2, objTestRunnerAuxValue);
                    }
                    return objAssq != bool ? $PcTestWriteResult1(objAssq3, objTestRunnerAuxValue) : Values.empty;
                } catch (ClassCastException e) {
                    throw new WrongType(e, "test-result-alist", 0, obj);
                }
            }
            return Values.empty;
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "test-runner-aux-value", 0, obj);
        }
    }

    public static Object testOnTestEndSimple(Object obj) throws Throwable {
        try {
            Object objTestRunnerAuxValue = testRunnerAuxValue((test$Mnrunner) obj);
            try {
                Object objAssq = lists.assq(Lit1, testResultAlist((test$Mnrunner) obj));
                Boolean bool = Boolean.FALSE;
                Object objApply1 = objAssq != bool ? lists.cdr.apply1(objAssq) : bool;
                if (lists.memq(objApply1, Lit8) != bool) {
                    try {
                        Object objTestResultAlist = testResultAlist((test$Mnrunner) obj);
                        Object objAssq2 = lists.assq(Lit4, objTestResultAlist);
                        Object objAssq3 = lists.assq(Lit5, objTestResultAlist);
                        Object objAssq4 = lists.assq(Lit7, objTestResultAlist);
                        if (objAssq2 != bool || objAssq3 != bool) {
                            if (objAssq2 != bool) {
                                ports.display(lists.cdr.apply1(objAssq2));
                            }
                            ports.display(":");
                            if (objAssq3 != bool) {
                                ports.display(lists.cdr.apply1(objAssq3));
                            }
                            ports.display(": ");
                        }
                        ports.display(objApply1 == Lit9 ? "XPASS" : "FAIL");
                        if (objAssq4 != bool) {
                            ports.display(" ");
                            ports.display(lists.cdr.apply1(objAssq4));
                        }
                        ports.newline();
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "test-result-alist", 0, obj);
                    }
                }
                if (ports.isOutputPort(objTestRunnerAuxValue)) {
                    ports.display("Test end:", objTestRunnerAuxValue);
                    ports.newline(objTestRunnerAuxValue);
                    try {
                        for (Object objTestResultAlist2 = testResultAlist((test$Mnrunner) obj); lists.isPair(objTestResultAlist2); objTestResultAlist2 = lists.cdr.apply1(objTestResultAlist2)) {
                            GenericProc genericProc = lists.car;
                            Object objApply12 = genericProc.apply1(objTestResultAlist2);
                            if (lists.memq(genericProc.apply1(objApply12), Lit10) == Boolean.FALSE) {
                                $PcTestWriteResult1(objApply12, objTestRunnerAuxValue);
                            }
                        }
                        return Values.empty;
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "test-result-alist", 0, obj);
                    }
                }
                return Values.empty;
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "test-result-alist", 0, obj);
            }
        } catch (ClassCastException e4) {
            throw new WrongType(e4, "test-runner-aux-value", 0, obj);
        }
    }

    public static Object $PcTestWriteResult1(Object obj, Object obj2) {
        ports.display("  ", obj2);
        ports.display(lists.car.apply1(obj), obj2);
        ports.display(": ", obj2);
        ports.write(lists.cdr.apply1(obj), obj2);
        ports.newline(obj2);
        return Values.empty;
    }

    @Override // gnu.expr.ModuleBody
    public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
        int i = moduleMethod.selector;
        if (i == 59) {
            return testOnGroupBeginSimple(obj, obj2, obj3);
        }
        if (i == 67) {
            return testResultSet$Ex(obj, obj2, obj3);
        }
        if (i == 61) {
            testOnBadCountSimple(obj, obj2, obj3);
            return Values.empty;
        }
        if (i != 62) {
            switch (i) {
                case 50:
                    return lambda1(obj, obj2, obj3);
                case 51:
                    return lambda2(obj, obj2, obj3);
                case 52:
                    return lambda3(obj, obj2, obj3);
                default:
                    return super.apply3(moduleMethod, obj, obj2, obj3);
            }
        }
        return testOnBadEndNameSimple(obj, obj2, obj3);
    }

    public static Object testResultSet$Ex(Object obj, Object obj2, Object obj3) throws Throwable {
        try {
            Object objTestResultAlist = testResultAlist((test$Mnrunner) obj);
            Object objAssq = lists.assq(obj2, objTestResultAlist);
            if (objAssq != Boolean.FALSE) {
                try {
                    ((Pair) objAssq).setCdr(obj3);
                    return Values.empty;
                } catch (ClassCastException e) {
                    throw new WrongType(e, "set-cdr!", 1, objAssq);
                }
            }
            try {
                ((test$Mnrunner) obj).result$Mnalist = lists.cons(lists.cons(obj2, obj3), objTestResultAlist);
                return Values.empty;
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "test-result-alist!", 0, obj);
            }
        } catch (ClassCastException e3) {
            throw new WrongType(e3, "test-result-alist", 0, obj);
        }
    }

    public static void testResultClear(Object obj) {
        try {
            ((test$Mnrunner) obj).result$Mnalist = LList.Empty;
        } catch (ClassCastException e) {
            throw new WrongType(e, "test-result-alist!", 0, obj);
        }
    }

    public static void testResultRemove(Object obj, Object obj2) throws Throwable {
        frame frameVar = new frame();
        try {
            Object objTestResultAlist = testResultAlist((test$Mnrunner) obj);
            Object objAssq = lists.assq(obj2, objTestResultAlist);
            frameVar.p = objAssq;
            if (objAssq != Boolean.FALSE) {
                try {
                    ((test$Mnrunner) obj).result$Mnalist = frameVar.lambda4loop(objTestResultAlist);
                } catch (ClassCastException e) {
                    throw new WrongType(e, "test-result-alist!", 0, obj);
                }
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "test-result-alist", 0, obj);
        }
    }

    public class frame extends ModuleBody {
        Object p;

        public Object lambda4loop(Object obj) {
            return obj == this.p ? lists.cdr.apply1(obj) : lists.cons(lists.car.apply1(obj), lambda4loop(lists.cdr.apply1(obj)));
        }
    }

    public static Object testResultKind$V(Object[] objArr) throws Throwable {
        LList lListMakeList = LList.makeList(objArr, 0);
        Object objApply1 = lists.isPair(lListMakeList) ? lists.car.apply1(lListMakeList) : ((Procedure) test$Mnrunner$Mncurrent).apply0();
        try {
            Object objAssq = lists.assq(Lit1, testResultAlist((test$Mnrunner) objApply1));
            Boolean bool = Boolean.FALSE;
            return objAssq != bool ? lists.cdr.apply1(objAssq) : bool;
        } catch (ClassCastException e) {
            throw new WrongType(e, "test-result-alist", 0, objApply1);
        }
    }

    @Override // gnu.expr.ModuleBody
    public int matchN(ModuleMethod moduleMethod, Object[] objArr, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 70) {
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }
        if (i == 71) {
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }
        if (i == 84) {
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }
        if (i == 86) {
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }
        if (i != 87) {
            return super.matchN(moduleMethod, objArr, callContext);
        }
        callContext.values = objArr;
        callContext.proc = moduleMethod;
        callContext.pc = 5;
        return 0;
    }

    public static Object isTestPassed$V(Object[] objArr) throws Throwable {
        LList lListMakeList = LList.makeList(objArr, 0);
        Object objApply1 = lists.isPair(lListMakeList) ? lists.car.apply1(lListMakeList) : testRunnerGet();
        try {
            Object objAssq = lists.assq(Lit1, testResultAlist((test$Mnrunner) objApply1));
            Object objApply12 = Boolean.FALSE;
            if (objAssq != objApply12) {
                objApply12 = lists.cdr.apply1(objAssq);
            }
            return lists.memq(objApply12, Lit11);
        } catch (ClassCastException e) {
            throw new WrongType(e, "test-result-alist", 0, objApply1);
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object apply0(ModuleMethod moduleMethod) {
        int i = moduleMethod.selector;
        if (i != 72) {
            switch (i) {
                case 53:
                    return testRunnerNull();
                case 54:
                    return testRunnerSimple();
                case 55:
                    return testRunnerGet();
                case 56:
                    return testRunnerCreate();
                default:
                    return super.apply0(moduleMethod);
            }
        }
        return $PcTestReportResult();
    }

    public static Object $PcTestReportResult() throws Throwable {
        Object objTestRunnerGet = testRunnerGet();
        Object objTestResultKind$V = testResultKind$V(new Object[]{objTestRunnerGet});
        IsEqv isEqv = Scheme.isEqv;
        Object objApply2 = isEqv.apply2(objTestResultKind$V, Lit12);
        Boolean bool = Boolean.FALSE;
        if (objApply2 != bool) {
            try {
                try {
                    ((test$Mnrunner) objTestRunnerGet).pass$Mncount = AddOp.$Pl.apply2(Lit13, testRunnerPassCount((test$Mnrunner) objTestRunnerGet));
                } catch (ClassCastException e) {
                    throw new WrongType(e, "test-runner-pass-count", 0, objTestRunnerGet);
                }
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "test-runner-pass-count!", 0, objTestRunnerGet);
            }
        } else if (isEqv.apply2(objTestResultKind$V, Lit14) != bool) {
            try {
                try {
                    ((test$Mnrunner) objTestRunnerGet).fail$Mncount = AddOp.$Pl.apply2(Lit13, testRunnerFailCount((test$Mnrunner) objTestRunnerGet));
                } catch (ClassCastException e3) {
                    throw new WrongType(e3, "test-runner-fail-count", 0, objTestRunnerGet);
                }
            } catch (ClassCastException e4) {
                throw new WrongType(e4, "test-runner-fail-count!", 0, objTestRunnerGet);
            }
        } else if (isEqv.apply2(objTestResultKind$V, Lit9) != bool) {
            try {
                try {
                    ((test$Mnrunner) objTestRunnerGet).xpass$Mncount = AddOp.$Pl.apply2(Lit13, testRunnerXpassCount((test$Mnrunner) objTestRunnerGet));
                } catch (ClassCastException e5) {
                    throw new WrongType(e5, "test-runner-xpass-count", 0, objTestRunnerGet);
                }
            } catch (ClassCastException e6) {
                throw new WrongType(e6, "test-runner-xpass-count!", 0, objTestRunnerGet);
            }
        } else if (isEqv.apply2(objTestResultKind$V, Lit3) != bool) {
            try {
                try {
                    ((test$Mnrunner) objTestRunnerGet).xfail$Mncount = AddOp.$Pl.apply2(Lit13, testRunnerXfailCount((test$Mnrunner) objTestRunnerGet));
                } catch (ClassCastException e7) {
                    throw new WrongType(e7, "test-runner-xfail-count", 0, objTestRunnerGet);
                }
            } catch (ClassCastException e8) {
                throw new WrongType(e8, "test-runner-xfail-count!", 0, objTestRunnerGet);
            }
        } else {
            try {
                try {
                    ((test$Mnrunner) objTestRunnerGet).skip$Mncount = AddOp.$Pl.apply2(Lit13, testRunnerSkipCount((test$Mnrunner) objTestRunnerGet));
                } catch (ClassCastException e9) {
                    throw new WrongType(e9, "test-runner-skip-count", 0, objTestRunnerGet);
                }
            } catch (ClassCastException e10) {
                throw new WrongType(e10, "test-runner-skip-count!", 0, objTestRunnerGet);
            }
        }
        try {
            try {
                ((test$Mnrunner) objTestRunnerGet).total$Mncount = AddOp.$Pl.apply2(Lit13, ((test$Mnrunner) objTestRunnerGet).total$Mncount);
                try {
                    return Scheme.applyToArgs.apply2(testRunnerOnTestEnd((test$Mnrunner) objTestRunnerGet), objTestRunnerGet);
                } catch (ClassCastException e11) {
                    throw new WrongType(e11, "test-runner-on-test-end", 0, objTestRunnerGet);
                }
            } catch (ClassCastException e12) {
                throw new WrongType(e12, "%test-runner-total-count", 0, objTestRunnerGet);
            }
        } catch (ClassCastException e13) {
            throw new WrongType(e13, "%test-runner-total-count!", 0, objTestRunnerGet);
        }
    }

    public static Pair $PcTestSourceLine2(Object obj) {
        Object objSyntaxLine = std_syntax.syntaxLine(obj);
        Object objSyntaxSource = std_syntax.syntaxSource(obj);
        Boolean bool = Boolean.FALSE;
        Object objList1 = objSyntaxLine != bool ? LList.list1(lists.cons(Lit5, objSyntaxLine)) : LList.Empty;
        Pair pairCons = lists.cons(Lit6, Quote.quote(obj));
        if (objSyntaxSource != bool) {
            objList1 = lists.cons(lists.cons(Lit4, objSyntaxSource), objList1);
        }
        return lists.cons(pairCons, objList1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean $PcTestOnTestBegin(Object obj) throws Throwable {
        $PcTestShouldExecute(obj);
        try {
            Scheme.applyToArgs.apply2(testRunnerOnTestBegin((test$Mnrunner) obj), obj);
            SimpleSymbol simpleSymbol = Lit2;
            try {
                Object objAssq = lists.assq(Lit1, testResultAlist((test$Mnrunner) obj));
                Object objApply1 = Boolean.FALSE;
                if (objAssq != objApply1) {
                    objApply1 = lists.cdr.apply1(objAssq);
                }
                return 1 & ((simpleSymbol == objApply1 ? 1 : 0) + 1);
            } catch (ClassCastException e) {
                throw new WrongType(e, "test-result-alist", 0, obj);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "test-runner-on-test-begin", 0, obj);
        }
    }

    public static Object $PcTestOnTestEnd(Object obj, Object obj2) throws Throwable {
        SimpleSymbol simpleSymbol = Lit1;
        try {
            Object objAssq = lists.assq(simpleSymbol, testResultAlist((test$Mnrunner) obj));
            Boolean bool = Boolean.FALSE;
            Object objApply1 = objAssq != bool ? lists.cdr.apply1(objAssq) : bool;
            SimpleSymbol simpleSymbol2 = Lit3;
            if (objApply1 != simpleSymbol2) {
                simpleSymbol2 = obj2 != bool ? Lit12 : Lit14;
            } else if (obj2 != bool) {
                simpleSymbol2 = Lit9;
            }
            return testResultSet$Ex(obj, simpleSymbol, simpleSymbol2);
        } catch (ClassCastException e) {
            throw new WrongType(e, "test-result-alist", 0, obj);
        }
    }

    public static Object testRunnerTestName(Object obj) throws Throwable {
        try {
            Object objAssq = lists.assq(Lit7, testResultAlist((test$Mnrunner) obj));
            if (objAssq != Boolean.FALSE) {
                return lists.cdr.apply1(objAssq);
            }
            return "";
        } catch (ClassCastException e) {
            throw new WrongType(e, "test-result-alist", 0, obj);
        }
    }

    public class frame0 extends ModuleBody {
        Object error;
        final ModuleMethod lambda$Fn4;

        public frame0() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 1, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm:640");
            this.lambda$Fn4 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 1 ? lambda5(obj, obj2) ? Boolean.TRUE : Boolean.FALSE : super.apply2(moduleMethod, obj, obj2);
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

        public boolean lambda5(Object obj, Object obj2) {
            Object objApply2 = Scheme.numGEq.apply2(obj, AddOp.$Mn.apply2(obj2, this.error));
            try {
                boolean zBooleanValue = ((Boolean) objApply2).booleanValue();
                return zBooleanValue ? ((Boolean) Scheme.numLEq.apply2(obj, AddOp.$Pl.apply2(obj2, this.error))).booleanValue() : zBooleanValue;
            } catch (ClassCastException e) {
                throw new WrongType(e, "x", -2, objApply2);
            }
        }
    }

    public static Procedure $PcTestApproximimate$Eq(Object obj) {
        frame0 frame0Var = new frame0();
        frame0Var.error = obj;
        return frame0Var.lambda$Fn4;
    }

    public static Object lambda16(Object obj) {
        Pair pairList2 = LList.list2(obj, LList.list2(Lit15, $PcTestSourceLine2(obj)));
        Object[] objArrAllocVars = SyntaxPattern.allocVars(3, null);
        if (Lit95.match(pairList2, objArrAllocVars, 0)) {
            return Lit96.execute(objArrAllocVars, TemplateScope.make());
        }
        if (!Lit97.match(pairList2, objArrAllocVars, 0)) {
            return syntax_case.error("syntax-case", pairList2);
        }
        return Lit98.execute(objArrAllocVars, TemplateScope.make());
    }

    public static Object lambda17(Object obj) {
        Pair pairList2 = LList.list2(obj, LList.list2(Lit15, $PcTestSourceLine2(obj)));
        Object[] objArrAllocVars = SyntaxPattern.allocVars(4, null);
        if (Lit100.match(pairList2, objArrAllocVars, 0)) {
            return Lit101.execute(objArrAllocVars, TemplateScope.make());
        }
        if (!Lit102.match(pairList2, objArrAllocVars, 0)) {
            return syntax_case.error("syntax-case", pairList2);
        }
        return Lit103.execute(objArrAllocVars, TemplateScope.make());
    }

    public static Object $PcTestComp2(Object obj, Object obj2) {
        Pair pairList3 = LList.list3(obj2, LList.list2(Lit15, $PcTestSourceLine2(obj2)), obj);
        Object[] objArrAllocVars = SyntaxPattern.allocVars(6, null);
        if (Lit16.match(pairList3, objArrAllocVars, 0)) {
            return Lit17.execute(objArrAllocVars, TemplateScope.make());
        }
        if (!Lit18.match(pairList3, objArrAllocVars, 0)) {
            return syntax_case.error("syntax-case", pairList3);
        }
        return Lit19.execute(objArrAllocVars, TemplateScope.make());
    }

    public static Object lambda18(Object obj) {
        return $PcTestComp2(Lit105.execute(null, TemplateScope.make()), obj);
    }

    public static Object lambda19(Object obj) {
        return $PcTestComp2(Lit107.execute(null, TemplateScope.make()), obj);
    }

    public static Object lambda20(Object obj) {
        return $PcTestComp2(Lit109.execute(null, TemplateScope.make()), obj);
    }

    public static Object lambda21(Object obj) {
        Pair pairList2 = LList.list2(obj, LList.list2(Lit15, $PcTestSourceLine2(obj)));
        Object[] objArrAllocVars = SyntaxPattern.allocVars(6, null);
        if (Lit111.match(pairList2, objArrAllocVars, 0)) {
            return Lit112.execute(objArrAllocVars, TemplateScope.make());
        }
        if (!Lit113.match(pairList2, objArrAllocVars, 0)) {
            return syntax_case.error("syntax-case", pairList2);
        }
        return Lit114.execute(objArrAllocVars, TemplateScope.make());
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) {
        int i = moduleMethod.selector;
        if (i == 12) {
            return isTestRunner(obj) ? Boolean.TRUE : Boolean.FALSE;
        }
        if (i == 13) {
            try {
                return testRunnerPassCount((test$Mnrunner) obj);
            } catch (ClassCastException e) {
                throw new WrongType(e, "test-runner-pass-count", 1, obj);
            }
        }
        if (i == 65) {
            return testOnTestBeginSimple(obj);
        }
        if (i == 66) {
            return testOnTestEndSimple(obj);
        }
        switch (i) {
            case 15:
                try {
                    return testRunnerFailCount((test$Mnrunner) obj);
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "test-runner-fail-count", 1, obj);
                }
            case 17:
                try {
                    return testRunnerXpassCount((test$Mnrunner) obj);
                } catch (ClassCastException e3) {
                    throw new WrongType(e3, "test-runner-xpass-count", 1, obj);
                }
            case 19:
                try {
                    return testRunnerXfailCount((test$Mnrunner) obj);
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "test-runner-xfail-count", 1, obj);
                }
            case 21:
                try {
                    return testRunnerSkipCount((test$Mnrunner) obj);
                } catch (ClassCastException e5) {
                    throw new WrongType(e5, "test-runner-skip-count", 1, obj);
                }
            case 23:
                try {
                    return ((test$Mnrunner) obj).skip$Mnlist;
                } catch (ClassCastException e6) {
                    throw new WrongType(e6, "%test-runner-skip-list", 1, obj);
                }
            case 25:
                try {
                    return ((test$Mnrunner) obj).fail$Mnlist;
                } catch (ClassCastException e7) {
                    throw new WrongType(e7, "%test-runner-fail-list", 1, obj);
                }
            case 27:
                try {
                    return testRunnerGroupStack((test$Mnrunner) obj);
                } catch (ClassCastException e8) {
                    throw new WrongType(e8, "test-runner-group-stack", 1, obj);
                }
            case 29:
                try {
                    return testRunnerOnTestBegin((test$Mnrunner) obj);
                } catch (ClassCastException e9) {
                    throw new WrongType(e9, "test-runner-on-test-begin", 1, obj);
                }
            case 31:
                try {
                    return testRunnerOnTestEnd((test$Mnrunner) obj);
                } catch (ClassCastException e10) {
                    throw new WrongType(e10, "test-runner-on-test-end", 1, obj);
                }
            case 33:
                try {
                    return testRunnerOnGroupBegin((test$Mnrunner) obj);
                } catch (ClassCastException e11) {
                    throw new WrongType(e11, "test-runner-on-group-begin", 1, obj);
                }
            case 35:
                try {
                    return testRunnerOnGroupEnd((test$Mnrunner) obj);
                } catch (ClassCastException e12) {
                    throw new WrongType(e12, "test-runner-on-group-end", 1, obj);
                }
            case 37:
                try {
                    return testRunnerOnFinal((test$Mnrunner) obj);
                } catch (ClassCastException e13) {
                    throw new WrongType(e13, "test-runner-on-final", 1, obj);
                }
            case 39:
                try {
                    return testRunnerOnBadCount((test$Mnrunner) obj);
                } catch (ClassCastException e14) {
                    throw new WrongType(e14, "test-runner-on-bad-count", 1, obj);
                }
            case 41:
                try {
                    return testRunnerOnBadEndName((test$Mnrunner) obj);
                } catch (ClassCastException e15) {
                    throw new WrongType(e15, "test-runner-on-bad-end-name", 1, obj);
                }
            case 43:
                try {
                    return testResultAlist((test$Mnrunner) obj);
                } catch (ClassCastException e16) {
                    throw new WrongType(e16, "test-result-alist", 1, obj);
                }
            case 45:
                try {
                    return testRunnerAuxValue((test$Mnrunner) obj);
                } catch (ClassCastException e17) {
                    throw new WrongType(e17, "test-runner-aux-value", 1, obj);
                }
            case 57:
                return $PcTestShouldExecute(obj);
            case 60:
                return testOnGroupEndSimple(obj);
            case 63:
                testOnFinalSimple(obj);
                return Values.empty;
            case 68:
                testResultClear(obj);
                return Values.empty;
            case 73:
                return $PcTestOnTestBegin(obj) ? Boolean.TRUE : Boolean.FALSE;
            default:
                switch (i) {
                    case 47:
                        testRunnerReset(obj);
                        return Values.empty;
                    case 48:
                        return testRunnerGroupPath(obj);
                    case 49:
                        return $PcTestNullCallback(obj);
                    default:
                        switch (i) {
                            case 75:
                                return testRunnerTestName(obj);
                            case 76:
                                return $PcTestApproximimate$Eq(obj);
                            case 77:
                                return lambda16(obj);
                            case 78:
                                return lambda17(obj);
                            case 79:
                                return lambda18(obj);
                            case 80:
                                return lambda19(obj);
                            case 81:
                                return lambda20(obj);
                            case 82:
                                return lambda21(obj);
                            case 83:
                                return lambda22(obj);
                            default:
                                switch (i) {
                                    case 88:
                                        return $PcTestAsSpecifier(obj);
                                    case 89:
                                        return testMatchName(obj);
                                    case 90:
                                        return testReadEvalString(obj);
                                    default:
                                        return super.apply1(moduleMethod, obj);
                                }
                        }
                }
        }
    }

    public static Object lambda22(Object obj) {
        Pair pairList2 = LList.list2(obj, LList.list2(Lit15, $PcTestSourceLine2(obj)));
        Object[] objArrAllocVars = SyntaxPattern.allocVars(5, null);
        if (Lit118.match(pairList2, objArrAllocVars, 0)) {
            return Lit119.execute(objArrAllocVars, TemplateScope.make());
        }
        if (Lit120.match(pairList2, objArrAllocVars, 0)) {
            return Lit121.execute(objArrAllocVars, TemplateScope.make());
        }
        if (!Lit122.match(pairList2, objArrAllocVars, 0)) {
            return syntax_case.error("syntax-case", pairList2);
        }
        return Lit123.execute(objArrAllocVars, TemplateScope.make());
    }

    public static Object testApply$V(Object obj, Object[] objArr) throws Throwable {
        frame1 frame1Var = new frame1();
        frame1Var.first = obj;
        frame1Var.rest = LList.makeList(objArr, 0);
        if (!isTestRunner(frame1Var.first)) {
            Object objApply0 = ((Procedure) test$Mnrunner$Mncurrent).apply0();
            if (objApply0 != Boolean.FALSE) {
                try {
                    Object obj2 = ((test$Mnrunner) objApply0).run$Mnlist;
                    if (lists.isNull(frame1Var.rest)) {
                        try {
                            try {
                                ((test$Mnrunner) objApply0).run$Mnlist = LList.reverseInPlace((LList) obj2);
                                return Scheme.applyToArgs.apply1(frame1Var.first);
                            } catch (ClassCastException e) {
                                throw new WrongType(e, "reverse!", 1, obj2);
                            }
                        } catch (ClassCastException e2) {
                            throw new WrongType(e2, "%test-runner-run-list!", 0, objApply0);
                        }
                    }
                    try {
                        ((test$Mnrunner) objApply0).run$Mnlist = obj2 == Boolean.TRUE ? LList.list1(frame1Var.first) : lists.cons(frame1Var.first, obj2);
                        Scheme.apply.apply2(test$Mnapply, frame1Var.rest);
                        try {
                            ((test$Mnrunner) objApply0).run$Mnlist = obj2;
                            return Values.empty;
                        } catch (ClassCastException e3) {
                            throw new WrongType(e3, "%test-runner-run-list!", 0, objApply0);
                        }
                    } catch (ClassCastException e4) {
                        throw new WrongType(e4, "%test-runner-run-list!", 0, objApply0);
                    }
                } catch (ClassCastException e5) {
                    throw new WrongType(e5, "%test-runner-run-list", 0, objApply0);
                }
            }
            frame1Var.r = testRunnerCreate();
            frame1Var.saved$Mnrunner = ((Procedure) test$Mnrunner$Mncurrent).apply0();
            misc.dynamicWind(frame1Var.lambda$Fn8, frame1Var.lambda$Fn9, frame1Var.lambda$Fn10);
            ApplyToArgs applyToArgs = Scheme.applyToArgs;
            Object obj3 = frame1Var.r;
            try {
                return applyToArgs.apply2(testRunnerOnFinal((test$Mnrunner) obj3), frame1Var.r);
            } catch (ClassCastException e6) {
                throw new WrongType(e6, "test-runner-on-final", 0, obj3);
            }
        }
        frame1Var.saved$Mnrunner$1 = ((Procedure) test$Mnrunner$Mncurrent).apply0();
        return misc.dynamicWind(frame1Var.lambda$Fn5, frame1Var.lambda$Fn6, frame1Var.lambda$Fn7);
    }

    public class frame1 extends ModuleBody {
        Object first;
        final ModuleMethod lambda$Fn10;
        final ModuleMethod lambda$Fn5 = new ModuleMethod(this, 2, null, 0);
        final ModuleMethod lambda$Fn6 = new ModuleMethod(this, 3, null, 0);
        final ModuleMethod lambda$Fn7;
        final ModuleMethod lambda$Fn8;
        final ModuleMethod lambda$Fn9;
        Object r;
        LList rest;
        Object saved$Mnrunner;
        Object saved$Mnrunner$1;

        public frame1() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 4, null, 0);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm:897");
            this.lambda$Fn7 = moduleMethod;
            this.lambda$Fn8 = new ModuleMethod(this, 5, null, 0);
            this.lambda$Fn9 = new ModuleMethod(this, 6, null, 0);
            ModuleMethod moduleMethod2 = new ModuleMethod(this, 7, null, 0);
            moduleMethod2.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm:897");
            this.lambda$Fn10 = moduleMethod2;
        }

        public Object lambda6() {
            return ((Procedure) testing.test$Mnrunner$Mncurrent).apply1(this.first);
        }

        public Object lambda7() {
            return Scheme.apply.apply2(testing.test$Mnapply, this.rest);
        }

        public Object lambda10() {
            return Scheme.apply.apply3(testing.test$Mnapply, this.first, this.rest);
        }

        public Object lambda9() {
            return ((Procedure) testing.test$Mnrunner$Mncurrent).apply1(this.r);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            switch (moduleMethod.selector) {
                case 2:
                    return lambda6();
                case 3:
                    return lambda7();
                case 4:
                    return lambda8();
                case 5:
                    return lambda9();
                case 6:
                    return lambda10();
                case 7:
                    return lambda11();
                default:
                    return super.apply0(moduleMethod);
            }
        }

        public Object lambda11() {
            return ((Procedure) testing.test$Mnrunner$Mncurrent).apply1(this.saved$Mnrunner);
        }

        public Object lambda8() {
            return ((Procedure) testing.test$Mnrunner$Mncurrent).apply1(this.saved$Mnrunner$1);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            switch (moduleMethod.selector) {
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                default:
                    return super.match0(moduleMethod, callContext);
            }
        }
    }

    public static Procedure $PcTestMatchNth(Object obj, Object obj2) {
        frame2 frame2Var = new frame2();
        frame2Var.n = obj;
        frame2Var.count = obj2;
        frame2Var.i = Lit0;
        return frame2Var.lambda$Fn11;
    }

    @Override // gnu.expr.ModuleBody
    public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) throws Throwable {
        switch (moduleMethod.selector) {
            case 14:
                try {
                    ((test$Mnrunner) obj).pass$Mncount = obj2;
                    return Values.empty;
                } catch (ClassCastException e) {
                    throw new WrongType(e, "test-runner-pass-count!", 1, obj);
                }
            case 16:
                try {
                    ((test$Mnrunner) obj).fail$Mncount = obj2;
                    return Values.empty;
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "test-runner-fail-count!", 1, obj);
                }
            case 18:
                try {
                    ((test$Mnrunner) obj).xpass$Mncount = obj2;
                    return Values.empty;
                } catch (ClassCastException e3) {
                    throw new WrongType(e3, "test-runner-xpass-count!", 1, obj);
                }
            case 20:
                try {
                    ((test$Mnrunner) obj).xfail$Mncount = obj2;
                    return Values.empty;
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "test-runner-xfail-count!", 1, obj);
                }
            case 22:
                try {
                    ((test$Mnrunner) obj).skip$Mncount = obj2;
                    return Values.empty;
                } catch (ClassCastException e5) {
                    throw new WrongType(e5, "test-runner-skip-count!", 1, obj);
                }
            case 24:
                try {
                    ((test$Mnrunner) obj).skip$Mnlist = obj2;
                    return Values.empty;
                } catch (ClassCastException e6) {
                    throw new WrongType(e6, "%test-runner-skip-list!", 1, obj);
                }
            case 26:
                try {
                    ((test$Mnrunner) obj).fail$Mnlist = obj2;
                    return Values.empty;
                } catch (ClassCastException e7) {
                    throw new WrongType(e7, "%test-runner-fail-list!", 1, obj);
                }
            case 28:
                try {
                    ((test$Mnrunner) obj).group$Mnstack = obj2;
                    return Values.empty;
                } catch (ClassCastException e8) {
                    throw new WrongType(e8, "test-runner-group-stack!", 1, obj);
                }
            case 30:
                try {
                    ((test$Mnrunner) obj).on$Mntest$Mnbegin = obj2;
                    return Values.empty;
                } catch (ClassCastException e9) {
                    throw new WrongType(e9, "test-runner-on-test-begin!", 1, obj);
                }
            case 32:
                try {
                    ((test$Mnrunner) obj).on$Mntest$Mnend = obj2;
                    return Values.empty;
                } catch (ClassCastException e10) {
                    throw new WrongType(e10, "test-runner-on-test-end!", 1, obj);
                }
            case 34:
                try {
                    ((test$Mnrunner) obj).on$Mngroup$Mnbegin = obj2;
                    return Values.empty;
                } catch (ClassCastException e11) {
                    throw new WrongType(e11, "test-runner-on-group-begin!", 1, obj);
                }
            case 36:
                try {
                    ((test$Mnrunner) obj).on$Mngroup$Mnend = obj2;
                    return Values.empty;
                } catch (ClassCastException e12) {
                    throw new WrongType(e12, "test-runner-on-group-end!", 1, obj);
                }
            case 38:
                try {
                    ((test$Mnrunner) obj).on$Mnfinal = obj2;
                    return Values.empty;
                } catch (ClassCastException e13) {
                    throw new WrongType(e13, "test-runner-on-final!", 1, obj);
                }
            case 40:
                try {
                    ((test$Mnrunner) obj).on$Mnbad$Mncount = obj2;
                    return Values.empty;
                } catch (ClassCastException e14) {
                    throw new WrongType(e14, "test-runner-on-bad-count!", 1, obj);
                }
            case 42:
                try {
                    ((test$Mnrunner) obj).on$Mnbad$Mnend$Mnname = obj2;
                    return Values.empty;
                } catch (ClassCastException e15) {
                    throw new WrongType(e15, "test-runner-on-bad-end-name!", 1, obj);
                }
            case 44:
                try {
                    ((test$Mnrunner) obj).result$Mnalist = obj2;
                    return Values.empty;
                } catch (ClassCastException e16) {
                    throw new WrongType(e16, "test-result-alist!", 1, obj);
                }
            case 46:
                try {
                    ((test$Mnrunner) obj).aux$Mnvalue = obj2;
                    return Values.empty;
                } catch (ClassCastException e17) {
                    throw new WrongType(e17, "test-runner-aux-value!", 1, obj);
                }
            case 58:
                $PcTestBegin(obj, obj2);
                return Values.empty;
            case 64:
                return $PcTestEnd(obj, obj2);
            case 69:
                testResultRemove(obj, obj2);
                return Values.empty;
            case 74:
                return $PcTestOnTestEnd(obj, obj2);
            case 85:
                return $PcTestMatchNth(obj, obj2);
            default:
                return super.apply2(moduleMethod, obj, obj2);
        }
    }

    public class frame2 extends ModuleBody {
        Object count;
        Object i;
        final ModuleMethod lambda$Fn11;
        Object n;

        public frame2() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 8, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm:903");
            this.lambda$Fn11 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 8 ? lambda12(obj) ? Boolean.TRUE : Boolean.FALSE : super.apply1(moduleMethod, obj);
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 8) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }

        public boolean lambda12(Object obj) throws Throwable {
            AddOp addOp = AddOp.$Pl;
            Object objApply2 = addOp.apply2(this.i, testing.Lit13);
            this.i = objApply2;
            Object objApply22 = Scheme.numGEq.apply2(objApply2, this.n);
            try {
                boolean zBooleanValue = ((Boolean) objApply22).booleanValue();
                return zBooleanValue ? ((Boolean) Scheme.numLss.apply2(this.i, addOp.apply2(this.n, this.count))).booleanValue() : zBooleanValue;
            } catch (ClassCastException e) {
                throw new WrongType(e, "x", -2, objApply22);
            }
        }
    }

    public class frame3 extends ModuleBody {
        final ModuleMethod lambda$Fn12;
        LList pred$Mnlist;

        public frame3() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 9, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm:915");
            this.lambda$Fn12 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 9 ? lambda13(obj) : super.apply1(moduleMethod, obj);
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 9) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }

        public Object lambda13(Object obj) throws Throwable {
            Boolean bool = Boolean.TRUE;
            for (Object objApply1 = this.pred$Mnlist; !lists.isNull(objApply1); objApply1 = lists.cdr.apply1(objApply1)) {
                Object objApply2 = Scheme.applyToArgs.apply2(lists.car.apply1(objApply1), obj);
                Boolean bool2 = Boolean.FALSE;
                if (objApply2 == bool2) {
                    bool = bool2;
                }
            }
            return bool;
        }
    }

    public static Procedure $PcTestMatchAll$V(Object[] objArr) {
        frame3 frame3Var = new frame3();
        frame3Var.pred$Mnlist = LList.makeList(objArr, 0);
        return frame3Var.lambda$Fn12;
    }

    public class frame4 extends ModuleBody {
        final ModuleMethod lambda$Fn13;
        LList pred$Mnlist;

        public frame4() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 10, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm:931");
            this.lambda$Fn13 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 10 ? lambda14(obj) : super.apply1(moduleMethod, obj);
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 10) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }

        public Object lambda14(Object obj) throws Throwable {
            Boolean bool = Boolean.FALSE;
            for (Object objApply1 = this.pred$Mnlist; !lists.isNull(objApply1); objApply1 = lists.cdr.apply1(objApply1)) {
                if (Scheme.applyToArgs.apply2(lists.car.apply1(objApply1), obj) != Boolean.FALSE) {
                    bool = Boolean.TRUE;
                }
            }
            return bool;
        }
    }

    public static Procedure $PcTestMatchAny$V(Object[] objArr) {
        frame4 frame4Var = new frame4();
        frame4Var.pred$Mnlist = LList.makeList(objArr, 0);
        return frame4Var.lambda$Fn13;
    }

    @Override // gnu.expr.ModuleBody
    public Object applyN(ModuleMethod moduleMethod, Object[] objArr) {
        int i = moduleMethod.selector;
        if (i == 70) {
            return testResultKind$V(objArr);
        }
        if (i == 71) {
            return isTestPassed$V(objArr);
        }
        if (i != 84) {
            if (i != 86) {
                return i != 87 ? super.applyN(moduleMethod, objArr) : $PcTestMatchAny$V(objArr);
            }
            return $PcTestMatchAll$V(objArr);
        }
        Object obj = objArr[0];
        int length = objArr.length - 1;
        Object[] objArr2 = new Object[length];
        while (true) {
            int i2 = length - 1;
            if (i2 < 0) {
                return testApply$V(obj, objArr2);
            }
            objArr2[i2] = objArr[length];
            length = i2;
        }
    }

    public static Object $PcTestAsSpecifier(Object obj) {
        if (misc.isProcedure(obj)) {
            return obj;
        }
        if (numbers.isInteger(obj)) {
            return $PcTestMatchNth(Lit13, obj);
        }
        if (strings.isString(obj)) {
            return testMatchName(obj);
        }
        return misc.error$V("not a valid test specifier", new Object[0]);
    }

    public class frame5 extends ModuleBody {
        final ModuleMethod lambda$Fn14;
        Object name;

        public frame5() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 11, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm:971");
            this.lambda$Fn14 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 11 ? lambda15(obj) ? Boolean.TRUE : Boolean.FALSE : super.apply1(moduleMethod, obj);
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 11) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }

        public boolean lambda15(Object obj) {
            return IsEqual.apply(this.name, testing.testRunnerTestName(obj));
        }
    }

    public static Procedure testMatchName(Object obj) {
        frame5 frame5Var = new frame5();
        frame5Var.name = obj;
        return frame5Var.lambda$Fn14;
    }

    public static Object testReadEvalString(Object obj) throws SyntaxException, IOException {
        try {
            InPort inPortOpenInputString = ports.openInputString((CharSequence) obj);
            Object obj2 = ports.read(inPortOpenInputString);
            if (ports.isEofObject(readchar.readChar.apply1(inPortOpenInputString))) {
                return Eval.eval.apply1(obj2);
            }
            return misc.error$V("(not at eof)", new Object[0]);
        } catch (ClassCastException e) {
            throw new WrongType(e, "open-input-string", 1, obj);
        }
    }
}
