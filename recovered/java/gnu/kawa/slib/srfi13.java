package gnu.kawa.slib;

import androidx.constraintlayout.solver.widgets.Optimizer;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.PointerIconCompat;
import androidx.fragment.app.FragmentTransaction;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.google.appinventor.components.common.ComponentConstants;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.common.YaVersion;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.FullScreenVideoUtil;
import com.google.appinventor.components.runtime.util.ScreenDensityUtil;
import com.google.youngandroid.a;
import gnu.expr.GenericProc;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.kawa.functions.AddOp;
import gnu.kawa.functions.ApplyToArgs;
import gnu.kawa.functions.BitwiseOp;
import gnu.kawa.functions.DivideOp;
import gnu.kawa.functions.GetNamedPart;
import gnu.kawa.functions.IsEqv;
import gnu.kawa.functions.LispEscapeFormat;
import gnu.kawa.functions.MultiplyOp;
import gnu.kawa.functions.NumberCompare;
import gnu.kawa.lispexpr.LangObjType;
import gnu.kawa.lispexpr.LangPrimType;
import gnu.kawa.reflect.Invoke;
import gnu.lists.CharSeq;
import gnu.lists.Consumer;
import gnu.lists.FVector;
import gnu.lists.LList;
import gnu.lists.PairWithPosition;
import gnu.mapping.CallContext;
import gnu.mapping.Location;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.ThreadLocation;
import gnu.mapping.UnboundLocationException;
import gnu.mapping.Values;
import gnu.mapping.WrongType;
import gnu.math.IntNum;
import gnu.text.Char;
import kawa.Telnet;
import kawa.lang.Macro;
import kawa.lang.SyntaxPattern;
import kawa.lang.SyntaxRule;
import kawa.lang.SyntaxRules;
import kawa.lib.characters;
import kawa.lib.lists;
import kawa.lib.misc;
import kawa.lib.numbers;
import kawa.lib.rnrs.unicode;
import kawa.lib.strings;
import kawa.lib.vectors;
import kawa.standard.Scheme;
import kawa.standard.call_with_values;
import kotlinx.coroutines.scheduling.WorkQueueKt;
import me.aemo.specialkeyboard.addon.KeyboardChangeListener;

/* loaded from: classes2.dex */
public class srfi13 extends ModuleBody {
    public static final ModuleMethod $Pccheck$Mnbounds;
    public static final ModuleMethod $Pcfinish$Mnstring$Mnconcatenate$Mnreverse;
    public static final ModuleMethod $Pckmp$Mnsearch;
    public static final ModuleMethod $Pcmultispan$Mnrepcopy$Ex;
    public static final ModuleMethod $Pcstring$Mncompare;
    public static final ModuleMethod $Pcstring$Mncompare$Mnci;
    public static final ModuleMethod $Pcstring$Mncopy$Ex;
    public static final ModuleMethod $Pcstring$Mnhash;
    public static final ModuleMethod $Pcstring$Mnmap;
    public static final ModuleMethod $Pcstring$Mnmap$Ex;
    public static final ModuleMethod $Pcstring$Mnprefix$Mnci$Qu;
    public static final ModuleMethod $Pcstring$Mnprefix$Mnlength;
    public static final ModuleMethod $Pcstring$Mnprefix$Mnlength$Mnci;
    public static final ModuleMethod $Pcstring$Mnprefix$Qu;
    public static final ModuleMethod $Pcstring$Mnsuffix$Mnci$Qu;
    public static final ModuleMethod $Pcstring$Mnsuffix$Mnlength;
    public static final ModuleMethod $Pcstring$Mnsuffix$Mnlength$Mnci;
    public static final ModuleMethod $Pcstring$Mnsuffix$Qu;
    public static final ModuleMethod $Pcstring$Mntitlecase$Ex;
    public static final ModuleMethod $Pcsubstring$Slshared;
    public static final srfi13 $instance;
    static final IntNum Lit0;
    static final IntNum Lit1;
    static final IntNum Lit10;
    static final SimpleSymbol Lit100;
    static final SimpleSymbol Lit101;
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
    static final Char Lit12;
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
    static final IntNum Lit13;
    static final SimpleSymbol Lit130;
    static final SimpleSymbol Lit131;
    static final SimpleSymbol Lit132;
    static final SimpleSymbol Lit133;
    static final SimpleSymbol Lit134;
    static final SimpleSymbol Lit135;
    static final SimpleSymbol Lit136;
    static final SimpleSymbol Lit137;
    static final SimpleSymbol Lit138;
    static final SimpleSymbol Lit139;
    static final SimpleSymbol Lit14;
    static final SimpleSymbol Lit140;
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
    static final SimpleSymbol Lit16;
    static final SimpleSymbol Lit17;
    static final SimpleSymbol Lit18;
    static final SimpleSymbol Lit19;
    static final IntNum Lit2;
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
    static final IntNum Lit3;
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
    static final IntNum Lit4;
    static final SimpleSymbol Lit40;
    static final SimpleSymbol Lit41;
    static final SyntaxRules Lit42;
    static final SimpleSymbol Lit43;
    static final SyntaxRules Lit44;
    static final SimpleSymbol Lit45;
    static final SimpleSymbol Lit46;
    static final SimpleSymbol Lit47;
    static final SimpleSymbol Lit48;
    static final SimpleSymbol Lit49;
    static final IntNum Lit5;
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
    static final IntNum Lit6;
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
    static final IntNum Lit7;
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
    static final IntNum Lit8;
    static final SimpleSymbol Lit80;
    static final SimpleSymbol Lit81;
    static final SimpleSymbol Lit82;
    static final SimpleSymbol Lit83;
    static final SimpleSymbol Lit84;
    static final SimpleSymbol Lit85;
    static final SimpleSymbol Lit86;
    static final SimpleSymbol Lit87;
    static final SimpleSymbol Lit88;
    static final SimpleSymbol Lit89;
    static final IntNum Lit9;
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
    public static final ModuleMethod check$Mnsubstring$Mnspec;
    public static final ModuleMethod kmp$Mnstep;
    static final ModuleMethod lambda$Fn100;
    static final ModuleMethod lambda$Fn105;
    static final ModuleMethod lambda$Fn106;
    static final ModuleMethod lambda$Fn111;
    static final ModuleMethod lambda$Fn116;
    static final ModuleMethod lambda$Fn117;
    static final ModuleMethod lambda$Fn122;
    static final ModuleMethod lambda$Fn123;
    static final ModuleMethod lambda$Fn128;
    static final ModuleMethod lambda$Fn133;
    static final ModuleMethod lambda$Fn138;
    static final ModuleMethod lambda$Fn163;
    static final ModuleMethod lambda$Fn166;
    static final ModuleMethod lambda$Fn17;
    static final ModuleMethod lambda$Fn18;
    static final ModuleMethod lambda$Fn210;
    static final ModuleMethod lambda$Fn216;
    static final ModuleMethod lambda$Fn220;
    static final ModuleMethod lambda$Fn27;
    static final ModuleMethod lambda$Fn5;
    static final ModuleMethod lambda$Fn72;
    static final ModuleMethod lambda$Fn73;
    static final ModuleMethod lambda$Fn78;
    static final ModuleMethod lambda$Fn83;
    static final ModuleMethod lambda$Fn84;
    static final ModuleMethod lambda$Fn89;
    static final ModuleMethod lambda$Fn90;
    static final ModuleMethod lambda$Fn95;
    public static final Macro let$Mnstring$Mnstart$Plend;
    public static final Macro let$Mnstring$Mnstart$Plend2;
    static final Location loc$$Cloptional;
    static final Location loc$base;
    static final Location loc$bound;
    static final Location loc$c$Eq;
    static final Location loc$char$Mncased$Qu;
    static final Location loc$char$Mnset;
    static final Location loc$char$Mnset$Mncontains$Qu;
    static final Location loc$char$Mnset$Qu;
    static final Location loc$check$Mnarg;
    static final Location loc$criterion;
    static final Location loc$delim;
    static final Location loc$end;
    static final Location loc$final;
    static final Location loc$grammar;
    static final Location loc$let$Mnoptionals$St;
    static final Location loc$make$Mnfinal;
    static final Location loc$p$Mnstart;
    static final Location loc$rest;
    static final Location loc$s$Mnend;
    static final Location loc$s$Mnstart;
    static final Location loc$start;
    static final Location loc$token$Mnchars;
    public static final ModuleMethod make$Mnkmp$Mnrestart$Mnvector;
    public static final ModuleMethod reverse$Mnlist$Mn$Grstring;
    public static final ModuleMethod string$Eq;
    public static final ModuleMethod string$Gr;
    public static final ModuleMethod string$Gr$Eq;
    public static final ModuleMethod string$Ls;
    public static final ModuleMethod string$Ls$Eq;
    public static final ModuleMethod string$Ls$Gr;
    public static final ModuleMethod string$Mn$Grlist;
    public static final ModuleMethod string$Mnany;
    public static final ModuleMethod string$Mnappend$Slshared;
    public static final ModuleMethod string$Mnci$Eq;
    public static final ModuleMethod string$Mnci$Gr;
    public static final ModuleMethod string$Mnci$Gr$Eq;
    public static final ModuleMethod string$Mnci$Ls;
    public static final ModuleMethod string$Mnci$Ls$Eq;
    public static final ModuleMethod string$Mnci$Ls$Gr;
    public static final ModuleMethod string$Mncompare;
    public static final ModuleMethod string$Mncompare$Mnci;
    public static final ModuleMethod string$Mnconcatenate;
    public static final ModuleMethod string$Mnconcatenate$Mnreverse;
    public static final ModuleMethod string$Mnconcatenate$Mnreverse$Slshared;
    public static final ModuleMethod string$Mnconcatenate$Slshared;
    public static final ModuleMethod string$Mncontains;
    public static final ModuleMethod string$Mncontains$Mnci;
    public static final ModuleMethod string$Mncopy;
    public static final ModuleMethod string$Mncopy$Ex;
    public static final ModuleMethod string$Mncount;
    public static final ModuleMethod string$Mndelete;
    public static final ModuleMethod string$Mndowncase;
    public static final ModuleMethod string$Mndowncase$Ex;
    public static final ModuleMethod string$Mndrop;
    public static final ModuleMethod string$Mndrop$Mnright;
    public static final ModuleMethod string$Mnevery;
    public static final ModuleMethod string$Mnfill$Ex;
    public static final ModuleMethod string$Mnfilter;
    public static final ModuleMethod string$Mnfold;
    public static final ModuleMethod string$Mnfold$Mnright;
    public static final ModuleMethod string$Mnfor$Mneach;
    public static final ModuleMethod string$Mnfor$Mneach$Mnindex;
    public static final ModuleMethod string$Mnhash;
    public static final ModuleMethod string$Mnhash$Mnci;
    public static final ModuleMethod string$Mnindex;
    public static final ModuleMethod string$Mnindex$Mnright;
    public static final ModuleMethod string$Mnjoin;
    public static final ModuleMethod string$Mnkmp$Mnpartial$Mnsearch;
    public static final ModuleMethod string$Mnmap;
    public static final ModuleMethod string$Mnmap$Ex;
    public static final ModuleMethod string$Mnnull$Qu;
    public static final ModuleMethod string$Mnpad;
    public static final ModuleMethod string$Mnpad$Mnright;
    public static final ModuleMethod string$Mnparse$Mnfinal$Mnstart$Plend;
    public static final ModuleMethod string$Mnparse$Mnstart$Plend;
    public static final ModuleMethod string$Mnprefix$Mnci$Qu;
    public static final ModuleMethod string$Mnprefix$Mnlength;
    public static final ModuleMethod string$Mnprefix$Mnlength$Mnci;
    public static final ModuleMethod string$Mnprefix$Qu;
    public static final ModuleMethod string$Mnreplace;
    public static final ModuleMethod string$Mnreverse;
    public static final ModuleMethod string$Mnreverse$Ex;
    public static final ModuleMethod string$Mnskip;
    public static final ModuleMethod string$Mnskip$Mnright;
    public static final ModuleMethod string$Mnsuffix$Mnci$Qu;
    public static final ModuleMethod string$Mnsuffix$Mnlength;
    public static final ModuleMethod string$Mnsuffix$Mnlength$Mnci;
    public static final ModuleMethod string$Mnsuffix$Qu;
    public static final ModuleMethod string$Mntabulate;
    public static final ModuleMethod string$Mntake;
    public static final ModuleMethod string$Mntake$Mnright;
    public static final ModuleMethod string$Mntitlecase;
    public static final ModuleMethod string$Mntitlecase$Ex;
    public static final ModuleMethod string$Mntokenize;
    public static final ModuleMethod string$Mntrim;
    public static final ModuleMethod string$Mntrim$Mnboth;
    public static final ModuleMethod string$Mntrim$Mnright;
    public static final ModuleMethod string$Mnunfold;
    public static final ModuleMethod string$Mnunfold$Mnright;
    public static final ModuleMethod string$Mnupcase;
    public static final ModuleMethod string$Mnupcase$Ex;
    public static final ModuleMethod string$Mnxcopy$Ex;
    public static final ModuleMethod substring$Mnspec$Mnok$Qu;
    public static final ModuleMethod substring$Slshared;
    public static final ModuleMethod xsubstring;

    public class frame55 extends ModuleBody {
        Object char$Mn$Grint;
    }

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("receive");
        Lit150 = simpleSymbol;
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f("string-join");
        Lit149 = simpleSymbol2;
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) a.f("%multispan-repcopy!");
        Lit148 = simpleSymbol3;
        SimpleSymbol simpleSymbol4 = (SimpleSymbol) a.f("string-xcopy!");
        Lit147 = simpleSymbol4;
        SimpleSymbol simpleSymbol5 = (SimpleSymbol) a.f("xsubstring");
        Lit146 = simpleSymbol5;
        SimpleSymbol simpleSymbol6 = (SimpleSymbol) a.f("string-tokenize");
        Lit145 = simpleSymbol6;
        SimpleSymbol simpleSymbol7 = (SimpleSymbol) a.f("string-replace");
        Lit144 = simpleSymbol7;
        SimpleSymbol simpleSymbol8 = (SimpleSymbol) a.f("%finish-string-concatenate-reverse");
        Lit143 = simpleSymbol8;
        SimpleSymbol simpleSymbol9 = (SimpleSymbol) a.f("string-concatenate-reverse/shared");
        Lit142 = simpleSymbol9;
        SimpleSymbol simpleSymbol10 = (SimpleSymbol) a.f("string-concatenate-reverse");
        Lit141 = simpleSymbol10;
        SimpleSymbol simpleSymbol11 = (SimpleSymbol) a.f("string-concatenate");
        Lit140 = simpleSymbol11;
        SimpleSymbol simpleSymbol12 = (SimpleSymbol) a.f("string-concatenate/shared");
        Lit139 = simpleSymbol12;
        SimpleSymbol simpleSymbol13 = (SimpleSymbol) a.f("string-append/shared");
        Lit138 = simpleSymbol13;
        SimpleSymbol simpleSymbol14 = (SimpleSymbol) a.f("string->list");
        Lit137 = simpleSymbol14;
        SimpleSymbol simpleSymbol15 = (SimpleSymbol) a.f("reverse-list->string");
        Lit136 = simpleSymbol15;
        SimpleSymbol simpleSymbol16 = (SimpleSymbol) a.f("string-reverse!");
        Lit135 = simpleSymbol16;
        SimpleSymbol simpleSymbol17 = (SimpleSymbol) a.f("string-reverse");
        Lit134 = simpleSymbol17;
        SimpleSymbol simpleSymbol18 = (SimpleSymbol) a.f("string-null?");
        Lit133 = simpleSymbol18;
        SimpleSymbol simpleSymbol19 = (SimpleSymbol) a.f("string-kmp-partial-search");
        Lit132 = simpleSymbol19;
        SimpleSymbol simpleSymbol20 = (SimpleSymbol) a.f("kmp-step");
        Lit131 = simpleSymbol20;
        SimpleSymbol simpleSymbol21 = (SimpleSymbol) a.f("make-kmp-restart-vector");
        Lit130 = simpleSymbol21;
        SimpleSymbol simpleSymbol22 = (SimpleSymbol) a.f("%kmp-search");
        Lit129 = simpleSymbol22;
        SimpleSymbol simpleSymbol23 = (SimpleSymbol) a.f("string-contains-ci");
        Lit128 = simpleSymbol23;
        SimpleSymbol simpleSymbol24 = (SimpleSymbol) a.f("string-contains");
        Lit127 = simpleSymbol24;
        SimpleSymbol simpleSymbol25 = (SimpleSymbol) a.f("%string-copy!");
        Lit126 = simpleSymbol25;
        SimpleSymbol simpleSymbol26 = (SimpleSymbol) a.f("string-copy!");
        Lit125 = simpleSymbol26;
        SimpleSymbol simpleSymbol27 = (SimpleSymbol) a.f("string-fill!");
        Lit124 = simpleSymbol27;
        SimpleSymbol simpleSymbol28 = (SimpleSymbol) a.f("string-count");
        Lit123 = simpleSymbol28;
        SimpleSymbol simpleSymbol29 = (SimpleSymbol) a.f("string-skip-right");
        Lit122 = simpleSymbol29;
        SimpleSymbol simpleSymbol30 = (SimpleSymbol) a.f("string-skip");
        Lit121 = simpleSymbol30;
        SimpleSymbol simpleSymbol31 = (SimpleSymbol) a.f("string-index-right");
        Lit120 = simpleSymbol31;
        SimpleSymbol simpleSymbol32 = (SimpleSymbol) a.f("string-index");
        Lit119 = simpleSymbol32;
        SimpleSymbol simpleSymbol33 = (SimpleSymbol) a.f("string-filter");
        Lit118 = simpleSymbol33;
        SimpleSymbol simpleSymbol34 = (SimpleSymbol) a.f("string-delete");
        Lit117 = simpleSymbol34;
        SimpleSymbol simpleSymbol35 = (SimpleSymbol) a.f("string-pad");
        Lit116 = simpleSymbol35;
        SimpleSymbol simpleSymbol36 = (SimpleSymbol) a.f("string-pad-right");
        Lit115 = simpleSymbol36;
        SimpleSymbol simpleSymbol37 = (SimpleSymbol) a.f("string-trim-both");
        Lit114 = simpleSymbol37;
        SimpleSymbol simpleSymbol38 = (SimpleSymbol) a.f("string-trim-right");
        Lit113 = simpleSymbol38;
        SimpleSymbol simpleSymbol39 = (SimpleSymbol) a.f("string-trim");
        Lit112 = simpleSymbol39;
        SimpleSymbol simpleSymbol40 = (SimpleSymbol) a.f("string-drop-right");
        Lit111 = simpleSymbol40;
        SimpleSymbol simpleSymbol41 = (SimpleSymbol) a.f("string-drop");
        Lit110 = simpleSymbol41;
        SimpleSymbol simpleSymbol42 = (SimpleSymbol) a.f("string-take-right");
        Lit109 = simpleSymbol42;
        SimpleSymbol simpleSymbol43 = (SimpleSymbol) a.f("string-take");
        Lit108 = simpleSymbol43;
        SimpleSymbol simpleSymbol44 = (SimpleSymbol) a.f("string-titlecase");
        Lit107 = simpleSymbol44;
        SimpleSymbol simpleSymbol45 = (SimpleSymbol) a.f("string-titlecase!");
        Lit106 = simpleSymbol45;
        SimpleSymbol simpleSymbol46 = (SimpleSymbol) a.f("%string-titlecase!");
        Lit105 = simpleSymbol46;
        SimpleSymbol simpleSymbol47 = (SimpleSymbol) a.f("string-downcase!");
        Lit104 = simpleSymbol47;
        SimpleSymbol simpleSymbol48 = (SimpleSymbol) a.f("string-downcase");
        Lit103 = simpleSymbol48;
        SimpleSymbol simpleSymbol49 = (SimpleSymbol) a.f("string-upcase!");
        Lit102 = simpleSymbol49;
        SimpleSymbol simpleSymbol50 = (SimpleSymbol) a.f("string-upcase");
        Lit101 = simpleSymbol50;
        SimpleSymbol simpleSymbol51 = (SimpleSymbol) a.f("string-hash-ci");
        Lit100 = simpleSymbol51;
        SimpleSymbol simpleSymbol52 = (SimpleSymbol) a.f("string-hash");
        Lit99 = simpleSymbol52;
        SimpleSymbol simpleSymbol53 = (SimpleSymbol) a.f("%string-hash");
        Lit98 = simpleSymbol53;
        SimpleSymbol simpleSymbol54 = (SimpleSymbol) a.f("string-ci>=");
        Lit97 = simpleSymbol54;
        SimpleSymbol simpleSymbol55 = (SimpleSymbol) a.f("string-ci<=");
        Lit96 = simpleSymbol55;
        SimpleSymbol simpleSymbol56 = (SimpleSymbol) a.f("string-ci>");
        Lit95 = simpleSymbol56;
        SimpleSymbol simpleSymbol57 = (SimpleSymbol) a.f("string-ci<");
        Lit94 = simpleSymbol57;
        SimpleSymbol simpleSymbol58 = (SimpleSymbol) a.f("string-ci<>");
        Lit93 = simpleSymbol58;
        SimpleSymbol simpleSymbol59 = (SimpleSymbol) a.f("string-ci=");
        Lit92 = simpleSymbol59;
        SimpleSymbol simpleSymbol60 = (SimpleSymbol) a.f("string>=");
        Lit91 = simpleSymbol60;
        SimpleSymbol simpleSymbol61 = (SimpleSymbol) a.f("string<=");
        Lit90 = simpleSymbol61;
        SimpleSymbol simpleSymbol62 = (SimpleSymbol) a.f("string>");
        Lit89 = simpleSymbol62;
        SimpleSymbol simpleSymbol63 = (SimpleSymbol) a.f("string<");
        Lit88 = simpleSymbol63;
        SimpleSymbol simpleSymbol64 = (SimpleSymbol) a.f("string<>");
        Lit87 = simpleSymbol64;
        SimpleSymbol simpleSymbol65 = (SimpleSymbol) a.f("string=");
        Lit86 = simpleSymbol65;
        SimpleSymbol simpleSymbol66 = (SimpleSymbol) a.f("string-compare-ci");
        Lit85 = simpleSymbol66;
        SimpleSymbol simpleSymbol67 = (SimpleSymbol) a.f("string-compare");
        Lit84 = simpleSymbol67;
        SimpleSymbol simpleSymbol68 = (SimpleSymbol) a.f("%string-compare-ci");
        Lit83 = simpleSymbol68;
        SimpleSymbol simpleSymbol69 = (SimpleSymbol) a.f("%string-compare");
        Lit82 = simpleSymbol69;
        SimpleSymbol simpleSymbol70 = (SimpleSymbol) a.f("%string-suffix-ci?");
        Lit81 = simpleSymbol70;
        SimpleSymbol simpleSymbol71 = (SimpleSymbol) a.f("%string-prefix-ci?");
        Lit80 = simpleSymbol71;
        SimpleSymbol simpleSymbol72 = (SimpleSymbol) a.f("%string-suffix?");
        Lit79 = simpleSymbol72;
        SimpleSymbol simpleSymbol73 = (SimpleSymbol) a.f("%string-prefix?");
        Lit78 = simpleSymbol73;
        SimpleSymbol simpleSymbol74 = (SimpleSymbol) a.f("string-suffix-ci?");
        Lit77 = simpleSymbol74;
        SimpleSymbol simpleSymbol75 = (SimpleSymbol) a.f("string-prefix-ci?");
        Lit76 = simpleSymbol75;
        SimpleSymbol simpleSymbol76 = (SimpleSymbol) a.f("string-suffix?");
        Lit75 = simpleSymbol76;
        SimpleSymbol simpleSymbol77 = (SimpleSymbol) a.f("string-prefix?");
        Lit74 = simpleSymbol77;
        SimpleSymbol simpleSymbol78 = (SimpleSymbol) a.f("string-suffix-length-ci");
        Lit73 = simpleSymbol78;
        SimpleSymbol simpleSymbol79 = (SimpleSymbol) a.f("string-prefix-length-ci");
        Lit72 = simpleSymbol79;
        SimpleSymbol simpleSymbol80 = (SimpleSymbol) a.f("string-suffix-length");
        Lit71 = simpleSymbol80;
        SimpleSymbol simpleSymbol81 = (SimpleSymbol) a.f("string-prefix-length");
        Lit70 = simpleSymbol81;
        SimpleSymbol simpleSymbol82 = (SimpleSymbol) a.f("%string-suffix-length-ci");
        Lit69 = simpleSymbol82;
        SimpleSymbol simpleSymbol83 = (SimpleSymbol) a.f("%string-prefix-length-ci");
        Lit68 = simpleSymbol83;
        SimpleSymbol simpleSymbol84 = (SimpleSymbol) a.f("%string-suffix-length");
        Lit67 = simpleSymbol84;
        SimpleSymbol simpleSymbol85 = (SimpleSymbol) a.f("%string-prefix-length");
        Lit66 = simpleSymbol85;
        SimpleSymbol simpleSymbol86 = (SimpleSymbol) a.f("string-tabulate");
        Lit65 = simpleSymbol86;
        SimpleSymbol simpleSymbol87 = (SimpleSymbol) a.f("string-any");
        Lit64 = simpleSymbol87;
        SimpleSymbol simpleSymbol88 = (SimpleSymbol) a.f("string-every");
        Lit63 = simpleSymbol88;
        SimpleSymbol simpleSymbol89 = (SimpleSymbol) a.f("string-for-each-index");
        Lit62 = simpleSymbol89;
        SimpleSymbol simpleSymbol90 = (SimpleSymbol) a.f("string-for-each");
        Lit61 = simpleSymbol90;
        SimpleSymbol simpleSymbol91 = (SimpleSymbol) a.f("string-unfold-right");
        Lit60 = simpleSymbol91;
        SimpleSymbol simpleSymbol92 = (SimpleSymbol) a.f("string-unfold");
        Lit59 = simpleSymbol92;
        SimpleSymbol simpleSymbol93 = (SimpleSymbol) a.f("string-fold-right");
        Lit58 = simpleSymbol93;
        SimpleSymbol simpleSymbol94 = (SimpleSymbol) a.f("string-fold");
        Lit57 = simpleSymbol94;
        SimpleSymbol simpleSymbol95 = (SimpleSymbol) a.f("%string-map!");
        Lit56 = simpleSymbol95;
        SimpleSymbol simpleSymbol96 = (SimpleSymbol) a.f("string-map!");
        Lit55 = simpleSymbol96;
        SimpleSymbol simpleSymbol97 = (SimpleSymbol) a.f("%string-map");
        Lit54 = simpleSymbol97;
        SimpleSymbol simpleSymbol98 = (SimpleSymbol) a.f("string-map");
        Lit53 = simpleSymbol98;
        SimpleSymbol simpleSymbol99 = (SimpleSymbol) a.f("string-copy");
        Lit52 = simpleSymbol99;
        SimpleSymbol simpleSymbol100 = (SimpleSymbol) a.f("%substring/shared");
        Lit51 = simpleSymbol100;
        SimpleSymbol simpleSymbol101 = (SimpleSymbol) a.f("substring/shared");
        Lit50 = simpleSymbol101;
        SimpleSymbol simpleSymbol102 = (SimpleSymbol) a.f("check-substring-spec");
        Lit49 = simpleSymbol102;
        SimpleSymbol simpleSymbol103 = (SimpleSymbol) a.f("substring-spec-ok?");
        Lit48 = simpleSymbol103;
        SimpleSymbol simpleSymbol104 = (SimpleSymbol) a.f("string-parse-final-start+end");
        Lit47 = simpleSymbol104;
        SimpleSymbol simpleSymbol105 = (SimpleSymbol) a.f("%check-bounds");
        Lit46 = simpleSymbol105;
        SimpleSymbol simpleSymbol106 = (SimpleSymbol) a.f("string-parse-start+end");
        Lit45 = simpleSymbol106;
        Object[] objArr = {(SimpleSymbol) a.f("l-s-s+e2")};
        SyntaxPattern syntaxPattern = new SyntaxPattern("\f\u0018L\f\u0007\f\u000f\f\u0017\f\u001f\b\f'\f/\f7\f?\rG@\b\b", new Object[0], 9);
        SimpleSymbol simpleSymbol107 = (SimpleSymbol) a.f("let");
        SimpleSymbol simpleSymbol108 = (SimpleSymbol) a.f("procv");
        SimpleSymbol simpleSymbol109 = (SimpleSymbol) a.f("let-string-start+end");
        Lit41 = simpleSymbol109;
        SimpleSymbol simpleSymbol110 = (SimpleSymbol) a.f("rest");
        Lit27 = simpleSymbol110;
        SyntaxRules syntaxRules = new SyntaxRules(objArr, new SyntaxRule[]{new SyntaxRule(syntaxPattern, "\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0003", "\u0011\u0018\u00041\b\u0011\u0018\f\b#\b\u0011\u0018\u00141\t\u0003\t\u000b\u0018\u001c\u0011\u0018\f\t+\t;\b\u0011\u0018\u0014!\t\u0013\b\u001b\u0011\u0018\f\t3\u0011\u0018$\bEC", new Object[]{simpleSymbol107, simpleSymbol108, simpleSymbol109, PairWithPosition.make(simpleSymbol110, LList.Empty, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 553003), simpleSymbol110}, 1)}, 9);
        Lit44 = syntaxRules;
        SimpleSymbol simpleSymbol111 = (SimpleSymbol) a.f("let-string-start+end2");
        Lit43 = simpleSymbol111;
        SyntaxRules syntaxRules2 = new SyntaxRules(new Object[]{simpleSymbol109}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018,\f\u0007\f\u000f\b\f\u0017\f\u001f\f'\r/(\b\b", new Object[0], 6), "\u0001\u0001\u0001\u0001\u0001\u0003", "\u0011\u0018\u0004!\t\u0003\b\u000bI\u0011\u0018\f\t\u0013\t\u001b\b#\b-+", new Object[]{simpleSymbol, simpleSymbol104}, 1), new SyntaxRule(new SyntaxPattern("\f\u0018<\f\u0007\f\u000f\f\u0017\b\f\u001f\f'\f/\r70\b\b", new Object[0], 7), "\u0001\u0001\u0001\u0001\u0001\u0001\u0003", "\u0011\u0018\u00041\t\u0013\t\u0003\b\u000bI\u0011\u0018\f\t\u001b\t#\b+\b53", new Object[]{simpleSymbol, simpleSymbol106}, 1)}, 7);
        Lit42 = syntaxRules2;
        SimpleSymbol simpleSymbol112 = (SimpleSymbol) a.f("grammar");
        Lit40 = simpleSymbol112;
        SimpleSymbol simpleSymbol113 = (SimpleSymbol) a.f("delim");
        Lit39 = simpleSymbol113;
        SimpleSymbol simpleSymbol114 = (SimpleSymbol) a.f("token-chars");
        Lit38 = simpleSymbol114;
        SimpleSymbol simpleSymbol115 = (SimpleSymbol) a.f("final");
        Lit37 = simpleSymbol115;
        SimpleSymbol simpleSymbol116 = (SimpleSymbol) a.f("s-end");
        Lit36 = simpleSymbol116;
        SimpleSymbol simpleSymbol117 = (SimpleSymbol) a.f("s-start");
        Lit35 = simpleSymbol117;
        SimpleSymbol simpleSymbol118 = (SimpleSymbol) a.f("p-start");
        Lit34 = simpleSymbol118;
        SimpleSymbol simpleSymbol119 = (SimpleSymbol) a.f("end");
        Lit33 = simpleSymbol119;
        SimpleSymbol simpleSymbol120 = (SimpleSymbol) a.f("start");
        Lit32 = simpleSymbol120;
        SimpleSymbol simpleSymbol121 = (SimpleSymbol) a.f("c=");
        Lit31 = simpleSymbol121;
        SimpleSymbol simpleSymbol122 = (SimpleSymbol) a.f("char-set");
        Lit30 = simpleSymbol122;
        SimpleSymbol simpleSymbol123 = (SimpleSymbol) a.f("criterion");
        Lit29 = simpleSymbol123;
        SimpleSymbol simpleSymbol124 = (SimpleSymbol) a.f("char-cased?");
        Lit28 = simpleSymbol124;
        SimpleSymbol simpleSymbol125 = (SimpleSymbol) a.f("bound");
        Lit26 = simpleSymbol125;
        SimpleSymbol simpleSymbol126 = (SimpleSymbol) a.f("char-set-contains?");
        Lit25 = simpleSymbol126;
        SimpleSymbol simpleSymbol127 = (SimpleSymbol) a.f("char-set?");
        Lit24 = simpleSymbol127;
        SimpleSymbol simpleSymbol128 = (SimpleSymbol) a.f("make-final");
        Lit23 = simpleSymbol128;
        SimpleSymbol simpleSymbol129 = (SimpleSymbol) a.f("base");
        Lit22 = simpleSymbol129;
        SimpleSymbol simpleSymbol130 = (SimpleSymbol) a.f("let-optionals*");
        Lit21 = simpleSymbol130;
        SimpleSymbol simpleSymbol131 = (SimpleSymbol) a.f(":optional");
        Lit20 = simpleSymbol131;
        SimpleSymbol simpleSymbol132 = (SimpleSymbol) a.f("check-arg");
        Lit19 = simpleSymbol132;
        Lit18 = (SimpleSymbol) a.f("suffix");
        Lit17 = (SimpleSymbol) a.f("prefix");
        Lit16 = (SimpleSymbol) a.f("strict-infix");
        Lit15 = (SimpleSymbol) a.f("infix");
        Lit14 = (SimpleSymbol) a.f("graphic");
        Lit13 = IntNum.make(-1);
        Lit12 = Char.make(32);
        Lit11 = (SimpleSymbol) a.f("whitespace");
        Lit10 = IntNum.make(4194304);
        Lit9 = IntNum.make(4194304);
        Lit8 = IntNum.make(4194304);
        Lit7 = IntNum.make(4194304);
        Lit6 = IntNum.make(37);
        Lit5 = IntNum.make(65536);
        Lit4 = IntNum.make(4096);
        Lit3 = IntNum.make(40);
        Lit2 = IntNum.make(4096);
        Lit1 = IntNum.make(1);
        Lit0 = IntNum.make(0);
        srfi13 srfi13Var = new srfi13();
        $instance = srfi13Var;
        loc$check$Mnarg = ThreadLocation.getInstance(simpleSymbol132, null);
        loc$$Cloptional = ThreadLocation.getInstance(simpleSymbol131, null);
        loc$let$Mnoptionals$St = ThreadLocation.getInstance(simpleSymbol130, null);
        loc$base = ThreadLocation.getInstance(simpleSymbol129, null);
        loc$make$Mnfinal = ThreadLocation.getInstance(simpleSymbol128, null);
        loc$char$Mnset$Qu = ThreadLocation.getInstance(simpleSymbol127, null);
        loc$char$Mnset$Mncontains$Qu = ThreadLocation.getInstance(simpleSymbol126, null);
        loc$bound = ThreadLocation.getInstance(simpleSymbol125, null);
        loc$rest = ThreadLocation.getInstance(simpleSymbol110, null);
        loc$char$Mncased$Qu = ThreadLocation.getInstance(simpleSymbol124, null);
        loc$criterion = ThreadLocation.getInstance(simpleSymbol123, null);
        loc$char$Mnset = ThreadLocation.getInstance(simpleSymbol122, null);
        loc$c$Eq = ThreadLocation.getInstance(simpleSymbol121, null);
        loc$start = ThreadLocation.getInstance(simpleSymbol120, null);
        loc$end = ThreadLocation.getInstance(simpleSymbol119, null);
        loc$p$Mnstart = ThreadLocation.getInstance(simpleSymbol118, null);
        loc$s$Mnstart = ThreadLocation.getInstance(simpleSymbol117, null);
        loc$s$Mnend = ThreadLocation.getInstance(simpleSymbol116, null);
        loc$final = ThreadLocation.getInstance(simpleSymbol115, null);
        loc$token$Mnchars = ThreadLocation.getInstance(simpleSymbol114, null);
        loc$delim = ThreadLocation.getInstance(simpleSymbol113, null);
        loc$grammar = ThreadLocation.getInstance(simpleSymbol112, null);
        let$Mnstring$Mnstart$Plend = Macro.make(simpleSymbol109, syntaxRules2, srfi13Var);
        let$Mnstring$Mnstart$Plend2 = Macro.make(simpleSymbol111, syntaxRules, srfi13Var);
        string$Mnparse$Mnstart$Plend = new ModuleMethod(srfi13Var, FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_SOURCE, simpleSymbol106, 12291);
        $Pccheck$Mnbounds = new ModuleMethod(srfi13Var, FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_FULLSCREEN, simpleSymbol105, 16388);
        string$Mnparse$Mnfinal$Mnstart$Plend = new ModuleMethod(srfi13Var, FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_DURATION, simpleSymbol104, 12291);
        substring$Mnspec$Mnok$Qu = new ModuleMethod(srfi13Var, 197, simpleSymbol103, 12291);
        check$Mnsubstring$Mnspec = new ModuleMethod(srfi13Var, 198, simpleSymbol102, 16388);
        ModuleMethod moduleMethod = new ModuleMethod(srfi13Var, 199, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:223");
        lambda$Fn5 = moduleMethod;
        substring$Slshared = new ModuleMethod(srfi13Var, 200, simpleSymbol101, -4094);
        $Pcsubstring$Slshared = new ModuleMethod(srfi13Var, ErrorMessages.ERROR_CAMERA_NO_IMAGE_RETURNED, simpleSymbol100, 12291);
        string$Mncopy = new ModuleMethod(srfi13Var, ErrorMessages.ERROR_NO_CAMERA_PERMISSION, simpleSymbol99, -4095);
        string$Mnmap = new ModuleMethod(srfi13Var, 203, simpleSymbol98, -4094);
        $Pcstring$Mnmap = new ModuleMethod(srfi13Var, 204, simpleSymbol97, 16388);
        string$Mnmap$Ex = new ModuleMethod(srfi13Var, 205, simpleSymbol96, -4094);
        $Pcstring$Mnmap$Ex = new ModuleMethod(srfi13Var, 206, simpleSymbol95, 16388);
        string$Mnfold = new ModuleMethod(srfi13Var, 207, simpleSymbol94, -4093);
        string$Mnfold$Mnright = new ModuleMethod(srfi13Var, 208, simpleSymbol93, -4093);
        ModuleMethod moduleMethod2 = new ModuleMethod(srfi13Var, 209, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod2.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:377");
        lambda$Fn17 = moduleMethod2;
        string$Mnunfold = new ModuleMethod(srfi13Var, 210, simpleSymbol92, -4092);
        ModuleMethod moduleMethod3 = new ModuleMethod(srfi13Var, 211, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod3.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:422");
        lambda$Fn18 = moduleMethod3;
        string$Mnunfold$Mnright = new ModuleMethod(srfi13Var, 212, simpleSymbol91, -4092);
        string$Mnfor$Mneach = new ModuleMethod(srfi13Var, 213, simpleSymbol90, -4094);
        string$Mnfor$Mneach$Mnindex = new ModuleMethod(srfi13Var, 214, simpleSymbol89, -4094);
        string$Mnevery = new ModuleMethod(srfi13Var, 215, simpleSymbol88, -4094);
        string$Mnany = new ModuleMethod(srfi13Var, 216, simpleSymbol87, -4094);
        ModuleMethod moduleMethod4 = new ModuleMethod(srfi13Var, 217, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod4.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:535");
        lambda$Fn27 = moduleMethod4;
        string$Mntabulate = new ModuleMethod(srfi13Var, 218, simpleSymbol86, 8194);
        $Pcstring$Mnprefix$Mnlength = new ModuleMethod(srfi13Var, 219, simpleSymbol85, 24582);
        $Pcstring$Mnsuffix$Mnlength = new ModuleMethod(srfi13Var, 220, simpleSymbol84, 24582);
        $Pcstring$Mnprefix$Mnlength$Mnci = new ModuleMethod(srfi13Var, 221, simpleSymbol83, 24582);
        $Pcstring$Mnsuffix$Mnlength$Mnci = new ModuleMethod(srfi13Var, 222, simpleSymbol82, 24582);
        string$Mnprefix$Mnlength = new ModuleMethod(srfi13Var, 223, simpleSymbol81, -4094);
        string$Mnsuffix$Mnlength = new ModuleMethod(srfi13Var, 224, simpleSymbol80, -4094);
        string$Mnprefix$Mnlength$Mnci = new ModuleMethod(srfi13Var, 225, simpleSymbol79, -4094);
        string$Mnsuffix$Mnlength$Mnci = new ModuleMethod(srfi13Var, 226, simpleSymbol78, -4094);
        string$Mnprefix$Qu = new ModuleMethod(srfi13Var, 227, simpleSymbol77, -4094);
        string$Mnsuffix$Qu = new ModuleMethod(srfi13Var, YaVersion.YOUNG_ANDROID_VERSION, simpleSymbol76, -4094);
        string$Mnprefix$Mnci$Qu = new ModuleMethod(srfi13Var, 229, simpleSymbol75, -4094);
        string$Mnsuffix$Mnci$Qu = new ModuleMethod(srfi13Var, 230, simpleSymbol74, -4094);
        $Pcstring$Mnprefix$Qu = new ModuleMethod(srfi13Var, 231, simpleSymbol73, 24582);
        $Pcstring$Mnsuffix$Qu = new ModuleMethod(srfi13Var, 232, simpleSymbol72, 24582);
        $Pcstring$Mnprefix$Mnci$Qu = new ModuleMethod(srfi13Var, 233, simpleSymbol71, 24582);
        $Pcstring$Mnsuffix$Mnci$Qu = new ModuleMethod(srfi13Var, 234, simpleSymbol70, 24582);
        $Pcstring$Mncompare = new ModuleMethod(srfi13Var, 235, simpleSymbol69, 36873);
        $Pcstring$Mncompare$Mnci = new ModuleMethod(srfi13Var, 236, simpleSymbol68, 36873);
        string$Mncompare = new ModuleMethod(srfi13Var, 237, simpleSymbol67, -4091);
        string$Mncompare$Mnci = new ModuleMethod(srfi13Var, 238, simpleSymbol66, -4091);
        ModuleMethod moduleMethod5 = new ModuleMethod(srfi13Var, 239, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod5.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:756");
        lambda$Fn72 = moduleMethod5;
        ModuleMethod moduleMethod6 = new ModuleMethod(srfi13Var, 240, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod6.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:758");
        lambda$Fn73 = moduleMethod6;
        string$Eq = new ModuleMethod(srfi13Var, LispEscapeFormat.ESCAPE_NORMAL, simpleSymbol65, -4094);
        ModuleMethod moduleMethod7 = new ModuleMethod(srfi13Var, LispEscapeFormat.ESCAPE_ALL, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod7.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:767");
        lambda$Fn78 = moduleMethod7;
        string$Ls$Gr = new ModuleMethod(srfi13Var, 243, simpleSymbol64, -4094);
        ModuleMethod moduleMethod8 = new ModuleMethod(srfi13Var, 244, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod8.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:778");
        lambda$Fn83 = moduleMethod8;
        ModuleMethod moduleMethod9 = new ModuleMethod(srfi13Var, 245, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod9.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:779");
        lambda$Fn84 = moduleMethod9;
        string$Ls = new ModuleMethod(srfi13Var, 246, simpleSymbol63, -4094);
        ModuleMethod moduleMethod10 = new ModuleMethod(srfi13Var, 247, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod10.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:788");
        lambda$Fn89 = moduleMethod10;
        ModuleMethod moduleMethod11 = new ModuleMethod(srfi13Var, 248, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod11.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:789");
        lambda$Fn90 = moduleMethod11;
        string$Gr = new ModuleMethod(srfi13Var, 249, simpleSymbol62, -4094);
        ModuleMethod moduleMethod12 = new ModuleMethod(srfi13Var, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod12.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:801");
        lambda$Fn95 = moduleMethod12;
        string$Ls$Eq = new ModuleMethod(srfi13Var, Telnet.WILL, simpleSymbol61, -4094);
        ModuleMethod moduleMethod13 = new ModuleMethod(srfi13Var, Telnet.WONT, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod13.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:810");
        lambda$Fn100 = moduleMethod13;
        string$Gr$Eq = new ModuleMethod(srfi13Var, Telnet.DO, simpleSymbol60, -4094);
        ModuleMethod moduleMethod14 = new ModuleMethod(srfi13Var, Telnet.DONT, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod14.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:820");
        lambda$Fn105 = moduleMethod14;
        ModuleMethod moduleMethod15 = new ModuleMethod(srfi13Var, 255, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod15.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:822");
        lambda$Fn106 = moduleMethod15;
        string$Mnci$Eq = new ModuleMethod(srfi13Var, 256, simpleSymbol59, -4094);
        ModuleMethod moduleMethod16 = new ModuleMethod(srfi13Var, InputDeviceCompat.SOURCE_KEYBOARD, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod16.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:831");
        lambda$Fn111 = moduleMethod16;
        string$Mnci$Ls$Gr = new ModuleMethod(srfi13Var, 258, simpleSymbol58, -4094);
        ModuleMethod moduleMethod17 = new ModuleMethod(srfi13Var, 259, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod17.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:842");
        lambda$Fn116 = moduleMethod17;
        ModuleMethod moduleMethod18 = new ModuleMethod(srfi13Var, 260, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod18.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:843");
        lambda$Fn117 = moduleMethod18;
        string$Mnci$Ls = new ModuleMethod(srfi13Var, 261, simpleSymbol57, -4094);
        ModuleMethod moduleMethod19 = new ModuleMethod(srfi13Var, 262, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod19.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:852");
        lambda$Fn122 = moduleMethod19;
        ModuleMethod moduleMethod20 = new ModuleMethod(srfi13Var, Optimizer.OPTIMIZATION_STANDARD, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod20.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:853");
        lambda$Fn123 = moduleMethod20;
        string$Mnci$Gr = new ModuleMethod(srfi13Var, 264, simpleSymbol56, -4094);
        ModuleMethod moduleMethod21 = new ModuleMethod(srfi13Var, 265, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod21.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:865");
        lambda$Fn128 = moduleMethod21;
        string$Mnci$Ls$Eq = new ModuleMethod(srfi13Var, 266, simpleSymbol55, -4094);
        ModuleMethod moduleMethod22 = new ModuleMethod(srfi13Var, 267, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod22.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:874");
        lambda$Fn133 = moduleMethod22;
        string$Mnci$Gr$Eq = new ModuleMethod(srfi13Var, 268, simpleSymbol54, -4094);
        $Pcstring$Mnhash = new ModuleMethod(srfi13Var, 269, simpleSymbol53, 20485);
        string$Mnhash = new ModuleMethod(srfi13Var, 270, simpleSymbol52, -4095);
        ModuleMethod moduleMethod23 = new ModuleMethod(srfi13Var, 271, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod23.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:922");
        lambda$Fn138 = moduleMethod23;
        string$Mnhash$Mnci = new ModuleMethod(srfi13Var, 272, simpleSymbol51, -4095);
        string$Mnupcase = new ModuleMethod(srfi13Var, 273, simpleSymbol50, -4095);
        string$Mnupcase$Ex = new ModuleMethod(srfi13Var, 274, simpleSymbol49, -4095);
        string$Mndowncase = new ModuleMethod(srfi13Var, 275, simpleSymbol48, -4095);
        string$Mndowncase$Ex = new ModuleMethod(srfi13Var, 276, simpleSymbol47, -4095);
        $Pcstring$Mntitlecase$Ex = new ModuleMethod(srfi13Var, 277, simpleSymbol46, 12291);
        string$Mntitlecase$Ex = new ModuleMethod(srfi13Var, 278, simpleSymbol45, -4095);
        string$Mntitlecase = new ModuleMethod(srfi13Var, 279, simpleSymbol44, -4095);
        string$Mntake = new ModuleMethod(srfi13Var, 280, simpleSymbol43, 8194);
        string$Mntake$Mnright = new ModuleMethod(srfi13Var, 281, simpleSymbol42, 8194);
        string$Mndrop = new ModuleMethod(srfi13Var, 282, simpleSymbol41, 8194);
        string$Mndrop$Mnright = new ModuleMethod(srfi13Var, 283, simpleSymbol40, 8194);
        string$Mntrim = new ModuleMethod(srfi13Var, 284, simpleSymbol39, -4095);
        string$Mntrim$Mnright = new ModuleMethod(srfi13Var, 285, simpleSymbol38, -4095);
        string$Mntrim$Mnboth = new ModuleMethod(srfi13Var, 286, simpleSymbol37, -4095);
        ModuleMethod moduleMethod24 = new ModuleMethod(srfi13Var, 287, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod24.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:1047");
        lambda$Fn163 = moduleMethod24;
        string$Mnpad$Mnright = new ModuleMethod(srfi13Var, 288, simpleSymbol36, -4094);
        ModuleMethod moduleMethod25 = new ModuleMethod(srfi13Var, 289, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod25.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:1059");
        lambda$Fn166 = moduleMethod25;
        string$Mnpad = new ModuleMethod(srfi13Var, 290, simpleSymbol35, -4094);
        string$Mndelete = new ModuleMethod(srfi13Var, 291, simpleSymbol34, -4094);
        string$Mnfilter = new ModuleMethod(srfi13Var, 292, simpleSymbol33, -4094);
        string$Mnindex = new ModuleMethod(srfi13Var, 293, simpleSymbol32, -4094);
        string$Mnindex$Mnright = new ModuleMethod(srfi13Var, 294, simpleSymbol31, -4094);
        string$Mnskip = new ModuleMethod(srfi13Var, 295, simpleSymbol30, -4094);
        string$Mnskip$Mnright = new ModuleMethod(srfi13Var, 296, simpleSymbol29, -4094);
        string$Mncount = new ModuleMethod(srfi13Var, 297, simpleSymbol28, -4094);
        string$Mnfill$Ex = new ModuleMethod(srfi13Var, 298, simpleSymbol27, -4094);
        string$Mncopy$Ex = new ModuleMethod(srfi13Var, 299, simpleSymbol26, 20483);
        $Pcstring$Mncopy$Ex = new ModuleMethod(srfi13Var, ErrorMessages.ERROR_TWITTER_BLANK_CONSUMER_KEY_OR_SECRET, simpleSymbol25, 20485);
        string$Mncontains = new ModuleMethod(srfi13Var, ErrorMessages.ERROR_TWITTER_EXCEPTION, simpleSymbol24, -4094);
        string$Mncontains$Mnci = new ModuleMethod(srfi13Var, ErrorMessages.ERROR_TWITTER_UNABLE_TO_GET_ACCESS_TOKEN, simpleSymbol23, -4094);
        $Pckmp$Mnsearch = new ModuleMethod(srfi13Var, ErrorMessages.ERROR_TWITTER_AUTHORIZATION_FAILED, simpleSymbol22, 28679);
        make$Mnkmp$Mnrestart$Mnvector = new ModuleMethod(srfi13Var, ErrorMessages.ERROR_TWITTER_SET_STATUS_FAILED, simpleSymbol21, -4095);
        kmp$Mnstep = new ModuleMethod(srfi13Var, ErrorMessages.ERROR_TWITTER_REQUEST_MENTIONS_FAILED, simpleSymbol20, 24582);
        string$Mnkmp$Mnpartial$Mnsearch = new ModuleMethod(srfi13Var, ErrorMessages.ERROR_TWITTER_REQUEST_FOLLOWERS_FAILED, simpleSymbol19, -4092);
        string$Mnnull$Qu = new ModuleMethod(srfi13Var, ErrorMessages.ERROR_TWITTER_REQUEST_DIRECT_MESSAGES_FAILED, simpleSymbol18, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        string$Mnreverse = new ModuleMethod(srfi13Var, ErrorMessages.ERROR_TWITTER_DIRECT_MESSAGE_FAILED, simpleSymbol17, -4095);
        string$Mnreverse$Ex = new ModuleMethod(srfi13Var, ErrorMessages.ERROR_TWITTER_FOLLOW_FAILED, simpleSymbol16, -4095);
        reverse$Mnlist$Mn$Grstring = new ModuleMethod(srfi13Var, ErrorMessages.ERROR_TWITTER_STOP_FOLLOWING_FAILED, simpleSymbol15, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        string$Mn$Grlist = new ModuleMethod(srfi13Var, ErrorMessages.ERROR_TWITTER_REQUEST_FRIEND_TIMELINE_FAILED, simpleSymbol14, -4095);
        string$Mnappend$Slshared = new ModuleMethod(srfi13Var, ErrorMessages.ERROR_TWITTER_SEARCH_FAILED, simpleSymbol13, -4096);
        string$Mnconcatenate$Slshared = new ModuleMethod(srfi13Var, 315, simpleSymbol12, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        string$Mnconcatenate = new ModuleMethod(srfi13Var, 316, simpleSymbol11, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        string$Mnconcatenate$Mnreverse = new ModuleMethod(srfi13Var, 317, simpleSymbol10, -4095);
        string$Mnconcatenate$Mnreverse$Slshared = new ModuleMethod(srfi13Var, 318, simpleSymbol9, -4095);
        $Pcfinish$Mnstring$Mnconcatenate$Mnreverse = new ModuleMethod(srfi13Var, 319, simpleSymbol8, 16388);
        string$Mnreplace = new ModuleMethod(srfi13Var, ScreenDensityUtil.DEFAULT_NORMAL_SHORT_DIMENSION, simpleSymbol7, -4092);
        string$Mntokenize = new ModuleMethod(srfi13Var, 321, simpleSymbol6, -4095);
        ModuleMethod moduleMethod26 = new ModuleMethod(srfi13Var, 322, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod26.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:1738");
        lambda$Fn210 = moduleMethod26;
        xsubstring = new ModuleMethod(srfi13Var, 323, simpleSymbol5, -4094);
        ModuleMethod moduleMethod27 = new ModuleMethod(srfi13Var, 324, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod27.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:1779");
        lambda$Fn216 = moduleMethod27;
        ModuleMethod moduleMethod28 = new ModuleMethod(srfi13Var, 325, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod28.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:1785");
        lambda$Fn220 = moduleMethod28;
        string$Mnxcopy$Ex = new ModuleMethod(srfi13Var, 326, simpleSymbol4, -4092);
        $Pcmultispan$Mnrepcopy$Ex = new ModuleMethod(srfi13Var, 327, simpleSymbol3, 28679);
        string$Mnjoin = new ModuleMethod(srfi13Var, 328, simpleSymbol2, -4095);
        srfi13Var.run();
    }

    public srfi13() {
        ModuleInfo.register(this);
    }

    public static Object stringCopy$Ex(Object obj, int i, CharSequence charSequence) {
        return stringCopy$Ex(obj, i, charSequence, 0);
    }

    public static Object stringCopy$Ex(Object obj, int i, CharSequence charSequence, int i2) {
        return stringCopy$Ex(obj, i, charSequence, i2, charSequence.length());
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext callContext) {
        Consumer consumer = callContext.consumer;
    }

    public static Object stringParseStart$PlEnd(Object obj, Object obj2, Object obj3) throws Throwable {
        boolean zIsExact;
        frame frameVar = new frame();
        frameVar.proc = obj;
        frameVar.s = obj2;
        if (!strings.isString(obj2)) {
            misc.error$V("Non-string value", new Object[]{frameVar.proc, frameVar.s});
        }
        Object obj4 = frameVar.s;
        try {
            frameVar.slen = strings.stringLength((CharSequence) obj4);
            if (!lists.isPair(obj3)) {
                return misc.values(LList.Empty, Lit0, Integer.valueOf(frameVar.slen));
            }
            Object objApply1 = lists.car.apply1(obj3);
            frameVar.args = lists.cdr.apply1(obj3);
            frameVar.start = objApply1;
            boolean zIsInteger = numbers.isInteger(objApply1);
            return (!zIsInteger ? zIsInteger : !(!(zIsExact = numbers.isExact(frameVar.start)) ? zIsExact : Scheme.numGEq.apply2(frameVar.start, Lit0) != Boolean.FALSE)) ? misc.error$V("Illegal substring START spec", new Object[]{frameVar.proc, frameVar.start, frameVar.s}) : call_with_values.callWithValues(frameVar.lambda$Fn1, frameVar.lambda$Fn2);
        } catch (ClassCastException e) {
            throw new WrongType(e, "string-length", 1, obj4);
        }
    }

    @Override // gnu.expr.ModuleBody
    public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 194) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i == 201) {
            if (!(obj instanceof CharSequence)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i == 277) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i == 299) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            if (!(obj3 instanceof CharSequence)) {
                return -786429;
            }
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i == 196) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i != 197) {
            return super.match3(moduleMethod, obj, obj2, obj3, callContext);
        }
        callContext.value1 = obj;
        callContext.value2 = obj2;
        callContext.value3 = obj3;
        callContext.proc = moduleMethod;
        callContext.pc = 3;
        return 0;
    }

    public class frame extends ModuleBody {
        Object args;
        final ModuleMethod lambda$Fn1 = new ModuleMethod(this, 1, null, 0);
        final ModuleMethod lambda$Fn2;
        Object proc;
        Object s;
        int slen;
        Object start;

        public frame() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 2, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:150");
            this.lambda$Fn2 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 1 ? lambda1() : super.apply0(moduleMethod);
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
            return moduleMethod.selector == 2 ? lambda2(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
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

        public Object lambda1() throws Throwable {
            boolean zIsExact;
            if (!lists.isPair(this.args)) {
                return misc.values(Integer.valueOf(this.slen), this.args);
            }
            Object objApply1 = lists.car.apply1(this.args);
            Object objApply12 = lists.cdr.apply1(this.args);
            boolean zIsInteger = numbers.isInteger(objApply1);
            return (!zIsInteger ? zIsInteger : !(!(zIsExact = numbers.isExact(objApply1)) ? zIsExact : Scheme.numLEq.apply2(objApply1, Integer.valueOf(this.slen)) != Boolean.FALSE)) ? misc.error$V("Illegal substring END spec", new Object[]{this.proc, objApply1, this.s}) : misc.values(objApply1, objApply12);
        }

        public Object lambda2(Object obj, Object obj2) {
            return Scheme.numLEq.apply2(this.start, obj) != Boolean.FALSE ? misc.values(obj2, this.start, obj) : misc.error$V("Illegal substring START/END spec", new Object[]{this.proc, this.start, obj, this.s});
        }
    }

    @Override // gnu.expr.ModuleBody
    public int match4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 195) {
            callContext.value1 = obj;
            if (!(obj2 instanceof CharSequence)) {
                return -786430;
            }
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.value4 = obj4;
            callContext.proc = moduleMethod;
            callContext.pc = 4;
            return 0;
        }
        if (i == 198) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.value4 = obj4;
            callContext.proc = moduleMethod;
            callContext.pc = 4;
            return 0;
        }
        if (i == 204) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.value4 = obj4;
            callContext.proc = moduleMethod;
            callContext.pc = 4;
            return 0;
        }
        if (i == 206) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.value4 = obj4;
            callContext.proc = moduleMethod;
            callContext.pc = 4;
            return 0;
        }
        if (i != 299) {
            if (i != 319) {
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
        callContext.value1 = obj;
        callContext.value2 = obj2;
        if (!(obj3 instanceof CharSequence)) {
            return -786429;
        }
        callContext.value3 = obj3;
        callContext.value4 = obj4;
        callContext.proc = moduleMethod;
        callContext.pc = 4;
        return 0;
    }

    public static Object $PcCheckBounds(Object obj, CharSequence charSequence, int i, int i2) {
        if (i < 0) {
            return misc.error$V("Illegal substring START spec", new Object[]{obj, Integer.valueOf(i), charSequence});
        }
        if (i > i2) {
            return misc.error$V("Illegal substring START/END spec", new Object[0]);
        }
        return i2 > strings.stringLength(charSequence) ? misc.error$V("Illegal substring END spec", new Object[]{obj, Integer.valueOf(i2), charSequence}) : Values.empty;
    }

    public class frame0 extends ModuleBody {
        Object args;
        final ModuleMethod lambda$Fn3 = new ModuleMethod(this, 3, null, 0);
        final ModuleMethod lambda$Fn4;
        Object proc;
        Object s;

        public frame0() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 4, null, 12291);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:174");
            this.lambda$Fn4 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 3 ? lambda3() : super.apply0(moduleMethod);
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
            return moduleMethod.selector == 4 ? lambda4(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
        }

        public Object lambda3() {
            return srfi13.stringParseStart$PlEnd(this.proc, this.s, this.args);
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

        public Object lambda4(Object obj, Object obj2, Object obj3) {
            return lists.isPair(obj) ? misc.error$V("Extra arguments to procedure", new Object[]{this.proc, obj}) : misc.values(obj2, obj3);
        }
    }

    public static Object stringParseFinalStart$PlEnd(Object obj, Object obj2, Object obj3) {
        frame0 frame0Var = new frame0();
        frame0Var.proc = obj;
        frame0Var.s = obj2;
        frame0Var.args = obj3;
        return call_with_values.callWithValues(frame0Var.lambda$Fn3, frame0Var.lambda$Fn4);
    }

    public static boolean isSubstringSpecOk(Object obj, Object obj2, Object obj3) {
        boolean zIsString = strings.isString(obj);
        if (!zIsString || !(zIsString = numbers.isInteger(obj2)) || !(zIsString = numbers.isExact(obj2)) || !(zIsString = numbers.isInteger(obj3)) || !(zIsString = numbers.isExact(obj3))) {
            return zIsString;
        }
        NumberCompare numberCompare = Scheme.numLEq;
        Object objApply2 = numberCompare.apply2(Lit0, obj2);
        try {
            boolean zBooleanValue = ((Boolean) objApply2).booleanValue();
            if (!zBooleanValue) {
                return zBooleanValue;
            }
            Object objApply22 = numberCompare.apply2(obj2, obj3);
            try {
                boolean zBooleanValue2 = ((Boolean) objApply22).booleanValue();
                if (!zBooleanValue2) {
                    return zBooleanValue2;
                }
                try {
                    return ((Boolean) numberCompare.apply2(obj3, Integer.valueOf(strings.stringLength((CharSequence) obj)))).booleanValue();
                } catch (ClassCastException e) {
                    throw new WrongType(e, "string-length", 1, obj);
                }
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "x", -2, objApply22);
            }
        } catch (ClassCastException e3) {
            throw new WrongType(e3, "x", -2, objApply2);
        }
    }

    public static Object checkSubstringSpec(Object obj, Object obj2, Object obj3, Object obj4) {
        return !isSubstringSpecOk(obj2, obj3, obj4) ? misc.error$V("Illegal substring spec.", new Object[]{obj, obj2, obj3, obj4}) : Values.empty;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0037, code lost:
    
        return kawa.lib.misc.error$V("Illegal substring spec.", new java.lang.Object[]{r3, r4, java.lang.Integer.valueOf(r5), java.lang.Integer.valueOf(r6)});
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0009, code lost:
    
        if (r2 != false) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object $PcCheckSubstringSpec(java.lang.Object r3, java.lang.CharSequence r4, int r5, int r6) {
        /*
            r0 = 0
            r1 = 1
            if (r5 >= 0) goto L6
            r2 = 1
            goto L7
        L6:
            r2 = 0
        L7:
            if (r2 == 0) goto Lc
            if (r2 == 0) goto L38
            goto L1c
        Lc:
            if (r5 <= r6) goto L10
            r2 = 1
            goto L11
        L10:
            r2 = 0
        L11:
            if (r2 == 0) goto L16
            if (r2 == 0) goto L38
            goto L1c
        L16:
            int r2 = kawa.lib.strings.stringLength(r4)
            if (r6 <= r2) goto L38
        L1c:
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
            r2 = 4
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r2[r0] = r3
            r2[r1] = r4
            r3 = 2
            r2[r3] = r5
            r3 = 3
            r2[r3] = r6
            java.lang.String r3 = "Illegal substring spec."
            java.lang.Object r3 = kawa.lib.misc.error$V(r3, r2)
            return r3
        L38:
            gnu.mapping.Values r3 = gnu.mapping.Values.empty
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.srfi13.$PcCheckSubstringSpec(java.lang.Object, java.lang.CharSequence, int, int):java.lang.Object");
    }

    public static Object substring$SlShared$V(Object obj, Object obj2, Object[] objArr) throws Throwable {
        frame1 frame1Var = new frame1();
        frame1Var.start = obj2;
        LList lListMakeList = LList.makeList(objArr, 0);
        ApplyToArgs applyToArgs = Scheme.applyToArgs;
        Location location = loc$check$Mnarg;
        try {
            Object obj3 = location.get();
            ModuleMethod moduleMethod = strings.string$Qu;
            ModuleMethod moduleMethod2 = substring$Slshared;
            applyToArgs.apply4(obj3, moduleMethod, obj, moduleMethod2);
            try {
                frame1Var.slen = strings.stringLength((CharSequence) obj);
                try {
                    applyToArgs.apply4(location.get(), lambda$Fn5, frame1Var.start, moduleMethod2);
                    try {
                        CharSequence charSequence = (CharSequence) obj;
                        Object obj4 = frame1Var.start;
                        try {
                            int iIntValue = ((Number) obj4).intValue();
                            try {
                                Object objApply4 = applyToArgs.apply4(loc$$Cloptional.get(), lListMakeList, Integer.valueOf(frame1Var.slen), frame1Var.lambda$Fn6);
                                try {
                                    return $PcSubstring$SlShared(charSequence, iIntValue, ((Number) objApply4).intValue());
                                } catch (ClassCastException e) {
                                    throw new WrongType(e, "%substring/shared", 2, objApply4);
                                }
                            } catch (UnboundLocationException e2) {
                                e2.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 226, 10);
                                throw e2;
                            }
                        } catch (ClassCastException e3) {
                            throw new WrongType(e3, "%substring/shared", 1, obj4);
                        }
                    } catch (ClassCastException e4) {
                        throw new WrongType(e4, "%substring/shared", 0, obj);
                    }
                } catch (UnboundLocationException e5) {
                    e5.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 223, 5);
                    throw e5;
                }
            } catch (ClassCastException e6) {
                throw new WrongType(e6, "string-length", 1, obj);
            }
        } catch (UnboundLocationException e7) {
            e7.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 221, 3);
            throw e7;
        }
    }

    @Override // gnu.expr.ModuleBody
    public int matchN(ModuleMethod moduleMethod, Object[] objArr, CallContext callContext) {
        switch (moduleMethod.selector) {
            case 200:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case ErrorMessages.ERROR_CAMERA_NO_IMAGE_RETURNED /* 201 */:
            case 204:
            case 206:
            case 209:
            case 211:
            case 217:
            case 218:
            case 239:
            case 240:
            case LispEscapeFormat.ESCAPE_ALL /* 242 */:
            case 244:
            case 245:
            case 247:
            case 248:
            case ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION /* 250 */:
            case Telnet.WONT /* 252 */:
            case Telnet.DONT /* 254 */:
            case 255:
            case InputDeviceCompat.SOURCE_KEYBOARD /* 257 */:
            case 259:
            case 260:
            case 262:
            case Optimizer.OPTIMIZATION_STANDARD /* 263 */:
            case 265:
            case 267:
            case 271:
            case 277:
            case 280:
            case 281:
            case 282:
            case 283:
            case 287:
            case 289:
            case KeyboardChangeListener.MIN_KEYBOARD_HEIGHT /* 300 */:
            case ErrorMessages.ERROR_TWITTER_UNSUPPORTED_LOGIN_FUNCTION /* 301 */:
            case ErrorMessages.ERROR_TWITTER_REQUEST_DIRECT_MESSAGES_FAILED /* 309 */:
            case ErrorMessages.ERROR_TWITTER_STOP_FOLLOWING_FAILED /* 312 */:
            case 315:
            case 316:
            case 319:
            case 322:
            case 324:
            case 325:
            default:
                return super.matchN(moduleMethod, objArr, callContext);
            case ErrorMessages.ERROR_NO_CAMERA_PERMISSION /* 202 */:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 203:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 205:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 207:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 208:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 210:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 212:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 213:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 214:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 215:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 216:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 219:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 220:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 221:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 222:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 223:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 224:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 225:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 226:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 227:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case YaVersion.YOUNG_ANDROID_VERSION /* 228 */:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 229:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 230:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 231:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 232:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 233:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 234:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 235:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 236:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 237:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 238:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case LispEscapeFormat.ESCAPE_NORMAL /* 241 */:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 243:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 246:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 249:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case Telnet.WILL /* 251 */:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case Telnet.DO /* 253 */:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 256:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 258:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 261:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 264:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 266:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 268:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 269:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 270:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 272:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 273:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 274:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 275:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 276:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 278:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 279:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 284:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 285:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 286:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 288:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 290:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 291:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 292:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 293:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 294:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 295:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 296:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 297:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 298:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 299:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case ErrorMessages.ERROR_TWITTER_BLANK_CONSUMER_KEY_OR_SECRET /* 302 */:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case ErrorMessages.ERROR_TWITTER_EXCEPTION /* 303 */:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case ErrorMessages.ERROR_TWITTER_UNABLE_TO_GET_ACCESS_TOKEN /* 304 */:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case ErrorMessages.ERROR_TWITTER_AUTHORIZATION_FAILED /* 305 */:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case ErrorMessages.ERROR_TWITTER_SET_STATUS_FAILED /* 306 */:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case ErrorMessages.ERROR_TWITTER_REQUEST_MENTIONS_FAILED /* 307 */:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case ErrorMessages.ERROR_TWITTER_REQUEST_FOLLOWERS_FAILED /* 308 */:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case ErrorMessages.ERROR_TWITTER_DIRECT_MESSAGE_FAILED /* 310 */:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case ErrorMessages.ERROR_TWITTER_FOLLOW_FAILED /* 311 */:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case ErrorMessages.ERROR_TWITTER_REQUEST_FRIEND_TIMELINE_FAILED /* 313 */:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case ErrorMessages.ERROR_TWITTER_SEARCH_FAILED /* 314 */:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 317:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 318:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case ScreenDensityUtil.DEFAULT_NORMAL_SHORT_DIMENSION /* 320 */:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 321:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 323:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 326:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 327:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 328:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
        }
    }

    public class frame1 extends ModuleBody {
        final ModuleMethod lambda$Fn6;
        int slen;
        Object start;

        public frame1() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 5, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:227");
            this.lambda$Fn6 = moduleMethod;
        }

        public static boolean lambda5(Object obj) {
            boolean zIsInteger = numbers.isInteger(obj);
            return (zIsInteger && (zIsInteger = numbers.isExact(obj))) ? ((Boolean) Scheme.numLEq.apply2(srfi13.Lit0, obj)).booleanValue() : zIsInteger;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 5 ? lambda6(obj) ? Boolean.TRUE : Boolean.FALSE : super.apply1(moduleMethod, obj);
        }

        public boolean lambda6(Object obj) {
            boolean zIsInteger = numbers.isInteger(obj);
            if (!zIsInteger || !(zIsInteger = numbers.isExact(obj))) {
                return zIsInteger;
            }
            NumberCompare numberCompare = Scheme.numLEq;
            Object objApply2 = numberCompare.apply2(this.start, obj);
            try {
                boolean zBooleanValue = ((Boolean) objApply2).booleanValue();
                return zBooleanValue ? ((Boolean) numberCompare.apply2(obj, Integer.valueOf(this.slen))).booleanValue() : zBooleanValue;
            } catch (ClassCastException e) {
                throw new WrongType(e, "x", -2, objApply2);
            }
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 5) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    @Override // gnu.expr.ModuleBody
    public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
        switch (moduleMethod.selector) {
            case 199:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 209:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 211:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 217:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 239:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 240:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case LispEscapeFormat.ESCAPE_ALL /* 242 */:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 244:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 245:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 247:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 248:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION /* 250 */:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case Telnet.WONT /* 252 */:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case Telnet.DONT /* 254 */:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 255:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case InputDeviceCompat.SOURCE_KEYBOARD /* 257 */:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 259:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 260:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 262:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case Optimizer.OPTIMIZATION_STANDARD /* 263 */:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 265:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 267:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 271:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 287:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 289:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case ErrorMessages.ERROR_TWITTER_REQUEST_DIRECT_MESSAGES_FAILED /* 309 */:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case ErrorMessages.ERROR_TWITTER_STOP_FOLLOWING_FAILED /* 312 */:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 315:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 316:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 322:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 324:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 325:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            default:
                return super.match1(moduleMethod, obj, callContext);
        }
    }

    public static Object $PcSubstring$SlShared(CharSequence charSequence, int i, int i2) {
        boolean zIsZero = numbers.isZero(Integer.valueOf(i));
        return (!zIsZero ? zIsZero : i2 == strings.stringLength(charSequence)) ? strings.substring(charSequence, i, i2) : charSequence;
    }

    public class frame2 extends ModuleBody {
        final ModuleMethod lambda$Fn7 = new ModuleMethod(this, 6, null, 0);
        final ModuleMethod lambda$Fn8 = new ModuleMethod(this, 7, null, 8194);
        LList maybe$Mnstart$Plend;
        Object s;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 6 ? lambda7() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 7 ? lambda8(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 6) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 7) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda7() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mncopy, this.s, this.maybe$Mnstart$Plend);
        }

        public CharSequence lambda8(Object obj, Object obj2) {
            Object obj3 = this.s;
            try {
                try {
                    try {
                        return strings.substring((CharSequence) obj3, ((Number) obj).intValue(), ((Number) obj2).intValue());
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "substring", 3, obj2);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "substring", 2, obj);
                }
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "substring", 1, obj3);
            }
        }
    }

    public static Object stringCopy$V(Object obj, Object[] objArr) {
        frame2 frame2Var = new frame2();
        frame2Var.s = obj;
        frame2Var.maybe$Mnstart$Plend = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame2Var.lambda$Fn7, frame2Var.lambda$Fn8);
    }

    public static Object stringMap$V(Object obj, Object obj2, Object[] objArr) throws Throwable {
        frame3 frame3Var = new frame3();
        frame3Var.proc = obj;
        frame3Var.s = obj2;
        frame3Var.maybe$Mnstart$Plend = LList.makeList(objArr, 0);
        try {
            Scheme.applyToArgs.apply4(loc$check$Mnarg.get(), misc.procedure$Qu, frame3Var.proc, string$Mnmap);
            return call_with_values.callWithValues(frame3Var.lambda$Fn9, frame3Var.lambda$Fn10);
        } catch (UnboundLocationException e) {
            e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 271, 3);
            throw e;
        }
    }

    public class frame3 extends ModuleBody {
        LList maybe$Mnstart$Plend;
        Object proc;
        Object s;
        final ModuleMethod lambda$Fn9 = new ModuleMethod(this, 8, null, 0);
        final ModuleMethod lambda$Fn10 = new ModuleMethod(this, 9, null, 8194);

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 8 ? lambda9() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 9 ? lambda10(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 8) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 9) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda9() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnmap, this.s, this.maybe$Mnstart$Plend);
        }

        public Object lambda10(Object obj, Object obj2) {
            return srfi13.$PcStringMap(this.proc, this.s, obj, obj2);
        }
    }

    public static Object $PcStringMap(Object obj, Object obj2, Object obj3, Object obj4) throws Throwable {
        AddOp addOp = AddOp.$Mn;
        Object objApply2 = addOp.apply2(obj4, obj3);
        try {
            CharSequence charSequenceMakeString = strings.makeString(((Number) objApply2).intValue());
            while (true) {
                IntNum intNum = Lit1;
                obj4 = addOp.apply2(obj4, intNum);
                objApply2 = addOp.apply2(objApply2, intNum);
                if (Scheme.numLss.apply2(objApply2, Lit0) != Boolean.FALSE) {
                    return charSequenceMakeString;
                }
                try {
                    CharSeq charSeq = (CharSeq) charSequenceMakeString;
                    try {
                        int iIntValue = ((Number) objApply2).intValue();
                        try {
                            try {
                                Object objApply22 = Scheme.applyToArgs.apply2(obj, Char.make(strings.stringRef((CharSequence) obj2, ((Number) obj4).intValue())));
                                try {
                                    charSeq.setCharAt(iIntValue, ((Char) objApply22).charValue());
                                    addOp = AddOp.$Mn;
                                } catch (ClassCastException e) {
                                    throw new WrongType(e, "string-set!", 3, objApply22);
                                }
                            } catch (ClassCastException e2) {
                                throw new WrongType(e2, "string-ref", 2, obj4);
                            }
                        } catch (ClassCastException e3) {
                            throw new WrongType(e3, "string-ref", 1, obj2);
                        }
                    } catch (ClassCastException e4) {
                        throw new WrongType(e4, "string-set!", 2, objApply2);
                    }
                } catch (ClassCastException e5) {
                    throw new WrongType(e5, "string-set!", 1, charSequenceMakeString);
                }
            }
        } catch (ClassCastException e6) {
            throw new WrongType(e6, "make-string", 1, objApply2);
        }
    }

    public static Object stringMap$Ex$V(Object obj, Object obj2, Object[] objArr) throws Throwable {
        frame4 frame4Var = new frame4();
        frame4Var.proc = obj;
        frame4Var.s = obj2;
        frame4Var.maybe$Mnstart$Plend = LList.makeList(objArr, 0);
        try {
            Scheme.applyToArgs.apply4(loc$check$Mnarg.get(), misc.procedure$Qu, frame4Var.proc, string$Mnmap$Ex);
            return call_with_values.callWithValues(frame4Var.lambda$Fn11, frame4Var.lambda$Fn12);
        } catch (UnboundLocationException e) {
            e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 285, 3);
            throw e;
        }
    }

    public class frame4 extends ModuleBody {
        final ModuleMethod lambda$Fn11 = new ModuleMethod(this, 10, null, 0);
        final ModuleMethod lambda$Fn12 = new ModuleMethod(this, 11, null, 8194);
        LList maybe$Mnstart$Plend;
        Object proc;
        Object s;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 10 ? lambda11() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 11 ? lambda12(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 10) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 11) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda11() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnmap$Ex, this.s, this.maybe$Mnstart$Plend);
        }

        public Object lambda12(Object obj, Object obj2) {
            return srfi13.$PcStringMap$Ex(this.proc, this.s, obj, obj2);
        }
    }

    public static Object $PcStringMap$Ex(Object obj, Object obj2, Object obj3, Object obj4) throws Throwable {
        while (true) {
            obj4 = AddOp.$Mn.apply2(obj4, Lit1);
            if (Scheme.numLss.apply2(obj4, obj3) != Boolean.FALSE) {
                return Values.empty;
            }
            try {
                CharSeq charSeq = (CharSeq) obj2;
                try {
                    int iIntValue = ((Number) obj4).intValue();
                    try {
                        try {
                            Object objApply2 = Scheme.applyToArgs.apply2(obj, Char.make(strings.stringRef((CharSequence) obj2, ((Number) obj4).intValue())));
                            try {
                                charSeq.setCharAt(iIntValue, ((Char) objApply2).charValue());
                            } catch (ClassCastException e) {
                                throw new WrongType(e, "string-set!", 3, objApply2);
                            }
                        } catch (ClassCastException e2) {
                            throw new WrongType(e2, "string-ref", 2, obj4);
                        }
                    } catch (ClassCastException e3) {
                        throw new WrongType(e3, "string-ref", 1, obj2);
                    }
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "string-set!", 2, obj4);
                }
            } catch (ClassCastException e5) {
                throw new WrongType(e5, "string-set!", 1, obj2);
            }
        }
    }

    public static Object stringFold$V(Object obj, Object obj2, Object obj3, Object[] objArr) throws Throwable {
        frame5 frame5Var = new frame5();
        frame5Var.kons = obj;
        frame5Var.knil = obj2;
        frame5Var.s = obj3;
        frame5Var.maybe$Mnstart$Plend = LList.makeList(objArr, 0);
        try {
            Scheme.applyToArgs.apply4(loc$check$Mnarg.get(), misc.procedure$Qu, frame5Var.kons, string$Mnfold);
            return call_with_values.callWithValues(frame5Var.lambda$Fn13, frame5Var.lambda$Fn14);
        } catch (UnboundLocationException e) {
            e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 295, 3);
            throw e;
        }
    }

    public class frame5 extends ModuleBody {
        Object knil;
        Object kons;
        final ModuleMethod lambda$Fn13 = new ModuleMethod(this, 12, null, 0);
        final ModuleMethod lambda$Fn14 = new ModuleMethod(this, 13, null, 8194);
        LList maybe$Mnstart$Plend;
        Object s;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 12 ? lambda13() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 13 ? lambda14(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
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

        public Object lambda13() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnfold, this.s, this.maybe$Mnstart$Plend);
        }

        public Object lambda14(Object obj, Object obj2) throws Throwable {
            Object objApply3 = this.knil;
            while (Scheme.numLss.apply2(obj, obj2) != Boolean.FALSE) {
                ApplyToArgs applyToArgs = Scheme.applyToArgs;
                Object obj3 = this.kons;
                Object obj4 = this.s;
                try {
                    try {
                        objApply3 = applyToArgs.apply3(obj3, Char.make(strings.stringRef((CharSequence) obj4, ((Number) obj).intValue())), objApply3);
                        obj = AddOp.$Pl.apply2(obj, srfi13.Lit1);
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "string-ref", 2, obj);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "string-ref", 1, obj4);
                }
            }
            return objApply3;
        }
    }

    public static Object stringFoldRight$V(Object obj, Object obj2, Object obj3, Object[] objArr) throws Throwable {
        frame6 frame6Var = new frame6();
        frame6Var.kons = obj;
        frame6Var.knil = obj2;
        frame6Var.s = obj3;
        frame6Var.maybe$Mnstart$Plend = LList.makeList(objArr, 0);
        try {
            Scheme.applyToArgs.apply4(loc$check$Mnarg.get(), misc.procedure$Qu, frame6Var.kons, string$Mnfold$Mnright);
            return call_with_values.callWithValues(frame6Var.lambda$Fn15, frame6Var.lambda$Fn16);
        } catch (UnboundLocationException e) {
            e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", ErrorMessages.ERROR_TWITTER_BLANK_CONSUMER_KEY_OR_SECRET, 3);
            throw e;
        }
    }

    public class frame6 extends ModuleBody {
        Object knil;
        Object kons;
        final ModuleMethod lambda$Fn15 = new ModuleMethod(this, 14, null, 0);
        final ModuleMethod lambda$Fn16 = new ModuleMethod(this, 15, null, 8194);
        LList maybe$Mnstart$Plend;
        Object s;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 14 ? lambda15() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 15 ? lambda16(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 14) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 15) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda15() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnfold$Mnright, this.s, this.maybe$Mnstart$Plend);
        }

        public Object lambda16(Object obj, Object obj2) throws Throwable {
            Object objApply3 = this.knil;
            for (Object objApply2 = AddOp.$Mn.apply2(obj2, srfi13.Lit1); Scheme.numGEq.apply2(objApply2, obj) != Boolean.FALSE; objApply2 = AddOp.$Mn.apply2(objApply2, srfi13.Lit1)) {
                ApplyToArgs applyToArgs = Scheme.applyToArgs;
                Object obj3 = this.kons;
                Object obj4 = this.s;
                try {
                    try {
                        objApply3 = applyToArgs.apply3(obj3, Char.make(strings.stringRef((CharSequence) obj4, ((Number) objApply2).intValue())), objApply3);
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "string-ref", 2, objApply2);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "string-ref", 1, obj4);
                }
            }
            return objApply3;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00ee, code lost:
    
        r19 = r26 + r19;
        r0 = java.lang.Integer.valueOf(r19);
        r13 = new java.lang.Object[2];
        r13[r16] = gnu.kawa.slib.srfi13.Lit2;
        r13[1] = r0;
        r8 = kawa.lib.numbers.min(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0104, code lost:
    
        r0 = ((java.lang.Number) r8).intValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x010b, code lost:
    
        r8 = kawa.lib.strings.makeString(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0130, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0137, code lost:
    
        throw new gnu.mapping.WrongType(r0, "string-set!", 3, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0138, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x013f, code lost:
    
        throw new gnu.mapping.WrongType(r0, "string-set!", 1, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0140, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0149, code lost:
    
        throw new gnu.mapping.WrongType(r0, "chunk-len2", -2, r8);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object stringUnfold$V(java.lang.Object r23, java.lang.Object r24, java.lang.Object r25, java.lang.Object r26, java.lang.Object[] r27) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 681
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.srfi13.stringUnfold$V(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object[]):java.lang.Object");
    }

    public static String lambda17(Object obj) {
        return "";
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00ce, code lost:
    
        r0 = gnu.kawa.functions.AddOp.$Pl;
        r1 = kawa.lib.numbers.min(gnu.kawa.slib.srfi13.Lit4, r0.apply2(r12, r14));
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00eb, code lost:
    
        r2 = kawa.lib.strings.makeString(((java.lang.Number) r1).intValue());
        r25 = r11;
        r5 = gnu.kawa.functions.AddOp.$Mn.apply2(r1, gnu.kawa.slib.srfi13.Lit1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00fc, code lost:
    
        r21 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0126, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x012d, code lost:
    
        throw new gnu.mapping.WrongType(r0, "string-set!", 3, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x012e, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0135, code lost:
    
        throw new gnu.mapping.WrongType(r0, "string-set!", 2, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0136, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x013d, code lost:
    
        throw new gnu.mapping.WrongType(r0, "string-set!", 1, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x013e, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0145, code lost:
    
        throw new gnu.mapping.WrongType(r0, "make-string", 1, r1);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object stringUnfoldRight$V(java.lang.Object r22, java.lang.Object r23, java.lang.Object r24, java.lang.Object r25, java.lang.Object[] r26) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 668
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.srfi13.stringUnfoldRight$V(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object[]):java.lang.Object");
    }

    public static String lambda18(Object obj) {
        return "";
    }

    public static Object stringForEach$V(Object obj, Object obj2, Object[] objArr) throws Throwable {
        frame7 frame7Var = new frame7();
        frame7Var.proc = obj;
        frame7Var.s = obj2;
        frame7Var.maybe$Mnstart$Plend = LList.makeList(objArr, 0);
        try {
            Scheme.applyToArgs.apply4(loc$check$Mnarg.get(), misc.procedure$Qu, frame7Var.proc, string$Mnfor$Mneach);
            return call_with_values.callWithValues(frame7Var.lambda$Fn19, frame7Var.lambda$Fn20);
        } catch (UnboundLocationException e) {
            e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 468, 3);
            throw e;
        }
    }

    public class frame7 extends ModuleBody {
        final ModuleMethod lambda$Fn19 = new ModuleMethod(this, 16, null, 0);
        final ModuleMethod lambda$Fn20 = new ModuleMethod(this, 17, null, 8194);
        LList maybe$Mnstart$Plend;
        Object proc;
        Object s;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 16 ? lambda19() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 17 ? lambda20(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 16) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 17) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda19() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnfor$Mneach, this.s, this.maybe$Mnstart$Plend);
        }

        public Object lambda20(Object obj, Object obj2) throws Throwable {
            while (Scheme.numLss.apply2(obj, obj2) != Boolean.FALSE) {
                ApplyToArgs applyToArgs = Scheme.applyToArgs;
                Object obj3 = this.proc;
                Object obj4 = this.s;
                try {
                    try {
                        applyToArgs.apply2(obj3, Char.make(strings.stringRef((CharSequence) obj4, ((Number) obj).intValue())));
                        obj = AddOp.$Pl.apply2(obj, srfi13.Lit1);
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "string-ref", 2, obj);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "string-ref", 1, obj4);
                }
            }
            return Values.empty;
        }
    }

    public static Object stringForEachIndex$V(Object obj, Object obj2, Object[] objArr) throws Throwable {
        frame8 frame8Var = new frame8();
        frame8Var.proc = obj;
        frame8Var.s = obj2;
        frame8Var.maybe$Mnstart$Plend = LList.makeList(objArr, 0);
        try {
            Scheme.applyToArgs.apply4(loc$check$Mnarg.get(), misc.procedure$Qu, frame8Var.proc, string$Mnfor$Mneach$Mnindex);
            return call_with_values.callWithValues(frame8Var.lambda$Fn21, frame8Var.lambda$Fn22);
        } catch (UnboundLocationException e) {
            e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 476, 3);
            throw e;
        }
    }

    public class frame8 extends ModuleBody {
        final ModuleMethod lambda$Fn21 = new ModuleMethod(this, 18, null, 0);
        final ModuleMethod lambda$Fn22 = new ModuleMethod(this, 19, null, 8194);
        LList maybe$Mnstart$Plend;
        Object proc;
        Object s;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 18 ? lambda21() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 19 ? lambda22(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 18) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 19) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda21() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnfor$Mneach$Mnindex, this.s, this.maybe$Mnstart$Plend);
        }

        public Object lambda22(Object obj, Object obj2) throws Throwable {
            while (Scheme.numLss.apply2(obj, obj2) != Boolean.FALSE) {
                Scheme.applyToArgs.apply2(this.proc, obj);
                obj = AddOp.$Pl.apply2(obj, srfi13.Lit1);
            }
            return Values.empty;
        }
    }

    public class frame9 extends ModuleBody {
        Object criterion;
        final ModuleMethod lambda$Fn23 = new ModuleMethod(this, 20, null, 0);
        final ModuleMethod lambda$Fn24 = new ModuleMethod(this, 21, null, 8194);
        LList maybe$Mnstart$Plend;
        Object s;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 20 ? lambda23() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 21 ? lambda24(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 20) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 21) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda23() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnevery, this.s, this.maybe$Mnstart$Plend);
        }

        public Object lambda24(Object obj, Object obj2) throws Throwable {
            Boolean bool;
            Object objApply2;
            if (characters.isChar(this.criterion)) {
                while (true) {
                    Object objApply22 = Scheme.numGEq.apply2(obj, obj2);
                    try {
                        boolean zBooleanValue = ((Boolean) objApply22).booleanValue();
                        if (zBooleanValue) {
                            return zBooleanValue ? Boolean.TRUE : Boolean.FALSE;
                        }
                        Object obj3 = this.criterion;
                        try {
                            Char r0 = (Char) obj3;
                            Object obj4 = this.s;
                            try {
                                try {
                                    boolean zL = a.l((CharSequence) obj4, ((Number) obj).intValue(), r0);
                                    if (!zL) {
                                        return zL ? Boolean.TRUE : Boolean.FALSE;
                                    }
                                    obj = AddOp.$Pl.apply2(obj, srfi13.Lit1);
                                } catch (ClassCastException e) {
                                    throw new WrongType(e, "string-ref", 2, obj);
                                }
                            } catch (ClassCastException e2) {
                                throw new WrongType(e2, "string-ref", 1, obj4);
                            }
                        } catch (ClassCastException e3) {
                            throw new WrongType(e3, "char=?", 1, obj3);
                        }
                    } catch (ClassCastException e4) {
                        throw new WrongType(e4, "x", -2, objApply22);
                    }
                }
            } else {
                try {
                    Object objApply23 = Scheme.applyToArgs.apply2(srfi13.loc$char$Mnset$Qu.get(), this.criterion);
                    Boolean bool2 = Boolean.FALSE;
                    if (objApply23 == bool2) {
                        if (!misc.isProcedure(this.criterion)) {
                            return misc.error$V("Second param is neither char-set, char, or predicate procedure.", new Object[]{srfi13.string$Mnevery, this.criterion});
                        }
                        Object objApply24 = Scheme.numEqu.apply2(obj, obj2);
                        try {
                            boolean zBooleanValue2 = ((Boolean) objApply24).booleanValue();
                            if (zBooleanValue2) {
                                return zBooleanValue2 ? Boolean.TRUE : bool2;
                            }
                            do {
                                Object obj5 = this.s;
                                try {
                                    try {
                                        char cStringRef = strings.stringRef((CharSequence) obj5, ((Number) obj).intValue());
                                        obj = AddOp.$Pl.apply2(obj, srfi13.Lit1);
                                        Object objApply25 = Scheme.numEqu.apply2(obj, obj2);
                                        bool = Boolean.FALSE;
                                        if (objApply25 != bool) {
                                            return Scheme.applyToArgs.apply2(this.criterion, Char.make(cStringRef));
                                        }
                                        objApply2 = Scheme.applyToArgs.apply2(this.criterion, Char.make(cStringRef));
                                    } catch (ClassCastException e5) {
                                        throw new WrongType(e5, "string-ref", 2, obj);
                                    }
                                } catch (ClassCastException e6) {
                                    throw new WrongType(e6, "string-ref", 1, obj5);
                                }
                            } while (objApply2 != bool);
                            return objApply2;
                        } catch (ClassCastException e7) {
                            throw new WrongType(e7, "x", -2, objApply24);
                        }
                    }
                    while (true) {
                        Object objApply26 = Scheme.numGEq.apply2(obj, obj2);
                        try {
                            boolean zBooleanValue3 = ((Boolean) objApply26).booleanValue();
                            if (zBooleanValue3) {
                                return zBooleanValue3 ? Boolean.TRUE : Boolean.FALSE;
                            }
                            ApplyToArgs applyToArgs = Scheme.applyToArgs;
                            try {
                                Object obj6 = srfi13.loc$char$Mnset$Mncontains$Qu.get();
                                Object obj7 = this.criterion;
                                Object obj8 = this.s;
                                try {
                                    try {
                                        Object objApply3 = applyToArgs.apply3(obj6, obj7, Char.make(strings.stringRef((CharSequence) obj8, ((Number) obj).intValue())));
                                        if (objApply3 == Boolean.FALSE) {
                                            return objApply3;
                                        }
                                        obj = AddOp.$Pl.apply2(obj, srfi13.Lit1);
                                    } catch (ClassCastException e8) {
                                        throw new WrongType(e8, "string-ref", 2, obj);
                                    }
                                } catch (ClassCastException e9) {
                                    throw new WrongType(e9, "string-ref", 1, obj8);
                                }
                            } catch (UnboundLocationException e10) {
                                e10.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 492, 9);
                                throw e10;
                            }
                        } catch (ClassCastException e11) {
                            throw new WrongType(e11, "x", -2, objApply26);
                        }
                    }
                } catch (UnboundLocationException e12) {
                    e12.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 489, 5);
                    throw e12;
                }
            }
        }
    }

    public static Object stringEvery$V(Object obj, Object obj2, Object[] objArr) {
        frame9 frame9Var = new frame9();
        frame9Var.criterion = obj;
        frame9Var.s = obj2;
        frame9Var.maybe$Mnstart$Plend = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame9Var.lambda$Fn23, frame9Var.lambda$Fn24);
    }

    public class frame10 extends ModuleBody {
        Object criterion;
        final ModuleMethod lambda$Fn25 = new ModuleMethod(this, 22, null, 0);
        final ModuleMethod lambda$Fn26 = new ModuleMethod(this, 23, null, 8194);
        LList maybe$Mnstart$Plend;
        Object s;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 22 ? lambda25() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 23 ? lambda26(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
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

        public Object lambda25() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnany, this.s, this.maybe$Mnstart$Plend);
        }

        public Object lambda26(Object obj, Object obj2) throws Throwable {
            Boolean bool;
            Object objApply2;
            if (characters.isChar(this.criterion)) {
                while (true) {
                    Object objApply22 = Scheme.numLss.apply2(obj, obj2);
                    try {
                        boolean zBooleanValue = ((Boolean) objApply22).booleanValue();
                        if (!zBooleanValue) {
                            return zBooleanValue ? Boolean.TRUE : Boolean.FALSE;
                        }
                        Object obj3 = this.criterion;
                        try {
                            Char r0 = (Char) obj3;
                            Object obj4 = this.s;
                            try {
                                try {
                                    boolean zL = a.l((CharSequence) obj4, ((Number) obj).intValue(), r0);
                                    if (zL) {
                                        return zL ? Boolean.TRUE : Boolean.FALSE;
                                    }
                                    obj = AddOp.$Pl.apply2(obj, srfi13.Lit1);
                                } catch (ClassCastException e) {
                                    throw new WrongType(e, "string-ref", 2, obj);
                                }
                            } catch (ClassCastException e2) {
                                throw new WrongType(e2, "string-ref", 1, obj4);
                            }
                        } catch (ClassCastException e3) {
                            throw new WrongType(e3, "char=?", 1, obj3);
                        }
                    } catch (ClassCastException e4) {
                        throw new WrongType(e4, "x", -2, objApply22);
                    }
                }
            } else {
                try {
                    Object objApply23 = Scheme.applyToArgs.apply2(srfi13.loc$char$Mnset$Qu.get(), this.criterion);
                    Boolean bool2 = Boolean.FALSE;
                    if (objApply23 == bool2) {
                        if (!misc.isProcedure(this.criterion)) {
                            return misc.error$V("Second param is neither char-set, char, or predicate procedure.", new Object[]{srfi13.string$Mnany, this.criterion});
                        }
                        Object objApply24 = Scheme.numLss.apply2(obj, obj2);
                        try {
                            boolean zBooleanValue2 = ((Boolean) objApply24).booleanValue();
                            if (!zBooleanValue2) {
                                return zBooleanValue2 ? Boolean.TRUE : bool2;
                            }
                            do {
                                Object obj5 = this.s;
                                try {
                                    try {
                                        char cStringRef = strings.stringRef((CharSequence) obj5, ((Number) obj).intValue());
                                        obj = AddOp.$Pl.apply2(obj, srfi13.Lit1);
                                        Object objApply25 = Scheme.numEqu.apply2(obj, obj2);
                                        bool = Boolean.FALSE;
                                        if (objApply25 != bool) {
                                            return Scheme.applyToArgs.apply2(this.criterion, Char.make(cStringRef));
                                        }
                                        objApply2 = Scheme.applyToArgs.apply2(this.criterion, Char.make(cStringRef));
                                    } catch (ClassCastException e5) {
                                        throw new WrongType(e5, "string-ref", 2, obj);
                                    }
                                } catch (ClassCastException e6) {
                                    throw new WrongType(e6, "string-ref", 1, obj5);
                                }
                            } while (objApply2 == bool);
                            return objApply2;
                        } catch (ClassCastException e7) {
                            throw new WrongType(e7, "x", -2, objApply24);
                        }
                    }
                    while (true) {
                        Object objApply26 = Scheme.numLss.apply2(obj, obj2);
                        try {
                            boolean zBooleanValue3 = ((Boolean) objApply26).booleanValue();
                            if (!zBooleanValue3) {
                                return zBooleanValue3 ? Boolean.TRUE : Boolean.FALSE;
                            }
                            ApplyToArgs applyToArgs = Scheme.applyToArgs;
                            try {
                                Object obj6 = srfi13.loc$char$Mnset$Mncontains$Qu.get();
                                Object obj7 = this.criterion;
                                Object obj8 = this.s;
                                try {
                                    try {
                                        Object objApply3 = applyToArgs.apply3(obj6, obj7, Char.make(strings.stringRef((CharSequence) obj8, ((Number) obj).intValue())));
                                        if (objApply3 != Boolean.FALSE) {
                                            return objApply3;
                                        }
                                        obj = AddOp.$Pl.apply2(obj, srfi13.Lit1);
                                    } catch (ClassCastException e8) {
                                        throw new WrongType(e8, "string-ref", 2, obj);
                                    }
                                } catch (ClassCastException e9) {
                                    throw new WrongType(e9, "string-ref", 1, obj8);
                                }
                            } catch (UnboundLocationException e10) {
                                e10.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", ErrorMessages.ERROR_BLUETOOTH_END_OF_STREAM, 9);
                                throw e10;
                            }
                        } catch (ClassCastException e11) {
                            throw new WrongType(e11, "x", -2, objApply26);
                        }
                    }
                } catch (UnboundLocationException e12) {
                    e12.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", ErrorMessages.ERROR_BLUETOOTH_NOT_CONNECTED_TO_DEVICE, 5);
                    throw e12;
                }
            }
        }
    }

    public static Object stringAny$V(Object obj, Object obj2, Object[] objArr) {
        frame10 frame10Var = new frame10();
        frame10Var.criterion = obj;
        frame10Var.s = obj2;
        frame10Var.maybe$Mnstart$Plend = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame10Var.lambda$Fn25, frame10Var.lambda$Fn26);
    }

    @Override // gnu.expr.ModuleBody
    public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 218) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        switch (i) {
            case 280:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 281:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 282:
                if (!(obj instanceof CharSequence)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 283:
                if (!(obj instanceof CharSequence)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            default:
                return super.match2(moduleMethod, obj, obj2, callContext);
        }
    }

    public static CharSequence stringTabulate(Object obj, int i) throws Throwable {
        ApplyToArgs applyToArgs = Scheme.applyToArgs;
        Location location = loc$check$Mnarg;
        try {
            Object obj2 = location.get();
            ModuleMethod moduleMethod = misc.procedure$Qu;
            ModuleMethod moduleMethod2 = string$Mntabulate;
            applyToArgs.apply4(obj2, moduleMethod, obj, moduleMethod2);
            try {
                applyToArgs.apply4(location.get(), lambda$Fn27, Integer.valueOf(i), moduleMethod2);
                CharSequence charSequenceMakeString = strings.makeString(i);
                for (int i2 = i - 1; i2 >= 0; i2--) {
                    try {
                        CharSeq charSeq = (CharSeq) charSequenceMakeString;
                        Object objApply2 = Scheme.applyToArgs.apply2(obj, Integer.valueOf(i2));
                        try {
                            charSeq.setCharAt(i2, ((Char) objApply2).charValue());
                        } catch (ClassCastException e) {
                            throw new WrongType(e, "string-set!", 3, objApply2);
                        }
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "string-set!", 1, charSequenceMakeString);
                    }
                }
                return charSequenceMakeString;
            } catch (UnboundLocationException e3) {
                e3.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 535, 3);
                throw e3;
            }
        } catch (UnboundLocationException e4) {
            e4.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 534, 3);
            throw e4;
        }
    }

    public static boolean lambda27(Object obj) {
        boolean zIsInteger = numbers.isInteger(obj);
        return (zIsInteger && (zIsInteger = numbers.isExact(obj))) ? ((Boolean) Scheme.numLEq.apply2(Lit0, obj)).booleanValue() : zIsInteger;
    }

    public static Object $PcStringPrefixLength(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) throws Throwable {
        AddOp addOp = AddOp.$Mn;
        Object objMin = numbers.min(addOp.apply2(obj3, obj2), addOp.apply2(obj6, obj5));
        Object objApply2 = AddOp.$Pl.apply2(obj2, objMin);
        boolean z = obj == obj4;
        if (!z ? !z : Scheme.numEqu.apply2(obj2, obj5) == Boolean.FALSE) {
            return objMin;
        }
        Object objApply22 = obj2;
        while (true) {
            Object objApply23 = Scheme.numGEq.apply2(objApply22, objApply2);
            try {
                boolean zBooleanValue = ((Boolean) objApply23).booleanValue();
                if (!zBooleanValue) {
                    try {
                        try {
                            try {
                                try {
                                    if (!a.l((CharSequence) obj4, ((Number) obj5).intValue(), Char.make(strings.stringRef((CharSequence) obj, ((Number) objApply22).intValue())))) {
                                        break;
                                    }
                                    AddOp addOp2 = AddOp.$Pl;
                                    IntNum intNum = Lit1;
                                    objApply22 = addOp2.apply2(objApply22, intNum);
                                    obj5 = addOp2.apply2(obj5, intNum);
                                } catch (ClassCastException e) {
                                    throw new WrongType(e, "string-ref", 2, obj5);
                                }
                            } catch (ClassCastException e2) {
                                throw new WrongType(e2, "string-ref", 1, obj4);
                            }
                        } catch (ClassCastException e3) {
                            throw new WrongType(e3, "string-ref", 2, objApply22);
                        }
                    } catch (ClassCastException e4) {
                        throw new WrongType(e4, "string-ref", 1, obj);
                    }
                } else {
                    if (zBooleanValue) {
                        break;
                    }
                    AddOp addOp22 = AddOp.$Pl;
                    IntNum intNum2 = Lit1;
                    objApply22 = addOp22.apply2(objApply22, intNum2);
                    obj5 = addOp22.apply2(obj5, intNum2);
                }
            } catch (ClassCastException e5) {
                throw new WrongType(e5, "x", -2, objApply23);
            }
        }
        return AddOp.$Mn.apply2(objApply22, obj2);
    }

    public static Object $PcStringSuffixLength(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) throws Throwable {
        AddOp addOp = AddOp.$Mn;
        Object objMin = numbers.min(addOp.apply2(obj3, obj2), addOp.apply2(obj6, obj5));
        Object objApply2 = addOp.apply2(obj3, objMin);
        boolean z = obj == obj4;
        if (!z ? !z : Scheme.numEqu.apply2(obj3, obj6) == Boolean.FALSE) {
            return objMin;
        }
        IntNum intNum = Lit1;
        Object objApply22 = addOp.apply2(obj3, intNum);
        Object objApply23 = addOp.apply2(obj6, intNum);
        while (true) {
            Object objApply24 = Scheme.numLss.apply2(objApply22, objApply2);
            try {
                boolean zBooleanValue = ((Boolean) objApply24).booleanValue();
                if (!zBooleanValue) {
                    try {
                        try {
                            try {
                                try {
                                    if (!a.l((CharSequence) obj4, ((Number) objApply23).intValue(), Char.make(strings.stringRef((CharSequence) obj, ((Number) objApply22).intValue())))) {
                                        break;
                                    }
                                    AddOp addOp2 = AddOp.$Mn;
                                    IntNum intNum2 = Lit1;
                                    objApply22 = addOp2.apply2(objApply22, intNum2);
                                    objApply23 = addOp2.apply2(objApply23, intNum2);
                                } catch (ClassCastException e) {
                                    throw new WrongType(e, "string-ref", 2, objApply23);
                                }
                            } catch (ClassCastException e2) {
                                throw new WrongType(e2, "string-ref", 1, obj4);
                            }
                        } catch (ClassCastException e3) {
                            throw new WrongType(e3, "string-ref", 2, objApply22);
                        }
                    } catch (ClassCastException e4) {
                        throw new WrongType(e4, "string-ref", 1, obj);
                    }
                } else {
                    if (zBooleanValue) {
                        break;
                    }
                    AddOp addOp22 = AddOp.$Mn;
                    IntNum intNum22 = Lit1;
                    objApply22 = addOp22.apply2(objApply22, intNum22);
                    objApply23 = addOp22.apply2(objApply23, intNum22);
                }
            } catch (ClassCastException e5) {
                throw new WrongType(e5, "x", -2, objApply24);
            }
        }
        AddOp addOp3 = AddOp.$Mn;
        return addOp3.apply2(addOp3.apply2(obj3, objApply22), Lit1);
    }

    public static int $PcStringPrefixLengthCi(Object obj, int i, int i2, Object obj2, int i3, int i4) {
        Object objMin = numbers.min(Integer.valueOf(i2 - i), Integer.valueOf(i4 - i3));
        try {
            int iIntValue = ((Number) objMin).intValue();
            int i5 = i + iIntValue;
            boolean z = obj == obj2;
            if (!z ? !z : i != i3) {
                return iIntValue;
            }
            int i6 = i;
            while (true) {
                boolean z2 = i6 >= i5;
                if (!z2) {
                    try {
                        try {
                            if (!unicode.isCharCi$Eq(Char.make(strings.stringRef((CharSequence) obj, i6)), Char.make(strings.stringRef((CharSequence) obj2, i3)))) {
                                break;
                            }
                            i3++;
                            i6++;
                        } catch (ClassCastException e) {
                            throw new WrongType(e, "string-ref", 1, obj2);
                        }
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "string-ref", 1, obj);
                    }
                } else {
                    if (z2) {
                        break;
                    }
                    i3++;
                    i6++;
                }
            }
            return i6 - i;
        } catch (ClassCastException e3) {
            throw new WrongType(e3, "delta", -2, objMin);
        }
    }

    public static int $PcStringSuffixLengthCi(Object obj, int i, int i2, Object obj2, int i3, int i4) {
        Object objMin = numbers.min(Integer.valueOf(i2 - i), Integer.valueOf(i4 - i3));
        try {
            int iIntValue = ((Number) objMin).intValue();
            int i5 = i2 - iIntValue;
            boolean z = obj == obj2;
            if (!z ? !z : i2 != i4) {
                return iIntValue;
            }
            int i6 = i2 - 1;
            int i7 = i4 - 1;
            while (true) {
                boolean z2 = i6 < i5;
                if (!z2) {
                    try {
                        try {
                            if (!unicode.isCharCi$Eq(Char.make(strings.stringRef((CharSequence) obj, i6)), Char.make(strings.stringRef((CharSequence) obj2, i7)))) {
                                break;
                            }
                            i7--;
                            i6--;
                        } catch (ClassCastException e) {
                            throw new WrongType(e, "string-ref", 1, obj2);
                        }
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "string-ref", 1, obj);
                    }
                } else {
                    if (z2) {
                        break;
                    }
                    i7--;
                    i6--;
                }
            }
            return (i2 - i6) - 1;
        } catch (ClassCastException e3) {
            throw new WrongType(e3, "delta", -2, objMin);
        }
    }

    public class frame11 extends ModuleBody {
        final ModuleMethod lambda$Fn28 = new ModuleMethod(this, 26, null, 0);
        final ModuleMethod lambda$Fn29 = new ModuleMethod(this, 27, null, 12291);
        LList maybe$Mnstarts$Plends;
        Object s1;
        Object s2;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 26 ? lambda28() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            return moduleMethod.selector == 27 ? lambda29(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
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
        public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
            if (moduleMethod.selector != 27) {
                return super.match3(moduleMethod, obj, obj2, obj3, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }

        public Object lambda28() {
            return srfi13.stringParseStart$PlEnd(srfi13.string$Mnprefix$Mnlength, this.s1, this.maybe$Mnstarts$Plends);
        }

        public Object lambda29(Object obj, Object obj2, Object obj3) {
            frame12 frame12Var = new frame12();
            frame12Var.staticLink = this;
            frame12Var.rest = obj;
            frame12Var.start1 = obj2;
            frame12Var.end1 = obj3;
            return call_with_values.callWithValues(frame12Var.lambda$Fn30, frame12Var.lambda$Fn31);
        }
    }

    public class frame12 extends ModuleBody {
        Object end1;
        final ModuleMethod lambda$Fn30 = new ModuleMethod(this, 24, null, 0);
        final ModuleMethod lambda$Fn31 = new ModuleMethod(this, 25, null, 8194);
        Object rest;
        Object start1;
        frame11 staticLink;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 24 ? lambda30() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 25 ? lambda31(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
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

        public Object lambda30() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnprefix$Mnlength, this.staticLink.s2, this.rest);
        }

        public Object lambda31(Object obj, Object obj2) {
            frame11 frame11Var = this.staticLink;
            return srfi13.$PcStringPrefixLength(frame11Var.s1, this.start1, this.end1, frame11Var.s2, obj, obj2);
        }
    }

    public static Object stringPrefixLength$V(Object obj, Object obj2, Object[] objArr) {
        frame11 frame11Var = new frame11();
        frame11Var.s1 = obj;
        frame11Var.s2 = obj2;
        frame11Var.maybe$Mnstarts$Plends = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame11Var.lambda$Fn28, frame11Var.lambda$Fn29);
    }

    public class frame13 extends ModuleBody {
        final ModuleMethod lambda$Fn32 = new ModuleMethod(this, 30, null, 0);
        final ModuleMethod lambda$Fn33 = new ModuleMethod(this, 31, null, 12291);
        LList maybe$Mnstarts$Plends;
        Object s1;
        Object s2;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 30 ? lambda32() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            return moduleMethod.selector == 31 ? lambda33(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 30) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
            if (moduleMethod.selector != 31) {
                return super.match3(moduleMethod, obj, obj2, obj3, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }

        public Object lambda32() {
            return srfi13.stringParseStart$PlEnd(srfi13.string$Mnsuffix$Mnlength, this.s1, this.maybe$Mnstarts$Plends);
        }

        public Object lambda33(Object obj, Object obj2, Object obj3) {
            frame14 frame14Var = new frame14();
            frame14Var.staticLink = this;
            frame14Var.rest = obj;
            frame14Var.start1 = obj2;
            frame14Var.end1 = obj3;
            return call_with_values.callWithValues(frame14Var.lambda$Fn34, frame14Var.lambda$Fn35);
        }
    }

    public class frame14 extends ModuleBody {
        Object end1;
        final ModuleMethod lambda$Fn34 = new ModuleMethod(this, 28, null, 0);
        final ModuleMethod lambda$Fn35 = new ModuleMethod(this, 29, null, 8194);
        Object rest;
        Object start1;
        frame13 staticLink;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 28 ? lambda34() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 29 ? lambda35(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
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

        public Object lambda34() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnsuffix$Mnlength, this.staticLink.s2, this.rest);
        }

        public Object lambda35(Object obj, Object obj2) {
            frame13 frame13Var = this.staticLink;
            return srfi13.$PcStringSuffixLength(frame13Var.s1, this.start1, this.end1, frame13Var.s2, obj, obj2);
        }
    }

    public static Object stringSuffixLength$V(Object obj, Object obj2, Object[] objArr) {
        frame13 frame13Var = new frame13();
        frame13Var.s1 = obj;
        frame13Var.s2 = obj2;
        frame13Var.maybe$Mnstarts$Plends = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame13Var.lambda$Fn32, frame13Var.lambda$Fn33);
    }

    public class frame15 extends ModuleBody {
        final ModuleMethod lambda$Fn36 = new ModuleMethod(this, 34, null, 0);
        final ModuleMethod lambda$Fn37 = new ModuleMethod(this, 35, null, 12291);
        LList maybe$Mnstarts$Plends;
        Object s1;
        Object s2;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 34 ? lambda36() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            return moduleMethod.selector == 35 ? lambda37(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 34) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
            if (moduleMethod.selector != 35) {
                return super.match3(moduleMethod, obj, obj2, obj3, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }

        public Object lambda36() {
            return srfi13.stringParseStart$PlEnd(srfi13.string$Mnprefix$Mnlength$Mnci, this.s1, this.maybe$Mnstarts$Plends);
        }

        public Object lambda37(Object obj, Object obj2, Object obj3) {
            frame16 frame16Var = new frame16();
            frame16Var.staticLink = this;
            frame16Var.rest = obj;
            frame16Var.start1 = obj2;
            frame16Var.end1 = obj3;
            return call_with_values.callWithValues(frame16Var.lambda$Fn38, frame16Var.lambda$Fn39);
        }
    }

    public class frame16 extends ModuleBody {
        Object end1;
        final ModuleMethod lambda$Fn38 = new ModuleMethod(this, 32, null, 0);
        final ModuleMethod lambda$Fn39 = new ModuleMethod(this, 33, null, 8194);
        Object rest;
        Object start1;
        frame15 staticLink;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 32 ? lambda38() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 33 ? Integer.valueOf(lambda39(obj, obj2)) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 32) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 33) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda38() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnprefix$Mnlength$Mnci, this.staticLink.s2, this.rest);
        }

        public int lambda39(Object obj, Object obj2) {
            Object obj3 = this.staticLink.s1;
            Object obj4 = this.start1;
            try {
                int iIntValue = ((Number) obj4).intValue();
                Object obj5 = this.end1;
                try {
                    try {
                        try {
                            return srfi13.$PcStringPrefixLengthCi(obj3, iIntValue, ((Number) obj5).intValue(), this.staticLink.s2, ((Number) obj).intValue(), ((Number) obj2).intValue());
                        } catch (ClassCastException e) {
                            throw new WrongType(e, "%string-prefix-length-ci", 5, obj2);
                        }
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "%string-prefix-length-ci", 4, obj);
                    }
                } catch (ClassCastException e3) {
                    throw new WrongType(e3, "%string-prefix-length-ci", 2, obj5);
                }
            } catch (ClassCastException e4) {
                throw new WrongType(e4, "%string-prefix-length-ci", 1, obj4);
            }
        }
    }

    public static Object stringPrefixLengthCi$V(Object obj, Object obj2, Object[] objArr) {
        frame15 frame15Var = new frame15();
        frame15Var.s1 = obj;
        frame15Var.s2 = obj2;
        frame15Var.maybe$Mnstarts$Plends = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame15Var.lambda$Fn36, frame15Var.lambda$Fn37);
    }

    public class frame17 extends ModuleBody {
        final ModuleMethod lambda$Fn40 = new ModuleMethod(this, 38, null, 0);
        final ModuleMethod lambda$Fn41 = new ModuleMethod(this, 39, null, 12291);
        LList maybe$Mnstarts$Plends;
        Object s1;
        Object s2;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 38 ? lambda40() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            return moduleMethod.selector == 39 ? lambda41(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 38) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
            if (moduleMethod.selector != 39) {
                return super.match3(moduleMethod, obj, obj2, obj3, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }

        public Object lambda40() {
            return srfi13.stringParseStart$PlEnd(srfi13.string$Mnsuffix$Mnlength$Mnci, this.s1, this.maybe$Mnstarts$Plends);
        }

        public Object lambda41(Object obj, Object obj2, Object obj3) {
            frame18 frame18Var = new frame18();
            frame18Var.staticLink = this;
            frame18Var.rest = obj;
            frame18Var.start1 = obj2;
            frame18Var.end1 = obj3;
            return call_with_values.callWithValues(frame18Var.lambda$Fn42, frame18Var.lambda$Fn43);
        }
    }

    public class frame18 extends ModuleBody {
        Object end1;
        final ModuleMethod lambda$Fn42 = new ModuleMethod(this, 36, null, 0);
        final ModuleMethod lambda$Fn43 = new ModuleMethod(this, 37, null, 8194);
        Object rest;
        Object start1;
        frame17 staticLink;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 36 ? lambda42() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 37 ? Integer.valueOf(lambda43(obj, obj2)) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 36) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 37) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda42() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnsuffix$Mnlength$Mnci, this.staticLink.s2, this.rest);
        }

        public int lambda43(Object obj, Object obj2) {
            Object obj3 = this.staticLink.s1;
            Object obj4 = this.start1;
            try {
                int iIntValue = ((Number) obj4).intValue();
                Object obj5 = this.end1;
                try {
                    try {
                        try {
                            return srfi13.$PcStringSuffixLengthCi(obj3, iIntValue, ((Number) obj5).intValue(), this.staticLink.s2, ((Number) obj).intValue(), ((Number) obj2).intValue());
                        } catch (ClassCastException e) {
                            throw new WrongType(e, "%string-suffix-length-ci", 5, obj2);
                        }
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "%string-suffix-length-ci", 4, obj);
                    }
                } catch (ClassCastException e3) {
                    throw new WrongType(e3, "%string-suffix-length-ci", 2, obj5);
                }
            } catch (ClassCastException e4) {
                throw new WrongType(e4, "%string-suffix-length-ci", 1, obj4);
            }
        }
    }

    public static Object stringSuffixLengthCi$V(Object obj, Object obj2, Object[] objArr) {
        frame17 frame17Var = new frame17();
        frame17Var.s1 = obj;
        frame17Var.s2 = obj2;
        frame17Var.maybe$Mnstarts$Plends = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame17Var.lambda$Fn40, frame17Var.lambda$Fn41);
    }

    public class frame19 extends ModuleBody {
        final ModuleMethod lambda$Fn44 = new ModuleMethod(this, 42, null, 0);
        final ModuleMethod lambda$Fn45 = new ModuleMethod(this, 43, null, 12291);
        LList maybe$Mnstarts$Plends;
        Object s1;
        Object s2;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 42 ? lambda44() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            return moduleMethod.selector == 43 ? lambda45(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 42) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
            if (moduleMethod.selector != 43) {
                return super.match3(moduleMethod, obj, obj2, obj3, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }

        public Object lambda44() {
            return srfi13.stringParseStart$PlEnd(srfi13.string$Mnprefix$Qu, this.s1, this.maybe$Mnstarts$Plends);
        }

        public Object lambda45(Object obj, Object obj2, Object obj3) {
            frame20 frame20Var = new frame20();
            frame20Var.staticLink = this;
            frame20Var.rest = obj;
            frame20Var.start1 = obj2;
            frame20Var.end1 = obj3;
            return call_with_values.callWithValues(frame20Var.lambda$Fn46, frame20Var.lambda$Fn47);
        }
    }

    public class frame20 extends ModuleBody {
        Object end1;
        final ModuleMethod lambda$Fn46 = new ModuleMethod(this, 40, null, 0);
        final ModuleMethod lambda$Fn47 = new ModuleMethod(this, 41, null, 8194);
        Object rest;
        Object start1;
        frame19 staticLink;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 40 ? lambda46() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 41 ? lambda47(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 40) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 41) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda46() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnprefix$Qu, this.staticLink.s2, this.rest);
        }

        public Object lambda47(Object obj, Object obj2) {
            frame19 frame19Var = this.staticLink;
            return srfi13.$PcStringPrefix$Qu(frame19Var.s1, this.start1, this.end1, frame19Var.s2, obj, obj2);
        }
    }

    public static Object isStringPrefix$V(Object obj, Object obj2, Object[] objArr) {
        frame19 frame19Var = new frame19();
        frame19Var.s1 = obj;
        frame19Var.s2 = obj2;
        frame19Var.maybe$Mnstarts$Plends = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame19Var.lambda$Fn44, frame19Var.lambda$Fn45);
    }

    public class frame21 extends ModuleBody {
        final ModuleMethod lambda$Fn48 = new ModuleMethod(this, 46, null, 0);
        final ModuleMethod lambda$Fn49 = new ModuleMethod(this, 47, null, 12291);
        LList maybe$Mnstarts$Plends;
        Object s1;
        Object s2;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 46 ? lambda48() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            return moduleMethod.selector == 47 ? lambda49(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
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
        public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
            if (moduleMethod.selector != 47) {
                return super.match3(moduleMethod, obj, obj2, obj3, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }

        public Object lambda48() {
            return srfi13.stringParseStart$PlEnd(srfi13.string$Mnsuffix$Qu, this.s1, this.maybe$Mnstarts$Plends);
        }

        public Object lambda49(Object obj, Object obj2, Object obj3) {
            frame22 frame22Var = new frame22();
            frame22Var.staticLink = this;
            frame22Var.rest = obj;
            frame22Var.start1 = obj2;
            frame22Var.end1 = obj3;
            return call_with_values.callWithValues(frame22Var.lambda$Fn50, frame22Var.lambda$Fn51);
        }
    }

    public class frame22 extends ModuleBody {
        Object end1;
        final ModuleMethod lambda$Fn50 = new ModuleMethod(this, 44, null, 0);
        final ModuleMethod lambda$Fn51 = new ModuleMethod(this, 45, null, 8194);
        Object rest;
        Object start1;
        frame21 staticLink;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 44 ? lambda50() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 45 ? lambda51(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 44) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
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

        public Object lambda50() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnsuffix$Qu, this.staticLink.s2, this.rest);
        }

        public Object lambda51(Object obj, Object obj2) {
            frame21 frame21Var = this.staticLink;
            return srfi13.$PcStringSuffix$Qu(frame21Var.s1, this.start1, this.end1, frame21Var.s2, obj, obj2);
        }
    }

    public static Object isStringSuffix$V(Object obj, Object obj2, Object[] objArr) {
        frame21 frame21Var = new frame21();
        frame21Var.s1 = obj;
        frame21Var.s2 = obj2;
        frame21Var.maybe$Mnstarts$Plends = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame21Var.lambda$Fn48, frame21Var.lambda$Fn49);
    }

    public class frame23 extends ModuleBody {
        final ModuleMethod lambda$Fn52 = new ModuleMethod(this, 50, null, 0);
        final ModuleMethod lambda$Fn53 = new ModuleMethod(this, 51, null, 12291);
        LList maybe$Mnstarts$Plends;
        Object s1;
        Object s2;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 50 ? lambda52() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            return moduleMethod.selector == 51 ? lambda53(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
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
        public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
            if (moduleMethod.selector != 51) {
                return super.match3(moduleMethod, obj, obj2, obj3, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }

        public Object lambda52() {
            return srfi13.stringParseStart$PlEnd(srfi13.string$Mnprefix$Mnci$Qu, this.s1, this.maybe$Mnstarts$Plends);
        }

        public Object lambda53(Object obj, Object obj2, Object obj3) {
            frame24 frame24Var = new frame24();
            frame24Var.staticLink = this;
            frame24Var.rest = obj;
            frame24Var.start1 = obj2;
            frame24Var.end1 = obj3;
            return call_with_values.callWithValues(frame24Var.lambda$Fn54, frame24Var.lambda$Fn55);
        }
    }

    public class frame24 extends ModuleBody {
        Object end1;
        final ModuleMethod lambda$Fn54 = new ModuleMethod(this, 48, null, 0);
        final ModuleMethod lambda$Fn55 = new ModuleMethod(this, 49, null, 8194);
        Object rest;
        Object start1;
        frame23 staticLink;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 48 ? lambda54() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 49 ? lambda55(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 48) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
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

        public Object lambda54() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnprefix$Mnci$Qu, this.staticLink.s2, this.rest);
        }

        public Object lambda55(Object obj, Object obj2) {
            frame23 frame23Var = this.staticLink;
            return srfi13.$PcStringPrefixCi$Qu(frame23Var.s1, this.start1, this.end1, frame23Var.s2, obj, obj2);
        }
    }

    public static Object isStringPrefixCi$V(Object obj, Object obj2, Object[] objArr) {
        frame23 frame23Var = new frame23();
        frame23Var.s1 = obj;
        frame23Var.s2 = obj2;
        frame23Var.maybe$Mnstarts$Plends = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame23Var.lambda$Fn52, frame23Var.lambda$Fn53);
    }

    public class frame25 extends ModuleBody {
        final ModuleMethod lambda$Fn56 = new ModuleMethod(this, 54, null, 0);
        final ModuleMethod lambda$Fn57 = new ModuleMethod(this, 55, null, 12291);
        LList maybe$Mnstarts$Plends;
        Object s1;
        Object s2;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 54 ? lambda56() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            return moduleMethod.selector == 55 ? lambda57(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 54) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
            if (moduleMethod.selector != 55) {
                return super.match3(moduleMethod, obj, obj2, obj3, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }

        public Object lambda56() {
            return srfi13.stringParseStart$PlEnd(srfi13.string$Mnsuffix$Mnci$Qu, this.s1, this.maybe$Mnstarts$Plends);
        }

        public Object lambda57(Object obj, Object obj2, Object obj3) {
            frame26 frame26Var = new frame26();
            frame26Var.staticLink = this;
            frame26Var.rest = obj;
            frame26Var.start1 = obj2;
            frame26Var.end1 = obj3;
            return call_with_values.callWithValues(frame26Var.lambda$Fn58, frame26Var.lambda$Fn59);
        }
    }

    public class frame26 extends ModuleBody {
        Object end1;
        final ModuleMethod lambda$Fn58 = new ModuleMethod(this, 52, null, 0);
        final ModuleMethod lambda$Fn59 = new ModuleMethod(this, 53, null, 8194);
        Object rest;
        Object start1;
        frame25 staticLink;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 52 ? lambda58() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 53 ? lambda59(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 52) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 53) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda58() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnsuffix$Mnci$Qu, this.staticLink.s2, this.rest);
        }

        public Object lambda59(Object obj, Object obj2) {
            frame25 frame25Var = this.staticLink;
            return srfi13.$PcStringSuffixCi$Qu(frame25Var.s1, this.start1, this.end1, frame25Var.s2, obj, obj2);
        }
    }

    public static Object isStringSuffixCi$V(Object obj, Object obj2, Object[] objArr) {
        frame25 frame25Var = new frame25();
        frame25Var.s1 = obj;
        frame25Var.s2 = obj2;
        frame25Var.maybe$Mnstarts$Plends = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame25Var.lambda$Fn56, frame25Var.lambda$Fn57);
    }

    public static Object $PcStringPrefix$Qu(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) throws Throwable {
        AddOp addOp = AddOp.$Mn;
        Object objApply2 = addOp.apply2(obj3, obj2);
        Object objApply22 = Scheme.numLEq.apply2(objApply2, addOp.apply2(obj6, obj5));
        try {
            boolean zBooleanValue = ((Boolean) objApply22).booleanValue();
            if (zBooleanValue) {
                return Scheme.numEqu.apply2($PcStringPrefixLength(obj, obj2, obj3, obj4, obj5, obj6), objApply2);
            }
            return zBooleanValue ? Boolean.TRUE : Boolean.FALSE;
        } catch (ClassCastException e) {
            throw new WrongType(e, "x", -2, objApply22);
        }
    }

    public static Object $PcStringSuffix$Qu(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) throws Throwable {
        AddOp addOp = AddOp.$Mn;
        Object objApply2 = addOp.apply2(obj3, obj2);
        Object objApply22 = Scheme.numLEq.apply2(objApply2, addOp.apply2(obj6, obj5));
        try {
            boolean zBooleanValue = ((Boolean) objApply22).booleanValue();
            if (zBooleanValue) {
                return Scheme.numEqu.apply2(objApply2, $PcStringSuffixLength(obj, obj2, obj3, obj4, obj5, obj6));
            }
            return zBooleanValue ? Boolean.TRUE : Boolean.FALSE;
        } catch (ClassCastException e) {
            throw new WrongType(e, "x", -2, objApply22);
        }
    }

    public static Object $PcStringPrefixCi$Qu(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) throws Throwable {
        AddOp addOp = AddOp.$Mn;
        Object objApply2 = addOp.apply2(obj3, obj2);
        Object objApply22 = Scheme.numLEq.apply2(objApply2, addOp.apply2(obj6, obj5));
        try {
            boolean zBooleanValue = ((Boolean) objApply22).booleanValue();
            if (!zBooleanValue) {
                return zBooleanValue ? Boolean.TRUE : Boolean.FALSE;
            }
            try {
                try {
                    try {
                        try {
                            return Scheme.numEqu.apply2(objApply2, Integer.valueOf($PcStringPrefixLengthCi(obj, ((Number) obj2).intValue(), ((Number) obj3).intValue(), obj4, ((Number) obj5).intValue(), ((Number) obj6).intValue())));
                        } catch (ClassCastException e) {
                            throw new WrongType(e, "%string-prefix-length-ci", 5, obj6);
                        }
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "%string-prefix-length-ci", 4, obj5);
                    }
                } catch (ClassCastException e3) {
                    throw new WrongType(e3, "%string-prefix-length-ci", 2, obj3);
                }
            } catch (ClassCastException e4) {
                throw new WrongType(e4, "%string-prefix-length-ci", 1, obj2);
            }
        } catch (ClassCastException e5) {
            throw new WrongType(e5, "x", -2, objApply22);
        }
    }

    public static Object $PcStringSuffixCi$Qu(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) throws Throwable {
        AddOp addOp = AddOp.$Mn;
        Object objApply2 = addOp.apply2(obj3, obj2);
        Object objApply22 = Scheme.numLEq.apply2(objApply2, addOp.apply2(obj6, obj5));
        try {
            boolean zBooleanValue = ((Boolean) objApply22).booleanValue();
            if (!zBooleanValue) {
                return zBooleanValue ? Boolean.TRUE : Boolean.FALSE;
            }
            try {
                try {
                    try {
                        try {
                            return Scheme.numEqu.apply2(objApply2, Integer.valueOf($PcStringSuffixLengthCi(obj, ((Number) obj2).intValue(), ((Number) obj3).intValue(), obj4, ((Number) obj5).intValue(), ((Number) obj6).intValue())));
                        } catch (ClassCastException e) {
                            throw new WrongType(e, "%string-suffix-length-ci", 5, obj6);
                        }
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "%string-suffix-length-ci", 4, obj5);
                    }
                } catch (ClassCastException e3) {
                    throw new WrongType(e3, "%string-suffix-length-ci", 2, obj3);
                }
            } catch (ClassCastException e4) {
                throw new WrongType(e4, "%string-suffix-length-ci", 1, obj2);
            }
        } catch (ClassCastException e5) {
            throw new WrongType(e5, "x", -2, objApply22);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0066  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object $PcStringCompare(java.lang.Object r5, java.lang.Object r6, java.lang.Object r7, java.lang.Object r8, java.lang.Object r9, java.lang.Object r10, java.lang.Object r11, java.lang.Object r12, java.lang.Object r13) throws java.lang.Throwable {
        /*
            java.lang.String r1 = "string-ref"
            gnu.kawa.functions.AddOp r0 = gnu.kawa.functions.AddOp.$Mn
            java.lang.Object r2 = r0.apply2(r7, r6)
            java.lang.Object r0 = r0.apply2(r10, r9)
            java.lang.Object r10 = $PcStringPrefixLength(r5, r6, r7, r8, r9, r10)
            gnu.kawa.functions.NumberCompare r3 = kawa.standard.Scheme.numEqu
            java.lang.Object r2 = r3.apply2(r10, r2)
            java.lang.Boolean r4 = java.lang.Boolean.FALSE
            if (r2 == r4) goto L28
            gnu.kawa.functions.ApplyToArgs r5 = kawa.standard.Scheme.applyToArgs
            java.lang.Object r6 = r3.apply2(r10, r0)
            if (r6 == r4) goto L23
            r11 = r12
        L23:
            java.lang.Object r5 = r5.apply2(r11, r7)
            return r5
        L28:
            gnu.kawa.functions.ApplyToArgs r7 = kawa.standard.Scheme.applyToArgs
            java.lang.Object r12 = r3.apply2(r10, r0)
            if (r12 == r4) goto L31
            goto L66
        L31:
            r12 = 1
            java.lang.CharSequence r5 = (java.lang.CharSequence) r5     // Catch: java.lang.ClassCastException -> L8a
            gnu.kawa.functions.AddOp r0 = gnu.kawa.functions.AddOp.$Pl
            java.lang.Object r2 = r0.apply2(r6, r10)
            r3 = 2
            r4 = r2
            java.lang.Number r4 = (java.lang.Number) r4     // Catch: java.lang.ClassCastException -> L82
            int r2 = r4.intValue()     // Catch: java.lang.ClassCastException -> L82
            char r5 = kawa.lib.strings.stringRef(r5, r2)
            gnu.text.Char r5 = gnu.text.Char.make(r5)
            java.lang.CharSequence r8 = (java.lang.CharSequence) r8     // Catch: java.lang.ClassCastException -> L7a
            java.lang.Object r9 = r0.apply2(r9, r10)
            r12 = r9
            java.lang.Number r12 = (java.lang.Number) r12     // Catch: java.lang.ClassCastException -> L72
            int r9 = r12.intValue()     // Catch: java.lang.ClassCastException -> L72
            char r8 = kawa.lib.strings.stringRef(r8, r9)
            gnu.text.Char r8 = gnu.text.Char.make(r8)
            boolean r5 = kawa.lib.characters.isChar$Ls(r5, r8)
            if (r5 == 0) goto L66
            goto L67
        L66:
            r11 = r13
        L67:
            gnu.kawa.functions.AddOp r5 = gnu.kawa.functions.AddOp.$Pl
            java.lang.Object r5 = r5.apply2(r10, r6)
            java.lang.Object r5 = r7.apply2(r11, r5)
            return r5
        L72:
            r0 = move-exception
            r5 = r0
            gnu.mapping.WrongType r6 = new gnu.mapping.WrongType
            r6.<init>(r5, r1, r3, r9)
            throw r6
        L7a:
            r0 = move-exception
            r5 = r0
            gnu.mapping.WrongType r6 = new gnu.mapping.WrongType
            r6.<init>(r5, r1, r12, r8)
            throw r6
        L82:
            r0 = move-exception
            r5 = r0
            gnu.mapping.WrongType r6 = new gnu.mapping.WrongType
            r6.<init>(r5, r1, r3, r2)
            throw r6
        L8a:
            r0 = move-exception
            r6 = r0
            gnu.mapping.WrongType r7 = new gnu.mapping.WrongType
            r7.<init>(r6, r1, r12, r5)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.srfi13.$PcStringCompare(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object $PcStringCompareCi(java.lang.Object r12, java.lang.Object r13, java.lang.Object r14, java.lang.Object r15, java.lang.Object r16, java.lang.Object r17, java.lang.Object r18, java.lang.Object r19, java.lang.Object r20) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.srfi13.$PcStringCompareCi(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object):java.lang.Object");
    }

    public static Object stringCompare$V(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object[] objArr) throws Throwable {
        frame27 frame27Var = new frame27();
        frame27Var.s1 = obj;
        frame27Var.s2 = obj2;
        frame27Var.proc$Ls = obj3;
        frame27Var.proc$Eq = obj4;
        frame27Var.proc$Gr = obj5;
        frame27Var.maybe$Mnstarts$Plends = LList.makeList(objArr, 0);
        ApplyToArgs applyToArgs = Scheme.applyToArgs;
        Location location = loc$check$Mnarg;
        try {
            Object obj6 = location.get();
            ModuleMethod moduleMethod = misc.procedure$Qu;
            Object obj7 = frame27Var.proc$Ls;
            ModuleMethod moduleMethod2 = string$Mncompare;
            applyToArgs.apply4(obj6, moduleMethod, obj7, moduleMethod2);
            try {
                applyToArgs.apply4(location.get(), moduleMethod, frame27Var.proc$Eq, moduleMethod2);
                try {
                    applyToArgs.apply4(location.get(), moduleMethod, frame27Var.proc$Gr, moduleMethod2);
                    return call_with_values.callWithValues(frame27Var.lambda$Fn60, frame27Var.lambda$Fn61);
                } catch (UnboundLocationException e) {
                    e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 728, 3);
                    throw e;
                }
            } catch (UnboundLocationException e2) {
                e2.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 727, 3);
                throw e2;
            }
        } catch (UnboundLocationException e3) {
            e3.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 726, 3);
            throw e3;
        }
    }

    public class frame27 extends ModuleBody {
        final ModuleMethod lambda$Fn60 = new ModuleMethod(this, 58, null, 0);
        final ModuleMethod lambda$Fn61 = new ModuleMethod(this, 59, null, 12291);
        LList maybe$Mnstarts$Plends;
        Object proc$Eq;
        Object proc$Gr;
        Object proc$Ls;
        Object s1;
        Object s2;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 58 ? lambda60() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            return moduleMethod.selector == 59 ? lambda61(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 58) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
            if (moduleMethod.selector != 59) {
                return super.match3(moduleMethod, obj, obj2, obj3, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }

        public Object lambda60() {
            return srfi13.stringParseStart$PlEnd(srfi13.string$Mncompare, this.s1, this.maybe$Mnstarts$Plends);
        }

        public Object lambda61(Object obj, Object obj2, Object obj3) {
            frame28 frame28Var = new frame28();
            frame28Var.staticLink = this;
            frame28Var.rest = obj;
            frame28Var.start1 = obj2;
            frame28Var.end1 = obj3;
            return call_with_values.callWithValues(frame28Var.lambda$Fn62, frame28Var.lambda$Fn63);
        }
    }

    public class frame28 extends ModuleBody {
        Object end1;
        final ModuleMethod lambda$Fn62 = new ModuleMethod(this, 56, null, 0);
        final ModuleMethod lambda$Fn63 = new ModuleMethod(this, 57, null, 8194);
        Object rest;
        Object start1;
        frame27 staticLink;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 56 ? lambda62() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 57 ? lambda63(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 56) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 57) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda62() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mncompare, this.staticLink.s2, this.rest);
        }

        public Object lambda63(Object obj, Object obj2) {
            frame27 frame27Var = this.staticLink;
            return srfi13.$PcStringCompare(frame27Var.s1, this.start1, this.end1, frame27Var.s2, obj, obj2, frame27Var.proc$Ls, frame27Var.proc$Eq, frame27Var.proc$Gr);
        }
    }

    public static Object stringCompareCi$V(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object[] objArr) throws Throwable {
        frame29 frame29Var = new frame29();
        frame29Var.s1 = obj;
        frame29Var.s2 = obj2;
        frame29Var.proc$Ls = obj3;
        frame29Var.proc$Eq = obj4;
        frame29Var.proc$Gr = obj5;
        frame29Var.maybe$Mnstarts$Plends = LList.makeList(objArr, 0);
        ApplyToArgs applyToArgs = Scheme.applyToArgs;
        Location location = loc$check$Mnarg;
        try {
            Object obj6 = location.get();
            ModuleMethod moduleMethod = misc.procedure$Qu;
            Object obj7 = frame29Var.proc$Ls;
            ModuleMethod moduleMethod2 = string$Mncompare$Mnci;
            applyToArgs.apply4(obj6, moduleMethod, obj7, moduleMethod2);
            try {
                applyToArgs.apply4(location.get(), moduleMethod, frame29Var.proc$Eq, moduleMethod2);
                try {
                    applyToArgs.apply4(location.get(), moduleMethod, frame29Var.proc$Gr, moduleMethod2);
                    return call_with_values.callWithValues(frame29Var.lambda$Fn64, frame29Var.lambda$Fn65);
                } catch (UnboundLocationException e) {
                    e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 736, 3);
                    throw e;
                }
            } catch (UnboundLocationException e2) {
                e2.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 735, 3);
                throw e2;
            }
        } catch (UnboundLocationException e3) {
            e3.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 734, 3);
            throw e3;
        }
    }

    public class frame29 extends ModuleBody {
        final ModuleMethod lambda$Fn64 = new ModuleMethod(this, 62, null, 0);
        final ModuleMethod lambda$Fn65 = new ModuleMethod(this, 63, null, 12291);
        LList maybe$Mnstarts$Plends;
        Object proc$Eq;
        Object proc$Gr;
        Object proc$Ls;
        Object s1;
        Object s2;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 62 ? lambda64() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            return moduleMethod.selector == 63 ? lambda65(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 62) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
            if (moduleMethod.selector != 63) {
                return super.match3(moduleMethod, obj, obj2, obj3, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }

        public Object lambda64() {
            return srfi13.stringParseStart$PlEnd(srfi13.string$Mncompare$Mnci, this.s1, this.maybe$Mnstarts$Plends);
        }

        public Object lambda65(Object obj, Object obj2, Object obj3) {
            frame30 frame30Var = new frame30();
            frame30Var.staticLink = this;
            frame30Var.rest = obj;
            frame30Var.start1 = obj2;
            frame30Var.end1 = obj3;
            return call_with_values.callWithValues(frame30Var.lambda$Fn66, frame30Var.lambda$Fn67);
        }
    }

    public class frame30 extends ModuleBody {
        Object end1;
        final ModuleMethod lambda$Fn66 = new ModuleMethod(this, 60, null, 0);
        final ModuleMethod lambda$Fn67 = new ModuleMethod(this, 61, null, 8194);
        Object rest;
        Object start1;
        frame29 staticLink;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 60 ? lambda66() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 61 ? lambda67(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 60) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 61) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda66() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mncompare$Mnci, this.staticLink.s2, this.rest);
        }

        public Object lambda67(Object obj, Object obj2) {
            frame29 frame29Var = this.staticLink;
            return srfi13.$PcStringCompareCi(frame29Var.s1, this.start1, this.end1, frame29Var.s2, obj, obj2, frame29Var.proc$Ls, frame29Var.proc$Eq, frame29Var.proc$Gr);
        }
    }

    public class frame31 extends ModuleBody {
        final ModuleMethod lambda$Fn68 = new ModuleMethod(this, 66, null, 0);
        final ModuleMethod lambda$Fn69 = new ModuleMethod(this, 67, null, 12291);
        LList maybe$Mnstarts$Plends;
        Object s1;
        Object s2;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 66 ? lambda68() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            return moduleMethod.selector == 67 ? lambda69(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
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
        public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
            if (moduleMethod.selector != 67) {
                return super.match3(moduleMethod, obj, obj2, obj3, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }

        public Object lambda68() {
            return srfi13.stringParseStart$PlEnd(srfi13.string$Eq, this.s1, this.maybe$Mnstarts$Plends);
        }

        public Object lambda69(Object obj, Object obj2, Object obj3) {
            frame32 frame32Var = new frame32();
            frame32Var.staticLink = this;
            frame32Var.rest = obj;
            frame32Var.start1 = obj2;
            frame32Var.end1 = obj3;
            return call_with_values.callWithValues(frame32Var.lambda$Fn70, frame32Var.lambda$Fn71);
        }
    }

    public class frame32 extends ModuleBody {
        Object end1;
        final ModuleMethod lambda$Fn70 = new ModuleMethod(this, 64, null, 0);
        final ModuleMethod lambda$Fn71 = new ModuleMethod(this, 65, null, 8194);
        Object rest;
        Object start1;
        frame31 staticLink;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 64 ? lambda70() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 65 ? lambda71(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
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

        public Object lambda70() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Eq, this.staticLink.s2, this.rest);
        }

        public Object lambda71(Object obj, Object obj2) {
            NumberCompare numberCompare = Scheme.numEqu;
            AddOp addOp = AddOp.$Mn;
            Object objApply2 = numberCompare.apply2(addOp.apply2(this.end1, this.start1), addOp.apply2(obj2, obj));
            try {
                boolean zBooleanValue = ((Boolean) objApply2).booleanValue();
                if (!zBooleanValue) {
                    return zBooleanValue ? Boolean.TRUE : Boolean.FALSE;
                }
                frame31 frame31Var = this.staticLink;
                boolean zBooleanValue2 = frame31Var.s1 == frame31Var.s2;
                if (zBooleanValue2) {
                    Object objApply22 = numberCompare.apply2(this.start1, obj);
                    try {
                        zBooleanValue2 = ((Boolean) objApply22).booleanValue();
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "x", -2, objApply22);
                    }
                }
                if (zBooleanValue2) {
                    return zBooleanValue2 ? Boolean.TRUE : Boolean.FALSE;
                }
                frame31 frame31Var2 = this.staticLink;
                return srfi13.$PcStringCompare(frame31Var2.s1, this.start1, this.end1, frame31Var2.s2, obj, obj2, srfi13.lambda$Fn72, misc.values, srfi13.lambda$Fn73);
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "x", -2, objApply2);
            }
        }

        public static Boolean lambda72(Object obj) {
            return Boolean.FALSE;
        }

        public static Boolean lambda73(Object obj) {
            return Boolean.FALSE;
        }
    }

    public static Object string$Eq$V(Object obj, Object obj2, Object[] objArr) {
        frame31 frame31Var = new frame31();
        frame31Var.s1 = obj;
        frame31Var.s2 = obj2;
        frame31Var.maybe$Mnstarts$Plends = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame31Var.lambda$Fn68, frame31Var.lambda$Fn69);
    }

    public class frame33 extends ModuleBody {
        final ModuleMethod lambda$Fn74 = new ModuleMethod(this, 70, null, 0);
        final ModuleMethod lambda$Fn75 = new ModuleMethod(this, 71, null, 12291);
        LList maybe$Mnstarts$Plends;
        Object s1;
        Object s2;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 70 ? lambda74() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            return moduleMethod.selector == 71 ? lambda75(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
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
        public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
            if (moduleMethod.selector != 71) {
                return super.match3(moduleMethod, obj, obj2, obj3, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }

        public Object lambda74() {
            return srfi13.stringParseStart$PlEnd(srfi13.string$Ls$Gr, this.s1, this.maybe$Mnstarts$Plends);
        }

        public Object lambda75(Object obj, Object obj2, Object obj3) {
            frame34 frame34Var = new frame34();
            frame34Var.staticLink = this;
            frame34Var.rest = obj;
            frame34Var.start1 = obj2;
            frame34Var.end1 = obj3;
            return call_with_values.callWithValues(frame34Var.lambda$Fn76, frame34Var.lambda$Fn77);
        }
    }

    public class frame34 extends ModuleBody {
        Object end1;
        final ModuleMethod lambda$Fn76 = new ModuleMethod(this, 68, null, 0);
        final ModuleMethod lambda$Fn77 = new ModuleMethod(this, 69, null, 8194);
        Object rest;
        Object start1;
        frame33 staticLink;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 68 ? lambda76() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 69 ? lambda77(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
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

        public Object lambda76() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Ls$Gr, this.staticLink.s2, this.rest);
        }

        public Object lambda77(Object obj, Object obj2) {
            NumberCompare numberCompare = Scheme.numEqu;
            AddOp addOp = AddOp.$Mn;
            Object objApply2 = numberCompare.apply2(addOp.apply2(this.end1, this.start1), addOp.apply2(obj2, obj));
            try {
                Boolean bool = Boolean.FALSE;
                int i = ((objApply2 != bool ? 1 : 0) + 1) & 1;
                if (i != 0) {
                    return i != 0 ? Boolean.TRUE : bool;
                }
                frame33 frame33Var = this.staticLink;
                int i2 = frame33Var.s1 == frame33Var.s2 ? 1 : 0;
                if (i2 != 0) {
                    i2 = numberCompare.apply2(this.start1, obj) != bool ? 1 : 0;
                }
                int i3 = (i2 + 1) & 1;
                if (i3 == 0) {
                    return i3 != 0 ? Boolean.TRUE : bool;
                }
                frame33 frame33Var2 = this.staticLink;
                Object obj3 = frame33Var2.s1;
                Object obj4 = this.start1;
                Object obj5 = this.end1;
                Object obj6 = frame33Var2.s2;
                ModuleMethod moduleMethod = misc.values;
                return srfi13.$PcStringCompare(obj3, obj4, obj5, obj6, obj, obj2, moduleMethod, srfi13.lambda$Fn78, moduleMethod);
            } catch (ClassCastException e) {
                throw new WrongType(e, "x", -2, objApply2);
            }
        }

        public static Boolean lambda78(Object obj) {
            return Boolean.FALSE;
        }
    }

    public static Object string$Ls$Gr$V(Object obj, Object obj2, Object[] objArr) {
        frame33 frame33Var = new frame33();
        frame33Var.s1 = obj;
        frame33Var.s2 = obj2;
        frame33Var.maybe$Mnstarts$Plends = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame33Var.lambda$Fn74, frame33Var.lambda$Fn75);
    }

    public class frame35 extends ModuleBody {
        final ModuleMethod lambda$Fn79 = new ModuleMethod(this, 74, null, 0);
        final ModuleMethod lambda$Fn80 = new ModuleMethod(this, 75, null, 12291);
        LList maybe$Mnstarts$Plends;
        Object s1;
        Object s2;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 74 ? lambda79() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            return moduleMethod.selector == 75 ? lambda80(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
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
        public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
            if (moduleMethod.selector != 75) {
                return super.match3(moduleMethod, obj, obj2, obj3, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }

        public Object lambda79() {
            return srfi13.stringParseStart$PlEnd(srfi13.string$Ls, this.s1, this.maybe$Mnstarts$Plends);
        }

        public Object lambda80(Object obj, Object obj2, Object obj3) {
            frame36 frame36Var = new frame36();
            frame36Var.staticLink = this;
            frame36Var.rest = obj;
            frame36Var.start1 = obj2;
            frame36Var.end1 = obj3;
            return call_with_values.callWithValues(frame36Var.lambda$Fn81, frame36Var.lambda$Fn82);
        }
    }

    public class frame36 extends ModuleBody {
        Object end1;
        final ModuleMethod lambda$Fn81 = new ModuleMethod(this, 72, null, 0);
        final ModuleMethod lambda$Fn82 = new ModuleMethod(this, 73, null, 8194);
        Object rest;
        Object start1;
        frame35 staticLink;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 72 ? lambda81() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 73 ? lambda82(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
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

        public Object lambda81() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Ls, this.staticLink.s2, this.rest);
        }

        public Object lambda82(Object obj, Object obj2) {
            frame35 frame35Var = this.staticLink;
            boolean z = frame35Var.s1 == frame35Var.s2;
            if (!z ? z : Scheme.numEqu.apply2(this.start1, obj) != Boolean.FALSE) {
                return Scheme.numLss.apply2(this.end1, obj2);
            }
            frame35 frame35Var2 = this.staticLink;
            return srfi13.$PcStringCompare(frame35Var2.s1, this.start1, this.end1, frame35Var2.s2, obj, obj2, misc.values, srfi13.lambda$Fn83, srfi13.lambda$Fn84);
        }

        public static Boolean lambda83(Object obj) {
            return Boolean.FALSE;
        }

        public static Boolean lambda84(Object obj) {
            return Boolean.FALSE;
        }
    }

    public static Object string$Ls$V(Object obj, Object obj2, Object[] objArr) {
        frame35 frame35Var = new frame35();
        frame35Var.s1 = obj;
        frame35Var.s2 = obj2;
        frame35Var.maybe$Mnstarts$Plends = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame35Var.lambda$Fn79, frame35Var.lambda$Fn80);
    }

    public class frame37 extends ModuleBody {
        final ModuleMethod lambda$Fn85 = new ModuleMethod(this, 78, null, 0);
        final ModuleMethod lambda$Fn86 = new ModuleMethod(this, 79, null, 12291);
        LList maybe$Mnstarts$Plends;
        Object s1;
        Object s2;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 78 ? lambda85() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            return moduleMethod.selector == 79 ? lambda86(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 78) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
            if (moduleMethod.selector != 79) {
                return super.match3(moduleMethod, obj, obj2, obj3, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }

        public Object lambda85() {
            return srfi13.stringParseStart$PlEnd(srfi13.string$Gr, this.s1, this.maybe$Mnstarts$Plends);
        }

        public Object lambda86(Object obj, Object obj2, Object obj3) {
            frame38 frame38Var = new frame38();
            frame38Var.staticLink = this;
            frame38Var.rest = obj;
            frame38Var.start1 = obj2;
            frame38Var.end1 = obj3;
            return call_with_values.callWithValues(frame38Var.lambda$Fn87, frame38Var.lambda$Fn88);
        }
    }

    public class frame38 extends ModuleBody {
        Object end1;
        final ModuleMethod lambda$Fn87 = new ModuleMethod(this, 76, null, 0);
        final ModuleMethod lambda$Fn88 = new ModuleMethod(this, 77, null, 8194);
        Object rest;
        Object start1;
        frame37 staticLink;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 76 ? lambda87() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 77 ? lambda88(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
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

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 77) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda87() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Gr, this.staticLink.s2, this.rest);
        }

        public Object lambda88(Object obj, Object obj2) {
            frame37 frame37Var = this.staticLink;
            boolean z = frame37Var.s1 == frame37Var.s2;
            if (!z ? z : Scheme.numEqu.apply2(this.start1, obj) != Boolean.FALSE) {
                return Scheme.numGrt.apply2(this.end1, obj2);
            }
            frame37 frame37Var2 = this.staticLink;
            return srfi13.$PcStringCompare(frame37Var2.s1, this.start1, this.end1, frame37Var2.s2, obj, obj2, srfi13.lambda$Fn89, srfi13.lambda$Fn90, misc.values);
        }

        public static Boolean lambda89(Object obj) {
            return Boolean.FALSE;
        }

        public static Boolean lambda90(Object obj) {
            return Boolean.FALSE;
        }
    }

    public static Object string$Gr$V(Object obj, Object obj2, Object[] objArr) {
        frame37 frame37Var = new frame37();
        frame37Var.s1 = obj;
        frame37Var.s2 = obj2;
        frame37Var.maybe$Mnstarts$Plends = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame37Var.lambda$Fn85, frame37Var.lambda$Fn86);
    }

    public class frame39 extends ModuleBody {
        final ModuleMethod lambda$Fn91 = new ModuleMethod(this, 82, null, 0);
        final ModuleMethod lambda$Fn92 = new ModuleMethod(this, 83, null, 12291);
        LList maybe$Mnstarts$Plends;
        Object s1;
        Object s2;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 82 ? lambda91() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            return moduleMethod.selector == 83 ? lambda92(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 82) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
            if (moduleMethod.selector != 83) {
                return super.match3(moduleMethod, obj, obj2, obj3, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }

        public Object lambda91() {
            return srfi13.stringParseStart$PlEnd(srfi13.string$Ls$Eq, this.s1, this.maybe$Mnstarts$Plends);
        }

        public Object lambda92(Object obj, Object obj2, Object obj3) {
            frame40 frame40Var = new frame40();
            frame40Var.staticLink = this;
            frame40Var.rest = obj;
            frame40Var.start1 = obj2;
            frame40Var.end1 = obj3;
            return call_with_values.callWithValues(frame40Var.lambda$Fn93, frame40Var.lambda$Fn94);
        }
    }

    public class frame40 extends ModuleBody {
        Object end1;
        final ModuleMethod lambda$Fn93 = new ModuleMethod(this, 80, null, 0);
        final ModuleMethod lambda$Fn94 = new ModuleMethod(this, 81, null, 8194);
        Object rest;
        Object start1;
        frame39 staticLink;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 80 ? lambda93() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 81 ? lambda94(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 80) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 81) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda93() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Ls$Eq, this.staticLink.s2, this.rest);
        }

        public Object lambda94(Object obj, Object obj2) {
            frame39 frame39Var = this.staticLink;
            boolean z = frame39Var.s1 == frame39Var.s2;
            if (!z ? z : Scheme.numEqu.apply2(this.start1, obj) != Boolean.FALSE) {
                return Scheme.numLEq.apply2(this.end1, obj2);
            }
            frame39 frame39Var2 = this.staticLink;
            Object obj3 = frame39Var2.s1;
            Object obj4 = this.start1;
            Object obj5 = this.end1;
            Object obj6 = frame39Var2.s2;
            ModuleMethod moduleMethod = misc.values;
            return srfi13.$PcStringCompare(obj3, obj4, obj5, obj6, obj, obj2, moduleMethod, moduleMethod, srfi13.lambda$Fn95);
        }

        public static Boolean lambda95(Object obj) {
            return Boolean.FALSE;
        }
    }

    public static Object string$Ls$Eq$V(Object obj, Object obj2, Object[] objArr) {
        frame39 frame39Var = new frame39();
        frame39Var.s1 = obj;
        frame39Var.s2 = obj2;
        frame39Var.maybe$Mnstarts$Plends = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame39Var.lambda$Fn91, frame39Var.lambda$Fn92);
    }

    public class frame41 extends ModuleBody {
        final ModuleMethod lambda$Fn96 = new ModuleMethod(this, 86, null, 0);
        final ModuleMethod lambda$Fn97 = new ModuleMethod(this, 87, null, 12291);
        LList maybe$Mnstarts$Plends;
        Object s1;
        Object s2;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 86 ? lambda96() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            return moduleMethod.selector == 87 ? lambda97(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 86) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
            if (moduleMethod.selector != 87) {
                return super.match3(moduleMethod, obj, obj2, obj3, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }

        public Object lambda96() {
            return srfi13.stringParseStart$PlEnd(srfi13.string$Gr$Eq, this.s1, this.maybe$Mnstarts$Plends);
        }

        public Object lambda97(Object obj, Object obj2, Object obj3) {
            frame42 frame42Var = new frame42();
            frame42Var.staticLink = this;
            frame42Var.rest = obj;
            frame42Var.start1 = obj2;
            frame42Var.end1 = obj3;
            return call_with_values.callWithValues(frame42Var.lambda$Fn98, frame42Var.lambda$Fn99);
        }
    }

    public class frame42 extends ModuleBody {
        Object end1;
        final ModuleMethod lambda$Fn98 = new ModuleMethod(this, 84, null, 0);
        final ModuleMethod lambda$Fn99 = new ModuleMethod(this, 85, null, 8194);
        Object rest;
        Object start1;
        frame41 staticLink;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 84 ? lambda98() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 85 ? lambda99(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 84) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 85) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda98() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Gr$Eq, this.staticLink.s2, this.rest);
        }

        public Object lambda99(Object obj, Object obj2) {
            frame41 frame41Var = this.staticLink;
            boolean z = frame41Var.s1 == frame41Var.s2;
            if (!z ? z : Scheme.numEqu.apply2(this.start1, obj) != Boolean.FALSE) {
                return Scheme.numGEq.apply2(this.end1, obj2);
            }
            frame41 frame41Var2 = this.staticLink;
            Object obj3 = frame41Var2.s1;
            Object obj4 = this.start1;
            Object obj5 = this.end1;
            Object obj6 = frame41Var2.s2;
            ModuleMethod moduleMethod = srfi13.lambda$Fn100;
            ModuleMethod moduleMethod2 = misc.values;
            return srfi13.$PcStringCompare(obj3, obj4, obj5, obj6, obj, obj2, moduleMethod, moduleMethod2, moduleMethod2);
        }

        public static Boolean lambda100(Object obj) {
            return Boolean.FALSE;
        }
    }

    public static Object string$Gr$Eq$V(Object obj, Object obj2, Object[] objArr) {
        frame41 frame41Var = new frame41();
        frame41Var.s1 = obj;
        frame41Var.s2 = obj2;
        frame41Var.maybe$Mnstarts$Plends = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame41Var.lambda$Fn96, frame41Var.lambda$Fn97);
    }

    public class frame43 extends ModuleBody {
        final ModuleMethod lambda$Fn101 = new ModuleMethod(this, 90, null, 0);
        final ModuleMethod lambda$Fn102 = new ModuleMethod(this, 91, null, 12291);
        LList maybe$Mnstarts$Plends;
        Object s1;
        Object s2;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 90 ? lambda101() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            return moduleMethod.selector == 91 ? lambda102(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 90) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
            if (moduleMethod.selector != 91) {
                return super.match3(moduleMethod, obj, obj2, obj3, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }

        public Object lambda101() {
            return srfi13.stringParseStart$PlEnd(srfi13.string$Mnci$Eq, this.s1, this.maybe$Mnstarts$Plends);
        }

        public Object lambda102(Object obj, Object obj2, Object obj3) {
            frame44 frame44Var = new frame44();
            frame44Var.staticLink = this;
            frame44Var.rest = obj;
            frame44Var.start1 = obj2;
            frame44Var.end1 = obj3;
            return call_with_values.callWithValues(frame44Var.lambda$Fn103, frame44Var.lambda$Fn104);
        }
    }

    public class frame44 extends ModuleBody {
        Object end1;
        final ModuleMethod lambda$Fn103 = new ModuleMethod(this, 88, null, 0);
        final ModuleMethod lambda$Fn104 = new ModuleMethod(this, 89, null, 8194);
        Object rest;
        Object start1;
        frame43 staticLink;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 88 ? lambda103() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 89 ? lambda104(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 88) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 89) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda103() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnci$Eq, this.staticLink.s2, this.rest);
        }

        public Object lambda104(Object obj, Object obj2) {
            NumberCompare numberCompare = Scheme.numEqu;
            AddOp addOp = AddOp.$Mn;
            Object objApply2 = numberCompare.apply2(addOp.apply2(this.end1, this.start1), addOp.apply2(obj2, obj));
            try {
                boolean zBooleanValue = ((Boolean) objApply2).booleanValue();
                if (!zBooleanValue) {
                    return zBooleanValue ? Boolean.TRUE : Boolean.FALSE;
                }
                frame43 frame43Var = this.staticLink;
                boolean zBooleanValue2 = frame43Var.s1 == frame43Var.s2;
                if (zBooleanValue2) {
                    Object objApply22 = numberCompare.apply2(this.start1, obj);
                    try {
                        zBooleanValue2 = ((Boolean) objApply22).booleanValue();
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "x", -2, objApply22);
                    }
                }
                if (zBooleanValue2) {
                    return zBooleanValue2 ? Boolean.TRUE : Boolean.FALSE;
                }
                frame43 frame43Var2 = this.staticLink;
                return srfi13.$PcStringCompareCi(frame43Var2.s1, this.start1, this.end1, frame43Var2.s2, obj, obj2, srfi13.lambda$Fn105, misc.values, srfi13.lambda$Fn106);
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "x", -2, objApply2);
            }
        }

        public static Boolean lambda105(Object obj) {
            return Boolean.FALSE;
        }

        public static Boolean lambda106(Object obj) {
            return Boolean.FALSE;
        }
    }

    public static Object stringCi$Eq$V(Object obj, Object obj2, Object[] objArr) {
        frame43 frame43Var = new frame43();
        frame43Var.s1 = obj;
        frame43Var.s2 = obj2;
        frame43Var.maybe$Mnstarts$Plends = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame43Var.lambda$Fn101, frame43Var.lambda$Fn102);
    }

    public class frame45 extends ModuleBody {
        final ModuleMethod lambda$Fn107 = new ModuleMethod(this, 94, null, 0);
        final ModuleMethod lambda$Fn108 = new ModuleMethod(this, 95, null, 12291);
        LList maybe$Mnstarts$Plends;
        Object s1;
        Object s2;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 94 ? lambda107() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            return moduleMethod.selector == 95 ? lambda108(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 94) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
            if (moduleMethod.selector != 95) {
                return super.match3(moduleMethod, obj, obj2, obj3, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }

        public Object lambda107() {
            return srfi13.stringParseStart$PlEnd(srfi13.string$Mnci$Ls$Gr, this.s1, this.maybe$Mnstarts$Plends);
        }

        public Object lambda108(Object obj, Object obj2, Object obj3) {
            frame46 frame46Var = new frame46();
            frame46Var.staticLink = this;
            frame46Var.rest = obj;
            frame46Var.start1 = obj2;
            frame46Var.end1 = obj3;
            return call_with_values.callWithValues(frame46Var.lambda$Fn109, frame46Var.lambda$Fn110);
        }
    }

    public class frame46 extends ModuleBody {
        Object end1;
        final ModuleMethod lambda$Fn109 = new ModuleMethod(this, 92, null, 0);
        final ModuleMethod lambda$Fn110 = new ModuleMethod(this, 93, null, 8194);
        Object rest;
        Object start1;
        frame45 staticLink;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 92 ? lambda109() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 93 ? lambda110(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 92) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 93) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda109() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnci$Ls$Gr, this.staticLink.s2, this.rest);
        }

        public Object lambda110(Object obj, Object obj2) {
            NumberCompare numberCompare = Scheme.numEqu;
            AddOp addOp = AddOp.$Mn;
            Object objApply2 = numberCompare.apply2(addOp.apply2(this.end1, this.start1), addOp.apply2(obj2, obj));
            try {
                Boolean bool = Boolean.FALSE;
                int i = ((objApply2 != bool ? 1 : 0) + 1) & 1;
                if (i != 0) {
                    return i != 0 ? Boolean.TRUE : bool;
                }
                frame45 frame45Var = this.staticLink;
                int i2 = frame45Var.s1 == frame45Var.s2 ? 1 : 0;
                if (i2 != 0) {
                    i2 = numberCompare.apply2(this.start1, obj) != bool ? 1 : 0;
                }
                int i3 = (i2 + 1) & 1;
                if (i3 == 0) {
                    return i3 != 0 ? Boolean.TRUE : bool;
                }
                frame45 frame45Var2 = this.staticLink;
                Object obj3 = frame45Var2.s1;
                Object obj4 = this.start1;
                Object obj5 = this.end1;
                Object obj6 = frame45Var2.s2;
                ModuleMethod moduleMethod = misc.values;
                return srfi13.$PcStringCompareCi(obj3, obj4, obj5, obj6, obj, obj2, moduleMethod, srfi13.lambda$Fn111, moduleMethod);
            } catch (ClassCastException e) {
                throw new WrongType(e, "x", -2, objApply2);
            }
        }

        public static Boolean lambda111(Object obj) {
            return Boolean.FALSE;
        }
    }

    public static Object stringCi$Ls$Gr$V(Object obj, Object obj2, Object[] objArr) {
        frame45 frame45Var = new frame45();
        frame45Var.s1 = obj;
        frame45Var.s2 = obj2;
        frame45Var.maybe$Mnstarts$Plends = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame45Var.lambda$Fn107, frame45Var.lambda$Fn108);
    }

    public class frame47 extends ModuleBody {
        final ModuleMethod lambda$Fn112 = new ModuleMethod(this, 98, null, 0);
        final ModuleMethod lambda$Fn113 = new ModuleMethod(this, 99, null, 12291);
        LList maybe$Mnstarts$Plends;
        Object s1;
        Object s2;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 98 ? lambda112() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            return moduleMethod.selector == 99 ? lambda113(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 98) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
            if (moduleMethod.selector != 99) {
                return super.match3(moduleMethod, obj, obj2, obj3, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }

        public Object lambda112() {
            return srfi13.stringParseStart$PlEnd(srfi13.string$Mnci$Ls, this.s1, this.maybe$Mnstarts$Plends);
        }

        public Object lambda113(Object obj, Object obj2, Object obj3) {
            frame48 frame48Var = new frame48();
            frame48Var.staticLink = this;
            frame48Var.rest = obj;
            frame48Var.start1 = obj2;
            frame48Var.end1 = obj3;
            return call_with_values.callWithValues(frame48Var.lambda$Fn114, frame48Var.lambda$Fn115);
        }
    }

    public class frame48 extends ModuleBody {
        Object end1;
        final ModuleMethod lambda$Fn114 = new ModuleMethod(this, 96, null, 0);
        final ModuleMethod lambda$Fn115 = new ModuleMethod(this, 97, null, 8194);
        Object rest;
        Object start1;
        frame47 staticLink;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 96 ? lambda114() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 97 ? lambda115(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 96) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 97) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda114() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnci$Ls, this.staticLink.s2, this.rest);
        }

        public Object lambda115(Object obj, Object obj2) {
            frame47 frame47Var = this.staticLink;
            boolean z = frame47Var.s1 == frame47Var.s2;
            if (!z ? z : Scheme.numEqu.apply2(this.start1, obj) != Boolean.FALSE) {
                return Scheme.numLss.apply2(this.end1, obj2);
            }
            frame47 frame47Var2 = this.staticLink;
            return srfi13.$PcStringCompareCi(frame47Var2.s1, this.start1, this.end1, frame47Var2.s2, obj, obj2, misc.values, srfi13.lambda$Fn116, srfi13.lambda$Fn117);
        }

        public static Boolean lambda116(Object obj) {
            return Boolean.FALSE;
        }

        public static Boolean lambda117(Object obj) {
            return Boolean.FALSE;
        }
    }

    public static Object stringCi$Ls$V(Object obj, Object obj2, Object[] objArr) {
        frame47 frame47Var = new frame47();
        frame47Var.s1 = obj;
        frame47Var.s2 = obj2;
        frame47Var.maybe$Mnstarts$Plends = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame47Var.lambda$Fn112, frame47Var.lambda$Fn113);
    }

    public class frame49 extends ModuleBody {
        final ModuleMethod lambda$Fn118 = new ModuleMethod(this, 102, null, 0);
        final ModuleMethod lambda$Fn119 = new ModuleMethod(this, 103, null, 12291);
        LList maybe$Mnstarts$Plends;
        Object s1;
        Object s2;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 102 ? lambda118() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            return moduleMethod.selector == 103 ? lambda119(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 102) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
            if (moduleMethod.selector != 103) {
                return super.match3(moduleMethod, obj, obj2, obj3, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }

        public Object lambda118() {
            return srfi13.stringParseStart$PlEnd(srfi13.string$Mnci$Gr, this.s1, this.maybe$Mnstarts$Plends);
        }

        public Object lambda119(Object obj, Object obj2, Object obj3) {
            frame50 frame50Var = new frame50();
            frame50Var.staticLink = this;
            frame50Var.rest = obj;
            frame50Var.start1 = obj2;
            frame50Var.end1 = obj3;
            return call_with_values.callWithValues(frame50Var.lambda$Fn120, frame50Var.lambda$Fn121);
        }
    }

    public class frame50 extends ModuleBody {
        Object end1;
        final ModuleMethod lambda$Fn120 = new ModuleMethod(this, 100, null, 0);
        final ModuleMethod lambda$Fn121 = new ModuleMethod(this, 101, null, 8194);
        Object rest;
        Object start1;
        frame49 staticLink;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 100 ? lambda120() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 101 ? lambda121(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 100) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 101) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda120() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnci$Gr, this.staticLink.s2, this.rest);
        }

        public Object lambda121(Object obj, Object obj2) {
            frame49 frame49Var = this.staticLink;
            boolean z = frame49Var.s1 == frame49Var.s2;
            if (!z ? z : Scheme.numEqu.apply2(this.start1, obj) != Boolean.FALSE) {
                return Scheme.numGrt.apply2(this.end1, obj2);
            }
            frame49 frame49Var2 = this.staticLink;
            return srfi13.$PcStringCompareCi(frame49Var2.s1, this.start1, this.end1, frame49Var2.s2, obj, obj2, srfi13.lambda$Fn122, srfi13.lambda$Fn123, misc.values);
        }

        public static Boolean lambda122(Object obj) {
            return Boolean.FALSE;
        }

        public static Boolean lambda123(Object obj) {
            return Boolean.FALSE;
        }
    }

    public static Object stringCi$Gr$V(Object obj, Object obj2, Object[] objArr) {
        frame49 frame49Var = new frame49();
        frame49Var.s1 = obj;
        frame49Var.s2 = obj2;
        frame49Var.maybe$Mnstarts$Plends = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame49Var.lambda$Fn118, frame49Var.lambda$Fn119);
    }

    public class frame51 extends ModuleBody {
        final ModuleMethod lambda$Fn124 = new ModuleMethod(this, 106, null, 0);
        final ModuleMethod lambda$Fn125 = new ModuleMethod(this, 107, null, 12291);
        LList maybe$Mnstarts$Plends;
        Object s1;
        Object s2;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 106 ? lambda124() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            return moduleMethod.selector == 107 ? lambda125(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 106) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
            if (moduleMethod.selector != 107) {
                return super.match3(moduleMethod, obj, obj2, obj3, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }

        public Object lambda124() {
            return srfi13.stringParseStart$PlEnd(srfi13.string$Mnci$Ls$Eq, this.s1, this.maybe$Mnstarts$Plends);
        }

        public Object lambda125(Object obj, Object obj2, Object obj3) {
            frame52 frame52Var = new frame52();
            frame52Var.staticLink = this;
            frame52Var.rest = obj;
            frame52Var.start1 = obj2;
            frame52Var.end1 = obj3;
            return call_with_values.callWithValues(frame52Var.lambda$Fn126, frame52Var.lambda$Fn127);
        }
    }

    public class frame52 extends ModuleBody {
        Object end1;
        final ModuleMethod lambda$Fn126 = new ModuleMethod(this, 104, null, 0);
        final ModuleMethod lambda$Fn127 = new ModuleMethod(this, 105, null, 8194);
        Object rest;
        Object start1;
        frame51 staticLink;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 104 ? lambda126() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 105 ? lambda127(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 104) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 105) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda126() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnci$Ls$Eq, this.staticLink.s2, this.rest);
        }

        public Object lambda127(Object obj, Object obj2) {
            frame51 frame51Var = this.staticLink;
            boolean z = frame51Var.s1 == frame51Var.s2;
            if (!z ? z : Scheme.numEqu.apply2(this.start1, obj) != Boolean.FALSE) {
                return Scheme.numLEq.apply2(this.end1, obj2);
            }
            frame51 frame51Var2 = this.staticLink;
            Object obj3 = frame51Var2.s1;
            Object obj4 = this.start1;
            Object obj5 = this.end1;
            Object obj6 = frame51Var2.s2;
            ModuleMethod moduleMethod = misc.values;
            return srfi13.$PcStringCompareCi(obj3, obj4, obj5, obj6, obj, obj2, moduleMethod, moduleMethod, srfi13.lambda$Fn128);
        }

        public static Boolean lambda128(Object obj) {
            return Boolean.FALSE;
        }
    }

    public static Object stringCi$Ls$Eq$V(Object obj, Object obj2, Object[] objArr) {
        frame51 frame51Var = new frame51();
        frame51Var.s1 = obj;
        frame51Var.s2 = obj2;
        frame51Var.maybe$Mnstarts$Plends = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame51Var.lambda$Fn124, frame51Var.lambda$Fn125);
    }

    public class frame53 extends ModuleBody {
        final ModuleMethod lambda$Fn129 = new ModuleMethod(this, 110, null, 0);
        final ModuleMethod lambda$Fn130 = new ModuleMethod(this, 111, null, 12291);
        LList maybe$Mnstarts$Plends;
        Object s1;
        Object s2;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 110 ? lambda129() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            return moduleMethod.selector == 111 ? lambda130(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 110) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
            if (moduleMethod.selector != 111) {
                return super.match3(moduleMethod, obj, obj2, obj3, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }

        public Object lambda129() {
            return srfi13.stringParseStart$PlEnd(srfi13.string$Mnci$Gr$Eq, this.s1, this.maybe$Mnstarts$Plends);
        }

        public Object lambda130(Object obj, Object obj2, Object obj3) {
            frame54 frame54Var = new frame54();
            frame54Var.staticLink = this;
            frame54Var.rest = obj;
            frame54Var.start1 = obj2;
            frame54Var.end1 = obj3;
            return call_with_values.callWithValues(frame54Var.lambda$Fn131, frame54Var.lambda$Fn132);
        }
    }

    public class frame54 extends ModuleBody {
        Object end1;
        final ModuleMethod lambda$Fn131 = new ModuleMethod(this, 108, null, 0);
        final ModuleMethod lambda$Fn132 = new ModuleMethod(this, 109, null, 8194);
        Object rest;
        Object start1;
        frame53 staticLink;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 108 ? lambda131() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 109 ? lambda132(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 108) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 109) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda131() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnci$Gr$Eq, this.staticLink.s2, this.rest);
        }

        public Object lambda132(Object obj, Object obj2) {
            frame53 frame53Var = this.staticLink;
            boolean z = frame53Var.s1 == frame53Var.s2;
            if (!z ? z : Scheme.numEqu.apply2(this.start1, obj) != Boolean.FALSE) {
                return Scheme.numGEq.apply2(this.end1, obj2);
            }
            frame53 frame53Var2 = this.staticLink;
            Object obj3 = frame53Var2.s1;
            Object obj4 = this.start1;
            Object obj5 = this.end1;
            Object obj6 = frame53Var2.s2;
            ModuleMethod moduleMethod = srfi13.lambda$Fn133;
            ModuleMethod moduleMethod2 = misc.values;
            return srfi13.$PcStringCompareCi(obj3, obj4, obj5, obj6, obj, obj2, moduleMethod, moduleMethod2, moduleMethod2);
        }

        public static Boolean lambda133(Object obj) {
            return Boolean.FALSE;
        }
    }

    public static Object stringCi$Gr$Eq$V(Object obj, Object obj2, Object[] objArr) {
        frame53 frame53Var = new frame53();
        frame53Var.s1 = obj;
        frame53Var.s2 = obj2;
        frame53Var.maybe$Mnstarts$Plends = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame53Var.lambda$Fn129, frame53Var.lambda$Fn130);
    }

    public static Object $PcStringHash(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) throws Throwable {
        frame55 frame55Var = new frame55();
        frame55Var.char$Mn$Grint = obj2;
        Object objApply2 = Lit5;
        while (Scheme.numGEq.apply2(objApply2, obj3) == Boolean.FALSE) {
            objApply2 = AddOp.$Pl.apply2(objApply2, objApply2);
        }
        Object objApply22 = AddOp.$Mn.apply2(objApply2, Lit1);
        Object objApply23 = Lit0;
        while (Scheme.numGEq.apply2(obj4, obj5) == Boolean.FALSE) {
            AddOp addOp = AddOp.$Pl;
            Object objApply24 = addOp.apply2(obj4, Lit1);
            try {
                try {
                    objApply23 = BitwiseOp.and.apply2(objApply22, addOp.apply2(MultiplyOp.$St.apply2(Lit6, objApply23), Scheme.applyToArgs.apply2(frame55Var.char$Mn$Grint, Char.make(strings.stringRef((CharSequence) obj, ((Number) obj4).intValue())))));
                    obj4 = objApply24;
                } catch (ClassCastException e) {
                    throw new WrongType(e, "string-ref", 2, obj4);
                }
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "string-ref", 1, obj);
            }
        }
        return DivideOp.modulo.apply2(objApply23, obj3);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object stringHash$V(java.lang.Object r9, java.lang.Object[] r10) throws java.lang.Throwable {
        /*
            java.lang.String r0 = "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"
            gnu.kawa.slib.srfi13$frame56 r1 = new gnu.kawa.slib.srfi13$frame56
            r1.<init>()
            r1.s = r9
            r9 = 0
            gnu.lists.LList r9 = gnu.lists.LList.makeList(r10, r9)
            gnu.kawa.functions.ApplyToArgs r10 = kawa.standard.Scheme.applyToArgs
            gnu.mapping.Location r2 = gnu.kawa.slib.srfi13.loc$let$Mnoptionals$St
            r3 = 907(0x38b, float:1.271E-42)
            java.lang.Object r2 = r2.get()     // Catch: gnu.mapping.UnboundLocationException -> Lbd
            gnu.mapping.Location r4 = gnu.kawa.slib.srfi13.loc$bound
            java.lang.Object r5 = r4.get()     // Catch: gnu.mapping.UnboundLocationException -> Lb6
            gnu.math.IntNum r6 = gnu.kawa.slib.srfi13.Lit7
            java.lang.Object r3 = r4.get()     // Catch: gnu.mapping.UnboundLocationException -> Laf
            boolean r3 = kawa.lib.numbers.isInteger(r3)
            if (r3 == 0) goto L56
            java.lang.Object r3 = r4.get()     // Catch: gnu.mapping.UnboundLocationException -> L4d
            boolean r3 = kawa.lib.numbers.isExact(r3)
            if (r3 == 0) goto L4a
            gnu.kawa.functions.NumberCompare r3 = kawa.standard.Scheme.numLEq
            gnu.math.IntNum r7 = gnu.kawa.slib.srfi13.Lit0
            java.lang.Object r8 = r4.get()     // Catch: gnu.mapping.UnboundLocationException -> L41
            java.lang.Object r3 = r3.apply2(r7, r8)
            goto L5d
        L41:
            r9 = move-exception
            r10 = 909(0x38d, float:1.274E-42)
            r1 = 19
            r9.setLine(r0, r10, r1)
            throw r9
        L4a:
            if (r3 == 0) goto L5b
            goto L58
        L4d:
            r9 = move-exception
            r10 = 908(0x38c, float:1.272E-42)
            r1 = 21
            r9.setLine(r0, r10, r1)
            throw r9
        L56:
            if (r3 == 0) goto L5b
        L58:
            java.lang.Boolean r3 = java.lang.Boolean.TRUE
            goto L5d
        L5b:
            java.lang.Boolean r3 = java.lang.Boolean.FALSE
        L5d:
            java.lang.Object r3 = r10.apply3(r5, r6, r3)
            gnu.mapping.Location r5 = gnu.kawa.slib.srfi13.loc$rest
            java.lang.Object r5 = r5.get()     // Catch: gnu.mapping.UnboundLocationException -> La7
            java.lang.Object r3 = r10.apply2(r3, r5)
            r5 = 911(0x38f, float:1.277E-42)
            java.lang.Object r6 = r4.get()     // Catch: gnu.mapping.UnboundLocationException -> La0
            java.lang.Number r6 = (java.lang.Number) r6     // Catch: java.lang.ClassCastException -> L96
            boolean r6 = kawa.lib.numbers.isZero(r6)
            if (r6 == 0) goto L7c
            gnu.math.IntNum r0 = gnu.kawa.slib.srfi13.Lit8
            goto L80
        L7c:
            java.lang.Object r0 = r4.get()     // Catch: gnu.mapping.UnboundLocationException -> L8f
        L80:
            r1.bound = r0
            gnu.expr.ModuleMethod r0 = r1.lambda$Fn134
            gnu.expr.ModuleMethod r1 = r1.lambda$Fn135
            java.lang.Object r0 = kawa.standard.call_with_values.callWithValues(r0, r1)
            java.lang.Object r9 = r10.apply4(r2, r9, r3, r0)
            return r9
        L8f:
            r9 = move-exception
            r10 = 18
            r9.setLine(r0, r5, r10)
            throw r9
        L96:
            r9 = move-exception
            gnu.mapping.WrongType r10 = new gnu.mapping.WrongType
            java.lang.String r0 = "zero?"
            r1 = 1
            r10.<init>(r9, r0, r1, r6)
            throw r10
        La0:
            r9 = move-exception
            r10 = 29
            r9.setLine(r0, r5, r10)
            throw r9
        La7:
            r9 = move-exception
            r10 = 910(0x38e, float:1.275E-42)
            r1 = 7
            r9.setLine(r0, r10, r1)
            throw r9
        Laf:
            r9 = move-exception
            r10 = 72
            r9.setLine(r0, r3, r10)
            throw r9
        Lb6:
            r9 = move-exception
            r10 = 42
            r9.setLine(r0, r3, r10)
            throw r9
        Lbd:
            r9 = move-exception
            r10 = 3
            r9.setLine(r0, r3, r10)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.srfi13.stringHash$V(java.lang.Object, java.lang.Object[]):java.lang.Object");
    }

    public class frame56 extends ModuleBody {
        Object bound;
        final ModuleMethod lambda$Fn134 = new ModuleMethod(this, 112, null, 0);
        final ModuleMethod lambda$Fn135 = new ModuleMethod(this, 113, null, 8194);
        Object s;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 112 ? lambda134() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 113 ? lambda135(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 112) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 113) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda134() {
            try {
                return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnhash, this.s, srfi13.loc$rest.get());
            } catch (UnboundLocationException e) {
                e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 912, 55);
                throw e;
            }
        }

        public Object lambda135(Object obj, Object obj2) {
            return srfi13.$PcStringHash(this.s, characters.char$Mn$Grinteger, this.bound, obj, obj2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object stringHashCi$V(java.lang.Object r9, java.lang.Object[] r10) throws java.lang.Throwable {
        /*
            java.lang.String r0 = "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"
            gnu.kawa.slib.srfi13$frame57 r1 = new gnu.kawa.slib.srfi13$frame57
            r1.<init>()
            r1.s = r9
            r9 = 0
            gnu.lists.LList r9 = gnu.lists.LList.makeList(r10, r9)
            gnu.kawa.functions.ApplyToArgs r10 = kawa.standard.Scheme.applyToArgs
            gnu.mapping.Location r2 = gnu.kawa.slib.srfi13.loc$let$Mnoptionals$St
            r3 = 916(0x394, float:1.284E-42)
            java.lang.Object r2 = r2.get()     // Catch: gnu.mapping.UnboundLocationException -> Lbd
            gnu.mapping.Location r4 = gnu.kawa.slib.srfi13.loc$bound
            java.lang.Object r5 = r4.get()     // Catch: gnu.mapping.UnboundLocationException -> Lb6
            gnu.math.IntNum r6 = gnu.kawa.slib.srfi13.Lit9
            java.lang.Object r3 = r4.get()     // Catch: gnu.mapping.UnboundLocationException -> Laf
            boolean r3 = kawa.lib.numbers.isInteger(r3)
            if (r3 == 0) goto L56
            java.lang.Object r3 = r4.get()     // Catch: gnu.mapping.UnboundLocationException -> L4d
            boolean r3 = kawa.lib.numbers.isExact(r3)
            if (r3 == 0) goto L4a
            gnu.kawa.functions.NumberCompare r3 = kawa.standard.Scheme.numLEq
            gnu.math.IntNum r7 = gnu.kawa.slib.srfi13.Lit0
            java.lang.Object r8 = r4.get()     // Catch: gnu.mapping.UnboundLocationException -> L41
            java.lang.Object r3 = r3.apply2(r7, r8)
            goto L5d
        L41:
            r9 = move-exception
            r10 = 918(0x396, float:1.286E-42)
            r1 = 19
            r9.setLine(r0, r10, r1)
            throw r9
        L4a:
            if (r3 == 0) goto L5b
            goto L58
        L4d:
            r9 = move-exception
            r10 = 917(0x395, float:1.285E-42)
            r1 = 21
            r9.setLine(r0, r10, r1)
            throw r9
        L56:
            if (r3 == 0) goto L5b
        L58:
            java.lang.Boolean r3 = java.lang.Boolean.TRUE
            goto L5d
        L5b:
            java.lang.Boolean r3 = java.lang.Boolean.FALSE
        L5d:
            java.lang.Object r3 = r10.apply3(r5, r6, r3)
            gnu.mapping.Location r5 = gnu.kawa.slib.srfi13.loc$rest
            java.lang.Object r5 = r5.get()     // Catch: gnu.mapping.UnboundLocationException -> La7
            java.lang.Object r3 = r10.apply2(r3, r5)
            r5 = 920(0x398, float:1.289E-42)
            java.lang.Object r6 = r4.get()     // Catch: gnu.mapping.UnboundLocationException -> La0
            java.lang.Number r6 = (java.lang.Number) r6     // Catch: java.lang.ClassCastException -> L96
            boolean r6 = kawa.lib.numbers.isZero(r6)
            if (r6 == 0) goto L7c
            gnu.math.IntNum r0 = gnu.kawa.slib.srfi13.Lit10
            goto L80
        L7c:
            java.lang.Object r0 = r4.get()     // Catch: gnu.mapping.UnboundLocationException -> L8f
        L80:
            r1.bound = r0
            gnu.expr.ModuleMethod r0 = r1.lambda$Fn136
            gnu.expr.ModuleMethod r1 = r1.lambda$Fn137
            java.lang.Object r0 = kawa.standard.call_with_values.callWithValues(r0, r1)
            java.lang.Object r9 = r10.apply4(r2, r9, r3, r0)
            return r9
        L8f:
            r9 = move-exception
            r10 = 18
            r9.setLine(r0, r5, r10)
            throw r9
        L96:
            r9 = move-exception
            gnu.mapping.WrongType r10 = new gnu.mapping.WrongType
            java.lang.String r0 = "zero?"
            r1 = 1
            r10.<init>(r9, r0, r1, r6)
            throw r10
        La0:
            r9 = move-exception
            r10 = 29
            r9.setLine(r0, r5, r10)
            throw r9
        La7:
            r9 = move-exception
            r10 = 919(0x397, float:1.288E-42)
            r1 = 7
            r9.setLine(r0, r10, r1)
            throw r9
        Laf:
            r9 = move-exception
            r10 = 72
            r9.setLine(r0, r3, r10)
            throw r9
        Lb6:
            r9 = move-exception
            r10 = 42
            r9.setLine(r0, r3, r10)
            throw r9
        Lbd:
            r9 = move-exception
            r10 = 3
            r9.setLine(r0, r3, r10)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.srfi13.stringHashCi$V(java.lang.Object, java.lang.Object[]):java.lang.Object");
    }

    public class frame57 extends ModuleBody {
        Object bound;
        final ModuleMethod lambda$Fn136 = new ModuleMethod(this, 114, null, 0);
        final ModuleMethod lambda$Fn137 = new ModuleMethod(this, 115, null, 8194);
        Object s;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 114 ? lambda136() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 115 ? lambda137(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 114) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 115) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda136() {
            try {
                return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnhash$Mnci, this.s, srfi13.loc$rest.get());
            } catch (UnboundLocationException e) {
                e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 921, 58);
                throw e;
            }
        }

        public static int lambda138(Object obj) {
            try {
                return unicode.charDowncase((Char) obj).intValue();
            } catch (ClassCastException e) {
                throw new WrongType(e, "char-downcase", 1, obj);
            }
        }

        public Object lambda137(Object obj, Object obj2) {
            return srfi13.$PcStringHash(this.s, srfi13.lambda$Fn138, this.bound, obj, obj2);
        }
    }

    public class frame58 extends ModuleBody {
        final ModuleMethod lambda$Fn139 = new ModuleMethod(this, 116, null, 0);
        final ModuleMethod lambda$Fn140 = new ModuleMethod(this, 117, null, 8194);
        LList maybe$Mnstart$Plend;
        Object s;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 116 ? lambda139() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 117 ? lambda140(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 116) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 117) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda139() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnupcase, this.s, this.maybe$Mnstart$Plend);
        }

        public Object lambda140(Object obj, Object obj2) {
            return srfi13.$PcStringMap(unicode.char$Mnupcase, this.s, obj, obj2);
        }
    }

    public static Object stringUpcase$V(Object obj, Object[] objArr) {
        frame58 frame58Var = new frame58();
        frame58Var.s = obj;
        frame58Var.maybe$Mnstart$Plend = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame58Var.lambda$Fn139, frame58Var.lambda$Fn140);
    }

    public class frame59 extends ModuleBody {
        final ModuleMethod lambda$Fn141 = new ModuleMethod(this, 118, null, 0);
        final ModuleMethod lambda$Fn142 = new ModuleMethod(this, 119, null, 8194);
        LList maybe$Mnstart$Plend;
        Object s;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 118 ? lambda141() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 119 ? lambda142(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 118) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 119) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda141() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnupcase$Ex, this.s, this.maybe$Mnstart$Plend);
        }

        public Object lambda142(Object obj, Object obj2) {
            return srfi13.$PcStringMap$Ex(unicode.char$Mnupcase, this.s, obj, obj2);
        }
    }

    public static Object stringUpcase$Ex$V(Object obj, Object[] objArr) {
        frame59 frame59Var = new frame59();
        frame59Var.s = obj;
        frame59Var.maybe$Mnstart$Plend = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame59Var.lambda$Fn141, frame59Var.lambda$Fn142);
    }

    public class frame60 extends ModuleBody {
        final ModuleMethod lambda$Fn143 = new ModuleMethod(this, 120, null, 0);
        final ModuleMethod lambda$Fn144 = new ModuleMethod(this, 121, null, 8194);
        LList maybe$Mnstart$Plend;
        Object s;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 120 ? lambda143() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 121 ? lambda144(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 120) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 121) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda143() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mndowncase, this.s, this.maybe$Mnstart$Plend);
        }

        public Object lambda144(Object obj, Object obj2) {
            return srfi13.$PcStringMap(unicode.char$Mndowncase, this.s, obj, obj2);
        }
    }

    public static Object stringDowncase$V(Object obj, Object[] objArr) {
        frame60 frame60Var = new frame60();
        frame60Var.s = obj;
        frame60Var.maybe$Mnstart$Plend = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame60Var.lambda$Fn143, frame60Var.lambda$Fn144);
    }

    public class frame61 extends ModuleBody {
        final ModuleMethod lambda$Fn145 = new ModuleMethod(this, 122, null, 0);
        final ModuleMethod lambda$Fn146 = new ModuleMethod(this, 123, null, 8194);
        LList maybe$Mnstart$Plend;
        Object s;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 122 ? lambda145() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 123 ? lambda146(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 122) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 123) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda145() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mndowncase$Ex, this.s, this.maybe$Mnstart$Plend);
        }

        public Object lambda146(Object obj, Object obj2) {
            return srfi13.$PcStringMap$Ex(unicode.char$Mndowncase, this.s, obj, obj2);
        }
    }

    public static Object stringDowncase$Ex$V(Object obj, Object[] objArr) {
        frame61 frame61Var = new frame61();
        frame61Var.s = obj;
        frame61Var.maybe$Mnstart$Plend = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame61Var.lambda$Fn145, frame61Var.lambda$Fn146);
    }

    public static Object $PcStringTitlecase$Ex(Object obj, Object obj2, Object obj3) throws Throwable {
        while (true) {
            Location location = loc$char$Mncased$Qu;
            try {
                Object objStringIndex$V = stringIndex$V(obj, location.get(), new Object[]{obj2, obj3});
                Boolean bool = Boolean.FALSE;
                if (objStringIndex$V == bool) {
                    return Values.empty;
                }
                try {
                    CharSeq charSeq = (CharSeq) obj;
                    try {
                        int iIntValue = ((Number) objStringIndex$V).intValue();
                        try {
                            try {
                                Char charCharTitlecase = unicode.charTitlecase(Char.make(strings.stringRef((CharSequence) obj, ((Number) objStringIndex$V).intValue())));
                                try {
                                    charSeq.setCharAt(iIntValue, charCharTitlecase.charValue());
                                    AddOp addOp = AddOp.$Pl;
                                    IntNum intNum = Lit1;
                                    Object objApply2 = addOp.apply2(objStringIndex$V, intNum);
                                    try {
                                        Object objStringSkip$V = stringSkip$V(obj, location.get(), new Object[]{objApply2, obj3});
                                        if (objStringSkip$V == bool) {
                                            return stringDowncase$Ex$V(obj, new Object[]{objApply2, obj3});
                                        }
                                        stringDowncase$Ex$V(obj, new Object[]{objApply2, objStringSkip$V});
                                        obj2 = addOp.apply2(objStringSkip$V, intNum);
                                    } catch (UnboundLocationException e) {
                                        e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 959, 31);
                                        throw e;
                                    }
                                } catch (ClassCastException e2) {
                                    throw new WrongType(e2, "string-set!", 3, charCharTitlecase);
                                }
                            } catch (ClassCastException e3) {
                                throw new WrongType(e3, "string-ref", 2, objStringIndex$V);
                            }
                        } catch (ClassCastException e4) {
                            throw new WrongType(e4, "string-ref", 1, obj);
                        }
                    } catch (ClassCastException e5) {
                        throw new WrongType(e5, "string-set!", 2, objStringIndex$V);
                    }
                } catch (ClassCastException e6) {
                    throw new WrongType(e6, "string-set!", 1, obj);
                }
            } catch (UnboundLocationException e7) {
                e7.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 955, 28);
                throw e7;
            }
        }
    }

    public class frame62 extends ModuleBody {
        final ModuleMethod lambda$Fn147 = new ModuleMethod(this, 124, null, 0);
        final ModuleMethod lambda$Fn148 = new ModuleMethod(this, 125, null, 8194);
        LList maybe$Mnstart$Plend;
        Object s;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 124 ? lambda147() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 125 ? lambda148(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 124) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 125) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda147() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mntitlecase$Ex, this.s, this.maybe$Mnstart$Plend);
        }

        public Object lambda148(Object obj, Object obj2) {
            return srfi13.$PcStringTitlecase$Ex(this.s, obj, obj2);
        }
    }

    public static Object stringTitlecase$Ex$V(Object obj, Object[] objArr) {
        frame62 frame62Var = new frame62();
        frame62Var.s = obj;
        frame62Var.maybe$Mnstart$Plend = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame62Var.lambda$Fn147, frame62Var.lambda$Fn148);
    }

    public class frame63 extends ModuleBody {
        final ModuleMethod lambda$Fn149 = new ModuleMethod(this, 126, null, 0);
        final ModuleMethod lambda$Fn150 = new ModuleMethod(this, WorkQueueKt.MASK, null, 8194);
        LList maybe$Mnstart$Plend;
        Object s;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 126 ? lambda149() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 127 ? lambda150(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 126) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 127) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda149() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mntitlecase$Ex, this.s, this.maybe$Mnstart$Plend);
        }

        public CharSequence lambda150(Object obj, Object obj2) throws Throwable {
            Object obj3 = this.s;
            try {
                try {
                    try {
                        CharSequence charSequenceSubstring = strings.substring((CharSequence) obj3, ((Number) obj).intValue(), ((Number) obj2).intValue());
                        srfi13.$PcStringTitlecase$Ex(charSequenceSubstring, srfi13.Lit0, AddOp.$Mn.apply2(obj2, obj));
                        return charSequenceSubstring;
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "substring", 3, obj2);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "substring", 2, obj);
                }
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "substring", 1, obj3);
            }
        }
    }

    public static Object stringTitlecase$V(Object obj, Object[] objArr) {
        frame63 frame63Var = new frame63();
        frame63Var.s = obj;
        frame63Var.maybe$Mnstart$Plend = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame63Var.lambda$Fn149, frame63Var.lambda$Fn150);
    }

    public static Object stringTake(Object obj, Object obj2) throws Throwable {
        frame64 frame64Var = new frame64();
        frame64Var.s = obj;
        frame64Var.n = obj2;
        ApplyToArgs applyToArgs = Scheme.applyToArgs;
        Location location = loc$check$Mnarg;
        try {
            Object obj3 = location.get();
            ModuleMethod moduleMethod = strings.string$Qu;
            Object obj4 = frame64Var.s;
            ModuleMethod moduleMethod2 = string$Mntake;
            applyToArgs.apply4(obj3, moduleMethod, obj4, moduleMethod2);
            try {
                applyToArgs.apply4(location.get(), frame64Var.lambda$Fn151, frame64Var.n, moduleMethod2);
                Object obj5 = frame64Var.s;
                try {
                    CharSequence charSequence = (CharSequence) obj5;
                    Object obj6 = frame64Var.n;
                    try {
                        return $PcSubstring$SlShared(charSequence, 0, ((Number) obj6).intValue());
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "%substring/shared", 2, obj6);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "%substring/shared", 0, obj5);
                }
            } catch (UnboundLocationException e3) {
                e3.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 996, 3);
                throw e3;
            }
        } catch (UnboundLocationException e4) {
            e4.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 995, 3);
            throw e4;
        }
    }

    public class frame64 extends ModuleBody {
        final ModuleMethod lambda$Fn151;
        Object n;
        Object s;

        public frame64() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 128, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:996");
            this.lambda$Fn151 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 128 ? lambda151(obj) ? Boolean.TRUE : Boolean.FALSE : super.apply1(moduleMethod, obj);
        }

        public boolean lambda151(Object obj) {
            boolean zIsInteger = numbers.isInteger(this.n);
            if (!zIsInteger || !(zIsInteger = numbers.isExact(this.n))) {
                return zIsInteger;
            }
            NumberCompare numberCompare = Scheme.numLEq;
            IntNum intNum = srfi13.Lit0;
            Object obj2 = this.n;
            Object obj3 = this.s;
            try {
                return ((Boolean) numberCompare.apply3(intNum, obj2, Integer.valueOf(strings.stringLength((CharSequence) obj3)))).booleanValue();
            } catch (ClassCastException e) {
                throw new WrongType(e, "string-length", 1, obj3);
            }
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 128) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    public static Object stringTakeRight(Object obj, Object obj2) throws Throwable {
        frame65 frame65Var = new frame65();
        frame65Var.n = obj2;
        ApplyToArgs applyToArgs = Scheme.applyToArgs;
        Location location = loc$check$Mnarg;
        try {
            Object obj3 = location.get();
            ModuleMethod moduleMethod = strings.string$Qu;
            ModuleMethod moduleMethod2 = string$Mntake$Mnright;
            applyToArgs.apply4(obj3, moduleMethod, obj, moduleMethod2);
            try {
                frame65Var.len = strings.stringLength((CharSequence) obj);
                try {
                    applyToArgs.apply4(location.get(), frame65Var.lambda$Fn152, frame65Var.n, moduleMethod2);
                    try {
                        CharSequence charSequence = (CharSequence) obj;
                        Object objApply2 = AddOp.$Mn.apply2(Integer.valueOf(frame65Var.len), frame65Var.n);
                        try {
                            return $PcSubstring$SlShared(charSequence, ((Number) objApply2).intValue(), frame65Var.len);
                        } catch (ClassCastException e) {
                            throw new WrongType(e, "%substring/shared", 1, objApply2);
                        }
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "%substring/shared", 0, obj);
                    }
                } catch (UnboundLocationException e3) {
                    e3.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1004, 5);
                    throw e3;
                }
            } catch (ClassCastException e4) {
                throw new WrongType(e4, "string-length", 1, obj);
            }
        } catch (UnboundLocationException e5) {
            e5.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1002, 3);
            throw e5;
        }
    }

    public class frame65 extends ModuleBody {
        final ModuleMethod lambda$Fn152;
        int len;
        Object n;

        public frame65() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 129, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:1004");
            this.lambda$Fn152 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 129 ? lambda152(obj) ? Boolean.TRUE : Boolean.FALSE : super.apply1(moduleMethod, obj);
        }

        public boolean lambda152(Object obj) {
            boolean zIsInteger = numbers.isInteger(this.n);
            if (!zIsInteger) {
                return zIsInteger;
            }
            boolean zIsExact = numbers.isExact(this.n);
            return zIsExact ? ((Boolean) Scheme.numLEq.apply3(srfi13.Lit0, this.n, Integer.valueOf(this.len))).booleanValue() : zIsExact;
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 129) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    public static Object stringDrop(CharSequence charSequence, Object obj) throws Throwable {
        frame66 frame66Var = new frame66();
        frame66Var.n = obj;
        frame66Var.len = strings.stringLength(charSequence);
        try {
            Scheme.applyToArgs.apply4(loc$check$Mnarg.get(), frame66Var.lambda$Fn153, frame66Var.n, string$Mndrop);
            Object obj2 = frame66Var.n;
            try {
                return $PcSubstring$SlShared(charSequence, ((Number) obj2).intValue(), frame66Var.len);
            } catch (ClassCastException e) {
                throw new WrongType(e, "%substring/shared", 1, obj2);
            }
        } catch (UnboundLocationException e2) {
            e2.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", PointerIconCompat.TYPE_ALIAS, 5);
            throw e2;
        }
    }

    public class frame66 extends ModuleBody {
        final ModuleMethod lambda$Fn153;
        int len;
        Object n;

        public frame66() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 130, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:1010");
            this.lambda$Fn153 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 130 ? lambda153(obj) ? Boolean.TRUE : Boolean.FALSE : super.apply1(moduleMethod, obj);
        }

        public boolean lambda153(Object obj) {
            boolean zIsInteger = numbers.isInteger(this.n);
            if (!zIsInteger) {
                return zIsInteger;
            }
            boolean zIsExact = numbers.isExact(this.n);
            return zIsExact ? ((Boolean) Scheme.numLEq.apply3(srfi13.Lit0, this.n, Integer.valueOf(this.len))).booleanValue() : zIsExact;
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 130) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    public static Object stringDropRight(CharSequence charSequence, Object obj) throws Throwable {
        frame67 frame67Var = new frame67();
        frame67Var.n = obj;
        frame67Var.len = strings.stringLength(charSequence);
        try {
            Scheme.applyToArgs.apply4(loc$check$Mnarg.get(), frame67Var.lambda$Fn154, frame67Var.n, string$Mndrop$Mnright);
            Object objApply2 = AddOp.$Mn.apply2(Integer.valueOf(frame67Var.len), frame67Var.n);
            try {
                return $PcSubstring$SlShared(charSequence, 0, ((Number) objApply2).intValue());
            } catch (ClassCastException e) {
                throw new WrongType(e, "%substring/shared", 2, objApply2);
            }
        } catch (UnboundLocationException e2) {
            e2.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW, 5);
            throw e2;
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
        int i = moduleMethod.selector;
        if (i == 218) {
            try {
                return stringTabulate(obj, ((Number) obj2).intValue());
            } catch (ClassCastException e) {
                throw new WrongType(e, "string-tabulate", 2, obj2);
            }
        }
        switch (i) {
            case 280:
                return stringTake(obj, obj2);
            case 281:
                return stringTakeRight(obj, obj2);
            case 282:
                try {
                    return stringDrop((CharSequence) obj, obj2);
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "string-drop", 1, obj);
                }
            case 283:
                try {
                    return stringDropRight((CharSequence) obj, obj2);
                } catch (ClassCastException e3) {
                    throw new WrongType(e3, "string-drop-right", 1, obj);
                }
            default:
                return super.apply2(moduleMethod, obj, obj2);
        }
    }

    public class frame67 extends ModuleBody {
        final ModuleMethod lambda$Fn154;
        int len;
        Object n;

        public frame67() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 131, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:1016");
            this.lambda$Fn154 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 131 ? lambda154(obj) ? Boolean.TRUE : Boolean.FALSE : super.apply1(moduleMethod, obj);
        }

        public boolean lambda154(Object obj) {
            boolean zIsInteger = numbers.isInteger(this.n);
            if (!zIsInteger) {
                return zIsInteger;
            }
            boolean zIsExact = numbers.isExact(this.n);
            return zIsExact ? ((Boolean) Scheme.numLEq.apply3(srfi13.Lit0, this.n, Integer.valueOf(this.len))).booleanValue() : zIsExact;
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 131) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    public static Object stringTrim$V(Object obj, Object[] objArr) {
        frame68 frame68Var = new frame68();
        frame68Var.s = obj;
        LList lListMakeList = LList.makeList(objArr, 0);
        ApplyToArgs applyToArgs = Scheme.applyToArgs;
        try {
            try {
                try {
                    try {
                        return applyToArgs.apply4(loc$let$Mnoptionals$St.get(), lListMakeList, applyToArgs.apply2(applyToArgs.apply2(loc$criterion.get(), GetNamedPart.getNamedPart.apply2(loc$char$Mnset.get(), Lit11)), loc$rest.get()), call_with_values.callWithValues(frame68Var.lambda$Fn155, frame68Var.lambda$Fn156));
                    } catch (UnboundLocationException e) {
                        e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1022, 72);
                        throw e;
                    }
                } catch (UnboundLocationException e2) {
                    e2.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1022, 51);
                    throw e2;
                }
            } catch (UnboundLocationException e3) {
                e3.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1022, 40);
                throw e3;
            }
        } catch (UnboundLocationException e4) {
            e4.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1022, 3);
            throw e4;
        }
    }

    public class frame68 extends ModuleBody {
        final ModuleMethod lambda$Fn155 = new ModuleMethod(this, 132, null, 0);
        final ModuleMethod lambda$Fn156 = new ModuleMethod(this, 133, null, 8194);
        Object s;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 132 ? lambda155() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 133 ? lambda156(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 132) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 133) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda155() {
            try {
                return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mntrim, this.s, srfi13.loc$rest.get());
            } catch (UnboundLocationException e) {
                e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1023, 53);
                throw e;
            }
        }

        public Object lambda156(Object obj, Object obj2) {
            try {
                Object objStringSkip$V = srfi13.stringSkip$V(this.s, srfi13.loc$criterion.get(), new Object[]{obj, obj2});
                if (objStringSkip$V != Boolean.FALSE) {
                    Object obj3 = this.s;
                    try {
                        try {
                            try {
                                return srfi13.$PcSubstring$SlShared((CharSequence) obj3, ((Number) objStringSkip$V).intValue(), ((Number) obj2).intValue());
                            } catch (ClassCastException e) {
                                throw new WrongType(e, "%substring/shared", 2, obj2);
                            }
                        } catch (ClassCastException e2) {
                            throw new WrongType(e2, "%substring/shared", 1, objStringSkip$V);
                        }
                    } catch (ClassCastException e3) {
                        throw new WrongType(e3, "%substring/shared", 0, obj3);
                    }
                }
                return "";
            } catch (UnboundLocationException e4) {
                e4.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1024, 29);
                throw e4;
            }
        }
    }

    public static Object stringTrimRight$V(Object obj, Object[] objArr) {
        frame69 frame69Var = new frame69();
        frame69Var.s = obj;
        LList lListMakeList = LList.makeList(objArr, 0);
        ApplyToArgs applyToArgs = Scheme.applyToArgs;
        try {
            try {
                try {
                    try {
                        return applyToArgs.apply4(loc$let$Mnoptionals$St.get(), lListMakeList, applyToArgs.apply2(applyToArgs.apply2(loc$criterion.get(), GetNamedPart.getNamedPart.apply2(loc$char$Mnset.get(), Lit11)), loc$rest.get()), call_with_values.callWithValues(frame69Var.lambda$Fn157, frame69Var.lambda$Fn158));
                    } catch (UnboundLocationException e) {
                        e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1029, 72);
                        throw e;
                    }
                } catch (UnboundLocationException e2) {
                    e2.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1029, 51);
                    throw e2;
                }
            } catch (UnboundLocationException e3) {
                e3.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1029, 40);
                throw e3;
            }
        } catch (UnboundLocationException e4) {
            e4.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1029, 3);
            throw e4;
        }
    }

    public class frame69 extends ModuleBody {
        final ModuleMethod lambda$Fn157 = new ModuleMethod(this, 134, null, 0);
        final ModuleMethod lambda$Fn158 = new ModuleMethod(this, 135, null, 8194);
        Object s;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 134 ? lambda157() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 135 ? lambda158(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 134) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 135) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda157() {
            try {
                return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mntrim$Mnright, this.s, srfi13.loc$rest.get());
            } catch (UnboundLocationException e) {
                e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1030, 59);
                throw e;
            }
        }

        public Object lambda158(Object obj, Object obj2) throws Throwable {
            try {
                Object objStringSkipRight$V = srfi13.stringSkipRight$V(this.s, srfi13.loc$criterion.get(), new Object[]{obj, obj2});
                if (objStringSkipRight$V != Boolean.FALSE) {
                    Object obj3 = this.s;
                    try {
                        CharSequence charSequence = (CharSequence) obj3;
                        Object objApply2 = AddOp.$Pl.apply2(srfi13.Lit1, objStringSkipRight$V);
                        try {
                            return srfi13.$PcSubstring$SlShared(charSequence, 0, ((Number) objApply2).intValue());
                        } catch (ClassCastException e) {
                            throw new WrongType(e, "%substring/shared", 2, objApply2);
                        }
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "%substring/shared", 0, obj3);
                    }
                }
                return "";
            } catch (UnboundLocationException e3) {
                e3.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1031, 35);
                throw e3;
            }
        }
    }

    public static Object stringTrimBoth$V(Object obj, Object[] objArr) {
        frame70 frame70Var = new frame70();
        frame70Var.s = obj;
        LList lListMakeList = LList.makeList(objArr, 0);
        ApplyToArgs applyToArgs = Scheme.applyToArgs;
        try {
            try {
                try {
                    try {
                        return applyToArgs.apply4(loc$let$Mnoptionals$St.get(), lListMakeList, applyToArgs.apply2(applyToArgs.apply2(loc$criterion.get(), GetNamedPart.getNamedPart.apply2(loc$char$Mnset.get(), Lit11)), loc$rest.get()), call_with_values.callWithValues(frame70Var.lambda$Fn159, frame70Var.lambda$Fn160));
                    } catch (UnboundLocationException e) {
                        e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1036, 72);
                        throw e;
                    }
                } catch (UnboundLocationException e2) {
                    e2.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1036, 51);
                    throw e2;
                }
            } catch (UnboundLocationException e3) {
                e3.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1036, 40);
                throw e3;
            }
        } catch (UnboundLocationException e4) {
            e4.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1036, 3);
            throw e4;
        }
    }

    public class frame70 extends ModuleBody {
        final ModuleMethod lambda$Fn159 = new ModuleMethod(this, 136, null, 0);
        final ModuleMethod lambda$Fn160 = new ModuleMethod(this, 137, null, 8194);
        Object s;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 136 ? lambda159() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 137 ? lambda160(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 136) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 137) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda159() {
            try {
                return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mntrim$Mnboth, this.s, srfi13.loc$rest.get());
            } catch (UnboundLocationException e) {
                e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1037, 58);
                throw e;
            }
        }

        public Object lambda160(Object obj, Object obj2) throws Throwable {
            Object obj3 = this.s;
            Location location = srfi13.loc$criterion;
            try {
                Object objStringSkip$V = srfi13.stringSkip$V(obj3, location.get(), new Object[]{obj, obj2});
                if (objStringSkip$V != Boolean.FALSE) {
                    Object obj4 = this.s;
                    try {
                        CharSequence charSequence = (CharSequence) obj4;
                        try {
                            int iIntValue = ((Number) objStringSkip$V).intValue();
                            try {
                                Object objApply2 = AddOp.$Pl.apply2(srfi13.Lit1, srfi13.stringSkipRight$V(this.s, location.get(), new Object[]{objStringSkip$V, obj2}));
                                try {
                                    return srfi13.$PcSubstring$SlShared(charSequence, iIntValue, ((Number) objApply2).intValue());
                                } catch (ClassCastException e) {
                                    throw new WrongType(e, "%substring/shared", 2, objApply2);
                                }
                            } catch (UnboundLocationException e2) {
                                e2.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1040, 58);
                                throw e2;
                            }
                        } catch (ClassCastException e3) {
                            throw new WrongType(e3, "%substring/shared", 1, objStringSkip$V);
                        }
                    } catch (ClassCastException e4) {
                        throw new WrongType(e4, "%substring/shared", 0, obj4);
                    }
                }
                return "";
            } catch (UnboundLocationException e5) {
                e5.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1038, 29);
                throw e5;
            }
        }
    }

    public static Object stringPadRight$V(Object obj, Object obj2, Object[] objArr) {
        frame71 frame71Var = new frame71();
        frame71Var.s = obj;
        frame71Var.n = obj2;
        LList lListMakeList = LList.makeList(objArr, 0);
        ApplyToArgs applyToArgs = Scheme.applyToArgs;
        try {
            Object obj3 = loc$let$Mnoptionals$St.get();
            Invoke invoke = Invoke.make;
            LangPrimType langPrimType = LangPrimType.charType;
            try {
                return applyToArgs.apply4(obj3, lListMakeList, applyToArgs.apply2(invoke.apply3(langPrimType, Lit12, characters.isChar(langPrimType) ? Boolean.TRUE : Boolean.FALSE), loc$rest.get()), call_with_values.callWithValues(frame71Var.lambda$Fn161, frame71Var.lambda$Fn162));
            } catch (UnboundLocationException e) {
                e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1045, 63);
                throw e;
            }
        } catch (UnboundLocationException e2) {
            e2.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1045, 3);
            throw e2;
        }
    }

    public class frame71 extends ModuleBody {
        final ModuleMethod lambda$Fn161 = new ModuleMethod(this, 138, null, 0);
        final ModuleMethod lambda$Fn162 = new ModuleMethod(this, 139, null, 8194);
        Object n;
        Object s;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 138 ? lambda161() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 139 ? lambda162(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 138) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 139) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda161() {
            try {
                return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnpad$Mnright, this.s, srfi13.loc$rest.get());
            } catch (UnboundLocationException e) {
                e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1046, 58);
                throw e;
            }
        }

        public static boolean lambda163(Object obj) {
            boolean zIsInteger = numbers.isInteger(obj);
            return (zIsInteger && (zIsInteger = numbers.isExact(obj))) ? ((Boolean) Scheme.numLEq.apply2(srfi13.Lit0, obj)).booleanValue() : zIsInteger;
        }

        public Object lambda162(Object obj, Object obj2) throws Throwable {
            try {
                Scheme.applyToArgs.apply4(srfi13.loc$check$Mnarg.get(), srfi13.lambda$Fn163, this.n, srfi13.string$Mnpad$Mnright);
                if (Scheme.numLEq.apply2(this.n, AddOp.$Mn.apply2(obj2, obj)) != Boolean.FALSE) {
                    Object obj3 = this.s;
                    try {
                        CharSequence charSequence = (CharSequence) obj3;
                        try {
                            int iIntValue = ((Number) obj).intValue();
                            Object objApply2 = AddOp.$Pl.apply2(obj, this.n);
                            try {
                                return srfi13.$PcSubstring$SlShared(charSequence, iIntValue, ((Number) objApply2).intValue());
                            } catch (ClassCastException e) {
                                throw new WrongType(e, "%substring/shared", 2, objApply2);
                            }
                        } catch (ClassCastException e2) {
                            throw new WrongType(e2, "%substring/shared", 1, obj);
                        }
                    } catch (ClassCastException e3) {
                        throw new WrongType(e3, "%substring/shared", 0, obj3);
                    }
                }
                Object obj4 = this.n;
                try {
                    CharSequence charSequenceMakeString = strings.makeString(((Number) obj4).intValue(), LangPrimType.charType);
                    Object obj5 = this.s;
                    try {
                        try {
                            try {
                                srfi13.$PcStringCopy$Ex(charSequenceMakeString, 0, (CharSequence) obj5, ((Number) obj).intValue(), ((Number) obj2).intValue());
                                return charSequenceMakeString;
                            } catch (ClassCastException e4) {
                                throw new WrongType(e4, "%string-copy!", 4, obj2);
                            }
                        } catch (ClassCastException e5) {
                            throw new WrongType(e5, "%string-copy!", 3, obj);
                        }
                    } catch (ClassCastException e6) {
                        throw new WrongType(e6, "%string-copy!", 2, obj5);
                    }
                } catch (ClassCastException e7) {
                    throw new WrongType(e7, "make-string", 1, obj4);
                }
            } catch (UnboundLocationException e8) {
                e8.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1047, 7);
                throw e8;
            }
        }
    }

    public static Object stringPad$V(Object obj, Object obj2, Object[] objArr) {
        frame72 frame72Var = new frame72();
        frame72Var.s = obj;
        frame72Var.n = obj2;
        LList lListMakeList = LList.makeList(objArr, 0);
        ApplyToArgs applyToArgs = Scheme.applyToArgs;
        try {
            Object obj3 = loc$let$Mnoptionals$St.get();
            Invoke invoke = Invoke.make;
            LangPrimType langPrimType = LangPrimType.charType;
            try {
                return applyToArgs.apply4(obj3, lListMakeList, applyToArgs.apply2(invoke.apply3(langPrimType, Lit12, characters.isChar(langPrimType) ? Boolean.TRUE : Boolean.FALSE), loc$rest.get()), call_with_values.callWithValues(frame72Var.lambda$Fn164, frame72Var.lambda$Fn165));
            } catch (UnboundLocationException e) {
                e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1057, 63);
                throw e;
            }
        } catch (UnboundLocationException e2) {
            e2.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1057, 3);
            throw e2;
        }
    }

    public class frame72 extends ModuleBody {
        final ModuleMethod lambda$Fn164 = new ModuleMethod(this, 140, null, 0);
        final ModuleMethod lambda$Fn165 = new ModuleMethod(this, 141, null, 8194);
        Object n;
        Object s;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 140 ? lambda164() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 141 ? lambda165(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 140) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 141) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda164() {
            try {
                return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnpad, this.s, srfi13.loc$rest.get());
            } catch (UnboundLocationException e) {
                e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1058, 52);
                throw e;
            }
        }

        public static boolean lambda166(Object obj) {
            boolean zIsInteger = numbers.isInteger(obj);
            return (zIsInteger && (zIsInteger = numbers.isExact(obj))) ? ((Boolean) Scheme.numLEq.apply2(srfi13.Lit0, obj)).booleanValue() : zIsInteger;
        }

        public Object lambda165(Object obj, Object obj2) throws Throwable {
            try {
                Scheme.applyToArgs.apply4(srfi13.loc$check$Mnarg.get(), srfi13.lambda$Fn166, this.n, srfi13.string$Mnpad);
                AddOp addOp = AddOp.$Mn;
                Object objApply2 = addOp.apply2(obj2, obj);
                if (Scheme.numLEq.apply2(this.n, objApply2) != Boolean.FALSE) {
                    Object obj3 = this.s;
                    try {
                        CharSequence charSequence = (CharSequence) obj3;
                        Object objApply22 = addOp.apply2(obj2, this.n);
                        try {
                            try {
                                return srfi13.$PcSubstring$SlShared(charSequence, ((Number) objApply22).intValue(), ((Number) obj2).intValue());
                            } catch (ClassCastException e) {
                                throw new WrongType(e, "%substring/shared", 2, obj2);
                            }
                        } catch (ClassCastException e2) {
                            throw new WrongType(e2, "%substring/shared", 1, objApply22);
                        }
                    } catch (ClassCastException e3) {
                        throw new WrongType(e3, "%substring/shared", 0, obj3);
                    }
                }
                Object obj4 = this.n;
                try {
                    CharSequence charSequenceMakeString = strings.makeString(((Number) obj4).intValue(), LangPrimType.charType);
                    Object objApply23 = addOp.apply2(this.n, objApply2);
                    try {
                        int iIntValue = ((Number) objApply23).intValue();
                        Object obj5 = this.s;
                        try {
                            try {
                                try {
                                    srfi13.$PcStringCopy$Ex(charSequenceMakeString, iIntValue, (CharSequence) obj5, ((Number) obj).intValue(), ((Number) obj2).intValue());
                                    return charSequenceMakeString;
                                } catch (ClassCastException e4) {
                                    throw new WrongType(e4, "%string-copy!", 4, obj2);
                                }
                            } catch (ClassCastException e5) {
                                throw new WrongType(e5, "%string-copy!", 3, obj);
                            }
                        } catch (ClassCastException e6) {
                            throw new WrongType(e6, "%string-copy!", 2, obj5);
                        }
                    } catch (ClassCastException e7) {
                        throw new WrongType(e7, "%string-copy!", 1, objApply23);
                    }
                } catch (ClassCastException e8) {
                    throw new WrongType(e8, "make-string", 1, obj4);
                }
            } catch (UnboundLocationException e9) {
                e9.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1059, 7);
                throw e9;
            }
        }
    }

    public class frame73 extends ModuleBody {
        Object criterion;
        final ModuleMethod lambda$Fn167 = new ModuleMethod(this, 145, null, 0);
        final ModuleMethod lambda$Fn168 = new ModuleMethod(this, 146, null, 8194);
        LList maybe$Mnstart$Plend;
        Object s;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 145 ? lambda167() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 146 ? lambda168(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 145) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 146) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda167() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mndelete, this.s, this.maybe$Mnstart$Plend);
        }

        public CharSequence lambda168(Object obj, Object obj2) throws Throwable {
            Object objError$V;
            frame74 frame74Var = new frame74();
            frame74Var.staticLink = this;
            if (misc.isProcedure(this.criterion)) {
                Object objApply2 = AddOp.$Mn.apply2(obj2, obj);
                try {
                    frame74Var.temp = strings.makeString(((Number) objApply2).intValue());
                    Object objStringFold$V = srfi13.stringFold$V(frame74Var.lambda$Fn169, srfi13.Lit0, this.s, new Object[]{obj, obj2});
                    if (Scheme.numEqu.apply2(objStringFold$V, objApply2) != Boolean.FALSE) {
                        return frame74Var.temp;
                    }
                    try {
                        return strings.substring(frame74Var.temp, 0, ((Number) objStringFold$V).intValue());
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "substring", 3, objStringFold$V);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "make-string", 1, objApply2);
                }
            }
            ApplyToArgs applyToArgs = Scheme.applyToArgs;
            try {
                if (applyToArgs.apply2(srfi13.loc$char$Mnset$Qu.get(), this.criterion) != Boolean.FALSE) {
                    objError$V = this.criterion;
                } else if (characters.isChar(this.criterion)) {
                    try {
                        objError$V = applyToArgs.apply2(srfi13.loc$char$Mnset.get(), this.criterion);
                    } catch (UnboundLocationException e3) {
                        e3.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1097, 26);
                        throw e3;
                    }
                } else {
                    objError$V = misc.error$V("string-delete criterion not predicate, char or char-set", new Object[]{this.criterion});
                }
                frame74Var.cset = objError$V;
                ModuleMethod moduleMethod = frame74Var.lambda$Fn170;
                IntNum intNum = srfi13.Lit0;
                Object objStringFold$V2 = srfi13.stringFold$V(moduleMethod, intNum, this.s, new Object[]{obj, obj2});
                try {
                    frame74Var.ans = strings.makeString(((Number) objStringFold$V2).intValue());
                    srfi13.stringFold$V(frame74Var.lambda$Fn171, intNum, this.s, new Object[]{obj, obj2});
                    return frame74Var.ans;
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "make-string", 1, objStringFold$V2);
                }
            } catch (UnboundLocationException e5) {
                e5.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1096, 22);
                throw e5;
            }
        }
    }

    public static Object stringDelete$V(Object obj, Object obj2, Object[] objArr) {
        frame73 frame73Var = new frame73();
        frame73Var.criterion = obj;
        frame73Var.s = obj2;
        frame73Var.maybe$Mnstart$Plend = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame73Var.lambda$Fn167, frame73Var.lambda$Fn168);
    }

    public class frame74 extends ModuleBody {
        CharSequence ans;
        Object cset;
        final ModuleMethod lambda$Fn169;
        final ModuleMethod lambda$Fn170;
        final ModuleMethod lambda$Fn171;
        frame73 staticLink;
        CharSequence temp;

        public frame74() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 142, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:1089");
            this.lambda$Fn169 = moduleMethod;
            ModuleMethod moduleMethod2 = new ModuleMethod(this, 143, null, 8194);
            moduleMethod2.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:1099");
            this.lambda$Fn170 = moduleMethod2;
            ModuleMethod moduleMethod3 = new ModuleMethod(this, 144, null, 8194);
            moduleMethod3.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:1104");
            this.lambda$Fn171 = moduleMethod3;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            switch (moduleMethod.selector) {
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
                case 144:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                default:
                    return super.match2(moduleMethod, obj, obj2, callContext);
            }
        }

        public Object lambda169(Object obj, Object obj2) {
            if (Scheme.applyToArgs.apply2(this.staticLink.criterion, obj) != Boolean.FALSE) {
                return obj2;
            }
            CharSequence charSequence = this.temp;
            try {
                try {
                    try {
                        ((CharSeq) charSequence).setCharAt(((Number) obj2).intValue(), ((Char) obj).charValue());
                        return AddOp.$Pl.apply2(obj2, srfi13.Lit1);
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "string-set!", 3, obj);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "string-set!", 2, obj2);
                }
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "string-set!", 1, charSequence);
            }
        }

        public Object lambda170(Object obj, Object obj2) {
            try {
                return Scheme.applyToArgs.apply3(srfi13.loc$char$Mnset$Mncontains$Qu.get(), this.cset, obj) != Boolean.FALSE ? obj2 : AddOp.$Pl.apply2(obj2, srfi13.Lit1);
            } catch (UnboundLocationException e) {
                e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1099, 45);
                throw e;
            }
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            switch (moduleMethod.selector) {
                case 142:
                    return lambda169(obj, obj2);
                case 143:
                    return lambda170(obj, obj2);
                case 144:
                    return lambda171(obj, obj2);
                default:
                    return super.apply2(moduleMethod, obj, obj2);
            }
        }

        public Object lambda171(Object obj, Object obj2) {
            try {
                if (Scheme.applyToArgs.apply3(srfi13.loc$char$Mnset$Mncontains$Qu.get(), this.cset, obj) != Boolean.FALSE) {
                    return obj2;
                }
                CharSequence charSequence = this.ans;
                try {
                    try {
                        try {
                            ((CharSeq) charSequence).setCharAt(((Number) obj2).intValue(), ((Char) obj).charValue());
                            return AddOp.$Pl.apply2(obj2, srfi13.Lit1);
                        } catch (ClassCastException e) {
                            throw new WrongType(e, "string-set!", 3, obj);
                        }
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "string-set!", 2, obj2);
                    }
                } catch (ClassCastException e3) {
                    throw new WrongType(e3, "string-set!", 1, charSequence);
                }
            } catch (UnboundLocationException e4) {
                e4.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1104, 35);
                throw e4;
            }
        }
    }

    public class frame75 extends ModuleBody {
        Object criterion;
        final ModuleMethod lambda$Fn172 = new ModuleMethod(this, 150, null, 0);
        final ModuleMethod lambda$Fn173 = new ModuleMethod(this, 151, null, 8194);
        LList maybe$Mnstart$Plend;
        Object s;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 150 ? lambda172() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 151 ? lambda173(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 150) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 151) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda172() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnfilter, this.s, this.maybe$Mnstart$Plend);
        }

        public CharSequence lambda173(Object obj, Object obj2) throws Throwable {
            Object objError$V;
            frame76 frame76Var = new frame76();
            frame76Var.staticLink = this;
            if (misc.isProcedure(this.criterion)) {
                Object objApply2 = AddOp.$Mn.apply2(obj2, obj);
                try {
                    frame76Var.temp = strings.makeString(((Number) objApply2).intValue());
                    Object objStringFold$V = srfi13.stringFold$V(frame76Var.lambda$Fn174, srfi13.Lit0, this.s, new Object[]{obj, obj2});
                    if (Scheme.numEqu.apply2(objStringFold$V, objApply2) != Boolean.FALSE) {
                        return frame76Var.temp;
                    }
                    try {
                        return strings.substring(frame76Var.temp, 0, ((Number) objStringFold$V).intValue());
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "substring", 3, objStringFold$V);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "make-string", 1, objApply2);
                }
            }
            ApplyToArgs applyToArgs = Scheme.applyToArgs;
            try {
                if (applyToArgs.apply2(srfi13.loc$char$Mnset$Qu.get(), this.criterion) != Boolean.FALSE) {
                    objError$V = this.criterion;
                } else if (characters.isChar(this.criterion)) {
                    try {
                        objError$V = applyToArgs.apply2(srfi13.loc$char$Mnset.get(), this.criterion);
                    } catch (UnboundLocationException e3) {
                        e3.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1125, 26);
                        throw e3;
                    }
                } else {
                    objError$V = misc.error$V("string-delete criterion not predicate, char or char-set", new Object[]{this.criterion});
                }
                frame76Var.cset = objError$V;
                ModuleMethod moduleMethod = frame76Var.lambda$Fn175;
                IntNum intNum = srfi13.Lit0;
                Object objStringFold$V2 = srfi13.stringFold$V(moduleMethod, intNum, this.s, new Object[]{obj, obj2});
                try {
                    frame76Var.ans = strings.makeString(((Number) objStringFold$V2).intValue());
                    srfi13.stringFold$V(frame76Var.lambda$Fn176, intNum, this.s, new Object[]{obj, obj2});
                    return frame76Var.ans;
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "make-string", 1, objStringFold$V2);
                }
            } catch (UnboundLocationException e5) {
                e5.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1124, 22);
                throw e5;
            }
        }
    }

    public static Object stringFilter$V(Object obj, Object obj2, Object[] objArr) {
        frame75 frame75Var = new frame75();
        frame75Var.criterion = obj;
        frame75Var.s = obj2;
        frame75Var.maybe$Mnstart$Plend = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame75Var.lambda$Fn172, frame75Var.lambda$Fn173);
    }

    public class frame76 extends ModuleBody {
        CharSequence ans;
        Object cset;
        final ModuleMethod lambda$Fn174;
        final ModuleMethod lambda$Fn175;
        final ModuleMethod lambda$Fn176;
        frame75 staticLink;
        CharSequence temp;

        public frame76() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 147, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:1116");
            this.lambda$Fn174 = moduleMethod;
            ModuleMethod moduleMethod2 = new ModuleMethod(this, 148, null, 8194);
            moduleMethod2.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:1128");
            this.lambda$Fn175 = moduleMethod2;
            ModuleMethod moduleMethod3 = new ModuleMethod(this, 149, null, 8194);
            moduleMethod3.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:1133");
            this.lambda$Fn176 = moduleMethod3;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            switch (moduleMethod.selector) {
                case 147:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 148:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 149:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                default:
                    return super.match2(moduleMethod, obj, obj2, callContext);
            }
        }

        public Object lambda174(Object obj, Object obj2) {
            if (Scheme.applyToArgs.apply2(this.staticLink.criterion, obj) == Boolean.FALSE) {
                return obj2;
            }
            CharSequence charSequence = this.temp;
            try {
                try {
                    try {
                        ((CharSeq) charSequence).setCharAt(((Number) obj2).intValue(), ((Char) obj).charValue());
                        return AddOp.$Pl.apply2(obj2, srfi13.Lit1);
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "string-set!", 3, obj);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "string-set!", 2, obj2);
                }
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "string-set!", 1, charSequence);
            }
        }

        public Object lambda175(Object obj, Object obj2) {
            try {
                return Scheme.applyToArgs.apply3(srfi13.loc$char$Mnset$Mncontains$Qu.get(), this.cset, obj) != Boolean.FALSE ? AddOp.$Pl.apply2(obj2, srfi13.Lit1) : obj2;
            } catch (UnboundLocationException e) {
                e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1128, 45);
                throw e;
            }
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            switch (moduleMethod.selector) {
                case 147:
                    return lambda174(obj, obj2);
                case 148:
                    return lambda175(obj, obj2);
                case 149:
                    return lambda176(obj, obj2);
                default:
                    return super.apply2(moduleMethod, obj, obj2);
            }
        }

        public Object lambda176(Object obj, Object obj2) {
            try {
                if (Scheme.applyToArgs.apply3(srfi13.loc$char$Mnset$Mncontains$Qu.get(), this.cset, obj) == Boolean.FALSE) {
                    return obj2;
                }
                CharSequence charSequence = this.ans;
                try {
                    try {
                        try {
                            ((CharSeq) charSequence).setCharAt(((Number) obj2).intValue(), ((Char) obj).charValue());
                            return AddOp.$Pl.apply2(obj2, srfi13.Lit1);
                        } catch (ClassCastException e) {
                            throw new WrongType(e, "string-set!", 3, obj);
                        }
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "string-set!", 2, obj2);
                    }
                } catch (ClassCastException e3) {
                    throw new WrongType(e3, "string-set!", 1, charSequence);
                }
            } catch (UnboundLocationException e4) {
                e4.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1133, 35);
                throw e4;
            }
        }
    }

    public class frame77 extends ModuleBody {
        Object criterion;
        final ModuleMethod lambda$Fn177 = new ModuleMethod(this, 152, null, 0);
        final ModuleMethod lambda$Fn178 = new ModuleMethod(this, 153, null, 8194);
        LList maybe$Mnstart$Plend;
        Object str;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 152 ? lambda177() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 153 ? lambda178(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 152) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 153) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda177() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnindex, this.str, this.maybe$Mnstart$Plend);
        }

        public Object lambda178(Object obj, Object obj2) throws Throwable {
            if (characters.isChar(this.criterion)) {
                while (true) {
                    Object objApply2 = Scheme.numLss.apply2(obj, obj2);
                    try {
                        boolean zBooleanValue = ((Boolean) objApply2).booleanValue();
                        if (!zBooleanValue) {
                            return zBooleanValue ? Boolean.TRUE : Boolean.FALSE;
                        }
                        Object obj3 = this.criterion;
                        try {
                            Char r0 = (Char) obj3;
                            Object obj4 = this.str;
                            try {
                                try {
                                    if (a.l((CharSequence) obj4, ((Number) obj).intValue(), r0)) {
                                        return obj;
                                    }
                                    obj = AddOp.$Pl.apply2(obj, srfi13.Lit1);
                                } catch (ClassCastException e) {
                                    throw new WrongType(e, "string-ref", 2, obj);
                                }
                            } catch (ClassCastException e2) {
                                throw new WrongType(e2, "string-ref", 1, obj4);
                            }
                        } catch (ClassCastException e3) {
                            throw new WrongType(e3, "char=?", 1, obj3);
                        }
                    } catch (ClassCastException e4) {
                        throw new WrongType(e4, "x", -2, objApply2);
                    }
                }
            } else {
                try {
                    if (Scheme.applyToArgs.apply2(srfi13.loc$char$Mnset$Qu.get(), this.criterion) != Boolean.FALSE) {
                        while (true) {
                            Object objApply22 = Scheme.numLss.apply2(obj, obj2);
                            try {
                                boolean zBooleanValue2 = ((Boolean) objApply22).booleanValue();
                                if (!zBooleanValue2) {
                                    return zBooleanValue2 ? Boolean.TRUE : Boolean.FALSE;
                                }
                                ApplyToArgs applyToArgs = Scheme.applyToArgs;
                                try {
                                    Object obj5 = srfi13.loc$char$Mnset$Mncontains$Qu.get();
                                    Object obj6 = this.criterion;
                                    Object obj7 = this.str;
                                    try {
                                        try {
                                            if (applyToArgs.apply3(obj5, obj6, Char.make(strings.stringRef((CharSequence) obj7, ((Number) obj).intValue()))) != Boolean.FALSE) {
                                                return obj;
                                            }
                                            obj = AddOp.$Pl.apply2(obj, srfi13.Lit1);
                                        } catch (ClassCastException e5) {
                                            throw new WrongType(e5, "string-ref", 2, obj);
                                        }
                                    } catch (ClassCastException e6) {
                                        throw new WrongType(e6, "string-ref", 1, obj7);
                                    }
                                } catch (UnboundLocationException e7) {
                                    e7.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1162, 9);
                                    throw e7;
                                }
                            } catch (ClassCastException e8) {
                                throw new WrongType(e8, "x", -2, objApply22);
                            }
                        }
                    } else {
                        if (!misc.isProcedure(this.criterion)) {
                            return misc.error$V("Second param is neither char-set, char, or predicate procedure.", new Object[]{srfi13.string$Mnindex, this.criterion});
                        }
                        while (true) {
                            Object objApply23 = Scheme.numLss.apply2(obj, obj2);
                            try {
                                boolean zBooleanValue3 = ((Boolean) objApply23).booleanValue();
                                if (!zBooleanValue3) {
                                    return zBooleanValue3 ? Boolean.TRUE : Boolean.FALSE;
                                }
                                ApplyToArgs applyToArgs2 = Scheme.applyToArgs;
                                Object obj8 = this.criterion;
                                Object obj9 = this.str;
                                try {
                                    try {
                                        if (applyToArgs2.apply2(obj8, Char.make(strings.stringRef((CharSequence) obj9, ((Number) obj).intValue()))) != Boolean.FALSE) {
                                            return obj;
                                        }
                                        obj = AddOp.$Pl.apply2(obj, srfi13.Lit1);
                                    } catch (ClassCastException e9) {
                                        throw new WrongType(e9, "string-ref", 2, obj);
                                    }
                                } catch (ClassCastException e10) {
                                    throw new WrongType(e10, "string-ref", 1, obj9);
                                }
                            } catch (ClassCastException e11) {
                                throw new WrongType(e11, "x", -2, objApply23);
                            }
                        }
                    }
                } catch (UnboundLocationException e12) {
                    e12.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1159, 5);
                    throw e12;
                }
            }
        }
    }

    public static Object stringIndex$V(Object obj, Object obj2, Object[] objArr) {
        frame77 frame77Var = new frame77();
        frame77Var.str = obj;
        frame77Var.criterion = obj2;
        frame77Var.maybe$Mnstart$Plend = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame77Var.lambda$Fn177, frame77Var.lambda$Fn178);
    }

    public class frame78 extends ModuleBody {
        Object criterion;
        final ModuleMethod lambda$Fn179 = new ModuleMethod(this, 154, null, 0);
        final ModuleMethod lambda$Fn180 = new ModuleMethod(this, 155, null, 8194);
        LList maybe$Mnstart$Plend;
        Object str;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 154 ? lambda179() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 155 ? lambda180(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 154) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 155) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda179() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnindex$Mnright, this.str, this.maybe$Mnstart$Plend);
        }

        public Object lambda180(Object obj, Object obj2) throws Throwable {
            if (characters.isChar(this.criterion)) {
                Object objApply2 = AddOp.$Mn.apply2(obj2, srfi13.Lit1);
                while (true) {
                    Object objApply22 = Scheme.numGEq.apply2(objApply2, obj);
                    try {
                        boolean zBooleanValue = ((Boolean) objApply22).booleanValue();
                        if (!zBooleanValue) {
                            return zBooleanValue ? Boolean.TRUE : Boolean.FALSE;
                        }
                        Object obj3 = this.criterion;
                        try {
                            Char r0 = (Char) obj3;
                            Object obj4 = this.str;
                            try {
                                try {
                                    if (a.l((CharSequence) obj4, ((Number) objApply2).intValue(), r0)) {
                                        return objApply2;
                                    }
                                    objApply2 = AddOp.$Mn.apply2(objApply2, srfi13.Lit1);
                                } catch (ClassCastException e) {
                                    throw new WrongType(e, "string-ref", 2, objApply2);
                                }
                            } catch (ClassCastException e2) {
                                throw new WrongType(e2, "string-ref", 1, obj4);
                            }
                        } catch (ClassCastException e3) {
                            throw new WrongType(e3, "char=?", 1, obj3);
                        }
                    } catch (ClassCastException e4) {
                        throw new WrongType(e4, "x", -2, objApply22);
                    }
                }
            } else {
                try {
                    if (Scheme.applyToArgs.apply2(srfi13.loc$char$Mnset$Qu.get(), this.criterion) != Boolean.FALSE) {
                        Object objApply23 = AddOp.$Mn.apply2(obj2, srfi13.Lit1);
                        while (true) {
                            Object objApply24 = Scheme.numGEq.apply2(objApply23, obj);
                            try {
                                boolean zBooleanValue2 = ((Boolean) objApply24).booleanValue();
                                if (!zBooleanValue2) {
                                    return zBooleanValue2 ? Boolean.TRUE : Boolean.FALSE;
                                }
                                ApplyToArgs applyToArgs = Scheme.applyToArgs;
                                try {
                                    Object obj5 = srfi13.loc$char$Mnset$Mncontains$Qu.get();
                                    Object obj6 = this.criterion;
                                    Object obj7 = this.str;
                                    try {
                                        try {
                                            if (applyToArgs.apply3(obj5, obj6, Char.make(strings.stringRef((CharSequence) obj7, ((Number) objApply23).intValue()))) != Boolean.FALSE) {
                                                return objApply23;
                                            }
                                            objApply23 = AddOp.$Mn.apply2(objApply23, srfi13.Lit1);
                                        } catch (ClassCastException e5) {
                                            throw new WrongType(e5, "string-ref", 2, objApply23);
                                        }
                                    } catch (ClassCastException e6) {
                                        throw new WrongType(e6, "string-ref", 1, obj7);
                                    }
                                } catch (UnboundLocationException e7) {
                                    e7.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1182, 9);
                                    throw e7;
                                }
                            } catch (ClassCastException e8) {
                                throw new WrongType(e8, "x", -2, objApply24);
                            }
                        }
                    } else {
                        if (!misc.isProcedure(this.criterion)) {
                            return misc.error$V("Second param is neither char-set, char, or predicate procedure.", new Object[]{srfi13.string$Mnindex$Mnright, this.criterion});
                        }
                        Object objApply25 = AddOp.$Mn.apply2(obj2, srfi13.Lit1);
                        while (true) {
                            Object objApply26 = Scheme.numGEq.apply2(objApply25, obj);
                            try {
                                boolean zBooleanValue3 = ((Boolean) objApply26).booleanValue();
                                if (!zBooleanValue3) {
                                    return zBooleanValue3 ? Boolean.TRUE : Boolean.FALSE;
                                }
                                ApplyToArgs applyToArgs2 = Scheme.applyToArgs;
                                Object obj8 = this.criterion;
                                Object obj9 = this.str;
                                try {
                                    try {
                                        if (applyToArgs2.apply2(obj8, Char.make(strings.stringRef((CharSequence) obj9, ((Number) objApply25).intValue()))) != Boolean.FALSE) {
                                            return objApply25;
                                        }
                                        objApply25 = AddOp.$Mn.apply2(objApply25, srfi13.Lit1);
                                    } catch (ClassCastException e9) {
                                        throw new WrongType(e9, "string-ref", 2, objApply25);
                                    }
                                } catch (ClassCastException e10) {
                                    throw new WrongType(e10, "string-ref", 1, obj9);
                                }
                            } catch (ClassCastException e11) {
                                throw new WrongType(e11, "x", -2, objApply26);
                            }
                        }
                    }
                } catch (UnboundLocationException e12) {
                    e12.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1179, 5);
                    throw e12;
                }
            }
        }
    }

    public static Object stringIndexRight$V(Object obj, Object obj2, Object[] objArr) {
        frame78 frame78Var = new frame78();
        frame78Var.str = obj;
        frame78Var.criterion = obj2;
        frame78Var.maybe$Mnstart$Plend = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame78Var.lambda$Fn179, frame78Var.lambda$Fn180);
    }

    public class frame79 extends ModuleBody {
        Object criterion;
        final ModuleMethod lambda$Fn181 = new ModuleMethod(this, 156, null, 0);
        final ModuleMethod lambda$Fn182 = new ModuleMethod(this, 157, null, 8194);
        LList maybe$Mnstart$Plend;
        Object str;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 156 ? lambda181() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 157 ? lambda182(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 156) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 157) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda181() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnskip, this.str, this.maybe$Mnstart$Plend);
        }

        public Object lambda182(Object obj, Object obj2) throws Throwable {
            if (characters.isChar(this.criterion)) {
                while (true) {
                    Object objApply2 = Scheme.numLss.apply2(obj, obj2);
                    try {
                        boolean zBooleanValue = ((Boolean) objApply2).booleanValue();
                        if (!zBooleanValue) {
                            return zBooleanValue ? Boolean.TRUE : Boolean.FALSE;
                        }
                        Object obj3 = this.criterion;
                        try {
                            Char r0 = (Char) obj3;
                            Object obj4 = this.str;
                            try {
                                try {
                                    if (!a.l((CharSequence) obj4, ((Number) obj).intValue(), r0)) {
                                        return obj;
                                    }
                                    obj = AddOp.$Pl.apply2(obj, srfi13.Lit1);
                                } catch (ClassCastException e) {
                                    throw new WrongType(e, "string-ref", 2, obj);
                                }
                            } catch (ClassCastException e2) {
                                throw new WrongType(e2, "string-ref", 1, obj4);
                            }
                        } catch (ClassCastException e3) {
                            throw new WrongType(e3, "char=?", 1, obj3);
                        }
                    } catch (ClassCastException e4) {
                        throw new WrongType(e4, "x", -2, objApply2);
                    }
                }
            } else {
                try {
                    if (Scheme.applyToArgs.apply2(srfi13.loc$char$Mnset$Qu.get(), this.criterion) != Boolean.FALSE) {
                        while (true) {
                            Object objApply22 = Scheme.numLss.apply2(obj, obj2);
                            try {
                                boolean zBooleanValue2 = ((Boolean) objApply22).booleanValue();
                                if (!zBooleanValue2) {
                                    return zBooleanValue2 ? Boolean.TRUE : Boolean.FALSE;
                                }
                                ApplyToArgs applyToArgs = Scheme.applyToArgs;
                                try {
                                    Object obj5 = srfi13.loc$char$Mnset$Mncontains$Qu.get();
                                    Object obj6 = this.criterion;
                                    Object obj7 = this.str;
                                    try {
                                        try {
                                            if (applyToArgs.apply3(obj5, obj6, Char.make(strings.stringRef((CharSequence) obj7, ((Number) obj).intValue()))) == Boolean.FALSE) {
                                                return obj;
                                            }
                                            obj = AddOp.$Pl.apply2(obj, srfi13.Lit1);
                                        } catch (ClassCastException e5) {
                                            throw new WrongType(e5, "string-ref", 2, obj);
                                        }
                                    } catch (ClassCastException e6) {
                                        throw new WrongType(e6, "string-ref", 1, obj7);
                                    }
                                } catch (UnboundLocationException e7) {
                                    e7.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1203, 9);
                                    throw e7;
                                }
                            } catch (ClassCastException e8) {
                                throw new WrongType(e8, "x", -2, objApply22);
                            }
                        }
                    } else {
                        if (!misc.isProcedure(this.criterion)) {
                            return misc.error$V("Second param is neither char-set, char, or predicate procedure.", new Object[]{srfi13.string$Mnskip, this.criterion});
                        }
                        while (true) {
                            Object objApply23 = Scheme.numLss.apply2(obj, obj2);
                            try {
                                boolean zBooleanValue3 = ((Boolean) objApply23).booleanValue();
                                if (!zBooleanValue3) {
                                    return zBooleanValue3 ? Boolean.TRUE : Boolean.FALSE;
                                }
                                ApplyToArgs applyToArgs2 = Scheme.applyToArgs;
                                Object obj8 = this.criterion;
                                Object obj9 = this.str;
                                try {
                                    try {
                                        if (applyToArgs2.apply2(obj8, Char.make(strings.stringRef((CharSequence) obj9, ((Number) obj).intValue()))) == Boolean.FALSE) {
                                            return obj;
                                        }
                                        obj = AddOp.$Pl.apply2(obj, srfi13.Lit1);
                                    } catch (ClassCastException e9) {
                                        throw new WrongType(e9, "string-ref", 2, obj);
                                    }
                                } catch (ClassCastException e10) {
                                    throw new WrongType(e10, "string-ref", 1, obj9);
                                }
                            } catch (ClassCastException e11) {
                                throw new WrongType(e11, "x", -2, objApply23);
                            }
                        }
                    }
                } catch (UnboundLocationException e12) {
                    e12.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1200, 5);
                    throw e12;
                }
            }
        }
    }

    public static Object stringSkip$V(Object obj, Object obj2, Object[] objArr) {
        frame79 frame79Var = new frame79();
        frame79Var.str = obj;
        frame79Var.criterion = obj2;
        frame79Var.maybe$Mnstart$Plend = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame79Var.lambda$Fn181, frame79Var.lambda$Fn182);
    }

    public class frame80 extends ModuleBody {
        Object criterion;
        final ModuleMethod lambda$Fn183 = new ModuleMethod(this, 158, null, 0);
        final ModuleMethod lambda$Fn184 = new ModuleMethod(this, 159, null, 8194);
        LList maybe$Mnstart$Plend;
        Object str;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 158 ? lambda183() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 159 ? lambda184(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 158) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 159) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda183() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnskip$Mnright, this.str, this.maybe$Mnstart$Plend);
        }

        public Object lambda184(Object obj, Object obj2) throws Throwable {
            if (characters.isChar(this.criterion)) {
                Object objApply2 = AddOp.$Mn.apply2(obj2, srfi13.Lit1);
                while (true) {
                    Object objApply22 = Scheme.numGEq.apply2(objApply2, obj);
                    try {
                        boolean zBooleanValue = ((Boolean) objApply22).booleanValue();
                        if (!zBooleanValue) {
                            return zBooleanValue ? Boolean.TRUE : Boolean.FALSE;
                        }
                        Object obj3 = this.criterion;
                        try {
                            Char r0 = (Char) obj3;
                            Object obj4 = this.str;
                            try {
                                try {
                                    if (!a.l((CharSequence) obj4, ((Number) objApply2).intValue(), r0)) {
                                        return objApply2;
                                    }
                                    objApply2 = AddOp.$Mn.apply2(objApply2, srfi13.Lit1);
                                } catch (ClassCastException e) {
                                    throw new WrongType(e, "string-ref", 2, objApply2);
                                }
                            } catch (ClassCastException e2) {
                                throw new WrongType(e2, "string-ref", 1, obj4);
                            }
                        } catch (ClassCastException e3) {
                            throw new WrongType(e3, "char=?", 1, obj3);
                        }
                    } catch (ClassCastException e4) {
                        throw new WrongType(e4, "x", -2, objApply22);
                    }
                }
            } else {
                try {
                    if (Scheme.applyToArgs.apply2(srfi13.loc$char$Mnset$Qu.get(), this.criterion) != Boolean.FALSE) {
                        Object objApply23 = AddOp.$Mn.apply2(obj2, srfi13.Lit1);
                        while (true) {
                            Object objApply24 = Scheme.numGEq.apply2(objApply23, obj);
                            try {
                                boolean zBooleanValue2 = ((Boolean) objApply24).booleanValue();
                                if (!zBooleanValue2) {
                                    return zBooleanValue2 ? Boolean.TRUE : Boolean.FALSE;
                                }
                                ApplyToArgs applyToArgs = Scheme.applyToArgs;
                                try {
                                    Object obj5 = srfi13.loc$char$Mnset$Mncontains$Qu.get();
                                    Object obj6 = this.criterion;
                                    Object obj7 = this.str;
                                    try {
                                        try {
                                            if (applyToArgs.apply3(obj5, obj6, Char.make(strings.stringRef((CharSequence) obj7, ((Number) objApply23).intValue()))) == Boolean.FALSE) {
                                                return objApply23;
                                            }
                                            objApply23 = AddOp.$Mn.apply2(objApply23, srfi13.Lit1);
                                        } catch (ClassCastException e5) {
                                            throw new WrongType(e5, "string-ref", 2, objApply23);
                                        }
                                    } catch (ClassCastException e6) {
                                        throw new WrongType(e6, "string-ref", 1, obj7);
                                    }
                                } catch (UnboundLocationException e7) {
                                    e7.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1225, 9);
                                    throw e7;
                                }
                            } catch (ClassCastException e8) {
                                throw new WrongType(e8, "x", -2, objApply24);
                            }
                        }
                    } else {
                        if (!misc.isProcedure(this.criterion)) {
                            return misc.error$V("CRITERION param is neither char-set or char.", new Object[]{srfi13.string$Mnskip$Mnright, this.criterion});
                        }
                        Object objApply25 = AddOp.$Mn.apply2(obj2, srfi13.Lit1);
                        while (true) {
                            Object objApply26 = Scheme.numGEq.apply2(objApply25, obj);
                            try {
                                boolean zBooleanValue3 = ((Boolean) objApply26).booleanValue();
                                if (!zBooleanValue3) {
                                    return zBooleanValue3 ? Boolean.TRUE : Boolean.FALSE;
                                }
                                ApplyToArgs applyToArgs2 = Scheme.applyToArgs;
                                Object obj8 = this.criterion;
                                Object obj9 = this.str;
                                try {
                                    try {
                                        if (applyToArgs2.apply2(obj8, Char.make(strings.stringRef((CharSequence) obj9, ((Number) objApply25).intValue()))) == Boolean.FALSE) {
                                            return objApply25;
                                        }
                                        objApply25 = AddOp.$Mn.apply2(objApply25, srfi13.Lit1);
                                    } catch (ClassCastException e9) {
                                        throw new WrongType(e9, "string-ref", 2, objApply25);
                                    }
                                } catch (ClassCastException e10) {
                                    throw new WrongType(e10, "string-ref", 1, obj9);
                                }
                            } catch (ClassCastException e11) {
                                throw new WrongType(e11, "x", -2, objApply26);
                            }
                        }
                    }
                } catch (UnboundLocationException e12) {
                    e12.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1222, 5);
                    throw e12;
                }
            }
        }
    }

    public static Object stringSkipRight$V(Object obj, Object obj2, Object[] objArr) {
        frame80 frame80Var = new frame80();
        frame80Var.str = obj;
        frame80Var.criterion = obj2;
        frame80Var.maybe$Mnstart$Plend = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame80Var.lambda$Fn183, frame80Var.lambda$Fn184);
    }

    public class frame81 extends ModuleBody {
        Object criterion;
        final ModuleMethod lambda$Fn185 = new ModuleMethod(this, ComponentConstants.TEXTBOX_PREFERRED_WIDTH, null, 0);
        final ModuleMethod lambda$Fn186 = new ModuleMethod(this, 161, null, 8194);
        LList maybe$Mnstart$Plend;
        Object s;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 160 ? lambda185() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 161 ? lambda186(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 160) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 161) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda185() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mncount, this.s, this.maybe$Mnstart$Plend);
        }

        public Object lambda186(Object obj, Object obj2) throws Throwable {
            if (characters.isChar(this.criterion)) {
                Object objApply2 = srfi13.Lit0;
                Object obj3 = obj;
                while (Scheme.numGEq.apply2(obj3, obj2) == Boolean.FALSE) {
                    AddOp addOp = AddOp.$Pl;
                    IntNum intNum = srfi13.Lit1;
                    Object objApply22 = addOp.apply2(obj3, intNum);
                    Object obj4 = this.criterion;
                    try {
                        Char r10 = (Char) obj4;
                        Object obj5 = this.s;
                        try {
                            try {
                                if (a.l((CharSequence) obj5, ((Number) obj3).intValue(), r10)) {
                                    objApply2 = addOp.apply2(objApply2, intNum);
                                }
                                obj3 = objApply22;
                            } catch (ClassCastException e) {
                                throw new WrongType(e, "string-ref", 2, obj3);
                            }
                        } catch (ClassCastException e2) {
                            throw new WrongType(e2, "string-ref", 1, obj5);
                        }
                    } catch (ClassCastException e3) {
                        throw new WrongType(e3, "char=?", 1, obj4);
                    }
                }
                return objApply2;
            }
            try {
                if (Scheme.applyToArgs.apply2(srfi13.loc$char$Mnset$Qu.get(), this.criterion) != Boolean.FALSE) {
                    Object objApply23 = srfi13.Lit0;
                    Object obj6 = obj;
                    while (true) {
                        Object objApply24 = Scheme.numGEq.apply2(obj6, obj2);
                        Boolean bool = Boolean.FALSE;
                        if (objApply24 != bool) {
                            return objApply23;
                        }
                        AddOp addOp2 = AddOp.$Pl;
                        IntNum intNum2 = srfi13.Lit1;
                        Object objApply25 = addOp2.apply2(obj6, intNum2);
                        ApplyToArgs applyToArgs = Scheme.applyToArgs;
                        try {
                            Object obj7 = srfi13.loc$char$Mnset$Mncontains$Qu.get();
                            Object obj8 = this.criterion;
                            Object obj9 = this.s;
                            try {
                                try {
                                    if (applyToArgs.apply3(obj7, obj8, Char.make(strings.stringRef((CharSequence) obj9, ((Number) obj6).intValue()))) != bool) {
                                        objApply23 = addOp2.apply2(objApply23, intNum2);
                                    }
                                    obj6 = objApply25;
                                } catch (ClassCastException e4) {
                                    throw new WrongType(e4, "string-ref", 2, obj6);
                                }
                            } catch (ClassCastException e5) {
                                throw new WrongType(e5, "string-ref", 1, obj9);
                            }
                        } catch (UnboundLocationException e6) {
                            e6.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1248, 16);
                            throw e6;
                        }
                    }
                } else {
                    if (!misc.isProcedure(this.criterion)) {
                        return misc.error$V("CRITERION param is neither char-set or char.", new Object[]{srfi13.string$Mncount, this.criterion});
                    }
                    Object objApply26 = srfi13.Lit0;
                    Object obj10 = obj;
                    while (true) {
                        Object objApply27 = Scheme.numGEq.apply2(obj10, obj2);
                        Boolean bool2 = Boolean.FALSE;
                        if (objApply27 != bool2) {
                            return objApply26;
                        }
                        AddOp addOp3 = AddOp.$Pl;
                        IntNum intNum3 = srfi13.Lit1;
                        Object objApply28 = addOp3.apply2(obj10, intNum3);
                        ApplyToArgs applyToArgs2 = Scheme.applyToArgs;
                        Object obj11 = this.criterion;
                        Object obj12 = this.s;
                        try {
                            try {
                                if (applyToArgs2.apply2(obj11, Char.make(strings.stringRef((CharSequence) obj12, ((Number) obj10).intValue()))) != bool2) {
                                    objApply26 = addOp3.apply2(objApply26, intNum3);
                                }
                                obj10 = objApply28;
                            } catch (ClassCastException e7) {
                                throw new WrongType(e7, "string-ref", 2, obj10);
                            }
                        } catch (ClassCastException e8) {
                            throw new WrongType(e8, "string-ref", 1, obj12);
                        }
                    }
                }
            } catch (UnboundLocationException e9) {
                e9.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1246, 5);
                throw e9;
            }
        }
    }

    public static Object stringCount$V(Object obj, Object obj2, Object[] objArr) {
        frame81 frame81Var = new frame81();
        frame81Var.s = obj;
        frame81Var.criterion = obj2;
        frame81Var.maybe$Mnstart$Plend = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame81Var.lambda$Fn185, frame81Var.lambda$Fn186);
    }

    public static Object stringFill$Ex$V(Object obj, Object obj2, Object[] objArr) throws Throwable {
        frame82 frame82Var = new frame82();
        frame82Var.s = obj;
        frame82Var.f4char = obj2;
        frame82Var.maybe$Mnstart$Plend = LList.makeList(objArr, 0);
        try {
            Scheme.applyToArgs.apply4(loc$check$Mnarg.get(), characters.char$Qu, frame82Var.f4char, string$Mnfill$Ex);
            return call_with_values.callWithValues(frame82Var.lambda$Fn187, frame82Var.lambda$Fn188);
        } catch (UnboundLocationException e) {
            e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1270, 3);
            throw e;
        }
    }

    public class frame82 extends ModuleBody {

        /* renamed from: char, reason: not valid java name */
        Object f4char;
        final ModuleMethod lambda$Fn187 = new ModuleMethod(this, 162, null, 0);
        final ModuleMethod lambda$Fn188 = new ModuleMethod(this, 163, null, 8194);
        LList maybe$Mnstart$Plend;
        Object s;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 162 ? lambda187() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 163 ? lambda188(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 162) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 163) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda187() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnfill$Ex, this.s, this.maybe$Mnstart$Plend);
        }

        public Object lambda188(Object obj, Object obj2) throws Throwable {
            while (true) {
                obj2 = AddOp.$Mn.apply2(obj2, srfi13.Lit1);
                if (Scheme.numLss.apply2(obj2, obj) != Boolean.FALSE) {
                    return Values.empty;
                }
                Object obj3 = this.s;
                try {
                    CharSeq charSeq = (CharSeq) obj3;
                    try {
                        int iIntValue = ((Number) obj2).intValue();
                        Object obj4 = this.f4char;
                        try {
                            charSeq.setCharAt(iIntValue, ((Char) obj4).charValue());
                        } catch (ClassCastException e) {
                            throw new WrongType(e, "string-set!", 3, obj4);
                        }
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "string-set!", 2, obj2);
                    }
                } catch (ClassCastException e3) {
                    throw new WrongType(e3, "string-set!", 1, obj3);
                }
            }
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
        int i = moduleMethod.selector;
        if (i == 194) {
            return stringParseStart$PlEnd(obj, obj2, obj3);
        }
        if (i == 201) {
            try {
                try {
                    try {
                        return $PcSubstring$SlShared((CharSequence) obj, ((Number) obj2).intValue(), ((Number) obj3).intValue());
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "%substring/shared", 3, obj3);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "%substring/shared", 2, obj2);
                }
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "%substring/shared", 1, obj);
            }
        }
        if (i == 277) {
            return $PcStringTitlecase$Ex(obj, obj2, obj3);
        }
        if (i != 299) {
            if (i == 196) {
                return stringParseFinalStart$PlEnd(obj, obj2, obj3);
            }
            if (i != 197) {
                return super.apply3(moduleMethod, obj, obj2, obj3);
            }
            return isSubstringSpecOk(obj, obj2, obj3) ? Boolean.TRUE : Boolean.FALSE;
        }
        try {
            try {
                return stringCopy$Ex(obj, ((Number) obj2).intValue(), (CharSequence) obj3);
            } catch (ClassCastException e4) {
                throw new WrongType(e4, "string-copy!", 3, obj3);
            }
        } catch (ClassCastException e5) {
            throw new WrongType(e5, "string-copy!", 2, obj2);
        }
    }

    public static Object stringCopy$Ex(Object obj, int i, CharSequence charSequence, int i2, int i3) {
        ModuleMethod moduleMethod = string$Mncopy$Ex;
        $PcCheckBounds(moduleMethod, charSequence, i2, i3);
        try {
            $PcCheckSubstringSpec(moduleMethod, (CharSequence) obj, i, (i3 - i2) + i);
            try {
                return $PcStringCopy$Ex((CharSequence) obj, i, charSequence, i2, i3);
            } catch (ClassCastException e) {
                throw new WrongType(e, "%string-copy!", 0, obj);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "%check-substring-spec", 1, obj);
        }
    }

    public static Object $PcStringCopy$Ex(CharSequence charSequence, int i, CharSequence charSequence2, int i2, int i3) {
        if (i2 > i) {
            while (i2 < i3) {
                try {
                    ((CharSeq) charSequence).setCharAt(i, strings.stringRef(charSequence2, i2));
                    i++;
                    i2++;
                } catch (ClassCastException e) {
                    throw new WrongType(e, "string-set!", 1, charSequence);
                }
            }
            return Values.empty;
        }
        int i4 = (i3 - i2) + (i - 1);
        for (int i5 = i3 - 1; i5 >= i2; i5--) {
            try {
                ((CharSeq) charSequence).setCharAt(i4, strings.stringRef(charSequence2, i5));
                i4--;
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "string-set!", 1, charSequence);
            }
        }
        return Values.empty;
    }

    public class frame83 extends ModuleBody {
        final ModuleMethod lambda$Fn189 = new ModuleMethod(this, 166, null, 0);
        final ModuleMethod lambda$Fn190 = new ModuleMethod(this, 167, null, 12291);
        LList maybe$Mnstarts$Plends;
        Object pattern;
        Object text;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 166 ? lambda189() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            return moduleMethod.selector == 167 ? lambda190(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 166) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
            if (moduleMethod.selector != 167) {
                return super.match3(moduleMethod, obj, obj2, obj3, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }

        public Object lambda189() {
            return srfi13.stringParseStart$PlEnd(srfi13.string$Mncontains, this.text, this.maybe$Mnstarts$Plends);
        }

        public Object lambda190(Object obj, Object obj2, Object obj3) {
            frame84 frame84Var = new frame84();
            frame84Var.staticLink = this;
            frame84Var.rest = obj;
            frame84Var.t$Mnstart = obj2;
            frame84Var.t$Mnend = obj3;
            return call_with_values.callWithValues(frame84Var.lambda$Fn191, frame84Var.lambda$Fn192);
        }
    }

    public class frame84 extends ModuleBody {
        final ModuleMethod lambda$Fn191 = new ModuleMethod(this, 164, null, 0);
        final ModuleMethod lambda$Fn192 = new ModuleMethod(this, 165, null, 8194);
        Object rest;
        frame83 staticLink;
        Object t$Mnend;
        Object t$Mnstart;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 164 ? lambda191() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 165 ? lambda192(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 164) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 165) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda191() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mncontains, this.staticLink.pattern, this.rest);
        }

        public Object lambda192(Object obj, Object obj2) {
            frame83 frame83Var = this.staticLink;
            return srfi13.$PcKmpSearch(frame83Var.pattern, frame83Var.text, characters.char$Eq$Qu, obj, obj2, this.t$Mnstart, this.t$Mnend);
        }
    }

    public static Object stringContains$V(Object obj, Object obj2, Object[] objArr) {
        frame83 frame83Var = new frame83();
        frame83Var.text = obj;
        frame83Var.pattern = obj2;
        frame83Var.maybe$Mnstarts$Plends = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame83Var.lambda$Fn189, frame83Var.lambda$Fn190);
    }

    public class frame85 extends ModuleBody {
        final ModuleMethod lambda$Fn193 = new ModuleMethod(this, 170, null, 0);
        final ModuleMethod lambda$Fn194 = new ModuleMethod(this, 171, null, 12291);
        LList maybe$Mnstarts$Plends;
        Object pattern;
        Object text;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 170 ? lambda193() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            return moduleMethod.selector == 171 ? lambda194(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 170) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
            if (moduleMethod.selector != 171) {
                return super.match3(moduleMethod, obj, obj2, obj3, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }

        public Object lambda193() {
            return srfi13.stringParseStart$PlEnd(srfi13.string$Mncontains$Mnci, this.text, this.maybe$Mnstarts$Plends);
        }

        public Object lambda194(Object obj, Object obj2, Object obj3) {
            frame86 frame86Var = new frame86();
            frame86Var.staticLink = this;
            frame86Var.rest = obj;
            frame86Var.t$Mnstart = obj2;
            frame86Var.t$Mnend = obj3;
            return call_with_values.callWithValues(frame86Var.lambda$Fn195, frame86Var.lambda$Fn196);
        }
    }

    public class frame86 extends ModuleBody {
        final ModuleMethod lambda$Fn195 = new ModuleMethod(this, 168, null, 0);
        final ModuleMethod lambda$Fn196 = new ModuleMethod(this, 169, null, 8194);
        Object rest;
        frame85 staticLink;
        Object t$Mnend;
        Object t$Mnstart;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 168 ? lambda195() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 169 ? lambda196(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 168) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 169) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda195() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mncontains$Mnci, this.staticLink.pattern, this.rest);
        }

        public Object lambda196(Object obj, Object obj2) {
            frame85 frame85Var = this.staticLink;
            return srfi13.$PcKmpSearch(frame85Var.pattern, frame85Var.text, unicode.char$Mnci$Eq$Qu, obj, obj2, this.t$Mnstart, this.t$Mnend);
        }
    }

    public static Object stringContainsCi$V(Object obj, Object obj2, Object[] objArr) {
        frame85 frame85Var = new frame85();
        frame85Var.text = obj;
        frame85Var.pattern = obj2;
        frame85Var.maybe$Mnstarts$Plends = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame85Var.lambda$Fn193, frame85Var.lambda$Fn194);
    }

    public static Object $PcKmpSearch(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7) throws Throwable {
        Object obj8 = obj;
        String str = "string-ref";
        AddOp addOp = AddOp.$Mn;
        Object objApply2 = addOp.apply2(obj5, obj4);
        Object objMakeKmpRestartVector$V = makeKmpRestartVector$V(obj8, new Object[]{obj3, obj4, obj5});
        Object objVectorRef = Lit0;
        Object objApply22 = obj6;
        Object objApply23 = addOp.apply2(obj7, objApply22);
        Object objApply24 = objApply2;
        while (true) {
            NumberCompare numberCompare = Scheme.numEqu;
            Object objApply25 = numberCompare.apply2(objVectorRef, objApply2);
            Boolean bool = Boolean.FALSE;
            if (objApply25 != bool) {
                return AddOp.$Mn.apply2(objApply22, objApply2);
            }
            Object objApply26 = Scheme.numLEq.apply2(objApply24, objApply23);
            try {
                boolean zBooleanValue = ((Boolean) objApply26).booleanValue();
                if (!zBooleanValue) {
                    return zBooleanValue ? Boolean.TRUE : bool;
                }
                ApplyToArgs applyToArgs = Scheme.applyToArgs;
                try {
                    try {
                        Char charMake = Char.make(strings.stringRef((CharSequence) obj2, ((Number) objApply22).intValue()));
                        try {
                            CharSequence charSequence = (CharSequence) obj8;
                            AddOp addOp2 = AddOp.$Pl;
                            String str2 = str;
                            Object objApply27 = addOp2.apply2(obj4, objVectorRef);
                            try {
                                if (applyToArgs.apply3(obj3, charMake, Char.make(strings.stringRef(charSequence, ((Number) objApply27).intValue()))) != bool) {
                                    IntNum intNum = Lit1;
                                    objApply22 = addOp2.apply2(intNum, objApply22);
                                    objVectorRef = addOp2.apply2(intNum, objVectorRef);
                                    AddOp addOp3 = AddOp.$Mn;
                                    objApply23 = addOp3.apply2(objApply23, intNum);
                                    objApply24 = addOp3.apply2(objApply24, intNum);
                                } else {
                                    try {
                                        try {
                                            objVectorRef = vectors.vectorRef((FVector) objMakeKmpRestartVector$V, ((Number) objVectorRef).intValue());
                                            if (numberCompare.apply2(objVectorRef, Lit13) != bool) {
                                                IntNum intNum2 = Lit1;
                                                objApply22 = addOp2.apply2(objApply22, intNum2);
                                                objVectorRef = Lit0;
                                                objApply23 = AddOp.$Mn.apply2(objApply23, intNum2);
                                                obj8 = obj;
                                                objApply24 = objApply2;
                                                str = str2;
                                            } else {
                                                objApply24 = AddOp.$Mn.apply2(objApply2, objVectorRef);
                                            }
                                        } catch (ClassCastException e) {
                                            throw new WrongType(e, "vector-ref", 2, objVectorRef);
                                        }
                                    } catch (ClassCastException e2) {
                                        throw new WrongType(e2, "vector-ref", 1, objMakeKmpRestartVector$V);
                                    }
                                }
                                obj8 = obj;
                                str = str2;
                            } catch (ClassCastException e3) {
                                throw new WrongType(e3, str2, 2, objApply27);
                            }
                        } catch (ClassCastException e4) {
                            throw new WrongType(e4, str, 1, obj);
                        }
                    } catch (ClassCastException e5) {
                        throw new WrongType(e5, str, 2, objApply22);
                    }
                } catch (ClassCastException e6) {
                    throw new WrongType(e6, str, 1, obj2);
                }
            } catch (ClassCastException e7) {
                throw new WrongType(e7, "x", -2, objApply26);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00b4, code lost:
    
        r10 = gnu.kawa.functions.AddOp.$Pl;
        r13 = gnu.kawa.slib.srfi13.Lit1;
        r15 = r10.apply2(r13, r15);
        r17 = r8;
        r8 = kawa.standard.Scheme.applyToArgs;
        r19 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00c4, code lost:
    
        r9 = gnu.kawa.slib.srfi13.loc$c$Eq.get();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00c8, code lost:
    
        r18 = r3;
        r3 = r0.pattern;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00cc, code lost:
    
        r3 = (java.lang.CharSequence) r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00ce, code lost:
    
        r20 = r4;
        r4 = r10.apply2(r7, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00ec, code lost:
    
        if (r8.apply3(r9, gnu.text.Char.make(kawa.lib.strings.stringRef(r3, ((java.lang.Number) r4).intValue())), gnu.text.Char.make(r19)) != r11) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00f5, code lost:
    
        r12.set(((java.lang.Number) r15).intValue(), gnu.kawa.slib.srfi13.Lit0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00fc, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0103, code lost:
    
        throw new gnu.mapping.WrongType(r0, "vector-set!", 2, r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0104, code lost:
    
        r4 = gnu.kawa.slib.srfi13.Lit0;
        r7 = r10.apply2(r7, r13);
        r13 = r4;
        r8 = r17;
        r3 = r18;
        r9 = r19;
        r4 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0114, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x011b, code lost:
    
        throw new gnu.mapping.WrongType(r0, "string-ref", 2, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x011c, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0123, code lost:
    
        throw new gnu.mapping.WrongType(r0, "string-ref", 1, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0124, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0125, code lost:
    
        r0.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1418, 18);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x012c, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0179, code lost:
    
        r0 = gnu.kawa.slib.srfi13.Lit1;
        r15 = r8.apply2(r0, r15);
        r13 = r8.apply2(r0, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x018a, code lost:
    
        r12.set(((java.lang.Number) r15).intValue(), r13);
        r7 = r8.apply2(r7, r0);
        r8 = r17;
        r3 = r18;
        r9 = r19;
        r4 = r20;
        r5 = r22;
        r0 = r23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x019f, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01a6, code lost:
    
        throw new gnu.mapping.WrongType(r0, "vector-set!", 2, r15);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object makeKmpRestartVector$V(java.lang.Object r24, java.lang.Object[] r25) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 608
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.srfi13.makeKmpRestartVector$V(java.lang.Object, java.lang.Object[]):java.lang.Object");
    }

    public class frame87 extends ModuleBody {
        final ModuleMethod lambda$Fn197;
        Object pattern;

        public frame87() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 172, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:1399");
            this.lambda$Fn197 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 172 ? lambda197(obj) : super.apply1(moduleMethod, obj);
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 172) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }

        public Object lambda197(Object obj) {
            return srfi13.stringParseStart$PlEnd(srfi13.make$Mnkmp$Mnrestart$Mnvector, this.pattern, obj);
        }
    }

    public static Object kmpStep(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) throws Throwable {
        Boolean bool;
        do {
            ApplyToArgs applyToArgs = Scheme.applyToArgs;
            try {
                CharSequence charSequence = (CharSequence) obj;
                AddOp addOp = AddOp.$Pl;
                Object objApply2 = addOp.apply2(obj4, obj6);
                try {
                    Object objApply3 = applyToArgs.apply3(obj5, obj3, Char.make(strings.stringRef(charSequence, ((Number) objApply2).intValue())));
                    bool = Boolean.FALSE;
                    if (objApply3 != bool) {
                        return addOp.apply2(obj4, Lit1);
                    }
                    try {
                        try {
                            obj4 = vectors.vectorRef((FVector) obj2, ((Number) obj4).intValue());
                        } catch (ClassCastException e) {
                            throw new WrongType(e, "vector-ref", 2, obj4);
                        }
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "vector-ref", 1, obj2);
                    }
                } catch (ClassCastException e3) {
                    throw new WrongType(e3, "string-ref", 2, objApply2);
                }
            } catch (ClassCastException e4) {
                throw new WrongType(e4, "string-ref", 1, obj);
            }
        } while (Scheme.numEqu.apply2(obj4, Lit13) == bool);
        return Lit0;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object stringKmpPartialSearch$V(java.lang.Object r20, java.lang.Object r21, java.lang.Object r22, java.lang.Object r23, java.lang.Object[] r24) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 529
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.srfi13.stringKmpPartialSearch$V(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object[]):java.lang.Object");
    }

    public class frame88 extends ModuleBody {
        final ModuleMethod lambda$Fn198;
        final ModuleMethod lambda$Fn199;
        int patlen;
        Object s;

        public frame88() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 173, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:1468");
            this.lambda$Fn198 = moduleMethod;
            ModuleMethod moduleMethod2 = new ModuleMethod(this, 174, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod2.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:1472");
            this.lambda$Fn199 = moduleMethod2;
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            int i = moduleMethod.selector;
            if (i == 173) {
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            }
            if (i != 174) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }

        public Object lambda198(Object obj) {
            return srfi13.stringParseStart$PlEnd(srfi13.string$Mnkmp$Mnpartial$Mnsearch, this.s, obj);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            int i = moduleMethod.selector;
            if (i == 173) {
                return lambda198(obj);
            }
            if (i != 174) {
                return super.apply1(moduleMethod, obj);
            }
            return lambda199(obj) ? Boolean.TRUE : Boolean.FALSE;
        }

        public boolean lambda199(Object obj) {
            boolean zIsInteger = numbers.isInteger(obj);
            if (!zIsInteger || !(zIsInteger = numbers.isExact(obj))) {
                return zIsInteger;
            }
            Object objApply2 = Scheme.numLEq.apply2(srfi13.Lit0, obj);
            try {
                boolean zBooleanValue = ((Boolean) objApply2).booleanValue();
                return zBooleanValue ? ((Boolean) Scheme.numLss.apply2(obj, Integer.valueOf(this.patlen))).booleanValue() : zBooleanValue;
            } catch (ClassCastException e) {
                throw new WrongType(e, "x", -2, objApply2);
            }
        }
    }

    public static boolean isStringNull(Object obj) {
        try {
            return numbers.isZero(Integer.valueOf(strings.stringLength((CharSequence) obj)));
        } catch (ClassCastException e) {
            throw new WrongType(e, "string-length", 1, obj);
        }
    }

    public class frame89 extends ModuleBody {
        final ModuleMethod lambda$Fn200 = new ModuleMethod(this, 175, null, 0);
        final ModuleMethod lambda$Fn201 = new ModuleMethod(this, 176, null, 8194);
        LList maybe$Mnstart$Plend;
        Object s;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 175 ? lambda200() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 176 ? lambda201(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 175) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 176) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda200() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnreverse, this.s, this.maybe$Mnstart$Plend);
        }

        public CharSequence lambda201(Object obj, Object obj2) throws Throwable {
            AddOp addOp = AddOp.$Mn;
            Object objApply2 = addOp.apply2(obj2, obj);
            try {
                CharSequence charSequenceMakeString = strings.makeString(((Number) objApply2).intValue());
                IntNum intNum = srfi13.Lit1;
                while (true) {
                    objApply2 = addOp.apply2(objApply2, intNum);
                    if (Scheme.numLss.apply2(objApply2, srfi13.Lit0) != Boolean.FALSE) {
                        return charSequenceMakeString;
                    }
                    try {
                        CharSeq charSeq = (CharSeq) charSequenceMakeString;
                        try {
                            int iIntValue = ((Number) objApply2).intValue();
                            Object obj3 = this.s;
                            try {
                                try {
                                    charSeq.setCharAt(iIntValue, strings.stringRef((CharSequence) obj3, ((Number) obj).intValue()));
                                    AddOp addOp2 = AddOp.$Pl;
                                    intNum = srfi13.Lit1;
                                    obj = addOp2.apply2(obj, intNum);
                                    addOp = AddOp.$Mn;
                                } catch (ClassCastException e) {
                                    throw new WrongType(e, "string-ref", 2, obj);
                                }
                            } catch (ClassCastException e2) {
                                throw new WrongType(e2, "string-ref", 1, obj3);
                            }
                        } catch (ClassCastException e3) {
                            throw new WrongType(e3, "string-set!", 2, objApply2);
                        }
                    } catch (ClassCastException e4) {
                        throw new WrongType(e4, "string-set!", 1, charSequenceMakeString);
                    }
                }
            } catch (ClassCastException e5) {
                throw new WrongType(e5, "make-string", 1, objApply2);
            }
        }
    }

    public static Object stringReverse$V(Object obj, Object[] objArr) {
        frame89 frame89Var = new frame89();
        frame89Var.s = obj;
        frame89Var.maybe$Mnstart$Plend = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame89Var.lambda$Fn200, frame89Var.lambda$Fn201);
    }

    public class frame90 extends ModuleBody {
        final ModuleMethod lambda$Fn202 = new ModuleMethod(this, 177, null, 0);
        final ModuleMethod lambda$Fn203 = new ModuleMethod(this, 178, null, 8194);
        LList maybe$Mnstart$Plend;
        Object s;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 177 ? lambda202() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 178 ? lambda203(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 177) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 178) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda202() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnreverse$Ex, this.s, this.maybe$Mnstart$Plend);
        }

        public Object lambda203(Object obj, Object obj2) throws Throwable {
            Object objApply2 = AddOp.$Mn.apply2(obj2, srfi13.Lit1);
            while (Scheme.numLEq.apply2(objApply2, obj) == Boolean.FALSE) {
                Object obj3 = this.s;
                try {
                    try {
                        char cStringRef = strings.stringRef((CharSequence) obj3, ((Number) objApply2).intValue());
                        Object obj4 = this.s;
                        try {
                            CharSeq charSeq = (CharSeq) obj4;
                            try {
                                int iIntValue = ((Number) objApply2).intValue();
                                Object obj5 = this.s;
                                try {
                                    try {
                                        charSeq.setCharAt(iIntValue, strings.stringRef((CharSequence) obj5, ((Number) obj).intValue()));
                                        Object obj6 = this.s;
                                        try {
                                            try {
                                                ((CharSeq) obj6).setCharAt(((Number) obj).intValue(), cStringRef);
                                                AddOp addOp = AddOp.$Mn;
                                                IntNum intNum = srfi13.Lit1;
                                                objApply2 = addOp.apply2(objApply2, intNum);
                                                obj = AddOp.$Pl.apply2(obj, intNum);
                                            } catch (ClassCastException e) {
                                                throw new WrongType(e, "string-set!", 2, obj);
                                            }
                                        } catch (ClassCastException e2) {
                                            throw new WrongType(e2, "string-set!", 1, obj6);
                                        }
                                    } catch (ClassCastException e3) {
                                        throw new WrongType(e3, "string-ref", 2, obj);
                                    }
                                } catch (ClassCastException e4) {
                                    throw new WrongType(e4, "string-ref", 1, obj5);
                                }
                            } catch (ClassCastException e5) {
                                throw new WrongType(e5, "string-set!", 2, objApply2);
                            }
                        } catch (ClassCastException e6) {
                            throw new WrongType(e6, "string-set!", 1, obj4);
                        }
                    } catch (ClassCastException e7) {
                        throw new WrongType(e7, "string-ref", 2, objApply2);
                    }
                } catch (ClassCastException e8) {
                    throw new WrongType(e8, "string-ref", 1, obj3);
                }
            }
            return Values.empty;
        }
    }

    public static Object stringReverse$Ex$V(Object obj, Object[] objArr) {
        frame90 frame90Var = new frame90();
        frame90Var.s = obj;
        frame90Var.maybe$Mnstart$Plend = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame90Var.lambda$Fn202, frame90Var.lambda$Fn203);
    }

    public static CharSequence reverseList$To$String(Object obj) throws Throwable {
        try {
            int length = lists.length((LList) obj);
            CharSequence charSequenceMakeString = strings.makeString(length);
            Object objValueOf = Integer.valueOf(length - 1);
            while (lists.isPair(obj)) {
                try {
                    CharSeq charSeq = (CharSeq) charSequenceMakeString;
                    try {
                        int iIntValue = ((Number) objValueOf).intValue();
                        Object objApply1 = lists.car.apply1(obj);
                        try {
                            charSeq.setCharAt(iIntValue, ((Char) objApply1).charValue());
                            objValueOf = AddOp.$Mn.apply2(objValueOf, Lit1);
                            obj = lists.cdr.apply1(obj);
                        } catch (ClassCastException e) {
                            throw new WrongType(e, "string-set!", 3, objApply1);
                        }
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "string-set!", 2, objValueOf);
                    }
                } catch (ClassCastException e3) {
                    throw new WrongType(e3, "string-set!", 1, charSequenceMakeString);
                }
            }
            return charSequenceMakeString;
        } catch (ClassCastException e4) {
            throw new WrongType(e4, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, obj);
        }
    }

    public class frame91 extends ModuleBody {
        final ModuleMethod lambda$Fn204 = new ModuleMethod(this, 179, null, 0);
        final ModuleMethod lambda$Fn205 = new ModuleMethod(this, 180, null, 8194);
        LList maybe$Mnstart$Plend;
        Object s;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 179 ? lambda204() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 180 ? lambda205(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 179) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 180) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda204() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mn$Grlist, this.s, this.maybe$Mnstart$Plend);
        }

        public Object lambda205(Object obj, Object obj2) throws Throwable {
            Object objApply2 = AddOp.$Mn.apply2(obj2, srfi13.Lit1);
            Object objCons = LList.Empty;
            while (Scheme.numLss.apply2(objApply2, obj) == Boolean.FALSE) {
                Object objApply22 = AddOp.$Mn.apply2(objApply2, srfi13.Lit1);
                Object obj3 = this.s;
                try {
                    try {
                        objCons = lists.cons(Char.make(strings.stringRef((CharSequence) obj3, ((Number) objApply2).intValue())), objCons);
                        objApply2 = objApply22;
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "string-ref", 2, objApply2);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "string-ref", 1, obj3);
                }
            }
            return objCons;
        }
    }

    public static Object string$To$List$V(Object obj, Object[] objArr) {
        frame91 frame91Var = new frame91();
        frame91Var.s = obj;
        frame91Var.maybe$Mnstart$Plend = LList.makeList(objArr, 0);
        return call_with_values.callWithValues(frame91Var.lambda$Fn204, frame91Var.lambda$Fn205);
    }

    public static Object stringAppend$SlShared$V(Object[] objArr) {
        return stringConcatenate$SlShared(LList.makeList(objArr, 0));
    }

    public static Object stringConcatenate$SlShared(Object obj) throws Throwable {
        Object objApply2 = Lit0;
        Object objApply1 = Boolean.FALSE;
        while (lists.isPair(obj)) {
            Object objApply12 = lists.car.apply1(obj);
            Object objApply13 = lists.cdr.apply1(obj);
            try {
                int iStringLength = strings.stringLength((CharSequence) objApply12);
                if (!numbers.isZero(Integer.valueOf(iStringLength))) {
                    objApply2 = AddOp.$Pl.apply2(objApply2, Integer.valueOf(iStringLength));
                    if (objApply1 == Boolean.FALSE) {
                        objApply1 = obj;
                    }
                }
                obj = objApply13;
            } catch (ClassCastException e) {
                throw new WrongType(e, "string-length", 1, objApply12);
            }
        }
        try {
            if (numbers.isZero((Number) objApply2)) {
                return "";
            }
            NumberCompare numberCompare = Scheme.numEqu;
            GenericProc genericProc = lists.car;
            Object objApply14 = genericProc.apply1(objApply1);
            try {
                if (numberCompare.apply2(objApply2, Integer.valueOf(strings.stringLength((CharSequence) objApply14))) != Boolean.FALSE) {
                    return genericProc.apply1(objApply1);
                }
                try {
                    CharSequence charSequenceMakeString = strings.makeString(((Number) objApply2).intValue());
                    Object objApply22 = Lit0;
                    while (lists.isPair(objApply1)) {
                        Object objApply15 = lists.car.apply1(objApply1);
                        try {
                            int iStringLength2 = strings.stringLength((CharSequence) objApply15);
                            try {
                                try {
                                    $PcStringCopy$Ex(charSequenceMakeString, ((Number) objApply22).intValue(), (CharSequence) objApply15, 0, iStringLength2);
                                    objApply1 = lists.cdr.apply1(objApply1);
                                    objApply22 = AddOp.$Pl.apply2(objApply22, Integer.valueOf(iStringLength2));
                                } catch (ClassCastException e2) {
                                    throw new WrongType(e2, "%string-copy!", 2, objApply15);
                                }
                            } catch (ClassCastException e3) {
                                throw new WrongType(e3, "%string-copy!", 1, objApply22);
                            }
                        } catch (ClassCastException e4) {
                            throw new WrongType(e4, "string-length", 1, objApply15);
                        }
                    }
                    return charSequenceMakeString;
                } catch (ClassCastException e5) {
                    throw new WrongType(e5, "make-string", 1, objApply2);
                }
            } catch (ClassCastException e6) {
                throw new WrongType(e6, "string-length", 1, objApply14);
            }
        } catch (ClassCastException e7) {
            throw new WrongType(e7, "zero?", 1, objApply2);
        }
    }

    public static CharSequence stringConcatenate(Object obj) throws Throwable {
        Object objApply2 = Lit0;
        Object obj2 = obj;
        while (lists.isPair(obj2)) {
            Object objApply1 = lists.cdr.apply1(obj2);
            AddOp addOp = AddOp.$Pl;
            Object objApply12 = lists.car.apply1(obj2);
            try {
                objApply2 = addOp.apply2(objApply2, Integer.valueOf(strings.stringLength((CharSequence) objApply12)));
                obj2 = objApply1;
            } catch (ClassCastException e) {
                throw new WrongType(e, "string-length", 1, objApply12);
            }
        }
        try {
            CharSequence charSequenceMakeString = strings.makeString(((Number) objApply2).intValue());
            Object objApply22 = Lit0;
            while (lists.isPair(obj)) {
                Object objApply13 = lists.car.apply1(obj);
                try {
                    int iStringLength = strings.stringLength((CharSequence) objApply13);
                    try {
                        try {
                            $PcStringCopy$Ex(charSequenceMakeString, ((Number) objApply22).intValue(), (CharSequence) objApply13, 0, iStringLength);
                            objApply22 = AddOp.$Pl.apply2(objApply22, Integer.valueOf(iStringLength));
                            obj = lists.cdr.apply1(obj);
                        } catch (ClassCastException e2) {
                            throw new WrongType(e2, "%string-copy!", 2, objApply13);
                        }
                    } catch (ClassCastException e3) {
                        throw new WrongType(e3, "%string-copy!", 1, objApply22);
                    }
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "string-length", 1, objApply13);
                }
            }
            return charSequenceMakeString;
        } catch (ClassCastException e5) {
            throw new WrongType(e5, "make-string", 1, objApply2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x009c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object stringConcatenateReverse$V(java.lang.Object r14, java.lang.Object[] r15) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.srfi13.stringConcatenateReverse$V(java.lang.Object, java.lang.Object[]):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0155  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object stringConcatenateReverse$SlShared$V(java.lang.Object r16, java.lang.Object[] r17) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 449
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.srfi13.stringConcatenateReverse$SlShared$V(java.lang.Object, java.lang.Object[]):java.lang.Object");
    }

    @Override // gnu.expr.ModuleBody
    public Object apply4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4) {
        int i = moduleMethod.selector;
        if (i == 195) {
            try {
                try {
                    try {
                        return $PcCheckBounds(obj, (CharSequence) obj2, ((Number) obj3).intValue(), ((Number) obj4).intValue());
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "%check-bounds", 4, obj4);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "%check-bounds", 3, obj3);
                }
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "%check-bounds", 2, obj2);
            }
        }
        if (i == 198) {
            return checkSubstringSpec(obj, obj2, obj3, obj4);
        }
        if (i == 204) {
            return $PcStringMap(obj, obj2, obj3, obj4);
        }
        if (i == 206) {
            return $PcStringMap$Ex(obj, obj2, obj3, obj4);
        }
        if (i != 299) {
            return i != 319 ? super.apply4(moduleMethod, obj, obj2, obj3, obj4) : $PcFinishStringConcatenateReverse(obj, obj2, obj3, obj4);
        }
        try {
            try {
                try {
                    return stringCopy$Ex(obj, ((Number) obj2).intValue(), (CharSequence) obj3, ((Number) obj4).intValue());
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "string-copy!", 4, obj4);
                }
            } catch (ClassCastException e5) {
                throw new WrongType(e5, "string-copy!", 3, obj3);
            }
        } catch (ClassCastException e6) {
            throw new WrongType(e6, "string-copy!", 2, obj2);
        }
    }

    public static Object $PcFinishStringConcatenateReverse(Object obj, Object obj2, Object obj3, Object obj4) throws Throwable {
        Object objApply2 = AddOp.$Pl.apply2(obj4, obj);
        try {
            CharSequence charSequenceMakeString = strings.makeString(((Number) objApply2).intValue());
            try {
                try {
                    try {
                        $PcStringCopy$Ex(charSequenceMakeString, ((Number) obj).intValue(), (CharSequence) obj3, 0, ((Number) obj4).intValue());
                        while (lists.isPair(obj2)) {
                            Object objApply1 = lists.car.apply1(obj2);
                            obj2 = lists.cdr.apply1(obj2);
                            try {
                                int iStringLength = strings.stringLength((CharSequence) objApply1);
                                obj = AddOp.$Mn.apply2(obj, Integer.valueOf(iStringLength));
                                try {
                                    try {
                                        $PcStringCopy$Ex(charSequenceMakeString, ((Number) obj).intValue(), (CharSequence) objApply1, 0, iStringLength);
                                    } catch (ClassCastException e) {
                                        throw new WrongType(e, "%string-copy!", 2, objApply1);
                                    }
                                } catch (ClassCastException e2) {
                                    throw new WrongType(e2, "%string-copy!", 1, obj);
                                }
                            } catch (ClassCastException e3) {
                                throw new WrongType(e3, "string-length", 1, objApply1);
                            }
                        }
                        return charSequenceMakeString;
                    } catch (ClassCastException e4) {
                        throw new WrongType(e4, "%string-copy!", 4, obj4);
                    }
                } catch (ClassCastException e5) {
                    throw new WrongType(e5, "%string-copy!", 2, obj3);
                }
            } catch (ClassCastException e6) {
                throw new WrongType(e6, "%string-copy!", 1, obj);
            }
        } catch (ClassCastException e7) {
            throw new WrongType(e7, "make-string", 1, objApply2);
        }
    }

    public static Object stringReplace$V(Object obj, Object obj2, Object obj3, Object obj4, Object[] objArr) {
        frame92 frame92Var = new frame92();
        frame92Var.s1 = obj;
        frame92Var.s2 = obj2;
        frame92Var.start1 = obj3;
        frame92Var.end1 = obj4;
        frame92Var.maybe$Mnstart$Plend = LList.makeList(objArr, 0);
        checkSubstringSpec(string$Mnreplace, frame92Var.s1, frame92Var.start1, frame92Var.end1);
        return call_with_values.callWithValues(frame92Var.lambda$Fn206, frame92Var.lambda$Fn207);
    }

    public class frame92 extends ModuleBody {
        Object end1;
        final ModuleMethod lambda$Fn206 = new ModuleMethod(this, 181, null, 0);
        final ModuleMethod lambda$Fn207 = new ModuleMethod(this, 182, null, 8194);
        LList maybe$Mnstart$Plend;
        Object s1;
        Object s2;
        Object start1;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 181 ? lambda206() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 182 ? lambda207(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 181) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 182) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda206() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnreplace, this.s2, this.maybe$Mnstart$Plend);
        }

        public CharSequence lambda207(Object obj, Object obj2) throws Throwable {
            Object obj3 = this.s1;
            try {
                int iStringLength = strings.stringLength((CharSequence) obj3);
                AddOp addOp = AddOp.$Mn;
                Object objApply2 = addOp.apply2(obj2, obj);
                AddOp addOp2 = AddOp.$Pl;
                Object objApply22 = addOp2.apply2(addOp.apply2(Integer.valueOf(iStringLength), addOp.apply2(this.end1, this.start1)), objApply2);
                try {
                    CharSequence charSequenceMakeString = strings.makeString(((Number) objApply22).intValue());
                    Object obj4 = this.s1;
                    try {
                        CharSequence charSequence = (CharSequence) obj4;
                        Object obj5 = this.start1;
                        try {
                            srfi13.$PcStringCopy$Ex(charSequenceMakeString, 0, charSequence, 0, ((Number) obj5).intValue());
                            Object obj6 = this.start1;
                            try {
                                int iIntValue = ((Number) obj6).intValue();
                                Object obj7 = this.s2;
                                try {
                                    try {
                                        try {
                                            srfi13.$PcStringCopy$Ex(charSequenceMakeString, iIntValue, (CharSequence) obj7, ((Number) obj).intValue(), ((Number) obj2).intValue());
                                            Object objApply23 = addOp2.apply2(this.start1, objApply2);
                                            try {
                                                int iIntValue2 = ((Number) objApply23).intValue();
                                                Object obj8 = this.s1;
                                                try {
                                                    CharSequence charSequence2 = (CharSequence) obj8;
                                                    Object obj9 = this.end1;
                                                    try {
                                                        srfi13.$PcStringCopy$Ex(charSequenceMakeString, iIntValue2, charSequence2, ((Number) obj9).intValue(), iStringLength);
                                                        return charSequenceMakeString;
                                                    } catch (ClassCastException e) {
                                                        throw new WrongType(e, "%string-copy!", 3, obj9);
                                                    }
                                                } catch (ClassCastException e2) {
                                                    throw new WrongType(e2, "%string-copy!", 2, obj8);
                                                }
                                            } catch (ClassCastException e3) {
                                                throw new WrongType(e3, "%string-copy!", 1, objApply23);
                                            }
                                        } catch (ClassCastException e4) {
                                            throw new WrongType(e4, "%string-copy!", 4, obj2);
                                        }
                                    } catch (ClassCastException e5) {
                                        throw new WrongType(e5, "%string-copy!", 3, obj);
                                    }
                                } catch (ClassCastException e6) {
                                    throw new WrongType(e6, "%string-copy!", 2, obj7);
                                }
                            } catch (ClassCastException e7) {
                                throw new WrongType(e7, "%string-copy!", 1, obj6);
                            }
                        } catch (ClassCastException e8) {
                            throw new WrongType(e8, "%string-copy!", 4, obj5);
                        }
                    } catch (ClassCastException e9) {
                        throw new WrongType(e9, "%string-copy!", 2, obj4);
                    }
                } catch (ClassCastException e10) {
                    throw new WrongType(e10, "make-string", 1, objApply22);
                }
            } catch (ClassCastException e11) {
                throw new WrongType(e11, "string-length", 1, obj3);
            }
        }
    }

    public static Object stringTokenize$V(Object obj, Object[] objArr) throws Throwable {
        frame93 frame93Var = new frame93();
        frame93Var.s = obj;
        LList lListMakeList = LList.makeList(objArr, 0);
        ApplyToArgs applyToArgs = Scheme.applyToArgs;
        try {
            Object obj2 = loc$let$Mnoptionals$St.get();
            Location location = loc$token$Mnchars;
            try {
                try {
                    try {
                        try {
                            try {
                                return applyToArgs.apply4(obj2, lListMakeList, applyToArgs.apply2(applyToArgs.apply3(location.get(), GetNamedPart.getNamedPart.apply2(loc$char$Mnset.get(), Lit14), applyToArgs.apply2(loc$char$Mnset$Qu.get(), location.get())), loc$rest.get()), call_with_values.callWithValues(frame93Var.lambda$Fn208, frame93Var.lambda$Fn209));
                            } catch (UnboundLocationException e) {
                                e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1695, 75);
                                throw e;
                            }
                        } catch (UnboundLocationException e2) {
                            e2.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1695, 61);
                            throw e2;
                        }
                    } catch (UnboundLocationException e3) {
                        e3.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1695, 50);
                        throw e3;
                    }
                } catch (UnboundLocationException e4) {
                    e4.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1695, 33);
                    throw e4;
                }
            } catch (UnboundLocationException e5) {
                e5.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1695, 20);
                throw e5;
            }
        } catch (UnboundLocationException e6) {
            e6.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1694, 3);
            throw e6;
        }
    }

    public class frame93 extends ModuleBody {
        final ModuleMethod lambda$Fn208 = new ModuleMethod(this, 183, null, 0);
        final ModuleMethod lambda$Fn209 = new ModuleMethod(this, 184, null, 8194);
        Object s;

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 183 ? lambda208() : super.apply0(moduleMethod);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 184 ? lambda209(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            if (moduleMethod.selector != 183) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 184) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public Object lambda208() {
            try {
                return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mntokenize, this.s, srfi13.loc$rest.get());
            } catch (UnboundLocationException e) {
                e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1696, 57);
                throw e;
            }
        }

        public Object lambda209(Object obj, Object obj2) throws Throwable {
            Object objStringIndexRight$V;
            Object objCons = LList.Empty;
            while (true) {
                Object objApply2 = Scheme.numLss.apply2(obj, obj2);
                try {
                    boolean zBooleanValue = ((Boolean) objApply2).booleanValue();
                    if (zBooleanValue) {
                        try {
                            objStringIndexRight$V = srfi13.stringIndexRight$V(this.s, srfi13.loc$token$Mnchars.get(), new Object[]{obj, obj2});
                        } catch (UnboundLocationException e) {
                            e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1698, 48);
                            throw e;
                        }
                    } else {
                        objStringIndexRight$V = zBooleanValue ? Boolean.TRUE : Boolean.FALSE;
                    }
                    Boolean bool = Boolean.FALSE;
                    if (objStringIndexRight$V == bool) {
                        return objCons;
                    }
                    AddOp addOp = AddOp.$Pl;
                    IntNum intNum = srfi13.Lit1;
                    Object objApply22 = addOp.apply2(intNum, objStringIndexRight$V);
                    try {
                        obj2 = srfi13.stringSkipRight$V(this.s, srfi13.loc$token$Mnchars.get(), new Object[]{obj, objStringIndexRight$V});
                        if (obj2 != bool) {
                            Object obj3 = this.s;
                            try {
                                CharSequence charSequence = (CharSequence) obj3;
                                Object objApply23 = addOp.apply2(intNum, obj2);
                                try {
                                    try {
                                        objCons = lists.cons(strings.substring(charSequence, ((Number) objApply23).intValue(), ((Number) objApply22).intValue()), objCons);
                                    } catch (ClassCastException e2) {
                                        throw new WrongType(e2, "substring", 3, objApply22);
                                    }
                                } catch (ClassCastException e3) {
                                    throw new WrongType(e3, "substring", 2, objApply23);
                                }
                            } catch (ClassCastException e4) {
                                throw new WrongType(e4, "substring", 1, obj3);
                            }
                        } else {
                            Object obj4 = this.s;
                            try {
                                try {
                                    try {
                                        return lists.cons(strings.substring((CharSequence) obj4, ((Number) obj).intValue(), ((Number) objApply22).intValue()), objCons);
                                    } catch (ClassCastException e5) {
                                        throw new WrongType(e5, "substring", 3, objApply22);
                                    }
                                } catch (ClassCastException e6) {
                                    throw new WrongType(e6, "substring", 2, obj);
                                }
                            } catch (ClassCastException e7) {
                                throw new WrongType(e7, "substring", 1, obj4);
                            }
                        }
                    } catch (UnboundLocationException e8) {
                        e8.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", ErrorMessages.ERROR_BAD_VALUE_FOR_TEXT_RECEIVING, 34);
                        throw e8;
                    }
                } catch (ClassCastException e9) {
                    throw new WrongType(e9, "x", -2, objApply2);
                }
            }
        }
    }

    public class frame94 extends ModuleBody {
        Object from;
        final ModuleMethod lambda$Fn211;
        final ModuleMethod lambda$Fn212 = new ModuleMethod(this, 185, null, 0);
        final ModuleMethod lambda$Fn213;
        final ModuleMethod lambda$Fn214;
        final ModuleMethod lambda$Fn215;
        LList maybe$Mnto$Plstart$Plend;
        Object s;

        public frame94() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 186, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:1744");
            this.lambda$Fn214 = moduleMethod;
            this.lambda$Fn213 = new ModuleMethod(this, 187, null, 8194);
            this.lambda$Fn211 = new ModuleMethod(this, 188, null, 0);
            ModuleMethod moduleMethod2 = new ModuleMethod(this, FullScreenVideoUtil.FULLSCREEN_VIDEO_DIALOG_FLAG, null, 12291);
            moduleMethod2.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:1740");
            this.lambda$Fn215 = moduleMethod2;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            int i = moduleMethod.selector;
            return i != 185 ? i != 188 ? super.apply0(moduleMethod) : lambda211() : lambda212();
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 187 ? lambda213(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            int i = moduleMethod.selector;
            if (i != 185 && i != 188) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 187) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public static boolean lambda210(Object obj) {
            boolean zIsInteger = numbers.isInteger(obj);
            return zIsInteger ? numbers.isExact(obj) : zIsInteger;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            return moduleMethod.selector == 189 ? lambda215(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
        }

        @Override // gnu.expr.ModuleBody
        public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
            if (moduleMethod.selector != 189) {
                return super.match3(moduleMethod, obj, obj2, obj3, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }

        public Object lambda211() throws Throwable {
            if (lists.isPair(this.maybe$Mnto$Plstart$Plend)) {
                return call_with_values.callWithValues(this.lambda$Fn212, this.lambda$Fn213);
            }
            try {
                Object objApply4 = Scheme.applyToArgs.apply4(srfi13.loc$check$Mnarg.get(), strings.string$Qu, this.s, srfi13.xsubstring);
                try {
                    int iStringLength = strings.stringLength((CharSequence) objApply4);
                    return misc.values(AddOp.$Pl.apply2(this.from, Integer.valueOf(iStringLength)), srfi13.Lit0, Integer.valueOf(iStringLength));
                } catch (ClassCastException e) {
                    throw new WrongType(e, "string-length", 1, objApply4);
                }
            } catch (UnboundLocationException e2) {
                e2.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1749, 36);
                throw e2;
            }
        }

        public Object lambda212() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.xsubstring, this.s, lists.cdr.apply1(this.maybe$Mnto$Plstart$Plend));
        }

        public Object lambda213(Object obj, Object obj2) throws Throwable {
            Object objApply1 = lists.car.apply1(this.maybe$Mnto$Plstart$Plend);
            try {
                Scheme.applyToArgs.apply4(srfi13.loc$check$Mnarg.get(), this.lambda$Fn214, objApply1, srfi13.xsubstring);
                return misc.values(objApply1, obj, obj2);
            } catch (UnboundLocationException e) {
                e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1744, 6);
                throw e;
            }
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 186 ? lambda214(obj) ? Boolean.TRUE : Boolean.FALSE : super.apply1(moduleMethod, obj);
        }

        public boolean lambda214(Object obj) {
            boolean zIsInteger = numbers.isInteger(obj);
            return (zIsInteger && (zIsInteger = numbers.isExact(obj))) ? ((Boolean) Scheme.numLEq.apply2(this.from, obj)).booleanValue() : zIsInteger;
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 186) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }

        public Object lambda215(Object obj, Object obj2, Object obj3) throws Throwable {
            AddOp addOp = AddOp.$Mn;
            Object objApply2 = addOp.apply2(obj3, obj2);
            Object objApply22 = addOp.apply2(obj, this.from);
            try {
                if (numbers.isZero((Number) objApply22)) {
                    return "";
                }
                try {
                    if (numbers.isZero((Number) objApply2)) {
                        return misc.error$V("Cannot replicate empty (sub)string", new Object[]{srfi13.xsubstring, this.s, this.from, obj, obj2, obj3});
                    }
                    if (Scheme.numEqu.apply2(srfi13.Lit1, objApply2) != Boolean.FALSE) {
                        try {
                            int iIntValue = ((Number) objApply22).intValue();
                            Object obj4 = this.s;
                            try {
                                try {
                                    return strings.makeString(iIntValue, Char.make(strings.stringRef((CharSequence) obj4, ((Number) obj2).intValue())));
                                } catch (ClassCastException e) {
                                    throw new WrongType(e, "string-ref", 2, obj2);
                                }
                            } catch (ClassCastException e2) {
                                throw new WrongType(e2, "string-ref", 1, obj4);
                            }
                        } catch (ClassCastException e3) {
                            throw new WrongType(e3, "make-string", 1, objApply22);
                        }
                    }
                    DivideOp divideOp = DivideOp.$Sl;
                    Object objApply23 = divideOp.apply2(this.from, objApply2);
                    try {
                        double dDoubleValue = numbers.floor(LangObjType.coerceRealNum(objApply23)).doubleValue();
                        Object objApply24 = divideOp.apply2(obj, objApply2);
                        try {
                            if (dDoubleValue == numbers.floor(LangObjType.coerceRealNum(objApply24)).doubleValue()) {
                                Object obj5 = this.s;
                                try {
                                    CharSequence charSequence = (CharSequence) obj5;
                                    AddOp addOp2 = AddOp.$Pl;
                                    DivideOp divideOp2 = DivideOp.modulo;
                                    Object objApply25 = addOp2.apply2(obj2, divideOp2.apply2(this.from, objApply2));
                                    try {
                                        int iIntValue2 = ((Number) objApply25).intValue();
                                        Object objApply26 = addOp2.apply2(obj2, divideOp2.apply2(obj, objApply2));
                                        try {
                                            return strings.substring(charSequence, iIntValue2, ((Number) objApply26).intValue());
                                        } catch (ClassCastException e4) {
                                            throw new WrongType(e4, "substring", 3, objApply26);
                                        }
                                    } catch (ClassCastException e5) {
                                        throw new WrongType(e5, "substring", 2, objApply25);
                                    }
                                } catch (ClassCastException e6) {
                                    throw new WrongType(e6, "substring", 1, obj5);
                                }
                            }
                            try {
                                CharSequence charSequenceMakeString = strings.makeString(((Number) objApply22).intValue());
                                srfi13.$PcMultispanRepcopy$Ex(charSequenceMakeString, srfi13.Lit0, this.s, this.from, obj, obj2, obj3);
                                return charSequenceMakeString;
                            } catch (ClassCastException e7) {
                                throw new WrongType(e7, "make-string", 1, objApply22);
                            }
                        } catch (ClassCastException e8) {
                            throw new WrongType(e8, "floor", 1, objApply24);
                        }
                    } catch (ClassCastException e9) {
                        throw new WrongType(e9, "floor", 1, objApply23);
                    }
                } catch (ClassCastException e10) {
                    throw new WrongType(e10, "zero?", 1, objApply2);
                }
            } catch (ClassCastException e11) {
                throw new WrongType(e11, "zero?", 1, objApply22);
            }
        }
    }

    public static Object xsubstring$V(Object obj, Object obj2, Object[] objArr) throws Throwable {
        frame94 frame94Var = new frame94();
        frame94Var.s = obj;
        frame94Var.from = obj2;
        frame94Var.maybe$Mnto$Plstart$Plend = LList.makeList(objArr, 0);
        try {
            Scheme.applyToArgs.apply4(loc$check$Mnarg.get(), lambda$Fn210, frame94Var.from, xsubstring);
            return call_with_values.callWithValues(frame94Var.lambda$Fn211, frame94Var.lambda$Fn215);
        } catch (UnboundLocationException e) {
            e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1738, 3);
            throw e;
        }
    }

    public class frame95 extends ModuleBody {
        final ModuleMethod lambda$Fn221;
        LList maybe$Mnsto$Plstart$Plend;
        Object s;
        Object sfrom;
        Object target;
        Object tstart;
        final ModuleMethod lambda$Fn218 = new ModuleMethod(this, FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_SEEK, null, 0);
        final ModuleMethod lambda$Fn219 = new ModuleMethod(this, FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_PLAY, null, 8194);
        final ModuleMethod lambda$Fn217 = new ModuleMethod(this, FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_PAUSE, null, 0);

        public frame95() {
            ModuleMethod moduleMethod = new ModuleMethod(this, FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_STOP, null, 12291);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:1781");
            this.lambda$Fn221 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            int i = moduleMethod.selector;
            return i != 190 ? i != 192 ? super.apply0(moduleMethod) : lambda217() : lambda218();
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 191 ? lambda219(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            int i = moduleMethod.selector;
            if (i != 190 && i != 192) {
                return super.match0(moduleMethod, callContext);
            }
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 191) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        public static boolean lambda216(Object obj) {
            boolean zIsInteger = numbers.isInteger(obj);
            return zIsInteger ? numbers.isExact(obj) : zIsInteger;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            return moduleMethod.selector == 193 ? lambda221(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
        }

        @Override // gnu.expr.ModuleBody
        public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
            if (moduleMethod.selector != 193) {
                return super.match3(moduleMethod, obj, obj2, obj3, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }

        public Object lambda217() {
            if (lists.isPair(this.maybe$Mnsto$Plstart$Plend)) {
                return call_with_values.callWithValues(this.lambda$Fn218, this.lambda$Fn219);
            }
            Object obj = this.s;
            try {
                int iStringLength = strings.stringLength((CharSequence) obj);
                return misc.values(AddOp.$Pl.apply2(this.sfrom, Integer.valueOf(iStringLength)), srfi13.Lit0, Integer.valueOf(iStringLength));
            } catch (ClassCastException e) {
                throw new WrongType(e, "string-length", 1, obj);
            }
        }

        public Object lambda218() {
            return srfi13.stringParseFinalStart$PlEnd(srfi13.string$Mnxcopy$Ex, this.s, lists.cdr.apply1(this.maybe$Mnsto$Plstart$Plend));
        }

        public Object lambda219(Object obj, Object obj2) throws Throwable {
            Object objApply1 = lists.car.apply1(this.maybe$Mnsto$Plstart$Plend);
            try {
                Scheme.applyToArgs.apply4(srfi13.loc$check$Mnarg.get(), srfi13.lambda$Fn220, objApply1, srfi13.string$Mnxcopy$Ex);
                return misc.values(objApply1, obj, obj2);
            } catch (UnboundLocationException e) {
                e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1785, 6);
                throw e;
            }
        }

        public static boolean lambda220(Object obj) {
            boolean zIsInteger = numbers.isInteger(obj);
            return zIsInteger ? numbers.isExact(obj) : zIsInteger;
        }

        public Object lambda221(Object obj, Object obj2, Object obj3) throws Throwable {
            AddOp addOp = AddOp.$Mn;
            Object objApply2 = addOp.apply2(obj, this.sfrom);
            AddOp addOp2 = AddOp.$Pl;
            Object objApply22 = addOp2.apply2(this.tstart, objApply2);
            Object objApply23 = addOp.apply2(obj3, obj2);
            ModuleMethod moduleMethod = srfi13.string$Mnxcopy$Ex;
            srfi13.checkSubstringSpec(moduleMethod, this.target, this.tstart, objApply22);
            try {
                boolean zIsZero = numbers.isZero((Number) objApply2);
                if (zIsZero) {
                    return zIsZero ? Boolean.TRUE : Boolean.FALSE;
                }
                try {
                    if (numbers.isZero((Number) objApply23)) {
                        return misc.error$V("Cannot replicate empty (sub)string", new Object[]{moduleMethod, this.target, this.tstart, this.s, this.sfrom, obj, obj2, obj3});
                    }
                    if (Scheme.numEqu.apply2(srfi13.Lit1, objApply23) != Boolean.FALSE) {
                        Object obj4 = this.target;
                        Object obj5 = this.s;
                        try {
                            try {
                                return srfi13.stringFill$Ex$V(obj4, Char.make(strings.stringRef((CharSequence) obj5, ((Number) obj2).intValue())), new Object[]{this.tstart, objApply22});
                            } catch (ClassCastException e) {
                                throw new WrongType(e, "string-ref", 2, obj2);
                            }
                        } catch (ClassCastException e2) {
                            throw new WrongType(e2, "string-ref", 1, obj5);
                        }
                    }
                    DivideOp divideOp = DivideOp.$Sl;
                    Object objApply24 = divideOp.apply2(this.sfrom, objApply23);
                    try {
                        double dDoubleValue = numbers.floor(LangObjType.coerceRealNum(objApply24)).doubleValue();
                        Object objApply25 = divideOp.apply2(obj, objApply23);
                        try {
                            if (dDoubleValue == numbers.floor(LangObjType.coerceRealNum(objApply25)).doubleValue()) {
                                Object obj6 = this.target;
                                try {
                                    CharSequence charSequence = (CharSequence) obj6;
                                    Object obj7 = this.tstart;
                                    try {
                                        int iIntValue = ((Number) obj7).intValue();
                                        Object obj8 = this.s;
                                        try {
                                            CharSequence charSequence2 = (CharSequence) obj8;
                                            DivideOp divideOp2 = DivideOp.modulo;
                                            Object objApply26 = addOp2.apply2(obj2, divideOp2.apply2(this.sfrom, objApply23));
                                            try {
                                                int iIntValue2 = ((Number) objApply26).intValue();
                                                Object objApply27 = addOp2.apply2(obj2, divideOp2.apply2(obj, objApply23));
                                                try {
                                                    return srfi13.$PcStringCopy$Ex(charSequence, iIntValue, charSequence2, iIntValue2, ((Number) objApply27).intValue());
                                                } catch (ClassCastException e3) {
                                                    throw new WrongType(e3, "%string-copy!", 4, objApply27);
                                                }
                                            } catch (ClassCastException e4) {
                                                throw new WrongType(e4, "%string-copy!", 3, objApply26);
                                            }
                                        } catch (ClassCastException e5) {
                                            throw new WrongType(e5, "%string-copy!", 2, obj8);
                                        }
                                    } catch (ClassCastException e6) {
                                        throw new WrongType(e6, "%string-copy!", 1, obj7);
                                    }
                                } catch (ClassCastException e7) {
                                    throw new WrongType(e7, "%string-copy!", 0, obj6);
                                }
                            }
                            return srfi13.$PcMultispanRepcopy$Ex(this.target, this.tstart, this.s, this.sfrom, obj, obj2, obj3);
                        } catch (ClassCastException e8) {
                            throw new WrongType(e8, "floor", 1, objApply25);
                        }
                    } catch (ClassCastException e9) {
                        throw new WrongType(e9, "floor", 1, objApply24);
                    }
                } catch (ClassCastException e10) {
                    throw new WrongType(e10, "zero?", 1, objApply23);
                }
            } catch (ClassCastException e11) {
                throw new WrongType(e11, "zero?", 1, objApply2);
            }
        }
    }

    public static Object stringXcopy$Ex$V(Object obj, Object obj2, Object obj3, Object obj4, Object[] objArr) throws Throwable {
        frame95 frame95Var = new frame95();
        frame95Var.target = obj;
        frame95Var.tstart = obj2;
        frame95Var.s = obj3;
        frame95Var.sfrom = obj4;
        frame95Var.maybe$Mnsto$Plstart$Plend = LList.makeList(objArr, 0);
        try {
            Scheme.applyToArgs.apply4(loc$check$Mnarg.get(), lambda$Fn216, frame95Var.sfrom, string$Mnxcopy$Ex);
            return call_with_values.callWithValues(frame95Var.lambda$Fn217, frame95Var.lambda$Fn221);
        } catch (UnboundLocationException e) {
            e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1779, 3);
            throw e;
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) {
        switch (moduleMethod.selector) {
            case 199:
                return frame1.lambda5(obj) ? Boolean.TRUE : Boolean.FALSE;
            case 209:
                return lambda17(obj);
            case 211:
                return lambda18(obj);
            case 217:
                return lambda27(obj) ? Boolean.TRUE : Boolean.FALSE;
            case 239:
                return frame32.lambda72(obj);
            case 240:
                return frame32.lambda73(obj);
            case LispEscapeFormat.ESCAPE_ALL /* 242 */:
                return frame34.lambda78(obj);
            case 244:
                return frame36.lambda83(obj);
            case 245:
                return frame36.lambda84(obj);
            case 247:
                return frame38.lambda89(obj);
            case 248:
                return frame38.lambda90(obj);
            case ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION /* 250 */:
                return frame40.lambda95(obj);
            case Telnet.WONT /* 252 */:
                return frame42.lambda100(obj);
            case Telnet.DONT /* 254 */:
                return frame44.lambda105(obj);
            case 255:
                return frame44.lambda106(obj);
            case InputDeviceCompat.SOURCE_KEYBOARD /* 257 */:
                return frame46.lambda111(obj);
            case 259:
                return frame48.lambda116(obj);
            case 260:
                return frame48.lambda117(obj);
            case 262:
                return frame50.lambda122(obj);
            case Optimizer.OPTIMIZATION_STANDARD /* 263 */:
                return frame50.lambda123(obj);
            case 265:
                return frame52.lambda128(obj);
            case 267:
                return frame54.lambda133(obj);
            case 271:
                return Integer.valueOf(frame57.lambda138(obj));
            case 287:
                return frame71.lambda163(obj) ? Boolean.TRUE : Boolean.FALSE;
            case 289:
                return frame72.lambda166(obj) ? Boolean.TRUE : Boolean.FALSE;
            case ErrorMessages.ERROR_TWITTER_REQUEST_DIRECT_MESSAGES_FAILED /* 309 */:
                return isStringNull(obj) ? Boolean.TRUE : Boolean.FALSE;
            case ErrorMessages.ERROR_TWITTER_STOP_FOLLOWING_FAILED /* 312 */:
                return reverseList$To$String(obj);
            case 315:
                return stringConcatenate$SlShared(obj);
            case 316:
                return stringConcatenate(obj);
            case 322:
                return frame94.lambda210(obj) ? Boolean.TRUE : Boolean.FALSE;
            case 324:
                return frame95.lambda216(obj) ? Boolean.TRUE : Boolean.FALSE;
            case 325:
                return frame95.lambda220(obj) ? Boolean.TRUE : Boolean.FALSE;
            default:
                return super.apply1(moduleMethod, obj);
        }
    }

    public static Object $PcMultispanRepcopy$Ex(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7) throws Throwable {
        AddOp addOp = AddOp.$Mn;
        Object objApply2 = addOp.apply2(obj7, obj6);
        AddOp addOp2 = AddOp.$Pl;
        Object objApply22 = addOp2.apply2(obj6, DivideOp.modulo.apply2(obj4, objApply2));
        Object objApply23 = addOp.apply2(obj5, obj4);
        try {
            try {
                try {
                    try {
                        try {
                            $PcStringCopy$Ex((CharSequence) obj, ((Number) obj2).intValue(), (CharSequence) obj3, ((Number) objApply22).intValue(), ((Number) obj7).intValue());
                            Object objApply24 = addOp.apply2(obj7, objApply22);
                            Object objApply25 = addOp2.apply2(obj2, objApply24);
                            for (Object objApply26 = DivideOp.quotient.apply2(addOp.apply2(objApply23, objApply24), objApply2); !numbers.isZero((Number) objApply26); objApply26 = AddOp.$Mn.apply2(objApply26, Lit1)) {
                                try {
                                    try {
                                        try {
                                            try {
                                                try {
                                                    try {
                                                        $PcStringCopy$Ex((CharSequence) obj, ((Number) objApply25).intValue(), (CharSequence) obj3, ((Number) obj6).intValue(), ((Number) obj7).intValue());
                                                        objApply25 = AddOp.$Pl.apply2(objApply25, objApply2);
                                                    } catch (ClassCastException e) {
                                                        throw new WrongType(e, "%string-copy!", 4, obj7);
                                                    }
                                                } catch (ClassCastException e2) {
                                                    throw new WrongType(e2, "%string-copy!", 3, obj6);
                                                }
                                            } catch (ClassCastException e3) {
                                                throw new WrongType(e3, "%string-copy!", 2, obj3);
                                            }
                                        } catch (ClassCastException e4) {
                                            throw new WrongType(e4, "%string-copy!", 1, objApply25);
                                        }
                                    } catch (ClassCastException e5) {
                                        throw new WrongType(e5, "%string-copy!", 0, obj);
                                    }
                                } catch (ClassCastException e6) {
                                    throw new WrongType(e6, "zero?", 1, objApply26);
                                }
                            }
                            try {
                                CharSequence charSequence = (CharSequence) obj;
                                try {
                                    int iIntValue = ((Number) objApply25).intValue();
                                    try {
                                        CharSequence charSequence2 = (CharSequence) obj3;
                                        try {
                                            int iIntValue2 = ((Number) obj6).intValue();
                                            AddOp addOp3 = AddOp.$Pl;
                                            AddOp addOp4 = AddOp.$Mn;
                                            Object objApply27 = addOp3.apply2(obj6, addOp4.apply2(objApply23, addOp4.apply2(objApply25, obj2)));
                                            try {
                                                return $PcStringCopy$Ex(charSequence, iIntValue, charSequence2, iIntValue2, ((Number) objApply27).intValue());
                                            } catch (ClassCastException e7) {
                                                throw new WrongType(e7, "%string-copy!", 4, objApply27);
                                            }
                                        } catch (ClassCastException e8) {
                                            throw new WrongType(e8, "%string-copy!", 3, obj6);
                                        }
                                    } catch (ClassCastException e9) {
                                        throw new WrongType(e9, "%string-copy!", 2, obj3);
                                    }
                                } catch (ClassCastException e10) {
                                    throw new WrongType(e10, "%string-copy!", 1, objApply25);
                                }
                            } catch (ClassCastException e11) {
                                throw new WrongType(e11, "%string-copy!", 0, obj);
                            }
                        } catch (ClassCastException e12) {
                            throw new WrongType(e12, "%string-copy!", 4, obj7);
                        }
                    } catch (ClassCastException e13) {
                        throw new WrongType(e13, "%string-copy!", 3, objApply22);
                    }
                } catch (ClassCastException e14) {
                    throw new WrongType(e14, "%string-copy!", 2, obj3);
                }
            } catch (ClassCastException e15) {
                throw new WrongType(e15, "%string-copy!", 1, obj2);
            }
        } catch (ClassCastException e16) {
            throw new WrongType(e16, "%string-copy!", 0, obj);
        }
    }

    public static Object stringJoin$V(Object obj, Object[] objArr) throws Throwable {
        Object objCons;
        Object objStringConcatenate;
        LList lListMakeList = LList.makeList(objArr, 0);
        ApplyToArgs applyToArgs = Scheme.applyToArgs;
        try {
            Object obj2 = loc$let$Mnoptionals$St.get();
            Location location = loc$delim;
            try {
                try {
                    Object objApply3 = applyToArgs.apply3(location.get(), " ", strings.isString(location.get()) ? Boolean.TRUE : Boolean.FALSE);
                    Location location2 = loc$grammar;
                    try {
                        Object obj3 = location2.get();
                        SimpleSymbol simpleSymbol = Lit15;
                        Object objApply2 = applyToArgs.apply2(objApply3, applyToArgs.apply2(obj3, simpleSymbol));
                        if (lists.isPair(obj)) {
                            try {
                                Object obj4 = location2.get();
                                IsEqv isEqv = Scheme.isEqv;
                                Object objApply22 = isEqv.apply2(obj4, simpleSymbol);
                                Boolean bool = Boolean.FALSE;
                                if (objApply22 == bool ? isEqv.apply2(obj4, Lit16) == bool : objApply22 == bool) {
                                    if (isEqv.apply2(obj4, Lit17) == bool) {
                                        if (isEqv.apply2(obj4, Lit18) != bool) {
                                            try {
                                                objCons = lists.cons(lists.car.apply1(obj), lambda222buildit(lists.cdr.apply1(obj), LList.list1(location.get())));
                                            } catch (UnboundLocationException e) {
                                                e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1870, 53);
                                                throw e;
                                            }
                                        } else {
                                            try {
                                                objCons = misc.error$V("Illegal join grammar", new Object[]{location2.get(), string$Mnjoin});
                                            } catch (UnboundLocationException e2) {
                                                e2.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1873, 9);
                                                throw e2;
                                            }
                                        }
                                    } else {
                                        objCons = lambda222buildit(obj, LList.Empty);
                                    }
                                } else {
                                    objCons = lists.cons(lists.car.apply1(obj), lambda222buildit(lists.cdr.apply1(obj), LList.Empty));
                                }
                                objStringConcatenate = stringConcatenate(objCons);
                            } catch (UnboundLocationException e3) {
                                e3.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1862, 14);
                                throw e3;
                            }
                        } else if (lists.isNull(obj)) {
                            try {
                                if (location2.get() == Lit16) {
                                    objStringConcatenate = misc.error$V("Empty list cannot be joined with STRICT-INFIX grammar.", new Object[]{string$Mnjoin});
                                } else {
                                    objStringConcatenate = "";
                                }
                            } catch (UnboundLocationException e4) {
                                e4.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1880, 13);
                                throw e4;
                            }
                        } else {
                            objStringConcatenate = misc.error$V("STRINGS parameter not list.", new Object[]{obj, string$Mnjoin});
                        }
                        return applyToArgs.apply4(obj2, lListMakeList, objApply2, objStringConcatenate);
                    } catch (UnboundLocationException e5) {
                        e5.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1853, 6);
                        throw e5;
                    }
                } catch (UnboundLocationException e6) {
                    e6.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1852, 54);
                    throw e6;
                }
            } catch (UnboundLocationException e7) {
                e7.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1852, 34);
                throw e7;
            }
        } catch (UnboundLocationException e8) {
            e8.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1852, 3);
            throw e8;
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object applyN(ModuleMethod moduleMethod, Object[] objArr) {
        switch (moduleMethod.selector) {
            case 200:
                Object obj = objArr[0];
                Object obj2 = objArr[1];
                int length = objArr.length - 2;
                Object[] objArr2 = new Object[length];
                while (true) {
                    int i = length - 1;
                    if (i < 0) {
                        return substring$SlShared$V(obj, obj2, objArr2);
                    }
                    objArr2[i] = objArr[length + 1];
                    length = i;
                }
            case ErrorMessages.ERROR_CAMERA_NO_IMAGE_RETURNED /* 201 */:
            case 204:
            case 206:
            case 209:
            case 211:
            case 217:
            case 218:
            case 239:
            case 240:
            case LispEscapeFormat.ESCAPE_ALL /* 242 */:
            case 244:
            case 245:
            case 247:
            case 248:
            case ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION /* 250 */:
            case Telnet.WONT /* 252 */:
            case Telnet.DONT /* 254 */:
            case 255:
            case InputDeviceCompat.SOURCE_KEYBOARD /* 257 */:
            case 259:
            case 260:
            case 262:
            case Optimizer.OPTIMIZATION_STANDARD /* 263 */:
            case 265:
            case 267:
            case 271:
            case 277:
            case 280:
            case 281:
            case 282:
            case 283:
            case 287:
            case 289:
            case KeyboardChangeListener.MIN_KEYBOARD_HEIGHT /* 300 */:
            case ErrorMessages.ERROR_TWITTER_UNSUPPORTED_LOGIN_FUNCTION /* 301 */:
            case ErrorMessages.ERROR_TWITTER_REQUEST_DIRECT_MESSAGES_FAILED /* 309 */:
            case ErrorMessages.ERROR_TWITTER_STOP_FOLLOWING_FAILED /* 312 */:
            case 315:
            case 316:
            case 319:
            case 322:
            case 324:
            case 325:
            default:
                return super.applyN(moduleMethod, objArr);
            case ErrorMessages.ERROR_NO_CAMERA_PERMISSION /* 202 */:
                Object obj3 = objArr[0];
                int length2 = objArr.length - 1;
                Object[] objArr3 = new Object[length2];
                while (true) {
                    int i2 = length2 - 1;
                    if (i2 < 0) {
                        return stringCopy$V(obj3, objArr3);
                    }
                    objArr3[i2] = objArr[length2];
                    length2 = i2;
                }
            case 203:
                Object obj4 = objArr[0];
                Object obj5 = objArr[1];
                int length3 = objArr.length - 2;
                Object[] objArr4 = new Object[length3];
                while (true) {
                    int i3 = length3 - 1;
                    if (i3 < 0) {
                        return stringMap$V(obj4, obj5, objArr4);
                    }
                    objArr4[i3] = objArr[length3 + 1];
                    length3 = i3;
                }
            case 205:
                Object obj6 = objArr[0];
                Object obj7 = objArr[1];
                int length4 = objArr.length - 2;
                Object[] objArr5 = new Object[length4];
                while (true) {
                    int i4 = length4 - 1;
                    if (i4 < 0) {
                        return stringMap$Ex$V(obj6, obj7, objArr5);
                    }
                    objArr5[i4] = objArr[length4 + 1];
                    length4 = i4;
                }
            case 207:
                Object obj8 = objArr[0];
                Object obj9 = objArr[1];
                Object obj10 = objArr[2];
                int length5 = objArr.length - 3;
                Object[] objArr6 = new Object[length5];
                while (true) {
                    int i5 = length5 - 1;
                    if (i5 < 0) {
                        return stringFold$V(obj8, obj9, obj10, objArr6);
                    }
                    objArr6[i5] = objArr[length5 + 2];
                    length5 = i5;
                }
            case 208:
                Object obj11 = objArr[0];
                Object obj12 = objArr[1];
                Object obj13 = objArr[2];
                int length6 = objArr.length - 3;
                Object[] objArr7 = new Object[length6];
                while (true) {
                    int i6 = length6 - 1;
                    if (i6 < 0) {
                        return stringFoldRight$V(obj11, obj12, obj13, objArr7);
                    }
                    objArr7[i6] = objArr[length6 + 2];
                    length6 = i6;
                }
            case 210:
                Object obj14 = objArr[0];
                Object obj15 = objArr[1];
                Object obj16 = objArr[2];
                Object obj17 = objArr[3];
                int length7 = objArr.length - 4;
                Object[] objArr8 = new Object[length7];
                while (true) {
                    int i7 = length7 - 1;
                    if (i7 < 0) {
                        return stringUnfold$V(obj14, obj15, obj16, obj17, objArr8);
                    }
                    objArr8[i7] = objArr[length7 + 3];
                    length7 = i7;
                }
            case 212:
                Object obj18 = objArr[0];
                Object obj19 = objArr[1];
                Object obj20 = objArr[2];
                Object obj21 = objArr[3];
                int length8 = objArr.length - 4;
                Object[] objArr9 = new Object[length8];
                while (true) {
                    int i8 = length8 - 1;
                    if (i8 < 0) {
                        return stringUnfoldRight$V(obj18, obj19, obj20, obj21, objArr9);
                    }
                    objArr9[i8] = objArr[length8 + 3];
                    length8 = i8;
                }
            case 213:
                Object obj22 = objArr[0];
                Object obj23 = objArr[1];
                int length9 = objArr.length - 2;
                Object[] objArr10 = new Object[length9];
                while (true) {
                    int i9 = length9 - 1;
                    if (i9 < 0) {
                        return stringForEach$V(obj22, obj23, objArr10);
                    }
                    objArr10[i9] = objArr[length9 + 1];
                    length9 = i9;
                }
            case 214:
                Object obj24 = objArr[0];
                Object obj25 = objArr[1];
                int length10 = objArr.length - 2;
                Object[] objArr11 = new Object[length10];
                while (true) {
                    int i10 = length10 - 1;
                    if (i10 < 0) {
                        return stringForEachIndex$V(obj24, obj25, objArr11);
                    }
                    objArr11[i10] = objArr[length10 + 1];
                    length10 = i10;
                }
            case 215:
                Object obj26 = objArr[0];
                Object obj27 = objArr[1];
                int length11 = objArr.length - 2;
                Object[] objArr12 = new Object[length11];
                while (true) {
                    int i11 = length11 - 1;
                    if (i11 < 0) {
                        return stringEvery$V(obj26, obj27, objArr12);
                    }
                    objArr12[i11] = objArr[length11 + 1];
                    length11 = i11;
                }
            case 216:
                Object obj28 = objArr[0];
                Object obj29 = objArr[1];
                int length12 = objArr.length - 2;
                Object[] objArr13 = new Object[length12];
                while (true) {
                    int i12 = length12 - 1;
                    if (i12 < 0) {
                        return stringAny$V(obj28, obj29, objArr13);
                    }
                    objArr13[i12] = objArr[length12 + 1];
                    length12 = i12;
                }
            case 219:
                return $PcStringPrefixLength(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5]);
            case 220:
                return $PcStringSuffixLength(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5]);
            case 221:
                Object obj30 = objArr[0];
                Object obj31 = objArr[1];
                try {
                    int iIntValue = ((Number) obj31).intValue();
                    Object obj32 = objArr[2];
                    try {
                        int iIntValue2 = ((Number) obj32).intValue();
                        Object obj33 = objArr[3];
                        Object obj34 = objArr[4];
                        try {
                            int iIntValue3 = ((Number) obj34).intValue();
                            Object obj35 = objArr[5];
                            try {
                                return Integer.valueOf($PcStringPrefixLengthCi(obj30, iIntValue, iIntValue2, obj33, iIntValue3, ((Number) obj35).intValue()));
                            } catch (ClassCastException e) {
                                throw new WrongType(e, "%string-prefix-length-ci", 6, obj35);
                            }
                        } catch (ClassCastException e2) {
                            throw new WrongType(e2, "%string-prefix-length-ci", 5, obj34);
                        }
                    } catch (ClassCastException e3) {
                        throw new WrongType(e3, "%string-prefix-length-ci", 3, obj32);
                    }
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "%string-prefix-length-ci", 2, obj31);
                }
            case 222:
                Object obj36 = objArr[0];
                Object obj37 = objArr[1];
                try {
                    int iIntValue4 = ((Number) obj37).intValue();
                    Object obj38 = objArr[2];
                    try {
                        int iIntValue5 = ((Number) obj38).intValue();
                        Object obj39 = objArr[3];
                        Object obj40 = objArr[4];
                        try {
                            int iIntValue6 = ((Number) obj40).intValue();
                            Object obj41 = objArr[5];
                            try {
                                return Integer.valueOf($PcStringSuffixLengthCi(obj36, iIntValue4, iIntValue5, obj39, iIntValue6, ((Number) obj41).intValue()));
                            } catch (ClassCastException e5) {
                                throw new WrongType(e5, "%string-suffix-length-ci", 6, obj41);
                            }
                        } catch (ClassCastException e6) {
                            throw new WrongType(e6, "%string-suffix-length-ci", 5, obj40);
                        }
                    } catch (ClassCastException e7) {
                        throw new WrongType(e7, "%string-suffix-length-ci", 3, obj38);
                    }
                } catch (ClassCastException e8) {
                    throw new WrongType(e8, "%string-suffix-length-ci", 2, obj37);
                }
            case 223:
                Object obj42 = objArr[0];
                Object obj43 = objArr[1];
                int length13 = objArr.length - 2;
                Object[] objArr14 = new Object[length13];
                while (true) {
                    int i13 = length13 - 1;
                    if (i13 < 0) {
                        return stringPrefixLength$V(obj42, obj43, objArr14);
                    }
                    objArr14[i13] = objArr[length13 + 1];
                    length13 = i13;
                }
            case 224:
                Object obj44 = objArr[0];
                Object obj45 = objArr[1];
                int length14 = objArr.length - 2;
                Object[] objArr15 = new Object[length14];
                while (true) {
                    int i14 = length14 - 1;
                    if (i14 < 0) {
                        return stringSuffixLength$V(obj44, obj45, objArr15);
                    }
                    objArr15[i14] = objArr[length14 + 1];
                    length14 = i14;
                }
            case 225:
                Object obj46 = objArr[0];
                Object obj47 = objArr[1];
                int length15 = objArr.length - 2;
                Object[] objArr16 = new Object[length15];
                while (true) {
                    int i15 = length15 - 1;
                    if (i15 < 0) {
                        return stringPrefixLengthCi$V(obj46, obj47, objArr16);
                    }
                    objArr16[i15] = objArr[length15 + 1];
                    length15 = i15;
                }
            case 226:
                Object obj48 = objArr[0];
                Object obj49 = objArr[1];
                int length16 = objArr.length - 2;
                Object[] objArr17 = new Object[length16];
                while (true) {
                    int i16 = length16 - 1;
                    if (i16 < 0) {
                        return stringSuffixLengthCi$V(obj48, obj49, objArr17);
                    }
                    objArr17[i16] = objArr[length16 + 1];
                    length16 = i16;
                }
            case 227:
                Object obj50 = objArr[0];
                Object obj51 = objArr[1];
                int length17 = objArr.length - 2;
                Object[] objArr18 = new Object[length17];
                while (true) {
                    int i17 = length17 - 1;
                    if (i17 < 0) {
                        return isStringPrefix$V(obj50, obj51, objArr18);
                    }
                    objArr18[i17] = objArr[length17 + 1];
                    length17 = i17;
                }
            case YaVersion.YOUNG_ANDROID_VERSION /* 228 */:
                Object obj52 = objArr[0];
                Object obj53 = objArr[1];
                int length18 = objArr.length - 2;
                Object[] objArr19 = new Object[length18];
                while (true) {
                    int i18 = length18 - 1;
                    if (i18 < 0) {
                        return isStringSuffix$V(obj52, obj53, objArr19);
                    }
                    objArr19[i18] = objArr[length18 + 1];
                    length18 = i18;
                }
            case 229:
                Object obj54 = objArr[0];
                Object obj55 = objArr[1];
                int length19 = objArr.length - 2;
                Object[] objArr20 = new Object[length19];
                while (true) {
                    int i19 = length19 - 1;
                    if (i19 < 0) {
                        return isStringPrefixCi$V(obj54, obj55, objArr20);
                    }
                    objArr20[i19] = objArr[length19 + 1];
                    length19 = i19;
                }
            case 230:
                Object obj56 = objArr[0];
                Object obj57 = objArr[1];
                int length20 = objArr.length - 2;
                Object[] objArr21 = new Object[length20];
                while (true) {
                    int i20 = length20 - 1;
                    if (i20 < 0) {
                        return isStringSuffixCi$V(obj56, obj57, objArr21);
                    }
                    objArr21[i20] = objArr[length20 + 1];
                    length20 = i20;
                }
            case 231:
                return $PcStringPrefix$Qu(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5]);
            case 232:
                return $PcStringSuffix$Qu(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5]);
            case 233:
                return $PcStringPrefixCi$Qu(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5]);
            case 234:
                return $PcStringSuffixCi$Qu(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5]);
            case 235:
                return $PcStringCompare(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6], objArr[7], objArr[8]);
            case 236:
                return $PcStringCompareCi(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6], objArr[7], objArr[8]);
            case 237:
                Object obj58 = objArr[0];
                Object obj59 = objArr[1];
                Object obj60 = objArr[2];
                Object obj61 = objArr[3];
                Object obj62 = objArr[4];
                int length21 = objArr.length - 5;
                Object[] objArr22 = new Object[length21];
                while (true) {
                    int i21 = length21 - 1;
                    if (i21 < 0) {
                        return stringCompare$V(obj58, obj59, obj60, obj61, obj62, objArr22);
                    }
                    objArr22[i21] = objArr[length21 + 4];
                    length21 = i21;
                }
            case 238:
                Object obj63 = objArr[0];
                Object obj64 = objArr[1];
                Object obj65 = objArr[2];
                Object obj66 = objArr[3];
                Object obj67 = objArr[4];
                int length22 = objArr.length - 5;
                Object[] objArr23 = new Object[length22];
                while (true) {
                    int i22 = length22 - 1;
                    if (i22 < 0) {
                        return stringCompareCi$V(obj63, obj64, obj65, obj66, obj67, objArr23);
                    }
                    objArr23[i22] = objArr[length22 + 4];
                    length22 = i22;
                }
            case LispEscapeFormat.ESCAPE_NORMAL /* 241 */:
                Object obj68 = objArr[0];
                Object obj69 = objArr[1];
                int length23 = objArr.length - 2;
                Object[] objArr24 = new Object[length23];
                while (true) {
                    int i23 = length23 - 1;
                    if (i23 < 0) {
                        return string$Eq$V(obj68, obj69, objArr24);
                    }
                    objArr24[i23] = objArr[length23 + 1];
                    length23 = i23;
                }
            case 243:
                Object obj70 = objArr[0];
                Object obj71 = objArr[1];
                int length24 = objArr.length - 2;
                Object[] objArr25 = new Object[length24];
                while (true) {
                    int i24 = length24 - 1;
                    if (i24 < 0) {
                        return string$Ls$Gr$V(obj70, obj71, objArr25);
                    }
                    objArr25[i24] = objArr[length24 + 1];
                    length24 = i24;
                }
            case 246:
                Object obj72 = objArr[0];
                Object obj73 = objArr[1];
                int length25 = objArr.length - 2;
                Object[] objArr26 = new Object[length25];
                while (true) {
                    int i25 = length25 - 1;
                    if (i25 < 0) {
                        return string$Ls$V(obj72, obj73, objArr26);
                    }
                    objArr26[i25] = objArr[length25 + 1];
                    length25 = i25;
                }
            case 249:
                Object obj74 = objArr[0];
                Object obj75 = objArr[1];
                int length26 = objArr.length - 2;
                Object[] objArr27 = new Object[length26];
                while (true) {
                    int i26 = length26 - 1;
                    if (i26 < 0) {
                        return string$Gr$V(obj74, obj75, objArr27);
                    }
                    objArr27[i26] = objArr[length26 + 1];
                    length26 = i26;
                }
            case Telnet.WILL /* 251 */:
                Object obj76 = objArr[0];
                Object obj77 = objArr[1];
                int length27 = objArr.length - 2;
                Object[] objArr28 = new Object[length27];
                while (true) {
                    int i27 = length27 - 1;
                    if (i27 < 0) {
                        return string$Ls$Eq$V(obj76, obj77, objArr28);
                    }
                    objArr28[i27] = objArr[length27 + 1];
                    length27 = i27;
                }
            case Telnet.DO /* 253 */:
                Object obj78 = objArr[0];
                Object obj79 = objArr[1];
                int length28 = objArr.length - 2;
                Object[] objArr29 = new Object[length28];
                while (true) {
                    int i28 = length28 - 1;
                    if (i28 < 0) {
                        return string$Gr$Eq$V(obj78, obj79, objArr29);
                    }
                    objArr29[i28] = objArr[length28 + 1];
                    length28 = i28;
                }
            case 256:
                Object obj80 = objArr[0];
                Object obj81 = objArr[1];
                int length29 = objArr.length - 2;
                Object[] objArr30 = new Object[length29];
                while (true) {
                    int i29 = length29 - 1;
                    if (i29 < 0) {
                        return stringCi$Eq$V(obj80, obj81, objArr30);
                    }
                    objArr30[i29] = objArr[length29 + 1];
                    length29 = i29;
                }
            case 258:
                Object obj82 = objArr[0];
                Object obj83 = objArr[1];
                int length30 = objArr.length - 2;
                Object[] objArr31 = new Object[length30];
                while (true) {
                    int i30 = length30 - 1;
                    if (i30 < 0) {
                        return stringCi$Ls$Gr$V(obj82, obj83, objArr31);
                    }
                    objArr31[i30] = objArr[length30 + 1];
                    length30 = i30;
                }
            case 261:
                Object obj84 = objArr[0];
                Object obj85 = objArr[1];
                int length31 = objArr.length - 2;
                Object[] objArr32 = new Object[length31];
                while (true) {
                    int i31 = length31 - 1;
                    if (i31 < 0) {
                        return stringCi$Ls$V(obj84, obj85, objArr32);
                    }
                    objArr32[i31] = objArr[length31 + 1];
                    length31 = i31;
                }
            case 264:
                Object obj86 = objArr[0];
                Object obj87 = objArr[1];
                int length32 = objArr.length - 2;
                Object[] objArr33 = new Object[length32];
                while (true) {
                    int i32 = length32 - 1;
                    if (i32 < 0) {
                        return stringCi$Gr$V(obj86, obj87, objArr33);
                    }
                    objArr33[i32] = objArr[length32 + 1];
                    length32 = i32;
                }
            case 266:
                Object obj88 = objArr[0];
                Object obj89 = objArr[1];
                int length33 = objArr.length - 2;
                Object[] objArr34 = new Object[length33];
                while (true) {
                    int i33 = length33 - 1;
                    if (i33 < 0) {
                        return stringCi$Ls$Eq$V(obj88, obj89, objArr34);
                    }
                    objArr34[i33] = objArr[length33 + 1];
                    length33 = i33;
                }
            case 268:
                Object obj90 = objArr[0];
                Object obj91 = objArr[1];
                int length34 = objArr.length - 2;
                Object[] objArr35 = new Object[length34];
                while (true) {
                    int i34 = length34 - 1;
                    if (i34 < 0) {
                        return stringCi$Gr$Eq$V(obj90, obj91, objArr35);
                    }
                    objArr35[i34] = objArr[length34 + 1];
                    length34 = i34;
                }
            case 269:
                return $PcStringHash(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4]);
            case 270:
                Object obj92 = objArr[0];
                int length35 = objArr.length - 1;
                Object[] objArr36 = new Object[length35];
                while (true) {
                    int i35 = length35 - 1;
                    if (i35 < 0) {
                        return stringHash$V(obj92, objArr36);
                    }
                    objArr36[i35] = objArr[length35];
                    length35 = i35;
                }
            case 272:
                Object obj93 = objArr[0];
                int length36 = objArr.length - 1;
                Object[] objArr37 = new Object[length36];
                while (true) {
                    int i36 = length36 - 1;
                    if (i36 < 0) {
                        return stringHashCi$V(obj93, objArr37);
                    }
                    objArr37[i36] = objArr[length36];
                    length36 = i36;
                }
            case 273:
                Object obj94 = objArr[0];
                int length37 = objArr.length - 1;
                Object[] objArr38 = new Object[length37];
                while (true) {
                    int i37 = length37 - 1;
                    if (i37 < 0) {
                        return stringUpcase$V(obj94, objArr38);
                    }
                    objArr38[i37] = objArr[length37];
                    length37 = i37;
                }
            case 274:
                Object obj95 = objArr[0];
                int length38 = objArr.length - 1;
                Object[] objArr39 = new Object[length38];
                while (true) {
                    int i38 = length38 - 1;
                    if (i38 < 0) {
                        return stringUpcase$Ex$V(obj95, objArr39);
                    }
                    objArr39[i38] = objArr[length38];
                    length38 = i38;
                }
            case 275:
                Object obj96 = objArr[0];
                int length39 = objArr.length - 1;
                Object[] objArr40 = new Object[length39];
                while (true) {
                    int i39 = length39 - 1;
                    if (i39 < 0) {
                        return stringDowncase$V(obj96, objArr40);
                    }
                    objArr40[i39] = objArr[length39];
                    length39 = i39;
                }
            case 276:
                Object obj97 = objArr[0];
                int length40 = objArr.length - 1;
                Object[] objArr41 = new Object[length40];
                while (true) {
                    int i40 = length40 - 1;
                    if (i40 < 0) {
                        return stringDowncase$Ex$V(obj97, objArr41);
                    }
                    objArr41[i40] = objArr[length40];
                    length40 = i40;
                }
            case 278:
                Object obj98 = objArr[0];
                int length41 = objArr.length - 1;
                Object[] objArr42 = new Object[length41];
                while (true) {
                    int i41 = length41 - 1;
                    if (i41 < 0) {
                        return stringTitlecase$Ex$V(obj98, objArr42);
                    }
                    objArr42[i41] = objArr[length41];
                    length41 = i41;
                }
            case 279:
                Object obj99 = objArr[0];
                int length42 = objArr.length - 1;
                Object[] objArr43 = new Object[length42];
                while (true) {
                    int i42 = length42 - 1;
                    if (i42 < 0) {
                        return stringTitlecase$V(obj99, objArr43);
                    }
                    objArr43[i42] = objArr[length42];
                    length42 = i42;
                }
            case 284:
                Object obj100 = objArr[0];
                int length43 = objArr.length - 1;
                Object[] objArr44 = new Object[length43];
                while (true) {
                    int i43 = length43 - 1;
                    if (i43 < 0) {
                        return stringTrim$V(obj100, objArr44);
                    }
                    objArr44[i43] = objArr[length43];
                    length43 = i43;
                }
            case 285:
                Object obj101 = objArr[0];
                int length44 = objArr.length - 1;
                Object[] objArr45 = new Object[length44];
                while (true) {
                    int i44 = length44 - 1;
                    if (i44 < 0) {
                        return stringTrimRight$V(obj101, objArr45);
                    }
                    objArr45[i44] = objArr[length44];
                    length44 = i44;
                }
            case 286:
                Object obj102 = objArr[0];
                int length45 = objArr.length - 1;
                Object[] objArr46 = new Object[length45];
                while (true) {
                    int i45 = length45 - 1;
                    if (i45 < 0) {
                        return stringTrimBoth$V(obj102, objArr46);
                    }
                    objArr46[i45] = objArr[length45];
                    length45 = i45;
                }
            case 288:
                Object obj103 = objArr[0];
                Object obj104 = objArr[1];
                int length46 = objArr.length - 2;
                Object[] objArr47 = new Object[length46];
                while (true) {
                    int i46 = length46 - 1;
                    if (i46 < 0) {
                        return stringPadRight$V(obj103, obj104, objArr47);
                    }
                    objArr47[i46] = objArr[length46 + 1];
                    length46 = i46;
                }
            case 290:
                Object obj105 = objArr[0];
                Object obj106 = objArr[1];
                int length47 = objArr.length - 2;
                Object[] objArr48 = new Object[length47];
                while (true) {
                    int i47 = length47 - 1;
                    if (i47 < 0) {
                        return stringPad$V(obj105, obj106, objArr48);
                    }
                    objArr48[i47] = objArr[length47 + 1];
                    length47 = i47;
                }
            case 291:
                Object obj107 = objArr[0];
                Object obj108 = objArr[1];
                int length48 = objArr.length - 2;
                Object[] objArr49 = new Object[length48];
                while (true) {
                    int i48 = length48 - 1;
                    if (i48 < 0) {
                        return stringDelete$V(obj107, obj108, objArr49);
                    }
                    objArr49[i48] = objArr[length48 + 1];
                    length48 = i48;
                }
            case 292:
                Object obj109 = objArr[0];
                Object obj110 = objArr[1];
                int length49 = objArr.length - 2;
                Object[] objArr50 = new Object[length49];
                while (true) {
                    int i49 = length49 - 1;
                    if (i49 < 0) {
                        return stringFilter$V(obj109, obj110, objArr50);
                    }
                    objArr50[i49] = objArr[length49 + 1];
                    length49 = i49;
                }
            case 293:
                Object obj111 = objArr[0];
                Object obj112 = objArr[1];
                int length50 = objArr.length - 2;
                Object[] objArr51 = new Object[length50];
                while (true) {
                    int i50 = length50 - 1;
                    if (i50 < 0) {
                        return stringIndex$V(obj111, obj112, objArr51);
                    }
                    objArr51[i50] = objArr[length50 + 1];
                    length50 = i50;
                }
            case 294:
                Object obj113 = objArr[0];
                Object obj114 = objArr[1];
                int length51 = objArr.length - 2;
                Object[] objArr52 = new Object[length51];
                while (true) {
                    int i51 = length51 - 1;
                    if (i51 < 0) {
                        return stringIndexRight$V(obj113, obj114, objArr52);
                    }
                    objArr52[i51] = objArr[length51 + 1];
                    length51 = i51;
                }
            case 295:
                Object obj115 = objArr[0];
                Object obj116 = objArr[1];
                int length52 = objArr.length - 2;
                Object[] objArr53 = new Object[length52];
                while (true) {
                    int i52 = length52 - 1;
                    if (i52 < 0) {
                        return stringSkip$V(obj115, obj116, objArr53);
                    }
                    objArr53[i52] = objArr[length52 + 1];
                    length52 = i52;
                }
            case 296:
                Object obj117 = objArr[0];
                Object obj118 = objArr[1];
                int length53 = objArr.length - 2;
                Object[] objArr54 = new Object[length53];
                while (true) {
                    int i53 = length53 - 1;
                    if (i53 < 0) {
                        return stringSkipRight$V(obj117, obj118, objArr54);
                    }
                    objArr54[i53] = objArr[length53 + 1];
                    length53 = i53;
                }
            case 297:
                Object obj119 = objArr[0];
                Object obj120 = objArr[1];
                int length54 = objArr.length - 2;
                Object[] objArr55 = new Object[length54];
                while (true) {
                    int i54 = length54 - 1;
                    if (i54 < 0) {
                        return stringCount$V(obj119, obj120, objArr55);
                    }
                    objArr55[i54] = objArr[length54 + 1];
                    length54 = i54;
                }
            case 298:
                Object obj121 = objArr[0];
                Object obj122 = objArr[1];
                int length55 = objArr.length - 2;
                Object[] objArr56 = new Object[length55];
                while (true) {
                    int i55 = length55 - 1;
                    if (i55 < 0) {
                        return stringFill$Ex$V(obj121, obj122, objArr56);
                    }
                    objArr56[i55] = objArr[length55 + 1];
                    length55 = i55;
                }
            case 299:
                int length56 = objArr.length;
                int i56 = length56 - 3;
                Object obj123 = objArr[0];
                Object obj124 = objArr[1];
                try {
                    int iIntValue7 = ((Number) obj124).intValue();
                    Object obj125 = objArr[2];
                    try {
                        CharSequence charSequence = (CharSequence) obj125;
                        if (i56 <= 0) {
                            return stringCopy$Ex(obj123, iIntValue7, charSequence);
                        }
                        int i57 = length56 - 4;
                        Object obj126 = objArr[3];
                        try {
                            int iIntValue8 = ((Number) obj126).intValue();
                            if (i57 <= 0) {
                                return stringCopy$Ex(obj123, iIntValue7, charSequence, iIntValue8);
                            }
                            Object obj127 = objArr[4];
                            try {
                                return stringCopy$Ex(obj123, iIntValue7, charSequence, iIntValue8, ((Number) obj127).intValue());
                            } catch (ClassCastException e9) {
                                throw new WrongType(e9, "string-copy!", 5, obj127);
                            }
                        } catch (ClassCastException e10) {
                            throw new WrongType(e10, "string-copy!", 4, obj126);
                        }
                    } catch (ClassCastException e11) {
                        throw new WrongType(e11, "string-copy!", 3, obj125);
                    }
                } catch (ClassCastException e12) {
                    throw new WrongType(e12, "string-copy!", 2, obj124);
                }
            case ErrorMessages.ERROR_TWITTER_BLANK_CONSUMER_KEY_OR_SECRET /* 302 */:
                Object obj128 = objArr[0];
                try {
                    CharSequence charSequence2 = (CharSequence) obj128;
                    Object obj129 = objArr[1];
                    try {
                        int iIntValue9 = ((Number) obj129).intValue();
                        Object obj130 = objArr[2];
                        try {
                            CharSequence charSequence3 = (CharSequence) obj130;
                            Object obj131 = objArr[3];
                            try {
                                int iIntValue10 = ((Number) obj131).intValue();
                                Object obj132 = objArr[4];
                                try {
                                    return $PcStringCopy$Ex(charSequence2, iIntValue9, charSequence3, iIntValue10, ((Number) obj132).intValue());
                                } catch (ClassCastException e13) {
                                    throw new WrongType(e13, "%string-copy!", 5, obj132);
                                }
                            } catch (ClassCastException e14) {
                                throw new WrongType(e14, "%string-copy!", 4, obj131);
                            }
                        } catch (ClassCastException e15) {
                            throw new WrongType(e15, "%string-copy!", 3, obj130);
                        }
                    } catch (ClassCastException e16) {
                        throw new WrongType(e16, "%string-copy!", 2, obj129);
                    }
                } catch (ClassCastException e17) {
                    throw new WrongType(e17, "%string-copy!", 1, obj128);
                }
            case ErrorMessages.ERROR_TWITTER_EXCEPTION /* 303 */:
                Object obj133 = objArr[0];
                Object obj134 = objArr[1];
                int length57 = objArr.length - 2;
                Object[] objArr57 = new Object[length57];
                while (true) {
                    int i58 = length57 - 1;
                    if (i58 < 0) {
                        return stringContains$V(obj133, obj134, objArr57);
                    }
                    objArr57[i58] = objArr[length57 + 1];
                    length57 = i58;
                }
            case ErrorMessages.ERROR_TWITTER_UNABLE_TO_GET_ACCESS_TOKEN /* 304 */:
                Object obj135 = objArr[0];
                Object obj136 = objArr[1];
                int length58 = objArr.length - 2;
                Object[] objArr58 = new Object[length58];
                while (true) {
                    int i59 = length58 - 1;
                    if (i59 < 0) {
                        return stringContainsCi$V(obj135, obj136, objArr58);
                    }
                    objArr58[i59] = objArr[length58 + 1];
                    length58 = i59;
                }
            case ErrorMessages.ERROR_TWITTER_AUTHORIZATION_FAILED /* 305 */:
                return $PcKmpSearch(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6]);
            case ErrorMessages.ERROR_TWITTER_SET_STATUS_FAILED /* 306 */:
                Object obj137 = objArr[0];
                int length59 = objArr.length - 1;
                Object[] objArr59 = new Object[length59];
                while (true) {
                    int i60 = length59 - 1;
                    if (i60 < 0) {
                        return makeKmpRestartVector$V(obj137, objArr59);
                    }
                    objArr59[i60] = objArr[length59];
                    length59 = i60;
                }
            case ErrorMessages.ERROR_TWITTER_REQUEST_MENTIONS_FAILED /* 307 */:
                return kmpStep(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5]);
            case ErrorMessages.ERROR_TWITTER_REQUEST_FOLLOWERS_FAILED /* 308 */:
                Object obj138 = objArr[0];
                Object obj139 = objArr[1];
                Object obj140 = objArr[2];
                Object obj141 = objArr[3];
                int length60 = objArr.length - 4;
                Object[] objArr60 = new Object[length60];
                while (true) {
                    int i61 = length60 - 1;
                    if (i61 < 0) {
                        return stringKmpPartialSearch$V(obj138, obj139, obj140, obj141, objArr60);
                    }
                    objArr60[i61] = objArr[length60 + 3];
                    length60 = i61;
                }
            case ErrorMessages.ERROR_TWITTER_DIRECT_MESSAGE_FAILED /* 310 */:
                Object obj142 = objArr[0];
                int length61 = objArr.length - 1;
                Object[] objArr61 = new Object[length61];
                while (true) {
                    int i62 = length61 - 1;
                    if (i62 < 0) {
                        return stringReverse$V(obj142, objArr61);
                    }
                    objArr61[i62] = objArr[length61];
                    length61 = i62;
                }
            case ErrorMessages.ERROR_TWITTER_FOLLOW_FAILED /* 311 */:
                Object obj143 = objArr[0];
                int length62 = objArr.length - 1;
                Object[] objArr62 = new Object[length62];
                while (true) {
                    int i63 = length62 - 1;
                    if (i63 < 0) {
                        return stringReverse$Ex$V(obj143, objArr62);
                    }
                    objArr62[i63] = objArr[length62];
                    length62 = i63;
                }
            case ErrorMessages.ERROR_TWITTER_REQUEST_FRIEND_TIMELINE_FAILED /* 313 */:
                Object obj144 = objArr[0];
                int length63 = objArr.length - 1;
                Object[] objArr63 = new Object[length63];
                while (true) {
                    int i64 = length63 - 1;
                    if (i64 < 0) {
                        return string$To$List$V(obj144, objArr63);
                    }
                    objArr63[i64] = objArr[length63];
                    length63 = i64;
                }
            case ErrorMessages.ERROR_TWITTER_SEARCH_FAILED /* 314 */:
                return stringAppend$SlShared$V(objArr);
            case 317:
                Object obj145 = objArr[0];
                int length64 = objArr.length - 1;
                Object[] objArr64 = new Object[length64];
                while (true) {
                    int i65 = length64 - 1;
                    if (i65 < 0) {
                        return stringConcatenateReverse$V(obj145, objArr64);
                    }
                    objArr64[i65] = objArr[length64];
                    length64 = i65;
                }
            case 318:
                Object obj146 = objArr[0];
                int length65 = objArr.length - 1;
                Object[] objArr65 = new Object[length65];
                while (true) {
                    int i66 = length65 - 1;
                    if (i66 < 0) {
                        return stringConcatenateReverse$SlShared$V(obj146, objArr65);
                    }
                    objArr65[i66] = objArr[length65];
                    length65 = i66;
                }
            case ScreenDensityUtil.DEFAULT_NORMAL_SHORT_DIMENSION /* 320 */:
                Object obj147 = objArr[0];
                Object obj148 = objArr[1];
                Object obj149 = objArr[2];
                Object obj150 = objArr[3];
                int length66 = objArr.length - 4;
                Object[] objArr66 = new Object[length66];
                while (true) {
                    int i67 = length66 - 1;
                    if (i67 < 0) {
                        return stringReplace$V(obj147, obj148, obj149, obj150, objArr66);
                    }
                    objArr66[i67] = objArr[length66 + 3];
                    length66 = i67;
                }
            case 321:
                Object obj151 = objArr[0];
                int length67 = objArr.length - 1;
                Object[] objArr67 = new Object[length67];
                while (true) {
                    int i68 = length67 - 1;
                    if (i68 < 0) {
                        return stringTokenize$V(obj151, objArr67);
                    }
                    objArr67[i68] = objArr[length67];
                    length67 = i68;
                }
            case 323:
                Object obj152 = objArr[0];
                Object obj153 = objArr[1];
                int length68 = objArr.length - 2;
                Object[] objArr68 = new Object[length68];
                while (true) {
                    int i69 = length68 - 1;
                    if (i69 < 0) {
                        return xsubstring$V(obj152, obj153, objArr68);
                    }
                    objArr68[i69] = objArr[length68 + 1];
                    length68 = i69;
                }
            case 326:
                Object obj154 = objArr[0];
                Object obj155 = objArr[1];
                Object obj156 = objArr[2];
                Object obj157 = objArr[3];
                int length69 = objArr.length - 4;
                Object[] objArr69 = new Object[length69];
                while (true) {
                    int i70 = length69 - 1;
                    if (i70 < 0) {
                        return stringXcopy$Ex$V(obj154, obj155, obj156, obj157, objArr69);
                    }
                    objArr69[i70] = objArr[length69 + 3];
                    length69 = i70;
                }
            case 327:
                return $PcMultispanRepcopy$Ex(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6]);
            case 328:
                Object obj158 = objArr[0];
                int length70 = objArr.length - 1;
                Object[] objArr70 = new Object[length70];
                while (true) {
                    int i71 = length70 - 1;
                    if (i71 < 0) {
                        return stringJoin$V(obj158, objArr70);
                    }
                    objArr70[i71] = objArr[length70];
                    length70 = i71;
                }
        }
    }

    public static Object lambda222buildit(Object obj, Object obj2) {
        frame96 frame96Var = new frame96();
        frame96Var.f5final = obj2;
        return frame96Var.lambda223recur(obj);
    }

    public class frame96 extends ModuleBody {

        /* renamed from: final, reason: not valid java name */
        Object f5final;

        public Object lambda223recur(Object obj) {
            if (!lists.isPair(obj)) {
                return this.f5final;
            }
            try {
                return lists.cons(srfi13.loc$delim.get(), lists.cons(lists.car.apply1(obj), lambda223recur(lists.cdr.apply1(obj))));
            } catch (UnboundLocationException e) {
                e.setLine("/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm", 1857, 13);
                throw e;
            }
        }
    }
}
