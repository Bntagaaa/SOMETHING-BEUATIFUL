package gnu.kawa.slib;

import androidx.fragment.app.FragmentTransaction;
import com.google.youngandroid.a;
import gnu.expr.GenericProc;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.kawa.functions.AddOp;
import gnu.kawa.functions.IsEqv;
import gnu.kawa.functions.NumberCompare;
import gnu.lists.Consumer;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.lists.PairWithPosition;
import gnu.mapping.CallContext;
import gnu.mapping.Procedure;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.WrongType;
import gnu.math.IntNum;
import gnu.text.Char;
import kawa.lib.characters;
import kawa.lib.lists;
import kawa.lib.misc;
import kawa.lib.numbers;
import kawa.lib.ports;
import kawa.lib.rnrs.unicode;
import kawa.lib.strings;
import kawa.standard.Scheme;
import kawa.standard.append;

/* loaded from: classes2.dex */
public class pregexp extends ModuleBody {
    public static Char $Stpregexp$Mncomment$Mnchar$St;
    public static Object $Stpregexp$Mnnul$Mnchar$Mnint$St;
    public static Object $Stpregexp$Mnreturn$Mnchar$St;
    public static Object $Stpregexp$Mnspace$Mnsensitive$Qu$St;
    public static Object $Stpregexp$Mntab$Mnchar$St;
    public static IntNum $Stpregexp$Mnversion$St;
    public static final pregexp $instance;
    static final IntNum Lit0;
    static final Char Lit1;
    static final SimpleSymbol Lit10;
    static final SimpleSymbol Lit100;
    static final SimpleSymbol Lit101;
    static final SimpleSymbol Lit102;
    static final SimpleSymbol Lit103;
    static final SimpleSymbol Lit104;
    static final SimpleSymbol Lit105;
    static final PairWithPosition Lit106;
    static final SimpleSymbol Lit107;
    static final PairWithPosition Lit108;
    static final SimpleSymbol Lit109;
    static final Char Lit11;
    static final SimpleSymbol Lit110;
    static final SimpleSymbol Lit111;
    static final SimpleSymbol Lit112;
    static final Char Lit113;
    static final SimpleSymbol Lit114;
    static final SimpleSymbol Lit115;
    static final PairWithPosition Lit116;
    static final SimpleSymbol Lit117;
    static final SimpleSymbol Lit118;
    static final SimpleSymbol Lit119;
    static final SimpleSymbol Lit12;
    static final SimpleSymbol Lit120;
    static final SimpleSymbol Lit121;
    static final SimpleSymbol Lit122;
    static final SimpleSymbol Lit123;
    static final SimpleSymbol Lit124;
    static final SimpleSymbol Lit125;
    static final SimpleSymbol Lit126;
    static final SimpleSymbol Lit127;
    static final SimpleSymbol Lit128;
    static final SimpleSymbol Lit129;
    static final Char Lit13;
    static final SimpleSymbol Lit130;
    static final SimpleSymbol Lit131;
    static final SimpleSymbol Lit132;
    static final SimpleSymbol Lit133;
    static final SimpleSymbol Lit134;
    static final SimpleSymbol Lit135;
    static final SimpleSymbol Lit14;
    static final Char Lit15;
    static final IntNum Lit16;
    static final SimpleSymbol Lit17;
    static final Char Lit18;
    static final Char Lit19;
    static final Char Lit2;
    static final SimpleSymbol Lit20;
    static final SimpleSymbol Lit21;
    static final SimpleSymbol Lit22;
    static final SimpleSymbol Lit23;
    static final Char Lit24;
    static final Char Lit25;
    static final SimpleSymbol Lit26;
    static final Char Lit27;
    static final SimpleSymbol Lit28;
    static final Char Lit29;
    static final Char Lit3;
    static final SimpleSymbol Lit30;
    static final Char Lit31;
    static final PairWithPosition Lit32;
    static final Char Lit33;
    static final Char Lit34;
    static final Char Lit35;
    static final SimpleSymbol Lit36;
    static final Char Lit37;
    static final PairWithPosition Lit38;
    static final Char Lit39;
    static final SimpleSymbol Lit4;
    static final Char Lit40;
    static final SimpleSymbol Lit41;
    static final Char Lit42;
    static final PairWithPosition Lit43;
    static final Char Lit44;
    static final SimpleSymbol Lit45;
    static final Char Lit46;
    static final Char Lit47;
    static final Char Lit48;
    static final PairWithPosition Lit49;
    static final SimpleSymbol Lit5;
    static final Char Lit50;
    static final PairWithPosition Lit51;
    static final Char Lit52;
    static final PairWithPosition Lit53;
    static final Char Lit54;
    static final PairWithPosition Lit55;
    static final PairWithPosition Lit56;
    static final SimpleSymbol Lit57;
    static final Char Lit58;
    static final Char Lit59;
    static final Char Lit6;
    static final SimpleSymbol Lit60;
    static final SimpleSymbol Lit61;
    static final Char Lit62;
    static final PairWithPosition Lit63;
    static final SimpleSymbol Lit64;
    static final Char Lit65;
    static final Char Lit66;
    static final Char Lit67;
    static final SimpleSymbol Lit68;
    static final SimpleSymbol Lit69;
    static final Char Lit7;
    static final SimpleSymbol Lit70;
    static final SimpleSymbol Lit71;
    static final SimpleSymbol Lit72;
    static final IntNum Lit73;
    static final SimpleSymbol Lit74;
    static final SimpleSymbol Lit75;
    static final SimpleSymbol Lit76;
    static final Char Lit77;
    static final Char Lit78;
    static final SimpleSymbol Lit79;
    static final IntNum Lit8;
    static final SimpleSymbol Lit80;
    static final SimpleSymbol Lit81;
    static final SimpleSymbol Lit82;
    static final SimpleSymbol Lit83;
    static final Char Lit84;
    static final SimpleSymbol Lit85;
    static final SimpleSymbol Lit86;
    static final SimpleSymbol Lit87;
    static final SimpleSymbol Lit88;
    static final SimpleSymbol Lit89;
    static final Char Lit9;
    static final SimpleSymbol Lit90;
    static final SimpleSymbol Lit91;
    static final SimpleSymbol Lit92;
    static final SimpleSymbol Lit93;
    static final SimpleSymbol Lit94;
    static final SimpleSymbol Lit95;
    static final Char Lit96;
    static final Char Lit97;
    static final Char Lit98;
    static final SimpleSymbol Lit99;
    static final ModuleMethod lambda$Fn1;
    static final ModuleMethod lambda$Fn10;
    static final ModuleMethod lambda$Fn6;
    static final ModuleMethod lambda$Fn7;
    static final ModuleMethod lambda$Fn8;
    static final ModuleMethod lambda$Fn9;
    public static final ModuleMethod pregexp;
    public static final ModuleMethod pregexp$Mnat$Mnword$Mnboundary$Qu;
    public static final ModuleMethod pregexp$Mnchar$Mnword$Qu;
    public static final ModuleMethod pregexp$Mncheck$Mnif$Mnin$Mnchar$Mnclass$Qu;
    public static final ModuleMethod pregexp$Mnerror;
    public static final ModuleMethod pregexp$Mninvert$Mnchar$Mnlist;
    public static final ModuleMethod pregexp$Mnlist$Mnref;
    public static final ModuleMethod pregexp$Mnmake$Mnbackref$Mnlist;
    public static final ModuleMethod pregexp$Mnmatch;
    public static final ModuleMethod pregexp$Mnmatch$Mnpositions;
    public static final ModuleMethod pregexp$Mnmatch$Mnpositions$Mnaux;
    public static final ModuleMethod pregexp$Mnquote;
    public static final ModuleMethod pregexp$Mnread$Mnbranch;
    public static final ModuleMethod pregexp$Mnread$Mnchar$Mnlist;
    public static final ModuleMethod pregexp$Mnread$Mncluster$Mntype;
    public static final ModuleMethod pregexp$Mnread$Mnescaped$Mnchar;
    public static final ModuleMethod pregexp$Mnread$Mnescaped$Mnnumber;
    public static final ModuleMethod pregexp$Mnread$Mnnums;
    public static final ModuleMethod pregexp$Mnread$Mnpattern;
    public static final ModuleMethod pregexp$Mnread$Mnpiece;
    public static final ModuleMethod pregexp$Mnread$Mnposix$Mnchar$Mnclass;
    public static final ModuleMethod pregexp$Mnread$Mnsubpattern;
    public static final ModuleMethod pregexp$Mnreplace;
    public static final ModuleMethod pregexp$Mnreplace$Mnaux;
    public static final ModuleMethod pregexp$Mnreplace$St;
    public static final ModuleMethod pregexp$Mnreverse$Ex;
    public static final ModuleMethod pregexp$Mnsplit;
    public static final ModuleMethod pregexp$Mnstring$Mnmatch;
    public static final ModuleMethod pregexp$Mnwrap$Mnquantifier$Mnif$Mnany;

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("pregexp-quote");
        Lit135 = simpleSymbol;
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f("pregexp-replace*");
        Lit134 = simpleSymbol2;
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) a.f("pregexp-replace");
        Lit133 = simpleSymbol3;
        SimpleSymbol simpleSymbol4 = (SimpleSymbol) a.f("pregexp-split");
        Lit132 = simpleSymbol4;
        SimpleSymbol simpleSymbol5 = (SimpleSymbol) a.f("pregexp-match");
        Lit131 = simpleSymbol5;
        SimpleSymbol simpleSymbol6 = (SimpleSymbol) a.f("pregexp");
        Lit130 = simpleSymbol6;
        SimpleSymbol simpleSymbol7 = (SimpleSymbol) a.f("pregexp-replace-aux");
        Lit129 = simpleSymbol7;
        SimpleSymbol simpleSymbol8 = (SimpleSymbol) a.f("pregexp-make-backref-list");
        Lit128 = simpleSymbol8;
        SimpleSymbol simpleSymbol9 = (SimpleSymbol) a.f("pregexp-list-ref");
        Lit127 = simpleSymbol9;
        SimpleSymbol simpleSymbol10 = (SimpleSymbol) a.f("pregexp-at-word-boundary?");
        Lit126 = simpleSymbol10;
        SimpleSymbol simpleSymbol11 = (SimpleSymbol) a.f("pregexp-char-word?");
        Lit125 = simpleSymbol11;
        SimpleSymbol simpleSymbol12 = (SimpleSymbol) a.f("pregexp-string-match");
        Lit124 = simpleSymbol12;
        SimpleSymbol simpleSymbol13 = (SimpleSymbol) a.f("pregexp-invert-char-list");
        Lit123 = simpleSymbol13;
        SimpleSymbol simpleSymbol14 = (SimpleSymbol) a.f("pregexp-read-escaped-char");
        Lit122 = simpleSymbol14;
        SimpleSymbol simpleSymbol15 = (SimpleSymbol) a.f("pregexp-read-escaped-number");
        Lit121 = simpleSymbol15;
        SimpleSymbol simpleSymbol16 = (SimpleSymbol) a.f("pregexp-read-branch");
        Lit120 = simpleSymbol16;
        SimpleSymbol simpleSymbol17 = (SimpleSymbol) a.f("pregexp-read-pattern");
        Lit119 = simpleSymbol17;
        SimpleSymbol simpleSymbol18 = (SimpleSymbol) a.f("pregexp-error");
        Lit118 = simpleSymbol18;
        SimpleSymbol simpleSymbol19 = (SimpleSymbol) a.f("pregexp-reverse!");
        Lit117 = simpleSymbol19;
        Char charMake = Char.make(92);
        Lit19 = charMake;
        Char charMake2 = Char.make(46);
        Lit13 = charMake2;
        Char charMake3 = Char.make(63);
        Lit47 = charMake3;
        Char charMake4 = Char.make(42);
        Lit65 = charMake4;
        Char charMake5 = Char.make(43);
        Lit66 = charMake5;
        Char charMake6 = Char.make(124);
        Lit7 = charMake6;
        Char charMake7 = Char.make(94);
        Lit9 = charMake7;
        Char charMake8 = Char.make(36);
        Lit11 = charMake8;
        Char charMake9 = Char.make(91);
        Lit15 = charMake9;
        Char charMake10 = Char.make(93);
        Lit46 = charMake10;
        Char charMake11 = Char.make(123);
        Lit67 = charMake11;
        Char charMake12 = Char.make(125);
        Lit78 = charMake12;
        Char charMake13 = Char.make(40);
        Lit18 = charMake13;
        Char charMake14 = Char.make(41);
        Lit6 = charMake14;
        LList lList = LList.Empty;
        Lit116 = PairWithPosition.make(charMake, PairWithPosition.make(charMake2, PairWithPosition.make(charMake3, PairWithPosition.make(charMake4, PairWithPosition.make(charMake5, PairWithPosition.make(charMake6, PairWithPosition.make(charMake7, PairWithPosition.make(charMake8, PairWithPosition.make(charMake9, PairWithPosition.make(charMake10, PairWithPosition.make(charMake11, PairWithPosition.make(charMake12, PairWithPosition.make(charMake13, PairWithPosition.make(charMake14, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm", 3153977), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm", 3153973), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm", 3153969), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm", 3153965), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm", 3153961), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm", 3153957), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm", 3149885), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm", 3149881), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm", 3149877), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm", 3149873), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm", 3149869), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm", 3149865), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm", 3149861), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm", 3149856);
        Lit115 = (SimpleSymbol) a.f("pattern-must-be-compiled-or-string-regexp");
        SimpleSymbol simpleSymbol20 = (SimpleSymbol) a.f("pregexp-match-positions");
        Lit114 = simpleSymbol20;
        Lit113 = Char.make(38);
        Lit112 = (SimpleSymbol) a.f("identity");
        Lit111 = (SimpleSymbol) a.f("fk");
        Lit110 = (SimpleSymbol) a.f("greedy-quantifier-operand-could-be-empty");
        SimpleSymbol simpleSymbol21 = (SimpleSymbol) a.f(":no-backtrack");
        Lit109 = simpleSymbol21;
        SimpleSymbol simpleSymbol22 = (SimpleSymbol) a.f(":between");
        Lit68 = simpleSymbol22;
        Boolean bool = Boolean.FALSE;
        IntNum intNumMake = IntNum.make(0);
        Lit73 = intNumMake;
        SimpleSymbol simpleSymbol23 = (SimpleSymbol) a.f(":any");
        Lit14 = simpleSymbol23;
        Lit108 = PairWithPosition.make(simpleSymbol22, PairWithPosition.make(bool, PairWithPosition.make(intNumMake, PairWithPosition.make(bool, PairWithPosition.make(simpleSymbol23, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm", 2338881), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm", 2338878), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm", 2338876), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm", 2338873), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm", 2338863);
        SimpleSymbol simpleSymbol24 = (SimpleSymbol) a.f(":neg-lookbehind");
        Lit107 = simpleSymbol24;
        Lit106 = PairWithPosition.make(simpleSymbol22, PairWithPosition.make(bool, PairWithPosition.make(intNumMake, PairWithPosition.make(bool, PairWithPosition.make(simpleSymbol23, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm", 2302017), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm", 2302014), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm", 2302012), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm", 2302009), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm", 2301999);
        SimpleSymbol simpleSymbol25 = (SimpleSymbol) a.f(":lookbehind");
        Lit105 = simpleSymbol25;
        SimpleSymbol simpleSymbol26 = (SimpleSymbol) a.f(":neg-lookahead");
        Lit104 = simpleSymbol26;
        SimpleSymbol simpleSymbol27 = (SimpleSymbol) a.f(":lookahead");
        Lit103 = simpleSymbol27;
        Lit102 = (SimpleSymbol) a.f("non-existent-backref");
        SimpleSymbol simpleSymbol28 = (SimpleSymbol) a.f("pregexp-match-positions-aux");
        Lit101 = simpleSymbol28;
        SimpleSymbol simpleSymbol29 = (SimpleSymbol) a.f(":sub");
        Lit100 = simpleSymbol29;
        SimpleSymbol simpleSymbol30 = (SimpleSymbol) a.f("pregexp-check-if-in-char-class?");
        Lit99 = simpleSymbol30;
        Lit98 = Char.make(102);
        Lit97 = Char.make(101);
        Lit96 = Char.make(99);
        Lit95 = (SimpleSymbol) a.f(":xdigit");
        Lit94 = (SimpleSymbol) a.f(":upper");
        Lit93 = (SimpleSymbol) a.f(":punct");
        Lit92 = (SimpleSymbol) a.f(":print");
        Lit91 = (SimpleSymbol) a.f(":lower");
        Lit90 = (SimpleSymbol) a.f(":graph");
        Lit89 = (SimpleSymbol) a.f(":cntrl");
        Lit88 = (SimpleSymbol) a.f(":blank");
        Lit87 = (SimpleSymbol) a.f(":ascii");
        Lit86 = (SimpleSymbol) a.f(":alpha");
        Lit85 = (SimpleSymbol) a.f(":alnum");
        Lit84 = Char.make(95);
        Lit83 = (SimpleSymbol) a.f(":char-range");
        Lit82 = (SimpleSymbol) a.f(":one-of-chars");
        Lit81 = (SimpleSymbol) a.f("character-class-ended-too-soon");
        SimpleSymbol simpleSymbol31 = (SimpleSymbol) a.f("pregexp-read-char-list");
        Lit80 = simpleSymbol31;
        Lit79 = (SimpleSymbol) a.f(":none-of-chars");
        Lit77 = Char.make(44);
        SimpleSymbol simpleSymbol32 = (SimpleSymbol) a.f("pregexp-read-nums");
        Lit76 = simpleSymbol32;
        Lit75 = (SimpleSymbol) a.f("left-brace-must-be-followed-by-number");
        SimpleSymbol simpleSymbol33 = (SimpleSymbol) a.f("pregexp-wrap-quantifier-if-any");
        Lit74 = simpleSymbol33;
        Lit72 = (SimpleSymbol) a.f("next-i");
        Lit71 = (SimpleSymbol) a.f("at-most");
        Lit70 = (SimpleSymbol) a.f("at-least");
        Lit69 = (SimpleSymbol) a.f("minimal?");
        SimpleSymbol simpleSymbol34 = (SimpleSymbol) a.f("pregexp-read-subpattern");
        Lit64 = simpleSymbol34;
        Lit63 = PairWithPosition.make(simpleSymbol29, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm", 942102);
        Lit62 = Char.make(120);
        Lit61 = (SimpleSymbol) a.f(":case-insensitive");
        Lit60 = (SimpleSymbol) a.f(":case-sensitive");
        Lit59 = Char.make(105);
        Lit58 = Char.make(45);
        SimpleSymbol simpleSymbol35 = (SimpleSymbol) a.f("pregexp-read-cluster-type");
        Lit57 = simpleSymbol35;
        Lit56 = PairWithPosition.make(simpleSymbol24, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm", 876575);
        Lit55 = PairWithPosition.make(simpleSymbol25, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm", 872479);
        Lit54 = Char.make(60);
        Lit53 = PairWithPosition.make(simpleSymbol21, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm", 860188);
        Lit52 = Char.make(62);
        Lit51 = PairWithPosition.make(simpleSymbol26, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm", 856092);
        Lit50 = Char.make(33);
        Lit49 = PairWithPosition.make(simpleSymbol27, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm", 851996);
        Lit48 = Char.make(61);
        SimpleSymbol simpleSymbol36 = (SimpleSymbol) a.f("pregexp-read-posix-char-class");
        Lit45 = simpleSymbol36;
        Lit44 = Char.make(58);
        SimpleSymbol simpleSymbol37 = (SimpleSymbol) a.f(":neg-char");
        Lit17 = simpleSymbol37;
        SimpleSymbol simpleSymbol38 = (SimpleSymbol) a.f(":word");
        Lit41 = simpleSymbol38;
        Lit43 = PairWithPosition.make(simpleSymbol37, PairWithPosition.make(simpleSymbol38, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm", 696359), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm", 696348);
        Lit42 = Char.make(87);
        Lit40 = Char.make(119);
        Lit39 = Char.make(116);
        SimpleSymbol simpleSymbol39 = (SimpleSymbol) a.f(":space");
        Lit36 = simpleSymbol39;
        Lit38 = PairWithPosition.make(simpleSymbol37, PairWithPosition.make(simpleSymbol39, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm", 684071), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm", 684060);
        Lit37 = Char.make(83);
        Lit35 = Char.make(115);
        Lit34 = Char.make(114);
        Lit33 = Char.make(110);
        SimpleSymbol simpleSymbol40 = (SimpleSymbol) a.f(":digit");
        Lit30 = simpleSymbol40;
        Lit32 = PairWithPosition.make(simpleSymbol37, PairWithPosition.make(simpleSymbol40, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm", 667687), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm", 667676);
        Lit31 = Char.make(68);
        Lit29 = Char.make(100);
        Lit28 = (SimpleSymbol) a.f(":not-wbdry");
        Lit27 = Char.make(66);
        Lit26 = (SimpleSymbol) a.f(":wbdry");
        Lit25 = Char.make(98);
        Lit24 = Char.make(10);
        Lit23 = (SimpleSymbol) a.f(":empty");
        Lit22 = (SimpleSymbol) a.f("backslash");
        SimpleSymbol simpleSymbol41 = (SimpleSymbol) a.f("pregexp-read-piece");
        Lit21 = simpleSymbol41;
        Lit20 = (SimpleSymbol) a.f(":backref");
        Lit16 = IntNum.make(2);
        Lit12 = (SimpleSymbol) a.f(":eos");
        Lit10 = (SimpleSymbol) a.f(":bos");
        Lit8 = IntNum.make(1);
        Lit5 = (SimpleSymbol) a.f(":seq");
        Lit4 = (SimpleSymbol) a.f(":or");
        Lit3 = Char.make(32);
        Lit2 = Char.make(97);
        Lit1 = Char.make(59);
        Lit0 = IntNum.make(20050502);
        pregexp pregexpVar = new pregexp();
        $instance = pregexpVar;
        ModuleMethod moduleMethod = new ModuleMethod(pregexpVar, 16, simpleSymbol19, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:47");
        pregexp$Mnreverse$Ex = moduleMethod;
        ModuleMethod moduleMethod2 = new ModuleMethod(pregexpVar, 17, simpleSymbol18, -4096);
        moduleMethod2.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:57");
        pregexp$Mnerror = moduleMethod2;
        ModuleMethod moduleMethod3 = new ModuleMethod(pregexpVar, 18, simpleSymbol17, 12291);
        moduleMethod3.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:65");
        pregexp$Mnread$Mnpattern = moduleMethod3;
        ModuleMethod moduleMethod4 = new ModuleMethod(pregexpVar, 19, simpleSymbol16, 12291);
        moduleMethod4.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:79");
        pregexp$Mnread$Mnbranch = moduleMethod4;
        ModuleMethod moduleMethod5 = new ModuleMethod(pregexpVar, 20, simpleSymbol41, 12291);
        moduleMethod5.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:91");
        pregexp$Mnread$Mnpiece = moduleMethod5;
        ModuleMethod moduleMethod6 = new ModuleMethod(pregexpVar, 21, simpleSymbol15, 12291);
        moduleMethod6.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:138");
        pregexp$Mnread$Mnescaped$Mnnumber = moduleMethod6;
        ModuleMethod moduleMethod7 = new ModuleMethod(pregexpVar, 22, simpleSymbol14, 12291);
        moduleMethod7.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:155");
        pregexp$Mnread$Mnescaped$Mnchar = moduleMethod7;
        ModuleMethod moduleMethod8 = new ModuleMethod(pregexpVar, 23, simpleSymbol36, 12291);
        moduleMethod8.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:174");
        pregexp$Mnread$Mnposix$Mnchar$Mnclass = moduleMethod8;
        ModuleMethod moduleMethod9 = new ModuleMethod(pregexpVar, 24, simpleSymbol35, 12291);
        moduleMethod9.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:200");
        pregexp$Mnread$Mncluster$Mntype = moduleMethod9;
        ModuleMethod moduleMethod10 = new ModuleMethod(pregexpVar, 25, simpleSymbol34, 12291);
        moduleMethod10.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:233");
        pregexp$Mnread$Mnsubpattern = moduleMethod10;
        ModuleMethod moduleMethod11 = new ModuleMethod(pregexpVar, 26, simpleSymbol33, 12291);
        moduleMethod11.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:254");
        pregexp$Mnwrap$Mnquantifier$Mnif$Mnany = moduleMethod11;
        ModuleMethod moduleMethod12 = new ModuleMethod(pregexpVar, 27, simpleSymbol32, 12291);
        moduleMethod12.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:300");
        pregexp$Mnread$Mnnums = moduleMethod12;
        ModuleMethod moduleMethod13 = new ModuleMethod(pregexpVar, 28, simpleSymbol13, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod13.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:323");
        pregexp$Mninvert$Mnchar$Mnlist = moduleMethod13;
        ModuleMethod moduleMethod14 = new ModuleMethod(pregexpVar, 29, simpleSymbol31, 12291);
        moduleMethod14.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:330");
        pregexp$Mnread$Mnchar$Mnlist = moduleMethod14;
        ModuleMethod moduleMethod15 = new ModuleMethod(pregexpVar, 30, simpleSymbol12, 24582);
        moduleMethod15.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:368");
        pregexp$Mnstring$Mnmatch = moduleMethod15;
        ModuleMethod moduleMethod16 = new ModuleMethod(pregexpVar, 31, simpleSymbol11, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod16.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:379");
        pregexp$Mnchar$Mnword$Qu = moduleMethod16;
        ModuleMethod moduleMethod17 = new ModuleMethod(pregexpVar, 32, simpleSymbol10, 12291);
        moduleMethod17.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:387");
        pregexp$Mnat$Mnword$Mnboundary$Qu = moduleMethod17;
        ModuleMethod moduleMethod18 = new ModuleMethod(pregexpVar, 33, simpleSymbol30, 8194);
        moduleMethod18.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:399");
        pregexp$Mncheck$Mnif$Mnin$Mnchar$Mnclass$Qu = moduleMethod18;
        ModuleMethod moduleMethod19 = new ModuleMethod(pregexpVar, 34, simpleSymbol9, 8194);
        moduleMethod19.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:429");
        pregexp$Mnlist$Mnref = moduleMethod19;
        ModuleMethod moduleMethod20 = new ModuleMethod(pregexpVar, 35, simpleSymbol8, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod20.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:448");
        pregexp$Mnmake$Mnbackref$Mnlist = moduleMethod20;
        ModuleMethod moduleMethod21 = new ModuleMethod(pregexpVar, 36, null, 0);
        moduleMethod21.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:463");
        lambda$Fn1 = moduleMethod21;
        ModuleMethod moduleMethod22 = new ModuleMethod(pregexpVar, 37, null, 0);
        moduleMethod22.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:551");
        lambda$Fn6 = moduleMethod22;
        ModuleMethod moduleMethod23 = new ModuleMethod(pregexpVar, 38, null, 0);
        moduleMethod23.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:556");
        lambda$Fn7 = moduleMethod23;
        ModuleMethod moduleMethod24 = new ModuleMethod(pregexpVar, 39, null, 0);
        moduleMethod24.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:564");
        lambda$Fn8 = moduleMethod24;
        ModuleMethod moduleMethod25 = new ModuleMethod(pregexpVar, 40, null, 0);
        moduleMethod25.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:573");
        lambda$Fn9 = moduleMethod25;
        ModuleMethod moduleMethod26 = new ModuleMethod(pregexpVar, 41, null, 0);
        moduleMethod26.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:578");
        lambda$Fn10 = moduleMethod26;
        ModuleMethod moduleMethod27 = new ModuleMethod(pregexpVar, 42, simpleSymbol28, 24582);
        moduleMethod27.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:459");
        pregexp$Mnmatch$Mnpositions$Mnaux = moduleMethod27;
        ModuleMethod moduleMethod28 = new ModuleMethod(pregexpVar, 43, simpleSymbol7, 16388);
        moduleMethod28.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:639");
        pregexp$Mnreplace$Mnaux = moduleMethod28;
        ModuleMethod moduleMethod29 = new ModuleMethod(pregexpVar, 44, simpleSymbol6, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod29.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:665");
        pregexp = moduleMethod29;
        ModuleMethod moduleMethod30 = new ModuleMethod(pregexpVar, 45, simpleSymbol20, -4094);
        moduleMethod30.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:670");
        pregexp$Mnmatch$Mnpositions = moduleMethod30;
        ModuleMethod moduleMethod31 = new ModuleMethod(pregexpVar, 46, simpleSymbol5, -4094);
        moduleMethod31.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:690");
        pregexp$Mnmatch = moduleMethod31;
        ModuleMethod moduleMethod32 = new ModuleMethod(pregexpVar, 47, simpleSymbol4, 8194);
        moduleMethod32.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:700");
        pregexp$Mnsplit = moduleMethod32;
        ModuleMethod moduleMethod33 = new ModuleMethod(pregexpVar, 48, simpleSymbol3, 12291);
        moduleMethod33.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:723");
        pregexp$Mnreplace = moduleMethod33;
        ModuleMethod moduleMethod34 = new ModuleMethod(pregexpVar, 49, simpleSymbol2, 12291);
        moduleMethod34.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:736");
        pregexp$Mnreplace$St = moduleMethod34;
        ModuleMethod moduleMethod35 = new ModuleMethod(pregexpVar, 50, simpleSymbol, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod35.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:764");
        pregexp$Mnquote = moduleMethod35;
        pregexpVar.run();
    }

    public pregexp() {
        ModuleInfo.register(this);
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext callContext) {
        Consumer consumer = callContext.consumer;
        $Stpregexp$Mnversion$St = Lit0;
        $Stpregexp$Mncomment$Mnchar$St = Lit1;
        Integer numValueOf = Integer.valueOf(Lit2.intValue() - 97);
        $Stpregexp$Mnnul$Mnchar$Mnint$St = numValueOf;
        $Stpregexp$Mnreturn$Mnchar$St = Char.make(numValueOf.intValue() + 13);
        $Stpregexp$Mntab$Mnchar$St = Char.make(((Number) $Stpregexp$Mnnul$Mnchar$Mnint$St).intValue() + 9);
        $Stpregexp$Mnspace$Mnsensitive$Qu$St = Boolean.TRUE;
    }

    @Override // gnu.expr.ModuleBody
    public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 16) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 28) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 31) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 35) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 44) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i != 50) {
            return super.match1(moduleMethod, obj, callContext);
        }
        callContext.value1 = obj;
        callContext.proc = moduleMethod;
        callContext.pc = 1;
        return 0;
    }

    public static Object pregexpReverse$Ex(Object obj) throws Throwable {
        Object obj2 = LList.Empty;
        while (!lists.isNull(obj)) {
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

    public static Object pregexpError$V(Object[] objArr) {
        Object objMakeList = LList.makeList(objArr, 0);
        ports.display("Error:");
        while (objMakeList != LList.Empty) {
            try {
                Pair pair = (Pair) objMakeList;
                Object car = pair.getCar();
                ports.display(Lit3);
                ports.write(car);
                objMakeList = pair.getCdr();
            } catch (ClassCastException e) {
                throw new WrongType(e, "arg0", -2, objMakeList);
            }
        }
        ports.newline();
        return misc.error$V("pregexp-error", new Object[0]);
    }

    @Override // gnu.expr.ModuleBody
    public int matchN(ModuleMethod moduleMethod, Object[] objArr, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 17) {
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }
        if (i == 30) {
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }
        if (i == 42) {
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }
        if (i == 45) {
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }
        if (i != 46) {
            return super.matchN(moduleMethod, objArr, callContext);
        }
        callContext.values = objArr;
        callContext.proc = moduleMethod;
        callContext.pc = 5;
        return 0;
    }

    @Override // gnu.expr.ModuleBody
    public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 29) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i == 32) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i == 48) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i != 49) {
            switch (i) {
                case 18:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.value3 = obj3;
                    callContext.proc = moduleMethod;
                    callContext.pc = 3;
                    return 0;
                case 19:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.value3 = obj3;
                    callContext.proc = moduleMethod;
                    callContext.pc = 3;
                    return 0;
                case 20:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.value3 = obj3;
                    callContext.proc = moduleMethod;
                    callContext.pc = 3;
                    return 0;
                case 21:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.value3 = obj3;
                    callContext.proc = moduleMethod;
                    callContext.pc = 3;
                    return 0;
                case 22:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.value3 = obj3;
                    callContext.proc = moduleMethod;
                    callContext.pc = 3;
                    return 0;
                case 23:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.value3 = obj3;
                    callContext.proc = moduleMethod;
                    callContext.pc = 3;
                    return 0;
                case 24:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.value3 = obj3;
                    callContext.proc = moduleMethod;
                    callContext.pc = 3;
                    return 0;
                case 25:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.value3 = obj3;
                    callContext.proc = moduleMethod;
                    callContext.pc = 3;
                    return 0;
                case 26:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.value3 = obj3;
                    callContext.proc = moduleMethod;
                    callContext.pc = 3;
                    return 0;
                case 27:
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

    /* JADX WARN: Removed duplicated region for block: B:23:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x007e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object pregexpReadPattern(java.lang.Object r6, java.lang.Object r7, java.lang.Object r8) throws java.lang.Throwable {
        /*
            gnu.kawa.functions.NumberCompare r0 = kawa.standard.Scheme.numGEq
            java.lang.Object r0 = r0.apply2(r7, r8)
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            if (r0 == r1) goto L1b
            gnu.mapping.SimpleSymbol r6 = gnu.kawa.slib.pregexp.Lit4
            gnu.mapping.SimpleSymbol r8 = gnu.kawa.slib.pregexp.Lit5
            gnu.lists.Pair r8 = gnu.lists.LList.list1(r8)
            gnu.lists.Pair r6 = gnu.lists.LList.list2(r6, r8)
            gnu.lists.Pair r6 = gnu.lists.LList.list2(r6, r7)
            return r6
        L1b:
            gnu.lists.LList r0 = gnu.lists.LList.Empty
        L1d:
            gnu.kawa.functions.NumberCompare r1 = kawa.standard.Scheme.numGEq
            java.lang.Object r1 = r1.apply2(r7, r8)
            r2 = r1
            java.lang.Boolean r2 = (java.lang.Boolean) r2     // Catch: java.lang.ClassCastException -> Laf
            boolean r1 = r2.booleanValue()     // Catch: java.lang.ClassCastException -> Laf
            r2 = 1
            r3 = 2
            java.lang.String r4 = "string-ref"
            if (r1 == 0) goto L33
            if (r1 == 0) goto L5c
            goto L4d
        L33:
            r1 = r6
            java.lang.CharSequence r1 = (java.lang.CharSequence) r1     // Catch: java.lang.ClassCastException -> La8
            r5 = r7
            java.lang.Number r5 = (java.lang.Number) r5     // Catch: java.lang.ClassCastException -> La1
            int r5 = r5.intValue()     // Catch: java.lang.ClassCastException -> La1
            char r1 = kawa.lib.strings.stringRef(r1, r5)
            gnu.text.Char r1 = gnu.text.Char.make(r1)
            gnu.text.Char r5 = gnu.kawa.slib.pregexp.Lit6
            boolean r1 = kawa.lib.characters.isChar$Eq(r1, r5)
            if (r1 == 0) goto L5c
        L4d:
            gnu.mapping.SimpleSymbol r6 = gnu.kawa.slib.pregexp.Lit4
            java.lang.Object r8 = pregexpReverse$Ex(r0)
            gnu.lists.Pair r6 = kawa.lib.lists.cons(r6, r8)
            gnu.lists.Pair r6 = gnu.lists.LList.list2(r6, r7)
            return r6
        L5c:
            r1 = r6
            java.lang.CharSequence r1 = (java.lang.CharSequence) r1     // Catch: java.lang.ClassCastException -> L9a
            r2 = r7
            java.lang.Number r2 = (java.lang.Number) r2     // Catch: java.lang.ClassCastException -> L93
            int r2 = r2.intValue()     // Catch: java.lang.ClassCastException -> L93
            char r1 = kawa.lib.strings.stringRef(r1, r2)
            gnu.text.Char r1 = gnu.text.Char.make(r1)
            gnu.text.Char r2 = gnu.kawa.slib.pregexp.Lit7
            boolean r1 = kawa.lib.characters.isChar$Eq(r1, r2)
            if (r1 == 0) goto L7e
            gnu.kawa.functions.AddOp r1 = gnu.kawa.functions.AddOp.$Pl
            gnu.math.IntNum r2 = gnu.kawa.slib.pregexp.Lit8
            java.lang.Object r7 = r1.apply2(r7, r2)
        L7e:
            java.lang.Object r7 = pregexpReadBranch(r6, r7, r8)
            gnu.expr.GenericProc r1 = kawa.lib.lists.car
            java.lang.Object r1 = r1.apply1(r7)
            gnu.lists.Pair r0 = kawa.lib.lists.cons(r1, r0)
            gnu.expr.GenericProc r1 = kawa.lib.lists.cadr
            java.lang.Object r7 = r1.apply1(r7)
            goto L1d
        L93:
            r6 = move-exception
            gnu.mapping.WrongType r8 = new gnu.mapping.WrongType
            r8.<init>(r6, r4, r3, r7)
            throw r8
        L9a:
            r7 = move-exception
            gnu.mapping.WrongType r8 = new gnu.mapping.WrongType
            r8.<init>(r7, r4, r2, r6)
            throw r8
        La1:
            r6 = move-exception
            gnu.mapping.WrongType r8 = new gnu.mapping.WrongType
            r8.<init>(r6, r4, r3, r7)
            throw r8
        La8:
            r7 = move-exception
            gnu.mapping.WrongType r8 = new gnu.mapping.WrongType
            r8.<init>(r7, r4, r2, r6)
            throw r8
        Laf:
            r6 = move-exception
            gnu.mapping.WrongType r7 = new gnu.mapping.WrongType
            java.lang.String r8 = "x"
            r0 = -2
            r7.<init>(r6, r8, r0, r1)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.pregexp.pregexpReadPattern(java.lang.Object, java.lang.Object, java.lang.Object):java.lang.Object");
    }

    public static Object pregexpReadBranch(Object obj, Object obj2, Object obj3) throws Throwable {
        Object objCons = LList.Empty;
        while (Scheme.numGEq.apply2(obj2, obj3) == Boolean.FALSE) {
            try {
                try {
                    char cStringRef = strings.stringRef((CharSequence) obj, ((Number) obj2).intValue());
                    boolean zIsChar$Eq = characters.isChar$Eq(Char.make(cStringRef), Lit7);
                    if (zIsChar$Eq) {
                        if (zIsChar$Eq) {
                            return LList.list2(lists.cons(Lit5, pregexpReverse$Ex(objCons)), obj2);
                        }
                        Object objPregexpReadPiece = pregexpReadPiece(obj, obj2, obj3);
                        objCons = lists.cons(lists.car.apply1(objPregexpReadPiece), objCons);
                        obj2 = lists.cadr.apply1(objPregexpReadPiece);
                    } else {
                        if (characters.isChar$Eq(Char.make(cStringRef), Lit6)) {
                            return LList.list2(lists.cons(Lit5, pregexpReverse$Ex(objCons)), obj2);
                        }
                        Object objPregexpReadPiece2 = pregexpReadPiece(obj, obj2, obj3);
                        objCons = lists.cons(lists.car.apply1(objPregexpReadPiece2), objCons);
                        obj2 = lists.cadr.apply1(objPregexpReadPiece2);
                    }
                } catch (ClassCastException e) {
                    throw new WrongType(e, "string-ref", 2, obj2);
                }
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "string-ref", 1, obj);
            }
        }
        return LList.list2(lists.cons(Lit5, pregexpReverse$Ex(objCons)), obj2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x0196, code lost:
    
        return pregexpWrapQuantifierIfAny(gnu.lists.LList.list2(gnu.text.Char.make(r3), gnu.kawa.functions.AddOp.$Pl.apply2(r11, gnu.kawa.slib.pregexp.Lit8)), r10, r12);
     */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01a8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x01a1 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object pregexpReadPiece(java.lang.Object r10, java.lang.Object r11, java.lang.Object r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 543
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.pregexp.pregexpReadPiece(java.lang.Object, java.lang.Object, java.lang.Object):java.lang.Object");
    }

    public static Object pregexpReadEscapedNumber(Object obj, Object obj2, Object obj3) throws Throwable {
        NumberCompare numberCompare = Scheme.numLss;
        AddOp addOp = AddOp.$Pl;
        IntNum intNum = Lit8;
        Object objApply2 = numberCompare.apply2(addOp.apply2(obj2, intNum), obj3);
        try {
            boolean zBooleanValue = ((Boolean) objApply2).booleanValue();
            if (!zBooleanValue) {
                return zBooleanValue ? Boolean.TRUE : Boolean.FALSE;
            }
            try {
                CharSequence charSequence = (CharSequence) obj;
                Object objApply22 = addOp.apply2(obj2, intNum);
                try {
                    char cStringRef = strings.stringRef(charSequence, ((Number) objApply22).intValue());
                    boolean zIsCharNumeric = unicode.isCharNumeric(Char.make(cStringRef));
                    if (!zIsCharNumeric) {
                        return zIsCharNumeric ? Boolean.TRUE : Boolean.FALSE;
                    }
                    Object objApply23 = addOp.apply2(obj2, Lit16);
                    Pair pairList1 = LList.list1(Char.make(cStringRef));
                    while (Scheme.numGEq.apply2(objApply23, obj3) == Boolean.FALSE) {
                        try {
                            try {
                                char cStringRef2 = strings.stringRef((CharSequence) obj, ((Number) objApply23).intValue());
                                if (unicode.isCharNumeric(Char.make(cStringRef2))) {
                                    objApply23 = AddOp.$Pl.apply2(objApply23, Lit8);
                                    pairList1 = lists.cons(Char.make(cStringRef2), pairList1);
                                } else {
                                    Object objPregexpReverse$Ex = pregexpReverse$Ex(pairList1);
                                    try {
                                        return LList.list2(numbers.string$To$Number(strings.list$To$String((LList) objPregexpReverse$Ex)), objApply23);
                                    } catch (ClassCastException e) {
                                        throw new WrongType(e, "list->string", 1, objPregexpReverse$Ex);
                                    }
                                }
                            } catch (ClassCastException e2) {
                                throw new WrongType(e2, "string-ref", 2, objApply23);
                            }
                        } catch (ClassCastException e3) {
                            throw new WrongType(e3, "string-ref", 1, obj);
                        }
                    }
                    Object objPregexpReverse$Ex2 = pregexpReverse$Ex(pairList1);
                    try {
                        return LList.list2(numbers.string$To$Number(strings.list$To$String((LList) objPregexpReverse$Ex2)), objApply23);
                    } catch (ClassCastException e4) {
                        throw new WrongType(e4, "list->string", 1, objPregexpReverse$Ex2);
                    }
                } catch (ClassCastException e5) {
                    throw new WrongType(e5, "string-ref", 2, objApply22);
                }
            } catch (ClassCastException e6) {
                throw new WrongType(e6, "string-ref", 1, obj);
            }
        } catch (ClassCastException e7) {
            throw new WrongType(e7, "x", -2, objApply2);
        }
    }

    public static Object pregexpReadEscapedChar(Object obj, Object obj2, Object obj3) throws Throwable {
        NumberCompare numberCompare = Scheme.numLss;
        AddOp addOp = AddOp.$Pl;
        IntNum intNum = Lit8;
        Object objApply2 = numberCompare.apply2(addOp.apply2(obj2, intNum), obj3);
        try {
            boolean zBooleanValue = ((Boolean) objApply2).booleanValue();
            if (!zBooleanValue) {
                return zBooleanValue ? Boolean.TRUE : Boolean.FALSE;
            }
            try {
                CharSequence charSequence = (CharSequence) obj;
                Object objApply22 = addOp.apply2(obj2, intNum);
                try {
                    char cStringRef = strings.stringRef(charSequence, ((Number) objApply22).intValue());
                    IsEqv isEqv = Scheme.isEqv;
                    Object objApply23 = isEqv.apply2(Char.make(cStringRef), Lit25);
                    Boolean bool = Boolean.FALSE;
                    return objApply23 != bool ? LList.list2(Lit26, addOp.apply2(obj2, Lit16)) : isEqv.apply2(Char.make(cStringRef), Lit27) != bool ? LList.list2(Lit28, addOp.apply2(obj2, Lit16)) : isEqv.apply2(Char.make(cStringRef), Lit29) != bool ? LList.list2(Lit30, addOp.apply2(obj2, Lit16)) : isEqv.apply2(Char.make(cStringRef), Lit31) != bool ? LList.list2(Lit32, addOp.apply2(obj2, Lit16)) : isEqv.apply2(Char.make(cStringRef), Lit33) != bool ? LList.list2(Lit24, addOp.apply2(obj2, Lit16)) : isEqv.apply2(Char.make(cStringRef), Lit34) != bool ? LList.list2($Stpregexp$Mnreturn$Mnchar$St, addOp.apply2(obj2, Lit16)) : isEqv.apply2(Char.make(cStringRef), Lit35) != bool ? LList.list2(Lit36, addOp.apply2(obj2, Lit16)) : isEqv.apply2(Char.make(cStringRef), Lit37) != bool ? LList.list2(Lit38, addOp.apply2(obj2, Lit16)) : isEqv.apply2(Char.make(cStringRef), Lit39) != bool ? LList.list2($Stpregexp$Mntab$Mnchar$St, addOp.apply2(obj2, Lit16)) : isEqv.apply2(Char.make(cStringRef), Lit40) != bool ? LList.list2(Lit41, addOp.apply2(obj2, Lit16)) : isEqv.apply2(Char.make(cStringRef), Lit42) != bool ? LList.list2(Lit43, addOp.apply2(obj2, Lit16)) : LList.list2(Char.make(cStringRef), addOp.apply2(obj2, Lit16));
                } catch (ClassCastException e) {
                    throw new WrongType(e, "string-ref", 2, objApply22);
                }
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "string-ref", 1, obj);
            }
        } catch (ClassCastException e3) {
            throw new WrongType(e3, "x", -2, objApply2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0083, code lost:
    
        if (r13 != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a1, code lost:
    
        if (kawa.lib.characters.isChar$Eq(gnu.text.Char.make(kawa.lib.strings.stringRef(r11, ((java.lang.Number) r13).intValue())), gnu.kawa.slib.pregexp.Lit46) == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00ad, code lost:
    
        return pregexpError$V(new java.lang.Object[]{gnu.kawa.slib.pregexp.Lit45});
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ae, code lost:
    
        r11 = pregexpReverse$Ex(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b4, code lost:
    
        r11 = kawa.lib.misc.string$To$Symbol(kawa.lib.strings.list$To$String((gnu.lists.LList) r11));
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00bc, code lost:
    
        if (r3 == r7) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00be, code lost:
    
        r11 = gnu.lists.LList.list2(gnu.kawa.slib.pregexp.Lit17, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00ce, code lost:
    
        return gnu.lists.LList.list2(r11, r6.apply2(r12, gnu.kawa.slib.pregexp.Lit16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00cf, code lost:
    
        r12 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00d7, code lost:
    
        throw new gnu.mapping.WrongType(r12, "list->string", 1, r11);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object pregexpReadPosixCharClass(java.lang.Object r11, java.lang.Object r12, java.lang.Object r13) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.pregexp.pregexpReadPosixCharClass(java.lang.Object, java.lang.Object, java.lang.Object):java.lang.Object");
    }

    public static Object pregexpReadClusterType(Object obj, Object obj2, Object obj3) throws Throwable {
        char cStringRef;
        IsEqv isEqv;
        Boolean bool;
        try {
            try {
                char cStringRef2 = strings.stringRef((CharSequence) obj, ((Number) obj2).intValue());
                IsEqv isEqv2 = Scheme.isEqv;
                Object objApply2 = isEqv2.apply2(Char.make(cStringRef2), Lit47);
                Boolean bool2 = Boolean.FALSE;
                if (objApply2 == bool2) {
                    return LList.list2(Lit63, obj2);
                }
                AddOp addOp = AddOp.$Pl;
                IntNum intNum = Lit8;
                Object objApply22 = addOp.apply2(obj2, intNum);
                try {
                    try {
                        char cStringRef3 = strings.stringRef((CharSequence) obj, ((Number) objApply22).intValue());
                        if (isEqv2.apply2(Char.make(cStringRef3), Lit44) != bool2) {
                            return LList.list2(LList.Empty, addOp.apply2(objApply22, intNum));
                        }
                        Char charMake = Char.make(cStringRef3);
                        Char r9 = Lit48;
                        if (isEqv2.apply2(charMake, r9) != bool2) {
                            return LList.list2(Lit49, addOp.apply2(objApply22, intNum));
                        }
                        Char charMake2 = Char.make(cStringRef3);
                        Char r10 = Lit50;
                        if (isEqv2.apply2(charMake2, r10) != bool2) {
                            return LList.list2(Lit51, addOp.apply2(objApply22, intNum));
                        }
                        if (isEqv2.apply2(Char.make(cStringRef3), Lit52) != bool2) {
                            return LList.list2(Lit53, addOp.apply2(objApply22, intNum));
                        }
                        if (isEqv2.apply2(Char.make(cStringRef3), Lit54) != bool2) {
                            try {
                                CharSequence charSequence = (CharSequence) obj;
                                Object objApply23 = addOp.apply2(objApply22, intNum);
                                try {
                                    char cStringRef4 = strings.stringRef(charSequence, ((Number) objApply23).intValue());
                                    return LList.list2(isEqv2.apply2(Char.make(cStringRef4), r9) != bool2 ? Lit55 : isEqv2.apply2(Char.make(cStringRef4), r10) != bool2 ? Lit56 : pregexpError$V(new Object[]{Lit57}), addOp.apply2(objApply22, Lit16));
                                } catch (ClassCastException e) {
                                    throw new WrongType(e, "string-ref", 2, objApply23);
                                }
                            } catch (ClassCastException e2) {
                                throw new WrongType(e2, "string-ref", 1, obj);
                            }
                        }
                        LList lListCons = LList.Empty;
                        while (true) {
                            try {
                                try {
                                    cStringRef = strings.stringRef((CharSequence) obj, ((Number) objApply22).intValue());
                                    isEqv = Scheme.isEqv;
                                    Object objApply24 = isEqv.apply2(Char.make(cStringRef), Lit58);
                                    bool = Boolean.FALSE;
                                    if (objApply24 != bool) {
                                        objApply22 = AddOp.$Pl.apply2(objApply22, Lit8);
                                        bool2 = Boolean.TRUE;
                                    } else {
                                        if (isEqv.apply2(Char.make(cStringRef), Lit59) == bool) {
                                            if (isEqv.apply2(Char.make(cStringRef), Lit62) == bool) {
                                                break;
                                            }
                                            $Stpregexp$Mnspace$Mnsensitive$Qu$St = bool2;
                                            objApply22 = AddOp.$Pl.apply2(objApply22, Lit8);
                                        } else {
                                            objApply22 = AddOp.$Pl.apply2(objApply22, Lit8);
                                            lListCons = lists.cons(bool2 != bool ? Lit60 : Lit61, lListCons);
                                        }
                                        bool2 = bool;
                                    }
                                } catch (ClassCastException e3) {
                                    throw new WrongType(e3, "string-ref", 2, objApply22);
                                }
                            } catch (ClassCastException e4) {
                                throw new WrongType(e4, "string-ref", 1, obj);
                            }
                        }
                        return isEqv.apply2(Char.make(cStringRef), Lit44) != bool ? LList.list2(lListCons, AddOp.$Pl.apply2(objApply22, Lit8)) : pregexpError$V(new Object[]{Lit57});
                    } catch (ClassCastException e5) {
                        throw new WrongType(e5, "string-ref", 2, objApply22);
                    }
                } catch (ClassCastException e6) {
                    throw new WrongType(e6, "string-ref", 1, obj);
                }
            } catch (ClassCastException e7) {
                throw new WrongType(e7, "string-ref", 2, obj2);
            }
        } catch (ClassCastException e8) {
            throw new WrongType(e8, "string-ref", 1, obj);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x005b, code lost:
    
        if (r8 != false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0061, code lost:
    
        if (kawa.lib.lists.isNull(r4) == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006f, code lost:
    
        return gnu.lists.LList.list2(r2, gnu.kawa.functions.AddOp.$Pl.apply2(r7, gnu.kawa.slib.pregexp.Lit8));
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0070, code lost:
    
        r6 = kawa.lib.lists.cdr.apply1(r4);
        r2 = gnu.lists.LList.list2(kawa.lib.lists.car.apply1(r4), r2);
        r4 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x008d, code lost:
    
        return pregexpError$V(new java.lang.Object[]{gnu.kawa.slib.pregexp.Lit64});
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0049, code lost:
    
        if (kawa.lib.characters.isChar$Eq(gnu.text.Char.make(kawa.lib.strings.stringRef((java.lang.CharSequence) r6, ((java.lang.Number) r7).intValue())), gnu.kawa.slib.pregexp.Lit6) != false) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object pregexpReadSubpattern(java.lang.Object r6, java.lang.Object r7, java.lang.Object r8) throws java.lang.Throwable {
        /*
            r0 = 1
            java.lang.String r1 = "string-ref"
            java.lang.Object r2 = gnu.kawa.slib.pregexp.$Stpregexp$Mnspace$Mnsensitive$Qu$St
            java.lang.Object r7 = pregexpReadClusterType(r6, r7, r8)
            gnu.expr.GenericProc r3 = kawa.lib.lists.car
            java.lang.Object r4 = r3.apply1(r7)
            gnu.expr.GenericProc r5 = kawa.lib.lists.cadr
            java.lang.Object r7 = r5.apply1(r7)
            java.lang.Object r7 = pregexpReadPattern(r6, r7, r8)
            gnu.kawa.slib.pregexp.$Stpregexp$Mnspace$Mnsensitive$Qu$St = r2
            java.lang.Object r2 = r3.apply1(r7)
            java.lang.Object r7 = r5.apply1(r7)
            gnu.kawa.functions.NumberCompare r3 = kawa.standard.Scheme.numLss
            java.lang.Object r8 = r3.apply2(r7, r8)
            r3 = r8
            java.lang.Boolean r3 = (java.lang.Boolean) r3     // Catch: java.lang.ClassCastException -> L8e
            boolean r8 = r3.booleanValue()     // Catch: java.lang.ClassCastException -> L8e
            if (r8 == 0) goto L5b
            java.lang.CharSequence r6 = (java.lang.CharSequence) r6     // Catch: java.lang.ClassCastException -> L54
            r8 = r7
            java.lang.Number r8 = (java.lang.Number) r8     // Catch: java.lang.ClassCastException -> L4c
            int r8 = r8.intValue()     // Catch: java.lang.ClassCastException -> L4c
            char r6 = kawa.lib.strings.stringRef(r6, r8)
            gnu.text.Char r6 = gnu.text.Char.make(r6)
            gnu.text.Char r8 = gnu.kawa.slib.pregexp.Lit6
            boolean r6 = kawa.lib.characters.isChar$Eq(r6, r8)
            if (r6 == 0) goto L82
            goto L5d
        L4c:
            r6 = move-exception
            gnu.mapping.WrongType r8 = new gnu.mapping.WrongType
            r0 = 2
            r8.<init>(r6, r1, r0, r7)
            throw r8
        L54:
            r7 = move-exception
            gnu.mapping.WrongType r8 = new gnu.mapping.WrongType
            r8.<init>(r7, r1, r0, r6)
            throw r8
        L5b:
            if (r8 == 0) goto L82
        L5d:
            boolean r6 = kawa.lib.lists.isNull(r4)
            if (r6 == 0) goto L70
            gnu.kawa.functions.AddOp r6 = gnu.kawa.functions.AddOp.$Pl
            gnu.math.IntNum r8 = gnu.kawa.slib.pregexp.Lit8
            java.lang.Object r6 = r6.apply2(r7, r8)
            gnu.lists.Pair r6 = gnu.lists.LList.list2(r2, r6)
            return r6
        L70:
            gnu.expr.GenericProc r6 = kawa.lib.lists.cdr
            java.lang.Object r6 = r6.apply1(r4)
            gnu.expr.GenericProc r8 = kawa.lib.lists.car
            java.lang.Object r8 = r8.apply1(r4)
            gnu.lists.Pair r2 = gnu.lists.LList.list2(r8, r2)
            r4 = r6
            goto L5d
        L82:
            java.lang.Object[] r6 = new java.lang.Object[r0]
            gnu.mapping.SimpleSymbol r7 = gnu.kawa.slib.pregexp.Lit64
            r8 = 0
            r6[r8] = r7
            java.lang.Object r6 = pregexpError$V(r6)
            return r6
        L8e:
            r6 = move-exception
            gnu.mapping.WrongType r7 = new gnu.mapping.WrongType
            java.lang.String r0 = "x"
            r1 = -2
            r7.<init>(r6, r0, r1, r8)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.pregexp.pregexpReadSubpattern(java.lang.Object, java.lang.Object, java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:109:0x01f7, code lost:
    
        if (kawa.lib.characters.isChar$Eq(gnu.text.Char.make(r5), gnu.kawa.slib.pregexp.Lit47) == false) goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x01f9, code lost:
    
        r13 = kawa.lib.lists.cdr;
        r12 = r13.apply1(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0201, code lost:
    
        ((gnu.lists.Pair) r12).setCar(java.lang.Boolean.TRUE);
        r12 = r13.apply1(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x020c, code lost:
    
        ((gnu.lists.Pair) r12).setCar(gnu.kawa.functions.AddOp.$Pl.apply2(r4, gnu.kawa.slib.pregexp.Lit8));
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0217, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0218, code lost:
    
        r13 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x021e, code lost:
    
        throw new gnu.mapping.WrongType(r13, "set-car!", 1, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x021f, code lost:
    
        r13 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0225, code lost:
    
        throw new gnu.mapping.WrongType(r13, "set-car!", 1, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0226, code lost:
    
        r13 = kawa.lib.lists.cdr;
        r12 = r13.apply1(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x022e, code lost:
    
        ((gnu.lists.Pair) r12).setCar(r6);
        r12 = r13.apply1(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0237, code lost:
    
        ((gnu.lists.Pair) r12).setCar(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x023a, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x023b, code lost:
    
        r13 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0241, code lost:
    
        throw new gnu.mapping.WrongType(r13, "set-car!", 1, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0242, code lost:
    
        r13 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0248, code lost:
    
        throw new gnu.mapping.WrongType(r13, "set-car!", 1, r12);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object pregexpWrapQuantifierIfAny(java.lang.Object r12, java.lang.Object r13, java.lang.Object r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 614
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.pregexp.pregexpWrapQuantifierIfAny(java.lang.Object, java.lang.Object, java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0093  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object pregexpReadNums(java.lang.Object r11, java.lang.Object r12, java.lang.Object r13) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.pregexp.pregexpReadNums(java.lang.Object, java.lang.Object, java.lang.Object):java.lang.Object");
    }

    public static Object pregexpInvertCharList(Object obj) throws Throwable {
        Object objApply1 = lists.car.apply1(obj);
        try {
            ((Pair) objApply1).setCar(Lit79);
            return obj;
        } catch (ClassCastException e) {
            throw new WrongType(e, "set-car!", 1, objApply1);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x0150 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0110 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object pregexpReadCharList(java.lang.Object r11, java.lang.Object r12, java.lang.Object r13) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 498
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.pregexp.pregexpReadCharList(java.lang.Object, java.lang.Object, java.lang.Object):java.lang.Object");
    }

    public static Object pregexpStringMatch(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) throws Throwable {
        try {
            int iStringLength = strings.stringLength((CharSequence) obj);
            if (Scheme.numGrt.apply2(Integer.valueOf(iStringLength), obj4) != Boolean.FALSE) {
                return Scheme.applyToArgs.apply1(obj6);
            }
            Object objApply2 = Lit73;
            while (true) {
                NumberCompare numberCompare = Scheme.numGEq;
                Object objApply22 = numberCompare.apply2(objApply2, Integer.valueOf(iStringLength));
                Boolean bool = Boolean.FALSE;
                if (objApply22 != bool) {
                    return Scheme.applyToArgs.apply2(obj5, obj3);
                }
                if (numberCompare.apply2(obj3, obj4) != bool) {
                    return Scheme.applyToArgs.apply1(obj6);
                }
                try {
                    try {
                        try {
                            try {
                                if (!a.l((CharSequence) obj2, ((Number) obj3).intValue(), Char.make(strings.stringRef((CharSequence) obj, ((Number) objApply2).intValue())))) {
                                    return Scheme.applyToArgs.apply1(obj6);
                                }
                                AddOp addOp = AddOp.$Pl;
                                IntNum intNum = Lit8;
                                objApply2 = addOp.apply2(objApply2, intNum);
                                obj3 = addOp.apply2(obj3, intNum);
                            } catch (ClassCastException e) {
                                throw new WrongType(e, "string-ref", 2, obj3);
                            }
                        } catch (ClassCastException e2) {
                            throw new WrongType(e2, "string-ref", 1, obj2);
                        }
                    } catch (ClassCastException e3) {
                        throw new WrongType(e3, "string-ref", 2, objApply2);
                    }
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "string-ref", 1, obj);
                }
            }
        } catch (ClassCastException e5) {
            throw new WrongType(e5, "string-length", 1, obj);
        }
    }

    public static boolean isPregexpCharWord(Object obj) {
        try {
            boolean zIsCharAlphabetic = unicode.isCharAlphabetic((Char) obj);
            if (zIsCharAlphabetic) {
                return zIsCharAlphabetic;
            }
            try {
                boolean zIsCharNumeric = unicode.isCharNumeric((Char) obj);
                if (zIsCharNumeric) {
                    return zIsCharNumeric;
                }
                try {
                    return characters.isChar$Eq((Char) obj, Lit84);
                } catch (ClassCastException e) {
                    throw new WrongType(e, "char=?", 1, obj);
                }
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "char-numeric?", 1, obj);
            }
        } catch (ClassCastException e3) {
            throw new WrongType(e3, "char-alphabetic?", 1, obj);
        }
    }

    public static Object isPregexpAtWordBoundary(Object obj, Object obj2, Object obj3) throws Throwable {
        Object objApply2 = Scheme.numEqu.apply2(obj2, Lit73);
        try {
            boolean zBooleanValue = ((Boolean) objApply2).booleanValue();
            if (zBooleanValue) {
                return zBooleanValue ? Boolean.TRUE : Boolean.FALSE;
            }
            Object objApply22 = Scheme.numGEq.apply2(obj2, obj3);
            try {
                boolean zBooleanValue2 = ((Boolean) objApply22).booleanValue();
                if (zBooleanValue2) {
                    return zBooleanValue2 ? Boolean.TRUE : Boolean.FALSE;
                }
                try {
                    try {
                        char cStringRef = strings.stringRef((CharSequence) obj, ((Number) obj2).intValue());
                        try {
                            CharSequence charSequence = (CharSequence) obj;
                            Object objApply23 = AddOp.$Mn.apply2(obj2, Lit8);
                            try {
                                char cStringRef2 = strings.stringRef(charSequence, ((Number) objApply23).intValue());
                                Char charMake = Char.make(cStringRef);
                                SimpleSymbol simpleSymbol = Lit41;
                                Object objIsPregexpCheckIfInCharClass = isPregexpCheckIfInCharClass(charMake, simpleSymbol);
                                Object objIsPregexpCheckIfInCharClass2 = isPregexpCheckIfInCharClass(Char.make(cStringRef2), simpleSymbol);
                                Boolean bool = Boolean.FALSE;
                                Object obj4 = objIsPregexpCheckIfInCharClass != bool ? objIsPregexpCheckIfInCharClass2 != bool ? bool : Boolean.TRUE : objIsPregexpCheckIfInCharClass;
                                if (obj4 != bool) {
                                    return obj4;
                                }
                                int i = ((objIsPregexpCheckIfInCharClass != bool ? 1 : 0) + 1) & 1;
                                return i != 0 ? objIsPregexpCheckIfInCharClass2 : i != 0 ? Boolean.TRUE : bool;
                            } catch (ClassCastException e) {
                                throw new WrongType(e, "string-ref", 2, objApply23);
                            }
                        } catch (ClassCastException e2) {
                            throw new WrongType(e2, "string-ref", 1, obj);
                        }
                    } catch (ClassCastException e3) {
                        throw new WrongType(e3, "string-ref", 2, obj2);
                    }
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "string-ref", 1, obj);
                }
            } catch (ClassCastException e5) {
                throw new WrongType(e5, "x", -2, objApply22);
            }
        } catch (ClassCastException e6) {
            throw new WrongType(e6, "x", -2, objApply2);
        }
    }

    @Override // gnu.expr.ModuleBody
    public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 33) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 34) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i != 47) {
            return super.match2(moduleMethod, obj, obj2, callContext);
        }
        callContext.value1 = obj;
        callContext.value2 = obj2;
        callContext.proc = moduleMethod;
        callContext.pc = 2;
        return 0;
    }

    public static Object isPregexpCheckIfInCharClass(Object obj, Object obj2) {
        boolean z;
        IsEqv isEqv = Scheme.isEqv;
        Object objApply2 = isEqv.apply2(obj2, Lit14);
        Boolean bool = Boolean.FALSE;
        if (objApply2 != bool) {
            try {
                return characters.isChar$Eq((Char) obj, Lit24) ? bool : Boolean.TRUE;
            } catch (ClassCastException e) {
                throw new WrongType(e, "char=?", 1, obj);
            }
        }
        if (isEqv.apply2(obj2, Lit85) != bool) {
            try {
                boolean zIsCharAlphabetic = unicode.isCharAlphabetic((Char) obj);
                if (zIsCharAlphabetic) {
                    return zIsCharAlphabetic ? Boolean.TRUE : bool;
                }
                try {
                    return unicode.isCharNumeric((Char) obj) ? Boolean.TRUE : bool;
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "char-numeric?", 1, obj);
                }
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "char-alphabetic?", 1, obj);
            }
        }
        if (isEqv.apply2(obj2, Lit86) != bool) {
            try {
                return unicode.isCharAlphabetic((Char) obj) ? Boolean.TRUE : bool;
            } catch (ClassCastException e4) {
                throw new WrongType(e4, "char-alphabetic?", 1, obj);
            }
        }
        if (isEqv.apply2(obj2, Lit87) != bool) {
            try {
                return ((Char) obj).intValue() < 128 ? Boolean.TRUE : bool;
            } catch (ClassCastException e5) {
                throw new WrongType(e5, "char->integer", 1, obj);
            }
        }
        if (isEqv.apply2(obj2, Lit88) != bool) {
            try {
                boolean zIsChar$Eq = characters.isChar$Eq((Char) obj, Lit3);
                if (zIsChar$Eq) {
                    return zIsChar$Eq ? Boolean.TRUE : bool;
                }
                try {
                    Char r12 = (Char) obj;
                    Object obj3 = $Stpregexp$Mntab$Mnchar$St;
                    try {
                        return characters.isChar$Eq(r12, (Char) obj3) ? Boolean.TRUE : bool;
                    } catch (ClassCastException e6) {
                        throw new WrongType(e6, "char=?", 2, obj3);
                    }
                } catch (ClassCastException e7) {
                    throw new WrongType(e7, "char=?", 1, obj);
                }
            } catch (ClassCastException e8) {
                throw new WrongType(e8, "char=?", 1, obj);
            }
        }
        if (isEqv.apply2(obj2, Lit89) != bool) {
            try {
                return ((Char) obj).intValue() < 32 ? Boolean.TRUE : bool;
            } catch (ClassCastException e9) {
                throw new WrongType(e9, "char->integer", 1, obj);
            }
        }
        if (isEqv.apply2(obj2, Lit30) != bool) {
            try {
                return unicode.isCharNumeric((Char) obj) ? Boolean.TRUE : bool;
            } catch (ClassCastException e10) {
                throw new WrongType(e10, "char-numeric?", 1, obj);
            }
        }
        if (isEqv.apply2(obj2, Lit90) != bool) {
            try {
                z = ((Char) obj).intValue() >= 32;
                if (!z) {
                    return z ? Boolean.TRUE : bool;
                }
                try {
                    return unicode.isCharWhitespace((Char) obj) ? bool : Boolean.TRUE;
                } catch (ClassCastException e11) {
                    throw new WrongType(e11, "char-whitespace?", 1, obj);
                }
            } catch (ClassCastException e12) {
                throw new WrongType(e12, "char->integer", 1, obj);
            }
        }
        if (isEqv.apply2(obj2, Lit91) != bool) {
            try {
                return unicode.isCharLowerCase((Char) obj) ? Boolean.TRUE : bool;
            } catch (ClassCastException e13) {
                throw new WrongType(e13, "char-lower-case?", 1, obj);
            }
        }
        if (isEqv.apply2(obj2, Lit92) != bool) {
            try {
                return ((Char) obj).intValue() >= 32 ? Boolean.TRUE : bool;
            } catch (ClassCastException e14) {
                throw new WrongType(e14, "char->integer", 1, obj);
            }
        }
        if (isEqv.apply2(obj2, Lit93) != bool) {
            try {
                z = ((Char) obj).intValue() >= 32;
                if (!z) {
                    return z ? Boolean.TRUE : bool;
                }
                try {
                    int i = ((unicode.isCharWhitespace((Char) obj) ? 1 : 0) + 1) & 1;
                    if (i == 0) {
                        return i != 0 ? Boolean.TRUE : bool;
                    }
                    try {
                        int i2 = ((unicode.isCharAlphabetic((Char) obj) ? 1 : 0) + 1) & 1;
                        if (i2 == 0) {
                            return i2 != 0 ? Boolean.TRUE : bool;
                        }
                        try {
                            return unicode.isCharNumeric((Char) obj) ? bool : Boolean.TRUE;
                        } catch (ClassCastException e15) {
                            throw new WrongType(e15, "char-numeric?", 1, obj);
                        }
                    } catch (ClassCastException e16) {
                        throw new WrongType(e16, "char-alphabetic?", 1, obj);
                    }
                } catch (ClassCastException e17) {
                    throw new WrongType(e17, "char-whitespace?", 1, obj);
                }
            } catch (ClassCastException e18) {
                throw new WrongType(e18, "char->integer", 1, obj);
            }
        }
        if (isEqv.apply2(obj2, Lit36) != bool) {
            try {
                return unicode.isCharWhitespace((Char) obj) ? Boolean.TRUE : bool;
            } catch (ClassCastException e19) {
                throw new WrongType(e19, "char-whitespace?", 1, obj);
            }
        }
        if (isEqv.apply2(obj2, Lit94) != bool) {
            try {
                return unicode.isCharUpperCase((Char) obj) ? Boolean.TRUE : bool;
            } catch (ClassCastException e20) {
                throw new WrongType(e20, "char-upper-case?", 1, obj);
            }
        }
        if (isEqv.apply2(obj2, Lit41) != bool) {
            try {
                boolean zIsCharAlphabetic2 = unicode.isCharAlphabetic((Char) obj);
                if (zIsCharAlphabetic2) {
                    return zIsCharAlphabetic2 ? Boolean.TRUE : bool;
                }
                try {
                    boolean zIsCharNumeric = unicode.isCharNumeric((Char) obj);
                    if (zIsCharNumeric) {
                        return zIsCharNumeric ? Boolean.TRUE : bool;
                    }
                    try {
                        return characters.isChar$Eq((Char) obj, Lit84) ? Boolean.TRUE : bool;
                    } catch (ClassCastException e21) {
                        throw new WrongType(e21, "char=?", 1, obj);
                    }
                } catch (ClassCastException e22) {
                    throw new WrongType(e22, "char-numeric?", 1, obj);
                }
            } catch (ClassCastException e23) {
                throw new WrongType(e23, "char-alphabetic?", 1, obj);
            }
        }
        if (isEqv.apply2(obj2, Lit95) == bool) {
            return pregexpError$V(new Object[]{Lit99});
        }
        try {
            boolean zIsCharNumeric2 = unicode.isCharNumeric((Char) obj);
            if (zIsCharNumeric2) {
                return zIsCharNumeric2 ? Boolean.TRUE : bool;
            }
            try {
                boolean zIsCharCi$Eq = unicode.isCharCi$Eq((Char) obj, Lit2);
                if (zIsCharCi$Eq) {
                    return zIsCharCi$Eq ? Boolean.TRUE : bool;
                }
                try {
                    boolean zIsCharCi$Eq2 = unicode.isCharCi$Eq((Char) obj, Lit25);
                    if (zIsCharCi$Eq2) {
                        return zIsCharCi$Eq2 ? Boolean.TRUE : bool;
                    }
                    try {
                        boolean zIsCharCi$Eq3 = unicode.isCharCi$Eq((Char) obj, Lit96);
                        if (zIsCharCi$Eq3) {
                            return zIsCharCi$Eq3 ? Boolean.TRUE : bool;
                        }
                        try {
                            boolean zIsCharCi$Eq4 = unicode.isCharCi$Eq((Char) obj, Lit29);
                            if (zIsCharCi$Eq4) {
                                return zIsCharCi$Eq4 ? Boolean.TRUE : bool;
                            }
                            try {
                                boolean zIsCharCi$Eq5 = unicode.isCharCi$Eq((Char) obj, Lit97);
                                if (zIsCharCi$Eq5) {
                                    return zIsCharCi$Eq5 ? Boolean.TRUE : bool;
                                }
                                try {
                                    return unicode.isCharCi$Eq((Char) obj, Lit98) ? Boolean.TRUE : bool;
                                } catch (ClassCastException e24) {
                                    throw new WrongType(e24, "char-ci=?", 1, obj);
                                }
                            } catch (ClassCastException e25) {
                                throw new WrongType(e25, "char-ci=?", 1, obj);
                            }
                        } catch (ClassCastException e26) {
                            throw new WrongType(e26, "char-ci=?", 1, obj);
                        }
                    } catch (ClassCastException e27) {
                        throw new WrongType(e27, "char-ci=?", 1, obj);
                    }
                } catch (ClassCastException e28) {
                    throw new WrongType(e28, "char-ci=?", 1, obj);
                }
            } catch (ClassCastException e29) {
                throw new WrongType(e29, "char-ci=?", 1, obj);
            }
        } catch (ClassCastException e30) {
            throw new WrongType(e30, "char-numeric?", 1, obj);
        }
    }

    public static Object pregexpListRef(Object obj, Object obj2) throws Throwable {
        Object objApply2 = Lit73;
        while (!lists.isNull(obj)) {
            if (Scheme.numEqu.apply2(objApply2, obj2) != Boolean.FALSE) {
                return lists.car.apply1(obj);
            }
            obj = lists.cdr.apply1(obj);
            objApply2 = AddOp.$Pl.apply2(objApply2, Lit8);
        }
        return Boolean.FALSE;
    }

    public static Object pregexpMakeBackrefList(Object obj) {
        return lambda1sub(obj);
    }

    public static Object lambda1sub(Object obj) throws Throwable {
        if (!lists.isPair(obj)) {
            return LList.Empty;
        }
        Object objApply1 = lists.car.apply1(obj);
        Object objLambda1sub = lambda1sub(lists.cdr.apply1(obj));
        Object objApply2 = Scheme.isEqv.apply2(objApply1, Lit100);
        Boolean bool = Boolean.FALSE;
        return objApply2 != bool ? lists.cons(lists.cons(obj, bool), objLambda1sub) : append.append$V(new Object[]{lambda1sub(objApply1), objLambda1sub});
    }

    public class frame extends ModuleBody {
        Object backrefs;
        Object case$Mnsensitive$Qu;
        Procedure identity;
        Object n;
        Object s;
        Object sn;
        Object start;

        public frame() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 15, pregexp.Lit112, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:460");
            this.identity = moduleMethod;
        }

        public static Object lambda2identity(Object obj) {
            return obj;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 15 ? lambda2identity(obj) : super.apply1(moduleMethod, obj);
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

        public static Boolean lambda4() {
            return Boolean.FALSE;
        }

        /* JADX WARN: Code restructure failed: missing block: B:230:0x04c0, code lost:
        
            r5.old = r13.case$Mnsensitive$Qu;
            r13.case$Mnsensitive$Qu = r6.apply2(r14.apply1(r5.re$1), r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:231:0x04e2, code lost:
        
            return lambda3sub(kawa.lib.lists.cadr.apply1(r5.re$1), r5.i, r5.lambda$Fn11, r5.lambda$Fn12);
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x00f3, code lost:
        
            if (r13.case$Mnsensitive$Qu == r7) goto L47;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x00f5, code lost:
        
            r14 = kawa.lib.characters.char$Eq$Qu;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x00f8, code lost:
        
            r14 = kawa.lib.rnrs.unicode.char$Mnci$Eq$Qu;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x00fa, code lost:
        
            r1 = r13.s;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x00fc, code lost:
        
            r1 = (java.lang.CharSequence) r1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x00fe, code lost:
        
            r3 = r5.i;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x0115, code lost:
        
            if (r14.apply2(gnu.text.Char.make(kawa.lib.strings.stringRef(r1, ((java.lang.Number) r3).intValue())), r5.re$1) == r7) goto L56;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x0129, code lost:
        
            return kawa.standard.Scheme.applyToArgs.apply2(r5.sk, gnu.kawa.functions.AddOp.$Pl.apply2(r5.i, gnu.kawa.slib.pregexp.Lit8));
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x0132, code lost:
        
            return kawa.standard.Scheme.applyToArgs.apply1(r5.fk);
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x0133, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x013a, code lost:
        
            throw new gnu.mapping.WrongType(r0, "string-ref", 2, r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x013b, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x0142, code lost:
        
            throw new gnu.mapping.WrongType(r0, "string-ref", 1, r1);
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:122:0x0242  */
        /* JADX WARN: Removed duplicated region for block: B:234:0x04eb  */
        /* JADX WARN: Removed duplicated region for block: B:245:0x0533  */
        /* JADX WARN: Removed duplicated region for block: B:247:0x053e  */
        /* JADX WARN: Removed duplicated region for block: B:88:0x01ac  */
        /* JADX WARN: Removed duplicated region for block: B:95:0x01cc A[ADDED_TO_REGION] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object lambda3sub(java.lang.Object r14, java.lang.Object r15, java.lang.Object r16, java.lang.Object r17) throws java.lang.Throwable {
            /*
                Method dump skipped, instructions count: 1374
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.pregexp.frame.lambda3sub(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object):java.lang.Object");
        }
    }

    public static Object pregexpMatchPositionsAux(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) throws Throwable {
        frame frameVar = new frame();
        frameVar.s = obj2;
        frameVar.sn = obj3;
        frameVar.start = obj4;
        frameVar.n = obj5;
        Procedure procedure = frameVar.identity;
        Object objPregexpMakeBackrefList = pregexpMakeBackrefList(obj);
        frameVar.case$Mnsensitive$Qu = Boolean.TRUE;
        frameVar.backrefs = objPregexpMakeBackrefList;
        frameVar.identity = procedure;
        frameVar.lambda3sub(obj, obj6, procedure, lambda$Fn1);
        Object obj7 = frameVar.backrefs;
        Object objMake = LList.Empty;
        while (obj7 != LList.Empty) {
            try {
                Pair pair = (Pair) obj7;
                Object cdr = pair.getCdr();
                objMake = Pair.make(lists.cdr.apply1(pair.getCar()), objMake);
                obj7 = cdr;
            } catch (ClassCastException e) {
                throw new WrongType(e, "arg0", -2, obj7);
            }
        }
        LList lListReverseInPlace = LList.reverseInPlace(objMake);
        Object objApply1 = lists.car.apply1(lListReverseInPlace);
        return objApply1 != Boolean.FALSE ? lListReverseInPlace : objApply1;
    }

    @Override // gnu.expr.ModuleBody
    public int match0(ModuleMethod moduleMethod, CallContext callContext) {
        switch (moduleMethod.selector) {
            case 36:
                callContext.proc = moduleMethod;
                callContext.pc = 0;
                return 0;
            case 37:
                callContext.proc = moduleMethod;
                callContext.pc = 0;
                return 0;
            case 38:
                callContext.proc = moduleMethod;
                callContext.pc = 0;
                return 0;
            case 39:
                callContext.proc = moduleMethod;
                callContext.pc = 0;
                return 0;
            case 40:
                callContext.proc = moduleMethod;
                callContext.pc = 0;
                return 0;
            case 41:
                callContext.proc = moduleMethod;
                callContext.pc = 0;
                return 0;
            default:
                return super.match0(moduleMethod, callContext);
        }
    }

    public class frame0 extends ModuleBody {
        boolean could$Mnloop$Mninfinitely$Qu;
        Object fk;
        Object i;
        final ModuleMethod lambda$Fn11;
        final ModuleMethod lambda$Fn12;
        final ModuleMethod lambda$Fn2;
        final ModuleMethod lambda$Fn3;
        final ModuleMethod lambda$Fn4;
        final ModuleMethod lambda$Fn5;
        boolean maximal$Qu;
        Object old;
        Object p;
        Object q;
        Object re;
        Object re$1;
        Object sk;
        frame staticLink;

        public frame0() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 9, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:513");
            this.lambda$Fn2 = moduleMethod;
            ModuleMethod moduleMethod2 = new ModuleMethod(this, 10, null, 0);
            moduleMethod2.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:514");
            this.lambda$Fn3 = moduleMethod2;
            ModuleMethod moduleMethod3 = new ModuleMethod(this, 11, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod3.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:541");
            this.lambda$Fn4 = moduleMethod3;
            ModuleMethod moduleMethod4 = new ModuleMethod(this, 12, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod4.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:545");
            this.lambda$Fn5 = moduleMethod4;
            ModuleMethod moduleMethod5 = new ModuleMethod(this, 13, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod5.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:587");
            this.lambda$Fn11 = moduleMethod5;
            ModuleMethod moduleMethod6 = new ModuleMethod(this, 14, null, 0);
            moduleMethod6.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:590");
            this.lambda$Fn12 = moduleMethod6;
        }

        public Object lambda5loupOneOfChars(Object obj) {
            frame1 frame1Var = new frame1();
            frame1Var.staticLink = this;
            frame1Var.chars = obj;
            return lists.isNull(obj) ? Scheme.applyToArgs.apply1(this.fk) : this.staticLink.lambda3sub(lists.car.apply1(frame1Var.chars), this.i, this.sk, frame1Var.lambda$Fn13);
        }

        public Object lambda9(Object obj) {
            return Scheme.applyToArgs.apply1(this.fk);
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            switch (moduleMethod.selector) {
                case 9:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 10:
                default:
                    return super.match1(moduleMethod, obj, callContext);
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
            }
        }

        public Object lambda10() {
            return Scheme.applyToArgs.apply2(this.sk, AddOp.$Pl.apply2(this.i, pregexp.Lit8));
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            int i = moduleMethod.selector;
            if (i == 10) {
                callContext.proc = moduleMethod;
                callContext.pc = 0;
                return 0;
            }
            if (i != 14) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        public Object lambda6loupSeq(Object obj, Object obj2) {
            frame2 frame2Var = new frame2();
            frame2Var.staticLink = this;
            frame2Var.res = obj;
            return lists.isNull(obj) ? Scheme.applyToArgs.apply2(this.sk, obj2) : this.staticLink.lambda3sub(lists.car.apply1(frame2Var.res), obj2, frame2Var.lambda$Fn14, this.fk);
        }

        public Object lambda7loupOr(Object obj) {
            frame3 frame3Var = new frame3();
            frame3Var.staticLink = this;
            frame3Var.res = obj;
            return lists.isNull(obj) ? Scheme.applyToArgs.apply1(this.fk) : this.staticLink.lambda3sub(lists.car.apply1(frame3Var.res), this.i, frame3Var.lambda$Fn15, frame3Var.lambda$Fn16);
        }

        public Object lambda11(Object obj) {
            return Scheme.applyToArgs.apply2(this.sk, obj);
        }

        public Object lambda12(Object obj) throws Throwable {
            Object objAssv = lists.assv(this.re$1, this.staticLink.backrefs);
            try {
                ((Pair) objAssv).setCdr(lists.cons(this.i, obj));
                return Scheme.applyToArgs.apply2(this.sk, obj);
            } catch (ClassCastException e) {
                throw new WrongType(e, "set-cdr!", 1, objAssv);
            }
        }

        public static Boolean lambda13() {
            return Boolean.FALSE;
        }

        public static Boolean lambda14() {
            return Boolean.FALSE;
        }

        public static Boolean lambda15() {
            return Boolean.FALSE;
        }

        public static Boolean lambda16() {
            return Boolean.FALSE;
        }

        public static Boolean lambda17() {
            return Boolean.FALSE;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            switch (moduleMethod.selector) {
                case 9:
                    return lambda9(obj);
                case 10:
                default:
                    return super.apply1(moduleMethod, obj);
                case 11:
                    return lambda11(obj);
                case 12:
                    return lambda12(obj);
                case 13:
                    return lambda18(obj);
            }
        }

        public Object lambda18(Object obj) {
            this.staticLink.case$Mnsensitive$Qu = this.old;
            return Scheme.applyToArgs.apply2(this.sk, obj);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            int i = moduleMethod.selector;
            if (i != 10) {
                return i != 14 ? super.apply0(moduleMethod) : lambda19();
            }
            return lambda10();
        }

        public Object lambda19() {
            this.staticLink.case$Mnsensitive$Qu = this.old;
            return Scheme.applyToArgs.apply1(this.fk);
        }

        public Object lambda8loupP(Object obj, Object obj2) throws Throwable {
            frame4 frame4Var = new frame4();
            frame4Var.staticLink = this;
            frame4Var.k = obj;
            frame4Var.i = obj2;
            Object objApply2 = Scheme.numLss.apply2(obj, this.p);
            Boolean bool = Boolean.FALSE;
            if (objApply2 != bool) {
                return this.staticLink.lambda3sub(this.re, frame4Var.i, frame4Var.lambda$Fn17, this.fk);
            }
            Object objApply22 = this.q;
            if (objApply22 != bool) {
                objApply22 = AddOp.$Mn.apply2(objApply22, this.p);
            }
            frame4Var.q = objApply22;
            return frame4Var.lambda24loupQ(pregexp.Lit73, frame4Var.i);
        }
    }

    public class frame1 extends ModuleBody {
        Object chars;
        final ModuleMethod lambda$Fn13;
        frame0 staticLink;

        public frame1() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 1, null, 0);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:508");
            this.lambda$Fn13 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 1 ? lambda20() : super.apply0(moduleMethod);
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

        public Object lambda20() {
            return this.staticLink.lambda5loupOneOfChars(lists.cdr.apply1(this.chars));
        }
    }

    public class frame2 extends ModuleBody {
        final ModuleMethod lambda$Fn14;
        Object res;
        frame0 staticLink;

        public frame2() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 2, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:519");
            this.lambda$Fn14 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 2 ? lambda21(obj) : super.apply1(moduleMethod, obj);
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

        public Object lambda21(Object obj) {
            return this.staticLink.lambda6loupSeq(lists.cdr.apply1(this.res), obj);
        }
    }

    public class frame3 extends ModuleBody {
        final ModuleMethod lambda$Fn15;
        final ModuleMethod lambda$Fn16;
        Object res;
        frame0 staticLink;

        public frame3() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 3, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:526");
            this.lambda$Fn15 = moduleMethod;
            ModuleMethod moduleMethod2 = new ModuleMethod(this, 4, null, 0);
            moduleMethod2.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:529");
            this.lambda$Fn16 = moduleMethod2;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 3 ? lambda22(obj) : super.apply1(moduleMethod, obj);
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 3) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }

        public Object lambda22(Object obj) throws Throwable {
            Object objApply2 = Scheme.applyToArgs.apply2(this.staticLink.sk, obj);
            return objApply2 != Boolean.FALSE ? objApply2 : this.staticLink.lambda7loupOr(lists.cdr.apply1(this.res));
        }

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 4 ? lambda23() : super.apply0(moduleMethod);
        }

        public Object lambda23() {
            return this.staticLink.lambda7loupOr(lists.cdr.apply1(this.res));
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 4) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object apply0(ModuleMethod moduleMethod) {
        switch (moduleMethod.selector) {
            case 36:
                return frame.lambda4();
            case 37:
                return frame0.lambda13();
            case 38:
                return frame0.lambda14();
            case 39:
                return frame0.lambda15();
            case 40:
                return frame0.lambda16();
            case 41:
                return frame0.lambda17();
            default:
                return super.apply0(moduleMethod);
        }
    }

    public class frame4 extends ModuleBody {
        Object i;
        Object k;
        final ModuleMethod lambda$Fn17;
        Object q;
        frame0 staticLink;

        public frame4() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 8, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:602");
            this.lambda$Fn17 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 8 ? lambda25(obj) : super.apply1(moduleMethod, obj);
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

        public Object lambda25(Object obj) {
            boolean z = this.staticLink.could$Mnloop$Mninfinitely$Qu;
            if (!z ? z : Scheme.numEqu.apply2(obj, this.i) != Boolean.FALSE) {
                pregexp.pregexpError$V(new Object[]{pregexp.Lit101, pregexp.Lit110});
            }
            return this.staticLink.lambda8loupP(AddOp.$Pl.apply2(this.k, pregexp.Lit8), obj);
        }

        public Object lambda24loupQ(Object obj, Object obj2) {
            frame5 frame5Var = new frame5();
            frame5Var.staticLink = this;
            frame5Var.k = obj;
            frame5Var.i = obj2;
            frame5Var.fk = frame5Var.fk;
            Object obj3 = this.q;
            Boolean bool = Boolean.FALSE;
            if (obj3 == bool ? obj3 != bool : Scheme.numGEq.apply2(obj, obj3) != bool) {
                return frame5Var.lambda26fk();
            }
            frame0 frame0Var = this.staticLink;
            if (frame0Var.maximal$Qu) {
                return frame0Var.staticLink.lambda3sub(frame0Var.re, frame5Var.i, frame5Var.lambda$Fn18, frame5Var.fk);
            }
            Object objLambda26fk = frame5Var.lambda26fk();
            if (objLambda26fk != bool) {
                return objLambda26fk;
            }
            frame0 frame0Var2 = this.staticLink;
            return frame0Var2.staticLink.lambda3sub(frame0Var2.re, frame5Var.i, frame5Var.lambda$Fn19, frame5Var.fk);
        }
    }

    public class frame5 extends ModuleBody {
        Procedure fk;
        Object i;
        Object k;
        final ModuleMethod lambda$Fn18;
        final ModuleMethod lambda$Fn19;
        frame4 staticLink;

        public frame5() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 5, pregexp.Lit111, 0);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:612");
            this.fk = moduleMethod;
            ModuleMethod moduleMethod2 = new ModuleMethod(this, 6, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod2.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:617");
            this.lambda$Fn18 = moduleMethod2;
            ModuleMethod moduleMethod3 = new ModuleMethod(this, 7, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod3.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:628");
            this.lambda$Fn19 = moduleMethod3;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 5 ? lambda26fk() : super.apply0(moduleMethod);
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

        public Object lambda26fk() {
            return Scheme.applyToArgs.apply2(this.staticLink.staticLink.sk, this.i);
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            int i = moduleMethod.selector;
            if (i == 6) {
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            }
            if (i != 7) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }

        public Object lambda27(Object obj) {
            boolean z = this.staticLink.staticLink.could$Mnloop$Mninfinitely$Qu;
            if (!z ? z : Scheme.numEqu.apply2(obj, this.i) != Boolean.FALSE) {
                pregexp.pregexpError$V(new Object[]{pregexp.Lit101, pregexp.Lit110});
            }
            Object objLambda24loupQ = this.staticLink.lambda24loupQ(AddOp.$Pl.apply2(this.k, pregexp.Lit8), obj);
            return objLambda24loupQ != Boolean.FALSE ? objLambda24loupQ : lambda26fk();
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            int i = moduleMethod.selector;
            if (i != 6) {
                return i != 7 ? super.apply1(moduleMethod, obj) : lambda28(obj);
            }
            return lambda27(obj);
        }

        public Object lambda28(Object obj) {
            return this.staticLink.lambda24loupQ(AddOp.$Pl.apply2(this.k, pregexp.Lit8), obj);
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object apply4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4) {
        return moduleMethod.selector == 43 ? pregexpReplaceAux(obj, obj2, obj3, obj4) : super.apply4(moduleMethod, obj, obj2, obj3, obj4);
    }

    @Override // gnu.expr.ModuleBody
    public int match4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4, CallContext callContext) {
        if (moduleMethod.selector != 43) {
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

    public static Object pregexpReplaceAux(Object obj, Object obj2, Object obj3, Object obj4) throws Throwable {
        Object objApply1;
        Object objApply2 = Lit73;
        Object objStringAppend = "";
        while (true) {
            Object objApply22 = Scheme.numGEq.apply2(objApply2, obj3);
            Boolean bool = Boolean.FALSE;
            if (objApply22 != bool) {
                return objStringAppend;
            }
            try {
                try {
                    char cStringRef = strings.stringRef((CharSequence) obj2, ((Number) objApply2).intValue());
                    if (characters.isChar$Eq(Char.make(cStringRef), Lit19)) {
                        Object objPregexpReadEscapedNumber = pregexpReadEscapedNumber(obj2, objApply2, obj3);
                        if (objPregexpReadEscapedNumber != bool) {
                            objApply1 = lists.car.apply1(objPregexpReadEscapedNumber);
                        } else {
                            try {
                                CharSequence charSequence = (CharSequence) obj2;
                                Object objApply23 = AddOp.$Pl.apply2(objApply2, Lit8);
                                try {
                                    objApply1 = characters.isChar$Eq(Char.make(strings.stringRef(charSequence, ((Number) objApply23).intValue())), Lit113) ? Lit73 : bool;
                                } catch (ClassCastException e) {
                                    throw new WrongType(e, "string-ref", 2, objApply23);
                                }
                            } catch (ClassCastException e2) {
                                throw new WrongType(e2, "string-ref", 1, obj2);
                            }
                        }
                        if (objPregexpReadEscapedNumber != bool) {
                            objApply2 = lists.cadr.apply1(objPregexpReadEscapedNumber);
                        } else if (objApply1 != bool) {
                            objApply2 = AddOp.$Pl.apply2(objApply2, Lit16);
                        } else {
                            objApply2 = AddOp.$Pl.apply2(objApply2, Lit8);
                        }
                        if (objApply1 == bool) {
                            try {
                                try {
                                    char cStringRef2 = strings.stringRef((CharSequence) obj2, ((Number) objApply2).intValue());
                                    objApply2 = AddOp.$Pl.apply2(objApply2, Lit8);
                                    if (!characters.isChar$Eq(Char.make(cStringRef2), Lit11)) {
                                        objStringAppend = strings.stringAppend(objStringAppend, strings.$make$string$(Char.make(cStringRef2)));
                                    }
                                } catch (ClassCastException e3) {
                                    throw new WrongType(e3, "string-ref", 2, objApply2);
                                }
                            } catch (ClassCastException e4) {
                                throw new WrongType(e4, "string-ref", 1, obj2);
                            }
                        } else {
                            Object objPregexpListRef = pregexpListRef(obj4, objApply1);
                            if (objPregexpListRef != bool) {
                                try {
                                    CharSequence charSequence2 = (CharSequence) obj;
                                    Object objApply12 = lists.car.apply1(objPregexpListRef);
                                    try {
                                        int iIntValue = ((Number) objApply12).intValue();
                                        Object objApply13 = lists.cdr.apply1(objPregexpListRef);
                                        try {
                                            objStringAppend = strings.stringAppend(objStringAppend, strings.substring(charSequence2, iIntValue, ((Number) objApply13).intValue()));
                                        } catch (ClassCastException e5) {
                                            throw new WrongType(e5, "substring", 3, objApply13);
                                        }
                                    } catch (ClassCastException e6) {
                                        throw new WrongType(e6, "substring", 2, objApply12);
                                    }
                                } catch (ClassCastException e7) {
                                    throw new WrongType(e7, "substring", 1, obj);
                                }
                            } else {
                                continue;
                            }
                        }
                    } else {
                        objApply2 = AddOp.$Pl.apply2(objApply2, Lit8);
                        objStringAppend = strings.stringAppend(objStringAppend, strings.$make$string$(Char.make(cStringRef)));
                    }
                } catch (ClassCastException e8) {
                    throw new WrongType(e8, "string-ref", 2, objApply2);
                }
            } catch (ClassCastException e9) {
                throw new WrongType(e9, "string-ref", 1, obj2);
            }
        }
    }

    public static Pair pregexp(Object obj) {
        $Stpregexp$Mnspace$Mnsensitive$Qu$St = Boolean.TRUE;
        try {
            return LList.list2(Lit100, lists.car.apply1(pregexpReadPattern(obj, Lit73, Integer.valueOf(strings.stringLength((CharSequence) obj)))));
        } catch (ClassCastException e) {
            throw new WrongType(e, "string-length", 1, obj);
        }
    }

    public static Object pregexpMatchPositions$V(Object obj, Object obj2, Object[] objArr) throws Throwable {
        Object objApply1;
        LList lListMakeList = LList.makeList(objArr, 0);
        if (strings.isString(obj)) {
            obj = pregexp(obj);
        } else if (!lists.isPair(obj)) {
            pregexpError$V(new Object[]{Lit114, Lit115, obj});
        }
        Object obj3 = obj;
        try {
            int iStringLength = strings.stringLength((CharSequence) obj2);
            if (lists.isNull(lListMakeList)) {
                objApply1 = Lit73;
            } else {
                objApply1 = lists.car.apply1(lListMakeList);
                Object objApply12 = lists.cdr.apply1(lListMakeList);
                try {
                    lListMakeList = (LList) objApply12;
                } catch (ClassCastException e) {
                    throw new WrongType(e, "opt-args", -2, objApply12);
                }
            }
            Object obj4 = objApply1;
            Object objValueOf = lists.isNull(lListMakeList) ? Integer.valueOf(iStringLength) : lists.car.apply1(lListMakeList);
            Object objApply2 = obj4;
            while (true) {
                Object objApply22 = Scheme.numLEq.apply2(objApply2, objValueOf);
                try {
                    boolean zBooleanValue = ((Boolean) objApply22).booleanValue();
                    if (!zBooleanValue) {
                        return zBooleanValue ? Boolean.TRUE : Boolean.FALSE;
                    }
                    Object obj5 = obj2;
                    Object objPregexpMatchPositionsAux = pregexpMatchPositionsAux(obj3, obj5, Integer.valueOf(iStringLength), obj4, objValueOf, objApply2);
                    if (objPregexpMatchPositionsAux != Boolean.FALSE) {
                        return objPregexpMatchPositionsAux;
                    }
                    objApply2 = AddOp.$Pl.apply2(objApply2, Lit8);
                    obj2 = obj5;
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "x", -2, objApply22);
                }
            }
        } catch (ClassCastException e3) {
            throw new WrongType(e3, "string-length", 1, obj2);
        }
    }

    public static Object pregexpMatch$V(Object obj, Object obj2, Object[] objArr) throws Throwable {
        Object objApply4 = Scheme.apply.apply4(pregexp$Mnmatch$Mnpositions, obj, obj2, LList.makeList(objArr, 0));
        if (objApply4 == Boolean.FALSE) {
            return objApply4;
        }
        Object objMake = LList.Empty;
        while (objApply4 != LList.Empty) {
            try {
                Pair pair = (Pair) objApply4;
                Object cdr = pair.getCdr();
                Object car = pair.getCar();
                if (car != Boolean.FALSE) {
                    try {
                        CharSequence charSequence = (CharSequence) obj2;
                        Object objApply1 = lists.car.apply1(car);
                        try {
                            int iIntValue = ((Number) objApply1).intValue();
                            Object objApply12 = lists.cdr.apply1(car);
                            try {
                                car = strings.substring(charSequence, iIntValue, ((Number) objApply12).intValue());
                            } catch (ClassCastException e) {
                                throw new WrongType(e, "substring", 3, objApply12);
                            }
                        } catch (ClassCastException e2) {
                            throw new WrongType(e2, "substring", 2, objApply1);
                        }
                    } catch (ClassCastException e3) {
                        throw new WrongType(e3, "substring", 1, obj2);
                    }
                }
                objMake = Pair.make(car, objMake);
                objApply4 = cdr;
            } catch (ClassCastException e4) {
                throw new WrongType(e4, "arg0", -2, objApply4);
            }
        }
        return LList.reverseInPlace(objMake);
    }

    @Override // gnu.expr.ModuleBody
    public Object applyN(ModuleMethod moduleMethod, Object[] objArr) {
        int i = moduleMethod.selector;
        if (i == 17) {
            return pregexpError$V(objArr);
        }
        if (i == 30) {
            return pregexpStringMatch(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5]);
        }
        if (i == 42) {
            return pregexpMatchPositionsAux(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5]);
        }
        if (i == 45) {
            Object obj = objArr[0];
            Object obj2 = objArr[1];
            int length = objArr.length - 2;
            Object[] objArr2 = new Object[length];
            while (true) {
                int i2 = length - 1;
                if (i2 < 0) {
                    return pregexpMatchPositions$V(obj, obj2, objArr2);
                }
                objArr2[i2] = objArr[length + 1];
                length = i2;
            }
        } else {
            if (i != 46) {
                return super.applyN(moduleMethod, objArr);
            }
            Object obj3 = objArr[0];
            Object obj4 = objArr[1];
            int length2 = objArr.length - 2;
            Object[] objArr3 = new Object[length2];
            while (true) {
                int i3 = length2 - 1;
                if (i3 < 0) {
                    return pregexpMatch$V(obj3, obj4, objArr3);
                }
                objArr3[i3] = objArr[length2 + 1];
                length2 = i3;
            }
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
        int i = moduleMethod.selector;
        if (i == 33) {
            return isPregexpCheckIfInCharClass(obj, obj2);
        }
        if (i != 34) {
            return i != 47 ? super.apply2(moduleMethod, obj, obj2) : pregexpSplit(obj, obj2);
        }
        return pregexpListRef(obj, obj2);
    }

    public static Object pregexpSplit(Object obj, Object obj2) throws Throwable {
        try {
            int iStringLength = strings.stringLength((CharSequence) obj2);
            Object obj3 = Lit73;
            LList lListCons = LList.Empty;
            Boolean bool = Boolean.FALSE;
            while (true) {
                Object objApply2 = Scheme.numGEq.apply2(obj3, Integer.valueOf(iStringLength));
                Boolean bool2 = Boolean.FALSE;
                if (objApply2 != bool2) {
                    return pregexpReverse$Ex(lListCons);
                }
                Object objPregexpMatchPositions$V = pregexpMatchPositions$V(obj, obj2, new Object[]{obj3, Integer.valueOf(iStringLength)});
                if (objPregexpMatchPositions$V != bool2) {
                    GenericProc genericProc = lists.car;
                    Object objApply1 = genericProc.apply1(objPregexpMatchPositions$V);
                    Object objApply12 = genericProc.apply1(objApply1);
                    Object objApply13 = lists.cdr.apply1(objApply1);
                    NumberCompare numberCompare = Scheme.numEqu;
                    if (numberCompare.apply2(objApply12, objApply13) != bool2) {
                        AddOp addOp = AddOp.$Pl;
                        IntNum intNum = Lit8;
                        Object objApply22 = addOp.apply2(objApply13, intNum);
                        try {
                            CharSequence charSequence = (CharSequence) obj2;
                            try {
                                int iIntValue = ((Number) obj3).intValue();
                                Object objApply23 = addOp.apply2(objApply12, intNum);
                                try {
                                    lListCons = lists.cons(strings.substring(charSequence, iIntValue, ((Number) objApply23).intValue()), lListCons);
                                    bool = Boolean.TRUE;
                                    obj3 = objApply22;
                                } catch (ClassCastException e) {
                                    throw new WrongType(e, "substring", 3, objApply23);
                                }
                            } catch (ClassCastException e2) {
                                throw new WrongType(e2, "substring", 2, obj3);
                            }
                        } catch (ClassCastException e3) {
                            throw new WrongType(e3, "substring", 1, obj2);
                        }
                    } else {
                        Object objApply24 = numberCompare.apply2(objApply12, obj3);
                        try {
                            boolean zBooleanValue = ((Boolean) objApply24).booleanValue();
                            if (!zBooleanValue ? !zBooleanValue : bool == bool2) {
                                try {
                                    try {
                                        try {
                                            lListCons = lists.cons(strings.substring((CharSequence) obj2, ((Number) obj3).intValue(), ((Number) objApply12).intValue()), lListCons);
                                        } catch (ClassCastException e4) {
                                            throw new WrongType(e4, "substring", 3, objApply12);
                                        }
                                    } catch (ClassCastException e5) {
                                        throw new WrongType(e5, "substring", 2, obj3);
                                    }
                                } catch (ClassCastException e6) {
                                    throw new WrongType(e6, "substring", 1, obj2);
                                }
                            }
                            obj3 = objApply13;
                        } catch (ClassCastException e7) {
                            throw new WrongType(e7, "x", -2, objApply24);
                        }
                    }
                } else {
                    Object objValueOf = Integer.valueOf(iStringLength);
                    try {
                        try {
                            lListCons = lists.cons(strings.substring((CharSequence) obj2, ((Number) obj3).intValue(), iStringLength), lListCons);
                            obj3 = objValueOf;
                        } catch (ClassCastException e8) {
                            throw new WrongType(e8, "substring", 2, obj3);
                        }
                    } catch (ClassCastException e9) {
                        throw new WrongType(e9, "substring", 1, obj2);
                    }
                }
                bool = bool2;
            }
        } catch (ClassCastException e10) {
            throw new WrongType(e10, "string-length", 1, obj2);
        }
    }

    public static Object pregexpReplace(Object obj, Object obj2, Object obj3) throws Throwable {
        try {
            int iStringLength = strings.stringLength((CharSequence) obj2);
            Object objPregexpMatchPositions$V = pregexpMatchPositions$V(obj, obj2, new Object[]{Lit73, Integer.valueOf(iStringLength)});
            if (objPregexpMatchPositions$V == Boolean.FALSE) {
                return obj2;
            }
            try {
                int iStringLength2 = strings.stringLength((CharSequence) obj3);
                Object objApply1 = lists.caar.apply1(objPregexpMatchPositions$V);
                Object objApply12 = lists.cdar.apply1(objPregexpMatchPositions$V);
                try {
                    try {
                        try {
                            try {
                                return strings.stringAppend(strings.substring((CharSequence) obj2, 0, ((Number) objApply1).intValue()), pregexpReplaceAux(obj2, obj3, Integer.valueOf(iStringLength2), objPregexpMatchPositions$V), strings.substring((CharSequence) obj2, ((Number) objApply12).intValue(), iStringLength));
                            } catch (ClassCastException e) {
                                throw new WrongType(e, "substring", 2, objApply12);
                            }
                        } catch (ClassCastException e2) {
                            throw new WrongType(e2, "substring", 1, obj2);
                        }
                    } catch (ClassCastException e3) {
                        throw new WrongType(e3, "substring", 3, objApply1);
                    }
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "substring", 1, obj2);
                }
            } catch (ClassCastException e5) {
                throw new WrongType(e5, "string-length", 1, obj3);
            }
        } catch (ClassCastException e6) {
            throw new WrongType(e6, "string-length", 1, obj2);
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
        int i = moduleMethod.selector;
        if (i == 29) {
            return pregexpReadCharList(obj, obj2, obj3);
        }
        if (i == 32) {
            return isPregexpAtWordBoundary(obj, obj2, obj3);
        }
        if (i == 48) {
            return pregexpReplace(obj, obj2, obj3);
        }
        if (i != 49) {
            switch (i) {
                case 18:
                    return pregexpReadPattern(obj, obj2, obj3);
                case 19:
                    return pregexpReadBranch(obj, obj2, obj3);
                case 20:
                    return pregexpReadPiece(obj, obj2, obj3);
                case 21:
                    return pregexpReadEscapedNumber(obj, obj2, obj3);
                case 22:
                    return pregexpReadEscapedChar(obj, obj2, obj3);
                case 23:
                    return pregexpReadPosixCharClass(obj, obj2, obj3);
                case 24:
                    return pregexpReadClusterType(obj, obj2, obj3);
                case 25:
                    return pregexpReadSubpattern(obj, obj2, obj3);
                case 26:
                    return pregexpWrapQuantifierIfAny(obj, obj2, obj3);
                case 27:
                    return pregexpReadNums(obj, obj2, obj3);
                default:
                    return super.apply3(moduleMethod, obj, obj2, obj3);
            }
        }
        return pregexpReplace$St(obj, obj2, obj3);
    }

    public static Object pregexpReplace$St(Object obj, Object obj2, Object obj3) throws Throwable {
        Object objPregexp = strings.isString(obj) ? pregexp(obj) : obj;
        try {
            int iStringLength = strings.stringLength((CharSequence) obj2);
            try {
                int iStringLength2 = strings.stringLength((CharSequence) obj3);
                Object obj4 = Lit73;
                Object objStringAppend = "";
                while (true) {
                    Object objApply2 = Scheme.numGEq.apply2(obj4, Integer.valueOf(iStringLength));
                    Boolean bool = Boolean.FALSE;
                    if (objApply2 != bool) {
                        return objStringAppend;
                    }
                    Object objPregexpMatchPositions$V = pregexpMatchPositions$V(objPregexp, obj2, new Object[]{obj4, Integer.valueOf(iStringLength)});
                    if (objPregexpMatchPositions$V == bool) {
                        if (Scheme.numEqu.apply2(obj4, Lit73) != bool) {
                            return obj2;
                        }
                        try {
                            try {
                                return strings.stringAppend(objStringAppend, strings.substring((CharSequence) obj2, ((Number) obj4).intValue(), iStringLength));
                            } catch (ClassCastException e) {
                                throw new WrongType(e, "substring", 2, obj4);
                            }
                        } catch (ClassCastException e2) {
                            throw new WrongType(e2, "substring", 1, obj2);
                        }
                    }
                    Object objApply1 = lists.cdar.apply1(objPregexpMatchPositions$V);
                    try {
                        CharSequence charSequence = (CharSequence) obj2;
                        try {
                            int iIntValue = ((Number) obj4).intValue();
                            Object objApply12 = lists.caar.apply1(objPregexpMatchPositions$V);
                            try {
                                objStringAppend = strings.stringAppend(objStringAppend, strings.substring(charSequence, iIntValue, ((Number) objApply12).intValue()), pregexpReplaceAux(obj2, obj3, Integer.valueOf(iStringLength2), objPregexpMatchPositions$V));
                                obj4 = objApply1;
                            } catch (ClassCastException e3) {
                                throw new WrongType(e3, "substring", 3, objApply12);
                            }
                        } catch (ClassCastException e4) {
                            throw new WrongType(e4, "substring", 2, obj4);
                        }
                    } catch (ClassCastException e5) {
                        throw new WrongType(e5, "substring", 1, obj2);
                    }
                }
            } catch (ClassCastException e6) {
                throw new WrongType(e6, "string-length", 1, obj3);
            }
        } catch (ClassCastException e7) {
            throw new WrongType(e7, "string-length", 1, obj2);
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) {
        int i = moduleMethod.selector;
        if (i == 16) {
            return pregexpReverse$Ex(obj);
        }
        if (i == 28) {
            return pregexpInvertCharList(obj);
        }
        if (i == 31) {
            return isPregexpCharWord(obj) ? Boolean.TRUE : Boolean.FALSE;
        }
        if (i == 35) {
            return pregexpMakeBackrefList(obj);
        }
        if (i != 44) {
            return i != 50 ? super.apply1(moduleMethod, obj) : pregexpQuote(obj);
        }
        return pregexp(obj);
    }

    public static Object pregexpQuote(Object obj) throws Throwable {
        Pair pairCons;
        try {
            Object objValueOf = Integer.valueOf(strings.stringLength((CharSequence) obj) - 1);
            LList lList = LList.Empty;
            while (true) {
                Object objApply2 = Scheme.numLss.apply2(objValueOf, Lit73);
                Boolean bool = Boolean.FALSE;
                if (objApply2 != bool) {
                    return strings.list$To$String(lList);
                }
                Object objApply22 = AddOp.$Mn.apply2(objValueOf, Lit8);
                try {
                    try {
                        char cStringRef = strings.stringRef((CharSequence) obj, ((Number) objValueOf).intValue());
                        if (lists.memv(Char.make(cStringRef), Lit116) != bool) {
                            pairCons = lists.cons(Lit19, lists.cons(Char.make(cStringRef), lList));
                        } else {
                            pairCons = lists.cons(Char.make(cStringRef), lList);
                        }
                        lList = pairCons;
                        objValueOf = objApply22;
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "string-ref", 2, objValueOf);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "string-ref", 1, obj);
                }
            }
        } catch (ClassCastException e3) {
            throw new WrongType(e3, "string-length", 1, obj);
        }
    }
}
