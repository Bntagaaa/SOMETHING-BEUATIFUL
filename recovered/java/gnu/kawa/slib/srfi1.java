package gnu.kawa.slib;

import androidx.fragment.app.FragmentTransaction;
import com.google.appinventor.components.common.ComponentConstants;
import com.google.youngandroid.a;
import gnu.expr.GenericProc;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.kawa.functions.AddOp;
import gnu.kawa.functions.Apply;
import gnu.kawa.functions.ApplyToArgs;
import gnu.kawa.functions.Map;
import gnu.kawa.functions.MultiplyOp;
import gnu.kawa.lispexpr.LangObjType;
import gnu.lists.Consumer;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.lists.PairWithPosition;
import gnu.mapping.CallContext;
import gnu.mapping.Procedure;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Values;
import gnu.mapping.WrongType;
import gnu.math.IntNum;
import gnu.math.Numeric;
import kawa.lang.Continuation;
import kawa.lang.Macro;
import kawa.lang.SyntaxPattern;
import kawa.lang.SyntaxRule;
import kawa.lang.SyntaxRules;
import kawa.lib.lists;
import kawa.lib.misc;
import kawa.lib.numbers;
import kawa.standard.Scheme;
import kawa.standard.append;
import kawa.standard.call_with_values;
import kotlinx.coroutines.scheduling.WorkQueueKt;

/* loaded from: classes2.dex */
public class srfi1 extends ModuleBody {
    public static final Macro $Pcevery;
    public static final int $Pcprovide$Pclist$Mnlib;
    public static final int $Pcprovide$Pcsrfi$Mn1;
    public static final srfi1 $instance;
    static final IntNum Lit0;
    static final IntNum Lit1;
    static final SimpleSymbol Lit10;
    static final SimpleSymbol Lit100;
    static final SimpleSymbol Lit101;
    static final SimpleSymbol Lit102;
    static final SimpleSymbol Lit103;
    static final SimpleSymbol Lit104;
    static final SimpleSymbol Lit11;
    static final SimpleSymbol Lit12;
    static final SimpleSymbol Lit13;
    static final SimpleSymbol Lit14;
    static final SimpleSymbol Lit15;
    static final SimpleSymbol Lit16;
    static final SimpleSymbol Lit17;
    static final SimpleSymbol Lit18;
    static final SimpleSymbol Lit19;
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
    static final SimpleSymbol Lit71;
    static final SimpleSymbol Lit72;
    static final SimpleSymbol Lit73;
    static final SimpleSymbol Lit74;
    static final SimpleSymbol Lit75;
    static final SimpleSymbol Lit76;
    static final SimpleSymbol Lit77;
    static final SimpleSymbol Lit78;
    static final SimpleSymbol Lit79;
    static final SimpleSymbol Lit8;
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
    static final SimpleSymbol Lit90;
    static final SimpleSymbol Lit91;
    static final SimpleSymbol Lit92;
    static final SimpleSymbol Lit93;
    static final SimpleSymbol Lit94;
    static final SimpleSymbol Lit95;
    static final SimpleSymbol Lit96;
    static final SimpleSymbol Lit97;
    static final SimpleSymbol Lit98;
    static final SimpleSymbol Lit99;
    public static final ModuleMethod alist$Mncons;
    public static final ModuleMethod alist$Mncopy;
    public static final ModuleMethod alist$Mndelete;
    public static final ModuleMethod alist$Mndelete$Ex;
    public static final ModuleMethod any;
    public static final ModuleMethod append$Ex;
    public static final ModuleMethod append$Mnmap;
    public static final ModuleMethod append$Mnmap$Ex;
    public static final ModuleMethod append$Mnreverse;
    public static final ModuleMethod append$Mnreverse$Ex;

    /* renamed from: break, reason: not valid java name */
    public static final ModuleMethod f3break;
    public static final ModuleMethod break$Ex;
    public static final ModuleMethod car$Plcdr;
    public static final ModuleMethod circular$Mnlist;
    public static final ModuleMethod circular$Mnlist$Qu;
    public static final ModuleMethod concatenate;
    public static final ModuleMethod concatenate$Ex;
    public static final ModuleMethod cons$St;
    public static final ModuleMethod count;
    public static final ModuleMethod delete;
    public static final ModuleMethod delete$Ex;
    public static final ModuleMethod delete$Mnduplicates;
    public static final ModuleMethod delete$Mnduplicates$Ex;
    public static final ModuleMethod dotted$Mnlist$Qu;
    public static final ModuleMethod drop;
    public static final ModuleMethod drop$Mnright;
    public static final ModuleMethod drop$Mnright$Ex;
    public static final ModuleMethod drop$Mnwhile;
    public static final ModuleMethod eighth;
    public static final ModuleMethod every;
    public static final ModuleMethod fifth;
    public static final ModuleMethod filter;
    public static final ModuleMethod filter$Ex;
    public static final ModuleMethod filter$Mnmap;
    public static final ModuleMethod find;
    public static final ModuleMethod find$Mntail;
    public static GenericProc first;
    public static final ModuleMethod fold;
    public static final ModuleMethod fold$Mnright;
    public static GenericProc fourth;
    public static final ModuleMethod iota;
    static final ModuleMethod lambda$Fn64;
    static final ModuleMethod lambda$Fn78;
    public static final ModuleMethod last;
    public static final ModuleMethod last$Mnpair;
    public static final ModuleMethod length$Pl;
    public static final ModuleMethod list$Eq;
    public static final ModuleMethod list$Mncopy;
    public static final ModuleMethod list$Mnindex;
    public static final ModuleMethod list$Mntabulate;
    public static final ModuleMethod lset$Eq;
    public static final ModuleMethod lset$Ls$Eq;
    public static final ModuleMethod lset$Mnadjoin;
    public static final ModuleMethod lset$Mndiff$Plintersection;
    public static final ModuleMethod lset$Mndiff$Plintersection$Ex;
    public static final ModuleMethod lset$Mndifference;
    public static final ModuleMethod lset$Mndifference$Ex;
    public static final ModuleMethod lset$Mnintersection;
    public static final ModuleMethod lset$Mnintersection$Ex;
    public static final ModuleMethod lset$Mnunion;
    public static final ModuleMethod lset$Mnunion$Ex;
    public static final ModuleMethod lset$Mnxor;
    public static final ModuleMethod lset$Mnxor$Ex;
    public static final ModuleMethod make$Mnlist;
    public static final ModuleMethod map$Ex;
    public static Map map$Mnin$Mnorder;
    public static final ModuleMethod ninth;
    public static final ModuleMethod not$Mnpair$Qu;
    public static final ModuleMethod null$Mnlist$Qu;
    public static final ModuleMethod pair$Mnfold;
    public static final ModuleMethod pair$Mnfold$Mnright;
    public static final ModuleMethod pair$Mnfor$Mneach;
    public static final ModuleMethod partition;
    public static final ModuleMethod partition$Ex;
    public static final ModuleMethod proper$Mnlist$Qu;
    public static final ModuleMethod reduce;
    public static final ModuleMethod reduce$Mnright;
    public static final ModuleMethod remove;
    public static final ModuleMethod remove$Ex;
    public static GenericProc second;
    public static final ModuleMethod seventh;
    public static final ModuleMethod sixth;
    public static final ModuleMethod span;
    public static final ModuleMethod span$Ex;
    public static final ModuleMethod split$Mnat;
    public static final ModuleMethod split$Mnat$Ex;
    public static final ModuleMethod take;
    public static final ModuleMethod take$Ex;
    public static final ModuleMethod take$Mnright;
    public static final ModuleMethod take$Mnwhile;
    public static final ModuleMethod take$Mnwhile$Ex;
    public static final ModuleMethod tenth;
    public static GenericProc third;
    public static final ModuleMethod unfold;
    public static final ModuleMethod unfold$Mnright;
    public static final ModuleMethod unzip1;
    public static final ModuleMethod unzip2;
    public static final ModuleMethod unzip3;
    public static final ModuleMethod unzip4;
    public static final ModuleMethod unzip5;
    public static final ModuleMethod xcons;
    public static final ModuleMethod zip;

    public class frame62 extends ModuleBody {
        Object cars$Mnfinal;
    }

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("cdr");
        Lit104 = simpleSymbol;
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f("car");
        Lit103 = simpleSymbol2;
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) a.f("lp");
        Lit102 = simpleSymbol3;
        SimpleSymbol simpleSymbol4 = (SimpleSymbol) a.f("head");
        Lit101 = simpleSymbol4;
        SimpleSymbol simpleSymbol5 = (SimpleSymbol) a.f("tail");
        Lit100 = simpleSymbol5;
        SimpleSymbol simpleSymbol6 = (SimpleSymbol) a.f("lset-diff+intersection!");
        Lit99 = simpleSymbol6;
        SimpleSymbol simpleSymbol7 = (SimpleSymbol) a.f("lset-diff+intersection");
        Lit98 = simpleSymbol7;
        SimpleSymbol simpleSymbol8 = (SimpleSymbol) a.f("lset-xor!");
        Lit97 = simpleSymbol8;
        SimpleSymbol simpleSymbol9 = (SimpleSymbol) a.f("lset-xor");
        Lit96 = simpleSymbol9;
        SimpleSymbol simpleSymbol10 = (SimpleSymbol) a.f("lset-difference!");
        Lit95 = simpleSymbol10;
        SimpleSymbol simpleSymbol11 = (SimpleSymbol) a.f("lset-difference");
        Lit94 = simpleSymbol11;
        SimpleSymbol simpleSymbol12 = (SimpleSymbol) a.f("lset-intersection!");
        Lit93 = simpleSymbol12;
        SimpleSymbol simpleSymbol13 = (SimpleSymbol) a.f("lset-intersection");
        Lit92 = simpleSymbol13;
        SimpleSymbol simpleSymbol14 = (SimpleSymbol) a.f("lset-union!");
        Lit91 = simpleSymbol14;
        SimpleSymbol simpleSymbol15 = (SimpleSymbol) a.f("lset-union");
        Lit90 = simpleSymbol15;
        SimpleSymbol simpleSymbol16 = (SimpleSymbol) a.f("lset-adjoin");
        Lit89 = simpleSymbol16;
        SimpleSymbol simpleSymbol17 = (SimpleSymbol) a.f("lset=");
        Lit88 = simpleSymbol17;
        SimpleSymbol simpleSymbol18 = (SimpleSymbol) a.f("lset<=");
        Lit87 = simpleSymbol18;
        SimpleSymbol simpleSymbol19 = (SimpleSymbol) a.f("list-index");
        Lit86 = simpleSymbol19;
        SimpleSymbol simpleSymbol20 = (SimpleSymbol) a.f("%every");
        Lit84 = simpleSymbol20;
        SyntaxPattern syntaxPattern = new SyntaxPattern("\f\u0018\f\u0007\f\u000f\b", new Object[0], 2);
        SimpleSymbol simpleSymbol21 = (SimpleSymbol) a.f("let");
        SimpleSymbol simpleSymbol22 = (SimpleSymbol) a.f("and");
        SimpleSymbol simpleSymbol23 = (SimpleSymbol) a.f("null-list?");
        Lit14 = simpleSymbol23;
        LList lList = LList.Empty;
        SyntaxRules syntaxRules = new SyntaxRules(new Object[]{simpleSymbol20}, new SyntaxRule[]{new SyntaxRule(syntaxPattern, "\u0001\u0001", "\u0011\u0018\u0004\u0011\u0018\f¡I\u0011\u0018\u0014\b\u0011\u0018\u001c\b\u000b\b\u0011\u0018$\b\u0011\u0018,\b\u000b\b\u0011\u00184\u0011\u0018<!\t\u0003\u0018D\u0018L", new Object[]{simpleSymbol21, simpleSymbol3, simpleSymbol4, simpleSymbol2, simpleSymbol5, simpleSymbol, simpleSymbol22, PairWithPosition.make(simpleSymbol23, PairWithPosition.make(simpleSymbol5, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm", 5722136), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm", 5722124), PairWithPosition.make(simpleSymbol4, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm", 5722148), PairWithPosition.make(PairWithPosition.make(simpleSymbol3, PairWithPosition.make(PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol5, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm", 5722163), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm", 5722158), PairWithPosition.make(PairWithPosition.make(simpleSymbol, PairWithPosition.make(simpleSymbol5, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm", 5722174), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm", 5722169), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm", 5722169), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm", 5722158), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm", 5722154), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm", 5722154)}, 0)}, 2);
        Lit85 = syntaxRules;
        SimpleSymbol simpleSymbol24 = (SimpleSymbol) a.f("every");
        Lit83 = simpleSymbol24;
        SimpleSymbol simpleSymbol25 = (SimpleSymbol) a.f("any");
        Lit82 = simpleSymbol25;
        SimpleSymbol simpleSymbol26 = (SimpleSymbol) a.f("break!");
        Lit81 = simpleSymbol26;
        SimpleSymbol simpleSymbol27 = (SimpleSymbol) a.f("break");
        Lit80 = simpleSymbol27;
        SimpleSymbol simpleSymbol28 = (SimpleSymbol) a.f("span!");
        Lit79 = simpleSymbol28;
        SimpleSymbol simpleSymbol29 = (SimpleSymbol) a.f("span");
        Lit78 = simpleSymbol29;
        SimpleSymbol simpleSymbol30 = (SimpleSymbol) a.f("take-while!");
        Lit77 = simpleSymbol30;
        SimpleSymbol simpleSymbol31 = (SimpleSymbol) a.f("drop-while");
        Lit76 = simpleSymbol31;
        SimpleSymbol simpleSymbol32 = (SimpleSymbol) a.f("take-while");
        Lit75 = simpleSymbol32;
        SimpleSymbol simpleSymbol33 = (SimpleSymbol) a.f("find-tail");
        Lit74 = simpleSymbol33;
        SimpleSymbol simpleSymbol34 = (SimpleSymbol) a.f("find");
        Lit73 = simpleSymbol34;
        SimpleSymbol simpleSymbol35 = (SimpleSymbol) a.f("alist-delete!");
        Lit72 = simpleSymbol35;
        SimpleSymbol simpleSymbol36 = (SimpleSymbol) a.f("alist-delete");
        Lit71 = simpleSymbol36;
        SimpleSymbol simpleSymbol37 = (SimpleSymbol) a.f("alist-copy");
        Lit70 = simpleSymbol37;
        SimpleSymbol simpleSymbol38 = (SimpleSymbol) a.f("alist-cons");
        Lit69 = simpleSymbol38;
        SimpleSymbol simpleSymbol39 = (SimpleSymbol) a.f("delete-duplicates!");
        Lit68 = simpleSymbol39;
        SimpleSymbol simpleSymbol40 = (SimpleSymbol) a.f("delete-duplicates");
        Lit67 = simpleSymbol40;
        SimpleSymbol simpleSymbol41 = (SimpleSymbol) a.f("delete!");
        Lit66 = simpleSymbol41;
        SimpleSymbol simpleSymbol42 = (SimpleSymbol) a.f("delete");
        Lit65 = simpleSymbol42;
        SimpleSymbol simpleSymbol43 = (SimpleSymbol) a.f("remove!");
        Lit64 = simpleSymbol43;
        SimpleSymbol simpleSymbol44 = (SimpleSymbol) a.f("remove");
        Lit63 = simpleSymbol44;
        SimpleSymbol simpleSymbol45 = (SimpleSymbol) a.f("partition!");
        Lit62 = simpleSymbol45;
        SimpleSymbol simpleSymbol46 = (SimpleSymbol) a.f("partition");
        Lit61 = simpleSymbol46;
        SimpleSymbol simpleSymbol47 = (SimpleSymbol) a.f("filter!");
        Lit60 = simpleSymbol47;
        SimpleSymbol simpleSymbol48 = (SimpleSymbol) a.f("filter");
        Lit59 = simpleSymbol48;
        SimpleSymbol simpleSymbol49 = (SimpleSymbol) a.f("filter-map");
        Lit58 = simpleSymbol49;
        SimpleSymbol simpleSymbol50 = (SimpleSymbol) a.f("map!");
        Lit57 = simpleSymbol50;
        SimpleSymbol simpleSymbol51 = (SimpleSymbol) a.f("pair-for-each");
        Lit56 = simpleSymbol51;
        SimpleSymbol simpleSymbol52 = (SimpleSymbol) a.f("append-map!");
        Lit55 = simpleSymbol52;
        SimpleSymbol simpleSymbol53 = (SimpleSymbol) a.f("append-map");
        Lit54 = simpleSymbol53;
        SimpleSymbol simpleSymbol54 = (SimpleSymbol) a.f("reduce-right");
        Lit53 = simpleSymbol54;
        SimpleSymbol simpleSymbol55 = (SimpleSymbol) a.f("reduce");
        Lit52 = simpleSymbol55;
        SimpleSymbol simpleSymbol56 = (SimpleSymbol) a.f("pair-fold");
        Lit51 = simpleSymbol56;
        SimpleSymbol simpleSymbol57 = (SimpleSymbol) a.f("pair-fold-right");
        Lit50 = simpleSymbol57;
        SimpleSymbol simpleSymbol58 = (SimpleSymbol) a.f("fold-right");
        Lit49 = simpleSymbol58;
        SimpleSymbol simpleSymbol59 = (SimpleSymbol) a.f("fold");
        Lit48 = simpleSymbol59;
        SimpleSymbol simpleSymbol60 = (SimpleSymbol) a.f("unfold");
        Lit47 = simpleSymbol60;
        SimpleSymbol simpleSymbol61 = (SimpleSymbol) a.f("unfold-right");
        Lit46 = simpleSymbol61;
        SimpleSymbol simpleSymbol62 = (SimpleSymbol) a.f("count");
        Lit45 = simpleSymbol62;
        SimpleSymbol simpleSymbol63 = (SimpleSymbol) a.f("concatenate!");
        Lit44 = simpleSymbol63;
        SimpleSymbol simpleSymbol64 = (SimpleSymbol) a.f("concatenate");
        Lit43 = simpleSymbol64;
        SimpleSymbol simpleSymbol65 = (SimpleSymbol) a.f("append-reverse!");
        Lit42 = simpleSymbol65;
        SimpleSymbol simpleSymbol66 = (SimpleSymbol) a.f("append-reverse");
        Lit41 = simpleSymbol66;
        SimpleSymbol simpleSymbol67 = (SimpleSymbol) a.f("append!");
        Lit40 = simpleSymbol67;
        SimpleSymbol simpleSymbol68 = (SimpleSymbol) a.f("unzip5");
        Lit39 = simpleSymbol68;
        SimpleSymbol simpleSymbol69 = (SimpleSymbol) a.f("unzip4");
        Lit38 = simpleSymbol69;
        SimpleSymbol simpleSymbol70 = (SimpleSymbol) a.f("unzip3");
        Lit37 = simpleSymbol70;
        SimpleSymbol simpleSymbol71 = (SimpleSymbol) a.f("unzip2");
        Lit36 = simpleSymbol71;
        SimpleSymbol simpleSymbol72 = (SimpleSymbol) a.f("unzip1");
        Lit35 = simpleSymbol72;
        SimpleSymbol simpleSymbol73 = (SimpleSymbol) a.f("last-pair");
        Lit34 = simpleSymbol73;
        SimpleSymbol simpleSymbol74 = (SimpleSymbol) a.f("last");
        Lit33 = simpleSymbol74;
        SimpleSymbol simpleSymbol75 = (SimpleSymbol) a.f("split-at!");
        Lit32 = simpleSymbol75;
        SimpleSymbol simpleSymbol76 = (SimpleSymbol) a.f("split-at");
        Lit31 = simpleSymbol76;
        SimpleSymbol simpleSymbol77 = (SimpleSymbol) a.f("drop-right!");
        Lit30 = simpleSymbol77;
        SimpleSymbol simpleSymbol78 = (SimpleSymbol) a.f("drop-right");
        Lit29 = simpleSymbol78;
        SimpleSymbol simpleSymbol79 = (SimpleSymbol) a.f("take-right");
        Lit28 = simpleSymbol79;
        SimpleSymbol simpleSymbol80 = (SimpleSymbol) a.f("take!");
        Lit27 = simpleSymbol80;
        SimpleSymbol simpleSymbol81 = (SimpleSymbol) a.f("drop");
        Lit26 = simpleSymbol81;
        SimpleSymbol simpleSymbol82 = (SimpleSymbol) a.f("take");
        Lit25 = simpleSymbol82;
        SimpleSymbol simpleSymbol83 = (SimpleSymbol) a.f("car+cdr");
        Lit24 = simpleSymbol83;
        SimpleSymbol simpleSymbol84 = (SimpleSymbol) a.f("tenth");
        Lit23 = simpleSymbol84;
        SimpleSymbol simpleSymbol85 = (SimpleSymbol) a.f("ninth");
        Lit22 = simpleSymbol85;
        SimpleSymbol simpleSymbol86 = (SimpleSymbol) a.f("eighth");
        Lit21 = simpleSymbol86;
        SimpleSymbol simpleSymbol87 = (SimpleSymbol) a.f("seventh");
        Lit20 = simpleSymbol87;
        SimpleSymbol simpleSymbol88 = (SimpleSymbol) a.f("sixth");
        Lit19 = simpleSymbol88;
        SimpleSymbol simpleSymbol89 = (SimpleSymbol) a.f("fifth");
        Lit18 = simpleSymbol89;
        SimpleSymbol simpleSymbol90 = (SimpleSymbol) a.f("zip");
        Lit17 = simpleSymbol90;
        SimpleSymbol simpleSymbol91 = (SimpleSymbol) a.f("length+");
        Lit16 = simpleSymbol91;
        SimpleSymbol simpleSymbol92 = (SimpleSymbol) a.f("list=");
        Lit15 = simpleSymbol92;
        SimpleSymbol simpleSymbol93 = (SimpleSymbol) a.f("not-pair?");
        Lit13 = simpleSymbol93;
        SimpleSymbol simpleSymbol94 = (SimpleSymbol) a.f("circular-list?");
        Lit12 = simpleSymbol94;
        SimpleSymbol simpleSymbol95 = (SimpleSymbol) a.f("dotted-list?");
        Lit11 = simpleSymbol95;
        SimpleSymbol simpleSymbol96 = (SimpleSymbol) a.f("proper-list?");
        Lit10 = simpleSymbol96;
        SimpleSymbol simpleSymbol97 = (SimpleSymbol) a.f("circular-list");
        Lit9 = simpleSymbol97;
        SimpleSymbol simpleSymbol98 = (SimpleSymbol) a.f("iota");
        Lit8 = simpleSymbol98;
        SimpleSymbol simpleSymbol99 = (SimpleSymbol) a.f("list-copy");
        Lit7 = simpleSymbol99;
        SimpleSymbol simpleSymbol100 = (SimpleSymbol) a.f("cons*");
        Lit6 = simpleSymbol100;
        SimpleSymbol simpleSymbol101 = (SimpleSymbol) a.f("list-tabulate");
        Lit5 = simpleSymbol101;
        SimpleSymbol simpleSymbol102 = (SimpleSymbol) a.f("make-list");
        Lit4 = simpleSymbol102;
        SimpleSymbol simpleSymbol103 = (SimpleSymbol) a.f("xcons");
        Lit3 = simpleSymbol103;
        Lit2 = (SimpleSymbol) a.f("tmp");
        Lit1 = IntNum.make(1);
        Lit0 = IntNum.make(0);
        srfi1 srfi1Var = new srfi1();
        $instance = srfi1Var;
        $Pcprovide$Pcsrfi$Mn1 = 123;
        $Pcprovide$Pclist$Mnlib = 123;
        xcons = new ModuleMethod(srfi1Var, 78, simpleSymbol103, 8194);
        make$Mnlist = new ModuleMethod(srfi1Var, 79, simpleSymbol102, -4095);
        list$Mntabulate = new ModuleMethod(srfi1Var, 80, simpleSymbol101, 8194);
        cons$St = new ModuleMethod(srfi1Var, 81, simpleSymbol100, -4096);
        list$Mncopy = new ModuleMethod(srfi1Var, 82, simpleSymbol99, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        iota = new ModuleMethod(srfi1Var, 83, simpleSymbol98, 12289);
        circular$Mnlist = new ModuleMethod(srfi1Var, 86, simpleSymbol97, -4095);
        proper$Mnlist$Qu = new ModuleMethod(srfi1Var, 87, simpleSymbol96, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        dotted$Mnlist$Qu = new ModuleMethod(srfi1Var, 88, simpleSymbol95, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        circular$Mnlist$Qu = new ModuleMethod(srfi1Var, 89, simpleSymbol94, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        not$Mnpair$Qu = new ModuleMethod(srfi1Var, 90, simpleSymbol93, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        null$Mnlist$Qu = new ModuleMethod(srfi1Var, 91, simpleSymbol23, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        list$Eq = new ModuleMethod(srfi1Var, 92, simpleSymbol92, -4095);
        length$Pl = new ModuleMethod(srfi1Var, 93, simpleSymbol91, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        zip = new ModuleMethod(srfi1Var, 94, simpleSymbol90, -4095);
        fifth = new ModuleMethod(srfi1Var, 95, simpleSymbol89, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        sixth = new ModuleMethod(srfi1Var, 96, simpleSymbol88, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        seventh = new ModuleMethod(srfi1Var, 97, simpleSymbol87, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        eighth = new ModuleMethod(srfi1Var, 98, simpleSymbol86, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        ninth = new ModuleMethod(srfi1Var, 99, simpleSymbol85, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        tenth = new ModuleMethod(srfi1Var, 100, simpleSymbol84, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        car$Plcdr = new ModuleMethod(srfi1Var, 101, simpleSymbol83, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        take = new ModuleMethod(srfi1Var, 102, simpleSymbol82, 8194);
        drop = new ModuleMethod(srfi1Var, 103, simpleSymbol81, 8194);
        take$Ex = new ModuleMethod(srfi1Var, 104, simpleSymbol80, 8194);
        take$Mnright = new ModuleMethod(srfi1Var, 105, simpleSymbol79, 8194);
        drop$Mnright = new ModuleMethod(srfi1Var, 106, simpleSymbol78, 8194);
        drop$Mnright$Ex = new ModuleMethod(srfi1Var, 107, simpleSymbol77, 8194);
        split$Mnat = new ModuleMethod(srfi1Var, 108, simpleSymbol76, 8194);
        split$Mnat$Ex = new ModuleMethod(srfi1Var, 109, simpleSymbol75, 8194);
        last = new ModuleMethod(srfi1Var, 110, simpleSymbol74, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        last$Mnpair = new ModuleMethod(srfi1Var, 111, simpleSymbol73, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        unzip1 = new ModuleMethod(srfi1Var, 112, simpleSymbol72, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        unzip2 = new ModuleMethod(srfi1Var, 113, simpleSymbol71, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        unzip3 = new ModuleMethod(srfi1Var, 114, simpleSymbol70, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        unzip4 = new ModuleMethod(srfi1Var, 115, simpleSymbol69, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        unzip5 = new ModuleMethod(srfi1Var, 116, simpleSymbol68, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        append$Ex = new ModuleMethod(srfi1Var, 117, simpleSymbol67, -4096);
        append$Mnreverse = new ModuleMethod(srfi1Var, 118, simpleSymbol66, 8194);
        append$Mnreverse$Ex = new ModuleMethod(srfi1Var, 119, simpleSymbol65, 8194);
        concatenate = new ModuleMethod(srfi1Var, 120, simpleSymbol64, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        concatenate$Ex = new ModuleMethod(srfi1Var, 121, simpleSymbol63, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        count = new ModuleMethod(srfi1Var, 122, simpleSymbol62, -4094);
        unfold$Mnright = new ModuleMethod(srfi1Var, 123, simpleSymbol61, 20484);
        unfold = new ModuleMethod(srfi1Var, 125, simpleSymbol60, -4092);
        fold = new ModuleMethod(srfi1Var, 126, simpleSymbol59, -4093);
        fold$Mnright = new ModuleMethod(srfi1Var, WorkQueueKt.MASK, simpleSymbol58, -4093);
        pair$Mnfold$Mnright = new ModuleMethod(srfi1Var, 128, simpleSymbol57, -4093);
        pair$Mnfold = new ModuleMethod(srfi1Var, 129, simpleSymbol56, -4093);
        reduce = new ModuleMethod(srfi1Var, 130, simpleSymbol55, 12291);
        reduce$Mnright = new ModuleMethod(srfi1Var, 131, simpleSymbol54, 12291);
        append$Mnmap = new ModuleMethod(srfi1Var, 132, simpleSymbol53, -4094);
        append$Mnmap$Ex = new ModuleMethod(srfi1Var, 133, simpleSymbol52, -4094);
        pair$Mnfor$Mneach = new ModuleMethod(srfi1Var, 134, simpleSymbol51, -4094);
        map$Ex = new ModuleMethod(srfi1Var, 135, simpleSymbol50, -4094);
        filter$Mnmap = new ModuleMethod(srfi1Var, 136, simpleSymbol49, -4094);
        filter = new ModuleMethod(srfi1Var, 137, simpleSymbol48, 8194);
        filter$Ex = new ModuleMethod(srfi1Var, 138, simpleSymbol47, 8194);
        partition = new ModuleMethod(srfi1Var, 139, simpleSymbol46, 8194);
        partition$Ex = new ModuleMethod(srfi1Var, 140, simpleSymbol45, 8194);
        remove = new ModuleMethod(srfi1Var, 141, simpleSymbol44, 8194);
        remove$Ex = new ModuleMethod(srfi1Var, 142, simpleSymbol43, 8194);
        delete = new ModuleMethod(srfi1Var, 143, simpleSymbol42, 12290);
        delete$Ex = new ModuleMethod(srfi1Var, 145, simpleSymbol41, 12290);
        delete$Mnduplicates = new ModuleMethod(srfi1Var, 147, simpleSymbol40, 8193);
        delete$Mnduplicates$Ex = new ModuleMethod(srfi1Var, 149, simpleSymbol39, 8193);
        alist$Mncons = new ModuleMethod(srfi1Var, 151, simpleSymbol38, 12291);
        alist$Mncopy = new ModuleMethod(srfi1Var, 152, simpleSymbol37, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        alist$Mndelete = new ModuleMethod(srfi1Var, 153, simpleSymbol36, 12290);
        alist$Mndelete$Ex = new ModuleMethod(srfi1Var, 155, simpleSymbol35, 12290);
        find = new ModuleMethod(srfi1Var, 157, simpleSymbol34, 8194);
        find$Mntail = new ModuleMethod(srfi1Var, 158, simpleSymbol33, 8194);
        take$Mnwhile = new ModuleMethod(srfi1Var, 159, simpleSymbol32, 8194);
        drop$Mnwhile = new ModuleMethod(srfi1Var, ComponentConstants.TEXTBOX_PREFERRED_WIDTH, simpleSymbol31, 8194);
        take$Mnwhile$Ex = new ModuleMethod(srfi1Var, 161, simpleSymbol30, 8194);
        span = new ModuleMethod(srfi1Var, 162, simpleSymbol29, 8194);
        span$Ex = new ModuleMethod(srfi1Var, 163, simpleSymbol28, 8194);
        f3break = new ModuleMethod(srfi1Var, 164, simpleSymbol27, 8194);
        break$Ex = new ModuleMethod(srfi1Var, 165, simpleSymbol26, 8194);
        any = new ModuleMethod(srfi1Var, 166, simpleSymbol25, -4094);
        every = new ModuleMethod(srfi1Var, 167, simpleSymbol24, -4094);
        $Pcevery = Macro.make(simpleSymbol20, syntaxRules, srfi1Var);
        list$Mnindex = new ModuleMethod(srfi1Var, 168, simpleSymbol19, -4094);
        lset$Ls$Eq = new ModuleMethod(srfi1Var, 169, simpleSymbol18, -4095);
        lset$Eq = new ModuleMethod(srfi1Var, 170, simpleSymbol17, -4095);
        lset$Mnadjoin = new ModuleMethod(srfi1Var, 171, simpleSymbol16, -4094);
        lset$Mnunion = new ModuleMethod(srfi1Var, 172, simpleSymbol15, -4095);
        lset$Mnunion$Ex = new ModuleMethod(srfi1Var, 173, simpleSymbol14, -4095);
        lset$Mnintersection = new ModuleMethod(srfi1Var, 174, simpleSymbol13, -4094);
        lset$Mnintersection$Ex = new ModuleMethod(srfi1Var, 175, simpleSymbol12, -4094);
        lset$Mndifference = new ModuleMethod(srfi1Var, 176, simpleSymbol11, -4094);
        lset$Mndifference$Ex = new ModuleMethod(srfi1Var, 177, simpleSymbol10, -4094);
        lset$Mnxor = new ModuleMethod(srfi1Var, 178, simpleSymbol9, -4095);
        lset$Mnxor$Ex = new ModuleMethod(srfi1Var, 179, simpleSymbol8, -4095);
        lset$Mndiff$Plintersection = new ModuleMethod(srfi1Var, 180, simpleSymbol7, -4094);
        lset$Mndiff$Plintersection$Ex = new ModuleMethod(srfi1Var, 181, simpleSymbol6, -4094);
        lambda$Fn64 = new ModuleMethod(srfi1Var, 182, null, 8194);
        lambda$Fn78 = new ModuleMethod(srfi1Var, 183, null, 8194);
        srfi1Var.run();
    }

    public srfi1() {
        ModuleInfo.register(this);
    }

    public static Object alistDelete(Object obj, Object obj2) {
        return alistDelete(obj, obj2, Scheme.isEqual);
    }

    public static Object alistDelete$Ex(Object obj, Object obj2) {
        return alistDelete$Ex(obj, obj2, Scheme.isEqual);
    }

    public static Object delete(Object obj, Object obj2) {
        return delete(obj, obj2, Scheme.isEqual);
    }

    public static Object delete$Ex(Object obj, Object obj2) {
        return delete$Ex(obj, obj2, Scheme.isEqual);
    }

    public static Object deleteDuplicates(Object obj) {
        return deleteDuplicates(obj, Scheme.isEqual);
    }

    public static Object deleteDuplicates$Ex(Object obj) {
        return deleteDuplicates$Ex(obj, Scheme.isEqual);
    }

    public static Object iota(IntNum intNum) {
        return iota(intNum, Lit0, Lit1);
    }

    public static Object iota(IntNum intNum, Numeric numeric) {
        return iota(intNum, numeric, Lit1);
    }

    public static Object unfoldRight(Procedure procedure, Procedure procedure2, Procedure procedure3, Object obj) {
        return unfoldRight(procedure, procedure2, procedure3, obj, LList.Empty);
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext callContext) {
        Consumer consumer = callContext.consumer;
        first = lists.car;
        second = lists.cadr;
        third = lists.caddr;
        fourth = lists.cadddr;
        map$Mnin$Mnorder = Scheme.map;
    }

    public static Pair xcons(Object obj, Object obj2) {
        return lists.cons(obj2, obj);
    }

    @Override // gnu.expr.ModuleBody
    public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 78) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 80) {
            callContext.value1 = obj;
            if (!(obj2 instanceof Procedure)) {
                return -786430;
            }
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 83) {
            if (IntNum.asIntNumOrNull(obj) == null) {
                return -786431;
            }
            callContext.value1 = obj;
            if (Numeric.asNumericOrNull(obj2) == null) {
                return -786430;
            }
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 145) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 147) {
            callContext.value1 = obj;
            if (!(obj2 instanceof Procedure)) {
                return -786430;
            }
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 149) {
            callContext.value1 = obj;
            if (!(obj2 instanceof Procedure)) {
                return -786430;
            }
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 153) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 155) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 118) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 119) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 182) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 183) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        switch (i) {
            case 102:
                callContext.value1 = obj;
                if (IntNum.asIntNumOrNull(obj2) == null) {
                    return -786430;
                }
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 103:
                callContext.value1 = obj;
                if (IntNum.asIntNumOrNull(obj2) == null) {
                    return -786430;
                }
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 104:
                callContext.value1 = obj;
                if (IntNum.asIntNumOrNull(obj2) == null) {
                    return -786430;
                }
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 105:
                callContext.value1 = obj;
                if (IntNum.asIntNumOrNull(obj2) == null) {
                    return -786430;
                }
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 106:
                callContext.value1 = obj;
                if (IntNum.asIntNumOrNull(obj2) == null) {
                    return -786430;
                }
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 107:
                callContext.value1 = obj;
                if (IntNum.asIntNumOrNull(obj2) == null) {
                    return -786430;
                }
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 108:
                callContext.value1 = obj;
                if (IntNum.asIntNumOrNull(obj2) == null) {
                    return -786430;
                }
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 109:
                callContext.value1 = obj;
                if (IntNum.asIntNumOrNull(obj2) == null) {
                    return -786430;
                }
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            default:
                switch (i) {
                    case 137:
                        if (!(obj instanceof Procedure)) {
                            return -786431;
                        }
                        callContext.value1 = obj;
                        callContext.value2 = obj2;
                        callContext.proc = moduleMethod;
                        callContext.pc = 2;
                        return 0;
                    case 138:
                        if (!(obj instanceof Procedure)) {
                            return -786431;
                        }
                        callContext.value1 = obj;
                        callContext.value2 = obj2;
                        callContext.proc = moduleMethod;
                        callContext.pc = 2;
                        return 0;
                    case 139:
                        if (!(obj instanceof Procedure)) {
                            return -786431;
                        }
                        callContext.value1 = obj;
                        callContext.value2 = obj2;
                        callContext.proc = moduleMethod;
                        callContext.pc = 2;
                        return 0;
                    case 140:
                        if (!(obj instanceof Procedure)) {
                            return -786431;
                        }
                        callContext.value1 = obj;
                        callContext.value2 = obj2;
                        callContext.proc = moduleMethod;
                        callContext.pc = 2;
                        return 0;
                    case 141:
                        callContext.value1 = obj;
                        callContext.value2 = obj2;
                        callContext.proc = moduleMethod;
                        callContext.pc = 2;
                        return 0;
                    case 142:
                        callContext.value1 = obj;
                        callContext.value2 = obj2;
                        callContext.proc = moduleMethod;
                        callContext.pc = 2;
                        return 0;
                    case 143:
                        callContext.value1 = obj;
                        callContext.value2 = obj2;
                        callContext.proc = moduleMethod;
                        callContext.pc = 2;
                        return 0;
                    default:
                        switch (i) {
                            case 157:
                                callContext.value1 = obj;
                                callContext.value2 = obj2;
                                callContext.proc = moduleMethod;
                                callContext.pc = 2;
                                return 0;
                            case 158:
                                if (!(obj instanceof Procedure)) {
                                    return -786431;
                                }
                                callContext.value1 = obj;
                                callContext.value2 = obj2;
                                callContext.proc = moduleMethod;
                                callContext.pc = 2;
                                return 0;
                            case 159:
                                if (!(obj instanceof Procedure)) {
                                    return -786431;
                                }
                                callContext.value1 = obj;
                                callContext.value2 = obj2;
                                callContext.proc = moduleMethod;
                                callContext.pc = 2;
                                return 0;
                            case ComponentConstants.TEXTBOX_PREFERRED_WIDTH /* 160 */:
                                if (!(obj instanceof Procedure)) {
                                    return -786431;
                                }
                                callContext.value1 = obj;
                                callContext.value2 = obj2;
                                callContext.proc = moduleMethod;
                                callContext.pc = 2;
                                return 0;
                            case 161:
                                if (!(obj instanceof Procedure)) {
                                    return -786431;
                                }
                                callContext.value1 = obj;
                                callContext.value2 = obj2;
                                callContext.proc = moduleMethod;
                                callContext.pc = 2;
                                return 0;
                            case 162:
                                if (!(obj instanceof Procedure)) {
                                    return -786431;
                                }
                                callContext.value1 = obj;
                                callContext.value2 = obj2;
                                callContext.proc = moduleMethod;
                                callContext.pc = 2;
                                return 0;
                            case 163:
                                if (!(obj instanceof Procedure)) {
                                    return -786431;
                                }
                                callContext.value1 = obj;
                                callContext.value2 = obj2;
                                callContext.proc = moduleMethod;
                                callContext.pc = 2;
                                return 0;
                            case 164:
                                callContext.value1 = obj;
                                callContext.value2 = obj2;
                                callContext.proc = moduleMethod;
                                callContext.pc = 2;
                                return 0;
                            case 165:
                                callContext.value1 = obj;
                                callContext.value2 = obj2;
                                callContext.proc = moduleMethod;
                                callContext.pc = 2;
                                return 0;
                            default:
                                return super.match2(moduleMethod, obj, obj2, callContext);
                        }
                }
        }
    }

    public static Object makeList$V(Object obj, Object[] objArr) throws Throwable {
        Object objApply1;
        LList lListMakeList = LList.makeList(objArr, 0);
        int i = ((numbers.isInteger(obj) ? 1 : 0) + 1) & 1;
        if (i == 0 ? Scheme.numLss.apply2(obj, Lit0) != Boolean.FALSE : i != 0) {
            misc.error$V("make-list arg#1 must be a non-negative integer", new Object[0]);
        }
        if (lists.isNull(lListMakeList)) {
            objApply1 = Boolean.FALSE;
        } else {
            objApply1 = lists.isNull(lists.cdr.apply1(lListMakeList)) ? lists.car.apply1(lListMakeList) : misc.error$V("Too many arguments to MAKE-LIST", new Object[]{lists.cons(obj, lListMakeList)});
        }
        Object objCons = LList.Empty;
        while (Scheme.numLEq.apply2(obj, Lit0) == Boolean.FALSE) {
            obj = AddOp.$Mn.apply2(obj, Lit1);
            objCons = lists.cons(objApply1, objCons);
        }
        return objCons;
    }

    @Override // gnu.expr.ModuleBody
    public int matchN(ModuleMethod moduleMethod, Object[] objArr, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 79) {
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }
        if (i == 81) {
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
        if (i == 92) {
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }
        if (i == 94) {
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }
        if (i == 117) {
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }
        if (i == 122) {
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }
        if (i == 123) {
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }
        switch (i) {
            case 125:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 126:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case WorkQueueKt.MASK /* 127 */:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 128:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 129:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            default:
                switch (i) {
                    case 132:
                        callContext.values = objArr;
                        callContext.proc = moduleMethod;
                        callContext.pc = 5;
                        return 0;
                    case 133:
                        callContext.values = objArr;
                        callContext.proc = moduleMethod;
                        callContext.pc = 5;
                        return 0;
                    case 134:
                        callContext.values = objArr;
                        callContext.proc = moduleMethod;
                        callContext.pc = 5;
                        return 0;
                    case 135:
                        callContext.values = objArr;
                        callContext.proc = moduleMethod;
                        callContext.pc = 5;
                        return 0;
                    case 136:
                        callContext.values = objArr;
                        callContext.proc = moduleMethod;
                        callContext.pc = 5;
                        return 0;
                    default:
                        switch (i) {
                            case 166:
                                callContext.values = objArr;
                                callContext.proc = moduleMethod;
                                callContext.pc = 5;
                                return 0;
                            case 167:
                                callContext.values = objArr;
                                callContext.proc = moduleMethod;
                                callContext.pc = 5;
                                return 0;
                            case 168:
                                callContext.values = objArr;
                                callContext.proc = moduleMethod;
                                callContext.pc = 5;
                                return 0;
                            case 169:
                                callContext.values = objArr;
                                callContext.proc = moduleMethod;
                                callContext.pc = 5;
                                return 0;
                            case 170:
                                callContext.values = objArr;
                                callContext.proc = moduleMethod;
                                callContext.pc = 5;
                                return 0;
                            case 171:
                                callContext.values = objArr;
                                callContext.proc = moduleMethod;
                                callContext.pc = 5;
                                return 0;
                            case 172:
                                callContext.values = objArr;
                                callContext.proc = moduleMethod;
                                callContext.pc = 5;
                                return 0;
                            case 173:
                                callContext.values = objArr;
                                callContext.proc = moduleMethod;
                                callContext.pc = 5;
                                return 0;
                            case 174:
                                callContext.values = objArr;
                                callContext.proc = moduleMethod;
                                callContext.pc = 5;
                                return 0;
                            case 175:
                                callContext.values = objArr;
                                callContext.proc = moduleMethod;
                                callContext.pc = 5;
                                return 0;
                            case 176:
                                callContext.values = objArr;
                                callContext.proc = moduleMethod;
                                callContext.pc = 5;
                                return 0;
                            case 177:
                                callContext.values = objArr;
                                callContext.proc = moduleMethod;
                                callContext.pc = 5;
                                return 0;
                            case 178:
                                callContext.values = objArr;
                                callContext.proc = moduleMethod;
                                callContext.pc = 5;
                                return 0;
                            case 179:
                                callContext.values = objArr;
                                callContext.proc = moduleMethod;
                                callContext.pc = 5;
                                return 0;
                            case 180:
                                callContext.values = objArr;
                                callContext.proc = moduleMethod;
                                callContext.pc = 5;
                                return 0;
                            case 181:
                                callContext.values = objArr;
                                callContext.proc = moduleMethod;
                                callContext.pc = 5;
                                return 0;
                            default:
                                return super.matchN(moduleMethod, objArr, callContext);
                        }
                }
        }
    }

    public static Object listTabulate(Object obj, Procedure procedure) throws Throwable {
        int i = ((numbers.isInteger(obj) ? 1 : 0) + 1) & 1;
        if (i == 0 ? Scheme.numLss.apply2(obj, Lit0) != Boolean.FALSE : i != 0) {
            misc.error$V("list-tabulate arg#1 must be a non-negative integer", new Object[0]);
        }
        Object objApply2 = AddOp.$Mn.apply2(obj, Lit1);
        Object objCons = LList.Empty;
        while (Scheme.numLss.apply2(objApply2, Lit0) == Boolean.FALSE) {
            Object objApply22 = AddOp.$Mn.apply2(objApply2, Lit1);
            objCons = lists.cons(procedure.apply1(objApply2), objCons);
            objApply2 = objApply22;
        }
        return objCons;
    }

    @Override // gnu.expr.ModuleBody
    public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 82) {
            if (!(obj instanceof LList)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 83) {
            if (IntNum.asIntNumOrNull(obj) == null) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 93) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 147) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 149) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 152) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 120) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i != 121) {
            switch (i) {
                case 87:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
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
                case 91:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                default:
                    switch (i) {
                        case 95:
                            callContext.value1 = obj;
                            callContext.proc = moduleMethod;
                            callContext.pc = 1;
                            return 0;
                        case 96:
                            callContext.value1 = obj;
                            callContext.proc = moduleMethod;
                            callContext.pc = 1;
                            return 0;
                        case 97:
                            callContext.value1 = obj;
                            callContext.proc = moduleMethod;
                            callContext.pc = 1;
                            return 0;
                        case 98:
                            callContext.value1 = obj;
                            callContext.proc = moduleMethod;
                            callContext.pc = 1;
                            return 0;
                        case 99:
                            callContext.value1 = obj;
                            callContext.proc = moduleMethod;
                            callContext.pc = 1;
                            return 0;
                        case 100:
                            callContext.value1 = obj;
                            callContext.proc = moduleMethod;
                            callContext.pc = 1;
                            return 0;
                        case 101:
                            callContext.value1 = obj;
                            callContext.proc = moduleMethod;
                            callContext.pc = 1;
                            return 0;
                        default:
                            switch (i) {
                                case 110:
                                    callContext.value1 = obj;
                                    callContext.proc = moduleMethod;
                                    callContext.pc = 1;
                                    return 0;
                                case 111:
                                    if (!(obj instanceof Pair)) {
                                        return -786431;
                                    }
                                    callContext.value1 = obj;
                                    callContext.proc = moduleMethod;
                                    callContext.pc = 1;
                                    return 0;
                                case 112:
                                    callContext.value1 = obj;
                                    callContext.proc = moduleMethod;
                                    callContext.pc = 1;
                                    return 0;
                                case 113:
                                    callContext.value1 = obj;
                                    callContext.proc = moduleMethod;
                                    callContext.pc = 1;
                                    return 0;
                                case 114:
                                    callContext.value1 = obj;
                                    callContext.proc = moduleMethod;
                                    callContext.pc = 1;
                                    return 0;
                                case 115:
                                    callContext.value1 = obj;
                                    callContext.proc = moduleMethod;
                                    callContext.pc = 1;
                                    return 0;
                                case 116:
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
        callContext.value1 = obj;
        callContext.proc = moduleMethod;
        callContext.pc = 1;
        return 0;
    }

    public static LList listCopy(LList lList) throws Throwable {
        LList lList2 = LList.Empty;
        LList lList3 = lList2;
        while (lists.isPair(lList)) {
            Object objApply1 = lists.car.apply1(lList);
            LList lList4 = LList.Empty;
            Pair pairCons = lists.cons(objApply1, lList4);
            if (lList3 == lList4) {
                lList2 = pairCons;
            } else {
                try {
                    ((Pair) lList3).setCdr(pairCons);
                } catch (ClassCastException e) {
                    throw new WrongType(e, "set-cdr!", 1, lList3);
                }
            }
            lList = (LList) lists.cdr.apply1(lList);
            lList3 = pairCons;
        }
        return lList2;
    }

    @Override // gnu.expr.ModuleBody
    public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 83) {
            if (IntNum.asIntNumOrNull(obj) == null) {
                return -786431;
            }
            callContext.value1 = obj;
            if (Numeric.asNumericOrNull(obj2) == null) {
                return -786430;
            }
            callContext.value2 = obj2;
            if (Numeric.asNumericOrNull(obj3) == null) {
                return -786429;
            }
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i == 143) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i == 145) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i == 151) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i == 153) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i == 155) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i == 130) {
            if (!(obj instanceof Procedure)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i != 131) {
            return super.match3(moduleMethod, obj, obj2, obj3, callContext);
        }
        if (!(obj instanceof Procedure)) {
            return -786431;
        }
        callContext.value1 = obj;
        callContext.value2 = obj2;
        callContext.value3 = obj3;
        callContext.proc = moduleMethod;
        callContext.pc = 3;
        return 0;
    }

    public static Object iota(IntNum intNum, Numeric numeric, Numeric numeric2) throws Throwable {
        if (IntNum.compare(intNum, 0L) < 0) {
            misc.error$V("Negative step count", new Object[]{iota, intNum});
        }
        Object objApply2 = AddOp.$Pl.apply2(numeric, MultiplyOp.$St.apply2(IntNum.add(intNum, -1), numeric2));
        try {
            Object obj = (Numeric) objApply2;
            Object objCons = LList.Empty;
            Object obj2 = intNum;
            while (Scheme.numLEq.apply2(obj2, Lit0) == Boolean.FALSE) {
                AddOp addOp = AddOp.$Mn;
                Object objApply22 = addOp.apply2(obj2, Lit1);
                Object objApply23 = addOp.apply2(obj, numeric2);
                objCons = lists.cons(obj, objCons);
                obj = objApply23;
                obj2 = objApply22;
            }
            return objCons;
        } catch (ClassCastException e) {
            throw new WrongType(e, "last-val", -2, objApply2);
        }
    }

    public static Pair circularList$V(Object obj, Object[] objArr) throws Throwable {
        Pair pairCons = lists.cons(obj, LList.makeList(objArr, 0));
        Object objLastPair = lastPair(pairCons);
        try {
            ((Pair) objLastPair).setCdr(pairCons);
            return pairCons;
        } catch (ClassCastException e) {
            throw new WrongType(e, "set-cdr!", 1, objLastPair);
        }
    }

    public static Object isProperList(Object obj) throws Throwable {
        Object objApply1 = obj;
        while (lists.isPair(obj)) {
            GenericProc genericProc = lists.cdr;
            Object objApply12 = genericProc.apply1(obj);
            if (!lists.isPair(objApply12)) {
                return lists.isNull(objApply12) ? Boolean.TRUE : Boolean.FALSE;
            }
            obj = genericProc.apply1(objApply12);
            objApply1 = genericProc.apply1(objApply1);
            int i = 1 & ((obj == objApply1 ? 1 : 0) + 1);
            if (i == 0) {
                return i != 0 ? Boolean.TRUE : Boolean.FALSE;
            }
        }
        return lists.isNull(obj) ? Boolean.TRUE : Boolean.FALSE;
    }

    public static Object isDottedList(Object obj) throws Throwable {
        Object objApply1 = obj;
        while (lists.isPair(obj)) {
            GenericProc genericProc = lists.cdr;
            Object objApply12 = genericProc.apply1(obj);
            if (!lists.isPair(objApply12)) {
                return lists.isNull(objApply12) ? Boolean.FALSE : Boolean.TRUE;
            }
            obj = genericProc.apply1(objApply12);
            objApply1 = genericProc.apply1(objApply1);
            int i = 1 & ((obj == objApply1 ? 1 : 0) + 1);
            if (i == 0) {
                return i != 0 ? Boolean.TRUE : Boolean.FALSE;
            }
        }
        return lists.isNull(obj) ? Boolean.FALSE : Boolean.TRUE;
    }

    public static Object isCircularList(Object obj) throws Throwable {
        boolean z;
        Object objApply1 = obj;
        do {
            boolean zIsPair = lists.isPair(obj);
            if (!zIsPair) {
                return zIsPair ? Boolean.TRUE : Boolean.FALSE;
            }
            GenericProc genericProc = lists.cdr;
            Object objApply12 = genericProc.apply1(obj);
            boolean zIsPair2 = lists.isPair(objApply12);
            if (!zIsPair2) {
                return zIsPair2 ? Boolean.TRUE : Boolean.FALSE;
            }
            obj = genericProc.apply1(objApply12);
            objApply1 = genericProc.apply1(objApply1);
            z = obj == objApply1;
        } while (!z);
        return z ? Boolean.TRUE : Boolean.FALSE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean isNotPair(Object obj) {
        return ((lists.isPair(obj) ? 1 : 0) + 1) & 1;
    }

    public static Object isNullList(Object obj) {
        return obj instanceof Pair ? Boolean.FALSE : obj == LList.Empty ? Boolean.TRUE : misc.error$V("null-list?: argument out of domain", new Object[]{obj});
    }

    public static Object list$Eq$V(Object obj, Object[] objArr) throws Throwable {
        LList lListMakeList = LList.makeList(objArr, 0);
        boolean zIsNull = lists.isNull(lListMakeList);
        if (zIsNull) {
            return zIsNull ? Boolean.TRUE : Boolean.FALSE;
        }
        Object objApply1 = lists.car.apply1(lListMakeList);
        Object objApply12 = lists.cdr.apply1(lListMakeList);
        while (true) {
            boolean zIsNull2 = lists.isNull(objApply12);
            if (zIsNull2) {
                return zIsNull2 ? Boolean.TRUE : Boolean.FALSE;
            }
            Object objApply13 = lists.car.apply1(objApply12);
            objApply12 = lists.cdr.apply1(objApply12);
            if (objApply1 != objApply13) {
                while (true) {
                    Object objIsNullList = isNullList(objApply1);
                    Boolean bool = Boolean.FALSE;
                    if (objIsNullList != bool) {
                        Object objIsNullList2 = isNullList(objApply13);
                        if (objIsNullList2 == bool) {
                            return objIsNullList2;
                        }
                    } else {
                        int i = ((isNullList(objApply13) != bool ? 1 : 0) + 1) & 1;
                        if (i == 0) {
                            return i != 0 ? Boolean.TRUE : bool;
                        }
                        ApplyToArgs applyToArgs = Scheme.applyToArgs;
                        GenericProc genericProc = lists.car;
                        Object objApply3 = applyToArgs.apply3(obj, genericProc.apply1(objApply1), genericProc.apply1(objApply13));
                        if (objApply3 == bool) {
                            return objApply3;
                        }
                        GenericProc genericProc2 = lists.cdr;
                        objApply1 = genericProc2.apply1(objApply1);
                        objApply13 = genericProc2.apply1(objApply13);
                    }
                }
            }
            objApply1 = objApply13;
        }
    }

    public static Object length$Pl(Object obj) throws Throwable {
        Object objApply2 = Lit0;
        Object objApply1 = obj;
        while (lists.isPair(obj)) {
            GenericProc genericProc = lists.cdr;
            Object objApply12 = genericProc.apply1(obj);
            AddOp addOp = AddOp.$Pl;
            IntNum intNum = Lit1;
            objApply2 = addOp.apply2(objApply2, intNum);
            if (!lists.isPair(objApply12)) {
                break;
            }
            obj = genericProc.apply1(objApply12);
            objApply1 = genericProc.apply1(objApply1);
            objApply2 = addOp.apply2(objApply2, intNum);
            int i = 1 & ((obj == objApply1 ? 1 : 0) + 1);
            if (i == 0) {
                return i != 0 ? Boolean.TRUE : Boolean.FALSE;
            }
        }
        return objApply2;
    }

    public static Object zip$V(Object obj, Object[] objArr) {
        return Scheme.apply.apply4(Scheme.map, LangObjType.listType, obj, LList.makeList(objArr, 0));
    }

    public static Object fifth(Object obj) {
        return lists.car.apply1(lists.cddddr.apply1(obj));
    }

    public static Object sixth(Object obj) {
        return lists.cadr.apply1(lists.cddddr.apply1(obj));
    }

    public static Object seventh(Object obj) {
        return lists.caddr.apply1(lists.cddddr.apply1(obj));
    }

    public static Object eighth(Object obj) {
        return lists.cadddr.apply1(lists.cddddr.apply1(obj));
    }

    public static Object ninth(Object obj) {
        GenericProc genericProc = lists.car;
        GenericProc genericProc2 = lists.cddddr;
        return genericProc.apply1(genericProc2.apply1(genericProc2.apply1(obj)));
    }

    public static Object tenth(Object obj) {
        GenericProc genericProc = lists.cadr;
        GenericProc genericProc2 = lists.cddddr;
        return genericProc.apply1(genericProc2.apply1(genericProc2.apply1(obj)));
    }

    public static Object car$PlCdr(Object obj) {
        return misc.values(lists.car.apply1(obj), lists.cdr.apply1(obj));
    }

    public static Object take(Object obj, IntNum intNum) throws Throwable {
        LList lListCons = LList.Empty;
        Object obj2 = intNum;
        while (!numbers.isZero((Number) obj2)) {
            try {
                Object objApply1 = lists.cdr.apply1(obj);
                Object objApply2 = AddOp.$Mn.apply2(obj2, Lit1);
                lListCons = lists.cons(lists.car.apply1(obj), lListCons);
                obj = objApply1;
                obj2 = objApply2;
            } catch (ClassCastException e) {
                throw new WrongType(e, "zero?", 1, obj2);
            }
        }
        return LList.reverseInPlace(lListCons);
    }

    public static Object drop(Object obj, IntNum intNum) throws Throwable {
        for (Object objApply2 = intNum; !numbers.isZero((Number) objApply2); objApply2 = AddOp.$Mn.apply2(objApply2, Lit1)) {
            try {
                obj = lists.cdr.apply1(obj);
            } catch (ClassCastException e) {
                throw new WrongType(e, "zero?", 1, objApply2);
            }
        }
        return obj;
    }

    public static Object take$Ex(Object obj, IntNum intNum) throws Throwable {
        if (numbers.isZero(intNum)) {
            return LList.Empty;
        }
        Object objDrop = drop(obj, IntNum.add(intNum, -1));
        try {
            ((Pair) objDrop).setCdr(LList.Empty);
            return obj;
        } catch (ClassCastException e) {
            throw new WrongType(e, "set-cdr!", 1, objDrop);
        }
    }

    public static Object takeRight(Object obj, IntNum intNum) throws Throwable {
        Object objDrop = drop(obj, intNum);
        while (lists.isPair(objDrop)) {
            GenericProc genericProc = lists.cdr;
            obj = genericProc.apply1(obj);
            objDrop = genericProc.apply1(objDrop);
        }
        return obj;
    }

    public static Object dropRight(Object obj, IntNum intNum) {
        return lambda1recur(obj, drop(obj, intNum));
    }

    public static Object lambda1recur(Object obj, Object obj2) throws Throwable {
        if (!lists.isPair(obj2)) {
            return LList.Empty;
        }
        Object objApply1 = lists.car.apply1(obj);
        GenericProc genericProc = lists.cdr;
        return lists.cons(objApply1, lambda1recur(genericProc.apply1(obj), genericProc.apply1(obj2)));
    }

    public static Object dropRight$Ex(Object obj, IntNum intNum) throws Throwable {
        Object objDrop = drop(obj, intNum);
        if (lists.isPair(objDrop)) {
            Object objApply1 = lists.cdr.apply1(objDrop);
            Object objApply12 = obj;
            while (lists.isPair(objApply1)) {
                GenericProc genericProc = lists.cdr;
                objApply12 = genericProc.apply1(objApply12);
                objApply1 = genericProc.apply1(objApply1);
            }
            try {
                ((Pair) objApply12).setCdr(LList.Empty);
                return obj;
            } catch (ClassCastException e) {
                throw new WrongType(e, "set-cdr!", 1, objApply12);
            }
        }
        return LList.Empty;
    }

    public static Object splitAt(Object obj, IntNum intNum) throws Throwable {
        LList lListCons = LList.Empty;
        for (Object objApply2 = intNum; !numbers.isZero((Number) objApply2); objApply2 = AddOp.$Mn.apply2(objApply2, Lit1)) {
            try {
                lListCons = lists.cons(lists.car.apply1(obj), lListCons);
                obj = lists.cdr.apply1(obj);
            } catch (ClassCastException e) {
                throw new WrongType(e, "zero?", 1, objApply2);
            }
        }
        return misc.values(LList.reverseInPlace(lListCons), obj);
    }

    public static Object splitAt$Ex(Object obj, IntNum intNum) throws Throwable {
        if (numbers.isZero(intNum)) {
            return misc.values(LList.Empty, obj);
        }
        Object objDrop = drop(obj, IntNum.add(intNum, -1));
        Object objApply1 = lists.cdr.apply1(objDrop);
        try {
            ((Pair) objDrop).setCdr(LList.Empty);
            return misc.values(obj, objApply1);
        } catch (ClassCastException e) {
            throw new WrongType(e, "set-cdr!", 1, objDrop);
        }
    }

    public static Object last(Object obj) {
        try {
            return lists.car.apply1(lastPair((Pair) obj));
        } catch (ClassCastException e) {
            throw new WrongType(e, "last-pair", 0, obj);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Object lastPair(Pair pair) throws Throwable {
        while (true) {
            Object objApply1 = lists.cdr.apply1(pair);
            if (!lists.isPair(objApply1)) {
                return pair;
            }
            pair = objApply1;
        }
    }

    public static LList unzip1(Object obj) {
        Object objMake = LList.Empty;
        while (obj != LList.Empty) {
            try {
                Pair pair = (Pair) obj;
                Object cdr = pair.getCdr();
                objMake = Pair.make(lists.car.apply1(pair.getCar()), objMake);
                obj = cdr;
            } catch (ClassCastException e) {
                throw new WrongType(e, "arg0", -2, obj);
            }
        }
        return LList.reverseInPlace(objMake);
    }

    public static Object unzip2(Object obj) {
        new frame();
        return frame.lambda2recur(obj);
    }

    public class frame extends ModuleBody {
        public static Object lambda2recur(Object obj) {
            frame0 frame0Var = new frame0();
            frame0Var.lis = obj;
            if (srfi1.isNullList(obj) != Boolean.FALSE) {
                Object obj2 = frame0Var.lis;
                return misc.values(obj2, obj2);
            }
            frame0Var.elt = lists.car.apply1(frame0Var.lis);
            return call_with_values.callWithValues(frame0Var.lambda$Fn1, frame0Var.lambda$Fn2);
        }
    }

    public class frame0 extends ModuleBody {
        Object elt;
        final ModuleMethod lambda$Fn1 = new ModuleMethod(this, 1, null, 0);
        final ModuleMethod lambda$Fn2;
        Object lis;

        public frame0() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 2, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:627");
            this.lambda$Fn2 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 1 ? lambda3() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 1) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 2 ? lambda4(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        public Object lambda3() {
            return frame.lambda2recur(lists.cdr.apply1(this.lis));
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 2) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda4(Object obj, Object obj2) {
            return misc.values(lists.cons(lists.car.apply1(this.elt), obj), lists.cons(lists.cadr.apply1(this.elt), obj2));
        }
    }

    public static Object unzip3(Object obj) {
        new frame1();
        return frame1.lambda5recur(obj);
    }

    public class frame1 extends ModuleBody {
        public static Object lambda5recur(Object obj) {
            frame2 frame2Var = new frame2();
            frame2Var.lis = obj;
            if (srfi1.isNullList(obj) != Boolean.FALSE) {
                Object obj2 = frame2Var.lis;
                return misc.values(obj2, obj2, obj2);
            }
            frame2Var.elt = lists.car.apply1(frame2Var.lis);
            return call_with_values.callWithValues(frame2Var.lambda$Fn3, frame2Var.lambda$Fn4);
        }
    }

    public class frame2 extends ModuleBody {
        Object elt;
        final ModuleMethod lambda$Fn3 = new ModuleMethod(this, 3, null, 0);
        final ModuleMethod lambda$Fn4;
        Object lis;

        public frame2() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 4, null, 12291);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:635");
            this.lambda$Fn4 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 3 ? lambda6() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 3) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            return moduleMethod.selector == 4 ? lambda7(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
        }

        public Object lambda6() {
            return frame1.lambda5recur(lists.cdr.apply1(this.lis));
        }

        @Override // gnu.expr.ModuleBody
        public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
            if (moduleMethod.selector != 4) {
                return super.match3(moduleMethod, obj, obj2, obj3, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }

        public Object lambda7(Object obj, Object obj2, Object obj3) {
            return misc.values(lists.cons(lists.car.apply1(this.elt), obj), lists.cons(lists.cadr.apply1(this.elt), obj2), lists.cons(lists.caddr.apply1(this.elt), obj3));
        }
    }

    public static Object unzip4(Object obj) {
        new frame3();
        return frame3.lambda8recur(obj);
    }

    public class frame3 extends ModuleBody {
        public static Object lambda8recur(Object obj) {
            frame4 frame4Var = new frame4();
            frame4Var.lis = obj;
            if (srfi1.isNullList(obj) != Boolean.FALSE) {
                Object obj2 = frame4Var.lis;
                return misc.values(obj2, obj2, obj2, obj2);
            }
            frame4Var.elt = lists.car.apply1(frame4Var.lis);
            return call_with_values.callWithValues(frame4Var.lambda$Fn5, frame4Var.lambda$Fn6);
        }
    }

    public class frame4 extends ModuleBody {
        Object elt;
        final ModuleMethod lambda$Fn5 = new ModuleMethod(this, 5, null, 0);
        final ModuleMethod lambda$Fn6;
        Object lis;

        public frame4() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 6, null, 16388);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:644");
            this.lambda$Fn6 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 5 ? lambda9() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 5) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4) {
            return moduleMethod.selector == 6 ? lambda10(obj, obj2, obj3, obj4) : super.apply4(moduleMethod, obj, obj2, obj3, obj4);
        }

        public Object lambda9() {
            return frame3.lambda8recur(lists.cdr.apply1(this.lis));
        }

        @Override // gnu.expr.ModuleBody
        public int match4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4, CallContext callContext) {
            if (moduleMethod.selector != 6) {
                return super.match4(moduleMethod, obj, obj2, obj3, obj4, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.value4 = obj4;
            callContext.proc = moduleMethod;
            callContext.pc = 4;
            return 0;
        }

        public Object lambda10(Object obj, Object obj2, Object obj3, Object obj4) {
            return misc.values(lists.cons(lists.car.apply1(this.elt), obj), lists.cons(lists.cadr.apply1(this.elt), obj2), lists.cons(lists.caddr.apply1(this.elt), obj3), lists.cons(lists.cadddr.apply1(this.elt), obj4));
        }
    }

    public static Object unzip5(Object obj) {
        new frame5();
        return frame5.lambda11recur(obj);
    }

    public class frame5 extends ModuleBody {
        public static Object lambda11recur(Object obj) {
            frame6 frame6Var = new frame6();
            frame6Var.lis = obj;
            if (srfi1.isNullList(obj) != Boolean.FALSE) {
                Object obj2 = frame6Var.lis;
                return misc.values(obj2, obj2, obj2, obj2, obj2);
            }
            frame6Var.elt = lists.car.apply1(frame6Var.lis);
            return call_with_values.callWithValues(frame6Var.lambda$Fn7, frame6Var.lambda$Fn8);
        }
    }

    public class frame6 extends ModuleBody {
        Object elt;
        final ModuleMethod lambda$Fn7 = new ModuleMethod(this, 7, null, 0);
        final ModuleMethod lambda$Fn8;
        Object lis;

        public frame6() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 8, null, 20485);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:654");
            this.lambda$Fn8 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 7 ? lambda12() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 7) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public Object applyN(ModuleMethod moduleMethod, Object[] objArr) {
            return moduleMethod.selector == 8 ? lambda13(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4]) : super.applyN(moduleMethod, objArr);
        }

        public Object lambda12() {
            return frame5.lambda11recur(lists.cdr.apply1(this.lis));
        }

        @Override // gnu.expr.ModuleBody
        public int matchN(ModuleMethod moduleMethod, Object[] objArr, CallContext callContext) {
            if (moduleMethod.selector != 8) {
                return super.matchN(moduleMethod, objArr, callContext);
            }
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }

        public Object lambda13(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
            GenericProc genericProc = lists.car;
            return misc.values(lists.cons(genericProc.apply1(this.elt), obj), lists.cons(lists.cadr.apply1(this.elt), obj2), lists.cons(lists.caddr.apply1(this.elt), obj3), lists.cons(lists.cadddr.apply1(this.elt), obj4), lists.cons(genericProc.apply1(lists.cddddr.apply1(this.elt)), obj5));
        }
    }

    public static Object append$Ex$V(Object[] objArr) throws Throwable {
        Object objMakeList = LList.makeList(objArr, 0);
        Object objApply1 = LList.Empty;
        while (lists.isPair(objMakeList)) {
            objApply1 = lists.car.apply1(objMakeList);
            objMakeList = lists.cdr.apply1(objMakeList);
            if (lists.isPair(objApply1)) {
                try {
                    Object objLastPair = lastPair((Pair) objApply1);
                    while (lists.isPair(objMakeList)) {
                        Object objApply12 = lists.car.apply1(objMakeList);
                        objMakeList = lists.cdr.apply1(objMakeList);
                        try {
                            ((Pair) objLastPair).setCdr(objApply12);
                            if (lists.isPair(objApply12)) {
                                try {
                                    objLastPair = lastPair((Pair) objApply12);
                                } catch (ClassCastException e) {
                                    throw new WrongType(e, "last-pair", 0, objApply12);
                                }
                            }
                        } catch (ClassCastException e2) {
                            throw new WrongType(e2, "set-cdr!", 1, objLastPair);
                        }
                    }
                    return objApply1;
                } catch (ClassCastException e3) {
                    throw new WrongType(e3, "last-pair", 0, objApply1);
                }
            }
        }
        return objApply1;
    }

    public static Object appendReverse(Object obj, Object obj2) throws Throwable {
        while (isNullList(obj) == Boolean.FALSE) {
            Object objApply1 = lists.cdr.apply1(obj);
            obj2 = lists.cons(lists.car.apply1(obj), obj2);
            obj = objApply1;
        }
        return obj2;
    }

    public static Object appendReverse$Ex(Object obj, Object obj2) throws Throwable {
        while (isNullList(obj) == Boolean.FALSE) {
            Object objApply1 = lists.cdr.apply1(obj);
            try {
                ((Pair) obj).setCdr(obj2);
                obj2 = obj;
                obj = objApply1;
            } catch (ClassCastException e) {
                throw new WrongType(e, "set-cdr!", 1, obj);
            }
        }
        return obj2;
    }

    public static Object concatenate(Object obj) {
        return reduceRight(append.append, LList.Empty, obj);
    }

    public static Object concatenate$Ex(Object obj) {
        return reduceRight(append$Ex, LList.Empty, obj);
    }

    public static Object $PcCdrs(Object obj) {
        Continuation continuation = new Continuation(CallContext.getInstance());
        try {
            frame55 frame55Var = new frame55();
            frame55Var.abort = continuation;
            Object objLambda74recur = frame55Var.lambda74recur(obj);
            continuation.invoked = true;
            return objLambda74recur;
        } catch (Throwable th) {
            return Continuation.handleException(th, continuation);
        }
    }

    public class frame55 extends ModuleBody {
        Continuation abort;

        public Object lambda74recur(Object obj) throws Throwable {
            if (!lists.isPair(obj)) {
                return LList.Empty;
            }
            Object objApply1 = lists.car.apply1(obj);
            if (srfi1.isNullList(objApply1) != Boolean.FALSE) {
                return this.abort.apply1(LList.Empty);
            }
            GenericProc genericProc = lists.cdr;
            return lists.cons(genericProc.apply1(objApply1), lambda74recur(genericProc.apply1(obj)));
        }
    }

    public static Object $PcCars$Pl(Object obj, Object obj2) {
        frame56 frame56Var = new frame56();
        frame56Var.last$Mnelt = obj2;
        return frame56Var.lambda75recur(obj);
    }

    public class frame56 extends ModuleBody {
        Object last$Mnelt;

        public Object lambda75recur(Object obj) {
            return lists.isPair(obj) ? lists.cons(lists.caar.apply1(obj), lambda75recur(lists.cdr.apply1(obj))) : LList.list1(this.last$Mnelt);
        }
    }

    public static Object $PcCars$PlCdrs(Object obj) {
        Continuation continuation = new Continuation(CallContext.getInstance());
        try {
            frame57 frame57Var = new frame57();
            frame57Var.abort = continuation;
            Object objLambda76recur = frame57Var.lambda76recur(obj);
            continuation.invoked = true;
            return objLambda76recur;
        } catch (Throwable th) {
            return Continuation.handleException(th, continuation);
        }
    }

    public class frame57 extends ModuleBody {
        Continuation abort;

        public Object lambda76recur(Object obj) {
            frame58 frame58Var = new frame58();
            frame58Var.staticLink = this;
            frame58Var.lists = obj;
            if (lists.isPair(obj)) {
                return call_with_values.callWithValues(frame58Var.lambda$Fn57, frame58Var.lambda$Fn58);
            }
            LList lList = LList.Empty;
            return misc.values(lList, lList);
        }
    }

    public class frame58 extends ModuleBody {
        final ModuleMethod lambda$Fn57 = new ModuleMethod(this, 61, null, 0);
        final ModuleMethod lambda$Fn58;
        Object lists;
        frame57 staticLink;

        public frame58() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 62, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:762");
            this.lambda$Fn58 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 61 ? lambda77() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 61) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 62 ? lambda78(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        public Object lambda77() {
            return srfi1.car$PlCdr(this.lists);
        }

        public Object lambda78(Object obj, Object obj2) {
            frame59 frame59Var = new frame59();
            frame59Var.staticLink = this;
            frame59Var.list = obj;
            frame59Var.other$Mnlists = obj2;
            if (srfi1.isNullList(obj) == Boolean.FALSE) {
                return call_with_values.callWithValues(frame59Var.lambda$Fn59, frame59Var.lambda$Fn60);
            }
            Continuation continuation = this.staticLink.abort;
            LList lList = LList.Empty;
            return continuation.apply2(lList, lList);
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 62) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
    }

    public class frame59 extends ModuleBody {
        final ModuleMethod lambda$Fn59 = new ModuleMethod(this, 59, null, 0);
        final ModuleMethod lambda$Fn60;
        Object list;
        Object other$Mnlists;
        frame58 staticLink;

        public frame59() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 60, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:764");
            this.lambda$Fn60 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 59 ? lambda79() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 59) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 60 ? lambda80(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        public Object lambda79() {
            return srfi1.car$PlCdr(this.list);
        }

        public Object lambda80(Object obj, Object obj2) {
            frame60 frame60Var = new frame60();
            frame60Var.staticLink = this;
            frame60Var.f5473a = obj;
            frame60Var.d = obj2;
            return call_with_values.callWithValues(frame60Var.lambda$Fn61, frame60Var.lambda$Fn62);
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 60) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
    }

    public class frame60 extends ModuleBody {

        /* renamed from: a, reason: collision with root package name */
        Object f5473a;
        Object d;
        final ModuleMethod lambda$Fn61 = new ModuleMethod(this, 57, null, 0);
        final ModuleMethod lambda$Fn62;
        frame59 staticLink;

        public frame60() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 58, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:765");
            this.lambda$Fn62 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 57 ? lambda81() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 57) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 58 ? lambda82(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        public Object lambda81() {
            frame59 frame59Var = this.staticLink;
            return frame59Var.staticLink.staticLink.lambda76recur(frame59Var.other$Mnlists);
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 58) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda82(Object obj, Object obj2) {
            return misc.values(lists.cons(this.f5473a, obj), lists.cons(this.d, obj2));
        }
    }

    public class frame61 extends ModuleBody {
        final ModuleMethod lambda$Fn63 = new ModuleMethod(this, 63, null, 0);
        Object lists;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 63 ? lambda83() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 63) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        public static Pair lambda84(Object obj, Object obj2) {
            return lists.cons(obj, obj2);
        }

        public Object lambda83() {
            return srfi1.$PcCars$PlCdrs(this.lists);
        }
    }

    public static Object $PcCars$PlCdrs$SlPair(Object obj) {
        frame61 frame61Var = new frame61();
        frame61Var.lists = obj;
        return call_with_values.callWithValues(frame61Var.lambda$Fn63, lambda$Fn64);
    }

    public static Object $PcCars$PlCdrs$Pl(Object obj, Object obj2) {
        frame62 frame62Var = new frame62();
        frame62Var.cars$Mnfinal = obj2;
        Continuation continuation = new Continuation(CallContext.getInstance());
        try {
            frame63 frame63Var = new frame63();
            frame63Var.staticLink = frame62Var;
            frame63Var.abort = continuation;
            Object objLambda85recur = frame63Var.lambda85recur(obj);
            continuation.invoked = true;
            return objLambda85recur;
        } catch (Throwable th) {
            return Continuation.handleException(th, continuation);
        }
    }

    public class frame63 extends ModuleBody {
        Continuation abort;
        frame62 staticLink;

        public Object lambda85recur(Object obj) {
            frame64 frame64Var = new frame64();
            frame64Var.staticLink = this;
            frame64Var.lists = obj;
            return lists.isPair(obj) ? call_with_values.callWithValues(frame64Var.lambda$Fn65, frame64Var.lambda$Fn66) : misc.values(LList.list1(this.staticLink.cars$Mnfinal), LList.Empty);
        }
    }

    public class frame64 extends ModuleBody {
        final ModuleMethod lambda$Fn65 = new ModuleMethod(this, 68, null, 0);
        final ModuleMethod lambda$Fn66;
        Object lists;
        frame63 staticLink;

        public frame64() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 69, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:783");
            this.lambda$Fn66 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 68 ? lambda86() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 68) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 69 ? lambda87(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        public Object lambda86() {
            return srfi1.car$PlCdr(this.lists);
        }

        public Object lambda87(Object obj, Object obj2) {
            frame65 frame65Var = new frame65();
            frame65Var.staticLink = this;
            frame65Var.list = obj;
            frame65Var.other$Mnlists = obj2;
            if (srfi1.isNullList(obj) == Boolean.FALSE) {
                return call_with_values.callWithValues(frame65Var.lambda$Fn67, frame65Var.lambda$Fn68);
            }
            Continuation continuation = this.staticLink.abort;
            LList lList = LList.Empty;
            return continuation.apply2(lList, lList);
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 69) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
    }

    public class frame65 extends ModuleBody {
        final ModuleMethod lambda$Fn67 = new ModuleMethod(this, 66, null, 0);
        final ModuleMethod lambda$Fn68;
        Object list;
        Object other$Mnlists;
        frame64 staticLink;

        public frame65() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 67, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:785");
            this.lambda$Fn68 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 66 ? lambda88() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 66) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 67 ? lambda89(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        public Object lambda88() {
            return srfi1.car$PlCdr(this.list);
        }

        public Object lambda89(Object obj, Object obj2) {
            frame66 frame66Var = new frame66();
            frame66Var.staticLink = this;
            frame66Var.f5474a = obj;
            frame66Var.d = obj2;
            return call_with_values.callWithValues(frame66Var.lambda$Fn69, frame66Var.lambda$Fn70);
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 67) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
    }

    public class frame66 extends ModuleBody {

        /* renamed from: a, reason: collision with root package name */
        Object f5474a;
        Object d;
        final ModuleMethod lambda$Fn69 = new ModuleMethod(this, 64, null, 0);
        final ModuleMethod lambda$Fn70;
        frame65 staticLink;

        public frame66() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 65, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:786");
            this.lambda$Fn70 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 64 ? lambda90() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 64) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 65 ? lambda91(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        public Object lambda90() {
            frame65 frame65Var = this.staticLink;
            return frame65Var.staticLink.staticLink.lambda85recur(frame65Var.other$Mnlists);
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 65) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda91(Object obj, Object obj2) {
            return misc.values(lists.cons(this.f5474a, obj), lists.cons(this.d, obj2));
        }
    }

    public static Object $PcCars$PlCdrs$SlNoTest(Object obj) {
        new frame67();
        return frame67.lambda92recur(obj);
    }

    public class frame67 extends ModuleBody {
        public static Object lambda92recur(Object obj) {
            frame68 frame68Var = new frame68();
            frame68Var.lists = obj;
            if (lists.isPair(obj)) {
                return call_with_values.callWithValues(frame68Var.lambda$Fn71, frame68Var.lambda$Fn72);
            }
            LList lList = LList.Empty;
            return misc.values(lList, lList);
        }
    }

    public class frame68 extends ModuleBody {
        final ModuleMethod lambda$Fn71 = new ModuleMethod(this, 74, null, 0);
        final ModuleMethod lambda$Fn72;
        Object lists;

        public frame68() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 75, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:794");
            this.lambda$Fn72 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 74 ? lambda93() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 74) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 75 ? lambda94(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        public Object lambda93() {
            return srfi1.car$PlCdr(this.lists);
        }

        public Object lambda94(Object obj, Object obj2) {
            frame69 frame69Var = new frame69();
            frame69Var.staticLink = this;
            frame69Var.list = obj;
            frame69Var.other$Mnlists = obj2;
            return call_with_values.callWithValues(frame69Var.lambda$Fn73, frame69Var.lambda$Fn74);
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 75) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
    }

    public class frame69 extends ModuleBody {
        final ModuleMethod lambda$Fn73 = new ModuleMethod(this, 72, null, 0);
        final ModuleMethod lambda$Fn74;
        Object list;
        Object other$Mnlists;
        frame68 staticLink;

        public frame69() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 73, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:795");
            this.lambda$Fn74 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 72 ? lambda95() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 72) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 73 ? lambda96(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        public Object lambda95() {
            return srfi1.car$PlCdr(this.list);
        }

        public Object lambda96(Object obj, Object obj2) {
            frame70 frame70Var = new frame70();
            frame70Var.staticLink = this;
            frame70Var.f5475a = obj;
            frame70Var.d = obj2;
            return call_with_values.callWithValues(frame70Var.lambda$Fn75, frame70Var.lambda$Fn76);
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 73) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
    }

    public class frame70 extends ModuleBody {

        /* renamed from: a, reason: collision with root package name */
        Object f5475a;
        Object d;
        final ModuleMethod lambda$Fn75 = new ModuleMethod(this, 70, null, 0);
        final ModuleMethod lambda$Fn76;
        frame69 staticLink;

        public frame70() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 71, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:796");
            this.lambda$Fn76 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 70 ? lambda97() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 70) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 71 ? lambda98(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        public Object lambda97() {
            return frame67.lambda92recur(this.staticLink.other$Mnlists);
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 71) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda98(Object obj, Object obj2) {
            return misc.values(lists.cons(this.f5475a, obj), lists.cons(this.d, obj2));
        }
    }

    public class frame71 extends ModuleBody {
        final ModuleMethod lambda$Fn77 = new ModuleMethod(this, 76, null, 0);
        Object lists;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 76 ? lambda99() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 76) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        public static Pair lambda100(Object obj, Object obj2) {
            return lists.cons(obj, obj2);
        }

        public Object lambda99() {
            return srfi1.$PcCars$PlCdrs$SlNoTest(this.lists);
        }
    }

    public static Object $PcCars$PlCdrs$SlNoTest$SlPair(Object obj) {
        frame71 frame71Var = new frame71();
        frame71Var.lists = obj;
        return call_with_values.callWithValues(frame71Var.lambda$Fn77, lambda$Fn78);
    }

    public static Object count$V(Procedure procedure, Object obj, Object[] objArr) throws Throwable {
        Object objMakeList = LList.makeList(objArr, 0);
        if (lists.isPair(objMakeList)) {
            Object objApply2 = Lit0;
            while (true) {
                Object objIsNullList = isNullList(obj);
                Boolean bool = Boolean.FALSE;
                if (objIsNullList != bool) {
                    break;
                }
                Object obj$PcCars$PlCdrs$SlPair = $PcCars$PlCdrs$SlPair(objMakeList);
                GenericProc genericProc = lists.car;
                Object objApply1 = genericProc.apply1(obj$PcCars$PlCdrs$SlPair);
                GenericProc genericProc2 = lists.cdr;
                objMakeList = genericProc2.apply1(obj$PcCars$PlCdrs$SlPair);
                if (lists.isNull(objApply1)) {
                    break;
                }
                Object objApply12 = genericProc2.apply1(obj);
                if (Scheme.apply.apply3(procedure, genericProc.apply1(obj), objApply1) != bool) {
                    objApply2 = AddOp.$Pl.apply2(objApply2, Lit1);
                }
                obj = objApply12;
            }
            return objApply2;
        }
        Object objApply22 = Lit0;
        while (true) {
            Object objIsNullList2 = isNullList(obj);
            Boolean bool2 = Boolean.FALSE;
            if (objIsNullList2 != bool2) {
                return objApply22;
            }
            Object objApply13 = lists.cdr.apply1(obj);
            if (procedure.apply1(lists.car.apply1(obj)) != bool2) {
                objApply22 = AddOp.$Pl.apply2(objApply22, Lit1);
            }
            obj = objApply13;
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object apply4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4) {
        if (moduleMethod.selector != 123) {
            return super.apply4(moduleMethod, obj, obj2, obj3, obj4);
        }
        try {
            try {
                try {
                    return unfoldRight((Procedure) obj, (Procedure) obj2, (Procedure) obj3, obj4);
                } catch (ClassCastException e) {
                    throw new WrongType(e, "unfold-right", 3, obj3);
                }
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "unfold-right", 2, obj2);
            }
        } catch (ClassCastException e3) {
            throw new WrongType(e3, "unfold-right", 1, obj);
        }
    }

    @Override // gnu.expr.ModuleBody
    public int match4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4, CallContext callContext) {
        if (moduleMethod.selector != 123) {
            return super.match4(moduleMethod, obj, obj2, obj3, obj4, callContext);
        }
        if (!(obj instanceof Procedure)) {
            return -786431;
        }
        callContext.value1 = obj;
        if (!(obj2 instanceof Procedure)) {
            return -786430;
        }
        callContext.value2 = obj2;
        if (!(obj3 instanceof Procedure)) {
            return -786429;
        }
        callContext.value3 = obj3;
        callContext.value4 = obj4;
        callContext.proc = moduleMethod;
        callContext.pc = 4;
        return 0;
    }

    public static Object unfoldRight(Procedure procedure, Procedure procedure2, Procedure procedure3, Object obj, Object obj2) throws Throwable {
        while (procedure.apply1(obj) == Boolean.FALSE) {
            Object objApply1 = procedure3.apply1(obj);
            obj2 = lists.cons(procedure2.apply1(obj), obj2);
            obj = objApply1;
        }
        return obj2;
    }

    public static Object unfold$V(Procedure procedure, Procedure procedure2, Procedure procedure3, Object obj, Object[] objArr) throws Throwable {
        LList lListMakeList = LList.makeList(objArr, 0);
        if (lists.isPair(lListMakeList)) {
            Object objApply1 = lists.car.apply1(lListMakeList);
            if (lists.isPair(lists.cdr.apply1(lListMakeList))) {
                return Scheme.apply.applyN(new Object[]{misc.error, "Too many arguments", unfold, procedure, procedure2, procedure3, obj, lListMakeList});
            }
            Object objCons = LList.Empty;
            while (procedure.apply1(obj) == Boolean.FALSE) {
                Object objApply12 = procedure3.apply1(obj);
                objCons = lists.cons(procedure2.apply1(obj), objCons);
                obj = objApply12;
            }
            return appendReverse$Ex(objCons, Scheme.applyToArgs.apply2(objApply1, obj));
        }
        LList lListCons = LList.Empty;
        while (procedure.apply1(obj) == Boolean.FALSE) {
            Object objApply13 = procedure3.apply1(obj);
            lListCons = lists.cons(procedure2.apply1(obj), lListCons);
            obj = objApply13;
        }
        return LList.reverseInPlace(lListCons);
    }

    public static Object fold$V(Procedure procedure, Object obj, Object obj2, Object[] objArr) throws Throwable {
        frame7 frame7Var = new frame7();
        frame7Var.kons = procedure;
        LList lListMakeList = LList.makeList(objArr, 0);
        if (lists.isPair(lListMakeList)) {
            return frame7Var.lambda14lp(lists.cons(obj2, lListMakeList), obj);
        }
        while (isNullList(obj2) == Boolean.FALSE) {
            Object objApply1 = lists.cdr.apply1(obj2);
            obj = frame7Var.kons.apply2(lists.car.apply1(obj2), obj);
            obj2 = objApply1;
        }
        return obj;
    }

    public class frame7 extends ModuleBody {
        Procedure kons;

        public Object lambda14lp(Object obj, Object obj2) {
            frame8 frame8Var = new frame8();
            frame8Var.staticLink = this;
            frame8Var.lists = obj;
            frame8Var.ans = obj2;
            return call_with_values.callWithValues(frame8Var.lambda$Fn9, frame8Var.lambda$Fn10);
        }
    }

    public class frame8 extends ModuleBody {
        Object ans;
        final ModuleMethod lambda$Fn10;
        final ModuleMethod lambda$Fn9 = new ModuleMethod(this, 9, null, 0);
        Object lists;
        frame7 staticLink;

        public frame8() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 10, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:859");
            this.lambda$Fn10 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 9 ? lambda15() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 9) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 10 ? lambda16(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        public Object lambda15() {
            return srfi1.$PcCars$PlCdrs$Pl(this.lists, this.ans);
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 10) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda16(Object obj, Object obj2) {
            if (lists.isNull(obj)) {
                return this.ans;
            }
            frame7 frame7Var = this.staticLink;
            return frame7Var.lambda14lp(obj2, Scheme.apply.apply2(frame7Var.kons, obj));
        }
    }

    public static Object foldRight$V(Procedure procedure, Object obj, Object obj2, Object[] objArr) {
        frame9 frame9Var = new frame9();
        frame9Var.kons = procedure;
        frame9Var.knil = obj;
        LList lListMakeList = LList.makeList(objArr, 0);
        if (lists.isPair(lListMakeList)) {
            return frame9Var.lambda17recur(lists.cons(obj2, lListMakeList));
        }
        return frame9Var.lambda18recur(obj2);
    }

    public class frame9 extends ModuleBody {
        Object knil;
        Procedure kons;

        public Object lambda17recur(Object obj) {
            Object obj$PcCdrs = srfi1.$PcCdrs(obj);
            return lists.isNull(obj$PcCdrs) ? this.knil : Scheme.apply.apply2(this.kons, srfi1.$PcCars$Pl(obj, lambda17recur(obj$PcCdrs)));
        }

        public Object lambda18recur(Object obj) throws Throwable {
            if (srfi1.isNullList(obj) != Boolean.FALSE) {
                return this.knil;
            }
            return this.kons.apply2(lists.car.apply1(obj), lambda18recur(lists.cdr.apply1(obj)));
        }
    }

    public static Object pairFoldRight$V(Procedure procedure, Object obj, Object obj2, Object[] objArr) {
        frame10 frame10Var = new frame10();
        frame10Var.f = procedure;
        frame10Var.zero = obj;
        LList lListMakeList = LList.makeList(objArr, 0);
        if (lists.isPair(lListMakeList)) {
            return frame10Var.lambda19recur(lists.cons(obj2, lListMakeList));
        }
        return frame10Var.lambda20recur(obj2);
    }

    public class frame10 extends ModuleBody {
        Procedure f;
        Object zero;

        public Object lambda19recur(Object obj) {
            Object obj$PcCdrs = srfi1.$PcCdrs(obj);
            return lists.isNull(obj$PcCdrs) ? this.zero : Scheme.apply.apply2(this.f, srfi1.append$Ex$V(new Object[]{obj, LList.list1(lambda19recur(obj$PcCdrs))}));
        }

        public Object lambda20recur(Object obj) {
            return srfi1.isNullList(obj) != Boolean.FALSE ? this.zero : this.f.apply2(obj, lambda20recur(lists.cdr.apply1(obj)));
        }
    }

    public static Object pairFold$V(Procedure procedure, Object obj, Object obj2, Object[] objArr) throws Throwable {
        LList lListMakeList = LList.makeList(objArr, 0);
        if (lists.isPair(lListMakeList)) {
            Object objCons = lists.cons(obj2, lListMakeList);
            while (true) {
                Object obj$PcCdrs = $PcCdrs(objCons);
                if (lists.isNull(obj$PcCdrs)) {
                    return obj;
                }
                obj = Scheme.apply.apply2(procedure, append$Ex$V(new Object[]{objCons, LList.list1(obj)}));
                objCons = obj$PcCdrs;
            }
        } else {
            while (isNullList(obj2) == Boolean.FALSE) {
                Object objApply1 = lists.cdr.apply1(obj2);
                obj = procedure.apply2(obj2, obj);
                obj2 = objApply1;
            }
            return obj;
        }
    }

    public static Object reduce(Procedure procedure, Object obj, Object obj2) {
        return isNullList(obj2) != Boolean.FALSE ? obj : fold$V(procedure, lists.car.apply1(obj2), lists.cdr.apply1(obj2), new Object[0]);
    }

    public static Object reduceRight(Procedure procedure, Object obj, Object obj2) {
        frame11 frame11Var = new frame11();
        frame11Var.f = procedure;
        return isNullList(obj2) != Boolean.FALSE ? obj : frame11Var.lambda21recur(lists.car.apply1(obj2), lists.cdr.apply1(obj2));
    }

    public class frame11 extends ModuleBody {
        Procedure f;

        public Object lambda21recur(Object obj, Object obj2) {
            return lists.isPair(obj2) ? this.f.apply2(obj, lambda21recur(lists.car.apply1(obj2), lists.cdr.apply1(obj2))) : obj;
        }
    }

    public static Object appendMap$V(Object obj, Object obj2, Object[] objArr) {
        LList lListMakeList = LList.makeList(objArr, 0);
        if (lists.isPair(lListMakeList)) {
            Apply apply = Scheme.apply;
            return apply.apply2(append.append, apply.apply4(Scheme.map, obj, obj2, lListMakeList));
        }
        Apply apply2 = Scheme.apply;
        append appendVar = append.append;
        Object objMake = LList.Empty;
        while (obj2 != LList.Empty) {
            try {
                Pair pair = (Pair) obj2;
                Object cdr = pair.getCdr();
                objMake = Pair.make(Scheme.applyToArgs.apply2(obj, pair.getCar()), objMake);
                obj2 = cdr;
            } catch (ClassCastException e) {
                throw new WrongType(e, "arg0", -2, obj2);
            }
        }
        return apply2.apply2(appendVar, LList.reverseInPlace(objMake));
    }

    public static Object appendMap$Ex$V(Object obj, Object obj2, Object[] objArr) {
        LList lListMakeList = LList.makeList(objArr, 0);
        if (lists.isPair(lListMakeList)) {
            Apply apply = Scheme.apply;
            return apply.apply2(append$Ex, apply.apply4(Scheme.map, obj, obj2, lListMakeList));
        }
        Apply apply2 = Scheme.apply;
        ModuleMethod moduleMethod = append$Ex;
        Object objMake = LList.Empty;
        while (obj2 != LList.Empty) {
            try {
                Pair pair = (Pair) obj2;
                Object cdr = pair.getCdr();
                objMake = Pair.make(Scheme.applyToArgs.apply2(obj, pair.getCar()), objMake);
                obj2 = cdr;
            } catch (ClassCastException e) {
                throw new WrongType(e, "arg0", -2, obj2);
            }
        }
        return apply2.apply2(moduleMethod, LList.reverseInPlace(objMake));
    }

    public static Object pairForEach$V(Procedure procedure, Object obj, Object[] objArr) throws Throwable {
        LList lListMakeList = LList.makeList(objArr, 0);
        if (lists.isPair(lListMakeList)) {
            Object objCons = lists.cons(obj, lListMakeList);
            while (true) {
                Object obj$PcCdrs = $PcCdrs(objCons);
                if (lists.isPair(obj$PcCdrs)) {
                    Scheme.apply.apply2(procedure, objCons);
                    objCons = obj$PcCdrs;
                } else {
                    return Values.empty;
                }
            }
        } else {
            while (isNullList(obj) == Boolean.FALSE) {
                Object objApply1 = lists.cdr.apply1(obj);
                procedure.apply1(obj);
                obj = objApply1;
            }
            return Values.empty;
        }
    }

    public static Object map$Ex$V(Procedure procedure, Object obj, Object[] objArr) throws Throwable {
        frame12 frame12Var = new frame12();
        frame12Var.f = procedure;
        Object objMakeList = LList.makeList(objArr, 0);
        if (lists.isPair(objMakeList)) {
            Object objApply1 = obj;
            while (isNullList(objApply1) == Boolean.FALSE) {
                Object obj$PcCars$PlCdrs$SlNoTest$SlPair = $PcCars$PlCdrs$SlNoTest$SlPair(objMakeList);
                GenericProc genericProc = lists.car;
                Object objApply12 = genericProc.apply1(obj$PcCars$PlCdrs$SlNoTest$SlPair);
                GenericProc genericProc2 = lists.cdr;
                objMakeList = genericProc2.apply1(obj$PcCars$PlCdrs$SlNoTest$SlPair);
                try {
                    ((Pair) objApply1).setCar(Scheme.apply.apply3(frame12Var.f, genericProc.apply1(objApply1), objApply12));
                    objApply1 = genericProc2.apply1(objApply1);
                } catch (ClassCastException e) {
                    throw new WrongType(e, "set-car!", 1, objApply1);
                }
            }
            return obj;
        }
        pairForEach$V(frame12Var.lambda$Fn11, obj, new Object[0]);
        return obj;
    }

    public class frame12 extends ModuleBody {
        Procedure f;
        final ModuleMethod lambda$Fn11;

        public frame12() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 11, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:961");
            this.lambda$Fn11 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            if (moduleMethod.selector != 11) {
                return super.apply1(moduleMethod, obj);
            }
            lambda22(obj);
            return Values.empty;
        }

        public void lambda22(Object obj) {
            try {
                ((Pair) obj).setCar(this.f.apply1(lists.car.apply1(obj)));
            } catch (ClassCastException e) {
                throw new WrongType(e, "set-car!", 1, obj);
            }
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
    }

    public static Object filterMap$V(Procedure procedure, Object obj, Object[] objArr) throws Throwable {
        frame13 frame13Var = new frame13();
        frame13Var.f = procedure;
        LList lListMakeList = LList.makeList(objArr, 0);
        if (lists.isPair(lListMakeList)) {
            return frame13Var.lambda23recur(lists.cons(obj, lListMakeList), LList.Empty);
        }
        LList lListCons = LList.Empty;
        while (true) {
            Object objIsNullList = isNullList(obj);
            Boolean bool = Boolean.FALSE;
            if (objIsNullList != bool) {
                return LList.reverseInPlace(lListCons);
            }
            Object objApply1 = frame13Var.f.apply1(lists.car.apply1(obj));
            obj = lists.cdr.apply1(obj);
            if (objApply1 != bool) {
                lListCons = lists.cons(objApply1, lListCons);
            }
        }
    }

    public class frame13 extends ModuleBody {
        Procedure f;

        public Object lambda23recur(Object obj, Object obj2) {
            frame14 frame14Var = new frame14();
            frame14Var.staticLink = this;
            frame14Var.lists = obj;
            frame14Var.res = obj2;
            return call_with_values.callWithValues(frame14Var.lambda$Fn12, frame14Var.lambda$Fn13);
        }
    }

    public class frame14 extends ModuleBody {
        final ModuleMethod lambda$Fn12 = new ModuleMethod(this, 12, null, 0);
        final ModuleMethod lambda$Fn13;
        Object lists;
        Object res;
        frame13 staticLink;

        public frame14() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 13, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:969");
            this.lambda$Fn13 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 12 ? lambda24() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 12) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 13 ? lambda25(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        public Object lambda24() {
            return srfi1.$PcCars$PlCdrs(this.lists);
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 13) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda25(Object obj, Object obj2) throws Throwable {
            if (srfi1.isNotPair(obj)) {
                Object obj3 = this.res;
                try {
                    return LList.reverseInPlace((LList) obj3);
                } catch (ClassCastException e) {
                    throw new WrongType(e, "reverse!", 1, obj3);
                }
            }
            Object objApply2 = Scheme.apply.apply2(this.staticLink.f, obj);
            if (objApply2 != Boolean.FALSE) {
                return this.staticLink.lambda23recur(obj2, lists.cons(objApply2, this.res));
            }
            return this.staticLink.lambda23recur(obj2, this.res);
        }
    }

    public static Object filter(Procedure procedure, Object obj) throws Throwable {
        LList lListCons = LList.Empty;
        while (true) {
            Object objIsNullList = isNullList(obj);
            Boolean bool = Boolean.FALSE;
            if (objIsNullList != bool) {
                return LList.reverseInPlace(lListCons);
            }
            Object objApply1 = lists.car.apply1(obj);
            obj = lists.cdr.apply1(obj);
            if (procedure.apply1(objApply1) != bool) {
                lListCons = lists.cons(objApply1, lListCons);
            }
        }
    }

    public static Object filter$Ex(Procedure procedure, Object obj) throws Throwable {
        Object objApply1;
        while (true) {
            Object objIsNullList = isNullList(obj);
            Boolean bool = Boolean.FALSE;
            if (objIsNullList != bool) {
                break;
            }
            if (procedure.apply1(lists.car.apply1(obj)) == bool) {
                obj = lists.cdr.apply1(obj);
            } else {
                Object objApply12 = lists.cdr.apply1(obj);
                Object obj2 = obj;
                while (lists.isPair(objApply12)) {
                    if (procedure.apply1(lists.car.apply1(objApply12)) != Boolean.FALSE) {
                        objApply1 = lists.cdr.apply1(objApply12);
                    } else {
                        objApply12 = lists.cdr.apply1(objApply12);
                        while (lists.isPair(objApply12)) {
                            if (procedure.apply1(lists.car.apply1(objApply12)) != Boolean.FALSE) {
                                try {
                                    ((Pair) obj2).setCdr(objApply12);
                                    objApply1 = lists.cdr.apply1(objApply12);
                                } catch (ClassCastException e) {
                                    throw new WrongType(e, "set-cdr!", 1, obj2);
                                }
                            } else {
                                objApply12 = lists.cdr.apply1(objApply12);
                            }
                        }
                        try {
                            ((Pair) obj2).setCdr(objApply12);
                            return obj;
                        } catch (ClassCastException e2) {
                            throw new WrongType(e2, "set-cdr!", 1, obj2);
                        }
                    }
                    Object obj3 = objApply1;
                    obj2 = objApply12;
                    objApply12 = obj3;
                }
            }
        }
        return obj;
    }

    public static Object partition(Procedure procedure, Object obj) throws Throwable {
        LList lListCons = LList.Empty;
        LList lListCons2 = lListCons;
        while (true) {
            Object objIsNullList = isNullList(obj);
            Boolean bool = Boolean.FALSE;
            if (objIsNullList != bool) {
                return misc.values(LList.reverseInPlace(lListCons), LList.reverseInPlace(lListCons2));
            }
            Object objApply1 = lists.car.apply1(obj);
            obj = lists.cdr.apply1(obj);
            if (procedure.apply1(objApply1) != bool) {
                lListCons = lists.cons(objApply1, lListCons);
            } else {
                lListCons2 = lists.cons(objApply1, lListCons2);
            }
        }
    }

    public static Object partition$Ex(Procedure procedure, Object obj) throws Throwable {
        Object objApply1;
        SimpleSymbol simpleSymbol = Lit2;
        LList lList = LList.Empty;
        Pair pairCons = lists.cons(simpleSymbol, lList);
        Pair pairCons2 = lists.cons(simpleSymbol, lList);
        Object obj2 = pairCons2;
        Object obj3 = pairCons;
        while (!isNotPair(obj)) {
            if (procedure.apply1(lists.car.apply1(obj)) != Boolean.FALSE) {
                try {
                    ((Pair) obj3).setCdr(obj);
                    objApply1 = lists.cdr.apply1(obj);
                    obj3 = obj;
                } catch (ClassCastException e) {
                    throw new WrongType(e, "set-cdr!", 1, obj3);
                }
            } else {
                try {
                    ((Pair) obj2).setCdr(obj);
                    objApply1 = lists.cdr.apply1(obj);
                    obj2 = obj;
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "set-cdr!", 1, obj2);
                }
            }
            obj = objApply1;
        }
        try {
            Pair pair = (Pair) obj3;
            LList lList2 = LList.Empty;
            pair.setCdr(lList2);
            try {
                ((Pair) obj2).setCdr(lList2);
                GenericProc genericProc = lists.cdr;
                return misc.values(genericProc.apply1(pairCons), genericProc.apply1(pairCons2));
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "set-cdr!", 1, obj2);
            }
        } catch (ClassCastException e4) {
            throw new WrongType(e4, "set-cdr!", 1, obj3);
        }
    }

    public class frame15 extends ModuleBody {
        final ModuleMethod lambda$Fn14;
        Object pred;

        public frame15() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 14, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1199");
            this.lambda$Fn14 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 14 ? lambda26(obj) ? Boolean.TRUE : Boolean.FALSE : super.apply1(moduleMethod, obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean lambda26(Object obj) {
            return ((Scheme.applyToArgs.apply2(this.pred, obj) != Boolean.FALSE ? 1 : 0) + 1) & 1;
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 14) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    public class frame16 extends ModuleBody {
        final ModuleMethod lambda$Fn15;
        Object pred;

        public frame16() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 15, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1200");
            this.lambda$Fn15 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 15 ? lambda27(obj) ? Boolean.TRUE : Boolean.FALSE : super.apply1(moduleMethod, obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean lambda27(Object obj) {
            return ((Scheme.applyToArgs.apply2(this.pred, obj) != Boolean.FALSE ? 1 : 0) + 1) & 1;
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 15) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    public static Object remove(Object obj, Object obj2) {
        frame15 frame15Var = new frame15();
        frame15Var.pred = obj;
        return filter(frame15Var.lambda$Fn14, obj2);
    }

    public static Object remove$Ex(Object obj, Object obj2) {
        frame16 frame16Var = new frame16();
        frame16Var.pred = obj;
        return filter$Ex(frame16Var.lambda$Fn15, obj2);
    }

    public class frame17 extends ModuleBody {
        final ModuleMethod lambda$Fn16;
        Object maybe$Mn$Eq;
        Object x;

        public frame17() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 16, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1222");
            this.lambda$Fn16 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 16 ? lambda28(obj) ? Boolean.TRUE : Boolean.FALSE : super.apply1(moduleMethod, obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean lambda28(Object obj) {
            return ((Scheme.applyToArgs.apply3(this.maybe$Mn$Eq, this.x, obj) != Boolean.FALSE ? 1 : 0) + 1) & 1;
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 16) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    public static Object delete(Object obj, Object obj2, Object obj3) {
        frame17 frame17Var = new frame17();
        frame17Var.x = obj;
        frame17Var.maybe$Mn$Eq = obj3;
        return filter(frame17Var.lambda$Fn16, obj2);
    }

    public class frame18 extends ModuleBody {
        final ModuleMethod lambda$Fn17;
        Object maybe$Mn$Eq;
        Object x;

        public frame18() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 17, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1225");
            this.lambda$Fn17 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 17 ? lambda29(obj) ? Boolean.TRUE : Boolean.FALSE : super.apply1(moduleMethod, obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean lambda29(Object obj) {
            return ((Scheme.applyToArgs.apply3(this.maybe$Mn$Eq, this.x, obj) != Boolean.FALSE ? 1 : 0) + 1) & 1;
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 17) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    public static Object delete$Ex(Object obj, Object obj2, Object obj3) {
        frame18 frame18Var = new frame18();
        frame18Var.x = obj;
        frame18Var.maybe$Mn$Eq = obj3;
        return filter$Ex(frame18Var.lambda$Fn17, obj2);
    }

    public static Object deleteDuplicates(Object obj, Procedure procedure) {
        frame19 frame19Var = new frame19();
        frame19Var.maybe$Mn$Eq = procedure;
        return frame19Var.lambda30recur(obj);
    }

    public class frame19 extends ModuleBody {
        Procedure maybe$Mn$Eq;

        public Object lambda30recur(Object obj) throws Throwable {
            if (srfi1.isNullList(obj) == Boolean.FALSE) {
                Object objApply1 = lists.car.apply1(obj);
                Object objApply12 = lists.cdr.apply1(obj);
                Object objLambda30recur = lambda30recur(srfi1.delete(objApply1, objApply12, this.maybe$Mn$Eq));
                if (objApply12 != objLambda30recur) {
                    return lists.cons(objApply1, objLambda30recur);
                }
            }
            return obj;
        }
    }

    public static Object deleteDuplicates$Ex(Object obj, Procedure procedure) {
        frame20 frame20Var = new frame20();
        frame20Var.maybe$Mn$Eq = procedure;
        return frame20Var.lambda31recur(obj);
    }

    public class frame20 extends ModuleBody {
        Procedure maybe$Mn$Eq;

        public Object lambda31recur(Object obj) throws Throwable {
            if (srfi1.isNullList(obj) == Boolean.FALSE) {
                Object objApply1 = lists.car.apply1(obj);
                Object objApply12 = lists.cdr.apply1(obj);
                Object objLambda31recur = lambda31recur(srfi1.delete$Ex(objApply1, objApply12, this.maybe$Mn$Eq));
                if (objApply12 != objLambda31recur) {
                    return lists.cons(objApply1, objLambda31recur);
                }
            }
            return obj;
        }
    }

    public static Pair alistCons(Object obj, Object obj2, Object obj3) {
        return lists.cons(lists.cons(obj, obj2), obj3);
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) {
        int i = moduleMethod.selector;
        if (i == 82) {
            try {
                return listCopy((LList) obj);
            } catch (ClassCastException e) {
                throw new WrongType(e, "list-copy", 1, obj);
            }
        }
        if (i == 83) {
            try {
                return iota(LangObjType.coerceIntNum(obj));
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "iota", 1, obj);
            }
        }
        if (i == 93) {
            return length$Pl(obj);
        }
        if (i == 147) {
            return deleteDuplicates(obj);
        }
        if (i == 149) {
            return deleteDuplicates$Ex(obj);
        }
        if (i == 152) {
            return alistCopy(obj);
        }
        if (i == 120) {
            return concatenate(obj);
        }
        if (i != 121) {
            switch (i) {
                case 87:
                    return isProperList(obj);
                case 88:
                    return isDottedList(obj);
                case 89:
                    return isCircularList(obj);
                case 90:
                    return isNotPair(obj) ? Boolean.TRUE : Boolean.FALSE;
                case 91:
                    return isNullList(obj);
                default:
                    switch (i) {
                        case 95:
                            return fifth(obj);
                        case 96:
                            return sixth(obj);
                        case 97:
                            return seventh(obj);
                        case 98:
                            return eighth(obj);
                        case 99:
                            return ninth(obj);
                        case 100:
                            return tenth(obj);
                        case 101:
                            return car$PlCdr(obj);
                        default:
                            switch (i) {
                                case 110:
                                    return last(obj);
                                case 111:
                                    try {
                                        return lastPair((Pair) obj);
                                    } catch (ClassCastException e3) {
                                        throw new WrongType(e3, "last-pair", 1, obj);
                                    }
                                case 112:
                                    return unzip1(obj);
                                case 113:
                                    return unzip2(obj);
                                case 114:
                                    return unzip3(obj);
                                case 115:
                                    return unzip4(obj);
                                case 116:
                                    return unzip5(obj);
                                default:
                                    return super.apply1(moduleMethod, obj);
                            }
                    }
            }
        }
        return concatenate$Ex(obj);
    }

    public static LList alistCopy(Object obj) {
        Object objMake = LList.Empty;
        while (obj != LList.Empty) {
            try {
                Pair pair = (Pair) obj;
                Object cdr = pair.getCdr();
                Object car = pair.getCar();
                objMake = Pair.make(lists.cons(lists.car.apply1(car), lists.cdr.apply1(car)), objMake);
                obj = cdr;
            } catch (ClassCastException e) {
                throw new WrongType(e, "arg0", -2, obj);
            }
        }
        return LList.reverseInPlace(objMake);
    }

    public class frame21 extends ModuleBody {
        Object key;
        final ModuleMethod lambda$Fn18;
        Object maybe$Mn$Eq;

        public frame21() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 18, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1280");
            this.lambda$Fn18 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 18 ? lambda32(obj) ? Boolean.TRUE : Boolean.FALSE : super.apply1(moduleMethod, obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean lambda32(Object obj) {
            return ((Scheme.applyToArgs.apply3(this.maybe$Mn$Eq, this.key, lists.car.apply1(obj)) != Boolean.FALSE ? 1 : 0) + 1) & 1;
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 18) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    public static Object alistDelete(Object obj, Object obj2, Object obj3) {
        frame21 frame21Var = new frame21();
        frame21Var.key = obj;
        frame21Var.maybe$Mn$Eq = obj3;
        return filter(frame21Var.lambda$Fn18, obj2);
    }

    public class frame22 extends ModuleBody {
        Object key;
        final ModuleMethod lambda$Fn19;
        Object maybe$Mn$Eq;

        public frame22() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 19, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1283");
            this.lambda$Fn19 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 19 ? lambda33(obj) ? Boolean.TRUE : Boolean.FALSE : super.apply1(moduleMethod, obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean lambda33(Object obj) {
            return ((Scheme.applyToArgs.apply3(this.maybe$Mn$Eq, this.key, lists.car.apply1(obj)) != Boolean.FALSE ? 1 : 0) + 1) & 1;
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 19) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    public static Object alistDelete$Ex(Object obj, Object obj2, Object obj3) {
        frame22 frame22Var = new frame22();
        frame22Var.key = obj;
        frame22Var.maybe$Mn$Eq = obj3;
        return filter$Ex(frame22Var.lambda$Fn19, obj2);
    }

    @Override // gnu.expr.ModuleBody
    public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
        int i = moduleMethod.selector;
        if (i == 83) {
            try {
                try {
                    try {
                        return iota(LangObjType.coerceIntNum(obj), LangObjType.coerceNumeric(obj2), LangObjType.coerceNumeric(obj3));
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "iota", 3, obj3);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "iota", 2, obj2);
                }
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "iota", 1, obj);
            }
        }
        if (i == 143) {
            return delete(obj, obj2, obj3);
        }
        if (i == 145) {
            return delete$Ex(obj, obj2, obj3);
        }
        if (i == 151) {
            return alistCons(obj, obj2, obj3);
        }
        if (i == 153) {
            return alistDelete(obj, obj2, obj3);
        }
        if (i == 155) {
            return alistDelete$Ex(obj, obj2, obj3);
        }
        if (i == 130) {
            try {
                return reduce((Procedure) obj, obj2, obj3);
            } catch (ClassCastException e4) {
                throw new WrongType(e4, "reduce", 1, obj);
            }
        }
        if (i == 131) {
            try {
                return reduceRight((Procedure) obj, obj2, obj3);
            } catch (ClassCastException e5) {
                throw new WrongType(e5, "reduce-right", 1, obj);
            }
        }
        return super.apply3(moduleMethod, obj, obj2, obj3);
    }

    public static Object find(Object obj, Object obj2) throws Throwable {
        try {
            Object objFindTail = findTail((Procedure) obj, obj2);
            Boolean bool = Boolean.FALSE;
            return objFindTail != bool ? lists.car.apply1(objFindTail) : bool;
        } catch (ClassCastException e) {
            throw new WrongType(e, "find-tail", 0, obj);
        }
    }

    public static Object findTail(Procedure procedure, Object obj) throws Throwable {
        while (true) {
            Object objIsNullList = isNullList(obj);
            try {
                Boolean bool = Boolean.FALSE;
                int i = ((objIsNullList != bool ? 1 : 0) + 1) & 1;
                if (i == 0) {
                    return i != 0 ? Boolean.TRUE : bool;
                }
                if (procedure.apply1(lists.car.apply1(obj)) != bool) {
                    return obj;
                }
                obj = lists.cdr.apply1(obj);
            } catch (ClassCastException e) {
                throw new WrongType(e, "x", -2, objIsNullList);
            }
        }
    }

    public static Object takeWhile(Procedure procedure, Object obj) {
        frame23 frame23Var = new frame23();
        frame23Var.pred = procedure;
        return frame23Var.lambda34recur(obj);
    }

    public class frame23 extends ModuleBody {
        Procedure pred;

        public Object lambda34recur(Object obj) throws Throwable {
            Object objIsNullList = srfi1.isNullList(obj);
            Boolean bool = Boolean.FALSE;
            if (objIsNullList != bool) {
                return LList.Empty;
            }
            Object objApply1 = lists.car.apply1(obj);
            return this.pred.apply1(objApply1) != bool ? lists.cons(objApply1, lambda34recur(lists.cdr.apply1(obj))) : LList.Empty;
        }
    }

    public static Object dropWhile(Procedure procedure, Object obj) throws Throwable {
        while (true) {
            Object objIsNullList = isNullList(obj);
            Boolean bool = Boolean.FALSE;
            if (objIsNullList != bool) {
                return LList.Empty;
            }
            if (procedure.apply1(lists.car.apply1(obj)) == bool) {
                return obj;
            }
            obj = lists.cdr.apply1(obj);
        }
    }

    public static Object takeWhile$Ex(Procedure procedure, Object obj) throws Throwable {
        Object objIsNullList = isNullList(obj);
        Boolean bool = Boolean.FALSE;
        if (objIsNullList == bool ? procedure.apply1(lists.car.apply1(obj)) == bool : objIsNullList != bool) {
            return LList.Empty;
        }
        Object obj2 = obj;
        for (Object objApply1 = lists.cdr.apply1(obj); lists.isPair(objApply1); objApply1 = lists.cdr.apply1(objApply1)) {
            if (procedure.apply1(lists.car.apply1(objApply1)) == Boolean.FALSE) {
                try {
                    ((Pair) obj2).setCdr(LList.Empty);
                    return obj;
                } catch (ClassCastException e) {
                    throw new WrongType(e, "set-cdr!", 1, obj2);
                }
            }
            obj2 = objApply1;
        }
        return obj;
    }

    public static Object span(Procedure procedure, Object obj) throws Throwable {
        LList lListCons = LList.Empty;
        while (true) {
            Object objIsNullList = isNullList(obj);
            Boolean bool = Boolean.FALSE;
            if (objIsNullList != bool) {
                return misc.values(LList.reverseInPlace(lListCons), obj);
            }
            Object objApply1 = lists.car.apply1(obj);
            if (procedure.apply1(objApply1) == bool) {
                return misc.values(LList.reverseInPlace(lListCons), obj);
            }
            obj = lists.cdr.apply1(obj);
            lListCons = lists.cons(objApply1, lListCons);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x005e, code lost:
    
        return kawa.lib.misc.values(r9, r3);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object span$Ex(gnu.mapping.Procedure r8, java.lang.Object r9) throws java.lang.Throwable {
        /*
            r0 = 0
            r1 = 2
            r2 = 1
            java.lang.Object r3 = isNullList(r9)
            java.lang.Boolean r4 = java.lang.Boolean.FALSE
            if (r3 == r4) goto Le
            if (r3 == r4) goto L27
            goto L1a
        Le:
            gnu.expr.GenericProc r3 = kawa.lib.lists.car
            java.lang.Object r3 = r3.apply1(r9)
            java.lang.Object r3 = r8.apply1(r3)
            if (r3 != r4) goto L27
        L1a:
            java.lang.Object[] r8 = new java.lang.Object[r1]
            gnu.lists.LList r1 = gnu.lists.LList.Empty
            r8[r0] = r1
            r8[r2] = r9
            java.lang.Object r8 = kawa.lib.misc.values(r8)
            return r8
        L27:
            gnu.expr.GenericProc r3 = kawa.lib.lists.cdr
            java.lang.Object r3 = r3.apply1(r9)
            r4 = r9
        L2e:
            java.lang.Object r5 = isNullList(r3)
            java.lang.Boolean r6 = java.lang.Boolean.FALSE
            if (r5 == r6) goto L37
            goto L54
        L37:
            gnu.expr.GenericProc r5 = kawa.lib.lists.car
            java.lang.Object r5 = r5.apply1(r3)
            java.lang.Object r5 = r8.apply1(r5)
            if (r5 == r6) goto L4d
            gnu.expr.GenericProc r4 = kawa.lib.lists.cdr
            java.lang.Object r4 = r4.apply1(r3)
            r7 = r4
            r4 = r3
            r3 = r7
            goto L2e
        L4d:
            gnu.lists.Pair r4 = (gnu.lists.Pair) r4     // Catch: java.lang.ClassCastException -> L5f
            gnu.lists.LList r8 = gnu.lists.LList.Empty
            kawa.lib.lists.setCdr$Ex(r4, r8)
        L54:
            java.lang.Object[] r8 = new java.lang.Object[r1]
            r8[r0] = r9
            r8[r2] = r3
            java.lang.Object r8 = kawa.lib.misc.values(r8)
            return r8
        L5f:
            r8 = move-exception
            gnu.mapping.WrongType r9 = new gnu.mapping.WrongType
            java.lang.String r0 = "set-cdr!"
            r9.<init>(r8, r0, r2, r4)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.srfi1.span$Ex(gnu.mapping.Procedure, java.lang.Object):java.lang.Object");
    }

    public class frame24 extends ModuleBody {
        final ModuleMethod lambda$Fn20;
        Object pred;

        public frame24() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 20, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1343");
            this.lambda$Fn20 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 20 ? lambda35(obj) ? Boolean.TRUE : Boolean.FALSE : super.apply1(moduleMethod, obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean lambda35(Object obj) {
            return ((Scheme.applyToArgs.apply2(this.pred, obj) != Boolean.FALSE ? 1 : 0) + 1) & 1;
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 20) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    public class frame25 extends ModuleBody {
        final ModuleMethod lambda$Fn21;
        Object pred;

        public frame25() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 21, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1344");
            this.lambda$Fn21 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 21 ? lambda36(obj) ? Boolean.TRUE : Boolean.FALSE : super.apply1(moduleMethod, obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean lambda36(Object obj) {
            return ((Scheme.applyToArgs.apply2(this.pred, obj) != Boolean.FALSE ? 1 : 0) + 1) & 1;
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 21) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static Object m562break(Object obj, Object obj2) {
        frame24 frame24Var = new frame24();
        frame24Var.pred = obj;
        return span(frame24Var.lambda$Fn20, obj2);
    }

    public static Object break$Ex(Object obj, Object obj2) {
        frame25 frame25Var = new frame25();
        frame25Var.pred = obj;
        return span$Ex(frame25Var.lambda$Fn21, obj2);
    }

    @Override // gnu.expr.ModuleBody
    public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
        int i = moduleMethod.selector;
        if (i == 78) {
            return xcons(obj, obj2);
        }
        if (i == 80) {
            try {
                return listTabulate(obj, (Procedure) obj2);
            } catch (ClassCastException e) {
                throw new WrongType(e, "list-tabulate", 2, obj2);
            }
        }
        if (i == 83) {
            try {
                try {
                    return iota(LangObjType.coerceIntNum(obj), LangObjType.coerceNumeric(obj2));
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "iota", 2, obj2);
                }
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "iota", 1, obj);
            }
        }
        if (i == 145) {
            return delete$Ex(obj, obj2);
        }
        if (i == 147) {
            try {
                return deleteDuplicates(obj, (Procedure) obj2);
            } catch (ClassCastException e4) {
                throw new WrongType(e4, "delete-duplicates", 2, obj2);
            }
        }
        if (i == 149) {
            try {
                return deleteDuplicates$Ex(obj, (Procedure) obj2);
            } catch (ClassCastException e5) {
                throw new WrongType(e5, "delete-duplicates!", 2, obj2);
            }
        }
        if (i == 153) {
            return alistDelete(obj, obj2);
        }
        if (i == 155) {
            return alistDelete$Ex(obj, obj2);
        }
        if (i == 118) {
            return appendReverse(obj, obj2);
        }
        if (i == 119) {
            return appendReverse$Ex(obj, obj2);
        }
        if (i == 182) {
            return frame61.lambda84(obj, obj2);
        }
        if (i != 183) {
            switch (i) {
                case 102:
                    try {
                        return take(obj, LangObjType.coerceIntNum(obj2));
                    } catch (ClassCastException e6) {
                        throw new WrongType(e6, "take", 2, obj2);
                    }
                case 103:
                    try {
                        return drop(obj, LangObjType.coerceIntNum(obj2));
                    } catch (ClassCastException e7) {
                        throw new WrongType(e7, "drop", 2, obj2);
                    }
                case 104:
                    try {
                        return take$Ex(obj, LangObjType.coerceIntNum(obj2));
                    } catch (ClassCastException e8) {
                        throw new WrongType(e8, "take!", 2, obj2);
                    }
                case 105:
                    try {
                        return takeRight(obj, LangObjType.coerceIntNum(obj2));
                    } catch (ClassCastException e9) {
                        throw new WrongType(e9, "take-right", 2, obj2);
                    }
                case 106:
                    try {
                        return dropRight(obj, LangObjType.coerceIntNum(obj2));
                    } catch (ClassCastException e10) {
                        throw new WrongType(e10, "drop-right", 2, obj2);
                    }
                case 107:
                    try {
                        return dropRight$Ex(obj, LangObjType.coerceIntNum(obj2));
                    } catch (ClassCastException e11) {
                        throw new WrongType(e11, "drop-right!", 2, obj2);
                    }
                case 108:
                    try {
                        return splitAt(obj, LangObjType.coerceIntNum(obj2));
                    } catch (ClassCastException e12) {
                        throw new WrongType(e12, "split-at", 2, obj2);
                    }
                case 109:
                    try {
                        return splitAt$Ex(obj, LangObjType.coerceIntNum(obj2));
                    } catch (ClassCastException e13) {
                        throw new WrongType(e13, "split-at!", 2, obj2);
                    }
                default:
                    switch (i) {
                        case 137:
                            try {
                                return filter((Procedure) obj, obj2);
                            } catch (ClassCastException e14) {
                                throw new WrongType(e14, "filter", 1, obj);
                            }
                        case 138:
                            try {
                                return filter$Ex((Procedure) obj, obj2);
                            } catch (ClassCastException e15) {
                                throw new WrongType(e15, "filter!", 1, obj);
                            }
                        case 139:
                            try {
                                return partition((Procedure) obj, obj2);
                            } catch (ClassCastException e16) {
                                throw new WrongType(e16, "partition", 1, obj);
                            }
                        case 140:
                            try {
                                return partition$Ex((Procedure) obj, obj2);
                            } catch (ClassCastException e17) {
                                throw new WrongType(e17, "partition!", 1, obj);
                            }
                        case 141:
                            return remove(obj, obj2);
                        case 142:
                            return remove$Ex(obj, obj2);
                        case 143:
                            return delete(obj, obj2);
                        default:
                            switch (i) {
                                case 157:
                                    return find(obj, obj2);
                                case 158:
                                    try {
                                        return findTail((Procedure) obj, obj2);
                                    } catch (ClassCastException e18) {
                                        throw new WrongType(e18, "find-tail", 1, obj);
                                    }
                                case 159:
                                    try {
                                        return takeWhile((Procedure) obj, obj2);
                                    } catch (ClassCastException e19) {
                                        throw new WrongType(e19, "take-while", 1, obj);
                                    }
                                case ComponentConstants.TEXTBOX_PREFERRED_WIDTH /* 160 */:
                                    try {
                                        return dropWhile((Procedure) obj, obj2);
                                    } catch (ClassCastException e20) {
                                        throw new WrongType(e20, "drop-while", 1, obj);
                                    }
                                case 161:
                                    try {
                                        return takeWhile$Ex((Procedure) obj, obj2);
                                    } catch (ClassCastException e21) {
                                        throw new WrongType(e21, "take-while!", 1, obj);
                                    }
                                case 162:
                                    try {
                                        return span((Procedure) obj, obj2);
                                    } catch (ClassCastException e22) {
                                        throw new WrongType(e22, "span", 1, obj);
                                    }
                                case 163:
                                    try {
                                        return span$Ex((Procedure) obj, obj2);
                                    } catch (ClassCastException e23) {
                                        throw new WrongType(e23, "span!", 1, obj);
                                    }
                                case 164:
                                    return m562break(obj, obj2);
                                case 165:
                                    return break$Ex(obj, obj2);
                                default:
                                    return super.apply2(moduleMethod, obj, obj2);
                            }
                    }
            }
        }
        return frame71.lambda100(obj, obj2);
    }

    public static Object any$V(Procedure procedure, Object obj, Object[] objArr) throws Throwable {
        frame26 frame26Var = new frame26();
        frame26Var.pred = procedure;
        frame26Var.lis1 = obj;
        LList lListMakeList = LList.makeList(objArr, 0);
        frame26Var.lists = lListMakeList;
        if (lists.isPair(lListMakeList)) {
            return call_with_values.callWithValues(frame26Var.lambda$Fn22, frame26Var.lambda$Fn23);
        }
        Object objIsNullList = isNullList(frame26Var.lis1);
        try {
            Boolean bool = Boolean.FALSE;
            int i = ((objIsNullList != bool ? 1 : 0) + 1) & 1;
            if (i == 0) {
                return i != 0 ? Boolean.TRUE : bool;
            }
            Object objApply1 = lists.car.apply1(frame26Var.lis1);
            Object objApply12 = lists.cdr.apply1(frame26Var.lis1);
            while (true) {
                Object objIsNullList2 = isNullList(objApply12);
                Boolean bool2 = Boolean.FALSE;
                if (objIsNullList2 != bool2) {
                    return frame26Var.pred.apply1(objApply1);
                }
                Object objApply13 = frame26Var.pred.apply1(objApply1);
                if (objApply13 != bool2) {
                    return objApply13;
                }
                objApply1 = lists.car.apply1(objApply12);
                objApply12 = lists.cdr.apply1(objApply12);
            }
        } catch (ClassCastException e) {
            throw new WrongType(e, "x", -2, objIsNullList);
        }
    }

    public class frame26 extends ModuleBody {
        final ModuleMethod lambda$Fn22 = new ModuleMethod(this, 22, null, 0);
        final ModuleMethod lambda$Fn23;
        Object lis1;
        LList lists;
        Procedure pred;

        public frame26() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 23, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1350");
            this.lambda$Fn23 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 22 ? lambda37() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 22) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 23 ? lambda38(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        public Object lambda37() {
            return srfi1.$PcCars$PlCdrs(lists.cons(this.lis1, this.lists));
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 23) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda38(Object obj, Object obj2) throws Throwable {
            boolean zIsPair = lists.isPair(obj);
            if (!zIsPair) {
                return zIsPair ? Boolean.TRUE : Boolean.FALSE;
            }
            while (true) {
                Object obj$PcCars$PlCdrs$SlPair = srfi1.$PcCars$PlCdrs$SlPair(obj2);
                Object objApply1 = lists.car.apply1(obj$PcCars$PlCdrs$SlPair);
                obj2 = lists.cdr.apply1(obj$PcCars$PlCdrs$SlPair);
                if (lists.isPair(objApply1)) {
                    Object objApply2 = Scheme.apply.apply2(this.pred, obj);
                    if (objApply2 != Boolean.FALSE) {
                        return objApply2;
                    }
                    obj = objApply1;
                } else {
                    return Scheme.apply.apply2(this.pred, obj);
                }
            }
        }
    }

    public static Object every$V(Procedure procedure, Object obj, Object[] objArr) throws Throwable {
        frame27 frame27Var = new frame27();
        frame27Var.pred = procedure;
        frame27Var.lis1 = obj;
        LList lListMakeList = LList.makeList(objArr, 0);
        frame27Var.lists = lListMakeList;
        if (lists.isPair(lListMakeList)) {
            return call_with_values.callWithValues(frame27Var.lambda$Fn24, frame27Var.lambda$Fn25);
        }
        Object objIsNullList = isNullList(frame27Var.lis1);
        if (objIsNullList != Boolean.FALSE) {
            return objIsNullList;
        }
        Object objApply1 = lists.car.apply1(frame27Var.lis1);
        Object objApply12 = lists.cdr.apply1(frame27Var.lis1);
        while (true) {
            Object objIsNullList2 = isNullList(objApply12);
            Boolean bool = Boolean.FALSE;
            if (objIsNullList2 != bool) {
                return frame27Var.pred.apply1(objApply1);
            }
            Object objApply13 = frame27Var.pred.apply1(objApply1);
            if (objApply13 == bool) {
                return objApply13;
            }
            objApply1 = lists.car.apply1(objApply12);
            objApply12 = lists.cdr.apply1(objApply12);
        }
    }

    public class frame27 extends ModuleBody {
        final ModuleMethod lambda$Fn24 = new ModuleMethod(this, 26, null, 0);
        final ModuleMethod lambda$Fn25;
        Object lis1;
        LList lists;
        Procedure pred;

        public frame27() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 27, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1378");
            this.lambda$Fn25 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 26 ? lambda39() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 26) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 27 ? lambda40(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        public Object lambda39() {
            return srfi1.$PcCars$PlCdrs(lists.cons(this.lis1, this.lists));
        }

        public Object lambda40(Object obj, Object obj2) {
            frame28 frame28Var = new frame28();
            frame28Var.staticLink = this;
            int i = ((lists.isPair(obj) ? 1 : 0) + 1) & 1;
            return i != 0 ? i != 0 ? Boolean.TRUE : Boolean.FALSE : frame28Var.lambda41lp(obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 27) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
    }

    public class frame28 extends ModuleBody {
        frame27 staticLink;

        public Object lambda41lp(Object obj, Object obj2) {
            frame29 frame29Var = new frame29();
            frame29Var.staticLink = this;
            frame29Var.heads = obj;
            frame29Var.tails = obj2;
            return call_with_values.callWithValues(frame29Var.lambda$Fn26, frame29Var.lambda$Fn27);
        }
    }

    public class frame29 extends ModuleBody {
        Object heads;
        final ModuleMethod lambda$Fn26 = new ModuleMethod(this, 24, null, 0);
        final ModuleMethod lambda$Fn27;
        frame28 staticLink;
        Object tails;

        public frame29() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 25, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1381");
            this.lambda$Fn27 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 24 ? lambda42() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 24) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 25 ? lambda43(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        public Object lambda42() {
            return srfi1.$PcCars$PlCdrs(this.tails);
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 25) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda43(Object obj, Object obj2) throws Throwable {
            if (lists.isPair(obj)) {
                Object objApply2 = Scheme.apply.apply2(this.staticLink.staticLink.pred, this.heads);
                return objApply2 != Boolean.FALSE ? this.staticLink.lambda41lp(obj, obj2) : objApply2;
            }
            return Scheme.apply.apply2(this.staticLink.staticLink.pred, this.heads);
        }
    }

    public static Object listIndex$V(Procedure procedure, Object obj, Object[] objArr) throws Throwable {
        frame30 frame30Var = new frame30();
        frame30Var.pred = procedure;
        LList lListMakeList = LList.makeList(objArr, 0);
        if (lists.isPair(lListMakeList)) {
            return frame30Var.lambda44lp(lists.cons(obj, lListMakeList), Lit0);
        }
        Object objApply2 = Lit0;
        while (true) {
            Object objIsNullList = isNullList(obj);
            try {
                Boolean bool = Boolean.FALSE;
                int i = ((objIsNullList != bool ? 1 : 0) + 1) & 1;
                if (i == 0) {
                    return i != 0 ? Boolean.TRUE : bool;
                }
                if (frame30Var.pred.apply1(lists.car.apply1(obj)) != bool) {
                    return objApply2;
                }
                obj = lists.cdr.apply1(obj);
                objApply2 = AddOp.$Pl.apply2(objApply2, Lit1);
            } catch (ClassCastException e) {
                throw new WrongType(e, "x", -2, objIsNullList);
            }
        }
    }

    public class frame30 extends ModuleBody {
        Procedure pred;

        public Object lambda44lp(Object obj, Object obj2) {
            frame31 frame31Var = new frame31();
            frame31Var.staticLink = this;
            frame31Var.lists = obj;
            frame31Var.n = obj2;
            return call_with_values.callWithValues(frame31Var.lambda$Fn28, frame31Var.lambda$Fn29);
        }
    }

    public class frame31 extends ModuleBody {
        final ModuleMethod lambda$Fn28 = new ModuleMethod(this, 28, null, 0);
        final ModuleMethod lambda$Fn29;
        Object lists;
        Object n;
        frame30 staticLink;

        public frame31() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 29, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1404");
            this.lambda$Fn29 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 28 ? lambda45() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 28) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 29 ? lambda46(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        public Object lambda45() {
            return srfi1.$PcCars$PlCdrs(this.lists);
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 29) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda46(Object obj, Object obj2) {
            boolean zIsPair = lists.isPair(obj);
            return zIsPair ? Scheme.apply.apply2(this.staticLink.pred, obj) != Boolean.FALSE ? this.n : this.staticLink.lambda44lp(obj2, AddOp.$Pl.apply2(this.n, srfi1.Lit1)) : zIsPair ? Boolean.TRUE : Boolean.FALSE;
        }
    }

    public class frame72 extends ModuleBody {
        Object $Eq;
        final ModuleMethod lambda$Fn79;
        Object lis2;

        public frame72() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 77, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1443");
            this.lambda$Fn79 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 77 ? lambda101(obj) : super.apply1(moduleMethod, obj);
        }

        public Object lambda101(Object obj) {
            Object obj2 = this.lis2;
            Object obj3 = this.$Eq;
            try {
                return lists.member(obj, obj2, (Procedure) obj3);
            } catch (ClassCastException e) {
                throw new WrongType(e, "member", 3, obj3);
            }
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 77) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    public static Object $PcLset2$Ls$Eq(Object obj, Object obj2, Object obj3) {
        frame72 frame72Var = new frame72();
        frame72Var.$Eq = obj;
        frame72Var.lis2 = obj3;
        return every$V(frame72Var.lambda$Fn79, obj2, new Object[0]);
    }

    public static Object lset$Ls$Eq$V(Procedure procedure, Object[] objArr) throws Throwable {
        Object obj$PcLset2$Ls$Eq;
        LList lListMakeList = LList.makeList(objArr, 0);
        int i = ((lists.isPair(lListMakeList) ? 1 : 0) + 1) & 1;
        if (i != 0) {
            return i != 0 ? Boolean.TRUE : Boolean.FALSE;
        }
        Object objApply1 = lists.car.apply1(lListMakeList);
        Object objApply12 = lists.cdr.apply1(lListMakeList);
        while (true) {
            int i2 = ((lists.isPair(objApply12) ? 1 : 0) + 1) & 1;
            if (i2 != 0) {
                return i2 != 0 ? Boolean.TRUE : Boolean.FALSE;
            }
            Object objApply13 = lists.car.apply1(objApply12);
            objApply12 = lists.cdr.apply1(objApply12);
            boolean z = objApply13 == objApply1;
            if (z) {
                obj$PcLset2$Ls$Eq = z ? Boolean.TRUE : Boolean.FALSE;
            } else {
                obj$PcLset2$Ls$Eq = $PcLset2$Ls$Eq(procedure, objApply1, objApply13);
            }
            if (obj$PcLset2$Ls$Eq == Boolean.FALSE) {
                return obj$PcLset2$Ls$Eq;
            }
            objApply1 = objApply13;
        }
    }

    public static Object lset$Eq$V(Procedure procedure, Object[] objArr) throws Throwable {
        Object obj$PcLset2$Ls$Eq;
        LList lListMakeList = LList.makeList(objArr, 0);
        int i = ((lists.isPair(lListMakeList) ? 1 : 0) + 1) & 1;
        if (i != 0) {
            return i != 0 ? Boolean.TRUE : Boolean.FALSE;
        }
        Object objApply1 = lists.car.apply1(lListMakeList);
        Object objApply12 = lists.cdr.apply1(lListMakeList);
        while (true) {
            int i2 = ((lists.isPair(objApply12) ? 1 : 0) + 1) & 1;
            if (i2 != 0) {
                return i2 != 0 ? Boolean.TRUE : Boolean.FALSE;
            }
            Object objApply13 = lists.car.apply1(objApply12);
            objApply12 = lists.cdr.apply1(objApply12);
            boolean z = objApply1 == objApply13;
            if (z) {
                obj$PcLset2$Ls$Eq = z ? Boolean.TRUE : Boolean.FALSE;
            } else {
                Object obj$PcLset2$Ls$Eq2 = $PcLset2$Ls$Eq(procedure, objApply1, objApply13);
                obj$PcLset2$Ls$Eq = obj$PcLset2$Ls$Eq2 != Boolean.FALSE ? $PcLset2$Ls$Eq(procedure, objApply13, objApply1) : obj$PcLset2$Ls$Eq2;
            }
            if (obj$PcLset2$Ls$Eq == Boolean.FALSE) {
                return obj$PcLset2$Ls$Eq;
            }
            objApply1 = objApply13;
        }
    }

    public class frame32 extends ModuleBody {
        Procedure $Eq;
        final ModuleMethod lambda$Fn30;

        public frame32() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 30, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1466");
            this.lambda$Fn30 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 30 ? lambda47(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        public Object lambda47(Object obj, Object obj2) {
            return lists.member(obj, obj2, this.$Eq) != Boolean.FALSE ? obj2 : lists.cons(obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 30) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
    }

    public static Object lsetAdjoin$V(Procedure procedure, Object obj, Object[] objArr) {
        frame32 frame32Var = new frame32();
        frame32Var.$Eq = procedure;
        return fold$V(frame32Var.lambda$Fn30, obj, LList.makeList(objArr, 0), new Object[0]);
    }

    public class frame33 extends ModuleBody {
        Procedure $Eq;
        final ModuleMethod lambda$Fn31;
        final ModuleMethod lambda$Fn32;

        public frame33() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 32, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1476");
            this.lambda$Fn32 = moduleMethod;
            ModuleMethod moduleMethod2 = new ModuleMethod(this, 33, null, 8194);
            moduleMethod2.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1471");
            this.lambda$Fn31 = moduleMethod2;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            int i = moduleMethod.selector;
            if (i != 32) {
                return i != 33 ? super.apply2(moduleMethod, obj, obj2) : lambda48(obj, obj2);
            }
            return lambda49(obj, obj2);
        }

        public Object lambda48(Object obj, Object obj2) {
            if (!lists.isNull(obj)) {
                if (lists.isNull(obj2)) {
                    return obj;
                }
                if (obj != obj2) {
                    return srfi1.fold$V(this.lambda$Fn32, obj2, obj, new Object[0]);
                }
            }
            return obj2;
        }

        public Object lambda49(Object obj, Object obj2) {
            frame34 frame34Var = new frame34();
            frame34Var.staticLink = this;
            frame34Var.elt = obj;
            return srfi1.any$V(frame34Var.lambda$Fn33, obj2, new Object[0]) != Boolean.FALSE ? obj2 : lists.cons(frame34Var.elt, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            int i = moduleMethod.selector;
            if (i == 32) {
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            }
            if (i == 33) {
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            }
            return super.match2(moduleMethod, obj, obj2, callContext);
        }
    }

    public static Object lsetUnion$V(Procedure procedure, Object[] objArr) {
        frame33 frame33Var = new frame33();
        frame33Var.$Eq = procedure;
        return reduce(frame33Var.lambda$Fn31, LList.Empty, LList.makeList(objArr, 0));
    }

    public class frame34 extends ModuleBody {
        Object elt;
        final ModuleMethod lambda$Fn33;
        frame33 staticLink;

        public frame34() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 31, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1476");
            this.lambda$Fn33 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 31 ? lambda50(obj) : super.apply1(moduleMethod, obj);
        }

        public Object lambda50(Object obj) {
            return this.staticLink.$Eq.apply2(obj, this.elt);
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 31) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    public class frame35 extends ModuleBody {
        Procedure $Eq;
        final ModuleMethod lambda$Fn34;
        final ModuleMethod lambda$Fn35;

        public frame35() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 35, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1488");
            this.lambda$Fn35 = moduleMethod;
            ModuleMethod moduleMethod2 = new ModuleMethod(this, 36, null, 8194);
            moduleMethod2.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1483");
            this.lambda$Fn34 = moduleMethod2;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            int i = moduleMethod.selector;
            if (i != 35) {
                return i != 36 ? super.apply2(moduleMethod, obj, obj2) : lambda51(obj, obj2);
            }
            return lambda52(obj, obj2);
        }

        public Object lambda51(Object obj, Object obj2) {
            if (!lists.isNull(obj)) {
                if (lists.isNull(obj2)) {
                    return obj;
                }
                if (obj != obj2) {
                    return srfi1.pairFold$V(this.lambda$Fn35, obj2, obj, new Object[0]);
                }
            }
            return obj2;
        }

        public Object lambda52(Object obj, Object obj2) {
            frame36 frame36Var = new frame36();
            frame36Var.staticLink = this;
            frame36Var.elt = lists.car.apply1(obj);
            if (srfi1.any$V(frame36Var.lambda$Fn36, obj2, new Object[0]) != Boolean.FALSE) {
                return obj2;
            }
            try {
                ((Pair) obj).setCdr(obj2);
                return obj;
            } catch (ClassCastException e) {
                throw new WrongType(e, "set-cdr!", 1, obj);
            }
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            int i = moduleMethod.selector;
            if (i == 35) {
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            }
            if (i == 36) {
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            }
            return super.match2(moduleMethod, obj, obj2, callContext);
        }
    }

    public static Object lsetUnion$Ex$V(Procedure procedure, Object[] objArr) {
        frame35 frame35Var = new frame35();
        frame35Var.$Eq = procedure;
        return reduce(frame35Var.lambda$Fn34, LList.Empty, LList.makeList(objArr, 0));
    }

    public class frame36 extends ModuleBody {
        Object elt;
        final ModuleMethod lambda$Fn36;
        frame35 staticLink;

        public frame36() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 34, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1490");
            this.lambda$Fn36 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 34 ? lambda53(obj) : super.apply1(moduleMethod, obj);
        }

        public Object lambda53(Object obj) {
            return this.staticLink.$Eq.apply2(obj, this.elt);
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 34) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    public static Object lsetIntersection$V(Procedure procedure, Object obj, Object[] objArr) {
        frame37 frame37Var = new frame37();
        frame37Var.$Eq = procedure;
        Object objDelete = delete(obj, LList.makeList(objArr, 0), Scheme.isEq);
        frame37Var.lists = objDelete;
        return any$V(null$Mnlist$Qu, objDelete, new Object[0]) != Boolean.FALSE ? LList.Empty : lists.isNull(frame37Var.lists) ? obj : filter(frame37Var.lambda$Fn37, obj);
    }

    public class frame37 extends ModuleBody {
        Procedure $Eq;
        final ModuleMethod lambda$Fn37;
        Object lists;

        public frame37() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 38, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1501");
            this.lambda$Fn37 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 38 ? lambda54(obj) : super.apply1(moduleMethod, obj);
        }

        public Object lambda54(Object obj) {
            frame38 frame38Var = new frame38();
            frame38Var.staticLink = this;
            frame38Var.x = obj;
            return srfi1.every$V(frame38Var.lambda$Fn38, this.lists, new Object[0]);
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 38) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    public class frame38 extends ModuleBody {
        final ModuleMethod lambda$Fn38;
        frame37 staticLink;
        Object x;

        public frame38() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 37, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1502");
            this.lambda$Fn38 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 37 ? lambda55(obj) : super.apply1(moduleMethod, obj);
        }

        public Object lambda55(Object obj) {
            return lists.member(this.x, obj, this.staticLink.$Eq);
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 37) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    public static Object lsetIntersection$Ex$V(Procedure procedure, Object obj, Object[] objArr) {
        frame39 frame39Var = new frame39();
        frame39Var.$Eq = procedure;
        Object objDelete = delete(obj, LList.makeList(objArr, 0), Scheme.isEq);
        frame39Var.lists = objDelete;
        return any$V(null$Mnlist$Qu, objDelete, new Object[0]) != Boolean.FALSE ? LList.Empty : lists.isNull(frame39Var.lists) ? obj : filter$Ex(frame39Var.lambda$Fn39, obj);
    }

    public class frame39 extends ModuleBody {
        Procedure $Eq;
        final ModuleMethod lambda$Fn39;
        Object lists;

        public frame39() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 40, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1509");
            this.lambda$Fn39 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 40 ? lambda56(obj) : super.apply1(moduleMethod, obj);
        }

        public Object lambda56(Object obj) {
            frame40 frame40Var = new frame40();
            frame40Var.staticLink = this;
            frame40Var.x = obj;
            return srfi1.every$V(frame40Var.lambda$Fn40, this.lists, new Object[0]);
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 40) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    public class frame40 extends ModuleBody {
        final ModuleMethod lambda$Fn40;
        frame39 staticLink;
        Object x;

        public frame40() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 39, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1510");
            this.lambda$Fn40 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 39 ? lambda57(obj) : super.apply1(moduleMethod, obj);
        }

        public Object lambda57(Object obj) {
            return lists.member(this.x, obj, this.staticLink.$Eq);
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 39) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    public static Object lsetDifference$V(Procedure procedure, Object obj, Object[] objArr) throws Throwable {
        frame41 frame41Var = new frame41();
        frame41Var.$Eq = procedure;
        Object objFilter = filter(lists.pair$Qu, LList.makeList(objArr, 0));
        frame41Var.lists = objFilter;
        return lists.isNull(objFilter) ? obj : lists.memq(obj, frame41Var.lists) != Boolean.FALSE ? LList.Empty : filter(frame41Var.lambda$Fn41, obj);
    }

    public class frame41 extends ModuleBody {
        Procedure $Eq;
        final ModuleMethod lambda$Fn41;
        Object lists;

        public frame41() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 42, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1518");
            this.lambda$Fn41 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 42 ? lambda58(obj) : super.apply1(moduleMethod, obj);
        }

        public Object lambda58(Object obj) {
            frame42 frame42Var = new frame42();
            frame42Var.staticLink = this;
            frame42Var.x = obj;
            return srfi1.every$V(frame42Var.lambda$Fn42, this.lists, new Object[0]);
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 42) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    public class frame42 extends ModuleBody {
        final ModuleMethod lambda$Fn42;
        frame41 staticLink;
        Object x;

        public frame42() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 41, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1519");
            this.lambda$Fn42 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 41 ? lambda59(obj) ? Boolean.TRUE : Boolean.FALSE : super.apply1(moduleMethod, obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean lambda59(Object obj) {
            return ((lists.member(this.x, obj, this.staticLink.$Eq) != Boolean.FALSE ? 1 : 0) + 1) & 1;
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 41) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    public static Object lsetDifference$Ex$V(Procedure procedure, Object obj, Object[] objArr) throws Throwable {
        frame43 frame43Var = new frame43();
        frame43Var.$Eq = procedure;
        Object objFilter = filter(lists.pair$Qu, LList.makeList(objArr, 0));
        frame43Var.lists = objFilter;
        return lists.isNull(objFilter) ? obj : lists.memq(obj, frame43Var.lists) != Boolean.FALSE ? LList.Empty : filter$Ex(frame43Var.lambda$Fn43, obj);
    }

    public class frame43 extends ModuleBody {
        Procedure $Eq;
        final ModuleMethod lambda$Fn43;
        Object lists;

        public frame43() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 44, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1527");
            this.lambda$Fn43 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 44 ? lambda60(obj) : super.apply1(moduleMethod, obj);
        }

        public Object lambda60(Object obj) {
            frame44 frame44Var = new frame44();
            frame44Var.staticLink = this;
            frame44Var.x = obj;
            return srfi1.every$V(frame44Var.lambda$Fn44, this.lists, new Object[0]);
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 44) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    public class frame44 extends ModuleBody {
        final ModuleMethod lambda$Fn44;
        frame43 staticLink;
        Object x;

        public frame44() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 43, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1528");
            this.lambda$Fn44 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 43 ? lambda61(obj) ? Boolean.TRUE : Boolean.FALSE : super.apply1(moduleMethod, obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean lambda61(Object obj) {
            return ((lists.member(this.x, obj, this.staticLink.$Eq) != Boolean.FALSE ? 1 : 0) + 1) & 1;
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 43) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    public class frame45 extends ModuleBody {
        Procedure $Eq;
        final ModuleMethod lambda$Fn45;

        public frame45() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 48, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1534");
            this.lambda$Fn45 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 48 ? lambda62(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        public Object lambda62(Object obj, Object obj2) {
            frame46 frame46Var = new frame46();
            frame46Var.staticLink = this;
            frame46Var.f5470b = obj;
            frame46Var.f5469a = obj2;
            return call_with_values.callWithValues(frame46Var.lambda$Fn46, frame46Var.lambda$Fn47);
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 48) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
    }

    public static Object lsetXor$V(Procedure procedure, Object[] objArr) {
        frame45 frame45Var = new frame45();
        frame45Var.$Eq = procedure;
        return reduce(frame45Var.lambda$Fn45, LList.Empty, LList.makeList(objArr, 0));
    }

    public class frame46 extends ModuleBody {

        /* renamed from: a, reason: collision with root package name */
        Object f5469a;

        /* renamed from: b, reason: collision with root package name */
        Object f5470b;
        final ModuleMethod lambda$Fn46 = new ModuleMethod(this, 46, null, 0);
        final ModuleMethod lambda$Fn47;
        frame45 staticLink;

        public frame46() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 47, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1544");
            this.lambda$Fn47 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 46 ? lambda63() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 46) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 47 ? lambda64(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        public Object lambda63() {
            return srfi1.lsetDiff$PlIntersection$V(this.staticLink.$Eq, this.f5469a, new Object[]{this.f5470b});
        }

        public Object lambda64(Object obj, Object obj2) {
            frame47 frame47Var = new frame47();
            frame47Var.staticLink = this;
            frame47Var.a$Mnint$Mnb = obj2;
            return lists.isNull(obj) ? srfi1.lsetDifference$V(this.staticLink.$Eq, this.f5470b, new Object[]{this.f5469a}) : lists.isNull(frame47Var.a$Mnint$Mnb) ? append.append$V(new Object[]{this.f5470b, this.f5469a}) : srfi1.fold$V(frame47Var.lambda$Fn48, obj, this.f5470b, new Object[0]);
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 47) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
    }

    public class frame47 extends ModuleBody {
        Object a$Mnint$Mnb;
        final ModuleMethod lambda$Fn48;
        frame46 staticLink;

        public frame47() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 45, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1547");
            this.lambda$Fn48 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 45 ? lambda65(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 45) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda65(Object obj, Object obj2) {
            return lists.member(obj, this.a$Mnint$Mnb, this.staticLink.staticLink.$Eq) != Boolean.FALSE ? obj2 : lists.cons(obj, obj2);
        }
    }

    public class frame48 extends ModuleBody {
        Procedure $Eq;
        final ModuleMethod lambda$Fn49;

        public frame48() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 52, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1555");
            this.lambda$Fn49 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 52 ? lambda66(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        public Object lambda66(Object obj, Object obj2) {
            frame49 frame49Var = new frame49();
            frame49Var.staticLink = this;
            frame49Var.f5472b = obj;
            frame49Var.f5471a = obj2;
            return call_with_values.callWithValues(frame49Var.lambda$Fn50, frame49Var.lambda$Fn51);
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 52) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
    }

    public static Object lsetXor$Ex$V(Procedure procedure, Object[] objArr) {
        frame48 frame48Var = new frame48();
        frame48Var.$Eq = procedure;
        return reduce(frame48Var.lambda$Fn49, LList.Empty, LList.makeList(objArr, 0));
    }

    public class frame49 extends ModuleBody {

        /* renamed from: a, reason: collision with root package name */
        Object f5471a;

        /* renamed from: b, reason: collision with root package name */
        Object f5472b;
        final ModuleMethod lambda$Fn50 = new ModuleMethod(this, 50, null, 0);
        final ModuleMethod lambda$Fn51;
        frame48 staticLink;

        public frame49() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 51, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1565");
            this.lambda$Fn51 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 50 ? lambda67() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 50) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 51 ? lambda68(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        public Object lambda67() {
            return srfi1.lsetDiff$PlIntersection$Ex$V(this.staticLink.$Eq, this.f5471a, new Object[]{this.f5472b});
        }

        public Object lambda68(Object obj, Object obj2) {
            frame50 frame50Var = new frame50();
            frame50Var.staticLink = this;
            frame50Var.a$Mnint$Mnb = obj2;
            return lists.isNull(obj) ? srfi1.lsetDifference$Ex$V(this.staticLink.$Eq, this.f5472b, new Object[]{this.f5471a}) : lists.isNull(frame50Var.a$Mnint$Mnb) ? srfi1.append$Ex$V(new Object[]{this.f5472b, this.f5471a}) : srfi1.pairFold$V(frame50Var.lambda$Fn52, obj, this.f5472b, new Object[0]);
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 51) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
    }

    public class frame50 extends ModuleBody {
        Object a$Mnint$Mnb;
        final ModuleMethod lambda$Fn52;
        frame49 staticLink;

        public frame50() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 49, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1568");
            this.lambda$Fn52 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 49 ? lambda69(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 49) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda69(Object obj, Object obj2) {
            if (lists.member(lists.car.apply1(obj), this.a$Mnint$Mnb, this.staticLink.staticLink.$Eq) != Boolean.FALSE) {
                return obj2;
            }
            try {
                ((Pair) obj).setCdr(obj2);
                return obj;
            } catch (ClassCastException e) {
                throw new WrongType(e, "set-cdr!", 1, obj);
            }
        }
    }

    public static Object lsetDiff$PlIntersection$V(Procedure procedure, Object obj, Object[] objArr) throws Throwable {
        frame51 frame51Var = new frame51();
        frame51Var.$Eq = procedure;
        LList lListMakeList = LList.makeList(objArr, 0);
        frame51Var.lists = lListMakeList;
        Object objEvery$V = every$V(null$Mnlist$Qu, lListMakeList, new Object[0]);
        Boolean bool = Boolean.FALSE;
        return objEvery$V != bool ? misc.values(obj, LList.Empty) : lists.memq(obj, frame51Var.lists) != bool ? misc.values(LList.Empty, obj) : partition(frame51Var.lambda$Fn53, obj);
    }

    public class frame51 extends ModuleBody {
        Procedure $Eq;
        final ModuleMethod lambda$Fn53;
        LList lists;

        public frame51() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 54, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1579");
            this.lambda$Fn53 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 54 ? lambda70(obj) ? Boolean.TRUE : Boolean.FALSE : super.apply1(moduleMethod, obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean lambda70(Object obj) {
            frame52 frame52Var = new frame52();
            frame52Var.staticLink = this;
            frame52Var.elt = obj;
            return ((srfi1.any$V(frame52Var.lambda$Fn54, this.lists, new Object[0]) != Boolean.FALSE ? 1 : 0) + 1) & 1;
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 54) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    public class frame52 extends ModuleBody {
        Object elt;
        final ModuleMethod lambda$Fn54;
        frame51 staticLink;

        public frame52() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 53, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1580");
            this.lambda$Fn54 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 53 ? lambda71(obj) : super.apply1(moduleMethod, obj);
        }

        public Object lambda71(Object obj) {
            return lists.member(this.elt, obj, this.staticLink.$Eq);
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 53) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    public static Object lsetDiff$PlIntersection$Ex$V(Procedure procedure, Object obj, Object[] objArr) throws Throwable {
        frame53 frame53Var = new frame53();
        frame53Var.$Eq = procedure;
        LList lListMakeList = LList.makeList(objArr, 0);
        frame53Var.lists = lListMakeList;
        Object objEvery$V = every$V(null$Mnlist$Qu, lListMakeList, new Object[0]);
        Boolean bool = Boolean.FALSE;
        return objEvery$V != bool ? misc.values(obj, LList.Empty) : lists.memq(obj, frame53Var.lists) != bool ? misc.values(LList.Empty, obj) : partition$Ex(frame53Var.lambda$Fn55, obj);
    }

    @Override // gnu.expr.ModuleBody
    public Object applyN(ModuleMethod moduleMethod, Object[] objArr) {
        int i = moduleMethod.selector;
        if (i == 79) {
            Object obj = objArr[0];
            int length = objArr.length - 1;
            Object[] objArr2 = new Object[length];
            while (true) {
                int i2 = length - 1;
                if (i2 < 0) {
                    return makeList$V(obj, objArr2);
                }
                objArr2[i2] = objArr[length];
                length = i2;
            }
        } else {
            if (i == 81) {
                return LList.consX(objArr);
            }
            if (i == 86) {
                Object obj2 = objArr[0];
                int length2 = objArr.length - 1;
                Object[] objArr3 = new Object[length2];
                while (true) {
                    int i3 = length2 - 1;
                    if (i3 < 0) {
                        return circularList$V(obj2, objArr3);
                    }
                    objArr3[i3] = objArr[length2];
                    length2 = i3;
                }
            } else if (i == 92) {
                Object obj3 = objArr[0];
                int length3 = objArr.length - 1;
                Object[] objArr4 = new Object[length3];
                while (true) {
                    int i4 = length3 - 1;
                    if (i4 < 0) {
                        return list$Eq$V(obj3, objArr4);
                    }
                    objArr4[i4] = objArr[length3];
                    length3 = i4;
                }
            } else if (i == 94) {
                Object obj4 = objArr[0];
                int length4 = objArr.length - 1;
                Object[] objArr5 = new Object[length4];
                while (true) {
                    int i5 = length4 - 1;
                    if (i5 < 0) {
                        return zip$V(obj4, objArr5);
                    }
                    objArr5[i5] = objArr[length4];
                    length4 = i5;
                }
            } else {
                if (i == 117) {
                    return append$Ex$V(objArr);
                }
                if (i == 122) {
                    Object obj5 = objArr[0];
                    try {
                        Procedure procedure = (Procedure) obj5;
                        Object obj6 = objArr[1];
                        int length5 = objArr.length - 2;
                        Object[] objArr6 = new Object[length5];
                        while (true) {
                            int i6 = length5 - 1;
                            if (i6 < 0) {
                                return count$V(procedure, obj6, objArr6);
                            }
                            objArr6[i6] = objArr[length5 + 1];
                            length5 = i6;
                        }
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "count", 1, obj5);
                    }
                } else {
                    if (i == 123) {
                        int length6 = objArr.length - 4;
                        Object obj7 = objArr[0];
                        try {
                            Procedure procedure2 = (Procedure) obj7;
                            Object obj8 = objArr[1];
                            try {
                                Procedure procedure3 = (Procedure) obj8;
                                Object obj9 = objArr[2];
                                try {
                                    Procedure procedure4 = (Procedure) obj9;
                                    Object obj10 = objArr[3];
                                    return length6 <= 0 ? unfoldRight(procedure2, procedure3, procedure4, obj10) : unfoldRight(procedure2, procedure3, procedure4, obj10, objArr[4]);
                                } catch (ClassCastException e2) {
                                    throw new WrongType(e2, "unfold-right", 3, obj9);
                                }
                            } catch (ClassCastException e3) {
                                throw new WrongType(e3, "unfold-right", 2, obj8);
                            }
                        } catch (ClassCastException e4) {
                            throw new WrongType(e4, "unfold-right", 1, obj7);
                        }
                    }
                    switch (i) {
                        case 125:
                            Object obj11 = objArr[0];
                            try {
                                Procedure procedure5 = (Procedure) obj11;
                                Object obj12 = objArr[1];
                                try {
                                    Procedure procedure6 = (Procedure) obj12;
                                    Object obj13 = objArr[2];
                                    try {
                                        Procedure procedure7 = (Procedure) obj13;
                                        Object obj14 = objArr[3];
                                        int length7 = objArr.length - 4;
                                        Object[] objArr7 = new Object[length7];
                                        while (true) {
                                            int i7 = length7 - 1;
                                            if (i7 < 0) {
                                                return unfold$V(procedure5, procedure6, procedure7, obj14, objArr7);
                                            }
                                            objArr7[i7] = objArr[length7 + 3];
                                            length7 = i7;
                                        }
                                    } catch (ClassCastException e5) {
                                        throw new WrongType(e5, "unfold", 3, obj13);
                                    }
                                } catch (ClassCastException e6) {
                                    throw new WrongType(e6, "unfold", 2, obj12);
                                }
                            } catch (ClassCastException e7) {
                                throw new WrongType(e7, "unfold", 1, obj11);
                            }
                        case 126:
                            Object obj15 = objArr[0];
                            try {
                                Procedure procedure8 = (Procedure) obj15;
                                Object obj16 = objArr[1];
                                Object obj17 = objArr[2];
                                int length8 = objArr.length - 3;
                                Object[] objArr8 = new Object[length8];
                                while (true) {
                                    int i8 = length8 - 1;
                                    if (i8 < 0) {
                                        return fold$V(procedure8, obj16, obj17, objArr8);
                                    }
                                    objArr8[i8] = objArr[length8 + 2];
                                    length8 = i8;
                                }
                            } catch (ClassCastException e8) {
                                throw new WrongType(e8, "fold", 1, obj15);
                            }
                        case WorkQueueKt.MASK /* 127 */:
                            Object obj18 = objArr[0];
                            try {
                                Procedure procedure9 = (Procedure) obj18;
                                Object obj19 = objArr[1];
                                Object obj20 = objArr[2];
                                int length9 = objArr.length - 3;
                                Object[] objArr9 = new Object[length9];
                                while (true) {
                                    int i9 = length9 - 1;
                                    if (i9 < 0) {
                                        return foldRight$V(procedure9, obj19, obj20, objArr9);
                                    }
                                    objArr9[i9] = objArr[length9 + 2];
                                    length9 = i9;
                                }
                            } catch (ClassCastException e9) {
                                throw new WrongType(e9, "fold-right", 1, obj18);
                            }
                        case 128:
                            Object obj21 = objArr[0];
                            try {
                                Procedure procedure10 = (Procedure) obj21;
                                Object obj22 = objArr[1];
                                Object obj23 = objArr[2];
                                int length10 = objArr.length - 3;
                                Object[] objArr10 = new Object[length10];
                                while (true) {
                                    int i10 = length10 - 1;
                                    if (i10 < 0) {
                                        return pairFoldRight$V(procedure10, obj22, obj23, objArr10);
                                    }
                                    objArr10[i10] = objArr[length10 + 2];
                                    length10 = i10;
                                }
                            } catch (ClassCastException e10) {
                                throw new WrongType(e10, "pair-fold-right", 1, obj21);
                            }
                        case 129:
                            Object obj24 = objArr[0];
                            try {
                                Procedure procedure11 = (Procedure) obj24;
                                Object obj25 = objArr[1];
                                Object obj26 = objArr[2];
                                int length11 = objArr.length - 3;
                                Object[] objArr11 = new Object[length11];
                                while (true) {
                                    int i11 = length11 - 1;
                                    if (i11 < 0) {
                                        return pairFold$V(procedure11, obj25, obj26, objArr11);
                                    }
                                    objArr11[i11] = objArr[length11 + 2];
                                    length11 = i11;
                                }
                            } catch (ClassCastException e11) {
                                throw new WrongType(e11, "pair-fold", 1, obj24);
                            }
                        default:
                            switch (i) {
                                case 132:
                                    Object obj27 = objArr[0];
                                    Object obj28 = objArr[1];
                                    int length12 = objArr.length - 2;
                                    Object[] objArr12 = new Object[length12];
                                    while (true) {
                                        int i12 = length12 - 1;
                                        if (i12 < 0) {
                                            return appendMap$V(obj27, obj28, objArr12);
                                        }
                                        objArr12[i12] = objArr[length12 + 1];
                                        length12 = i12;
                                    }
                                case 133:
                                    Object obj29 = objArr[0];
                                    Object obj30 = objArr[1];
                                    int length13 = objArr.length - 2;
                                    Object[] objArr13 = new Object[length13];
                                    while (true) {
                                        int i13 = length13 - 1;
                                        if (i13 < 0) {
                                            return appendMap$Ex$V(obj29, obj30, objArr13);
                                        }
                                        objArr13[i13] = objArr[length13 + 1];
                                        length13 = i13;
                                    }
                                case 134:
                                    Object obj31 = objArr[0];
                                    try {
                                        Procedure procedure12 = (Procedure) obj31;
                                        Object obj32 = objArr[1];
                                        int length14 = objArr.length - 2;
                                        Object[] objArr14 = new Object[length14];
                                        while (true) {
                                            int i14 = length14 - 1;
                                            if (i14 < 0) {
                                                return pairForEach$V(procedure12, obj32, objArr14);
                                            }
                                            objArr14[i14] = objArr[length14 + 1];
                                            length14 = i14;
                                        }
                                    } catch (ClassCastException e12) {
                                        throw new WrongType(e12, "pair-for-each", 1, obj31);
                                    }
                                case 135:
                                    Object obj33 = objArr[0];
                                    try {
                                        Procedure procedure13 = (Procedure) obj33;
                                        Object obj34 = objArr[1];
                                        int length15 = objArr.length - 2;
                                        Object[] objArr15 = new Object[length15];
                                        while (true) {
                                            int i15 = length15 - 1;
                                            if (i15 < 0) {
                                                return map$Ex$V(procedure13, obj34, objArr15);
                                            }
                                            objArr15[i15] = objArr[length15 + 1];
                                            length15 = i15;
                                        }
                                    } catch (ClassCastException e13) {
                                        throw new WrongType(e13, "map!", 1, obj33);
                                    }
                                case 136:
                                    Object obj35 = objArr[0];
                                    try {
                                        Procedure procedure14 = (Procedure) obj35;
                                        Object obj36 = objArr[1];
                                        int length16 = objArr.length - 2;
                                        Object[] objArr16 = new Object[length16];
                                        while (true) {
                                            int i16 = length16 - 1;
                                            if (i16 < 0) {
                                                return filterMap$V(procedure14, obj36, objArr16);
                                            }
                                            objArr16[i16] = objArr[length16 + 1];
                                            length16 = i16;
                                        }
                                    } catch (ClassCastException e14) {
                                        throw new WrongType(e14, "filter-map", 1, obj35);
                                    }
                                default:
                                    switch (i) {
                                        case 166:
                                            Object obj37 = objArr[0];
                                            try {
                                                Procedure procedure15 = (Procedure) obj37;
                                                Object obj38 = objArr[1];
                                                int length17 = objArr.length - 2;
                                                Object[] objArr17 = new Object[length17];
                                                while (true) {
                                                    int i17 = length17 - 1;
                                                    if (i17 < 0) {
                                                        return any$V(procedure15, obj38, objArr17);
                                                    }
                                                    objArr17[i17] = objArr[length17 + 1];
                                                    length17 = i17;
                                                }
                                            } catch (ClassCastException e15) {
                                                throw new WrongType(e15, "any", 1, obj37);
                                            }
                                        case 167:
                                            Object obj39 = objArr[0];
                                            try {
                                                Procedure procedure16 = (Procedure) obj39;
                                                Object obj40 = objArr[1];
                                                int length18 = objArr.length - 2;
                                                Object[] objArr18 = new Object[length18];
                                                while (true) {
                                                    int i18 = length18 - 1;
                                                    if (i18 < 0) {
                                                        return every$V(procedure16, obj40, objArr18);
                                                    }
                                                    objArr18[i18] = objArr[length18 + 1];
                                                    length18 = i18;
                                                }
                                            } catch (ClassCastException e16) {
                                                throw new WrongType(e16, "every", 1, obj39);
                                            }
                                        case 168:
                                            Object obj41 = objArr[0];
                                            try {
                                                Procedure procedure17 = (Procedure) obj41;
                                                Object obj42 = objArr[1];
                                                int length19 = objArr.length - 2;
                                                Object[] objArr19 = new Object[length19];
                                                while (true) {
                                                    int i19 = length19 - 1;
                                                    if (i19 < 0) {
                                                        return listIndex$V(procedure17, obj42, objArr19);
                                                    }
                                                    objArr19[i19] = objArr[length19 + 1];
                                                    length19 = i19;
                                                }
                                            } catch (ClassCastException e17) {
                                                throw new WrongType(e17, "list-index", 1, obj41);
                                            }
                                        case 169:
                                            Object obj43 = objArr[0];
                                            try {
                                                Procedure procedure18 = (Procedure) obj43;
                                                int length20 = objArr.length - 1;
                                                Object[] objArr20 = new Object[length20];
                                                while (true) {
                                                    int i20 = length20 - 1;
                                                    if (i20 < 0) {
                                                        return lset$Ls$Eq$V(procedure18, objArr20);
                                                    }
                                                    objArr20[i20] = objArr[length20];
                                                    length20 = i20;
                                                }
                                            } catch (ClassCastException e18) {
                                                throw new WrongType(e18, "lset<=", 1, obj43);
                                            }
                                        case 170:
                                            Object obj44 = objArr[0];
                                            try {
                                                Procedure procedure19 = (Procedure) obj44;
                                                int length21 = objArr.length - 1;
                                                Object[] objArr21 = new Object[length21];
                                                while (true) {
                                                    int i21 = length21 - 1;
                                                    if (i21 < 0) {
                                                        return lset$Eq$V(procedure19, objArr21);
                                                    }
                                                    objArr21[i21] = objArr[length21];
                                                    length21 = i21;
                                                }
                                            } catch (ClassCastException e19) {
                                                throw new WrongType(e19, "lset=", 1, obj44);
                                            }
                                        case 171:
                                            Object obj45 = objArr[0];
                                            try {
                                                Procedure procedure20 = (Procedure) obj45;
                                                Object obj46 = objArr[1];
                                                int length22 = objArr.length - 2;
                                                Object[] objArr22 = new Object[length22];
                                                while (true) {
                                                    int i22 = length22 - 1;
                                                    if (i22 < 0) {
                                                        return lsetAdjoin$V(procedure20, obj46, objArr22);
                                                    }
                                                    objArr22[i22] = objArr[length22 + 1];
                                                    length22 = i22;
                                                }
                                            } catch (ClassCastException e20) {
                                                throw new WrongType(e20, "lset-adjoin", 1, obj45);
                                            }
                                        case 172:
                                            Object obj47 = objArr[0];
                                            try {
                                                Procedure procedure21 = (Procedure) obj47;
                                                int length23 = objArr.length - 1;
                                                Object[] objArr23 = new Object[length23];
                                                while (true) {
                                                    int i23 = length23 - 1;
                                                    if (i23 < 0) {
                                                        return lsetUnion$V(procedure21, objArr23);
                                                    }
                                                    objArr23[i23] = objArr[length23];
                                                    length23 = i23;
                                                }
                                            } catch (ClassCastException e21) {
                                                throw new WrongType(e21, "lset-union", 1, obj47);
                                            }
                                        case 173:
                                            Object obj48 = objArr[0];
                                            try {
                                                Procedure procedure22 = (Procedure) obj48;
                                                int length24 = objArr.length - 1;
                                                Object[] objArr24 = new Object[length24];
                                                while (true) {
                                                    int i24 = length24 - 1;
                                                    if (i24 < 0) {
                                                        return lsetUnion$Ex$V(procedure22, objArr24);
                                                    }
                                                    objArr24[i24] = objArr[length24];
                                                    length24 = i24;
                                                }
                                            } catch (ClassCastException e22) {
                                                throw new WrongType(e22, "lset-union!", 1, obj48);
                                            }
                                        case 174:
                                            Object obj49 = objArr[0];
                                            try {
                                                Procedure procedure23 = (Procedure) obj49;
                                                Object obj50 = objArr[1];
                                                int length25 = objArr.length - 2;
                                                Object[] objArr25 = new Object[length25];
                                                while (true) {
                                                    int i25 = length25 - 1;
                                                    if (i25 < 0) {
                                                        return lsetIntersection$V(procedure23, obj50, objArr25);
                                                    }
                                                    objArr25[i25] = objArr[length25 + 1];
                                                    length25 = i25;
                                                }
                                            } catch (ClassCastException e23) {
                                                throw new WrongType(e23, "lset-intersection", 1, obj49);
                                            }
                                        case 175:
                                            Object obj51 = objArr[0];
                                            try {
                                                Procedure procedure24 = (Procedure) obj51;
                                                Object obj52 = objArr[1];
                                                int length26 = objArr.length - 2;
                                                Object[] objArr26 = new Object[length26];
                                                while (true) {
                                                    int i26 = length26 - 1;
                                                    if (i26 < 0) {
                                                        return lsetIntersection$Ex$V(procedure24, obj52, objArr26);
                                                    }
                                                    objArr26[i26] = objArr[length26 + 1];
                                                    length26 = i26;
                                                }
                                            } catch (ClassCastException e24) {
                                                throw new WrongType(e24, "lset-intersection!", 1, obj51);
                                            }
                                        case 176:
                                            Object obj53 = objArr[0];
                                            try {
                                                Procedure procedure25 = (Procedure) obj53;
                                                Object obj54 = objArr[1];
                                                int length27 = objArr.length - 2;
                                                Object[] objArr27 = new Object[length27];
                                                while (true) {
                                                    int i27 = length27 - 1;
                                                    if (i27 < 0) {
                                                        return lsetDifference$V(procedure25, obj54, objArr27);
                                                    }
                                                    objArr27[i27] = objArr[length27 + 1];
                                                    length27 = i27;
                                                }
                                            } catch (ClassCastException e25) {
                                                throw new WrongType(e25, "lset-difference", 1, obj53);
                                            }
                                        case 177:
                                            Object obj55 = objArr[0];
                                            try {
                                                Procedure procedure26 = (Procedure) obj55;
                                                Object obj56 = objArr[1];
                                                int length28 = objArr.length - 2;
                                                Object[] objArr28 = new Object[length28];
                                                while (true) {
                                                    int i28 = length28 - 1;
                                                    if (i28 < 0) {
                                                        return lsetDifference$Ex$V(procedure26, obj56, objArr28);
                                                    }
                                                    objArr28[i28] = objArr[length28 + 1];
                                                    length28 = i28;
                                                }
                                            } catch (ClassCastException e26) {
                                                throw new WrongType(e26, "lset-difference!", 1, obj55);
                                            }
                                        case 178:
                                            Object obj57 = objArr[0];
                                            try {
                                                Procedure procedure27 = (Procedure) obj57;
                                                int length29 = objArr.length - 1;
                                                Object[] objArr29 = new Object[length29];
                                                while (true) {
                                                    int i29 = length29 - 1;
                                                    if (i29 < 0) {
                                                        return lsetXor$V(procedure27, objArr29);
                                                    }
                                                    objArr29[i29] = objArr[length29];
                                                    length29 = i29;
                                                }
                                            } catch (ClassCastException e27) {
                                                throw new WrongType(e27, "lset-xor", 1, obj57);
                                            }
                                        case 179:
                                            Object obj58 = objArr[0];
                                            try {
                                                Procedure procedure28 = (Procedure) obj58;
                                                int length30 = objArr.length - 1;
                                                Object[] objArr30 = new Object[length30];
                                                while (true) {
                                                    int i30 = length30 - 1;
                                                    if (i30 < 0) {
                                                        return lsetXor$Ex$V(procedure28, objArr30);
                                                    }
                                                    objArr30[i30] = objArr[length30];
                                                    length30 = i30;
                                                }
                                            } catch (ClassCastException e28) {
                                                throw new WrongType(e28, "lset-xor!", 1, obj58);
                                            }
                                        case 180:
                                            Object obj59 = objArr[0];
                                            try {
                                                Procedure procedure29 = (Procedure) obj59;
                                                Object obj60 = objArr[1];
                                                int length31 = objArr.length - 2;
                                                Object[] objArr31 = new Object[length31];
                                                while (true) {
                                                    int i31 = length31 - 1;
                                                    if (i31 < 0) {
                                                        return lsetDiff$PlIntersection$V(procedure29, obj60, objArr31);
                                                    }
                                                    objArr31[i31] = objArr[length31 + 1];
                                                    length31 = i31;
                                                }
                                            } catch (ClassCastException e29) {
                                                throw new WrongType(e29, "lset-diff+intersection", 1, obj59);
                                            }
                                        case 181:
                                            Object obj61 = objArr[0];
                                            try {
                                                Procedure procedure30 = (Procedure) obj61;
                                                Object obj62 = objArr[1];
                                                int length32 = objArr.length - 2;
                                                Object[] objArr32 = new Object[length32];
                                                while (true) {
                                                    int i32 = length32 - 1;
                                                    if (i32 < 0) {
                                                        return lsetDiff$PlIntersection$Ex$V(procedure30, obj62, objArr32);
                                                    }
                                                    objArr32[i32] = objArr[length32 + 1];
                                                    length32 = i32;
                                                }
                                            } catch (ClassCastException e30) {
                                                throw new WrongType(e30, "lset-diff+intersection!", 1, obj61);
                                            }
                                        default:
                                            return super.applyN(moduleMethod, objArr);
                                    }
                            }
                    }
                }
            }
        }
    }

    public class frame53 extends ModuleBody {
        Procedure $Eq;
        final ModuleMethod lambda$Fn55;
        LList lists;

        public frame53() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 56, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1587");
            this.lambda$Fn55 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 56 ? lambda72(obj) ? Boolean.TRUE : Boolean.FALSE : super.apply1(moduleMethod, obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean lambda72(Object obj) {
            frame54 frame54Var = new frame54();
            frame54Var.staticLink = this;
            frame54Var.elt = obj;
            return ((srfi1.any$V(frame54Var.lambda$Fn56, this.lists, new Object[0]) != Boolean.FALSE ? 1 : 0) + 1) & 1;
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 56) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    public class frame54 extends ModuleBody {
        Object elt;
        final ModuleMethod lambda$Fn56;
        frame53 staticLink;

        public frame54() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 55, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1588");
            this.lambda$Fn56 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 55 ? lambda73(obj) : super.apply1(moduleMethod, obj);
        }

        public Object lambda73(Object obj) {
            return lists.member(this.elt, obj, this.staticLink.$Eq);
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 55) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }
}
