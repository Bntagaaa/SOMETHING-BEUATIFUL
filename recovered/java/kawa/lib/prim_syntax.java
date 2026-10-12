package kawa.lib;

import androidx.fragment.app.FragmentTransaction;
import com.google.youngandroid.a;
import gnu.expr.Expression;
import gnu.expr.IfExp;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.expr.Special;
import gnu.kawa.lispexpr.LispLanguage;
import gnu.lists.Consumer;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.lists.PairWithPosition;
import gnu.mapping.CallContext;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Values;
import gnu.math.IntNum;
import kawa.lang.Macro;
import kawa.lang.Quote;
import kawa.lang.SyntaxForms;
import kawa.lang.SyntaxPattern;
import kawa.lang.SyntaxRule;
import kawa.lang.SyntaxRules;
import kawa.lang.SyntaxTemplate;
import kawa.lang.TemplateScope;
import kawa.standard.syntax_case;
import kawa.standard.syntax_error;
import kawa.standard.try_catch;

/* loaded from: classes2.dex */
public class prim_syntax extends ModuleBody {
    public static final prim_syntax $instance;
    static final SimpleSymbol Lit0;
    static final SyntaxRules Lit1;
    static final SyntaxRules Lit10;
    static final SimpleSymbol Lit11;
    static final SyntaxRules Lit12;
    static final SimpleSymbol Lit13;
    static final SyntaxPattern Lit14;
    static final SyntaxTemplate Lit15;
    static final SyntaxTemplate Lit16;
    static final SyntaxPattern Lit17;
    static final SyntaxTemplate Lit18;
    static final SyntaxTemplate Lit19;
    static final SimpleSymbol Lit2;
    static final SyntaxTemplate Lit20;
    static final SyntaxPattern Lit21;
    static final SyntaxTemplate Lit22;
    static final SyntaxPattern Lit23;
    static final SyntaxTemplate Lit24;
    static final SimpleSymbol Lit25;
    static final SyntaxPattern Lit26;
    static final SyntaxTemplate Lit27;
    static final SyntaxTemplate Lit28;
    static final SimpleSymbol Lit29;
    static final SyntaxRules Lit3;
    static final SyntaxPattern Lit30;
    static final SyntaxTemplate Lit31;
    static final SyntaxTemplate Lit32;
    static final SyntaxTemplate Lit33;
    static final SyntaxPattern Lit34;
    static final SyntaxPattern Lit35;
    static final SyntaxTemplate Lit36;
    static final SyntaxTemplate Lit37;
    static final SyntaxTemplate Lit38;
    static final SyntaxPattern Lit39;
    static final SimpleSymbol Lit4;
    static final SyntaxTemplate Lit40;
    static final SyntaxTemplate Lit41;
    static final SyntaxTemplate Lit42;
    static final SyntaxPattern Lit43;
    static final SyntaxPattern Lit44;
    static final SimpleSymbol Lit45;
    static final SimpleSymbol Lit46;
    static final SimpleSymbol Lit47;
    static final SimpleSymbol Lit48;
    static final SimpleSymbol Lit49;
    static final SyntaxRules Lit5;
    static final SimpleSymbol Lit50;
    static final IntNum Lit51;
    static final IntNum Lit52;
    static final IntNum Lit53;
    static final IntNum Lit54;
    static final IntNum Lit55;
    static final IntNum Lit56;
    static final SimpleSymbol Lit57;
    static final SimpleSymbol Lit58;
    static final SimpleSymbol Lit6;
    static final SyntaxRules Lit7;
    static final SimpleSymbol Lit8;
    static final SimpleSymbol Lit9;
    public static final Macro define;
    public static final Macro define$Mnconstant;
    public static final Macro define$Mnprivate;
    public static final Macro define$Mnsyntax;

    /* renamed from: if, reason: not valid java name */
    public static final Macro f6if;
    public static final Macro letrec;
    public static final Macro syntax$Mn$Grexpression;
    public static final Macro syntax$Mnbody$Mn$Grexpression;
    public static final ModuleMethod syntax$Mnerror;
    public static final Macro try$Mncatch;

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("lambda");
        Lit58 = simpleSymbol;
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f("%define-syntax");
        Lit57 = simpleSymbol2;
        IntNum intNumMake = IntNum.make(0);
        Lit56 = intNumMake;
        IntNum intNumMake2 = IntNum.make(1);
        Lit55 = intNumMake2;
        IntNum intNumMake3 = IntNum.make(4);
        Lit54 = intNumMake3;
        IntNum intNumMake4 = IntNum.make(5);
        Lit53 = intNumMake4;
        IntNum intNumMake5 = IntNum.make(8);
        Lit52 = intNumMake5;
        IntNum intNumMake6 = IntNum.make(9);
        Lit51 = intNumMake6;
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) a.f("%define");
        Lit50 = simpleSymbol3;
        SimpleSymbol simpleSymbol4 = (SimpleSymbol) a.f("::");
        Lit49 = simpleSymbol4;
        SimpleSymbol simpleSymbol5 = (SimpleSymbol) a.f(LispLanguage.quasiquote_sym);
        Lit48 = simpleSymbol5;
        SimpleSymbol simpleSymbol6 = (SimpleSymbol) a.f("kawa.lang.SyntaxForms");
        Lit47 = simpleSymbol6;
        SimpleSymbol simpleSymbol7 = (SimpleSymbol) a.f("$lookup$");
        Lit46 = simpleSymbol7;
        SimpleSymbol simpleSymbol8 = (SimpleSymbol) a.f("set!");
        Lit45 = simpleSymbol8;
        Lit44 = new SyntaxPattern("\u001b", new Object[0], 4);
        Lit43 = new SyntaxPattern("\u001c\f\u001f\b#", new Object[0], 5);
        Lit42 = new SyntaxTemplate("\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000", ":", new Object[0], 0);
        Lit41 = new SyntaxTemplate("\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000", "\u0011\u0018\u0004\t\u001b\b3", new Object[]{simpleSymbol8}, 0);
        Special special = Special.undefined;
        LList lList = LList.Empty;
        Lit40 = new SyntaxTemplate("\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000", "\t\u001b\t#\t+\u0018\u0004", new Object[]{PairWithPosition.make(special, lList, "/u2/home/jis/ai2-kawa/kawa/lib/prim_syntax.scm", 471102)}, 0);
        Lit39 = new SyntaxPattern("L\f\u001f\f'\f/\f7\b;", new Object[0], 8);
        Lit38 = new SyntaxTemplate("\u0001\u0001\u0000\u0001\u0001\u0000", "*", new Object[0], 0);
        Lit37 = new SyntaxTemplate("\u0001\u0001\u0000\u0001\u0001\u0000", "\u0011\u0018\u0004\t\u001b\b#", new Object[]{simpleSymbol8}, 0);
        Lit36 = new SyntaxTemplate("\u0001\u0001\u0000\u0001\u0001\u0000", "\t\u001b\u0018\u0004", new Object[]{PairWithPosition.make(special, lList, "/u2/home/jis/ai2-kawa/kawa/lib/prim_syntax.scm", 450594)}, 0);
        Lit35 = new SyntaxPattern(",\f\u001f\f'\b+", new Object[0], 6);
        Lit34 = new SyntaxPattern("\b", new Object[0], 3);
        Lit33 = new SyntaxTemplate("\u0001\u0001\u0000", "\u0012", new Object[0], 0);
        Lit32 = new SyntaxTemplate("\u0001\u0001\u0000", "\u0018\u0004", new Object[]{PairWithPosition.make((SimpleSymbol) a.f("%let"), lList, "/u2/home/jis/ai2-kawa/kawa/lib/prim_syntax.scm", 512011)}, 0);
        Lit31 = new SyntaxTemplate("\u0001\u0001\u0000", "\u000b", new Object[0], 0);
        Lit30 = new SyntaxPattern("\f\u0007\f\u000f\u0013", new Object[0], 3);
        SimpleSymbol simpleSymbol9 = (SimpleSymbol) a.f("letrec");
        Lit29 = simpleSymbol9;
        Lit28 = new SyntaxTemplate("\u0001\u0001\u0003\u0003\u0002", "(\b\u0015A\b\t\u0013\u0011\u0018\u0004\b\u001b\"", new Object[]{simpleSymbol4}, 1);
        Lit27 = new SyntaxTemplate("\u0001\u0001\u0003\u0003\u0002", "\u000b", new Object[0], 0);
        Lit26 = new SyntaxPattern("\f\u0007\f\u000f-\f\u0017\f\u001f#\u0010\u0018\b", new Object[0], 5);
        SimpleSymbol simpleSymbol10 = (SimpleSymbol) a.f("try-catch");
        Lit25 = simpleSymbol10;
        Lit24 = new SyntaxTemplate("\u0001\u0000", "\n", new Object[0], 0);
        Lit23 = new SyntaxPattern("\f\u0007\u000b", new Object[0], 2);
        Lit22 = new SyntaxTemplate("\u0001\u0001\u0001\u0001\u0001\u0000", "#", new Object[0], 0);
        Lit21 = new SyntaxPattern("\f\u0007\f\u000f\f\u0017\f\u001f\f'+", new Object[0], 6);
        Lit20 = new SyntaxTemplate("\u0001\u0001\u0001\u0001", "\u001b", new Object[0], 0);
        Lit19 = new SyntaxTemplate("\u0001\u0001\u0001\u0001", "\u0013", new Object[0], 0);
        Lit18 = new SyntaxTemplate("\u0001\u0001\u0001\u0001", "\u000b", new Object[0], 0);
        Lit17 = new SyntaxPattern("\f\u0007\f\u000f\f\u0017\f\u001f\b", new Object[0], 4);
        Lit16 = new SyntaxTemplate("\u0001\u0001\u0001", "\u0013", new Object[0], 0);
        Lit15 = new SyntaxTemplate("\u0001\u0001\u0001", "\u000b", new Object[0], 0);
        Lit14 = new SyntaxPattern("\f\u0007\f\u000f\f\u0017\b", new Object[0], 3);
        SimpleSymbol simpleSymbol11 = (SimpleSymbol) a.f("if");
        Lit13 = simpleSymbol11;
        SimpleSymbol simpleSymbol12 = (SimpleSymbol) a.f("syntax-body->expression");
        Lit11 = simpleSymbol12;
        SyntaxRules syntaxRules = new SyntaxRules(new Object[]{simpleSymbol12}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\b", new Object[0], 1), "\u0001", "\u0011\u0018\u0004\b\u0003", new Object[]{PairWithPosition.make(simpleSymbol7, a.c((SimpleSymbol) a.f("rewriteBody"), lList, simpleSymbol5, lList, simpleSymbol6), "/u2/home/jis/ai2-kawa/kawa/lib/prim_syntax.scm", 270343)}, 0)}, 1);
        Lit12 = syntaxRules;
        SimpleSymbol simpleSymbol13 = (SimpleSymbol) a.f("syntax->expression");
        Lit9 = simpleSymbol13;
        SyntaxRules syntaxRules2 = new SyntaxRules(new Object[]{simpleSymbol13}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\b", new Object[0], 1), "\u0001", "\u0011\u0018\u0004\b\u0003", new Object[]{PairWithPosition.make(simpleSymbol7, a.c((SimpleSymbol) a.f("rewrite"), lList, simpleSymbol5, lList, simpleSymbol6), "/u2/home/jis/ai2-kawa/kawa/lib/prim_syntax.scm", 249863)}, 0)}, 1);
        Lit10 = syntaxRules2;
        SimpleSymbol simpleSymbol14 = (SimpleSymbol) a.f("syntax-error");
        Lit8 = simpleSymbol14;
        SimpleSymbol simpleSymbol15 = (SimpleSymbol) a.f("define-constant");
        Lit6 = simpleSymbol15;
        SyntaxRule syntaxRule = new SyntaxRule(new SyntaxPattern("\f\u0018\\\f\u0002\f\u0007,\f\u000f\f\u0017\b\b\f\n\f\u001f\f'\b", new Object[]{simpleSymbol7, simpleSymbol4}, 5), "\u0001\u0001\u0001\u0001\u0001", "\u0011\u0018\u0004Q\u0011\u0018\f\t\u0003\b\t\u000b\b\u0013\u0011\u0018\u0014\t\u001b\b#", new Object[]{simpleSymbol3, simpleSymbol7, intNumMake6}, 0);
        SyntaxPattern syntaxPattern = new SyntaxPattern("\f\u0018\\\f\u0002\f\u0007,\f\u000f\f\u0017\b\b\f\u001f\b", new Object[]{simpleSymbol7}, 4);
        Object[] objArr = new Object[4];
        objArr[0] = simpleSymbol3;
        objArr[1] = simpleSymbol7;
        objArr[2] = intNumMake5;
        SyntaxRule syntaxRule2 = new SyntaxRule(syntaxPattern, "\u0001\u0001\u0001\u0001", "\u0011\u0018\u0004Q\u0011\u0018\f\t\u0003\b\t\u000b\b\u0013\u0011\u0018\u0014\u0011\u0018\u001c\b\u001b", objArr, 0);
        SyntaxPattern syntaxPattern2 = new SyntaxPattern("\f\u0018\u001c\f\u0007\u000b\u0013", new Object[0], 3);
        IntNum intNumMake7 = IntNum.make(10);
        Boolean bool = Boolean.TRUE;
        SyntaxRule syntaxRule3 = new SyntaxRule(syntaxPattern2, "\u0001\u0000\u0000", "\u0011\u0018\u0004\t\u0003\u0011\u0018\f\u0011\u0018\u0014\t\n\u0012", new Object[]{simpleSymbol3, intNumMake7, bool}, 0);
        SyntaxRule syntaxRule4 = new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u0002\f\u000f\f\u0017\b", new Object[]{simpleSymbol4}, 3), "\u0001\u0001\u0001", "\u0011\u0018\u0004\t\u0003\u0011\u0018\f\t\u000b\b\u0013", new Object[]{simpleSymbol3, intNumMake6}, 0);
        SyntaxPattern syntaxPattern3 = new SyntaxPattern("\f\u0018\f\u0007\f\u000f\b", new Object[0], 2);
        Object[] objArr2 = new Object[3];
        objArr2[0] = simpleSymbol3;
        objArr2[1] = intNumMake5;
        SyntaxRules syntaxRules3 = new SyntaxRules(new Object[]{simpleSymbol15, simpleSymbol4, simpleSymbol7}, new SyntaxRule[]{syntaxRule, syntaxRule2, syntaxRule3, syntaxRule4, new SyntaxRule(syntaxPattern3, "\u0001\u0001", "\u0011\u0018\u0004\t\u0003\u0011\u0018\f\u0011\u0018\u0014\b\u000b", objArr2, 0)}, 5);
        Lit7 = syntaxRules3;
        SimpleSymbol simpleSymbol16 = (SimpleSymbol) a.f("define-private");
        Lit4 = simpleSymbol16;
        SyntaxRule syntaxRule5 = new SyntaxRule(new SyntaxPattern("\f\u0018\\\f\u0002\f\u0007,\f\u000f\f\u0017\b\b\f\n\f\u001f\f'\b", new Object[]{simpleSymbol7, simpleSymbol4}, 5), "\u0001\u0001\u0001\u0001\u0001", "\u0011\u0018\u0004Q\u0011\u0018\f\t\u0003\b\t\u000b\b\u0013\u0011\u0018\u0014\t\u001b\b#", new Object[]{simpleSymbol3, simpleSymbol7, intNumMake4}, 0);
        SyntaxPattern syntaxPattern4 = new SyntaxPattern("\f\u0018\\\f\u0002\f\u0007,\f\u000f\f\u0017\b\b\f\u001f\b", new Object[]{simpleSymbol7}, 4);
        Object[] objArr3 = new Object[4];
        objArr3[0] = simpleSymbol3;
        objArr3[1] = simpleSymbol7;
        objArr3[2] = intNumMake3;
        SyntaxRule syntaxRule6 = new SyntaxRule(syntaxPattern4, "\u0001\u0001\u0001\u0001", "\u0011\u0018\u0004Q\u0011\u0018\f\t\u0003\b\t\u000b\b\u0013\u0011\u0018\u0014\u0011\u0018\u001c\b\u001b", objArr3, 0);
        SyntaxRule syntaxRule7 = new SyntaxRule(new SyntaxPattern("\f\u0018\u001c\f\u0007\u000b\u0013", new Object[0], 3), "\u0001\u0000\u0000", "\u0011\u0018\u0004\t\u0003\u0011\u0018\f\u0011\u0018\u0014\t\n\u0012", new Object[]{simpleSymbol3, IntNum.make(6), bool}, 0);
        SyntaxRule syntaxRule8 = new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u0002\f\u000f\f\u0017\b", new Object[]{simpleSymbol4}, 3), "\u0001\u0001\u0001", "\u0011\u0018\u0004\t\u0003\u0011\u0018\f\t\u000b\b\u0013", new Object[]{simpleSymbol3, intNumMake4}, 0);
        SyntaxPattern syntaxPattern5 = new SyntaxPattern("\f\u0018\f\u0007\f\u000f\b", new Object[0], 2);
        Object[] objArr4 = new Object[3];
        objArr4[0] = simpleSymbol3;
        objArr4[1] = intNumMake3;
        SyntaxRules syntaxRules4 = new SyntaxRules(new Object[]{simpleSymbol16, simpleSymbol4, simpleSymbol7}, new SyntaxRule[]{syntaxRule5, syntaxRule6, syntaxRule7, syntaxRule8, new SyntaxRule(syntaxPattern5, "\u0001\u0001", "\u0011\u0018\u0004\t\u0003\u0011\u0018\f\u0011\u0018\u0014\b\u000b", objArr4, 0)}, 5);
        Lit5 = syntaxRules4;
        SimpleSymbol simpleSymbol17 = (SimpleSymbol) a.f("define");
        Lit2 = simpleSymbol17;
        SyntaxRule syntaxRule9 = new SyntaxRule(new SyntaxPattern("\f\u0018\\\f\u0002\f\u0007,\f\u000f\f\u0017\b\b\f\n\f\u001f\f'\b", new Object[]{simpleSymbol7, simpleSymbol4}, 5), "\u0001\u0001\u0001\u0001\u0001", "\u0011\u0018\u0004Q\u0011\u0018\f\t\u0003\b\t\u000b\b\u0013\u0011\u0018\u0014\t\u001b\b#", new Object[]{simpleSymbol3, simpleSymbol7, intNumMake2}, 0);
        SyntaxPattern syntaxPattern6 = new SyntaxPattern("\f\u0018\\\f\u0002\f\u0007,\f\u000f\f\u0017\b\b\f\u001f\b", new Object[]{simpleSymbol7}, 4);
        Object[] objArr5 = new Object[4];
        objArr5[0] = simpleSymbol3;
        objArr5[1] = simpleSymbol7;
        objArr5[2] = intNumMake;
        SyntaxRule syntaxRule10 = new SyntaxRule(syntaxPattern6, "\u0001\u0001\u0001\u0001", "\u0011\u0018\u0004Q\u0011\u0018\f\t\u0003\b\t\u000b\b\u0013\u0011\u0018\u0014\u0011\u0018\u001c\b\u001b", objArr5, 0);
        SyntaxRule syntaxRule11 = new SyntaxRule(new SyntaxPattern("\f\u0018\u001c\f\u0007\u000b\u0013", new Object[0], 3), "\u0001\u0000\u0000", "\u0011\u0018\u0004\t\u0003\u0011\u0018\f\u0011\u0018\u0014\t\n\u0012", new Object[]{simpleSymbol3, IntNum.make(2), bool}, 0);
        SyntaxRule syntaxRule12 = new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u0002\f\u000f\f\u0017\b", new Object[]{simpleSymbol4}, 3), "\u0001\u0001\u0001", "\u0011\u0018\u0004\t\u0003\u0011\u0018\f\t\u000b\b\u0013", new Object[]{simpleSymbol3, intNumMake2}, 0);
        SyntaxPattern syntaxPattern7 = new SyntaxPattern("\f\u0018\f\u0007\f\u000f\b", new Object[0], 2);
        Object[] objArr6 = new Object[3];
        objArr6[0] = simpleSymbol3;
        objArr6[1] = intNumMake;
        SyntaxRules syntaxRules5 = new SyntaxRules(new Object[]{simpleSymbol17, simpleSymbol4, simpleSymbol7}, new SyntaxRule[]{syntaxRule9, syntaxRule10, syntaxRule11, syntaxRule12, new SyntaxRule(syntaxPattern7, "\u0001\u0001", "\u0011\u0018\u0004\t\u0003\u0011\u0018\f\u0011\u0018\u0014\b\u000b", objArr6, 0)}, 5);
        Lit3 = syntaxRules5;
        SimpleSymbol simpleSymbol18 = (SimpleSymbol) a.f("define-syntax");
        Lit0 = simpleSymbol18;
        SyntaxRules syntaxRules6 = new SyntaxRules(new Object[]{simpleSymbol18, simpleSymbol7}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018l\\\f\u0002\f\u0007,\f\u000f\f\u0017\b\b\u001b#", new Object[]{simpleSymbol7}, 5), "\u0001\u0001\u0001\u0000\u0000", "\u0011\u0018\u0004Q\u0011\u0018\f\t\u0003\b\t\u000b\b\u0013\b\u0011\u0018\u0014\t\u001a\"", new Object[]{simpleSymbol2, simpleSymbol7, simpleSymbol}, 0), new SyntaxRule(new SyntaxPattern("\f\u0018\\\f\u0002\f\u0007,\f\u000f\f\u0017\b\b\f\u001f\b", new Object[]{simpleSymbol7}, 4), "\u0001\u0001\u0001\u0001", "\u0011\u0018\u0004Q\u0011\u0018\f\t\u0003\b\t\u000b\b\u0013\b\u001b", new Object[]{simpleSymbol2, simpleSymbol7}, 0), new SyntaxRule(new SyntaxPattern("\f\u0018\u001c\f\u0007\u000b\u0013", new Object[0], 3), "\u0001\u0000\u0000", "\u0011\u0018\u0004\t\u0003\b\u0011\u0018\f\t\n\u0012", new Object[]{simpleSymbol2, simpleSymbol}, 0), new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\b", new Object[0], 2), "\u0001\u0001", "\u0011\u0018\u0004\t\u0003\b\u000b", new Object[]{simpleSymbol2}, 0)}, 5);
        Lit1 = syntaxRules6;
        prim_syntax prim_syntaxVar = new prim_syntax();
        $instance = prim_syntaxVar;
        define$Mnsyntax = Macro.make(simpleSymbol18, syntaxRules6, prim_syntaxVar);
        define = Macro.make(simpleSymbol17, syntaxRules5, prim_syntaxVar);
        define$Mnprivate = Macro.make(simpleSymbol16, syntaxRules4, prim_syntaxVar);
        define$Mnconstant = Macro.make(simpleSymbol15, syntaxRules3, prim_syntaxVar);
        syntax$Mnerror = new ModuleMethod(prim_syntaxVar, 1, simpleSymbol14, -4095);
        syntax$Mn$Grexpression = Macro.make(simpleSymbol13, syntaxRules2, prim_syntaxVar);
        syntax$Mnbody$Mn$Grexpression = Macro.make(simpleSymbol12, syntaxRules, prim_syntaxVar);
        ModuleMethod moduleMethod = new ModuleMethod(prim_syntaxVar, 2, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/kawa/lib/prim_syntax.scm:69");
        f6if = Macro.make(simpleSymbol11, moduleMethod, prim_syntaxVar);
        ModuleMethod moduleMethod2 = new ModuleMethod(prim_syntaxVar, 3, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod2.setProperty("source-location", "/u2/home/jis/ai2-kawa/kawa/lib/prim_syntax.scm:89");
        try$Mncatch = Macro.make(simpleSymbol10, moduleMethod2, prim_syntaxVar);
        ModuleMethod moduleMethod3 = new ModuleMethod(prim_syntaxVar, 4, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod3.setProperty("source-location", "/u2/home/jis/ai2-kawa/kawa/lib/prim_syntax.scm:98");
        letrec = Macro.make(simpleSymbol9, moduleMethod3, prim_syntaxVar);
        prim_syntaxVar.run();
    }

    public prim_syntax() {
        ModuleInfo.register(this);
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext callContext) {
        Consumer consumer = callContext.consumer;
    }

    @Override // gnu.expr.ModuleBody
    public Object applyN(ModuleMethod moduleMethod, Object[] objArr) {
        if (moduleMethod.selector != 1) {
            return super.applyN(moduleMethod, objArr);
        }
        Object obj = objArr[0];
        int length = objArr.length - 1;
        Object[] objArr2 = new Object[length];
        while (true) {
            int i = length - 1;
            if (i < 0) {
                return syntaxError(obj, objArr2);
            }
            objArr2[i] = objArr[length];
            length = i;
        }
    }

    @Override // gnu.expr.ModuleBody
    public int matchN(ModuleMethod moduleMethod, Object[] objArr, CallContext callContext) {
        if (moduleMethod.selector != 1) {
            return super.matchN(moduleMethod, objArr, callContext);
        }
        callContext.values = objArr;
        callContext.proc = moduleMethod;
        callContext.pc = 5;
        return 0;
    }

    public static Expression syntaxError(Object obj, Object... objArr) {
        return syntax_error.error(obj, objArr);
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
        if (i != 4) {
            return super.match1(moduleMethod, obj, callContext);
        }
        callContext.value1 = obj;
        callContext.proc = moduleMethod;
        callContext.pc = 1;
        return 0;
    }

    public static Object lambda1(Object obj) {
        Object[] objArrAllocVars = SyntaxPattern.allocVars(6, null);
        if (Lit14.match(obj, objArrAllocVars, 0)) {
            return new IfExp(SyntaxForms.rewrite(Lit15.execute(objArrAllocVars, TemplateScope.make())), SyntaxForms.rewrite(Lit16.execute(objArrAllocVars, TemplateScope.make())), null);
        }
        if (Lit17.match(obj, objArrAllocVars, 0)) {
            return new IfExp(SyntaxForms.rewrite(Lit18.execute(objArrAllocVars, TemplateScope.make())), SyntaxForms.rewrite(Lit19.execute(objArrAllocVars, TemplateScope.make())), SyntaxForms.rewrite(Lit20.execute(objArrAllocVars, TemplateScope.make())));
        }
        if (Lit21.match(obj, objArrAllocVars, 0)) {
            return syntaxError(Lit22.execute(objArrAllocVars, TemplateScope.make()), "too many expressions for 'if'" instanceof Object[] ? (Object[]) "too many expressions for 'if'" : new Object[]{"too many expressions for 'if'"});
        }
        if (Lit23.match(obj, objArrAllocVars, 0)) {
            return syntaxError(Lit24.execute(objArrAllocVars, TemplateScope.make()), "too few expressions for 'if'" instanceof Object[] ? (Object[]) "too few expressions for 'if'" : new Object[]{"too few expressions for 'if'"});
        }
        return syntax_case.error("syntax-case", obj);
    }

    public static Object lambda2(Object obj) {
        Object[] objArrAllocVars = SyntaxPattern.allocVars(5, null);
        if (!Lit26.match(obj, objArrAllocVars, 0)) {
            return syntax_case.error("syntax-case", obj);
        }
        return try_catch.rewrite(Lit27.execute(objArrAllocVars, TemplateScope.make()), Lit28.execute(objArrAllocVars, TemplateScope.make()));
    }

    public static Object lambda3(Object obj) {
        frame frameVar = new frame();
        LList lList = LList.Empty;
        frameVar.out$Mninits = lList;
        frameVar.out$Mnbindings = lList;
        Object[] objArrAllocVars = SyntaxPattern.allocVars(3, null);
        frameVar.$unnamed$0 = objArrAllocVars;
        if (!Lit30.match(obj, objArrAllocVars, 0)) {
            return syntax_case.error("syntax-case", obj);
        }
        frameVar.lambda4processBinding(Lit31.execute(frameVar.$unnamed$0, TemplateScope.make()));
        frameVar.out$Mnbindings = LList.reverseInPlace(frameVar.out$Mnbindings);
        frameVar.out$Mninits = LList.reverseInPlace(frameVar.out$Mninits);
        TemplateScope templateScopeMake = TemplateScope.make();
        return Quote.append$V(new Object[]{Lit32.execute(frameVar.$unnamed$0, templateScopeMake), LList.consX(new Object[]{frameVar.out$Mnbindings, Quote.append$V(new Object[]{frameVar.out$Mninits, Lit33.execute(frameVar.$unnamed$0, templateScopeMake)})})});
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) {
        int i = moduleMethod.selector;
        if (i == 2) {
            return lambda1(obj);
        }
        if (i != 3) {
            return i != 4 ? super.apply1(moduleMethod, obj) : lambda3(obj);
        }
        return lambda2(obj);
    }

    public class frame extends ModuleBody {
        Object[] $unnamed$0;
        Object out$Mnbindings;
        Object out$Mninits;

        public Object lambda4processBinding(Object obj) {
            Object[] objArrAllocVars = SyntaxPattern.allocVars(8, this.$unnamed$0);
            if (prim_syntax.Lit34.match(obj, objArrAllocVars, 0)) {
                return Values.empty;
            }
            if (prim_syntax.Lit35.match(obj, objArrAllocVars, 0)) {
                this.out$Mnbindings = new Pair(prim_syntax.Lit36.execute(objArrAllocVars, TemplateScope.make()), this.out$Mnbindings);
                this.out$Mninits = new Pair(prim_syntax.Lit37.execute(objArrAllocVars, TemplateScope.make()), this.out$Mninits);
                return lambda4processBinding(prim_syntax.Lit38.execute(objArrAllocVars, TemplateScope.make()));
            }
            if (prim_syntax.Lit39.match(obj, objArrAllocVars, 0)) {
                this.out$Mnbindings = new Pair(prim_syntax.Lit40.execute(objArrAllocVars, TemplateScope.make()), this.out$Mnbindings);
                this.out$Mninits = new Pair(prim_syntax.Lit41.execute(objArrAllocVars, TemplateScope.make()), this.out$Mninits);
                return lambda4processBinding(prim_syntax.Lit42.execute(objArrAllocVars, TemplateScope.make()));
            }
            if (prim_syntax.Lit43.match(obj, objArrAllocVars, 0)) {
                return prim_syntax.syntaxError(obj, "missing initializion in letrec" instanceof Object[] ? (Object[]) "missing initializion in letrec" : new Object[]{"missing initializion in letrec"});
            }
            if (prim_syntax.Lit44.match(obj, objArrAllocVars, 0)) {
                return prim_syntax.syntaxError(obj, "invalid bindings syntax in letrec" instanceof Object[] ? (Object[]) "invalid bindings syntax in letrec" : new Object[]{"invalid bindings syntax in letrec"});
            }
            return syntax_case.error("syntax-case", obj);
        }
    }
}
