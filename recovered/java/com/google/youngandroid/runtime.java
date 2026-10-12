package com.google.youngandroid;

import android.content.Context;
import android.os.Handler;
import android.text.format.Formatter;
import androidx.constraintlayout.solver.widgets.Optimizer;
import androidx.core.view.InputDeviceCompat;
import androidx.fragment.app.FragmentTransaction;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.google.appinventor.components.common.ComponentConstants;
import com.google.appinventor.components.common.OptionList;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.common.YaVersion;
import com.google.appinventor.components.runtime.Clock;
import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.ComponentContainer;
import com.google.appinventor.components.runtime.EventDispatcher;
import com.google.appinventor.components.runtime.Form;
import com.google.appinventor.components.runtime.OptionHelper;
import com.google.appinventor.components.runtime.errors.PermissionException;
import com.google.appinventor.components.runtime.errors.StopBlocksExecution;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import com.google.appinventor.components.runtime.util.AssetFetcher;
import com.google.appinventor.components.runtime.util.ComponentUtil;
import com.google.appinventor.components.runtime.util.Continuation;
import com.google.appinventor.components.runtime.util.ContinuationUtil;
import com.google.appinventor.components.runtime.util.CsvUtil;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.FullScreenVideoUtil;
import com.google.appinventor.components.runtime.util.JavaStringUtils;
import com.google.appinventor.components.runtime.util.PropertyUtil;
import com.google.appinventor.components.runtime.util.RetValManager;
import com.google.appinventor.components.runtime.util.TypeUtil;
import com.google.appinventor.components.runtime.util.YailDictionary;
import com.google.appinventor.components.runtime.util.YailList;
import com.google.appinventor.components.runtime.util.YailNumberToString;
import com.google.appinventor.components.runtime.util.YailObject;
import gnu.bytecode.ClassType;
import gnu.expr.GenericProc;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.expr.Special;
import gnu.kawa.functions.AddOp;
import gnu.kawa.functions.Apply;
import gnu.kawa.functions.ApplyToArgs;
import gnu.kawa.functions.Arithmetic;
import gnu.kawa.functions.BitwiseOp;
import gnu.kawa.functions.CallCC;
import gnu.kawa.functions.DivideOp;
import gnu.kawa.functions.Format;
import gnu.kawa.functions.GetNamedPart;
import gnu.kawa.functions.IsEqual;
import gnu.kawa.functions.LispEscapeFormat;
import gnu.kawa.functions.MultiplyOp;
import gnu.kawa.functions.NumberCompare;
import gnu.kawa.lispexpr.LangObjType;
import gnu.kawa.lispexpr.LispLanguage;
import gnu.kawa.reflect.Invoke;
import gnu.kawa.reflect.SlotGet;
import gnu.kawa.reflect.SlotSet;
import gnu.lists.Consumer;
import gnu.lists.FString;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.lists.PairWithPosition;
import gnu.mapping.CallContext;
import gnu.mapping.Environment;
import gnu.mapping.Location;
import gnu.mapping.Procedure;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Symbol;
import gnu.mapping.ThreadLocation;
import gnu.mapping.UnboundLocationException;
import gnu.mapping.Values;
import gnu.mapping.WrongType;
import gnu.math.DFloNum;
import gnu.math.IntFraction;
import gnu.math.IntNum;
import gnu.math.Numeric;
import gnu.math.RealNum;
import gnu.text.Char;
import java.lang.reflect.InvocationTargetException;
import java.util.Calendar;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kawa.Telnet;
import kawa.lang.Macro;
import kawa.lang.Quote;
import kawa.lang.SyntaxForms;
import kawa.lang.SyntaxPattern;
import kawa.lang.SyntaxRule;
import kawa.lang.SyntaxRules;
import kawa.lang.SyntaxTemplate;
import kawa.lang.TemplateScope;
import kawa.lib.characters;
import kawa.lib.lists;
import kawa.lib.misc;
import kawa.lib.numbers;
import kawa.lib.ports;
import kawa.lib.strings;
import kawa.lib.thread;
import kawa.standard.Scheme;
import kawa.standard.expt;
import kawa.standard.syntax_case;
import kotlinx.coroutines.scheduling.WorkQueueKt;

/* loaded from: classes.dex */
public class runtime extends ModuleBody implements Runnable {
    public static final ModuleMethod $Pcset$Mnand$Mncoerce$Mnproperty$Ex;
    public static final ModuleMethod $Pcset$Mnsubform$Mnlayout$Mnproperty$Ex;
    public static Object $Stalpha$Mnopaque$St;
    public static Object $Stcolor$Mnalpha$Mnposition$St;
    public static Object $Stcolor$Mnblue$Mnposition$St;
    public static Object $Stcolor$Mngreen$Mnposition$St;
    public static Object $Stcolor$Mnred$Mnposition$St;
    public static Boolean $Stdebug$St;
    public static final ModuleMethod $Stformat$Mninexact$St;
    public static Object $Stinit$Mnthunk$Mnenvironment$St;
    public static String $Stjava$Mnexception$Mnmessage$St;
    public static final Macro $Stlist$Mnfor$Mnruntime$St;
    public static Object $Stmax$Mncolor$Mncomponent$St;
    public static Object $Stnon$Mncoercible$Mnvalue$St;
    public static IntNum $Stnum$Mnconnections$St;
    public static DFloNum $Stpi$St;
    public static Random $Strandom$Mnnumber$Mngenerator$St;
    public static IntNum $Strepl$Mnport$St;
    public static String $Strepl$Mnserver$Mnaddress$St;
    public static Boolean $Strun$Mntelnet$Mnrepl$St;
    public static Object $Sttest$Mnenvironment$St;
    public static Object $Sttest$Mnglobal$Mnvar$Mnenvironment$St;
    public static Boolean $Sttesting$St;
    public static String $Stthe$Mnempty$Mnstring$Mnprinted$Mnrep$St;
    public static Object $Stthe$Mnnull$Mnvalue$Mnprinted$Mnrep$St;
    public static Object $Stthe$Mnnull$Mnvalue$St;
    public static Object $Stthis$Mnform$St;
    public static Object $Stthis$Mnis$Mnthe$Mnrepl$St;
    public static Object $Stui$Mnhandler$St;
    public static final ModuleMethod $Styail$Mnbreak$St;
    public static SimpleSymbol $Styail$Mnlist$St;
    public static final runtime $instance;
    public static final Class AssetFetcher;
    public static final Class ContinuationUtil;
    public static final Class CsvUtil;
    public static final Class Double;
    public static Object ERROR_DIVISION_BY_ZERO;
    public static final Class Float;
    public static final Class Integer;
    public static final Class JavaCollection;
    public static final Class JavaIterator;
    public static final Class JavaMap;
    public static final Class JavaStringUtils;
    public static final Class KawaEnvironment;
    static final SimpleSymbol Lit0;
    static final SimpleSymbol Lit1;
    static final SimpleSymbol Lit10;
    static final SyntaxPattern Lit100;
    static final SyntaxTemplate Lit101;
    static final SimpleSymbol Lit102;
    static final SyntaxPattern Lit103;
    static final SyntaxTemplate Lit104;
    static final SimpleSymbol Lit105;
    static final SyntaxRules Lit106;
    static final SimpleSymbol Lit107;
    static final SyntaxRules Lit108;
    static final SimpleSymbol Lit109;
    static final SimpleSymbol Lit11;
    static final SyntaxPattern Lit110;
    static final SyntaxTemplate Lit111;
    static final SyntaxTemplate Lit112;
    static final SyntaxTemplate Lit113;
    static final SimpleSymbol Lit114;
    static final SyntaxTemplate Lit115;
    static final SyntaxTemplate Lit116;
    static final SyntaxTemplate Lit117;
    static final SimpleSymbol Lit118;
    static final SyntaxPattern Lit119;
    static final SimpleSymbol Lit12;
    static final SyntaxTemplate Lit120;
    static final SyntaxTemplate Lit121;
    static final SimpleSymbol Lit122;
    static final SyntaxTemplate Lit123;
    static final SyntaxTemplate Lit124;
    static final SyntaxTemplate Lit125;
    static final SyntaxTemplate Lit126;
    static final SimpleSymbol Lit127;
    static final SyntaxRules Lit128;
    static final SimpleSymbol Lit129;
    static final SimpleSymbol Lit13;
    static final SyntaxRules Lit130;
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
    static final PairWithPosition Lit140;
    static final PairWithPosition Lit141;
    static final PairWithPosition Lit142;
    static final PairWithPosition Lit143;
    static final PairWithPosition Lit144;
    static final PairWithPosition Lit145;
    static final PairWithPosition Lit146;
    static final SimpleSymbol Lit147;
    static final SimpleSymbol Lit148;
    static final PairWithPosition Lit149;
    static final SimpleSymbol Lit15;
    static final PairWithPosition Lit150;
    static final PairWithPosition Lit151;
    static final PairWithPosition Lit152;
    static final PairWithPosition Lit153;
    static final SimpleSymbol Lit154;
    static final PairWithPosition Lit155;
    static final PairWithPosition Lit156;
    static final PairWithPosition Lit157;
    static final PairWithPosition Lit158;
    static final PairWithPosition Lit159;
    static final SimpleSymbol Lit16;
    static final PairWithPosition Lit160;
    static final PairWithPosition Lit161;
    static final PairWithPosition Lit162;
    static final PairWithPosition Lit163;
    static final PairWithPosition Lit164;
    static final PairWithPosition Lit165;
    static final SimpleSymbol Lit166;
    static final SyntaxRules Lit167;
    static final SimpleSymbol Lit168;
    static final SyntaxRules Lit169;
    static final SimpleSymbol Lit17;
    static final SimpleSymbol Lit170;
    static final SyntaxRules Lit171;
    static final SimpleSymbol Lit172;
    static final SyntaxRules Lit173;
    static final SimpleSymbol Lit174;
    static final SyntaxRules Lit175;
    static final SimpleSymbol Lit176;
    static final SyntaxRules Lit177;
    static final SimpleSymbol Lit178;
    static final SyntaxRules Lit179;
    static final SimpleSymbol Lit18;
    static final SimpleSymbol Lit180;
    static final SyntaxRules Lit181;
    static final SimpleSymbol Lit182;
    static final SyntaxRules Lit183;
    static final SimpleSymbol Lit184;
    static final SyntaxRules Lit185;
    static final SimpleSymbol Lit186;
    static final SimpleSymbol Lit187;
    static final SimpleSymbol Lit188;
    static final SimpleSymbol Lit189;
    static final DFloNum Lit19;
    static final SimpleSymbol Lit190;
    static final SimpleSymbol Lit191;
    static final SimpleSymbol Lit192;
    static final SimpleSymbol Lit193;
    static final SimpleSymbol Lit194;
    static final SimpleSymbol Lit195;
    static final SimpleSymbol Lit196;
    static final SimpleSymbol Lit197;
    static final SimpleSymbol Lit198;
    static final SimpleSymbol Lit199;
    static final PairWithPosition Lit2;
    static final DFloNum Lit20;
    static final SimpleSymbol Lit200;
    static final SimpleSymbol Lit201;
    static final SimpleSymbol Lit202;
    static final SimpleSymbol Lit203;
    static final SimpleSymbol Lit204;
    static final SimpleSymbol Lit205;
    static final SimpleSymbol Lit206;
    static final SimpleSymbol Lit207;
    static final SimpleSymbol Lit208;
    static final SimpleSymbol Lit209;
    static final DFloNum Lit21;
    static final SimpleSymbol Lit210;
    static final SimpleSymbol Lit211;
    static final SimpleSymbol Lit212;
    static final SimpleSymbol Lit213;
    static final SimpleSymbol Lit214;
    static final SimpleSymbol Lit215;
    static final SimpleSymbol Lit216;
    static final SimpleSymbol Lit217;
    static final SimpleSymbol Lit218;
    static final SimpleSymbol Lit219;
    static final DFloNum Lit22;
    static final SimpleSymbol Lit220;
    static final SyntaxRules Lit221;
    static final SimpleSymbol Lit222;
    static final SimpleSymbol Lit223;
    static final SimpleSymbol Lit224;
    static final SimpleSymbol Lit225;
    static final SimpleSymbol Lit226;
    static final SimpleSymbol Lit227;
    static final SimpleSymbol Lit228;
    static final SimpleSymbol Lit229;
    static final SimpleSymbol Lit23;
    static final SimpleSymbol Lit230;
    static final SimpleSymbol Lit231;
    static final SimpleSymbol Lit232;
    static final SimpleSymbol Lit233;
    static final SimpleSymbol Lit234;
    static final SimpleSymbol Lit235;
    static final SimpleSymbol Lit236;
    static final SimpleSymbol Lit237;
    static final SimpleSymbol Lit238;
    static final SimpleSymbol Lit239;
    static final IntNum Lit24;
    static final SimpleSymbol Lit240;
    static final SimpleSymbol Lit241;
    static final SimpleSymbol Lit242;
    static final SimpleSymbol Lit243;
    static final SimpleSymbol Lit244;
    static final SimpleSymbol Lit245;
    static final SimpleSymbol Lit246;
    static final SimpleSymbol Lit247;
    static final SimpleSymbol Lit248;
    static final SimpleSymbol Lit249;
    static final IntNum Lit25;
    static final SimpleSymbol Lit250;
    static final SimpleSymbol Lit251;
    static final SimpleSymbol Lit252;
    static final SimpleSymbol Lit253;
    static final SimpleSymbol Lit254;
    static final SimpleSymbol Lit255;
    static final SimpleSymbol Lit256;
    static final SimpleSymbol Lit257;
    static final SimpleSymbol Lit258;
    static final SimpleSymbol Lit259;
    static final IntNum Lit26;
    static final SimpleSymbol Lit260;
    static final SimpleSymbol Lit261;
    static final SimpleSymbol Lit262;
    static final SimpleSymbol Lit263;
    static final SimpleSymbol Lit264;
    static final SimpleSymbol Lit265;
    static final SimpleSymbol Lit266;
    static final SimpleSymbol Lit267;
    static final SimpleSymbol Lit268;
    static final SimpleSymbol Lit269;
    static final IntNum Lit27;
    static final SimpleSymbol Lit270;
    static final SimpleSymbol Lit271;
    static final SimpleSymbol Lit272;
    static final SimpleSymbol Lit273;
    static final SimpleSymbol Lit274;
    static final SimpleSymbol Lit275;
    static final SimpleSymbol Lit276;
    static final SimpleSymbol Lit277;
    static final SimpleSymbol Lit278;
    static final SimpleSymbol Lit279;
    static final DFloNum Lit28;
    static final SimpleSymbol Lit280;
    static final SimpleSymbol Lit281;
    static final SimpleSymbol Lit282;
    static final SimpleSymbol Lit283;
    static final SimpleSymbol Lit284;
    static final SimpleSymbol Lit285;
    static final SimpleSymbol Lit286;
    static final SimpleSymbol Lit287;
    static final SimpleSymbol Lit288;
    static final SimpleSymbol Lit289;
    static final IntNum Lit29;
    static final SimpleSymbol Lit290;
    static final SimpleSymbol Lit291;
    static final SimpleSymbol Lit292;
    static final SimpleSymbol Lit293;
    static final SimpleSymbol Lit294;
    static final SimpleSymbol Lit295;
    static final SimpleSymbol Lit296;
    static final SimpleSymbol Lit297;
    static final SimpleSymbol Lit298;
    static final SimpleSymbol Lit299;
    static final SimpleSymbol Lit3;
    static final DFloNum Lit30;
    static final SimpleSymbol Lit300;
    static final SimpleSymbol Lit301;
    static final SimpleSymbol Lit302;
    static final SimpleSymbol Lit303;
    static final SimpleSymbol Lit304;
    static final SimpleSymbol Lit305;
    static final SimpleSymbol Lit306;
    static final SimpleSymbol Lit307;
    static final SimpleSymbol Lit308;
    static final SimpleSymbol Lit309;
    static final DFloNum Lit31;
    static final SimpleSymbol Lit310;
    static final SimpleSymbol Lit311;
    static final SimpleSymbol Lit312;
    static final SimpleSymbol Lit313;
    static final SimpleSymbol Lit314;
    static final SimpleSymbol Lit315;
    static final SimpleSymbol Lit316;
    static final SimpleSymbol Lit317;
    static final SimpleSymbol Lit318;
    static final SimpleSymbol Lit319;
    static final IntNum Lit32;
    static final SimpleSymbol Lit320;
    static final SimpleSymbol Lit321;
    static final SimpleSymbol Lit322;
    static final SimpleSymbol Lit323;
    static final SimpleSymbol Lit324;
    static final SimpleSymbol Lit325;
    static final SimpleSymbol Lit326;
    static final SimpleSymbol Lit327;
    static final SimpleSymbol Lit328;
    static final SimpleSymbol Lit329;
    static final IntNum Lit33;
    static final SimpleSymbol Lit330;
    static final SimpleSymbol Lit331;
    static final SimpleSymbol Lit332;
    static final SimpleSymbol Lit333;
    static final SimpleSymbol Lit334;
    static final SimpleSymbol Lit335;
    static final SimpleSymbol Lit336;
    static final SimpleSymbol Lit337;
    static final SimpleSymbol Lit338;
    static final SimpleSymbol Lit339;
    static final IntNum Lit34;
    static final SimpleSymbol Lit340;
    static final SimpleSymbol Lit341;
    static final SimpleSymbol Lit342;
    static final SimpleSymbol Lit343;
    static final SimpleSymbol Lit344;
    static final SimpleSymbol Lit345;
    static final SimpleSymbol Lit346;
    static final SimpleSymbol Lit347;
    static final SimpleSymbol Lit348;
    static final SimpleSymbol Lit349;
    static final IntNum Lit35;
    static final SimpleSymbol Lit350;
    static final SimpleSymbol Lit351;
    static final SimpleSymbol Lit352;
    static final SimpleSymbol Lit353;
    static final SimpleSymbol Lit354;
    static final SimpleSymbol Lit355;
    static final SimpleSymbol Lit356;
    static final SimpleSymbol Lit357;
    static final SimpleSymbol Lit358;
    static final SimpleSymbol Lit359;
    static final Char Lit36;
    static final SimpleSymbol Lit360;
    static final SimpleSymbol Lit361;
    static final SimpleSymbol Lit362;
    static final SimpleSymbol Lit363;
    static final SimpleSymbol Lit364;
    static final SimpleSymbol Lit365;
    static final SimpleSymbol Lit366;
    static final SimpleSymbol Lit367;
    static final SimpleSymbol Lit368;
    static final SimpleSymbol Lit369;
    static final Char Lit37;
    static final SimpleSymbol Lit370;
    static final SimpleSymbol Lit371;
    static final SimpleSymbol Lit372;
    static final SimpleSymbol Lit373;
    static final SimpleSymbol Lit374;
    static final SimpleSymbol Lit375;
    static final SimpleSymbol Lit376;
    static final SimpleSymbol Lit377;
    static final SimpleSymbol Lit378;
    static final SimpleSymbol Lit379;
    static final Char Lit38;
    static final SimpleSymbol Lit380;
    static final SimpleSymbol Lit381;
    static final SimpleSymbol Lit382;
    static final SimpleSymbol Lit383;
    static final SimpleSymbol Lit384;
    static final SimpleSymbol Lit385;
    static final SimpleSymbol Lit386;
    static final SimpleSymbol Lit387;
    static final SimpleSymbol Lit388;
    static final SimpleSymbol Lit389;
    static final Char Lit39;
    static final SimpleSymbol Lit390;
    static final SimpleSymbol Lit391;
    static final SimpleSymbol Lit392;
    static final SimpleSymbol Lit393;
    static final SimpleSymbol Lit394;
    static final SimpleSymbol Lit395;
    static final SimpleSymbol Lit396;
    static final SimpleSymbol Lit397;
    static final SimpleSymbol Lit398;
    static final SimpleSymbol Lit399;
    static final Class Lit4;
    static final DFloNum Lit40;
    static final SimpleSymbol Lit400;
    static final SimpleSymbol Lit401;
    static final SimpleSymbol Lit402;
    static final SimpleSymbol Lit403;
    static final SimpleSymbol Lit404;
    static final SimpleSymbol Lit405;
    static final SimpleSymbol Lit406;
    static final SimpleSymbol Lit407;
    static final SyntaxRules Lit408;
    static final SimpleSymbol Lit409;
    static final IntFraction Lit41;
    static final SimpleSymbol Lit410;
    static final SimpleSymbol Lit411;
    static final SimpleSymbol Lit412;
    static final SimpleSymbol Lit413;
    static final SimpleSymbol Lit414;
    static final SimpleSymbol Lit415;
    static final SimpleSymbol Lit416;
    static final SimpleSymbol Lit417;
    static final SimpleSymbol Lit418;
    static final SimpleSymbol Lit419;
    static final IntFraction Lit42;
    static final SimpleSymbol Lit420;
    static final SimpleSymbol Lit421;
    static final SimpleSymbol Lit422;
    static final SimpleSymbol Lit423;
    static final SimpleSymbol Lit424;
    static final SimpleSymbol Lit425;
    static final SimpleSymbol Lit426;
    static final SimpleSymbol Lit427;
    static final SimpleSymbol Lit428;
    static final SimpleSymbol Lit429;
    static final SimpleSymbol Lit43;
    static final SimpleSymbol Lit430;
    static final SimpleSymbol Lit431;
    static final SimpleSymbol Lit432;
    static final SimpleSymbol Lit433;
    static final SimpleSymbol Lit434;
    static final SimpleSymbol Lit435;
    static final SimpleSymbol Lit436;
    static final SimpleSymbol Lit437;
    static final SimpleSymbol Lit438;
    static final SimpleSymbol Lit439;
    static final SimpleSymbol Lit44;
    static final SimpleSymbol Lit440;
    static final SimpleSymbol Lit441;
    static final SimpleSymbol Lit442;
    static final SimpleSymbol Lit443;
    static final SimpleSymbol Lit444;
    static final SimpleSymbol Lit445;
    static final SimpleSymbol Lit446;
    static final SimpleSymbol Lit447;
    static final SimpleSymbol Lit448;
    static final SimpleSymbol Lit449;
    static final PairWithPosition Lit45;
    static final SimpleSymbol Lit450;
    static final SimpleSymbol Lit451;
    static final SimpleSymbol Lit452;
    static final SimpleSymbol Lit453;
    static final SimpleSymbol Lit454;
    static final SimpleSymbol Lit455;
    static final SimpleSymbol Lit456;
    static final SimpleSymbol Lit457;
    static final SimpleSymbol Lit458;
    static final SimpleSymbol Lit459;
    static final SimpleSymbol Lit46;
    static final SimpleSymbol Lit460;
    static final SimpleSymbol Lit461;
    static final SimpleSymbol Lit462;
    static final SimpleSymbol Lit463;
    static final SimpleSymbol Lit464;
    static final SimpleSymbol Lit465;
    static final SimpleSymbol Lit466;
    static final SimpleSymbol Lit467;
    static final SimpleSymbol Lit468;
    static final SimpleSymbol Lit469;
    static final IntNum Lit47;
    static final SimpleSymbol Lit470;
    static final SimpleSymbol Lit471;
    static final SimpleSymbol Lit472;
    static final SimpleSymbol Lit473;
    static final SimpleSymbol Lit474;
    static final SimpleSymbol Lit475;
    static final SimpleSymbol Lit476;
    static final SimpleSymbol Lit477;
    static final SimpleSymbol Lit478;
    static final SimpleSymbol Lit479;
    static final IntNum Lit48;
    static final SimpleSymbol Lit480;
    static final SimpleSymbol Lit481;
    static final SimpleSymbol Lit482;
    static final SimpleSymbol Lit483;
    static final SimpleSymbol Lit484;
    static final SimpleSymbol Lit485;
    static final SimpleSymbol Lit486;
    static final SimpleSymbol Lit487;
    static final SimpleSymbol Lit488;
    static final SimpleSymbol Lit489;
    static final SimpleSymbol Lit49;
    static final SimpleSymbol Lit490;
    static final SimpleSymbol Lit491;
    static final SimpleSymbol Lit492;
    static final SimpleSymbol Lit493;
    static final SimpleSymbol Lit494;
    static final SimpleSymbol Lit495;
    static final SimpleSymbol Lit496;
    static final SimpleSymbol Lit497;
    static final SimpleSymbol Lit498;
    static final SimpleSymbol Lit499;
    static final SimpleSymbol Lit5;
    static final IntNum Lit50;
    static final SimpleSymbol Lit500;
    static final SimpleSymbol Lit501;
    static final SimpleSymbol Lit502;
    static final SimpleSymbol Lit503;
    static final SimpleSymbol Lit504;
    static final SimpleSymbol Lit505;
    static final SimpleSymbol Lit506;
    static final SimpleSymbol Lit507;
    static final SimpleSymbol Lit508;
    static final SimpleSymbol Lit509;
    static final IntNum Lit51;
    static final SimpleSymbol Lit510;
    static final SimpleSymbol Lit511;
    static final SimpleSymbol Lit512;
    static final SimpleSymbol Lit513;
    static final SimpleSymbol Lit514;
    static final SimpleSymbol Lit515;
    static final SimpleSymbol Lit516;
    static final SimpleSymbol Lit517;
    static final SimpleSymbol Lit518;
    static final SimpleSymbol Lit519;
    static final IntNum Lit52;
    static final SimpleSymbol Lit520;
    static final SimpleSymbol Lit521;
    static final SimpleSymbol Lit522;
    static final SimpleSymbol Lit523;
    static final SimpleSymbol Lit524;
    static final SimpleSymbol Lit525;
    static final SimpleSymbol Lit526;
    static final SimpleSymbol Lit527;
    static final SimpleSymbol Lit528;
    static final SimpleSymbol Lit529;
    static final IntNum Lit53;
    static final SimpleSymbol Lit530;
    static final SimpleSymbol Lit531;
    static final SimpleSymbol Lit532;
    static final SimpleSymbol Lit533;
    static final SimpleSymbol Lit534;
    static final SimpleSymbol Lit535;
    static final SimpleSymbol Lit536;
    static final SimpleSymbol Lit537;
    static final SimpleSymbol Lit538;
    static final SimpleSymbol Lit539;
    static final IntNum Lit54;
    static final SimpleSymbol Lit540;
    static final SimpleSymbol Lit55;
    static final SimpleSymbol Lit56;
    static final SimpleSymbol Lit57;
    static final SimpleSymbol Lit58;
    static final SimpleSymbol Lit59;
    static final SimpleSymbol Lit6;
    static final SimpleSymbol Lit60;
    static final SyntaxPattern Lit61;
    static final SyntaxTemplate Lit62;
    static final SimpleSymbol Lit63;
    static final SyntaxRules Lit64;
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
    static final SimpleSymbol Lit76;
    static final SimpleSymbol Lit77;
    static final SimpleSymbol Lit78;
    static final SimpleSymbol Lit79;
    static final SimpleSymbol Lit8;
    static final SimpleSymbol Lit80;
    static final SyntaxRules Lit81;
    static final SimpleSymbol Lit82;
    static final SyntaxRules Lit83;
    static final SimpleSymbol Lit84;
    static final SyntaxRules Lit85;
    static final SimpleSymbol Lit86;
    static final SyntaxRules Lit87;
    static final SimpleSymbol Lit88;
    static final SyntaxRules Lit89;
    static final SimpleSymbol Lit9;
    static final SimpleSymbol Lit90;
    static final SyntaxRules Lit91;
    static final SimpleSymbol Lit92;
    static final SyntaxRules Lit93;
    static final SimpleSymbol Lit94;
    static final SyntaxRules Lit95;
    static final SimpleSymbol Lit96;
    static final SyntaxRules Lit97;
    static final SimpleSymbol Lit98;
    static final SimpleSymbol Lit99;
    public static final Class Long;
    public static final Class Matcher;
    public static final Class Pattern;
    public static final Class PermissionException;
    public static final Class Short;
    public static final ClassType SimpleForm;
    public static final Class StopBlocksExecution;
    public static final Class String;
    public static final Class TypeUtil;
    public static final Class YailDictionary;
    public static final Class YailList;
    public static final Class YailNumberToString;
    public static final Class YailRuntimeError;
    public static final ModuleMethod acos$Mndegrees;
    public static final Macro add$Mncomponent;
    public static final ModuleMethod add$Mncomponent$Mnwithin$Mnrepl;
    public static final ModuleMethod add$Mnglobal$Mnvar$Mnto$Mncurrent$Mnform$Mnenvironment;
    public static final ModuleMethod add$Mninit$Mnthunk;
    public static final ModuleMethod add$Mnto$Mncurrent$Mnform$Mnenvironment;
    public static final ModuleMethod all$Mncoercible$Qu;
    public static final ModuleMethod alternate$Mnnumber$Mn$Grstring$Mnbinary;
    public static final Macro and$Mndelayed;
    public static final ModuleMethod android$Mnlog;
    public static final ModuleMethod appinventor$Mnnumber$Mn$Grstring;
    public static final ModuleMethod array$Mn$Grlist;
    public static final ModuleMethod as$Mnnumber;
    public static final ModuleMethod asin$Mndegrees;
    public static final ModuleMethod atan$Mndegrees;
    public static final ModuleMethod atan2$Mndegrees;
    public static final ModuleMethod avg;
    public static final ModuleMethod back;
    public static final ModuleMethod boolean$Mn$Grstring;
    public static final ModuleMethod boolean$Mneq$Qu;
    public static final ModuleMethod boolean$Mnleq$Qu;
    public static final ModuleMethod boolean$Mnlt$Qu;
    public static final ModuleMethod but$Mnlast;
    public static final ModuleMethod call$MnInitialize$Mnof$Mncomponents;
    public static final ModuleMethod call$Mncomponent$Mnmethod;
    public static final ModuleMethod call$Mncomponent$Mnmethod$Mnwith$Mnblocking$Mncontinuation;
    public static final ModuleMethod call$Mncomponent$Mnmethod$Mnwith$Mncontinuation;
    public static final ModuleMethod call$Mncomponent$Mntype$Mnmethod;
    public static final ModuleMethod call$Mncomponent$Mntype$Mnmethod$Mnwith$Mnblocking$Mncontinuation;
    public static final ModuleMethod call$Mncomponent$Mntype$Mnmethod$Mnwith$Mncontinuation;
    public static final ModuleMethod call$Mnwith$Mncoerced$Mnargs;
    public static final ModuleMethod call$Mnyail$Mnprimitive;
    public static final ModuleMethod clarify;
    public static final ModuleMethod clarify1;
    public static final ModuleMethod clear$Mncurrent$Mnform;
    public static final ModuleMethod clear$Mninit$Mnthunks;
    public static Object clip$Mnto$Mnjava$Mnint$Mnrange;
    public static final ModuleMethod close$Mnapplication;
    public static final ModuleMethod close$Mnscreen;
    public static final ModuleMethod close$Mnscreen$Mnwith$Mnplain$Mntext;
    public static final ModuleMethod close$Mnscreen$Mnwith$Mnvalue;
    public static final ModuleMethod coerce$Mnarg;
    public static final ModuleMethod coerce$Mnargs;
    public static final ModuleMethod coerce$Mnto$Mnboolean;
    public static final ModuleMethod coerce$Mnto$Mncomponent;
    public static final ModuleMethod coerce$Mnto$Mncomponent$Mnand$Mnverify;
    public static final ModuleMethod coerce$Mnto$Mncomponent$Mnof$Mntype;
    public static final ModuleMethod coerce$Mnto$Mndictionary;
    public static final ModuleMethod coerce$Mnto$Mnenum;
    public static final ModuleMethod coerce$Mnto$Mninstant;
    public static final ModuleMethod coerce$Mnto$Mnkey;
    public static final ModuleMethod coerce$Mnto$Mnnumber;
    public static final ModuleMethod coerce$Mnto$Mnnumber$Mnlist;
    public static final ModuleMethod coerce$Mnto$Mnpair;
    public static final ModuleMethod coerce$Mnto$Mnstring;
    public static final ModuleMethod coerce$Mnto$Mntext;
    public static final ModuleMethod coerce$Mnto$Mnyail$Mnlist;
    public static final ModuleMethod component$Mneq$Qu;
    public static final ModuleMethod component$Mnleq$Qu;
    public static final ModuleMethod component$Mnlt$Qu;
    public static final ModuleMethod convert$Mnto$Mnstrings$Mnfor$Mncsv;
    public static final ModuleMethod cos$Mndegrees;
    public static final Macro def;
    public static final Macro define$Mnevent;
    public static final Macro define$Mnevent$Mnhelper;
    public static final Macro define$Mnform;
    public static final Macro define$Mnform$Mninternal;
    public static final Macro define$Mngeneric$Mnevent;
    public static final Macro define$Mnrepl$Mnform;
    public static final ModuleMethod degrees$Mn$Grradians;
    public static final ModuleMethod degrees$Mn$Grradians$Mninternal;
    public static final ModuleMethod delete$Mnfrom$Mncurrent$Mnform$Mnenvironment;
    public static final Macro do$Mnafter$Mnform$Mncreation;
    public static final ModuleMethod drop;
    public static final ModuleMethod enum$Mntype$Qu;
    public static final ModuleMethod enum$Qu;
    public static final Class errorMessages;
    public static final ModuleMethod filter$Mntype$Mnin$Mncurrent$Mnform$Mnenvironment;
    public static final Macro filter_nondest;
    public static final Macro foreach;
    public static final Macro foreach$Mnwith$Mnbreak;
    public static final ModuleMethod format$Mnas$Mndecimal;
    public static final Macro forrange;
    public static final Macro forrange$Mnwith$Mnbreak;
    public static final ModuleMethod front;
    public static final Macro gen$Mnevent$Mnname;
    public static final Macro gen$Mngeneric$Mnevent$Mnname;
    public static final Macro gen$Mnsimple$Mncomponent$Mntype;
    public static final ModuleMethod generate$Mnruntime$Mntype$Mnerror;
    public static final Macro get$Mnall$Mncomponents;
    public static final Macro get$Mncomponent;
    public static final ModuleMethod get$Mndisplay$Mnrepresentation;
    public static final ModuleMethod get$Mninit$Mnthunk;
    public static Object get$Mnjson$Mndisplay$Mnrepresentation;
    public static Object get$Mnoriginal$Mndisplay$Mnrepresentation;
    public static final ModuleMethod get$Mnplain$Mnstart$Mntext;
    public static final ModuleMethod get$Mnproperty;
    public static final ModuleMethod get$Mnproperty$Mnand$Mncheck;
    public static final ModuleMethod get$Mnserver$Mnaddress$Mnfrom$Mnwifi;
    public static final ModuleMethod get$Mnstart$Mnvalue;
    public static final Macro get$Mnvar;
    public static final ModuleMethod gm;
    static Numeric highest;
    public static final ModuleMethod in$Mnui;
    public static final ModuleMethod indexof;
    public static final ModuleMethod init$Mnruntime;
    public static final ModuleMethod insert$Mnyail$Mnlist$Mnheader;
    public static final ModuleMethod internal$Mnbinary$Mnconvert;
    public static final ModuleMethod is$Mnbase10$Qu;
    public static final ModuleMethod is$Mnbinary$Qu;
    public static final ModuleMethod is$Mncoercible$Qu;
    public static final ModuleMethod is$Mneq$Qu;
    public static final ModuleMethod is$Mnhexadecimal$Qu;
    public static final ModuleMethod is$Mnleq$Qu;
    public static final ModuleMethod is$Mnlt$Qu;
    public static final ModuleMethod is$Mnnumber$Qu;
    public static final ModuleMethod java$Mncollection$Mn$Grkawa$Mnlist;
    public static final ModuleMethod java$Mncollection$Mn$Gryail$Mnlist;
    public static final ModuleMethod java$Mnmap$Mn$Gryail$Mndictionary;
    public static final ModuleMethod join$Mnstrings;
    public static final ModuleMethod kawa$Mnlist$Mn$Gryail$Mnlist;
    static final ModuleMethod lambda$Fn11;
    static final ModuleMethod lambda$Fn15;
    static final ModuleMethod lambda$Fn8;
    public static final Macro lexical$Mnvalue;
    public static final ModuleMethod list$Mneq$Qu;
    public static final ModuleMethod list$Mnleq$Qu;
    public static final ModuleMethod list$Mnlt$Qu;
    public static final ModuleMethod list$Mnmax;
    public static final ModuleMethod list$Mnmin;
    public static final ModuleMethod list$Mnnumber$Mnonly;
    static final Location loc$component;
    static final Location loc$non$Mncoercible$Mnvalue;
    static final Location loc$possible$Mncomponent;
    public static final ModuleMethod lookup$Mncomponent;
    public static final ModuleMethod lookup$Mnglobal$Mnvar$Mnin$Mncurrent$Mnform$Mnenvironment;
    public static final ModuleMethod lookup$Mnin$Mncurrent$Mnform$Mnenvironment;
    static Numeric lowest;
    public static final ModuleMethod make$Mncolor;
    public static final ModuleMethod make$Mndictionary$Mnpair;
    public static final ModuleMethod make$Mndisjunct;
    public static final ModuleMethod make$Mnexact$Mnyail$Mninteger;
    public static final ModuleMethod make$Mnyail$Mndictionary;
    public static final ModuleMethod make$Mnyail$Mnlist;
    public static final Macro map_nondest;
    public static final ModuleMethod math$Mnconvert$Mnbin$Mndec;
    public static final ModuleMethod math$Mnconvert$Mndec$Mnbin;
    public static final ModuleMethod math$Mnconvert$Mndec$Mnhex;
    public static final ModuleMethod math$Mnconvert$Mnhex$Mndec;
    public static final Macro maxcomparator$Mnnondest;
    public static final ModuleMethod maxl;
    public static final ModuleMethod mean;
    public static final ModuleMethod merge;
    public static final ModuleMethod merge$Mnkey;
    public static final ModuleMethod mergesort;
    public static final ModuleMethod mergesort$Mnkey;
    public static final Macro mincomparator$Mnnondest;
    public static final ModuleMethod minl;
    public static final ModuleMethod mode;
    public static final ModuleMethod open$Mnanother$Mnscreen;
    public static final ModuleMethod open$Mnanother$Mnscreen$Mnwith$Mnstart$Mnvalue;
    public static final Macro or$Mndelayed;
    public static final ModuleMethod padded$Mnstring$Mn$Grnumber;
    public static final ModuleMethod pair$Mnok$Qu;
    public static final ModuleMethod patched$Mnnumber$Mn$Grstring$Mnbinary;
    public static final ModuleMethod process$Mnand$Mndelayed;
    public static final ModuleMethod process$Mnor$Mndelayed;
    public static final Macro process$Mnrepl$Mninput;
    public static final ModuleMethod radians$Mn$Grdegrees;
    public static final ModuleMethod radians$Mn$Grdegrees$Mninternal;
    public static final ModuleMethod random$Mnfraction;
    public static final ModuleMethod random$Mninteger;
    public static final ModuleMethod random$Mnset$Mnseed;
    public static final Macro reduceovereach;
    public static final ModuleMethod remove$Mncomponent;
    public static final ModuleMethod rename$Mncomponent;
    public static final ModuleMethod rename$Mnin$Mncurrent$Mnform$Mnenvironment;
    public static final ModuleMethod reset$Mncurrent$Mnform$Mnenvironment;
    public static final ModuleMethod sample$Mnstd$Mndev;
    public static final ModuleMethod sanitize$Mnatomic;
    public static final ModuleMethod sanitize$Mncomponent$Mndata;
    public static final ModuleMethod sanitize$Mnreturn$Mnvalue;
    public static final ModuleMethod send$Mnto$Mnblock;
    public static final ModuleMethod set$Mnand$Mncoerce$Mnproperty$Ex;
    public static final ModuleMethod set$Mnand$Mncoerce$Mnproperty$Mnand$Mncheck$Ex;
    public static final ModuleMethod set$Mnform$Mnname;
    public static final Macro set$Mnlexical$Ex;
    public static final ModuleMethod set$Mnthis$Mnform;
    public static final Macro set$Mnvar$Ex;
    public static final ModuleMethod set$Mnyail$Mnlist$Mncontents$Ex;
    public static final ModuleMethod show$Mnarglist$Mnno$Mnparens;
    public static final ModuleMethod signal$Mnruntime$Mnerror;
    public static final ModuleMethod signal$Mnruntime$Mnform$Mnerror;
    public static final String simple$Mncomponent$Mnpackage$Mnname;
    public static final ModuleMethod sin$Mndegrees;
    public static final Macro sortcomparator_nondest;
    public static final Macro sortkey_nondest;
    public static final ModuleMethod split$Mncolor;
    public static final ModuleMethod std$Mndev;
    public static final ModuleMethod std$Mnerr;
    public static final ModuleMethod string$Mncontains;
    public static final ModuleMethod string$Mncontains$Mnall;
    public static final ModuleMethod string$Mncontains$Mnany;
    public static final ModuleMethod string$Mnempty$Qu;
    public static final ModuleMethod string$Mnreplace;
    public static final ModuleMethod string$Mnreplace$Mnall;
    public static final ModuleMethod string$Mnreplace$Mnmappings$Mndictionary;
    public static final ModuleMethod string$Mnreplace$Mnmappings$Mnearliest$Mnoccurrence;
    public static final ModuleMethod string$Mnreplace$Mnmappings$Mnlongest$Mnstring;
    public static final ModuleMethod string$Mnreverse;
    public static final ModuleMethod string$Mnsplit;
    public static final ModuleMethod string$Mnsplit$Mnat$Mnany;
    public static final ModuleMethod string$Mnsplit$Mnat$Mnfirst;
    public static final ModuleMethod string$Mnsplit$Mnat$Mnfirst$Mnof$Mnany;
    public static final ModuleMethod string$Mnsplit$Mnat$Mnspaces;
    public static final ModuleMethod string$Mnstarts$Mnat;
    public static final ModuleMethod string$Mnsubstring;
    public static final ModuleMethod string$Mnto$Mnlower$Mncase;
    public static final ModuleMethod string$Mnto$Mnupper$Mncase;
    public static final ModuleMethod string$Mntrim;
    public static final ModuleMethod sum$Mnmean$Mnsquare$Mndiff;
    public static final ModuleMethod symbol$Mnappend;
    public static final ModuleMethod take;
    public static final ModuleMethod tan$Mndegrees;
    public static final ModuleMethod text$Mndeobfuscate;
    public static final ModuleMethod type$Mn$Grclass;
    public static final ModuleMethod type$Mnlt$Qu;
    public static final ModuleMethod typeof;
    public static PairWithPosition typeordering;
    public static final ModuleMethod unicode$Mnstring$Mn$Grlist;
    public static final Macro use$Mnjson$Mnformat;

    /* renamed from: while, reason: not valid java name */
    public static final Macro f0while;
    public static final Macro while$Mnwith$Mnbreak;
    public static final ModuleMethod yail$Mnalist$Mnlookup;
    public static final ModuleMethod yail$Mnatomic$Mnequal$Qu;
    public static final ModuleMethod yail$Mnceiling;
    public static final ModuleMethod yail$Mndictionary$Mnalist$Mnto$Mndict;
    public static final ModuleMethod yail$Mndictionary$Mncombine$Mndicts;
    public static final ModuleMethod yail$Mndictionary$Mncopy;
    public static final ModuleMethod yail$Mndictionary$Mndelete$Mnpair;
    public static final ModuleMethod yail$Mndictionary$Mndict$Mnto$Mnalist;
    public static final ModuleMethod yail$Mndictionary$Mnget$Mnkeys;
    public static final ModuleMethod yail$Mndictionary$Mnget$Mnvalues;
    public static final ModuleMethod yail$Mndictionary$Mnis$Mnkey$Mnin;
    public static final ModuleMethod yail$Mndictionary$Mnlength;
    public static final ModuleMethod yail$Mndictionary$Mnlookup;
    public static final ModuleMethod yail$Mndictionary$Mnrecursive$Mnlookup;
    public static final ModuleMethod yail$Mndictionary$Mnrecursive$Mnset;
    public static final ModuleMethod yail$Mndictionary$Mnset$Mnpair;
    public static final ModuleMethod yail$Mndictionary$Mnwalk;
    public static final ModuleMethod yail$Mndictionary$Qu;
    public static final ModuleMethod yail$Mndivide;
    public static final ModuleMethod yail$Mnequal$Qu;
    public static final ModuleMethod yail$Mnfloor;
    public static final ModuleMethod yail$Mnfor$Mneach;
    public static final ModuleMethod yail$Mnfor$Mnrange;
    public static final ModuleMethod yail$Mnfor$Mnrange$Mnwith$Mnnumeric$Mnchecked$Mnargs;
    public static final ModuleMethod yail$Mnlist$Mn$Grkawa$Mnlist;
    public static final ModuleMethod yail$Mnlist$Mnadd$Mnto$Mnlist$Ex;
    public static final ModuleMethod yail$Mnlist$Mnappend$Ex;
    public static final ModuleMethod yail$Mnlist$Mnbut$Mnfirst;
    public static final ModuleMethod yail$Mnlist$Mnbut$Mnlast;
    public static final ModuleMethod yail$Mnlist$Mncandidate$Qu;
    public static final ModuleMethod yail$Mnlist$Mncontents;
    public static final ModuleMethod yail$Mnlist$Mncopy;
    public static final ModuleMethod yail$Mnlist$Mnempty$Qu;
    public static final ModuleMethod yail$Mnlist$Mnfilter;
    public static final ModuleMethod yail$Mnlist$Mnfrom$Mncsv$Mnrow;
    public static final ModuleMethod yail$Mnlist$Mnfrom$Mncsv$Mntable;
    public static final ModuleMethod yail$Mnlist$Mnget$Mnitem;
    public static final ModuleMethod yail$Mnlist$Mnindex;
    public static final ModuleMethod yail$Mnlist$Mninsert$Mnitem$Ex;
    public static final ModuleMethod yail$Mnlist$Mnjoin$Mnwith$Mnseparator;
    public static final ModuleMethod yail$Mnlist$Mnlength;
    public static final ModuleMethod yail$Mnlist$Mnmap;
    public static final ModuleMethod yail$Mnlist$Mnmax$Mncomparator;
    public static final ModuleMethod yail$Mnlist$Mnmember$Qu;
    public static final ModuleMethod yail$Mnlist$Mnmin$Mncomparator;
    public static final ModuleMethod yail$Mnlist$Mnnecessary;
    public static final ModuleMethod yail$Mnlist$Mnpick$Mnrandom;
    public static final ModuleMethod yail$Mnlist$Mnreduce;
    public static final ModuleMethod yail$Mnlist$Mnremove$Mnitem$Ex;
    public static final ModuleMethod yail$Mnlist$Mnreverse;
    public static final ModuleMethod yail$Mnlist$Mnset$Mnitem$Ex;
    public static final ModuleMethod yail$Mnlist$Mnslice;
    public static final ModuleMethod yail$Mnlist$Mnsort;
    public static final ModuleMethod yail$Mnlist$Mnsort$Mncomparator;
    public static final ModuleMethod yail$Mnlist$Mnsort$Mnkey;
    public static final ModuleMethod yail$Mnlist$Mnto$Mncsv$Mnrow;
    public static final ModuleMethod yail$Mnlist$Mnto$Mncsv$Mntable;
    public static final ModuleMethod yail$Mnlist$Qu;
    public static final ModuleMethod yail$Mnmul;
    public static final ModuleMethod yail$Mnnot;
    public static final ModuleMethod yail$Mnnot$Mnequal$Qu;
    public static final ModuleMethod yail$Mnnumber$Mnrange;
    public static final ModuleMethod yail$Mnround;

    public runtime() {
        ModuleInfo.register(this);
    }

    public static void androidLog(Object obj) {
    }

    public static Object lookupGlobalVarInCurrentFormEnvironment(Symbol symbol) {
        return lookupGlobalVarInCurrentFormEnvironment(symbol, Boolean.FALSE);
    }

    public static Object lookupInCurrentFormEnvironment(Symbol symbol) {
        return lookupInCurrentFormEnvironment(symbol, Boolean.FALSE);
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext callContext) throws Throwable {
        Consumer consumer = callContext.consumer;
        Boolean bool = Boolean.FALSE;
        $Stdebug$St = bool;
        $Stthis$Mnis$Mnthe$Mnrepl$St = bool;
        $Sttesting$St = bool;
        $Stinit$Mnthunk$Mnenvironment$St = Environment.make("init-thunk-environment");
        $Sttest$Mnenvironment$St = Environment.make("test-env");
        $Sttest$Mnglobal$Mnvar$Mnenvironment$St = Environment.make("test-global-var-env");
        $Stthe$Mnnull$Mnvalue$St = null;
        $Stthe$Mnnull$Mnvalue$Mnprinted$Mnrep$St = "*nothing*";
        $Stthe$Mnempty$Mnstring$Mnprinted$Mnrep$St = "*empty-string*";
        $Stnon$Mncoercible$Mnvalue$St = Lit2;
        $Stjava$Mnexception$Mnmessage$St = "An internal system error occurred: ";
        get$Mnoriginal$Mndisplay$Mnrepresentation = lambda$Fn8;
        get$Mnjson$Mndisplay$Mnrepresentation = lambda$Fn11;
        $Strandom$Mnnumber$Mngenerator$St = new Random();
        AddOp addOp = AddOp.$Mn;
        Numeric numericExpt = expt.expt(Lit26, Lit27);
        IntNum intNum = Lit24;
        Object objApply2 = addOp.apply2(numericExpt, intNum);
        try {
            Numeric numeric = (Numeric) objApply2;
            highest = numeric;
            Object objApply1 = addOp.apply1(numeric);
            try {
                lowest = (Numeric) objApply1;
                clip$Mnto$Mnjava$Mnint$Mnrange = lambda$Fn15;
                ERROR_DIVISION_BY_ZERO = Integer.valueOf(ErrorMessages.ERROR_DIVISION_BY_ZERO);
                $Stpi$St = Lit28;
                $Styail$Mnlist$St = Lit43;
                typeordering = Lit45;
                IntNum intNum2 = Lit47;
                $Stmax$Mncolor$Mncomponent$St = numbers.exact(intNum2);
                $Stcolor$Mnalpha$Mnposition$St = numbers.exact(Lit50);
                $Stcolor$Mnred$Mnposition$St = numbers.exact(Lit51);
                $Stcolor$Mngreen$Mnposition$St = numbers.exact(Lit48);
                $Stcolor$Mnblue$Mnposition$St = numbers.exact(Lit25);
                $Stalpha$Mnopaque$St = numbers.exact(intNum2);
                $Strun$Mntelnet$Mnrepl$St = Boolean.TRUE;
                $Stnum$Mnconnections$St = intNum;
                $Strepl$Mnserver$Mnaddress$St = "NONE";
                $Strepl$Mnport$St = Lit54;
                $Stui$Mnhandler$St = null;
                $Stthis$Mnform$St = null;
            } catch (ClassCastException e) {
                throw new WrongType(e, "lowest", -2, objApply1);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "highest", -2, objApply2);
        }
    }

    @Override // gnu.expr.ModuleBody
    public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 15) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 16) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 36) {
            if (!(obj instanceof Symbol)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i != 37) {
            switch (i) {
                case 20:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 22:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 25:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 34:
                    if (!(obj instanceof Symbol)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 40:
                    if (!(obj instanceof Symbol)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 44:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 54:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 62:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 67:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
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
                case 92:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 93:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 94:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
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
                case 99:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 109:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 122:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 123:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 124:
                    if (!(obj instanceof CharSequence)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 125:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case WorkQueueKt.MASK /* 127 */:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 128:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 129:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 130:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 131:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 132:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 133:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 134:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 135:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 136:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 137:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 138:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 139:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 140:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 141:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 142:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 143:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 144:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 146:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 147:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 148:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 149:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 150:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 151:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 153:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 154:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 155:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 156:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 158:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 159:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case ComponentConstants.TEXTBOX_PREFERRED_WIDTH /* 160 */:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 161:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 162:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 163:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 164:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 165:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 174:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 179:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_SEEK /* 190 */:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 199:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 204:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 209:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 210:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 211:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 219:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 229:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 230:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 232:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 233:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 234:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 235:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 237:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 238:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 239:
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
                case InputDeviceCompat.SOURCE_KEYBOARD /* 257 */:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 258:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 259:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 262:
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
                case 272:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 273:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 277:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 278:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                default:
                    switch (i) {
                        case 29:
                            callContext.value1 = obj;
                            callContext.proc = moduleMethod;
                            callContext.pc = 1;
                            return 0;
                        case 30:
                            callContext.value1 = obj;
                            callContext.proc = moduleMethod;
                            callContext.pc = 1;
                            return 0;
                        case 31:
                            callContext.value1 = obj;
                            callContext.proc = moduleMethod;
                            callContext.pc = 1;
                            return 0;
                        case 32:
                            callContext.value1 = obj;
                            callContext.proc = moduleMethod;
                            callContext.pc = 1;
                            return 0;
                        default:
                            switch (i) {
                                case 56:
                                    if (!(obj instanceof Collection)) {
                                        return -786431;
                                    }
                                    callContext.value1 = obj;
                                    callContext.proc = moduleMethod;
                                    callContext.pc = 1;
                                    return 0;
                                case 57:
                                    if (!(obj instanceof Collection)) {
                                        return -786431;
                                    }
                                    callContext.value1 = obj;
                                    callContext.proc = moduleMethod;
                                    callContext.pc = 1;
                                    return 0;
                                case 58:
                                    if (!(obj instanceof Map)) {
                                        return -786431;
                                    }
                                    callContext.value1 = obj;
                                    callContext.proc = moduleMethod;
                                    callContext.pc = 1;
                                    return 0;
                                case 59:
                                    callContext.value1 = obj;
                                    callContext.proc = moduleMethod;
                                    callContext.pc = 1;
                                    return 0;
                                default:
                                    switch (i) {
                                        case 70:
                                            callContext.value1 = obj;
                                            callContext.proc = moduleMethod;
                                            callContext.pc = 1;
                                            return 0;
                                        case 71:
                                            callContext.value1 = obj;
                                            callContext.proc = moduleMethod;
                                            callContext.pc = 1;
                                            return 0;
                                        case 72:
                                            callContext.value1 = obj;
                                            callContext.proc = moduleMethod;
                                            callContext.pc = 1;
                                            return 0;
                                        default:
                                            switch (i) {
                                                case 74:
                                                    callContext.value1 = obj;
                                                    callContext.proc = moduleMethod;
                                                    callContext.pc = 1;
                                                    return 0;
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
                                                default:
                                                    switch (i) {
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
                                                        case 84:
                                                            callContext.value1 = obj;
                                                            callContext.proc = moduleMethod;
                                                            callContext.pc = 1;
                                                            return 0;
                                                        default:
                                                            switch (i) {
                                                                case 103:
                                                                    callContext.value1 = obj;
                                                                    callContext.proc = moduleMethod;
                                                                    callContext.pc = 1;
                                                                    return 0;
                                                                case 104:
                                                                    callContext.value1 = obj;
                                                                    callContext.proc = moduleMethod;
                                                                    callContext.pc = 1;
                                                                    return 0;
                                                                case 105:
                                                                    callContext.value1 = obj;
                                                                    callContext.proc = moduleMethod;
                                                                    callContext.pc = 1;
                                                                    return 0;
                                                                case 106:
                                                                    callContext.value1 = obj;
                                                                    callContext.proc = moduleMethod;
                                                                    callContext.pc = 1;
                                                                    return 0;
                                                                default:
                                                                    switch (i) {
                                                                        case 111:
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
                                                                        case 117:
                                                                            callContext.value1 = obj;
                                                                            callContext.proc = moduleMethod;
                                                                            callContext.pc = 1;
                                                                            return 0;
                                                                        case 118:
                                                                            callContext.value1 = obj;
                                                                            callContext.proc = moduleMethod;
                                                                            callContext.pc = 1;
                                                                            return 0;
                                                                        case 119:
                                                                            callContext.value1 = obj;
                                                                            callContext.proc = moduleMethod;
                                                                            callContext.pc = 1;
                                                                            return 0;
                                                                        case 120:
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
                            }
                    }
            }
        }
        if (!(obj instanceof Symbol)) {
            return -786431;
        }
        callContext.value1 = obj;
        callContext.proc = moduleMethod;
        callContext.pc = 1;
        return 0;
    }

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("add-to-components");
        Lit540 = simpleSymbol;
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f("init-components");
        Lit539 = simpleSymbol2;
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) a.f("init-global-variables");
        Lit538 = simpleSymbol3;
        SimpleSymbol simpleSymbol4 = (SimpleSymbol) a.f("components");
        Lit537 = simpleSymbol4;
        SimpleSymbol simpleSymbol5 = (SimpleSymbol) a.f("create-components");
        Lit536 = simpleSymbol5;
        SimpleSymbol simpleSymbol6 = (SimpleSymbol) a.f("reverse");
        Lit535 = simpleSymbol6;
        SimpleSymbol simpleSymbol7 = (SimpleSymbol) a.f("*the-null-value*");
        Lit534 = simpleSymbol7;
        SimpleSymbol simpleSymbol8 = (SimpleSymbol) a.f("register-events");
        Lit533 = simpleSymbol8;
        SimpleSymbol simpleSymbol9 = (SimpleSymbol) a.f("symbols");
        Lit532 = simpleSymbol9;
        SimpleSymbol simpleSymbol10 = (SimpleSymbol) a.f("symbol->string");
        Lit531 = simpleSymbol10;
        SimpleSymbol simpleSymbol11 = (SimpleSymbol) a.f("field");
        Lit530 = simpleSymbol11;
        SimpleSymbol simpleSymbol12 = (SimpleSymbol) a.f("cadddr");
        Lit529 = simpleSymbol12;
        SimpleSymbol simpleSymbol13 = (SimpleSymbol) a.f("caddr");
        Lit528 = simpleSymbol13;
        SimpleSymbol simpleSymbol14 = (SimpleSymbol) a.f("component-descriptors");
        Lit527 = simpleSymbol14;
        SimpleSymbol simpleSymbol15 = (SimpleSymbol) a.f("component-object");
        Lit526 = simpleSymbol15;
        SimpleSymbol simpleSymbol16 = (SimpleSymbol) a.f("component-container");
        Lit525 = simpleSymbol16;
        SimpleSymbol simpleSymbol17 = (SimpleSymbol) a.f("cadr");
        Lit524 = simpleSymbol17;
        SimpleSymbol simpleSymbol18 = (SimpleSymbol) a.f("component-info");
        Lit523 = simpleSymbol18;
        SimpleSymbol simpleSymbol19 = (SimpleSymbol) a.f("var-val-pairs");
        Lit522 = simpleSymbol19;
        SimpleSymbol simpleSymbol20 = (SimpleSymbol) a.f("add-to-global-var-environment");
        Lit521 = simpleSymbol20;
        SimpleSymbol simpleSymbol21 = (SimpleSymbol) a.f("var-val");
        Lit520 = simpleSymbol21;
        SimpleSymbol simpleSymbol22 = (SimpleSymbol) a.f("car");
        Lit519 = simpleSymbol22;
        SimpleSymbol simpleSymbol23 = (SimpleSymbol) a.f("for-each");
        Lit518 = simpleSymbol23;
        SimpleSymbol simpleSymbol24 = (SimpleSymbol) a.f("events");
        Lit517 = simpleSymbol24;
        SimpleSymbol simpleSymbol25 = (SimpleSymbol) a.f("event-info");
        Lit516 = simpleSymbol25;
        SimpleSymbol simpleSymbol26 = (SimpleSymbol) a.f("registerEventForDelegation");
        Lit515 = simpleSymbol26;
        SimpleSymbol simpleSymbol27 = (SimpleSymbol) a.f("SimpleEventDispatcher");
        Lit514 = simpleSymbol27;
        SimpleSymbol simpleSymbol28 = (SimpleSymbol) a.f("define-alias");
        Lit513 = simpleSymbol28;
        SimpleSymbol simpleSymbol29 = (SimpleSymbol) a.f("componentName");
        Lit512 = simpleSymbol29;
        SimpleSymbol simpleSymbol30 = (SimpleSymbol) a.f("lookup-handler");
        Lit511 = simpleSymbol30;
        SimpleSymbol simpleSymbol31 = (SimpleSymbol) a.f("java.lang.Throwable");
        Lit510 = simpleSymbol31;
        SimpleSymbol simpleSymbol32 = (SimpleSymbol) a.f("getPermissionNeeded");
        Lit509 = simpleSymbol32;
        SimpleSymbol simpleSymbol33 = (SimpleSymbol) a.f("PermissionDenied");
        Lit508 = simpleSymbol33;
        SimpleSymbol simpleSymbol34 = (SimpleSymbol) a.f("equal?");
        Lit507 = simpleSymbol34;
        SimpleSymbol simpleSymbol35 = (SimpleSymbol) a.f("com.google.appinventor.components.runtime.errors.PermissionException");
        Lit506 = simpleSymbol35;
        SimpleSymbol simpleSymbol36 = (SimpleSymbol) a.f("com.google.appinventor.components.runtime.errors.StopBlocksExecution");
        Lit505 = simpleSymbol36;
        SimpleSymbol simpleSymbol37 = (SimpleSymbol) a.f("notAlreadyHandled");
        Lit504 = simpleSymbol37;
        SimpleSymbol simpleSymbol38 = (SimpleSymbol) a.f("apply");
        Lit503 = simpleSymbol38;
        SimpleSymbol simpleSymbol39 = (SimpleSymbol) a.f("try-catch");
        Lit502 = simpleSymbol39;
        SimpleSymbol simpleSymbol40 = (SimpleSymbol) a.f("handler-symbol");
        Lit501 = simpleSymbol40;
        SimpleSymbol simpleSymbol41 = (SimpleSymbol) a.f("get-simple-name");
        Lit500 = simpleSymbol41;
        SimpleSymbol simpleSymbol42 = (SimpleSymbol) a.f("string-append");
        Lit499 = simpleSymbol42;
        SimpleSymbol simpleSymbol43 = (SimpleSymbol) a.f("string->symbol");
        Lit498 = simpleSymbol43;
        SimpleSymbol simpleSymbol44 = (SimpleSymbol) a.f("void");
        Lit497 = simpleSymbol44;
        SimpleSymbol simpleSymbol45 = (SimpleSymbol) a.f("java.lang.Object[]");
        Lit496 = simpleSymbol45;
        SimpleSymbol simpleSymbol46 = (SimpleSymbol) a.f("com.google.appinventor.components.runtime.Component");
        Lit495 = simpleSymbol46;
        SimpleSymbol simpleSymbol47 = (SimpleSymbol) a.f("com.google.appinventor.components.runtime.HandlesEventDispatching");
        Lit494 = simpleSymbol47;
        SimpleSymbol simpleSymbol48 = (SimpleSymbol) a.f("com.google.appinventor.components.runtime.EventDispatcher");
        Lit493 = simpleSymbol48;
        SimpleSymbol simpleSymbol49 = (SimpleSymbol) a.f("printStackTrace");
        Lit492 = simpleSymbol49;
        SimpleSymbol simpleSymbol50 = (SimpleSymbol) a.f("process-exception");
        Lit491 = simpleSymbol50;
        SimpleSymbol simpleSymbol51 = (SimpleSymbol) a.f("and");
        Lit490 = simpleSymbol51;
        SimpleSymbol simpleSymbol52 = (SimpleSymbol) a.f("exception");
        Lit489 = simpleSymbol52;
        SimpleSymbol simpleSymbol53 = (SimpleSymbol) a.f("args");
        Lit488 = simpleSymbol53;
        SimpleSymbol simpleSymbol54 = (SimpleSymbol) a.f("handler");
        Lit487 = simpleSymbol54;
        SimpleSymbol simpleSymbol55 = (SimpleSymbol) a.f("eventName");
        Lit486 = simpleSymbol55;
        SimpleSymbol simpleSymbol56 = (SimpleSymbol) a.f("componentObject");
        Lit485 = simpleSymbol56;
        SimpleSymbol simpleSymbol57 = (SimpleSymbol) a.f("lookup-in-form-environment");
        Lit484 = simpleSymbol57;
        SimpleSymbol simpleSymbol58 = (SimpleSymbol) a.f("eq?");
        Lit483 = simpleSymbol58;
        SimpleSymbol simpleSymbol59 = (SimpleSymbol) a.f("registeredObject");
        Lit482 = simpleSymbol59;
        SimpleSymbol simpleSymbol60 = (SimpleSymbol) a.f("is-bound-in-form-environment");
        Lit481 = simpleSymbol60;
        SimpleSymbol simpleSymbol61 = (SimpleSymbol) a.f("registeredComponentName");
        Lit480 = simpleSymbol61;
        SimpleSymbol simpleSymbol62 = (SimpleSymbol) a.f("java.lang.String");
        Lit479 = simpleSymbol62;
        SimpleSymbol simpleSymbol63 = (SimpleSymbol) a.f("as");
        Lit478 = simpleSymbol63;
        SimpleSymbol simpleSymbol64 = (SimpleSymbol) a.f("YailRuntimeError");
        Lit477 = simpleSymbol64;
        SimpleSymbol simpleSymbol65 = (SimpleSymbol) a.f(GetNamedPart.INSTANCEOF_METHOD_NAME);
        Lit476 = simpleSymbol65;
        SimpleSymbol simpleSymbol66 = (SimpleSymbol) a.f("getMessage");
        Lit475 = simpleSymbol66;
        SimpleSymbol simpleSymbol67 = (SimpleSymbol) a.f("send-error");
        Lit474 = simpleSymbol67;
        SimpleSymbol simpleSymbol68 = (SimpleSymbol) a.f("ex");
        Lit473 = simpleSymbol68;
        SimpleSymbol simpleSymbol69 = (SimpleSymbol) a.f("this");
        Lit472 = simpleSymbol69;
        SimpleSymbol simpleSymbol70 = (SimpleSymbol) a.f("when");
        Lit471 = simpleSymbol70;
        SimpleSymbol simpleSymbol71 = (SimpleSymbol) a.f("error");
        Lit470 = simpleSymbol71;
        SimpleSymbol simpleSymbol72 = (SimpleSymbol) a.f("thunk");
        Lit469 = simpleSymbol72;
        SimpleSymbol simpleSymbol73 = (SimpleSymbol) a.f("form-do-after-creation");
        Lit468 = simpleSymbol73;
        SimpleSymbol simpleSymbol74 = (SimpleSymbol) a.f("add-to-form-do-after-creation");
        Lit467 = simpleSymbol74;
        SimpleSymbol simpleSymbol75 = (SimpleSymbol) a.f("val-thunk");
        Lit466 = simpleSymbol75;
        SimpleSymbol simpleSymbol76 = (SimpleSymbol) a.f("var");
        Lit465 = simpleSymbol76;
        SimpleSymbol simpleSymbol77 = (SimpleSymbol) a.f("global-vars-to-create");
        Lit464 = simpleSymbol77;
        SimpleSymbol simpleSymbol78 = (SimpleSymbol) a.f("init-thunk");
        Lit463 = simpleSymbol78;
        SimpleSymbol simpleSymbol79 = (SimpleSymbol) a.f("component-type");
        Lit462 = simpleSymbol79;
        SimpleSymbol simpleSymbol80 = (SimpleSymbol) a.f("container-name");
        Lit461 = simpleSymbol80;
        SimpleSymbol simpleSymbol81 = (SimpleSymbol) a.f("components-to-create");
        Lit460 = simpleSymbol81;
        SimpleSymbol simpleSymbol82 = (SimpleSymbol) a.f("set!");
        Lit459 = simpleSymbol82;
        SimpleSymbol simpleSymbol83 = (SimpleSymbol) a.f("event-name");
        Lit458 = simpleSymbol83;
        SimpleSymbol simpleSymbol84 = (SimpleSymbol) a.f("component-name");
        Lit457 = simpleSymbol84;
        SimpleSymbol simpleSymbol85 = (SimpleSymbol) a.f("cons");
        Lit456 = simpleSymbol85;
        SimpleSymbol simpleSymbol86 = (SimpleSymbol) a.f("events-to-register");
        Lit455 = simpleSymbol86;
        SimpleSymbol simpleSymbol87 = (SimpleSymbol) a.f("add-to-events");
        Lit454 = simpleSymbol87;
        SimpleSymbol simpleSymbol88 = (SimpleSymbol) a.f("gnu.lists.LList");
        Lit453 = simpleSymbol88;
        SimpleSymbol simpleSymbol89 = (SimpleSymbol) a.f("global-var-environment");
        Lit452 = simpleSymbol89;
        SimpleSymbol simpleSymbol90 = (SimpleSymbol) a.f("format");
        Lit451 = simpleSymbol90;
        SimpleSymbol simpleSymbol91 = (SimpleSymbol) a.f("make");
        Lit450 = simpleSymbol91;
        SimpleSymbol simpleSymbol92 = (SimpleSymbol) a.f("isBound");
        Lit449 = simpleSymbol92;
        SimpleSymbol simpleSymbol93 = (SimpleSymbol) a.f("default-value");
        Lit448 = simpleSymbol93;
        SimpleSymbol simpleSymbol94 = (SimpleSymbol) a.f("gnu.mapping.Symbol");
        Lit447 = simpleSymbol94;
        SimpleSymbol simpleSymbol95 = (SimpleSymbol) a.f("form-environment");
        Lit446 = simpleSymbol95;
        SimpleSymbol simpleSymbol96 = (SimpleSymbol) a.f("name");
        Lit445 = simpleSymbol96;
        SimpleSymbol simpleSymbol97 = (SimpleSymbol) a.f("android-log-form");
        Lit444 = simpleSymbol97;
        SimpleSymbol simpleSymbol98 = (SimpleSymbol) a.f("add-to-form-environment");
        Lit443 = simpleSymbol98;
        SimpleSymbol simpleSymbol99 = (SimpleSymbol) a.f("gnu.mapping.Environment");
        Lit442 = simpleSymbol99;
        SimpleSymbol simpleSymbol100 = (SimpleSymbol) a.f("message");
        Lit441 = simpleSymbol100;
        SimpleSymbol simpleSymbol101 = (SimpleSymbol) a.f("*debug-form*");
        Lit440 = simpleSymbol101;
        SimpleSymbol simpleSymbol102 = (SimpleSymbol) a.f("icicle");
        Lit439 = simpleSymbol102;
        SimpleSymbol simpleSymbol103 = (SimpleSymbol) a.f("onCreate");
        Lit438 = simpleSymbol103;
        SimpleSymbol simpleSymbol104 = (SimpleSymbol) a.f("::");
        Lit437 = simpleSymbol104;
        SimpleSymbol simpleSymbol105 = (SimpleSymbol) a.f("object");
        Lit436 = simpleSymbol105;
        SimpleSymbol simpleSymbol106 = (SimpleSymbol) a.f("*");
        Lit435 = simpleSymbol106;
        SimpleSymbol simpleSymbol107 = (SimpleSymbol) a.f("define");
        Lit434 = simpleSymbol107;
        SimpleSymbol simpleSymbol108 = (SimpleSymbol) a.f("add-to-global-vars");
        Lit433 = simpleSymbol108;
        SimpleSymbol simpleSymbol109 = (SimpleSymbol) a.f(LispLanguage.quote_sym);
        Lit432 = simpleSymbol109;
        SimpleSymbol simpleSymbol110 = (SimpleSymbol) a.f("*this-is-the-repl*");
        Lit431 = simpleSymbol110;
        SimpleSymbol simpleSymbol111 = (SimpleSymbol) a.f("delay");
        Lit430 = simpleSymbol111;
        SimpleSymbol simpleSymbol112 = (SimpleSymbol) a.f("proc");
        Lit429 = simpleSymbol112;
        SimpleSymbol simpleSymbol113 = (SimpleSymbol) a.f("*yail-loop*");
        Lit428 = simpleSymbol113;
        SimpleSymbol simpleSymbol114 = (SimpleSymbol) a.f("begin");
        Lit427 = simpleSymbol114;
        SimpleSymbol simpleSymbol115 = (SimpleSymbol) a.f("let");
        Lit426 = simpleSymbol115;
        SimpleSymbol simpleSymbol116 = (SimpleSymbol) a.f("lambda");
        Lit425 = simpleSymbol116;
        SimpleSymbol simpleSymbol117 = (SimpleSymbol) a.f("call-with-current-continuation");
        Lit424 = simpleSymbol117;
        SimpleSymbol simpleSymbol118 = (SimpleSymbol) a.f("loop");
        Lit423 = simpleSymbol118;
        SimpleSymbol simpleSymbol119 = (SimpleSymbol) a.f("if");
        Lit422 = simpleSymbol119;
        SimpleSymbol simpleSymbol120 = (SimpleSymbol) a.f(LispLanguage.quasiquote_sym);
        Lit421 = simpleSymbol120;
        SimpleSymbol simpleSymbol121 = (SimpleSymbol) a.f("$lookup$");
        Lit420 = simpleSymbol121;
        SimpleSymbol simpleSymbol122 = (SimpleSymbol) a.f("_");
        Lit419 = simpleSymbol122;
        SimpleSymbol simpleSymbol123 = (SimpleSymbol) a.f("clarify1");
        Lit418 = simpleSymbol123;
        SimpleSymbol simpleSymbol124 = (SimpleSymbol) a.f("clarify");
        Lit417 = simpleSymbol124;
        SimpleSymbol simpleSymbol125 = (SimpleSymbol) a.f("set-this-form");
        Lit416 = simpleSymbol125;
        SimpleSymbol simpleSymbol126 = (SimpleSymbol) a.f("init-runtime");
        Lit415 = simpleSymbol126;
        SimpleSymbol simpleSymbol127 = (SimpleSymbol) a.f("rename-component");
        Lit414 = simpleSymbol127;
        SimpleSymbol simpleSymbol128 = (SimpleSymbol) a.f("remove-component");
        Lit413 = simpleSymbol128;
        SimpleSymbol simpleSymbol129 = (SimpleSymbol) a.f("set-form-name");
        Lit412 = simpleSymbol129;
        SimpleSymbol simpleSymbol130 = (SimpleSymbol) a.f("clear-current-form");
        Lit411 = simpleSymbol130;
        SimpleSymbol simpleSymbol131 = (SimpleSymbol) a.f("send-to-block");
        Lit410 = simpleSymbol131;
        SimpleSymbol simpleSymbol132 = (SimpleSymbol) a.f("in-ui");
        Lit409 = simpleSymbol132;
        SyntaxRules syntaxRules = new SyntaxRules(new Object[]{simpleSymbol122}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\b", new Object[0], 2), "\u0001\u0001", "\u0011\u0018\u0004\t\u0003\b\u0011\u0018\f\b\u000b", new Object[]{simpleSymbol132, simpleSymbol111}, 0)}, 2);
        Lit408 = syntaxRules;
        SimpleSymbol simpleSymbol133 = (SimpleSymbol) a.f("process-repl-input");
        Lit407 = simpleSymbol133;
        SimpleSymbol simpleSymbol134 = (SimpleSymbol) a.f("get-server-address-from-wifi");
        Lit406 = simpleSymbol134;
        SimpleSymbol simpleSymbol135 = (SimpleSymbol) a.f("close-screen-with-plain-text");
        Lit405 = simpleSymbol135;
        SimpleSymbol simpleSymbol136 = (SimpleSymbol) a.f("get-plain-start-text");
        Lit404 = simpleSymbol136;
        SimpleSymbol simpleSymbol137 = (SimpleSymbol) a.f("close-screen-with-value");
        Lit403 = simpleSymbol137;
        SimpleSymbol simpleSymbol138 = (SimpleSymbol) a.f("get-start-value");
        Lit402 = simpleSymbol138;
        SimpleSymbol simpleSymbol139 = (SimpleSymbol) a.f("open-another-screen-with-start-value");
        Lit401 = simpleSymbol139;
        SimpleSymbol simpleSymbol140 = (SimpleSymbol) a.f("open-another-screen");
        Lit400 = simpleSymbol140;
        SimpleSymbol simpleSymbol141 = (SimpleSymbol) a.f("close-application");
        Lit399 = simpleSymbol141;
        SimpleSymbol simpleSymbol142 = (SimpleSymbol) a.f("close-screen");
        Lit398 = simpleSymbol142;
        SimpleSymbol simpleSymbol143 = (SimpleSymbol) a.f("split-color");
        Lit397 = simpleSymbol143;
        SimpleSymbol simpleSymbol144 = (SimpleSymbol) a.f("make-color");
        Lit396 = simpleSymbol144;
        SimpleSymbol simpleSymbol145 = (SimpleSymbol) a.f("make-exact-yail-integer");
        Lit395 = simpleSymbol145;
        SimpleSymbol simpleSymbol146 = (SimpleSymbol) a.f("string-replace-mappings-earliest-occurrence");
        Lit394 = simpleSymbol146;
        SimpleSymbol simpleSymbol147 = (SimpleSymbol) a.f("string-replace-mappings-longest-string");
        Lit393 = simpleSymbol147;
        SimpleSymbol simpleSymbol148 = (SimpleSymbol) a.f("string-replace-mappings-dictionary");
        Lit392 = simpleSymbol148;
        SimpleSymbol simpleSymbol149 = (SimpleSymbol) a.f("text-deobfuscate");
        Lit391 = simpleSymbol149;
        SimpleSymbol simpleSymbol150 = (SimpleSymbol) a.f("string-empty?");
        Lit390 = simpleSymbol150;
        SimpleSymbol simpleSymbol151 = (SimpleSymbol) a.f("string-replace-all");
        Lit389 = simpleSymbol151;
        SimpleSymbol simpleSymbol152 = (SimpleSymbol) a.f("string-trim");
        Lit388 = simpleSymbol152;
        SimpleSymbol simpleSymbol153 = (SimpleSymbol) a.f("string-substring");
        Lit387 = simpleSymbol153;
        SimpleSymbol simpleSymbol154 = (SimpleSymbol) a.f("string-split-at-spaces");
        Lit386 = simpleSymbol154;
        SimpleSymbol simpleSymbol155 = (SimpleSymbol) a.f("string-split-at-any");
        Lit385 = simpleSymbol155;
        SimpleSymbol simpleSymbol156 = (SimpleSymbol) a.f("string-split");
        Lit384 = simpleSymbol156;
        SimpleSymbol simpleSymbol157 = (SimpleSymbol) a.f("string-split-at-first-of-any");
        Lit383 = simpleSymbol157;
        SimpleSymbol simpleSymbol158 = (SimpleSymbol) a.f("string-split-at-first");
        Lit382 = simpleSymbol158;
        SimpleSymbol simpleSymbol159 = (SimpleSymbol) a.f("string-contains-all");
        Lit381 = simpleSymbol159;
        SimpleSymbol simpleSymbol160 = (SimpleSymbol) a.f("string-contains-any");
        Lit380 = simpleSymbol160;
        SimpleSymbol simpleSymbol161 = (SimpleSymbol) a.f("string-contains");
        Lit379 = simpleSymbol161;
        SimpleSymbol simpleSymbol162 = (SimpleSymbol) a.f("string-starts-at");
        Lit378 = simpleSymbol162;
        SimpleSymbol simpleSymbol163 = (SimpleSymbol) a.f("array->list");
        Lit377 = simpleSymbol163;
        SimpleSymbol simpleSymbol164 = (SimpleSymbol) a.f("make-disjunct");
        Lit376 = simpleSymbol164;
        SimpleSymbol simpleSymbol165 = (SimpleSymbol) a.f("yail-dictionary?");
        Lit375 = simpleSymbol165;
        SimpleSymbol simpleSymbol166 = (SimpleSymbol) a.f("yail-dictionary-combine-dicts");
        Lit374 = simpleSymbol166;
        SimpleSymbol simpleSymbol167 = (SimpleSymbol) a.f("yail-dictionary-copy");
        Lit373 = simpleSymbol167;
        SimpleSymbol simpleSymbol168 = (SimpleSymbol) a.f("yail-dictionary-dict-to-alist");
        Lit372 = simpleSymbol168;
        SimpleSymbol simpleSymbol169 = (SimpleSymbol) a.f("yail-dictionary-alist-to-dict");
        Lit371 = simpleSymbol169;
        SimpleSymbol simpleSymbol170 = (SimpleSymbol) a.f("yail-dictionary-length");
        Lit370 = simpleSymbol170;
        SimpleSymbol simpleSymbol171 = (SimpleSymbol) a.f("yail-dictionary-is-key-in");
        Lit369 = simpleSymbol171;
        SimpleSymbol simpleSymbol172 = (SimpleSymbol) a.f("yail-dictionary-get-values");
        Lit368 = simpleSymbol172;
        SimpleSymbol simpleSymbol173 = (SimpleSymbol) a.f("yail-dictionary-get-keys");
        Lit367 = simpleSymbol173;
        SimpleSymbol simpleSymbol174 = (SimpleSymbol) a.f("yail-dictionary-recursive-set");
        Lit366 = simpleSymbol174;
        SimpleSymbol simpleSymbol175 = (SimpleSymbol) a.f("yail-dictionary-walk");
        Lit365 = simpleSymbol175;
        SimpleSymbol simpleSymbol176 = (SimpleSymbol) a.f("yail-dictionary-recursive-lookup");
        Lit364 = simpleSymbol176;
        SimpleSymbol simpleSymbol177 = (SimpleSymbol) a.f("yail-dictionary-lookup");
        Lit363 = simpleSymbol177;
        SimpleSymbol simpleSymbol178 = (SimpleSymbol) a.f("yail-dictionary-delete-pair");
        Lit362 = simpleSymbol178;
        SimpleSymbol simpleSymbol179 = (SimpleSymbol) a.f("yail-dictionary-set-pair");
        Lit361 = simpleSymbol179;
        SimpleSymbol simpleSymbol180 = (SimpleSymbol) a.f("make-dictionary-pair");
        Lit360 = simpleSymbol180;
        SimpleSymbol simpleSymbol181 = (SimpleSymbol) a.f("make-yail-dictionary");
        Lit359 = simpleSymbol181;
        SimpleSymbol simpleSymbol182 = (SimpleSymbol) a.f("yail-list-join-with-separator");
        Lit358 = simpleSymbol182;
        SimpleSymbol simpleSymbol183 = (SimpleSymbol) a.f("pair-ok?");
        Lit357 = simpleSymbol183;
        SimpleSymbol simpleSymbol184 = (SimpleSymbol) a.f("yail-alist-lookup");
        Lit356 = simpleSymbol184;
        SimpleSymbol simpleSymbol185 = (SimpleSymbol) a.f("yail-number-range");
        Lit355 = simpleSymbol185;
        SimpleSymbol simpleSymbol186 = (SimpleSymbol) a.f("yail-for-range-with-numeric-checked-args");
        Lit354 = simpleSymbol186;
        SimpleSymbol simpleSymbol187 = (SimpleSymbol) a.f("yail-for-range");
        Lit353 = simpleSymbol187;
        SimpleSymbol simpleSymbol188 = (SimpleSymbol) a.f("yail-list-slice");
        Lit352 = simpleSymbol188;
        SimpleSymbol simpleSymbol189 = (SimpleSymbol) a.f("back");
        Lit351 = simpleSymbol189;
        SimpleSymbol simpleSymbol190 = (SimpleSymbol) a.f("front");
        Lit350 = simpleSymbol190;
        SimpleSymbol simpleSymbol191 = (SimpleSymbol) a.f("yail-list-but-last");
        Lit349 = simpleSymbol191;
        SimpleSymbol simpleSymbol192 = (SimpleSymbol) a.f("but-last");
        Lit348 = simpleSymbol192;
        SimpleSymbol simpleSymbol193 = (SimpleSymbol) a.f("yail-list-but-first");
        Lit347 = simpleSymbol193;
        SimpleSymbol simpleSymbol194 = (SimpleSymbol) a.f("yail-list-max-comparator");
        Lit346 = simpleSymbol194;
        SimpleSymbol simpleSymbol195 = (SimpleSymbol) a.f("list-max");
        Lit345 = simpleSymbol195;
        SimpleSymbol simpleSymbol196 = (SimpleSymbol) a.f("yail-list-min-comparator");
        Lit344 = simpleSymbol196;
        SimpleSymbol simpleSymbol197 = (SimpleSymbol) a.f("list-min");
        Lit343 = simpleSymbol197;
        SimpleSymbol simpleSymbol198 = (SimpleSymbol) a.f("list-number-only");
        Lit342 = simpleSymbol198;
        SimpleSymbol simpleSymbol199 = (SimpleSymbol) a.f("yail-list-sort-key");
        Lit341 = simpleSymbol199;
        SimpleSymbol simpleSymbol200 = (SimpleSymbol) a.f("mergesort-key");
        Lit340 = simpleSymbol200;
        SimpleSymbol simpleSymbol201 = (SimpleSymbol) a.f("merge-key");
        Lit339 = simpleSymbol201;
        SimpleSymbol simpleSymbol202 = (SimpleSymbol) a.f("yail-list-sort-comparator");
        Lit338 = simpleSymbol202;
        SimpleSymbol simpleSymbol203 = (SimpleSymbol) a.f("yail-list-sort");
        Lit337 = simpleSymbol203;
        SimpleSymbol simpleSymbol204 = (SimpleSymbol) a.f("mergesort");
        Lit336 = simpleSymbol204;
        SimpleSymbol simpleSymbol205 = (SimpleSymbol) a.f("merge");
        Lit335 = simpleSymbol205;
        SimpleSymbol simpleSymbol206 = (SimpleSymbol) a.f("drop");
        Lit334 = simpleSymbol206;
        SimpleSymbol simpleSymbol207 = (SimpleSymbol) a.f("take");
        Lit333 = simpleSymbol207;
        SimpleSymbol simpleSymbol208 = (SimpleSymbol) a.f("component-leq?");
        Lit332 = simpleSymbol208;
        SimpleSymbol simpleSymbol209 = (SimpleSymbol) a.f("component-eq?");
        Lit331 = simpleSymbol209;
        SimpleSymbol simpleSymbol210 = (SimpleSymbol) a.f("component-lt?");
        Lit330 = simpleSymbol210;
        SimpleSymbol simpleSymbol211 = (SimpleSymbol) a.f("list-leq?");
        Lit329 = simpleSymbol211;
        SimpleSymbol simpleSymbol212 = (SimpleSymbol) a.f("yail-list-necessary");
        Lit328 = simpleSymbol212;
        SimpleSymbol simpleSymbol213 = (SimpleSymbol) a.f("list-eq?");
        Lit327 = simpleSymbol213;
        SimpleSymbol simpleSymbol214 = (SimpleSymbol) a.f("list-lt?");
        Lit326 = simpleSymbol214;
        SimpleSymbol simpleSymbol215 = (SimpleSymbol) a.f("boolean-leq?");
        Lit325 = simpleSymbol215;
        SimpleSymbol simpleSymbol216 = (SimpleSymbol) a.f("boolean-eq?");
        Lit324 = simpleSymbol216;
        SimpleSymbol simpleSymbol217 = (SimpleSymbol) a.f("boolean-lt?");
        Lit323 = simpleSymbol217;
        SimpleSymbol simpleSymbol218 = (SimpleSymbol) a.f("is-leq?");
        Lit322 = simpleSymbol218;
        SimpleSymbol simpleSymbol219 = (SimpleSymbol) a.f("is-eq?");
        Lit321 = simpleSymbol219;
        SimpleSymbol simpleSymbol220 = (SimpleSymbol) a.f("is-lt?");
        Lit320 = simpleSymbol220;
        SimpleSymbol simpleSymbol221 = (SimpleSymbol) a.f("type-lt?");
        Lit319 = simpleSymbol221;
        SimpleSymbol simpleSymbol222 = (SimpleSymbol) a.f("indexof");
        Lit318 = simpleSymbol222;
        SimpleSymbol simpleSymbol223 = (SimpleSymbol) a.f("typeof");
        Lit317 = simpleSymbol223;
        SimpleSymbol simpleSymbol224 = (SimpleSymbol) a.f("yail-list-reduce");
        Lit316 = simpleSymbol224;
        SimpleSymbol simpleSymbol225 = (SimpleSymbol) a.f("yail-list-filter");
        Lit315 = simpleSymbol225;
        SimpleSymbol simpleSymbol226 = (SimpleSymbol) a.f("yail-list-map");
        Lit314 = simpleSymbol226;
        SimpleSymbol simpleSymbol227 = (SimpleSymbol) a.f("yail-for-each");
        Lit313 = simpleSymbol227;
        SimpleSymbol simpleSymbol228 = (SimpleSymbol) a.f("yail-list-pick-random");
        Lit312 = simpleSymbol228;
        SimpleSymbol simpleSymbol229 = (SimpleSymbol) a.f("yail-list-member?");
        Lit311 = simpleSymbol229;
        SimpleSymbol simpleSymbol230 = (SimpleSymbol) a.f("yail-list-add-to-list!");
        Lit310 = simpleSymbol230;
        SimpleSymbol simpleSymbol231 = (SimpleSymbol) a.f("yail-list-append!");
        Lit309 = simpleSymbol231;
        SimpleSymbol simpleSymbol232 = (SimpleSymbol) a.f("yail-list-insert-item!");
        Lit308 = simpleSymbol232;
        SimpleSymbol simpleSymbol233 = (SimpleSymbol) a.f("yail-list-remove-item!");
        Lit307 = simpleSymbol233;
        SimpleSymbol simpleSymbol234 = (SimpleSymbol) a.f("yail-list-set-item!");
        Lit306 = simpleSymbol234;
        SimpleSymbol simpleSymbol235 = (SimpleSymbol) a.f("yail-list-get-item");
        Lit305 = simpleSymbol235;
        SimpleSymbol simpleSymbol236 = (SimpleSymbol) a.f("yail-list-index");
        Lit304 = simpleSymbol236;
        SimpleSymbol simpleSymbol237 = (SimpleSymbol) a.f("yail-list-length");
        Lit303 = simpleSymbol237;
        SimpleSymbol simpleSymbol238 = (SimpleSymbol) a.f("yail-list-from-csv-row");
        Lit302 = simpleSymbol238;
        SimpleSymbol simpleSymbol239 = (SimpleSymbol) a.f("yail-list-from-csv-table");
        Lit301 = simpleSymbol239;
        SimpleSymbol simpleSymbol240 = (SimpleSymbol) a.f("convert-to-strings-for-csv");
        Lit300 = simpleSymbol240;
        SimpleSymbol simpleSymbol241 = (SimpleSymbol) a.f("yail-list-to-csv-row");
        Lit299 = simpleSymbol241;
        SimpleSymbol simpleSymbol242 = (SimpleSymbol) a.f("yail-list-to-csv-table");
        Lit298 = simpleSymbol242;
        SimpleSymbol simpleSymbol243 = (SimpleSymbol) a.f("yail-list-reverse");
        Lit297 = simpleSymbol243;
        SimpleSymbol simpleSymbol244 = (SimpleSymbol) a.f("yail-list-copy");
        Lit296 = simpleSymbol244;
        SimpleSymbol simpleSymbol245 = (SimpleSymbol) a.f("make-yail-list");
        Lit295 = simpleSymbol245;
        SimpleSymbol simpleSymbol246 = (SimpleSymbol) a.f("yail-list-empty?");
        Lit294 = simpleSymbol246;
        SimpleSymbol simpleSymbol247 = (SimpleSymbol) a.f("yail-list->kawa-list");
        Lit293 = simpleSymbol247;
        SimpleSymbol simpleSymbol248 = (SimpleSymbol) a.f("kawa-list->yail-list");
        Lit292 = simpleSymbol248;
        SimpleSymbol simpleSymbol249 = (SimpleSymbol) a.f("insert-yail-list-header");
        Lit291 = simpleSymbol249;
        SimpleSymbol simpleSymbol250 = (SimpleSymbol) a.f("set-yail-list-contents!");
        Lit290 = simpleSymbol250;
        SimpleSymbol simpleSymbol251 = (SimpleSymbol) a.f("yail-list-contents");
        Lit289 = simpleSymbol251;
        SimpleSymbol simpleSymbol252 = (SimpleSymbol) a.f("yail-list-candidate?");
        Lit288 = simpleSymbol252;
        SimpleSymbol simpleSymbol253 = (SimpleSymbol) a.f("yail-list?");
        Lit287 = simpleSymbol253;
        SimpleSymbol simpleSymbol254 = (SimpleSymbol) a.f("std-err");
        Lit286 = simpleSymbol254;
        SimpleSymbol simpleSymbol255 = (SimpleSymbol) a.f("sample-std-dev");
        Lit285 = simpleSymbol255;
        SimpleSymbol simpleSymbol256 = (SimpleSymbol) a.f("std-dev");
        Lit284 = simpleSymbol256;
        SimpleSymbol simpleSymbol257 = (SimpleSymbol) a.f("sum-mean-square-diff");
        Lit283 = simpleSymbol257;
        SimpleSymbol simpleSymbol258 = (SimpleSymbol) a.f("mean");
        Lit282 = simpleSymbol258;
        SimpleSymbol simpleSymbol259 = (SimpleSymbol) a.f("minl");
        Lit281 = simpleSymbol259;
        SimpleSymbol simpleSymbol260 = (SimpleSymbol) a.f("maxl");
        Lit280 = simpleSymbol260;
        SimpleSymbol simpleSymbol261 = (SimpleSymbol) a.f("mode");
        Lit279 = simpleSymbol261;
        SimpleSymbol simpleSymbol262 = (SimpleSymbol) a.f("gm");
        Lit278 = simpleSymbol262;
        SimpleSymbol simpleSymbol263 = (SimpleSymbol) a.f("yail-mul");
        Lit277 = simpleSymbol263;
        SimpleSymbol simpleSymbol264 = (SimpleSymbol) a.f("avg");
        Lit276 = simpleSymbol264;
        SimpleSymbol simpleSymbol265 = (SimpleSymbol) a.f("internal-binary-convert");
        Lit275 = simpleSymbol265;
        SimpleSymbol simpleSymbol266 = (SimpleSymbol) a.f("alternate-number->string-binary");
        Lit274 = simpleSymbol266;
        SimpleSymbol simpleSymbol267 = (SimpleSymbol) a.f("patched-number->string-binary");
        Lit273 = simpleSymbol267;
        SimpleSymbol simpleSymbol268 = (SimpleSymbol) a.f("math-convert-dec-bin");
        Lit272 = simpleSymbol268;
        SimpleSymbol simpleSymbol269 = (SimpleSymbol) a.f("math-convert-bin-dec");
        Lit271 = simpleSymbol269;
        SimpleSymbol simpleSymbol270 = (SimpleSymbol) a.f("math-convert-hex-dec");
        Lit270 = simpleSymbol270;
        SimpleSymbol simpleSymbol271 = (SimpleSymbol) a.f("math-convert-dec-hex");
        Lit269 = simpleSymbol271;
        SimpleSymbol simpleSymbol272 = (SimpleSymbol) a.f("is-binary?");
        Lit268 = simpleSymbol272;
        SimpleSymbol simpleSymbol273 = (SimpleSymbol) a.f("is-hexadecimal?");
        Lit267 = simpleSymbol273;
        SimpleSymbol simpleSymbol274 = (SimpleSymbol) a.f("is-base10?");
        Lit266 = simpleSymbol274;
        SimpleSymbol simpleSymbol275 = (SimpleSymbol) a.f("is-number?");
        Lit265 = simpleSymbol275;
        SimpleSymbol simpleSymbol276 = (SimpleSymbol) a.f("format-as-decimal");
        Lit264 = simpleSymbol276;
        SimpleSymbol simpleSymbol277 = (SimpleSymbol) a.f("string-reverse");
        Lit263 = simpleSymbol277;
        SimpleSymbol simpleSymbol278 = (SimpleSymbol) a.f("unicode-string->list");
        Lit262 = simpleSymbol278;
        SimpleSymbol simpleSymbol279 = (SimpleSymbol) a.f("string-to-lower-case");
        Lit261 = simpleSymbol279;
        SimpleSymbol simpleSymbol280 = (SimpleSymbol) a.f("string-to-upper-case");
        Lit260 = simpleSymbol280;
        SimpleSymbol simpleSymbol281 = (SimpleSymbol) a.f("atan2-degrees");
        Lit259 = simpleSymbol281;
        SimpleSymbol simpleSymbol282 = (SimpleSymbol) a.f("atan-degrees");
        Lit258 = simpleSymbol282;
        SimpleSymbol simpleSymbol283 = (SimpleSymbol) a.f("acos-degrees");
        Lit257 = simpleSymbol283;
        SimpleSymbol simpleSymbol284 = (SimpleSymbol) a.f("asin-degrees");
        Lit256 = simpleSymbol284;
        SimpleSymbol simpleSymbol285 = (SimpleSymbol) a.f("tan-degrees");
        Lit255 = simpleSymbol285;
        SimpleSymbol simpleSymbol286 = (SimpleSymbol) a.f("cos-degrees");
        Lit254 = simpleSymbol286;
        SimpleSymbol simpleSymbol287 = (SimpleSymbol) a.f("sin-degrees");
        Lit253 = simpleSymbol287;
        SimpleSymbol simpleSymbol288 = (SimpleSymbol) a.f("radians->degrees");
        Lit252 = simpleSymbol288;
        SimpleSymbol simpleSymbol289 = (SimpleSymbol) a.f("degrees->radians");
        Lit251 = simpleSymbol289;
        SimpleSymbol simpleSymbol290 = (SimpleSymbol) a.f("radians->degrees-internal");
        Lit250 = simpleSymbol290;
        SimpleSymbol simpleSymbol291 = (SimpleSymbol) a.f("degrees->radians-internal");
        Lit249 = simpleSymbol291;
        SimpleSymbol simpleSymbol292 = (SimpleSymbol) a.f("yail-divide");
        Lit248 = simpleSymbol292;
        SimpleSymbol simpleSymbol293 = (SimpleSymbol) a.f("random-integer");
        Lit247 = simpleSymbol293;
        SimpleSymbol simpleSymbol294 = (SimpleSymbol) a.f("random-fraction");
        Lit246 = simpleSymbol294;
        SimpleSymbol simpleSymbol295 = (SimpleSymbol) a.f("random-set-seed");
        Lit245 = simpleSymbol295;
        SimpleSymbol simpleSymbol296 = (SimpleSymbol) a.f("yail-round");
        Lit244 = simpleSymbol296;
        SimpleSymbol simpleSymbol297 = (SimpleSymbol) a.f("yail-ceiling");
        Lit243 = simpleSymbol297;
        SimpleSymbol simpleSymbol298 = (SimpleSymbol) a.f("yail-floor");
        Lit242 = simpleSymbol298;
        SimpleSymbol simpleSymbol299 = (SimpleSymbol) a.f("process-or-delayed");
        Lit241 = simpleSymbol299;
        SimpleSymbol simpleSymbol300 = (SimpleSymbol) a.f("process-and-delayed");
        Lit240 = simpleSymbol300;
        SimpleSymbol simpleSymbol301 = (SimpleSymbol) a.f("yail-not-equal?");
        Lit239 = simpleSymbol301;
        SimpleSymbol simpleSymbol302 = (SimpleSymbol) a.f("as-number");
        Lit238 = simpleSymbol302;
        SimpleSymbol simpleSymbol303 = (SimpleSymbol) a.f("yail-atomic-equal?");
        Lit237 = simpleSymbol303;
        SimpleSymbol simpleSymbol304 = (SimpleSymbol) a.f("yail-equal?");
        Lit236 = simpleSymbol304;
        SimpleSymbol simpleSymbol305 = (SimpleSymbol) a.f("appinventor-number->string");
        Lit235 = simpleSymbol305;
        SimpleSymbol simpleSymbol306 = (SimpleSymbol) a.f("*format-inexact*");
        Lit234 = simpleSymbol306;
        SimpleSymbol simpleSymbol307 = (SimpleSymbol) a.f("padded-string->number");
        Lit233 = simpleSymbol307;
        SimpleSymbol simpleSymbol308 = (SimpleSymbol) a.f("boolean->string");
        Lit232 = simpleSymbol308;
        SimpleSymbol simpleSymbol309 = (SimpleSymbol) a.f("all-coercible?");
        Lit231 = simpleSymbol309;
        SimpleSymbol simpleSymbol310 = (SimpleSymbol) a.f("is-coercible?");
        Lit230 = simpleSymbol310;
        SimpleSymbol simpleSymbol311 = (SimpleSymbol) a.f("coerce-to-boolean");
        Lit229 = simpleSymbol311;
        SimpleSymbol simpleSymbol312 = (SimpleSymbol) a.f("coerce-to-dictionary");
        Lit228 = simpleSymbol312;
        SimpleSymbol simpleSymbol313 = (SimpleSymbol) a.f("coerce-to-pair");
        Lit227 = simpleSymbol313;
        SimpleSymbol simpleSymbol314 = (SimpleSymbol) a.f("coerce-to-yail-list");
        Lit226 = simpleSymbol314;
        SimpleSymbol simpleSymbol315 = (SimpleSymbol) a.f("string-replace");
        Lit225 = simpleSymbol315;
        SimpleSymbol simpleSymbol316 = (SimpleSymbol) a.f("join-strings");
        Lit224 = simpleSymbol316;
        SimpleSymbol simpleSymbol317 = (SimpleSymbol) a.f("get-display-representation");
        Lit223 = simpleSymbol317;
        SimpleSymbol simpleSymbol318 = (SimpleSymbol) a.f("coerce-to-string");
        Lit222 = simpleSymbol318;
        SyntaxPattern syntaxPattern = new SyntaxPattern("\f\u0018\b", new Object[0], 0);
        SimpleSymbol simpleSymbol319 = (SimpleSymbol) a.f("*testing*");
        Boolean bool = Boolean.TRUE;
        SimpleSymbol simpleSymbol320 = (SimpleSymbol) a.f("ShowListsAsJson");
        LList lList = LList.Empty;
        SyntaxRules syntaxRules2 = new SyntaxRules(new Object[]{simpleSymbol122}, new SyntaxRule[]{new SyntaxRule(syntaxPattern, "", "\u0018\u0004", new Object[]{PairWithPosition.make(simpleSymbol119, PairWithPosition.make(simpleSymbol319, PairWithPosition.make(bool, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol121, a.c(simpleSymbol320, lList, simpleSymbol120, lList, simpleSymbol106), "/tmp/runtime15061256449536606169.scm", 6541323), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol121, a.c((SimpleSymbol) a.f("getActiveForm"), lList, simpleSymbol120, lList, (SimpleSymbol) a.f("SimpleForm")), "/tmp/runtime15061256449536606169.scm", 6541342), lList, "/tmp/runtime15061256449536606169.scm", 6541341), lList, "/tmp/runtime15061256449536606169.scm", 6541341), "/tmp/runtime15061256449536606169.scm", 6541322), lList, "/tmp/runtime15061256449536606169.scm", 6541322), "/tmp/runtime15061256449536606169.scm", 6537236), "/tmp/runtime15061256449536606169.scm", 6537226), "/tmp/runtime15061256449536606169.scm", 6537222)}, 0)}, 0);
        Lit221 = syntaxRules2;
        SimpleSymbol simpleSymbol321 = (SimpleSymbol) a.f("use-json-format");
        Lit220 = simpleSymbol321;
        SimpleSymbol simpleSymbol322 = (SimpleSymbol) a.f("coerce-to-key");
        Lit219 = simpleSymbol322;
        SimpleSymbol simpleSymbol323 = (SimpleSymbol) a.f("coerce-to-number");
        Lit218 = simpleSymbol323;
        SimpleSymbol simpleSymbol324 = (SimpleSymbol) a.f("type->class");
        Lit217 = simpleSymbol324;
        SimpleSymbol simpleSymbol325 = (SimpleSymbol) a.f("coerce-to-component-of-type");
        Lit216 = simpleSymbol325;
        SimpleSymbol simpleSymbol326 = (SimpleSymbol) a.f("coerce-to-component");
        Lit215 = simpleSymbol326;
        SimpleSymbol simpleSymbol327 = (SimpleSymbol) a.f("coerce-to-instant");
        Lit214 = simpleSymbol327;
        SimpleSymbol simpleSymbol328 = (SimpleSymbol) a.f("coerce-to-text");
        Lit213 = simpleSymbol328;
        SimpleSymbol simpleSymbol329 = (SimpleSymbol) a.f("coerce-to-enum");
        Lit212 = simpleSymbol329;
        SimpleSymbol simpleSymbol330 = (SimpleSymbol) a.f("enum?");
        Lit211 = simpleSymbol330;
        SimpleSymbol simpleSymbol331 = (SimpleSymbol) a.f("enum-type?");
        Lit210 = simpleSymbol331;
        SimpleSymbol simpleSymbol332 = (SimpleSymbol) a.f("coerce-to-number-list");
        Lit209 = simpleSymbol332;
        SimpleSymbol simpleSymbol333 = (SimpleSymbol) a.f("coerce-arg");
        Lit208 = simpleSymbol333;
        SimpleSymbol simpleSymbol334 = (SimpleSymbol) a.f("coerce-args");
        Lit207 = simpleSymbol334;
        SimpleSymbol simpleSymbol335 = (SimpleSymbol) a.f("show-arglist-no-parens");
        Lit206 = simpleSymbol335;
        SimpleSymbol simpleSymbol336 = (SimpleSymbol) a.f("generate-runtime-type-error");
        Lit205 = simpleSymbol336;
        SimpleSymbol simpleSymbol337 = (SimpleSymbol) a.f("%set-subform-layout-property!");
        Lit204 = simpleSymbol337;
        SimpleSymbol simpleSymbol338 = (SimpleSymbol) a.f("%set-and-coerce-property!");
        Lit203 = simpleSymbol338;
        SimpleSymbol simpleSymbol339 = (SimpleSymbol) a.f("call-with-coerced-args");
        Lit202 = simpleSymbol339;
        SimpleSymbol simpleSymbol340 = (SimpleSymbol) a.f("yail-not");
        Lit201 = simpleSymbol340;
        SimpleSymbol simpleSymbol341 = (SimpleSymbol) a.f("signal-runtime-form-error");
        Lit200 = simpleSymbol341;
        SimpleSymbol simpleSymbol342 = (SimpleSymbol) a.f("signal-runtime-error");
        Lit199 = simpleSymbol342;
        SimpleSymbol simpleSymbol343 = (SimpleSymbol) a.f("sanitize-atomic");
        Lit198 = simpleSymbol343;
        SimpleSymbol simpleSymbol344 = (SimpleSymbol) a.f("java-map->yail-dictionary");
        Lit197 = simpleSymbol344;
        SimpleSymbol simpleSymbol345 = (SimpleSymbol) a.f("java-collection->kawa-list");
        Lit196 = simpleSymbol345;
        SimpleSymbol simpleSymbol346 = (SimpleSymbol) a.f("java-collection->yail-list");
        Lit195 = simpleSymbol346;
        SimpleSymbol simpleSymbol347 = (SimpleSymbol) a.f("sanitize-return-value");
        Lit194 = simpleSymbol347;
        SimpleSymbol simpleSymbol348 = (SimpleSymbol) a.f("sanitize-component-data");
        Lit193 = simpleSymbol348;
        SimpleSymbol simpleSymbol349 = (SimpleSymbol) a.f("call-yail-primitive");
        Lit192 = simpleSymbol349;
        SimpleSymbol simpleSymbol350 = (SimpleSymbol) a.f("call-component-type-method-with-blocking-continuation");
        Lit191 = simpleSymbol350;
        SimpleSymbol simpleSymbol351 = (SimpleSymbol) a.f("call-component-type-method-with-continuation");
        Lit190 = simpleSymbol351;
        SimpleSymbol simpleSymbol352 = (SimpleSymbol) a.f("call-component-type-method");
        Lit189 = simpleSymbol352;
        SimpleSymbol simpleSymbol353 = (SimpleSymbol) a.f("call-component-method-with-blocking-continuation");
        Lit188 = simpleSymbol353;
        SimpleSymbol simpleSymbol354 = (SimpleSymbol) a.f("call-component-method-with-continuation");
        Lit187 = simpleSymbol354;
        SimpleSymbol simpleSymbol355 = (SimpleSymbol) a.f("call-component-method");
        Lit186 = simpleSymbol355;
        SyntaxRules syntaxRules3 = new SyntaxRules(new Object[]{simpleSymbol122}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\r\u0017\u0010\b\b", new Object[0], 3), "\u0001\u0001\u0003", "\u0011\u0018\u0004\b\u0011\u0018\f\u0011\b\u0003\b\u0011\u0018\u0014\u0011\u0018\u001c\t\u0010\b\u0011\u0018$\t\u000bA\u0011\u0018,\u0011\u0015\u0013\u00184\u0018<", new Object[]{simpleSymbol117, simpleSymbol116, simpleSymbol115, simpleSymbol118, simpleSymbol119, simpleSymbol114, PairWithPosition.make(PairWithPosition.make(simpleSymbol118, lList, "/tmp/runtime15061256449536606169.scm", 4149251), lList, "/tmp/runtime15061256449536606169.scm", 4149251), PairWithPosition.make(simpleSymbol7, lList, "/tmp/runtime15061256449536606169.scm", 4153352)}, 1)}, 3);
        Lit185 = syntaxRules3;
        SimpleSymbol simpleSymbol356 = (SimpleSymbol) a.f("while-with-break");
        Lit184 = simpleSymbol356;
        SyntaxRules syntaxRules4 = new SyntaxRules(new Object[]{simpleSymbol122}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\f\u001f\f'\f/\b", new Object[0], 6), "\u0001\u0001\u0001\u0001\u0001\u0001", "\u0011\u0018\u0004\b\u0011\u0018\f\u0011\b\u0003\b\u0011\u0018\u0014A\u0011\u0018\f\u0011\b\u000b\b\u0013\t\u001b\t#\b+", new Object[]{simpleSymbol117, simpleSymbol116, simpleSymbol187}, 0)}, 6);
        Lit183 = syntaxRules4;
        SimpleSymbol simpleSymbol357 = (SimpleSymbol) a.f("forrange-with-break");
        Lit182 = simpleSymbol357;
        SyntaxRules syntaxRules5 = new SyntaxRules(new Object[]{simpleSymbol122}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\b", new Object[0], 3), "\u0001\u0001\u0001", "\u0011\u0018\u0004A\u0011\u0018\f\u0011\b\u0003\b\u000b\b\u0013", new Object[]{simpleSymbol199, simpleSymbol116}, 0)}, 3);
        Lit181 = syntaxRules5;
        SimpleSymbol simpleSymbol358 = (SimpleSymbol) a.f("sortkey_nondest");
        Lit180 = simpleSymbol358;
        SyntaxRules syntaxRules6 = new SyntaxRules(new Object[]{simpleSymbol122}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\f\u001f\b", new Object[0], 4), "\u0001\u0001\u0001\u0001", "\u0011\u0018\u0004Q\u0011\u0018\f!\t\u0003\b\u000b\b\u0013\b\u001b", new Object[]{simpleSymbol194, simpleSymbol116}, 0)}, 4);
        Lit179 = syntaxRules6;
        SimpleSymbol simpleSymbol359 = (SimpleSymbol) a.f("maxcomparator-nondest");
        Lit178 = simpleSymbol359;
        SyntaxRules syntaxRules7 = new SyntaxRules(new Object[]{simpleSymbol122}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\f\u001f\b", new Object[0], 4), "\u0001\u0001\u0001\u0001", "\u0011\u0018\u0004Q\u0011\u0018\f!\t\u0003\b\u000b\b\u0013\b\u001b", new Object[]{simpleSymbol196, simpleSymbol116}, 0)}, 4);
        Lit177 = syntaxRules7;
        SimpleSymbol simpleSymbol360 = (SimpleSymbol) a.f("mincomparator-nondest");
        Lit176 = simpleSymbol360;
        SyntaxRules syntaxRules8 = new SyntaxRules(new Object[]{simpleSymbol122}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\f\u001f\b", new Object[0], 4), "\u0001\u0001\u0001\u0001", "\u0011\u0018\u0004Q\u0011\u0018\f!\t\u0003\b\u000b\b\u0013\b\u001b", new Object[]{simpleSymbol202, simpleSymbol116}, 0)}, 4);
        Lit175 = syntaxRules8;
        SimpleSymbol simpleSymbol361 = (SimpleSymbol) a.f("sortcomparator_nondest");
        Lit174 = simpleSymbol361;
        SyntaxRules syntaxRules9 = new SyntaxRules(new Object[]{simpleSymbol122}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\f\u001f\f'\b", new Object[0], 5), "\u0001\u0001\u0001\u0001\u0001", "\u0011\u0018\u0004\t\u0003Q\u0011\u0018\f!\t\u000b\b\u0013\b\u001b\b#", new Object[]{simpleSymbol224, simpleSymbol116}, 0)}, 5);
        Lit173 = syntaxRules9;
        SimpleSymbol simpleSymbol362 = (SimpleSymbol) a.f("reduceovereach");
        Lit172 = simpleSymbol362;
        SyntaxRules syntaxRules10 = new SyntaxRules(new Object[]{simpleSymbol122}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\b", new Object[0], 3), "\u0001\u0001\u0001", "\u0011\u0018\u0004A\u0011\u0018\f\u0011\b\u0003\b\u000b\b\u0013", new Object[]{simpleSymbol225, simpleSymbol116}, 0)}, 3);
        Lit171 = syntaxRules10;
        SimpleSymbol simpleSymbol363 = (SimpleSymbol) a.f("filter_nondest");
        Lit170 = simpleSymbol363;
        SyntaxRules syntaxRules11 = new SyntaxRules(new Object[]{simpleSymbol122}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\b", new Object[0], 3), "\u0001\u0001\u0001", "\u0011\u0018\u0004A\u0011\u0018\f\u0011\b\u0003\b\u000b\b\u0013", new Object[]{simpleSymbol226, simpleSymbol116}, 0)}, 3);
        Lit169 = syntaxRules11;
        SimpleSymbol simpleSymbol364 = (SimpleSymbol) a.f("map_nondest");
        Lit168 = simpleSymbol364;
        SyntaxRules syntaxRules12 = new SyntaxRules(new Object[]{simpleSymbol122}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\f\u001f\b", new Object[0], 4), "\u0001\u0001\u0001\u0001", "\u0011\u0018\u0004\b\u0011\u0018\f\u0011\b\u0003\b\u0011\u0018\u0014i\b\u0011\u0018\u001c\b\u0011\u0018\f\u0011\b\u000b\b\u0013\b\u0011\u0018$\u0011\u0018\u001c\b\u001b", new Object[]{simpleSymbol117, simpleSymbol116, simpleSymbol115, simpleSymbol112, simpleSymbol227}, 0)}, 4);
        Lit167 = syntaxRules12;
        SimpleSymbol simpleSymbol365 = (SimpleSymbol) a.f("foreach-with-break");
        Lit166 = simpleSymbol365;
        SimpleSymbol simpleSymbol366 = (SimpleSymbol) a.f("cont");
        Lit49 = simpleSymbol366;
        Lit165 = PairWithPosition.make(PairWithPosition.make(simpleSymbol117, PairWithPosition.make(simpleSymbol366, lList, "/tmp/runtime15061256449536606169.scm", 3821606), "/tmp/runtime15061256449536606169.scm", 3821574), lList, "/tmp/runtime15061256449536606169.scm", 3821574);
        Lit164 = PairWithPosition.make(null, lList, "/tmp/runtime15061256449536606169.scm", 3817496);
        Lit163 = PairWithPosition.make(PairWithPosition.make(simpleSymbol113, lList, "/tmp/runtime15061256449536606169.scm", 3813407), lList, "/tmp/runtime15061256449536606169.scm", 3813407);
        Lit162 = PairWithPosition.make(simpleSymbol114, lList, "/tmp/runtime15061256449536606169.scm", 3809311);
        Lit161 = PairWithPosition.make(simpleSymbol114, lList, "/tmp/runtime15061256449536606169.scm", 3809304);
        Lit160 = PairWithPosition.make(simpleSymbol119, lList, "/tmp/runtime15061256449536606169.scm", 3805204);
        Lit159 = PairWithPosition.make(simpleSymbol115, PairWithPosition.make(simpleSymbol113, PairWithPosition.make(lList, lList, "/tmp/runtime15061256449536606169.scm", 3801123), "/tmp/runtime15061256449536606169.scm", 3801111), "/tmp/runtime15061256449536606169.scm", 3801106);
        SimpleSymbol simpleSymbol367 = (SimpleSymbol) a.f("*yail-break*");
        Lit147 = simpleSymbol367;
        Lit158 = PairWithPosition.make(simpleSymbol367, lList, "/tmp/runtime15061256449536606169.scm", 3797016);
        Lit157 = PairWithPosition.make(simpleSymbol116, lList, "/tmp/runtime15061256449536606169.scm", 3797008);
        Lit156 = PairWithPosition.make(simpleSymbol366, lList, "/tmp/runtime15061256449536606169.scm", 3797002);
        Lit155 = PairWithPosition.make(simpleSymbol115, lList, "/tmp/runtime15061256449536606169.scm", 3796996);
        SimpleSymbol simpleSymbol368 = (SimpleSymbol) a.f("while");
        Lit154 = simpleSymbol368;
        Lit153 = PairWithPosition.make(simpleSymbol116, lList, "/tmp/runtime15061256449536606169.scm", 3743767);
        Lit152 = PairWithPosition.make(simpleSymbol187, lList, "/tmp/runtime15061256449536606169.scm", 3743751);
        Lit151 = PairWithPosition.make(simpleSymbol367, lList, "/tmp/runtime15061256449536606169.scm", 3739661);
        Lit150 = PairWithPosition.make(simpleSymbol116, lList, "/tmp/runtime15061256449536606169.scm", 3739653);
        Lit149 = PairWithPosition.make(simpleSymbol117, lList, "/tmp/runtime15061256449536606169.scm", 3735556);
        SimpleSymbol simpleSymbol369 = (SimpleSymbol) a.f("forrange");
        Lit148 = simpleSymbol369;
        Lit146 = PairWithPosition.make(simpleSymbol227, PairWithPosition.make(simpleSymbol112, lList, "/tmp/runtime15061256449536606169.scm", 3665944), "/tmp/runtime15061256449536606169.scm", 3665929);
        Lit145 = PairWithPosition.make(simpleSymbol116, lList, "/tmp/runtime15061256449536606169.scm", 3661843);
        Lit144 = PairWithPosition.make(simpleSymbol112, lList, "/tmp/runtime15061256449536606169.scm", 3661837);
        Lit143 = PairWithPosition.make(simpleSymbol115, lList, "/tmp/runtime15061256449536606169.scm", 3661831);
        Lit142 = PairWithPosition.make(simpleSymbol367, lList, "/tmp/runtime15061256449536606169.scm", 3657741);
        Lit141 = PairWithPosition.make(simpleSymbol116, lList, "/tmp/runtime15061256449536606169.scm", 3657733);
        Lit140 = PairWithPosition.make(simpleSymbol117, lList, "/tmp/runtime15061256449536606169.scm", 3653636);
        SimpleSymbol simpleSymbol370 = (SimpleSymbol) a.f("foreach");
        Lit139 = simpleSymbol370;
        SimpleSymbol simpleSymbol371 = (SimpleSymbol) a.f("reset-current-form-environment");
        Lit138 = simpleSymbol371;
        SimpleSymbol simpleSymbol372 = (SimpleSymbol) a.f("lookup-global-var-in-current-form-environment");
        Lit137 = simpleSymbol372;
        SimpleSymbol simpleSymbol373 = (SimpleSymbol) a.f("add-global-var-to-current-form-environment");
        Lit136 = simpleSymbol373;
        SimpleSymbol simpleSymbol374 = (SimpleSymbol) a.f("rename-in-current-form-environment");
        Lit135 = simpleSymbol374;
        SimpleSymbol simpleSymbol375 = (SimpleSymbol) a.f("delete-from-current-form-environment");
        Lit134 = simpleSymbol375;
        SimpleSymbol simpleSymbol376 = (SimpleSymbol) a.f("filter-type-in-current-form-environment");
        Lit133 = simpleSymbol376;
        SimpleSymbol simpleSymbol377 = (SimpleSymbol) a.f("lookup-in-current-form-environment");
        Lit132 = simpleSymbol377;
        SimpleSymbol simpleSymbol378 = (SimpleSymbol) a.f("add-to-current-form-environment");
        Lit131 = simpleSymbol378;
        SyntaxRules syntaxRules13 = new SyntaxRules(new Object[]{simpleSymbol122}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\r\u0007\u0000\b\b", new Object[0], 1), "\u0003", "\u0011\u0018\u0004\u0011\u0018\f1\u0011\u0018\u0014\b\u0005\u0003\b\u0011\u0018\u001c\b\u0011\u0018$\b\u0011\u0018\u0014\b\u0005\u0003", new Object[]{simpleSymbol119, simpleSymbol110, simpleSymbol114, simpleSymbol74, simpleSymbol111}, 1)}, 1);
        Lit130 = syntaxRules13;
        SimpleSymbol simpleSymbol379 = (SimpleSymbol) a.f("do-after-form-creation");
        Lit129 = simpleSymbol379;
        SyntaxRules syntaxRules14 = new SyntaxRules(new Object[]{simpleSymbol122}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018<\f\u0007\r\u000f\b\b\b\r\u0017\u0010\b\b", new Object[0], 3), "\u0001\u0003\u0003", "\u0011\u0018\u0004\b\u0011\u0018\f\u0011\u0018\u0014¡\u0011\u0018\u001c)\u0011\u0018$\b\u0003\b\u0011\u0018,\u0019\b\r\u000b\b\u0015\u0013\b\u0011\u00184)\u0011\u0018$\b\u0003\b\u0011\u0018,\t\u0010\b\u0011\u0018,\u0019\b\r\u000b\b\u0015\u0013", new Object[]{simpleSymbol114, simpleSymbol119, simpleSymbol110, simpleSymbol373, simpleSymbol109, simpleSymbol116, simpleSymbol108}, 1), new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\b", new Object[0], 2), "\u0001\u0001", "\u0011\u0018\u0004\b\u0011\u0018\f\u0011\u0018\u0014Y\u0011\u0018\u001c)\u0011\u0018$\b\u0003\b\u000b\b\u0011\u0018,)\u0011\u0018$\b\u0003\b\u0011\u00184\t\u0010\b\u000b", new Object[]{simpleSymbol114, simpleSymbol119, simpleSymbol110, simpleSymbol373, simpleSymbol109, simpleSymbol108, simpleSymbol116}, 0)}, 3);
        Lit128 = syntaxRules14;
        SimpleSymbol simpleSymbol380 = (SimpleSymbol) a.f("def");
        Lit127 = simpleSymbol380;
        Lit126 = new SyntaxTemplate("\u0001\u0001\u0001\u0001\u0000", "\u0010", new Object[0], 0);
        Lit125 = new SyntaxTemplate("\u0001\u0001\u0001\u0001\u0000", "\t\u001b\b\"", new Object[0], 0);
        Lit124 = new SyntaxTemplate("\u0001\u0001\u0001\u0001\u0000", "\u0013", new Object[0], 0);
        Lit123 = new SyntaxTemplate("\u0001\u0001\u0001\u0001\u0000", "\u000b", new Object[0], 0);
        SimpleSymbol simpleSymbol381 = (SimpleSymbol) a.f("any$");
        Lit122 = simpleSymbol381;
        SimpleSymbol simpleSymbol382 = (SimpleSymbol) a.f("define-event-helper");
        Lit105 = simpleSymbol382;
        Lit121 = new SyntaxTemplate("\u0001\u0001\u0001\u0001\u0000", "\u0018\u0004", new Object[]{PairWithPosition.make(simpleSymbol382, lList, "/tmp/runtime15061256449536606169.scm", 3092492)}, 0);
        Lit120 = new SyntaxTemplate("\u0001\u0001\u0001\u0001\u0000", "\u0018\u0004", new Object[]{PairWithPosition.make(simpleSymbol114, lList, "/tmp/runtime15061256449536606169.scm", 3088394)}, 0);
        Lit119 = new SyntaxPattern("\f\u0007\f\u000f\f\u0017\f\u001f#", new Object[0], 5);
        SimpleSymbol simpleSymbol383 = (SimpleSymbol) a.f("define-generic-event");
        Lit118 = simpleSymbol383;
        Lit117 = new SyntaxTemplate("\u0001\u0001\u0001\u0001\u0000", "\b\u0011\u0018\u0004\u0011\u0018\f\u0091\u0011\u0018\u0014\u0011\u0018\u001c)\u0011\u0018$\b\u000b\b\u0011\u0018$\b\u0013\b\u0011\u0018,)\u0011\u0018$\b\u000b\b\u0011\u0018$\b\u0013", new Object[]{simpleSymbol119, simpleSymbol110, PairWithPosition.make(simpleSymbol121, a.c(simpleSymbol26, lList, simpleSymbol120, lList, simpleSymbol48), "/tmp/runtime15061256449536606169.scm", 3043345), PairWithPosition.make(simpleSymbol63, PairWithPosition.make(simpleSymbol47, PairWithPosition.make((SimpleSymbol) a.f("*this-form*"), lList, "/tmp/runtime15061256449536606169.scm", 3047511), "/tmp/runtime15061256449536606169.scm", 3047445), "/tmp/runtime15061256449536606169.scm", 3047441), simpleSymbol109, simpleSymbol87}, 0);
        Lit116 = new SyntaxTemplate("\u0001\u0001\u0001\u0001\u0000", "\t\u001b\b\"", new Object[0], 0);
        Lit115 = new SyntaxTemplate("\u0001\u0001\u0001\u0001\u0000", "\u0013", new Object[0], 0);
        SimpleSymbol simpleSymbol384 = (SimpleSymbol) a.f("$");
        Lit114 = simpleSymbol384;
        Lit113 = new SyntaxTemplate("\u0001\u0001\u0001\u0001\u0000", "\u000b", new Object[0], 0);
        Lit112 = new SyntaxTemplate("\u0001\u0001\u0001\u0001\u0000", "\u0018\u0004", new Object[]{PairWithPosition.make(simpleSymbol382, lList, "/tmp/runtime15061256449536606169.scm", 3018764)}, 0);
        Lit111 = new SyntaxTemplate("\u0001\u0001\u0001\u0001\u0000", "\u0018\u0004", new Object[]{PairWithPosition.make(simpleSymbol114, lList, "/tmp/runtime15061256449536606169.scm", 3014666)}, 0);
        Lit110 = new SyntaxPattern("\f\u0007\f\u000f\f\u0017\f\u001f#", new Object[0], 5);
        SimpleSymbol simpleSymbol385 = (SimpleSymbol) a.f("define-event");
        Lit109 = simpleSymbol385;
        SyntaxPattern syntaxPattern2 = new SyntaxPattern("\f\u0018\r\u0007\u0000\b\b", new Object[0], 1);
        SimpleSymbol simpleSymbol386 = (SimpleSymbol) a.f("list");
        Lit8 = simpleSymbol386;
        SyntaxRules syntaxRules15 = new SyntaxRules(new Object[]{simpleSymbol122}, new SyntaxRule[]{new SyntaxRule(syntaxPattern2, "\u0003", "\u0011\u0018\u0004\b\u0005\u0003", new Object[]{simpleSymbol386}, 1)}, 1);
        Lit108 = syntaxRules15;
        SimpleSymbol simpleSymbol387 = (SimpleSymbol) a.f("*list-for-runtime*");
        Lit107 = simpleSymbol387;
        SyntaxRules syntaxRules16 = new SyntaxRules(new Object[]{simpleSymbol122}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007,\r\u000f\b\b\b,\r\u0017\u0010\b\b\b", new Object[0], 3), "\u0001\u0003\u0003", "\u0011\u0018\u0004Ù\u0011\u0018\f)\t\u0003\b\r\u000b\b\u0011\u0018\u0014Q\b\r\t\u000b\b\u0011\u0018\u001c\b\u000b\b\u0015\u0013\b\u0011\u0018$\u0011\u0018,Y\u0011\u00184)\u0011\u0018<\b\u0003\b\u0003\b\u0011\u0018D)\u0011\u0018<\b\u0003\b\u0003", new Object[]{simpleSymbol114, simpleSymbol107, simpleSymbol115, simpleSymbol348, simpleSymbol119, simpleSymbol110, simpleSymbol378, simpleSymbol109, simpleSymbol98}, 1)}, 3);
        Lit106 = syntaxRules16;
        SimpleSymbol simpleSymbol388 = (SimpleSymbol) a.f("symbol-append");
        Lit98 = simpleSymbol388;
        Lit104 = new SyntaxTemplate("\u0001\u0001\u0001", "\u0011\u0018\u0004\u0011\u0018\f\t\u000b\u0011\u0018\u0014\b\u0013", new Object[]{simpleSymbol388, PairWithPosition.make(simpleSymbol109, PairWithPosition.make(simpleSymbol381, lList, "/tmp/runtime15061256449536606169.scm", 2785332), "/tmp/runtime15061256449536606169.scm", 2785332), PairWithPosition.make(simpleSymbol109, PairWithPosition.make(simpleSymbol384, lList, "/tmp/runtime15061256449536606169.scm", 2785353), "/tmp/runtime15061256449536606169.scm", 2785353)}, 0);
        Lit103 = new SyntaxPattern("\f\u0007\f\u000f\f\u0017\b", new Object[0], 3);
        SimpleSymbol simpleSymbol389 = (SimpleSymbol) a.f("gen-generic-event-name");
        Lit102 = simpleSymbol389;
        Lit101 = new SyntaxTemplate("\u0001\u0001\u0001", "\u0011\u0018\u0004\t\u000b\u0011\u0018\f\b\u0013", new Object[]{simpleSymbol388, PairWithPosition.make(simpleSymbol109, PairWithPosition.make(simpleSymbol384, lList, "/tmp/runtime15061256449536606169.scm", 2752579), "/tmp/runtime15061256449536606169.scm", 2752579)}, 0);
        Lit100 = new SyntaxPattern("\f\u0007\f\u000f\f\u0017\b", new Object[0], 3);
        SimpleSymbol simpleSymbol390 = (SimpleSymbol) a.f("gen-event-name");
        Lit99 = simpleSymbol390;
        SyntaxPattern syntaxPattern3 = new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\f\u001f\f'\b", new Object[0], 5);
        SimpleSymbol simpleSymbol391 = (SimpleSymbol) a.f("module-extends");
        SimpleSymbol simpleSymbol392 = (SimpleSymbol) a.f("module-name");
        SimpleSymbol simpleSymbol393 = (SimpleSymbol) a.f("module-static");
        PairWithPosition pairWithPositionMake = PairWithPosition.make((SimpleSymbol) a.f("require"), PairWithPosition.make((SimpleSymbol) a.f("<com.google.youngandroid.runtime>"), lList, "/tmp/runtime15061256449536606169.scm", 1294353), "/tmp/runtime15061256449536606169.scm", 1294344);
        PairWithPosition pairWithPositionMake2 = PairWithPosition.make(simpleSymbol107, PairWithPosition.make(PairWithPosition.make(simpleSymbol41, PairWithPosition.make(simpleSymbol105, lList, "/tmp/runtime15061256449536606169.scm", 1302561), "/tmp/runtime15061256449536606169.scm", 1302544), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol121, a.c((SimpleSymbol) a.f("getSimpleName"), lList, simpleSymbol120, lList, simpleSymbol106), "/tmp/runtime15061256449536606169.scm", 1306635), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol121, a.c((SimpleSymbol) a.f("getClass"), lList, simpleSymbol120, lList, simpleSymbol106), "/tmp/runtime15061256449536606169.scm", 1306652), PairWithPosition.make(simpleSymbol105, lList, "/tmp/runtime15061256449536606169.scm", 1306663), "/tmp/runtime15061256449536606169.scm", 1306651), lList, "/tmp/runtime15061256449536606169.scm", 1306651), "/tmp/runtime15061256449536606169.scm", 1306634), lList, "/tmp/runtime15061256449536606169.scm", 1306634), "/tmp/runtime15061256449536606169.scm", 1302544), "/tmp/runtime15061256449536606169.scm", 1302536);
        PairWithPosition pairWithPositionMake3 = PairWithPosition.make(simpleSymbol103, PairWithPosition.make(simpleSymbol102, PairWithPosition.make(simpleSymbol104, PairWithPosition.make((SimpleSymbol) a.f("android.os.Bundle"), lList, "/tmp/runtime15061256449536606169.scm", 1314852), "/tmp/runtime15061256449536606169.scm", 1314849), "/tmp/runtime15061256449536606169.scm", 1314842), "/tmp/runtime15061256449536606169.scm", 1314832);
        PairWithPosition pairWithPositionMake4 = PairWithPosition.make(simpleSymbol121, a.c((SimpleSymbol) a.f("setClassicModeFromYail"), lList, simpleSymbol120, lList, (SimpleSymbol) a.f("com.google.appinventor.components.runtime.AppInventorCompatActivity")), "/tmp/runtime15061256449536606169.scm", 1323019);
        SimpleSymbol simpleSymbol394 = (SimpleSymbol) a.f("invoke-special");
        PairWithPosition pairWithPositionMake5 = PairWithPosition.make(PairWithPosition.make(simpleSymbol69, lList, "/tmp/runtime15061256449536606169.scm", 1327144), PairWithPosition.make(PairWithPosition.make(simpleSymbol109, PairWithPosition.make(simpleSymbol103, lList, "/tmp/runtime15061256449536606169.scm", 1327152), "/tmp/runtime15061256449536606169.scm", 1327152), PairWithPosition.make(simpleSymbol102, lList, "/tmp/runtime15061256449536606169.scm", 1327161), "/tmp/runtime15061256449536606169.scm", 1327151), "/tmp/runtime15061256449536606169.scm", 1327144);
        Boolean bool2 = Boolean.FALSE;
        PairWithPosition pairWithPositionMake6 = PairWithPosition.make(simpleSymbol107, PairWithPosition.make(simpleSymbol101, PairWithPosition.make(bool2, lList, "/tmp/runtime15061256449536606169.scm", 1335325), "/tmp/runtime15061256449536606169.scm", 1335312), "/tmp/runtime15061256449536606169.scm", 1335304);
        PairWithPosition pairWithPositionMake7 = PairWithPosition.make(simpleSymbol107, PairWithPosition.make(PairWithPosition.make(simpleSymbol97, PairWithPosition.make(simpleSymbol100, lList, "/tmp/runtime15061256449536606169.scm", 1343522), "/tmp/runtime15061256449536606169.scm", 1343504), PairWithPosition.make(PairWithPosition.make(simpleSymbol70, PairWithPosition.make(simpleSymbol101, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol121, a.c((SimpleSymbol) a.f("i"), lList, simpleSymbol120, lList, (SimpleSymbol) a.f("android.util.Log")), "/tmp/runtime15061256449536606169.scm", 1347614), PairWithPosition.make("YAIL", PairWithPosition.make(simpleSymbol100, lList, "/tmp/runtime15061256449536606169.scm", 1347640), "/tmp/runtime15061256449536606169.scm", 1347633), "/tmp/runtime15061256449536606169.scm", 1347613), lList, "/tmp/runtime15061256449536606169.scm", 1347613), "/tmp/runtime15061256449536606169.scm", 1347600), "/tmp/runtime15061256449536606169.scm", 1347594), lList, "/tmp/runtime15061256449536606169.scm", 1347594), "/tmp/runtime15061256449536606169.scm", 1343504), "/tmp/runtime15061256449536606169.scm", 1343496);
        PairWithPosition pairWithPositionMake8 = PairWithPosition.make(simpleSymbol121, a.c(simpleSymbol91, lList, simpleSymbol120, lList, simpleSymbol99), "/tmp/runtime15061256449536606169.scm", 1372171);
        PairWithPosition pairWithPositionMake9 = PairWithPosition.make(simpleSymbol98, PairWithPosition.make(simpleSymbol96, PairWithPosition.make(simpleSymbol104, PairWithPosition.make(simpleSymbol94, PairWithPosition.make(simpleSymbol105, lList, "/tmp/runtime15061256449536606169.scm", 1380420), "/tmp/runtime15061256449536606169.scm", 1380401), "/tmp/runtime15061256449536606169.scm", 1380398), "/tmp/runtime15061256449536606169.scm", 1380393), "/tmp/runtime15061256449536606169.scm", 1380368);
        PairWithPosition pairWithPositionMake10 = PairWithPosition.make(simpleSymbol97, PairWithPosition.make(PairWithPosition.make(simpleSymbol90, PairWithPosition.make(bool2, PairWithPosition.make("Adding ~A to env ~A with value ~A", PairWithPosition.make(simpleSymbol96, PairWithPosition.make(simpleSymbol95, PairWithPosition.make(simpleSymbol105, lList, "/tmp/runtime15061256449536606169.scm", 1384545), "/tmp/runtime15061256449536606169.scm", 1384528), "/tmp/runtime15061256449536606169.scm", 1384523), "/tmp/runtime15061256449536606169.scm", 1384487), "/tmp/runtime15061256449536606169.scm", 1384484), "/tmp/runtime15061256449536606169.scm", 1384476), lList, "/tmp/runtime15061256449536606169.scm", 1384476), "/tmp/runtime15061256449536606169.scm", 1384458);
        SimpleSymbol simpleSymbol395 = (SimpleSymbol) a.f("put");
        Lit0 = simpleSymbol395;
        PairWithPosition pairWithPositionMake11 = PairWithPosition.make(simpleSymbol107, PairWithPosition.make(pairWithPositionMake9, PairWithPosition.make(pairWithPositionMake10, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol121, a.c(simpleSymbol395, lList, simpleSymbol120, lList, simpleSymbol99), "/tmp/runtime15061256449536606169.scm", 1388555), PairWithPosition.make(simpleSymbol95, PairWithPosition.make(simpleSymbol96, PairWithPosition.make(simpleSymbol105, lList, "/tmp/runtime15061256449536606169.scm", 1388605), "/tmp/runtime15061256449536606169.scm", 1388600), "/tmp/runtime15061256449536606169.scm", 1388583), "/tmp/runtime15061256449536606169.scm", 1388554), lList, "/tmp/runtime15061256449536606169.scm", 1388554), "/tmp/runtime15061256449536606169.scm", 1384458), "/tmp/runtime15061256449536606169.scm", 1380368), "/tmp/runtime15061256449536606169.scm", 1380360);
        PairWithPosition pairWithPositionMake12 = PairWithPosition.make(simpleSymbol57, PairWithPosition.make(simpleSymbol96, PairWithPosition.make(simpleSymbol104, PairWithPosition.make(simpleSymbol94, PairWithPosition.make(Special.optional, PairWithPosition.make(PairWithPosition.make(simpleSymbol93, PairWithPosition.make(bool2, lList, "/tmp/runtime15061256449536606169.scm", 1396833), "/tmp/runtime15061256449536606169.scm", 1396818), lList, "/tmp/runtime15061256449536606169.scm", 1396818), "/tmp/runtime15061256449536606169.scm", 1396807), "/tmp/runtime15061256449536606169.scm", 1396788), "/tmp/runtime15061256449536606169.scm", 1396785), "/tmp/runtime15061256449536606169.scm", 1396780), "/tmp/runtime15061256449536606169.scm", 1396752);
        PairWithPosition pairWithPositionMake13 = PairWithPosition.make(simpleSymbol51, PairWithPosition.make(PairWithPosition.make((SimpleSymbol) a.f("not"), PairWithPosition.make(PairWithPosition.make(simpleSymbol58, PairWithPosition.make(simpleSymbol95, PairWithPosition.make(null, lList, "/tmp/runtime15061256449536606169.scm", 1400878), "/tmp/runtime15061256449536606169.scm", 1400861), "/tmp/runtime15061256449536606169.scm", 1400856), lList, "/tmp/runtime15061256449536606169.scm", 1400856), "/tmp/runtime15061256449536606169.scm", 1400851), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol121, a.c(simpleSymbol92, lList, simpleSymbol120, lList, simpleSymbol99), "/tmp/runtime15061256449536606169.scm", 1404948), PairWithPosition.make(simpleSymbol95, PairWithPosition.make(simpleSymbol96, lList, "/tmp/runtime15061256449536606169.scm", 1404997), "/tmp/runtime15061256449536606169.scm", 1404980), "/tmp/runtime15061256449536606169.scm", 1404947), lList, "/tmp/runtime15061256449536606169.scm", 1404947), "/tmp/runtime15061256449536606169.scm", 1400851), "/tmp/runtime15061256449536606169.scm", 1400846);
        SimpleSymbol simpleSymbol396 = (SimpleSymbol) a.f("get");
        Lit1 = simpleSymbol396;
        PairWithPosition pairWithPositionMake14 = PairWithPosition.make(simpleSymbol107, PairWithPosition.make(pairWithPositionMake12, PairWithPosition.make(PairWithPosition.make(simpleSymbol119, PairWithPosition.make(pairWithPositionMake13, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol121, a.c(simpleSymbol396, lList, simpleSymbol120, lList, simpleSymbol99), "/tmp/runtime15061256449536606169.scm", 1409039), PairWithPosition.make(simpleSymbol95, PairWithPosition.make(simpleSymbol96, lList, "/tmp/runtime15061256449536606169.scm", 1409084), "/tmp/runtime15061256449536606169.scm", 1409067), "/tmp/runtime15061256449536606169.scm", 1409038), PairWithPosition.make(simpleSymbol93, lList, "/tmp/runtime15061256449536606169.scm", 1413134), "/tmp/runtime15061256449536606169.scm", 1409038), "/tmp/runtime15061256449536606169.scm", 1400846), "/tmp/runtime15061256449536606169.scm", 1400842), lList, "/tmp/runtime15061256449536606169.scm", 1400842), "/tmp/runtime15061256449536606169.scm", 1396752), "/tmp/runtime15061256449536606169.scm", 1396744);
        PairWithPosition pairWithPositionMake15 = PairWithPosition.make(simpleSymbol107, PairWithPosition.make(PairWithPosition.make(simpleSymbol60, PairWithPosition.make(simpleSymbol96, PairWithPosition.make(simpleSymbol104, PairWithPosition.make(simpleSymbol94, lList, "/tmp/runtime15061256449536606169.scm", 1421366), "/tmp/runtime15061256449536606169.scm", 1421363), "/tmp/runtime15061256449536606169.scm", 1421358), "/tmp/runtime15061256449536606169.scm", 1421328), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol121, a.c(simpleSymbol92, lList, simpleSymbol120, lList, simpleSymbol99), "/tmp/runtime15061256449536606169.scm", 1425419), PairWithPosition.make(simpleSymbol95, PairWithPosition.make(simpleSymbol96, lList, "/tmp/runtime15061256449536606169.scm", 1425468), "/tmp/runtime15061256449536606169.scm", 1425451), "/tmp/runtime15061256449536606169.scm", 1425418), lList, "/tmp/runtime15061256449536606169.scm", 1425418), "/tmp/runtime15061256449536606169.scm", 1421328), "/tmp/runtime15061256449536606169.scm", 1421320);
        PairWithPosition pairWithPositionMake16 = PairWithPosition.make(simpleSymbol121, a.c(simpleSymbol91, lList, simpleSymbol120, lList, simpleSymbol99), "/tmp/runtime15061256449536606169.scm", 1437707);
        PairWithPosition pairWithPositionMake17 = PairWithPosition.make("-global-vars", lList, "/tmp/runtime15061256449536606169.scm", 1445929);
        PairWithPosition pairWithPositionMake18 = PairWithPosition.make(simpleSymbol107, PairWithPosition.make(PairWithPosition.make(simpleSymbol20, PairWithPosition.make(simpleSymbol96, PairWithPosition.make(simpleSymbol104, PairWithPosition.make(simpleSymbol94, PairWithPosition.make(simpleSymbol105, lList, "/tmp/runtime15061256449536606169.scm", 1454154), "/tmp/runtime15061256449536606169.scm", 1454135), "/tmp/runtime15061256449536606169.scm", 1454132), "/tmp/runtime15061256449536606169.scm", 1454127), "/tmp/runtime15061256449536606169.scm", 1454096), PairWithPosition.make(PairWithPosition.make(simpleSymbol97, PairWithPosition.make(PairWithPosition.make(simpleSymbol90, PairWithPosition.make(bool2, PairWithPosition.make("Adding ~A to env ~A with value ~A", PairWithPosition.make(simpleSymbol96, PairWithPosition.make(simpleSymbol89, PairWithPosition.make(simpleSymbol105, lList, "/tmp/runtime15061256449536606169.scm", 1458279), "/tmp/runtime15061256449536606169.scm", 1458256), "/tmp/runtime15061256449536606169.scm", 1458251), "/tmp/runtime15061256449536606169.scm", 1458215), "/tmp/runtime15061256449536606169.scm", 1458212), "/tmp/runtime15061256449536606169.scm", 1458204), lList, "/tmp/runtime15061256449536606169.scm", 1458204), "/tmp/runtime15061256449536606169.scm", 1458186), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol121, a.c(simpleSymbol395, lList, simpleSymbol120, lList, simpleSymbol99), "/tmp/runtime15061256449536606169.scm", 1462283), PairWithPosition.make(simpleSymbol89, PairWithPosition.make(simpleSymbol96, PairWithPosition.make(simpleSymbol105, lList, "/tmp/runtime15061256449536606169.scm", 1462339), "/tmp/runtime15061256449536606169.scm", 1462334), "/tmp/runtime15061256449536606169.scm", 1462311), "/tmp/runtime15061256449536606169.scm", 1462282), lList, "/tmp/runtime15061256449536606169.scm", 1462282), "/tmp/runtime15061256449536606169.scm", 1458186), "/tmp/runtime15061256449536606169.scm", 1454096), "/tmp/runtime15061256449536606169.scm", 1454088);
        PairWithPosition pairWithPositionMake19 = PairWithPosition.make(null, lList, "/tmp/runtime15061256449536606169.scm", 1478696);
        SimpleSymbol simpleSymbol397 = (SimpleSymbol) a.f("form-name-symbol");
        PairWithPosition pairWithPositionMake20 = PairWithPosition.make(simpleSymbol107, PairWithPosition.make(simpleSymbol86, PairWithPosition.make(simpleSymbol104, PairWithPosition.make(simpleSymbol88, PairWithPosition.make(PairWithPosition.make(simpleSymbol109, PairWithPosition.make(lList, lList, "/tmp/runtime15061256449536606169.scm", 1503288), "/tmp/runtime15061256449536606169.scm", 1503288), lList, "/tmp/runtime15061256449536606169.scm", 1503287), "/tmp/runtime15061256449536606169.scm", 1503271), "/tmp/runtime15061256449536606169.scm", 1503268), "/tmp/runtime15061256449536606169.scm", 1503248), "/tmp/runtime15061256449536606169.scm", 1503240);
        PairWithPosition pairWithPositionMake21 = PairWithPosition.make(simpleSymbol107, PairWithPosition.make(simpleSymbol81, PairWithPosition.make(simpleSymbol104, PairWithPosition.make(simpleSymbol88, PairWithPosition.make(PairWithPosition.make(simpleSymbol109, PairWithPosition.make(lList, lList, "/tmp/runtime15061256449536606169.scm", 1523770), "/tmp/runtime15061256449536606169.scm", 1523770), lList, "/tmp/runtime15061256449536606169.scm", 1523769), "/tmp/runtime15061256449536606169.scm", 1523753), "/tmp/runtime15061256449536606169.scm", 1523750), "/tmp/runtime15061256449536606169.scm", 1523728), "/tmp/runtime15061256449536606169.scm", 1523720);
        PairWithPosition pairWithPositionMake22 = PairWithPosition.make(simpleSymbol107, PairWithPosition.make(PairWithPosition.make(simpleSymbol87, PairWithPosition.make(simpleSymbol84, PairWithPosition.make(simpleSymbol83, lList, "/tmp/runtime15061256449536606169.scm", 1540142), "/tmp/runtime15061256449536606169.scm", 1540127), "/tmp/runtime15061256449536606169.scm", 1540112), PairWithPosition.make(PairWithPosition.make(simpleSymbol82, PairWithPosition.make(simpleSymbol86, PairWithPosition.make(PairWithPosition.make(simpleSymbol85, PairWithPosition.make(PairWithPosition.make(simpleSymbol85, PairWithPosition.make(simpleSymbol84, PairWithPosition.make(simpleSymbol83, lList, "/tmp/runtime15061256449536606169.scm", 1548331), "/tmp/runtime15061256449536606169.scm", 1548316), "/tmp/runtime15061256449536606169.scm", 1548310), PairWithPosition.make(simpleSymbol86, lList, "/tmp/runtime15061256449536606169.scm", 1552406), "/tmp/runtime15061256449536606169.scm", 1548310), "/tmp/runtime15061256449536606169.scm", 1548304), lList, "/tmp/runtime15061256449536606169.scm", 1548304), "/tmp/runtime15061256449536606169.scm", 1544208), "/tmp/runtime15061256449536606169.scm", 1544202), lList, "/tmp/runtime15061256449536606169.scm", 1544202), "/tmp/runtime15061256449536606169.scm", 1540112), "/tmp/runtime15061256449536606169.scm", 1540104);
        PairWithPosition pairWithPositionMake23 = PairWithPosition.make(simpleSymbol107, PairWithPosition.make(PairWithPosition.make(simpleSymbol, PairWithPosition.make(simpleSymbol80, PairWithPosition.make(simpleSymbol79, PairWithPosition.make(simpleSymbol84, PairWithPosition.make(simpleSymbol78, lList, "/tmp/runtime15061256449536606169.scm", 1568848), "/tmp/runtime15061256449536606169.scm", 1568833), "/tmp/runtime15061256449536606169.scm", 1568818), "/tmp/runtime15061256449536606169.scm", 1568803), "/tmp/runtime15061256449536606169.scm", 1568784), PairWithPosition.make(PairWithPosition.make(simpleSymbol82, PairWithPosition.make(simpleSymbol81, PairWithPosition.make(PairWithPosition.make(simpleSymbol85, PairWithPosition.make(PairWithPosition.make(simpleSymbol386, PairWithPosition.make(simpleSymbol80, PairWithPosition.make(simpleSymbol79, PairWithPosition.make(simpleSymbol84, PairWithPosition.make(simpleSymbol78, lList, "/tmp/runtime15061256449536606169.scm", 1577033), "/tmp/runtime15061256449536606169.scm", 1577018), "/tmp/runtime15061256449536606169.scm", 1577003), "/tmp/runtime15061256449536606169.scm", 1576988), "/tmp/runtime15061256449536606169.scm", 1576982), PairWithPosition.make(simpleSymbol81, lList, "/tmp/runtime15061256449536606169.scm", 1581078), "/tmp/runtime15061256449536606169.scm", 1576982), "/tmp/runtime15061256449536606169.scm", 1576976), lList, "/tmp/runtime15061256449536606169.scm", 1576976), "/tmp/runtime15061256449536606169.scm", 1572880), "/tmp/runtime15061256449536606169.scm", 1572874), lList, "/tmp/runtime15061256449536606169.scm", 1572874), "/tmp/runtime15061256449536606169.scm", 1568784), "/tmp/runtime15061256449536606169.scm", 1568776);
        PairWithPosition pairWithPositionMake24 = PairWithPosition.make(simpleSymbol107, PairWithPosition.make(simpleSymbol77, PairWithPosition.make(simpleSymbol104, PairWithPosition.make(simpleSymbol88, PairWithPosition.make(PairWithPosition.make(simpleSymbol109, PairWithPosition.make(lList, lList, "/tmp/runtime15061256449536606169.scm", 1593403), "/tmp/runtime15061256449536606169.scm", 1593403), lList, "/tmp/runtime15061256449536606169.scm", 1593402), "/tmp/runtime15061256449536606169.scm", 1593386), "/tmp/runtime15061256449536606169.scm", 1593383), "/tmp/runtime15061256449536606169.scm", 1593360), "/tmp/runtime15061256449536606169.scm", 1593352);
        PairWithPosition pairWithPositionMake25 = PairWithPosition.make(simpleSymbol107, PairWithPosition.make(PairWithPosition.make(simpleSymbol108, PairWithPosition.make(simpleSymbol76, PairWithPosition.make(simpleSymbol75, lList, "/tmp/runtime15061256449536606169.scm", 1605672), "/tmp/runtime15061256449536606169.scm", 1605668), "/tmp/runtime15061256449536606169.scm", 1605648), PairWithPosition.make(PairWithPosition.make(simpleSymbol82, PairWithPosition.make(simpleSymbol77, PairWithPosition.make(PairWithPosition.make(simpleSymbol85, PairWithPosition.make(PairWithPosition.make(simpleSymbol386, PairWithPosition.make(simpleSymbol76, PairWithPosition.make(simpleSymbol75, lList, "/tmp/runtime15061256449536606169.scm", 1613856), "/tmp/runtime15061256449536606169.scm", 1613852), "/tmp/runtime15061256449536606169.scm", 1613846), PairWithPosition.make(simpleSymbol77, lList, "/tmp/runtime15061256449536606169.scm", 1617942), "/tmp/runtime15061256449536606169.scm", 1613846), "/tmp/runtime15061256449536606169.scm", 1613840), lList, "/tmp/runtime15061256449536606169.scm", 1613840), "/tmp/runtime15061256449536606169.scm", 1609744), "/tmp/runtime15061256449536606169.scm", 1609738), lList, "/tmp/runtime15061256449536606169.scm", 1609738), "/tmp/runtime15061256449536606169.scm", 1605648), "/tmp/runtime15061256449536606169.scm", 1605640);
        PairWithPosition pairWithPositionMake26 = PairWithPosition.make(simpleSymbol107, PairWithPosition.make(simpleSymbol73, PairWithPosition.make(simpleSymbol104, PairWithPosition.make(simpleSymbol88, PairWithPosition.make(PairWithPosition.make(simpleSymbol109, PairWithPosition.make(lList, lList, "/tmp/runtime15061256449536606169.scm", 1638460), "/tmp/runtime15061256449536606169.scm", 1638460), lList, "/tmp/runtime15061256449536606169.scm", 1638459), "/tmp/runtime15061256449536606169.scm", 1638443), "/tmp/runtime15061256449536606169.scm", 1638440), "/tmp/runtime15061256449536606169.scm", 1638416), "/tmp/runtime15061256449536606169.scm", 1638408);
        PairWithPosition pairWithPositionMake27 = PairWithPosition.make(simpleSymbol107, PairWithPosition.make(PairWithPosition.make(simpleSymbol74, PairWithPosition.make(simpleSymbol72, lList, "/tmp/runtime15061256449536606169.scm", 1646639), "/tmp/runtime15061256449536606169.scm", 1646608), PairWithPosition.make(PairWithPosition.make(simpleSymbol82, PairWithPosition.make(simpleSymbol73, PairWithPosition.make(PairWithPosition.make(simpleSymbol85, PairWithPosition.make(simpleSymbol72, PairWithPosition.make(simpleSymbol73, lList, "/tmp/runtime15061256449536606169.scm", 1658902), "/tmp/runtime15061256449536606169.scm", 1654806), "/tmp/runtime15061256449536606169.scm", 1654800), lList, "/tmp/runtime15061256449536606169.scm", 1654800), "/tmp/runtime15061256449536606169.scm", 1650704), "/tmp/runtime15061256449536606169.scm", 1650698), lList, "/tmp/runtime15061256449536606169.scm", 1650698), "/tmp/runtime15061256449536606169.scm", 1646608), "/tmp/runtime15061256449536606169.scm", 1646600);
        PairWithPosition pairWithPositionMake28 = PairWithPosition.make(simpleSymbol107, PairWithPosition.make(PairWithPosition.make(simpleSymbol67, PairWithPosition.make(simpleSymbol71, lList, "/tmp/runtime15061256449536606169.scm", 1667100), "/tmp/runtime15061256449536606169.scm", 1667088), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol121, a.c((SimpleSymbol) a.f("sendError"), lList, simpleSymbol120, lList, (SimpleSymbol) a.f("com.google.appinventor.components.runtime.util.RetValManager")), "/tmp/runtime15061256449536606169.scm", 1671179), PairWithPosition.make(simpleSymbol71, lList, "/tmp/runtime15061256449536606169.scm", 1671250), "/tmp/runtime15061256449536606169.scm", 1671178), lList, "/tmp/runtime15061256449536606169.scm", 1671178), "/tmp/runtime15061256449536606169.scm", 1667088), "/tmp/runtime15061256449536606169.scm", 1667080);
        PairWithPosition pairWithPositionMake29 = PairWithPosition.make(simpleSymbol50, PairWithPosition.make(simpleSymbol68, lList, "/tmp/runtime15061256449536606169.scm", 1679395), "/tmp/runtime15061256449536606169.scm", 1679376);
        PairWithPosition pairWithPositionMake30 = PairWithPosition.make(simpleSymbol28, PairWithPosition.make(simpleSymbol64, PairWithPosition.make((SimpleSymbol) a.f("<com.google.appinventor.components.runtime.errors.YailRuntimeError>"), lList, "/tmp/runtime15061256449536606169.scm", 1683497), "/tmp/runtime15061256449536606169.scm", 1683480), "/tmp/runtime15061256449536606169.scm", 1683466);
        PairWithPosition pairWithPositionMake31 = PairWithPosition.make(PairWithPosition.make(simpleSymbol70, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol121, Pair.make(PairWithPosition.make(simpleSymbol69, lList, "/tmp/runtime15061256449536606169.scm", 1703957), Pair.make(Pair.make(simpleSymbol120, Pair.make((SimpleSymbol) a.f("toastAllowed"), lList)), lList)), "/tmp/runtime15061256449536606169.scm", 1703957), lList, "/tmp/runtime15061256449536606169.scm", 1703956), PairWithPosition.make(PairWithPosition.make(simpleSymbol115, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol100, PairWithPosition.make(PairWithPosition.make(simpleSymbol119, PairWithPosition.make(PairWithPosition.make(simpleSymbol65, PairWithPosition.make(simpleSymbol68, PairWithPosition.make((SimpleSymbol) a.f("java.lang.Error"), lList, "/tmp/runtime15061256449536606169.scm", 1708085), "/tmp/runtime15061256449536606169.scm", 1708082), "/tmp/runtime15061256449536606169.scm", 1708071), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol121, a.c((SimpleSymbol) a.f("toString"), lList, simpleSymbol120, lList, simpleSymbol68), "/tmp/runtime15061256449536606169.scm", 1708103), lList, "/tmp/runtime15061256449536606169.scm", 1708102), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol121, a.c(simpleSymbol66, lList, simpleSymbol120, lList, simpleSymbol68), "/tmp/runtime15061256449536606169.scm", 1708117), lList, "/tmp/runtime15061256449536606169.scm", 1708116), lList, "/tmp/runtime15061256449536606169.scm", 1708116), "/tmp/runtime15061256449536606169.scm", 1708102), "/tmp/runtime15061256449536606169.scm", 1708071), "/tmp/runtime15061256449536606169.scm", 1708067), lList, "/tmp/runtime15061256449536606169.scm", 1708067), "/tmp/runtime15061256449536606169.scm", 1708058), lList, "/tmp/runtime15061256449536606169.scm", 1708057), PairWithPosition.make(PairWithPosition.make(simpleSymbol67, PairWithPosition.make(simpleSymbol100, lList, "/tmp/runtime15061256449536606169.scm", 1712162), "/tmp/runtime15061256449536606169.scm", 1712150), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol121, Pair.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol121, a.c((SimpleSymbol) a.f("makeText"), lList, simpleSymbol120, lList, (SimpleSymbol) a.f("android.widget.Toast")), "/tmp/runtime15061256449536606169.scm", 1716248), PairWithPosition.make(PairWithPosition.make(simpleSymbol69, lList, "/tmp/runtime15061256449536606169.scm", 1716278), PairWithPosition.make(simpleSymbol100, PairWithPosition.make(IntNum.make(5), lList, "/tmp/runtime15061256449536606169.scm", 1716293), "/tmp/runtime15061256449536606169.scm", 1716285), "/tmp/runtime15061256449536606169.scm", 1716278), "/tmp/runtime15061256449536606169.scm", 1716247), Pair.make(Pair.make(simpleSymbol120, Pair.make((SimpleSymbol) a.f("show"), lList)), lList)), "/tmp/runtime15061256449536606169.scm", 1716247), lList, "/tmp/runtime15061256449536606169.scm", 1716246), lList, "/tmp/runtime15061256449536606169.scm", 1716246), "/tmp/runtime15061256449536606169.scm", 1712150), "/tmp/runtime15061256449536606169.scm", 1708057), "/tmp/runtime15061256449536606169.scm", 1708052), lList, "/tmp/runtime15061256449536606169.scm", 1708052), "/tmp/runtime15061256449536606169.scm", 1703956), "/tmp/runtime15061256449536606169.scm", 1703950), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol121, a.c((SimpleSymbol) a.f("alert"), lList, simpleSymbol120, lList, (SimpleSymbol) a.f("com.google.appinventor.components.runtime.util.RuntimeErrorAlert")), "/tmp/runtime15061256449536606169.scm", 1724431), PairWithPosition.make(PairWithPosition.make(simpleSymbol69, lList, "/tmp/runtime15061256449536606169.scm", 1728527), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol121, a.c(simpleSymbol66, lList, simpleSymbol120, lList, simpleSymbol68), "/tmp/runtime15061256449536606169.scm", 1732624), lList, "/tmp/runtime15061256449536606169.scm", 1732623), PairWithPosition.make(PairWithPosition.make(simpleSymbol119, PairWithPosition.make(PairWithPosition.make(simpleSymbol65, PairWithPosition.make(simpleSymbol68, PairWithPosition.make(simpleSymbol64, lList, "/tmp/runtime15061256449536606169.scm", 1736737), "/tmp/runtime15061256449536606169.scm", 1736734), "/tmp/runtime15061256449536606169.scm", 1736723), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol121, Pair.make(PairWithPosition.make(simpleSymbol63, PairWithPosition.make(simpleSymbol64, PairWithPosition.make(simpleSymbol68, lList, "/tmp/runtime15061256449536606169.scm", 1736777), "/tmp/runtime15061256449536606169.scm", 1736760), "/tmp/runtime15061256449536606169.scm", 1736756), Pair.make(Pair.make(simpleSymbol120, Pair.make((SimpleSymbol) a.f("getErrorType"), lList)), lList)), "/tmp/runtime15061256449536606169.scm", 1736756), lList, "/tmp/runtime15061256449536606169.scm", 1736755), PairWithPosition.make("Runtime Error", lList, "/tmp/runtime15061256449536606169.scm", 1736795), "/tmp/runtime15061256449536606169.scm", 1736755), "/tmp/runtime15061256449536606169.scm", 1736723), "/tmp/runtime15061256449536606169.scm", 1736719), PairWithPosition.make("End Application", lList, "/tmp/runtime15061256449536606169.scm", 1740815), "/tmp/runtime15061256449536606169.scm", 1736719), "/tmp/runtime15061256449536606169.scm", 1732623), "/tmp/runtime15061256449536606169.scm", 1728527), "/tmp/runtime15061256449536606169.scm", 1724430), lList, "/tmp/runtime15061256449536606169.scm", 1724430), "/tmp/runtime15061256449536606169.scm", 1703950);
        PairWithPosition pairWithPositionMake32 = PairWithPosition.make((SimpleSymbol) a.f("dispatchEvent"), PairWithPosition.make(simpleSymbol56, PairWithPosition.make(simpleSymbol104, PairWithPosition.make(simpleSymbol46, PairWithPosition.make(simpleSymbol61, PairWithPosition.make(simpleSymbol104, PairWithPosition.make(simpleSymbol62, PairWithPosition.make(simpleSymbol55, PairWithPosition.make(simpleSymbol104, PairWithPosition.make(simpleSymbol62, PairWithPosition.make(simpleSymbol53, PairWithPosition.make(simpleSymbol104, PairWithPosition.make(simpleSymbol45, lList, "/tmp/runtime15061256449536606169.scm", 1769511), "/tmp/runtime15061256449536606169.scm", 1769508), "/tmp/runtime15061256449536606169.scm", 1769503), "/tmp/runtime15061256449536606169.scm", 1765420), "/tmp/runtime15061256449536606169.scm", 1765417), "/tmp/runtime15061256449536606169.scm", 1765407), "/tmp/runtime15061256449536606169.scm", 1761338), "/tmp/runtime15061256449536606169.scm", 1761335), "/tmp/runtime15061256449536606169.scm", 1761311), "/tmp/runtime15061256449536606169.scm", 1757234), "/tmp/runtime15061256449536606169.scm", 1757231), "/tmp/runtime15061256449536606169.scm", 1757215), "/tmp/runtime15061256449536606169.scm", 1757200);
        SimpleSymbol simpleSymbol398 = (SimpleSymbol) a.f(PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN);
        Lit7 = simpleSymbol398;
        PairWithPosition pairWithPositionMake33 = PairWithPosition.make(PairWithPosition.make(simpleSymbol59, PairWithPosition.make(PairWithPosition.make(simpleSymbol43, PairWithPosition.make(simpleSymbol61, lList, "/tmp/runtime15061256449536606169.scm", 1794100), "/tmp/runtime15061256449536606169.scm", 1794084), lList, "/tmp/runtime15061256449536606169.scm", 1794084), "/tmp/runtime15061256449536606169.scm", 1794066), lList, "/tmp/runtime15061256449536606169.scm", 1794065);
        PairWithPosition pairWithPositionMake34 = PairWithPosition.make(simpleSymbol60, PairWithPosition.make(simpleSymbol59, lList, "/tmp/runtime15061256449536606169.scm", 1798196), "/tmp/runtime15061256449536606169.scm", 1798166);
        PairWithPosition pairWithPositionMake35 = PairWithPosition.make(simpleSymbol58, PairWithPosition.make(PairWithPosition.make(simpleSymbol57, PairWithPosition.make(simpleSymbol59, lList, "/tmp/runtime15061256449536606169.scm", 1802299), "/tmp/runtime15061256449536606169.scm", 1802271), PairWithPosition.make(simpleSymbol56, lList, "/tmp/runtime15061256449536606169.scm", 1802317), "/tmp/runtime15061256449536606169.scm", 1802271), "/tmp/runtime15061256449536606169.scm", 1802266);
        PairWithPosition pairWithPositionMake36 = PairWithPosition.make(PairWithPosition.make(simpleSymbol54, PairWithPosition.make(PairWithPosition.make(simpleSymbol30, PairWithPosition.make(simpleSymbol61, PairWithPosition.make(simpleSymbol55, lList, "/tmp/runtime15061256449536606169.scm", 1806416), "/tmp/runtime15061256449536606169.scm", 1806392), "/tmp/runtime15061256449536606169.scm", 1806376), lList, "/tmp/runtime15061256449536606169.scm", 1806376), "/tmp/runtime15061256449536606169.scm", 1806367), lList, "/tmp/runtime15061256449536606169.scm", 1806366);
        SimpleSymbol simpleSymbol399 = (SimpleSymbol) a.f("makeList");
        Lit44 = simpleSymbol399;
        PairWithPosition pairWithPositionMake37 = PairWithPosition.make(simpleSymbol121, a.c(simpleSymbol399, lList, simpleSymbol120, lList, simpleSymbol88), "/tmp/runtime15061256449536606169.scm", 1843252);
        IntNum intNumMake = IntNum.make(0);
        Lit25 = intNumMake;
        SyntaxRules syntaxRules17 = new SyntaxRules(new Object[]{simpleSymbol122}, new SyntaxRule[]{new SyntaxRule(syntaxPattern3, "\u0001\u0001\u0001\u0001\u0001", "\u0011\u0018\u0004)\u0011\u0018\f\b\u0013)\u0011\u0018\u0014\b\u0003)\u0011\u0018\u001c\b\u000b\u0011\u0018$\u0011\u0018,Ñ\u0011\u00184\u0011\u0018<\u0011\u0018D\u0011\u0018L)\u0011\u0018T\b#\b\u0011\u0018\\\t\u0013\u0018d\u0011\u0018l\u0011\u0018tÑ\u0011\u00184\u0011\u0018|\u0011\u0018D\u0011\u0018\u0084\b\u0011\u0018\u008c\b\u0011\u0018\u0094\b\u0011\u0018\u009c\b\u000b\u0011\u0018¤\u0011\u0018¬\u0011\u0018´ā\u0011\u00184\u0011\u0018¼\u0011\u0018D\u0011\u0018\u0084\b\u0011\u0018Ä\b\u0011\u0018ÌI\u0011\u0018\u0094\b\u0011\u0018\u009c\b\u000b\u0018Ô\u0011\u0018Üa\u0011\u00184\t\u000b\u0011\u0018D\t\u0003\u0018ä\u0091\u0011\u00184\u0011\u0018ì\u0011\u0018D\u0011\u0018ô\b\u0011\u0018\u009c\b\u000b\u0011\u0018ü\u0011\u0018Ą\u0011\u0018Č\u0011\u0018Ĕ\u0011\u0018Ĝ\u0011\u0018Ĥ\u0011\u0018Ĭ\u0011\u0018Ĵ\u0011\u0018ļ\u0089\u0011\u00184\u0011\u0018ń\u0011\u0018Ō\b\u0011\u0018Ŕ\t\u001b\u0018Ŝ\u0011\u0018Ť\u0011\u0018Ŭ\u0011\u0018Ŵ\b\u0011\u00184\u0011\u0018ż\u0011\u0018D\u0011\u0018L\u0011\u0018Ƅ\u0011\u0018ƌ\u0011\u0018Ɣ\u0011\u0018Ɯ\u0011\u0018Ƥ\u0011\u0018Ƭ\u0011\u0018ƴ9\u0011\u0018Ƽ\t\u000b\u0018ǄY\u0011\u0018ǌ)\u0011\u0018\u009c\b\u000b\u0018ǔ\u0018ǜ", new Object[]{simpleSymbol114, simpleSymbol391, simpleSymbol392, simpleSymbol393, pairWithPositionMake, pairWithPositionMake2, simpleSymbol107, pairWithPositionMake3, simpleSymbol104, simpleSymbol44, pairWithPositionMake4, simpleSymbol394, pairWithPositionMake5, pairWithPositionMake6, pairWithPositionMake7, simpleSymbol95, simpleSymbol99, pairWithPositionMake8, simpleSymbol10, simpleSymbol109, pairWithPositionMake11, pairWithPositionMake14, pairWithPositionMake15, simpleSymbol89, pairWithPositionMake16, simpleSymbol42, pairWithPositionMake17, pairWithPositionMake18, pairWithPositionMake19, simpleSymbol397, simpleSymbol94, pairWithPositionMake20, pairWithPositionMake21, pairWithPositionMake22, pairWithPositionMake23, pairWithPositionMake24, pairWithPositionMake25, pairWithPositionMake26, pairWithPositionMake27, pairWithPositionMake28, pairWithPositionMake29, pairWithPositionMake30, simpleSymbol119, pairWithPositionMake31, PairWithPosition.make(simpleSymbol107, PairWithPosition.make(pairWithPositionMake32, PairWithPosition.make(simpleSymbol104, PairWithPosition.make(simpleSymbol398, PairWithPosition.make(PairWithPosition.make(simpleSymbol115, PairWithPosition.make(pairWithPositionMake33, PairWithPosition.make(PairWithPosition.make(simpleSymbol119, PairWithPosition.make(pairWithPositionMake34, PairWithPosition.make(PairWithPosition.make(simpleSymbol119, PairWithPosition.make(pairWithPositionMake35, PairWithPosition.make(PairWithPosition.make(simpleSymbol115, PairWithPosition.make(pairWithPositionMake36, PairWithPosition.make(PairWithPosition.make(simpleSymbol39, PairWithPosition.make(PairWithPosition.make(simpleSymbol114, PairWithPosition.make(PairWithPosition.make(simpleSymbol38, PairWithPosition.make(simpleSymbol54, PairWithPosition.make(PairWithPosition.make(pairWithPositionMake37, PairWithPosition.make(simpleSymbol53, PairWithPosition.make(intNumMake, lList, "/tmp/runtime15061256449536606169.scm", 1843282), "/tmp/runtime15061256449536606169.scm", 1843277), "/tmp/runtime15061256449536606169.scm", 1843251), lList, "/tmp/runtime15061256449536606169.scm", 1843251), "/tmp/runtime15061256449536606169.scm", 1843243), "/tmp/runtime15061256449536606169.scm", 1843236), PairWithPosition.make(bool, lList, "/tmp/runtime15061256449536606169.scm", 1847332), "/tmp/runtime15061256449536606169.scm", 1843236), "/tmp/runtime15061256449536606169.scm", 1839138), PairWithPosition.make(PairWithPosition.make(simpleSymbol52, PairWithPosition.make(simpleSymbol36, PairWithPosition.make(bool2, lList, "/tmp/runtime15061256449536606169.scm", 1855524), "/tmp/runtime15061256449536606169.scm", 1851437), "/tmp/runtime15061256449536606169.scm", 1851426), PairWithPosition.make(PairWithPosition.make(simpleSymbol52, PairWithPosition.make(simpleSymbol35, PairWithPosition.make(PairWithPosition.make(simpleSymbol114, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol121, a.c(simpleSymbol49, lList, simpleSymbol120, lList, simpleSymbol52), "/tmp/runtime15061256449536606169.scm", 1892390), lList, "/tmp/runtime15061256449536606169.scm", 1892389), PairWithPosition.make(PairWithPosition.make(simpleSymbol119, PairWithPosition.make(PairWithPosition.make(simpleSymbol51, PairWithPosition.make(PairWithPosition.make(simpleSymbol58, PairWithPosition.make(PairWithPosition.make(simpleSymbol69, lList, "/tmp/runtime15061256449536606169.scm", 1908787), PairWithPosition.make(simpleSymbol56, lList, "/tmp/runtime15061256449536606169.scm", 1908794), "/tmp/runtime15061256449536606169.scm", 1908787), "/tmp/runtime15061256449536606169.scm", 1908782), PairWithPosition.make(PairWithPosition.make(simpleSymbol34, PairWithPosition.make(simpleSymbol55, PairWithPosition.make("PermissionNeeded", lList, "/tmp/runtime15061256449536606169.scm", 1912896), "/tmp/runtime15061256449536606169.scm", 1912886), "/tmp/runtime15061256449536606169.scm", 1912878), lList, "/tmp/runtime15061256449536606169.scm", 1912878), "/tmp/runtime15061256449536606169.scm", 1908782), "/tmp/runtime15061256449536606169.scm", 1908777), PairWithPosition.make(PairWithPosition.make(simpleSymbol50, PairWithPosition.make(simpleSymbol52, lList, "/tmp/runtime15061256449536606169.scm", 1929276), "/tmp/runtime15061256449536606169.scm", 1929257), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol121, Pair.make(PairWithPosition.make(simpleSymbol69, lList, "/tmp/runtime15061256449536606169.scm", 1933354), Pair.make(Pair.make(simpleSymbol120, Pair.make(simpleSymbol33, lList)), lList)), "/tmp/runtime15061256449536606169.scm", 1933354), PairWithPosition.make(simpleSymbol56, PairWithPosition.make(simpleSymbol55, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol121, a.c(simpleSymbol32, lList, simpleSymbol120, lList, simpleSymbol52), "/tmp/runtime15061256449536606169.scm", 1937475), lList, "/tmp/runtime15061256449536606169.scm", 1937474), lList, "/tmp/runtime15061256449536606169.scm", 1937474), "/tmp/runtime15061256449536606169.scm", 1933394), "/tmp/runtime15061256449536606169.scm", 1933378), "/tmp/runtime15061256449536606169.scm", 1933353), lList, "/tmp/runtime15061256449536606169.scm", 1933353), "/tmp/runtime15061256449536606169.scm", 1929257), "/tmp/runtime15061256449536606169.scm", 1908777), "/tmp/runtime15061256449536606169.scm", 1908773), PairWithPosition.make(bool2, lList, "/tmp/runtime15061256449536606169.scm", 1941541), "/tmp/runtime15061256449536606169.scm", 1908773), "/tmp/runtime15061256449536606169.scm", 1892389), "/tmp/runtime15061256449536606169.scm", 1888291), lList, "/tmp/runtime15061256449536606169.scm", 1888291), "/tmp/runtime15061256449536606169.scm", 1884205), "/tmp/runtime15061256449536606169.scm", 1884194), PairWithPosition.make(PairWithPosition.make(simpleSymbol52, PairWithPosition.make(simpleSymbol31, PairWithPosition.make(PairWithPosition.make(simpleSymbol114, PairWithPosition.make(PairWithPosition.make(simpleSymbol97, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol121, a.c(simpleSymbol66, lList, simpleSymbol120, lList, simpleSymbol52), "/tmp/runtime15061256449536606169.scm", 1953848), lList, "/tmp/runtime15061256449536606169.scm", 1953847), lList, "/tmp/runtime15061256449536606169.scm", 1953847), "/tmp/runtime15061256449536606169.scm", 1953829), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol121, a.c(simpleSymbol49, lList, simpleSymbol120, lList, simpleSymbol52), "/tmp/runtime15061256449536606169.scm", 1962022), lList, "/tmp/runtime15061256449536606169.scm", 1962021), PairWithPosition.make(PairWithPosition.make(simpleSymbol50, PairWithPosition.make(simpleSymbol52, lList, "/tmp/runtime15061256449536606169.scm", 1966136), "/tmp/runtime15061256449536606169.scm", 1966117), PairWithPosition.make(bool2, lList, "/tmp/runtime15061256449536606169.scm", 1970213), "/tmp/runtime15061256449536606169.scm", 1966117), "/tmp/runtime15061256449536606169.scm", 1962021), "/tmp/runtime15061256449536606169.scm", 1953829), "/tmp/runtime15061256449536606169.scm", 1949731), lList, "/tmp/runtime15061256449536606169.scm", 1949731), "/tmp/runtime15061256449536606169.scm", 1945645), "/tmp/runtime15061256449536606169.scm", 1945634), lList, "/tmp/runtime15061256449536606169.scm", 1945634), "/tmp/runtime15061256449536606169.scm", 1884194), "/tmp/runtime15061256449536606169.scm", 1851426), "/tmp/runtime15061256449536606169.scm", 1839138), "/tmp/runtime15061256449536606169.scm", 1835041), lList, "/tmp/runtime15061256449536606169.scm", 1835041), "/tmp/runtime15061256449536606169.scm", 1806366), "/tmp/runtime15061256449536606169.scm", 1806361), PairWithPosition.make(bool2, lList, "/tmp/runtime15061256449536606169.scm", 1974297), "/tmp/runtime15061256449536606169.scm", 1806361), "/tmp/runtime15061256449536606169.scm", 1802266), "/tmp/runtime15061256449536606169.scm", 1802262), PairWithPosition.make(PairWithPosition.make(simpleSymbol114, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol121, a.c((SimpleSymbol) a.f("unregisterEventForDelegation"), lList, simpleSymbol120, lList, simpleSymbol48), "/tmp/runtime15061256449536606169.scm", 1986585), PairWithPosition.make(PairWithPosition.make(simpleSymbol63, PairWithPosition.make(simpleSymbol47, PairWithPosition.make(PairWithPosition.make(simpleSymbol69, lList, "/tmp/runtime15061256449536606169.scm", 1990752), lList, "/tmp/runtime15061256449536606169.scm", 1990752), "/tmp/runtime15061256449536606169.scm", 1990686), "/tmp/runtime15061256449536606169.scm", 1990682), PairWithPosition.make(simpleSymbol61, PairWithPosition.make(simpleSymbol55, lList, "/tmp/runtime15061256449536606169.scm", 1994802), "/tmp/runtime15061256449536606169.scm", 1994778), "/tmp/runtime15061256449536606169.scm", 1990682), "/tmp/runtime15061256449536606169.scm", 1986584), PairWithPosition.make(bool2, lList, "/tmp/runtime15061256449536606169.scm", 1998872), "/tmp/runtime15061256449536606169.scm", 1986584), "/tmp/runtime15061256449536606169.scm", 1982486), lList, "/tmp/runtime15061256449536606169.scm", 1982486), "/tmp/runtime15061256449536606169.scm", 1802262), "/tmp/runtime15061256449536606169.scm", 1798166), "/tmp/runtime15061256449536606169.scm", 1798162), lList, "/tmp/runtime15061256449536606169.scm", 1798162), "/tmp/runtime15061256449536606169.scm", 1794065), "/tmp/runtime15061256449536606169.scm", 1794060), lList, "/tmp/runtime15061256449536606169.scm", 1794060), "/tmp/runtime15061256449536606169.scm", 1769534), "/tmp/runtime15061256449536606169.scm", 1769531), "/tmp/runtime15061256449536606169.scm", 1757200), "/tmp/runtime15061256449536606169.scm", 1757192), PairWithPosition.make(simpleSymbol107, PairWithPosition.make(PairWithPosition.make((SimpleSymbol) a.f("dispatchGenericEvent"), PairWithPosition.make(simpleSymbol56, PairWithPosition.make(simpleSymbol104, PairWithPosition.make(simpleSymbol46, PairWithPosition.make(simpleSymbol55, PairWithPosition.make(simpleSymbol104, PairWithPosition.make(simpleSymbol62, PairWithPosition.make(simpleSymbol37, PairWithPosition.make(simpleSymbol104, PairWithPosition.make(simpleSymbol398, PairWithPosition.make(simpleSymbol53, PairWithPosition.make(simpleSymbol104, PairWithPosition.make(simpleSymbol45, lList, "/tmp/runtime15061256449536606169.scm", 2019374), "/tmp/runtime15061256449536606169.scm", 2019371), "/tmp/runtime15061256449536606169.scm", 2019366), "/tmp/runtime15061256449536606169.scm", 2015291), "/tmp/runtime15061256449536606169.scm", 2015288), "/tmp/runtime15061256449536606169.scm", 2015270), "/tmp/runtime15061256449536606169.scm", 2011187), "/tmp/runtime15061256449536606169.scm", 2011184), "/tmp/runtime15061256449536606169.scm", 2011174), "/tmp/runtime15061256449536606169.scm", 2007097), "/tmp/runtime15061256449536606169.scm", 2007094), "/tmp/runtime15061256449536606169.scm", 2007078), "/tmp/runtime15061256449536606169.scm", 2007056), PairWithPosition.make(simpleSymbol104, PairWithPosition.make(simpleSymbol44, PairWithPosition.make(PairWithPosition.make((SimpleSymbol) a.f("let*"), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol40, PairWithPosition.make(PairWithPosition.make(simpleSymbol43, PairWithPosition.make(PairWithPosition.make(simpleSymbol42, PairWithPosition.make("any$", PairWithPosition.make(PairWithPosition.make(simpleSymbol41, PairWithPosition.make(simpleSymbol56, lList, "/tmp/runtime15061256449536606169.scm", 2056280), "/tmp/runtime15061256449536606169.scm", 2056263), PairWithPosition.make("$", PairWithPosition.make(simpleSymbol55, lList, "/tmp/runtime15061256449536606169.scm", 2056301), "/tmp/runtime15061256449536606169.scm", 2056297), "/tmp/runtime15061256449536606169.scm", 2056263), "/tmp/runtime15061256449536606169.scm", 2056256), "/tmp/runtime15061256449536606169.scm", 2056241), lList, "/tmp/runtime15061256449536606169.scm", 2056241), "/tmp/runtime15061256449536606169.scm", 2056225), lList, "/tmp/runtime15061256449536606169.scm", 2056225), "/tmp/runtime15061256449536606169.scm", 2056209), PairWithPosition.make(PairWithPosition.make(simpleSymbol54, PairWithPosition.make(PairWithPosition.make(simpleSymbol57, PairWithPosition.make(simpleSymbol40, lList, "/tmp/runtime15061256449536606169.scm", 2060342), "/tmp/runtime15061256449536606169.scm", 2060314), lList, "/tmp/runtime15061256449536606169.scm", 2060314), "/tmp/runtime15061256449536606169.scm", 2060305), lList, "/tmp/runtime15061256449536606169.scm", 2060305), "/tmp/runtime15061256449536606169.scm", 2056208), PairWithPosition.make(PairWithPosition.make(simpleSymbol119, PairWithPosition.make(simpleSymbol54, PairWithPosition.make(PairWithPosition.make(simpleSymbol39, PairWithPosition.make(PairWithPosition.make(simpleSymbol114, PairWithPosition.make(PairWithPosition.make(simpleSymbol38, PairWithPosition.make(simpleSymbol54, PairWithPosition.make(PairWithPosition.make(simpleSymbol85, PairWithPosition.make(simpleSymbol56, PairWithPosition.make(PairWithPosition.make(simpleSymbol85, PairWithPosition.make(simpleSymbol37, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol121, a.c(simpleSymbol399, lList, simpleSymbol120, lList, simpleSymbol88), "/tmp/runtime15061256449536606169.scm", 2076753), PairWithPosition.make(simpleSymbol53, PairWithPosition.make(intNumMake, lList, "/tmp/runtime15061256449536606169.scm", 2076783), "/tmp/runtime15061256449536606169.scm", 2076778), "/tmp/runtime15061256449536606169.scm", 2076752), lList, "/tmp/runtime15061256449536606169.scm", 2076752), "/tmp/runtime15061256449536606169.scm", 2076734), "/tmp/runtime15061256449536606169.scm", 2076728), lList, "/tmp/runtime15061256449536606169.scm", 2076728), "/tmp/runtime15061256449536606169.scm", 2076712), "/tmp/runtime15061256449536606169.scm", 2076706), lList, "/tmp/runtime15061256449536606169.scm", 2076706), "/tmp/runtime15061256449536606169.scm", 2076698), "/tmp/runtime15061256449536606169.scm", 2076691), PairWithPosition.make(bool, lList, "/tmp/runtime15061256449536606169.scm", 2080787), "/tmp/runtime15061256449536606169.scm", 2076691), "/tmp/runtime15061256449536606169.scm", 2072593), PairWithPosition.make(PairWithPosition.make(simpleSymbol52, PairWithPosition.make(simpleSymbol36, PairWithPosition.make(bool2, lList, "/tmp/runtime15061256449536606169.scm", 2088979), "/tmp/runtime15061256449536606169.scm", 2084892), "/tmp/runtime15061256449536606169.scm", 2084881), PairWithPosition.make(PairWithPosition.make(simpleSymbol52, PairWithPosition.make(simpleSymbol35, PairWithPosition.make(PairWithPosition.make(simpleSymbol114, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol121, a.c(simpleSymbol49, lList, simpleSymbol120, lList, simpleSymbol52), "/tmp/runtime15061256449536606169.scm", 2101269), lList, "/tmp/runtime15061256449536606169.scm", 2101268), PairWithPosition.make(PairWithPosition.make(simpleSymbol119, PairWithPosition.make(PairWithPosition.make(simpleSymbol51, PairWithPosition.make(PairWithPosition.make(simpleSymbol58, PairWithPosition.make(PairWithPosition.make(simpleSymbol69, lList, "/tmp/runtime15061256449536606169.scm", 2117666), PairWithPosition.make(simpleSymbol56, lList, "/tmp/runtime15061256449536606169.scm", 2117673), "/tmp/runtime15061256449536606169.scm", 2117666), "/tmp/runtime15061256449536606169.scm", 2117661), PairWithPosition.make(PairWithPosition.make(simpleSymbol34, PairWithPosition.make(simpleSymbol55, PairWithPosition.make("PermissionNeeded", lList, "/tmp/runtime15061256449536606169.scm", 2121775), "/tmp/runtime15061256449536606169.scm", 2121765), "/tmp/runtime15061256449536606169.scm", 2121757), lList, "/tmp/runtime15061256449536606169.scm", 2121757), "/tmp/runtime15061256449536606169.scm", 2117661), "/tmp/runtime15061256449536606169.scm", 2117656), PairWithPosition.make(PairWithPosition.make(simpleSymbol50, PairWithPosition.make(simpleSymbol52, lList, "/tmp/runtime15061256449536606169.scm", 2138155), "/tmp/runtime15061256449536606169.scm", 2138136), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol121, Pair.make(PairWithPosition.make(simpleSymbol69, lList, "/tmp/runtime15061256449536606169.scm", 2142233), Pair.make(Pair.make(simpleSymbol120, Pair.make(simpleSymbol33, lList)), lList)), "/tmp/runtime15061256449536606169.scm", 2142233), PairWithPosition.make(simpleSymbol56, PairWithPosition.make(simpleSymbol55, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol121, a.c(simpleSymbol32, lList, simpleSymbol120, lList, simpleSymbol52), "/tmp/runtime15061256449536606169.scm", 2146330), lList, "/tmp/runtime15061256449536606169.scm", 2146329), lList, "/tmp/runtime15061256449536606169.scm", 2146329), "/tmp/runtime15061256449536606169.scm", 2142273), "/tmp/runtime15061256449536606169.scm", 2142257), "/tmp/runtime15061256449536606169.scm", 2142232), lList, "/tmp/runtime15061256449536606169.scm", 2142232), "/tmp/runtime15061256449536606169.scm", 2138136), "/tmp/runtime15061256449536606169.scm", 2117656), "/tmp/runtime15061256449536606169.scm", 2117652), PairWithPosition.make(bool2, lList, "/tmp/runtime15061256449536606169.scm", 2150420), "/tmp/runtime15061256449536606169.scm", 2117652), "/tmp/runtime15061256449536606169.scm", 2101268), "/tmp/runtime15061256449536606169.scm", 2097170), lList, "/tmp/runtime15061256449536606169.scm", 2097170), "/tmp/runtime15061256449536606169.scm", 2093084), "/tmp/runtime15061256449536606169.scm", 2093073), PairWithPosition.make(PairWithPosition.make(simpleSymbol52, PairWithPosition.make(simpleSymbol31, PairWithPosition.make(PairWithPosition.make(simpleSymbol114, PairWithPosition.make(PairWithPosition.make(simpleSymbol97, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol121, a.c(simpleSymbol66, lList, simpleSymbol120, lList, simpleSymbol52), "/tmp/runtime15061256449536606169.scm", 2162727), lList, "/tmp/runtime15061256449536606169.scm", 2162726), lList, "/tmp/runtime15061256449536606169.scm", 2162726), "/tmp/runtime15061256449536606169.scm", 2162708), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol121, a.c(simpleSymbol49, lList, simpleSymbol120, lList, simpleSymbol52), "/tmp/runtime15061256449536606169.scm", 2170901), lList, "/tmp/runtime15061256449536606169.scm", 2170900), PairWithPosition.make(PairWithPosition.make(simpleSymbol50, PairWithPosition.make(simpleSymbol52, lList, "/tmp/runtime15061256449536606169.scm", 2175015), "/tmp/runtime15061256449536606169.scm", 2174996), PairWithPosition.make(bool2, lList, "/tmp/runtime15061256449536606169.scm", 2179092), "/tmp/runtime15061256449536606169.scm", 2174996), "/tmp/runtime15061256449536606169.scm", 2170900), "/tmp/runtime15061256449536606169.scm", 2162708), "/tmp/runtime15061256449536606169.scm", 2158610), lList, "/tmp/runtime15061256449536606169.scm", 2158610), "/tmp/runtime15061256449536606169.scm", 2154524), "/tmp/runtime15061256449536606169.scm", 2154513), lList, "/tmp/runtime15061256449536606169.scm", 2154513), "/tmp/runtime15061256449536606169.scm", 2093073), "/tmp/runtime15061256449536606169.scm", 2084881), "/tmp/runtime15061256449536606169.scm", 2072593), "/tmp/runtime15061256449536606169.scm", 2068496), lList, "/tmp/runtime15061256449536606169.scm", 2068496), "/tmp/runtime15061256449536606169.scm", 2064400), "/tmp/runtime15061256449536606169.scm", 2064396), lList, "/tmp/runtime15061256449536606169.scm", 2064396), "/tmp/runtime15061256449536606169.scm", 2056208), "/tmp/runtime15061256449536606169.scm", 2056202), lList, "/tmp/runtime15061256449536606169.scm", 2056202), "/tmp/runtime15061256449536606169.scm", 2019397), "/tmp/runtime15061256449536606169.scm", 2019394), "/tmp/runtime15061256449536606169.scm", 2007056), "/tmp/runtime15061256449536606169.scm", 2007048), PairWithPosition.make(simpleSymbol107, PairWithPosition.make(PairWithPosition.make(simpleSymbol30, PairWithPosition.make(simpleSymbol29, PairWithPosition.make(simpleSymbol55, lList, "/tmp/runtime15061256449536606169.scm", 2187310), "/tmp/runtime15061256449536606169.scm", 2187296), "/tmp/runtime15061256449536606169.scm", 2187280), PairWithPosition.make(PairWithPosition.make(simpleSymbol57, PairWithPosition.make(PairWithPosition.make(simpleSymbol43, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol121, a.c((SimpleSymbol) a.f("makeFullEventName"), lList, simpleSymbol120, lList, simpleSymbol48), "/tmp/runtime15061256449536606169.scm", 2199565), PairWithPosition.make(simpleSymbol29, PairWithPosition.make(simpleSymbol55, lList, "/tmp/runtime15061256449536606169.scm", 2203675), "/tmp/runtime15061256449536606169.scm", 2203661), "/tmp/runtime15061256449536606169.scm", 2199564), lList, "/tmp/runtime15061256449536606169.scm", 2199564), "/tmp/runtime15061256449536606169.scm", 2195467), lList, "/tmp/runtime15061256449536606169.scm", 2195467), "/tmp/runtime15061256449536606169.scm", 2191370), lList, "/tmp/runtime15061256449536606169.scm", 2191370), "/tmp/runtime15061256449536606169.scm", 2187280), "/tmp/runtime15061256449536606169.scm", 2187272), PairWithPosition.make((SimpleSymbol) a.f("$define"), lList, "/tmp/runtime15061256449536606169.scm", 2220048), PairWithPosition.make(simpleSymbol107, PairWithPosition.make(PairWithPosition.make(simpleSymbol8, PairWithPosition.make(simpleSymbol24, lList, "/tmp/runtime15061256449536606169.scm", 2232355), "/tmp/runtime15061256449536606169.scm", 2232338), PairWithPosition.make(PairWithPosition.make(simpleSymbol28, PairWithPosition.make(simpleSymbol27, PairWithPosition.make((SimpleSymbol) a.f("<com.google.appinventor.components.runtime.EventDispatcher>"), lList, "/tmp/runtime15061256449536606169.scm", 2240526), "/tmp/runtime15061256449536606169.scm", 2236442), "/tmp/runtime15061256449536606169.scm", 2236428), PairWithPosition.make(PairWithPosition.make(simpleSymbol23, PairWithPosition.make(PairWithPosition.make(simpleSymbol116, PairWithPosition.make(PairWithPosition.make(simpleSymbol25, lList, "/tmp/runtime15061256449536606169.scm", 2244638), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol121, a.c(simpleSymbol26, lList, simpleSymbol120, lList, simpleSymbol27), "/tmp/runtime15061256449536606169.scm", 2252825), PairWithPosition.make(PairWithPosition.make(simpleSymbol63, PairWithPosition.make(simpleSymbol47, PairWithPosition.make(PairWithPosition.make(simpleSymbol69, lList, "/tmp/runtime15061256449536606169.scm", 2256991), lList, "/tmp/runtime15061256449536606169.scm", 2256991), "/tmp/runtime15061256449536606169.scm", 2256925), "/tmp/runtime15061256449536606169.scm", 2256921), PairWithPosition.make(PairWithPosition.make(simpleSymbol22, PairWithPosition.make(simpleSymbol25, lList, "/tmp/runtime15061256449536606169.scm", 2261022), "/tmp/runtime15061256449536606169.scm", 2261017), PairWithPosition.make(PairWithPosition.make((SimpleSymbol) a.f("cdr"), PairWithPosition.make(simpleSymbol25, lList, "/tmp/runtime15061256449536606169.scm", 2265118), "/tmp/runtime15061256449536606169.scm", 2265113), lList, "/tmp/runtime15061256449536606169.scm", 2265113), "/tmp/runtime15061256449536606169.scm", 2261017), "/tmp/runtime15061256449536606169.scm", 2256921), "/tmp/runtime15061256449536606169.scm", 2252824), lList, "/tmp/runtime15061256449536606169.scm", 2252824), "/tmp/runtime15061256449536606169.scm", 2244638), "/tmp/runtime15061256449536606169.scm", 2244630), PairWithPosition.make(simpleSymbol24, lList, "/tmp/runtime15061256449536606169.scm", 2269206), "/tmp/runtime15061256449536606169.scm", 2244630), "/tmp/runtime15061256449536606169.scm", 2244620), lList, "/tmp/runtime15061256449536606169.scm", 2244620), "/tmp/runtime15061256449536606169.scm", 2236428), "/tmp/runtime15061256449536606169.scm", 2232338), "/tmp/runtime15061256449536606169.scm", 2232330), PairWithPosition.make(simpleSymbol107, PairWithPosition.make(PairWithPosition.make(simpleSymbol3, PairWithPosition.make(simpleSymbol19, lList, "/tmp/runtime15061256449536606169.scm", 2281513), "/tmp/runtime15061256449536606169.scm", 2281490), PairWithPosition.make(PairWithPosition.make(simpleSymbol23, PairWithPosition.make(PairWithPosition.make(simpleSymbol116, PairWithPosition.make(PairWithPosition.make(simpleSymbol21, lList, "/tmp/runtime15061256449536606169.scm", 2289694), PairWithPosition.make(PairWithPosition.make(simpleSymbol115, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol76, PairWithPosition.make(PairWithPosition.make(simpleSymbol22, PairWithPosition.make(simpleSymbol21, lList, "/tmp/runtime15061256449536606169.scm", 2293800), "/tmp/runtime15061256449536606169.scm", 2293795), lList, "/tmp/runtime15061256449536606169.scm", 2293795), "/tmp/runtime15061256449536606169.scm", 2293790), PairWithPosition.make(PairWithPosition.make(simpleSymbol75, PairWithPosition.make(PairWithPosition.make(simpleSymbol17, PairWithPosition.make(simpleSymbol21, lList, "/tmp/runtime15061256449536606169.scm", 2297903), "/tmp/runtime15061256449536606169.scm", 2297897), lList, "/tmp/runtime15061256449536606169.scm", 2297897), "/tmp/runtime15061256449536606169.scm", 2297886), lList, "/tmp/runtime15061256449536606169.scm", 2297886), "/tmp/runtime15061256449536606169.scm", 2293789), PairWithPosition.make(PairWithPosition.make(simpleSymbol20, PairWithPosition.make(simpleSymbol76, PairWithPosition.make(PairWithPosition.make(simpleSymbol75, lList, "/tmp/runtime15061256449536606169.scm", 2302013), lList, "/tmp/runtime15061256449536606169.scm", 2302013), "/tmp/runtime15061256449536606169.scm", 2302009), "/tmp/runtime15061256449536606169.scm", 2301978), lList, "/tmp/runtime15061256449536606169.scm", 2301978), "/tmp/runtime15061256449536606169.scm", 2293789), "/tmp/runtime15061256449536606169.scm", 2293784), lList, "/tmp/runtime15061256449536606169.scm", 2293784), "/tmp/runtime15061256449536606169.scm", 2289694), "/tmp/runtime15061256449536606169.scm", 2289686), PairWithPosition.make(simpleSymbol19, lList, "/tmp/runtime15061256449536606169.scm", 2306070), "/tmp/runtime15061256449536606169.scm", 2289686), "/tmp/runtime15061256449536606169.scm", 2289676), lList, "/tmp/runtime15061256449536606169.scm", 2289676), "/tmp/runtime15061256449536606169.scm", 2281490), "/tmp/runtime15061256449536606169.scm", 2281482), PairWithPosition.make(simpleSymbol107, PairWithPosition.make(PairWithPosition.make(simpleSymbol5, PairWithPosition.make(simpleSymbol14, lList, "/tmp/runtime15061256449536606169.scm", 2318373), "/tmp/runtime15061256449536606169.scm", 2318354), PairWithPosition.make(PairWithPosition.make(simpleSymbol23, PairWithPosition.make(PairWithPosition.make(simpleSymbol116, PairWithPosition.make(PairWithPosition.make(simpleSymbol18, lList, "/tmp/runtime15061256449536606169.scm", 2322462), PairWithPosition.make(PairWithPosition.make(simpleSymbol115, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol84, PairWithPosition.make(PairWithPosition.make(simpleSymbol13, PairWithPosition.make(simpleSymbol18, lList, "/tmp/runtime15061256449536606169.scm", 2326581), "/tmp/runtime15061256449536606169.scm", 2326574), lList, "/tmp/runtime15061256449536606169.scm", 2326574), "/tmp/runtime15061256449536606169.scm", 2326558), PairWithPosition.make(PairWithPosition.make(simpleSymbol78, PairWithPosition.make(PairWithPosition.make(simpleSymbol12, PairWithPosition.make(simpleSymbol18, lList, "/tmp/runtime15061256449536606169.scm", 2330674), "/tmp/runtime15061256449536606169.scm", 2330666), lList, "/tmp/runtime15061256449536606169.scm", 2330666), "/tmp/runtime15061256449536606169.scm", 2330654), PairWithPosition.make(PairWithPosition.make(simpleSymbol79, PairWithPosition.make(PairWithPosition.make(simpleSymbol17, PairWithPosition.make(simpleSymbol18, lList, "/tmp/runtime15061256449536606169.scm", 2334772), "/tmp/runtime15061256449536606169.scm", 2334766), lList, "/tmp/runtime15061256449536606169.scm", 2334766), "/tmp/runtime15061256449536606169.scm", 2334750), PairWithPosition.make(PairWithPosition.make(simpleSymbol16, PairWithPosition.make(PairWithPosition.make(simpleSymbol57, PairWithPosition.make(PairWithPosition.make(simpleSymbol22, PairWithPosition.make(simpleSymbol18, lList, "/tmp/runtime15061256449536606169.scm", 2338900), "/tmp/runtime15061256449536606169.scm", 2338895), lList, "/tmp/runtime15061256449536606169.scm", 2338895), "/tmp/runtime15061256449536606169.scm", 2338867), lList, "/tmp/runtime15061256449536606169.scm", 2338867), "/tmp/runtime15061256449536606169.scm", 2338846), lList, "/tmp/runtime15061256449536606169.scm", 2338846), "/tmp/runtime15061256449536606169.scm", 2334750), "/tmp/runtime15061256449536606169.scm", 2330654), "/tmp/runtime15061256449536606169.scm", 2326557), PairWithPosition.make(PairWithPosition.make(simpleSymbol115, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol15, PairWithPosition.make(PairWithPosition.make(simpleSymbol91, PairWithPosition.make(simpleSymbol79, PairWithPosition.make(simpleSymbol16, lList, "/tmp/runtime15061256449536606169.scm", 2355271), "/tmp/runtime15061256449536606169.scm", 2355256), "/tmp/runtime15061256449536606169.scm", 2355250), lList, "/tmp/runtime15061256449536606169.scm", 2355250), "/tmp/runtime15061256449536606169.scm", 2355232), lList, "/tmp/runtime15061256449536606169.scm", 2355231), PairWithPosition.make(PairWithPosition.make(simpleSymbol82, PairWithPosition.make(PairWithPosition.make(simpleSymbol11, PairWithPosition.make(PairWithPosition.make(simpleSymbol69, lList, "/tmp/runtime15061256449536606169.scm", 2363433), PairWithPosition.make(simpleSymbol84, lList, "/tmp/runtime15061256449536606169.scm", 2363440), "/tmp/runtime15061256449536606169.scm", 2363433), "/tmp/runtime15061256449536606169.scm", 2363426), PairWithPosition.make(simpleSymbol15, lList, "/tmp/runtime15061256449536606169.scm", 2363456), "/tmp/runtime15061256449536606169.scm", 2363426), "/tmp/runtime15061256449536606169.scm", 2363420), PairWithPosition.make(PairWithPosition.make(simpleSymbol98, PairWithPosition.make(simpleSymbol84, PairWithPosition.make(simpleSymbol15, lList, "/tmp/runtime15061256449536606169.scm", 2375748), "/tmp/runtime15061256449536606169.scm", 2375733), "/tmp/runtime15061256449536606169.scm", 2375708), lList, "/tmp/runtime15061256449536606169.scm", 2375708), "/tmp/runtime15061256449536606169.scm", 2363420), "/tmp/runtime15061256449536606169.scm", 2355231), "/tmp/runtime15061256449536606169.scm", 2355226), lList, "/tmp/runtime15061256449536606169.scm", 2355226), "/tmp/runtime15061256449536606169.scm", 2326557), "/tmp/runtime15061256449536606169.scm", 2326552), lList, "/tmp/runtime15061256449536606169.scm", 2326552), "/tmp/runtime15061256449536606169.scm", 2322462), "/tmp/runtime15061256449536606169.scm", 2322454), PairWithPosition.make(simpleSymbol14, lList, "/tmp/runtime15061256449536606169.scm", 2379798), "/tmp/runtime15061256449536606169.scm", 2322454), "/tmp/runtime15061256449536606169.scm", 2322444), lList, "/tmp/runtime15061256449536606169.scm", 2322444), "/tmp/runtime15061256449536606169.scm", 2318354), "/tmp/runtime15061256449536606169.scm", 2318346), PairWithPosition.make(simpleSymbol107, PairWithPosition.make(PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol14, lList, "/tmp/runtime15061256449536606169.scm", 2392099), "/tmp/runtime15061256449536606169.scm", 2392082), PairWithPosition.make(PairWithPosition.make(simpleSymbol23, PairWithPosition.make(PairWithPosition.make(simpleSymbol116, PairWithPosition.make(PairWithPosition.make(simpleSymbol18, lList, "/tmp/runtime15061256449536606169.scm", 2400286), PairWithPosition.make(PairWithPosition.make(simpleSymbol115, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol84, PairWithPosition.make(PairWithPosition.make(simpleSymbol13, PairWithPosition.make(simpleSymbol18, lList, "/tmp/runtime15061256449536606169.scm", 2404405), "/tmp/runtime15061256449536606169.scm", 2404398), lList, "/tmp/runtime15061256449536606169.scm", 2404398), "/tmp/runtime15061256449536606169.scm", 2404382), PairWithPosition.make(PairWithPosition.make(simpleSymbol78, PairWithPosition.make(PairWithPosition.make(simpleSymbol12, PairWithPosition.make(simpleSymbol18, lList, "/tmp/runtime15061256449536606169.scm", 2408498), "/tmp/runtime15061256449536606169.scm", 2408490), lList, "/tmp/runtime15061256449536606169.scm", 2408490), "/tmp/runtime15061256449536606169.scm", 2408478), lList, "/tmp/runtime15061256449536606169.scm", 2408478), "/tmp/runtime15061256449536606169.scm", 2404381), PairWithPosition.make(PairWithPosition.make(simpleSymbol70, PairWithPosition.make(simpleSymbol78, PairWithPosition.make(PairWithPosition.make(simpleSymbol78, lList, "/tmp/runtime15061256449536606169.scm", 2416683), lList, "/tmp/runtime15061256449536606169.scm", 2416683), "/tmp/runtime15061256449536606169.scm", 2416672), "/tmp/runtime15061256449536606169.scm", 2416666), lList, "/tmp/runtime15061256449536606169.scm", 2416666), "/tmp/runtime15061256449536606169.scm", 2404381), "/tmp/runtime15061256449536606169.scm", 2404376), lList, "/tmp/runtime15061256449536606169.scm", 2404376), "/tmp/runtime15061256449536606169.scm", 2400286), "/tmp/runtime15061256449536606169.scm", 2400278), PairWithPosition.make(simpleSymbol14, lList, "/tmp/runtime15061256449536606169.scm", 2420758), "/tmp/runtime15061256449536606169.scm", 2400278), "/tmp/runtime15061256449536606169.scm", 2400268), PairWithPosition.make(PairWithPosition.make(simpleSymbol23, PairWithPosition.make(PairWithPosition.make(simpleSymbol116, PairWithPosition.make(PairWithPosition.make(simpleSymbol18, lList, "/tmp/runtime15061256449536606169.scm", 2428958), PairWithPosition.make(PairWithPosition.make(simpleSymbol115, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol84, PairWithPosition.make(PairWithPosition.make(simpleSymbol13, PairWithPosition.make(simpleSymbol18, lList, "/tmp/runtime15061256449536606169.scm", 2433077), "/tmp/runtime15061256449536606169.scm", 2433070), lList, "/tmp/runtime15061256449536606169.scm", 2433070), "/tmp/runtime15061256449536606169.scm", 2433054), PairWithPosition.make(PairWithPosition.make(simpleSymbol78, PairWithPosition.make(PairWithPosition.make(simpleSymbol12, PairWithPosition.make(simpleSymbol18, lList, "/tmp/runtime15061256449536606169.scm", 2437170), "/tmp/runtime15061256449536606169.scm", 2437162), lList, "/tmp/runtime15061256449536606169.scm", 2437162), "/tmp/runtime15061256449536606169.scm", 2437150), lList, "/tmp/runtime15061256449536606169.scm", 2437150), "/tmp/runtime15061256449536606169.scm", 2433053), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol121, Pair.make(PairWithPosition.make(simpleSymbol69, lList, "/tmp/runtime15061256449536606169.scm", 2445339), Pair.make(Pair.make(simpleSymbol120, Pair.make((SimpleSymbol) a.f("callInitialize"), lList)), lList)), "/tmp/runtime15061256449536606169.scm", 2445339), PairWithPosition.make(PairWithPosition.make(simpleSymbol11, PairWithPosition.make(PairWithPosition.make(simpleSymbol69, lList, "/tmp/runtime15061256449536606169.scm", 2445368), PairWithPosition.make(simpleSymbol84, lList, "/tmp/runtime15061256449536606169.scm", 2445375), "/tmp/runtime15061256449536606169.scm", 2445368), "/tmp/runtime15061256449536606169.scm", 2445361), lList, "/tmp/runtime15061256449536606169.scm", 2445361), "/tmp/runtime15061256449536606169.scm", 2445338), lList, "/tmp/runtime15061256449536606169.scm", 2445338), "/tmp/runtime15061256449536606169.scm", 2433053), "/tmp/runtime15061256449536606169.scm", 2433048), lList, "/tmp/runtime15061256449536606169.scm", 2433048), "/tmp/runtime15061256449536606169.scm", 2428958), "/tmp/runtime15061256449536606169.scm", 2428950), PairWithPosition.make(simpleSymbol14, lList, "/tmp/runtime15061256449536606169.scm", 2449430), "/tmp/runtime15061256449536606169.scm", 2428950), "/tmp/runtime15061256449536606169.scm", 2428940), lList, "/tmp/runtime15061256449536606169.scm", 2428940), "/tmp/runtime15061256449536606169.scm", 2400268), "/tmp/runtime15061256449536606169.scm", 2392082), "/tmp/runtime15061256449536606169.scm", 2392074), PairWithPosition.make(simpleSymbol107, PairWithPosition.make(PairWithPosition.make(simpleSymbol388, simpleSymbol9, "/tmp/runtime15061256449536606169.scm", 2461714), PairWithPosition.make(PairWithPosition.make(simpleSymbol43, PairWithPosition.make(PairWithPosition.make(simpleSymbol38, PairWithPosition.make(simpleSymbol42, PairWithPosition.make(PairWithPosition.make((SimpleSymbol) a.f("map"), PairWithPosition.make(simpleSymbol10, PairWithPosition.make(simpleSymbol9, lList, "/tmp/runtime15061256449536606169.scm", 2474024), "/tmp/runtime15061256449536606169.scm", 2474009), "/tmp/runtime15061256449536606169.scm", 2474004), lList, "/tmp/runtime15061256449536606169.scm", 2474004), "/tmp/runtime15061256449536606169.scm", 2469908), "/tmp/runtime15061256449536606169.scm", 2469901), lList, "/tmp/runtime15061256449536606169.scm", 2469901), "/tmp/runtime15061256449536606169.scm", 2465804), lList, "/tmp/runtime15061256449536606169.scm", 2465804), "/tmp/runtime15061256449536606169.scm", 2461714), "/tmp/runtime15061256449536606169.scm", 2461706), PairWithPosition.make(PairWithPosition.make(simpleSymbol121, a.c((SimpleSymbol) a.f("setDefaults"), lList, simpleSymbol120, lList, (SimpleSymbol) a.f("gnu.expr.Language")), "/tmp/runtime15061256449536606169.scm", 2494475), PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol121, a.c((SimpleSymbol) a.f("getInstance"), lList, simpleSymbol120, lList, (SimpleSymbol) a.f("kawa.standard.Scheme")), "/tmp/runtime15061256449536606169.scm", 2494506), lList, "/tmp/runtime15061256449536606169.scm", 2494505), lList, "/tmp/runtime15061256449536606169.scm", 2494505), "/tmp/runtime15061256449536606169.scm", 2494474), PairWithPosition.make(simpleSymbol39, PairWithPosition.make(PairWithPosition.make((SimpleSymbol) a.f("invoke"), PairWithPosition.make(PairWithPosition.make(simpleSymbol69, lList, "/tmp/runtime15061256449536606169.scm", 2531347), PairWithPosition.make(PairWithPosition.make(simpleSymbol109, PairWithPosition.make((SimpleSymbol) a.f("run"), lList, "/tmp/runtime15061256449536606169.scm", 2531355), "/tmp/runtime15061256449536606169.scm", 2531355), lList, "/tmp/runtime15061256449536606169.scm", 2531354), "/tmp/runtime15061256449536606169.scm", 2531347), "/tmp/runtime15061256449536606169.scm", 2531339), PairWithPosition.make(PairWithPosition.make(simpleSymbol52, PairWithPosition.make((SimpleSymbol) a.f("java.lang.Exception"), PairWithPosition.make(PairWithPosition.make(simpleSymbol97, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol121, a.c(simpleSymbol66, lList, simpleSymbol120, lList, simpleSymbol52), "/tmp/runtime15061256449536606169.scm", 2539551), lList, "/tmp/runtime15061256449536606169.scm", 2539550), lList, "/tmp/runtime15061256449536606169.scm", 2539550), "/tmp/runtime15061256449536606169.scm", 2539532), PairWithPosition.make(PairWithPosition.make(simpleSymbol50, PairWithPosition.make(simpleSymbol52, lList, "/tmp/runtime15061256449536606169.scm", 2543647), "/tmp/runtime15061256449536606169.scm", 2543628), lList, "/tmp/runtime15061256449536606169.scm", 2543628), "/tmp/runtime15061256449536606169.scm", 2539532), "/tmp/runtime15061256449536606169.scm", 2535446), "/tmp/runtime15061256449536606169.scm", 2535435), lList, "/tmp/runtime15061256449536606169.scm", 2535435), "/tmp/runtime15061256449536606169.scm", 2531339), "/tmp/runtime15061256449536606169.scm", 2527242), simpleSymbol82, PairWithPosition.make(PairWithPosition.make(simpleSymbol69, lList, "/tmp/runtime15061256449536606169.scm", 2547738), lList, "/tmp/runtime15061256449536606169.scm", 2547738), simpleSymbol98, PairWithPosition.make(PairWithPosition.make(simpleSymbol69, lList, "/tmp/runtime15061256449536606169.scm", 2555950), lList, "/tmp/runtime15061256449536606169.scm", 2555950), PairWithPosition.make(PairWithPosition.make(simpleSymbol8, PairWithPosition.make(simpleSymbol86, lList, "/tmp/runtime15061256449536606169.scm", 2564123), "/tmp/runtime15061256449536606169.scm", 2564106), PairWithPosition.make(PairWithPosition.make(simpleSymbol39, PairWithPosition.make(PairWithPosition.make(simpleSymbol115, PairWithPosition.make(PairWithPosition.make(PairWithPosition.make(simpleSymbol4, PairWithPosition.make(PairWithPosition.make(simpleSymbol6, PairWithPosition.make(simpleSymbol81, lList, "/tmp/runtime15061256449536606169.scm", 2576422), "/tmp/runtime15061256449536606169.scm", 2576413), lList, "/tmp/runtime15061256449536606169.scm", 2576413), "/tmp/runtime15061256449536606169.scm", 2576401), lList, "/tmp/runtime15061256449536606169.scm", 2576400), PairWithPosition.make(PairWithPosition.make(simpleSymbol108, PairWithPosition.make(PairWithPosition.make(simpleSymbol109, PairWithPosition.make(simpleSymbol7, lList, "/tmp/runtime15061256449536606169.scm", 2596898), "/tmp/runtime15061256449536606169.scm", 2596898), PairWithPosition.make(PairWithPosition.make(simpleSymbol116, PairWithPosition.make(lList, PairWithPosition.make(null, lList, "/tmp/runtime15061256449536606169.scm", 2596926), "/tmp/runtime15061256449536606169.scm", 2596923), "/tmp/runtime15061256449536606169.scm", 2596915), lList, "/tmp/runtime15061256449536606169.scm", 2596915), "/tmp/runtime15061256449536606169.scm", 2596897), "/tmp/runtime15061256449536606169.scm", 2596877), PairWithPosition.make(PairWithPosition.make(simpleSymbol23, PairWithPosition.make((SimpleSymbol) a.f("force"), PairWithPosition.make(PairWithPosition.make(simpleSymbol6, PairWithPosition.make(simpleSymbol73, lList, "/tmp/runtime15061256449536606169.scm", 2613286), "/tmp/runtime15061256449536606169.scm", 2613277), lList, "/tmp/runtime15061256449536606169.scm", 2613277), "/tmp/runtime15061256449536606169.scm", 2613271), "/tmp/runtime15061256449536606169.scm", 2613261), PairWithPosition.make(PairWithPosition.make(simpleSymbol5, PairWithPosition.make(simpleSymbol4, lList, "/tmp/runtime15061256449536606169.scm", 2617376), "/tmp/runtime15061256449536606169.scm", 2617357), PairWithPosition.make(PairWithPosition.make(simpleSymbol3, PairWithPosition.make(PairWithPosition.make(simpleSymbol6, PairWithPosition.make(simpleSymbol77, lList, "/tmp/runtime15061256449536606169.scm", 2641965), "/tmp/runtime15061256449536606169.scm", 2641956), lList, "/tmp/runtime15061256449536606169.scm", 2641956), "/tmp/runtime15061256449536606169.scm", 2641933), PairWithPosition.make(PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol4, lList, "/tmp/runtime15061256449536606169.scm", 2670622), "/tmp/runtime15061256449536606169.scm", 2670605), lList, "/tmp/runtime15061256449536606169.scm", 2670605), "/tmp/runtime15061256449536606169.scm", 2641933), "/tmp/runtime15061256449536606169.scm", 2617357), "/tmp/runtime15061256449536606169.scm", 2613261), "/tmp/runtime15061256449536606169.scm", 2596877), "/tmp/runtime15061256449536606169.scm", 2576400), "/tmp/runtime15061256449536606169.scm", 2576395), PairWithPosition.make(PairWithPosition.make(simpleSymbol52, PairWithPosition.make((SimpleSymbol) a.f("com.google.appinventor.components.runtime.errors.YailRuntimeError"), PairWithPosition.make(PairWithPosition.make(simpleSymbol50, PairWithPosition.make(simpleSymbol52, lList, "/tmp/runtime15061256449536606169.scm", 2682921), "/tmp/runtime15061256449536606169.scm", 2682902), lList, "/tmp/runtime15061256449536606169.scm", 2682902), "/tmp/runtime15061256449536606169.scm", 2674710), "/tmp/runtime15061256449536606169.scm", 2674699), lList, "/tmp/runtime15061256449536606169.scm", 2674699), "/tmp/runtime15061256449536606169.scm", 2576395), "/tmp/runtime15061256449536606169.scm", 2572298), lList, "/tmp/runtime15061256449536606169.scm", 2572298), "/tmp/runtime15061256449536606169.scm", 2564106)}, 0)}, 5);
        Lit97 = syntaxRules17;
        SimpleSymbol simpleSymbol400 = (SimpleSymbol) a.f("define-form-internal");
        Lit96 = simpleSymbol400;
        SyntaxRules syntaxRules18 = new SyntaxRules(new Object[]{simpleSymbol122}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\b", new Object[0], 2), "\u0001\u0001", "\u0011\u0018\u0004\t\u0003\t\u000b\u0018\f", new Object[]{simpleSymbol400, PairWithPosition.make(PairWithPosition.make(simpleSymbol109, PairWithPosition.make((SimpleSymbol) a.f("com.google.appinventor.components.runtime.ReplForm"), lList, "/tmp/runtime15061256449536606169.scm", 1257522), "/tmp/runtime15061256449536606169.scm", 1257522), PairWithPosition.make(bool, PairWithPosition.make(bool2, lList, "/tmp/runtime15061256449536606169.scm", 1257576), "/tmp/runtime15061256449536606169.scm", 1257573), "/tmp/runtime15061256449536606169.scm", 1257521)}, 0)}, 2);
        Lit95 = syntaxRules18;
        SimpleSymbol simpleSymbol401 = (SimpleSymbol) a.f("define-repl-form");
        Lit94 = simpleSymbol401;
        SyntaxPattern syntaxPattern4 = new SyntaxPattern("\f\u0018\f\u0007\f\u000f\b", new Object[0], 2);
        SimpleSymbol simpleSymbol402 = (SimpleSymbol) a.f("com.google.appinventor.components.runtime.Form");
        Lit17 = simpleSymbol402;
        SyntaxRules syntaxRules19 = new SyntaxRules(new Object[]{simpleSymbol122}, new SyntaxRule[]{new SyntaxRule(syntaxPattern4, "\u0001\u0001", "\u0011\u0018\u0004\t\u0003\t\u000b\u0018\f", new Object[]{simpleSymbol400, PairWithPosition.make(PairWithPosition.make(simpleSymbol109, PairWithPosition.make(simpleSymbol402, lList, "/tmp/runtime15061256449536606169.scm", 1228850), "/tmp/runtime15061256449536606169.scm", 1228850), PairWithPosition.make(bool2, PairWithPosition.make(bool, lList, "/tmp/runtime15061256449536606169.scm", 1228900), "/tmp/runtime15061256449536606169.scm", 1228897), "/tmp/runtime15061256449536606169.scm", 1228849)}, 0), new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\b", new Object[0], 3), "\u0001\u0001\u0001", "\u0011\u0018\u0004\t\u0003\t\u000b\u0011\u0018\f\u0011\u0018\u0014\b\u0013", new Object[]{simpleSymbol400, PairWithPosition.make(simpleSymbol109, PairWithPosition.make(simpleSymbol402, lList, "/tmp/runtime15061256449536606169.scm", 1237042), "/tmp/runtime15061256449536606169.scm", 1237042), bool2}, 0)}, 3);
        Lit93 = syntaxRules19;
        SimpleSymbol simpleSymbol403 = (SimpleSymbol) a.f("define-form");
        Lit92 = simpleSymbol403;
        SyntaxRules syntaxRules20 = new SyntaxRules(new Object[]{simpleSymbol122}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\r\u0007\u0000\b\b", new Object[0], 1), "\u0003", "\u0011\u0018\u0004\b\u0005\u0011\u0018\f\t\u0010\b\u0003", new Object[]{simpleSymbol299, simpleSymbol116}, 1)}, 1);
        Lit91 = syntaxRules20;
        SimpleSymbol simpleSymbol404 = (SimpleSymbol) a.f("or-delayed");
        Lit90 = simpleSymbol404;
        SyntaxRules syntaxRules21 = new SyntaxRules(new Object[]{simpleSymbol122}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\r\u0007\u0000\b\b", new Object[0], 1), "\u0003", "\u0011\u0018\u0004\b\u0005\u0011\u0018\f\t\u0010\b\u0003", new Object[]{simpleSymbol300, simpleSymbol116}, 1)}, 1);
        Lit89 = syntaxRules21;
        SimpleSymbol simpleSymbol405 = (SimpleSymbol) a.f("and-delayed");
        Lit88 = simpleSymbol405;
        SyntaxRules syntaxRules22 = new SyntaxRules(new Object[]{simpleSymbol122}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\b", new Object[0], 2), "\u0001\u0001", "\u0011\u0018\u0004\t\u0003\b\u000b", new Object[]{simpleSymbol82}, 0)}, 2);
        Lit87 = syntaxRules22;
        SimpleSymbol simpleSymbol406 = (SimpleSymbol) a.f("set-lexical!");
        Lit86 = simpleSymbol406;
        SyntaxRules syntaxRules23 = new SyntaxRules(new Object[]{simpleSymbol122}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\b", new Object[0], 1), "\u0001", "\u0011\u0018\u00049\u0011\u0018\f\t\u0003\u0018\u0014Á\u0011\u0018\u001c\u0091\u0011\u0018$\u0011\u0018,I\u0011\u00184\b\u0011\u0018<\b\u0003\u0018D\u0018L\b\u0003", new Object[]{simpleSymbol119, simpleSymbol65, PairWithPosition.make((SimpleSymbol) a.f("<java.lang.Package>"), lList, "/tmp/runtime15061256449536606169.scm", 1081374), simpleSymbol342, simpleSymbol42, "The variable ", simpleSymbol317, simpleSymbol120, PairWithPosition.make(" is not bound in the current context", lList, "/tmp/runtime15061256449536606169.scm", 1093658), PairWithPosition.make("Unbound Variable", lList, "/tmp/runtime15061256449536606169.scm", 1097739)}, 0)}, 1);
        Lit85 = syntaxRules23;
        SimpleSymbol simpleSymbol407 = (SimpleSymbol) a.f("lexical-value");
        Lit84 = simpleSymbol407;
        SyntaxRules syntaxRules24 = new SyntaxRules(new Object[]{simpleSymbol122}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\b", new Object[0], 2), "\u0001\u0001", "\u0011\u0018\u0004)\u0011\u0018\f\b\u0003\b\u000b", new Object[]{simpleSymbol373, simpleSymbol109}, 0)}, 2);
        Lit83 = syntaxRules24;
        SimpleSymbol simpleSymbol408 = (SimpleSymbol) a.f("set-var!");
        Lit82 = simpleSymbol408;
        SyntaxRules syntaxRules25 = new SyntaxRules(new Object[]{simpleSymbol122}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\b", new Object[0], 1), "\u0001", "\u0011\u0018\u0004)\u0011\u0018\f\b\u0003\u0018\u0014", new Object[]{simpleSymbol372, simpleSymbol109, PairWithPosition.make(simpleSymbol7, lList, "/tmp/runtime15061256449536606169.scm", 1015871)}, 0)}, 1);
        Lit81 = syntaxRules25;
        SimpleSymbol simpleSymbol409 = (SimpleSymbol) a.f("get-var");
        Lit80 = simpleSymbol409;
        SimpleSymbol simpleSymbol410 = (SimpleSymbol) a.f("set-and-coerce-property-and-check!");
        Lit79 = simpleSymbol410;
        SimpleSymbol simpleSymbol411 = (SimpleSymbol) a.f("get-property-and-check");
        Lit78 = simpleSymbol411;
        SimpleSymbol simpleSymbol412 = (SimpleSymbol) a.f("coerce-to-component-and-verify");
        Lit77 = simpleSymbol412;
        SimpleSymbol simpleSymbol413 = (SimpleSymbol) a.f("get-property");
        Lit76 = simpleSymbol413;
        SimpleSymbol simpleSymbol414 = (SimpleSymbol) a.f("set-and-coerce-property!");
        Lit75 = simpleSymbol414;
        SimpleSymbol simpleSymbol415 = (SimpleSymbol) a.f("lookup-component");
        Lit74 = simpleSymbol415;
        SyntaxRules syntaxRules26 = new SyntaxRules(new Object[]{simpleSymbol122}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\b", new Object[0], 1), "\u0001", "\u0011\u0018\u0004\b\u0011\u0018\f\b\u0003", new Object[]{simpleSymbol376, simpleSymbol109}, 0)}, 1);
        Lit73 = syntaxRules26;
        SimpleSymbol simpleSymbol416 = (SimpleSymbol) a.f("get-all-components");
        Lit72 = simpleSymbol416;
        SyntaxRules syntaxRules27 = new SyntaxRules(new Object[]{simpleSymbol122}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\b", new Object[0], 1), "\u0001", "\u0011\u0018\u0004\b\u0011\u0018\f\b\u0003", new Object[]{simpleSymbol377, simpleSymbol109}, 0)}, 1);
        Lit71 = syntaxRules27;
        SimpleSymbol simpleSymbol417 = (SimpleSymbol) a.f("get-component");
        Lit70 = simpleSymbol417;
        SimpleSymbol simpleSymbol418 = (SimpleSymbol) a.f("clear-init-thunks");
        Lit69 = simpleSymbol418;
        SimpleSymbol simpleSymbol419 = (SimpleSymbol) a.f("get-init-thunk");
        Lit68 = simpleSymbol419;
        SimpleSymbol simpleSymbol420 = (SimpleSymbol) a.f("add-init-thunk");
        Lit67 = simpleSymbol420;
        SimpleSymbol simpleSymbol421 = (SimpleSymbol) a.f("call-Initialize-of-components");
        Lit66 = simpleSymbol421;
        SimpleSymbol simpleSymbol422 = (SimpleSymbol) a.f("add-component-within-repl");
        Lit65 = simpleSymbol422;
        SyntaxPattern syntaxPattern5 = new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\b", new Object[0], 3);
        SimpleSymbol simpleSymbol423 = (SimpleSymbol) a.f("gen-simple-component-type");
        Lit60 = simpleSymbol423;
        SyntaxRules syntaxRules28 = new SyntaxRules(new Object[]{simpleSymbol122}, new SyntaxRule[]{new SyntaxRule(syntaxPattern5, "\u0001\u0001\u0001", "\u0011\u0018\u0004\u0081\u0011\u0018\f\t\u0013\u0011\u0018\u0014)\u0011\u0018\u001c\b\u000b\u0018$\b\u0011\u0018,\u0011\u00184¹\u0011\u0018<)\u0011\u0018D\b\u0003)\u0011\u0018\u001c\b\u000b)\u0011\u0018D\b\u0013\u0018L\b\u0011\u0018T)\u0011\u0018D\b\u0003)\u0011\u0018\u001c\b\u000b)\u0011\u0018D\b\u0013\u0018\\", new Object[]{simpleSymbol114, simpleSymbol107, simpleSymbol104, simpleSymbol423, PairWithPosition.make(null, lList, "/tmp/runtime15061256449536606169.scm", 241741), simpleSymbol119, simpleSymbol110, simpleSymbol422, simpleSymbol109, PairWithPosition.make(bool2, lList, "/tmp/runtime15061256449536606169.scm", 262183), simpleSymbol, PairWithPosition.make(bool2, lList, "/tmp/runtime15061256449536606169.scm", 278559)}, 0), new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017\r\u001f\u0018\b\b", new Object[0], 4), "\u0001\u0001\u0001\u0003", "\u0011\u0018\u0004\u0081\u0011\u0018\f\t\u0013\u0011\u0018\u0014)\u0011\u0018\u001c\b\u000b\u0018$\b\u0011\u0018,\u0011\u00184ñ\u0011\u0018<)\u0011\u0018D\b\u0003)\u0011\u0018\u001c\b\u000b)\u0011\u0018D\b\u0013\b\u0011\u0018L\t\u0010\b\u001d\u001b\b\u0011\u0018T)\u0011\u0018D\b\u0003)\u0011\u0018\u001c\b\u000b)\u0011\u0018D\b\u0013\b\u0011\u0018L\t\u0010\b\u001d\u001b", new Object[]{simpleSymbol114, simpleSymbol107, simpleSymbol104, simpleSymbol423, PairWithPosition.make(null, lList, "/tmp/runtime15061256449536606169.scm", 290893), simpleSymbol119, simpleSymbol110, simpleSymbol422, simpleSymbol109, simpleSymbol116, simpleSymbol}, 1)}, 4);
        Lit64 = syntaxRules28;
        SimpleSymbol simpleSymbol424 = (SimpleSymbol) a.f("add-component");
        Lit63 = simpleSymbol424;
        Lit62 = new SyntaxTemplate("\u0001\u0001", "\u000b", new Object[0], 0);
        Lit61 = new SyntaxPattern("\f\u0007\f\u000f\b", new Object[0], 2);
        SimpleSymbol simpleSymbol425 = (SimpleSymbol) a.f("android-log");
        Lit59 = simpleSymbol425;
        SimpleSymbol simpleSymbol426 = (SimpleSymbol) a.f("non-coercible-value");
        Lit58 = simpleSymbol426;
        SimpleSymbol simpleSymbol427 = (SimpleSymbol) a.f("possible-component");
        Lit57 = simpleSymbol427;
        Lit56 = (SimpleSymbol) a.f("post");
        Lit55 = (SimpleSymbol) a.f("getDhcpInfo");
        Lit54 = IntNum.make(9999);
        Lit53 = IntNum.make(4);
        Lit52 = IntNum.make(3);
        Lit51 = IntNum.make(16);
        Lit50 = IntNum.make(24);
        Lit48 = IntNum.make(8);
        Lit47 = IntNum.make(255);
        Lit46 = (SimpleSymbol) a.f("setValueForKeyPath");
        SimpleSymbol simpleSymbol428 = (SimpleSymbol) a.f("number");
        Lit5 = simpleSymbol428;
        SimpleSymbol simpleSymbol429 = (SimpleSymbol) a.f(PropertyTypeConstants.PROPERTY_TYPE_TEXT);
        Lit6 = simpleSymbol429;
        SimpleSymbol simpleSymbol430 = (SimpleSymbol) a.f("component");
        Lit11 = simpleSymbol430;
        Lit45 = PairWithPosition.make(simpleSymbol398, PairWithPosition.make(simpleSymbol428, PairWithPosition.make(simpleSymbol429, PairWithPosition.make(simpleSymbol386, PairWithPosition.make(simpleSymbol430, lList, "/tmp/runtime15061256449536606169.scm", 11178033), "/tmp/runtime15061256449536606169.scm", 11178028), "/tmp/runtime15061256449536606169.scm", 11178023), "/tmp/runtime15061256449536606169.scm", 11178016), "/tmp/runtime15061256449536606169.scm", 11178007);
        Lit43 = (SimpleSymbol) a.f("*list*");
        IntNum intNumMake2 = IntNum.make(1);
        Lit24 = intNumMake2;
        Lit42 = new IntFraction(intNumMake2, intNumMake);
        IntNum intNumMake3 = IntNum.make(-1);
        Lit34 = intNumMake3;
        Lit41 = new IntFraction(intNumMake3, intNumMake);
        Lit40 = DFloNum.make(1.0E18d);
        Lit39 = Char.make(57343);
        Lit38 = Char.make(55296);
        Lit37 = Char.make(57343);
        Lit36 = Char.make(55296);
        Lit35 = IntNum.make(45);
        Lit33 = IntNum.make(90);
        Lit32 = IntNum.make(360);
        Lit31 = DFloNum.make(6.2831853d);
        Lit30 = DFloNum.make(6.2831853d);
        Lit29 = IntNum.make(180);
        Lit28 = DFloNum.make(3.14159265d);
        Lit27 = IntNum.make(30);
        Lit26 = IntNum.make(2);
        Lit23 = (SimpleSymbol) a.f("toYailDictionary");
        Lit22 = DFloNum.make(Double.NEGATIVE_INFINITY);
        Lit21 = DFloNum.make(Double.POSITIVE_INFINITY);
        Lit20 = DFloNum.make(Double.NEGATIVE_INFINITY);
        Lit19 = DFloNum.make(Double.POSITIVE_INFINITY);
        Lit18 = (SimpleSymbol) a.f("toUnderlyingValue");
        Lit16 = (SimpleSymbol) a.f("Screen");
        Lit15 = (SimpleSymbol) a.f("any");
        Lit14 = (SimpleSymbol) a.f("dictionary");
        Lit13 = (SimpleSymbol) a.f("key");
        Lit12 = (SimpleSymbol) a.f("pair");
        Lit10 = (SimpleSymbol) a.f("InstantInTime");
        Lit9 = (SimpleSymbol) a.f("list-of-number");
        Lit4 = Object.class;
        Lit3 = (SimpleSymbol) a.f("remove");
        Lit2 = PairWithPosition.make((SimpleSymbol) a.f("non-coercible"), lList, "/tmp/runtime15061256449536606169.scm", 4390944);
        AssetFetcher = AssetFetcher.class;
        errorMessages = ErrorMessages.class;
        JavaMap = Map.class;
        JavaIterator = Iterator.class;
        JavaCollection = Collection.class;
        YailNumberToString = YailNumberToString.class;
        YailDictionary = YailDictionary.class;
        YailList = YailList.class;
        JavaStringUtils = JavaStringUtils.class;
        YailRuntimeError = YailRuntimeError.class;
        StopBlocksExecution = StopBlocksExecution.class;
        PermissionException = PermissionException.class;
        CsvUtil = CsvUtil.class;
        ContinuationUtil = ContinuationUtil.class;
        Matcher = Matcher.class;
        Pattern = Pattern.class;
        String = String.class;
        Short = Short.class;
        Long = Long.class;
        KawaEnvironment = Environment.class;
        Integer = Integer.class;
        Float = Float.class;
        Double = Double.class;
        TypeUtil = TypeUtil.class;
        SimpleForm = ClassType.make("com.google.appinventor.components.runtime.Form");
        runtime runtimeVar = new runtime();
        $instance = runtimeVar;
        loc$possible$Mncomponent = ThreadLocation.getInstance(simpleSymbol427, null);
        loc$component = ThreadLocation.getInstance(simpleSymbol430, null);
        loc$non$Mncoercible$Mnvalue = ThreadLocation.getInstance(simpleSymbol426, null);
        android$Mnlog = new ModuleMethod(runtimeVar, 15, simpleSymbol425, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        simple$Mncomponent$Mnpackage$Mnname = "com.google.appinventor.components.runtime";
        ModuleMethod moduleMethod = new ModuleMethod(runtimeVar, 16, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod.setProperty("source-location", "/tmp/runtime15061256449536606169.scm:40");
        gen$Mnsimple$Mncomponent$Mntype = Macro.make(simpleSymbol423, moduleMethod, runtimeVar);
        add$Mncomponent = Macro.make(simpleSymbol424, syntaxRules28, runtimeVar);
        add$Mncomponent$Mnwithin$Mnrepl = new ModuleMethod(runtimeVar, 17, simpleSymbol422, 16388);
        call$MnInitialize$Mnof$Mncomponents = new ModuleMethod(runtimeVar, 18, simpleSymbol421, -4096);
        add$Mninit$Mnthunk = new ModuleMethod(runtimeVar, 19, simpleSymbol420, 8194);
        get$Mninit$Mnthunk = new ModuleMethod(runtimeVar, 20, simpleSymbol419, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        clear$Mninit$Mnthunks = new ModuleMethod(runtimeVar, 21, simpleSymbol418, 0);
        get$Mncomponent = Macro.make(simpleSymbol417, syntaxRules27, runtimeVar);
        get$Mnall$Mncomponents = Macro.make(simpleSymbol416, syntaxRules26, runtimeVar);
        lookup$Mncomponent = new ModuleMethod(runtimeVar, 22, simpleSymbol415, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        set$Mnand$Mncoerce$Mnproperty$Ex = new ModuleMethod(runtimeVar, 23, simpleSymbol414, 16388);
        get$Mnproperty = new ModuleMethod(runtimeVar, 24, simpleSymbol413, 8194);
        coerce$Mnto$Mncomponent$Mnand$Mnverify = new ModuleMethod(runtimeVar, 25, simpleSymbol412, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        get$Mnproperty$Mnand$Mncheck = new ModuleMethod(runtimeVar, 26, simpleSymbol411, 12291);
        set$Mnand$Mncoerce$Mnproperty$Mnand$Mncheck$Ex = new ModuleMethod(runtimeVar, 27, simpleSymbol410, 20485);
        get$Mnvar = Macro.make(simpleSymbol409, syntaxRules25, runtimeVar);
        set$Mnvar$Ex = Macro.make(simpleSymbol408, syntaxRules24, runtimeVar);
        lexical$Mnvalue = Macro.make(simpleSymbol407, syntaxRules23, runtimeVar);
        set$Mnlexical$Ex = Macro.make(simpleSymbol406, syntaxRules22, runtimeVar);
        and$Mndelayed = Macro.make(simpleSymbol405, syntaxRules21, runtimeVar);
        or$Mndelayed = Macro.make(simpleSymbol404, syntaxRules20, runtimeVar);
        define$Mnform = Macro.make(simpleSymbol403, syntaxRules19, runtimeVar);
        define$Mnrepl$Mnform = Macro.make(simpleSymbol401, syntaxRules18, runtimeVar);
        define$Mnform$Mninternal = Macro.make(simpleSymbol400, syntaxRules17, runtimeVar);
        symbol$Mnappend = new ModuleMethod(runtimeVar, 28, simpleSymbol388, -4096);
        ModuleMethod moduleMethod2 = new ModuleMethod(runtimeVar, 29, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod2.setProperty("source-location", "/tmp/runtime15061256449536606169.scm:669");
        gen$Mnevent$Mnname = Macro.make(simpleSymbol390, moduleMethod2, runtimeVar);
        ModuleMethod moduleMethod3 = new ModuleMethod(runtimeVar, 30, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod3.setProperty("source-location", "/tmp/runtime15061256449536606169.scm:677");
        gen$Mngeneric$Mnevent$Mnname = Macro.make(simpleSymbol389, moduleMethod3, runtimeVar);
        define$Mnevent$Mnhelper = Macro.make(simpleSymbol382, syntaxRules16, runtimeVar);
        $Stlist$Mnfor$Mnruntime$St = Macro.make(simpleSymbol387, syntaxRules15, runtimeVar);
        ModuleMethod moduleMethod4 = new ModuleMethod(runtimeVar, 31, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod4.setProperty("source-location", "/tmp/runtime15061256449536606169.scm:733");
        define$Mnevent = Macro.make(simpleSymbol385, moduleMethod4, runtimeVar);
        ModuleMethod moduleMethod5 = new ModuleMethod(runtimeVar, 32, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod5.setProperty("source-location", "/tmp/runtime15061256449536606169.scm:751");
        define$Mngeneric$Mnevent = Macro.make(simpleSymbol383, moduleMethod5, runtimeVar);
        def = Macro.make(simpleSymbol380, syntaxRules14, runtimeVar);
        do$Mnafter$Mnform$Mncreation = Macro.make(simpleSymbol379, syntaxRules13, runtimeVar);
        add$Mnto$Mncurrent$Mnform$Mnenvironment = new ModuleMethod(runtimeVar, 33, simpleSymbol378, 8194);
        lookup$Mnin$Mncurrent$Mnform$Mnenvironment = new ModuleMethod(runtimeVar, 34, simpleSymbol377, 8193);
        filter$Mntype$Mnin$Mncurrent$Mnform$Mnenvironment = new ModuleMethod(runtimeVar, 36, simpleSymbol376, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        delete$Mnfrom$Mncurrent$Mnform$Mnenvironment = new ModuleMethod(runtimeVar, 37, simpleSymbol375, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        rename$Mnin$Mncurrent$Mnform$Mnenvironment = new ModuleMethod(runtimeVar, 38, simpleSymbol374, 8194);
        add$Mnglobal$Mnvar$Mnto$Mncurrent$Mnform$Mnenvironment = new ModuleMethod(runtimeVar, 39, simpleSymbol373, 8194);
        lookup$Mnglobal$Mnvar$Mnin$Mncurrent$Mnform$Mnenvironment = new ModuleMethod(runtimeVar, 40, simpleSymbol372, 8193);
        reset$Mncurrent$Mnform$Mnenvironment = new ModuleMethod(runtimeVar, 42, simpleSymbol371, 0);
        foreach = Macro.makeNonHygienic(simpleSymbol370, new ModuleMethod(runtimeVar, 43, null, 12291), runtimeVar);
        $Styail$Mnbreak$St = new ModuleMethod(runtimeVar, 44, simpleSymbol367, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        forrange = Macro.makeNonHygienic(simpleSymbol369, new ModuleMethod(runtimeVar, 45, null, 20485), runtimeVar);
        f0while = Macro.makeNonHygienic(simpleSymbol368, new ModuleMethod(runtimeVar, 46, null, -4094), runtimeVar);
        foreach$Mnwith$Mnbreak = Macro.make(simpleSymbol365, syntaxRules12, runtimeVar);
        map_nondest = Macro.make(simpleSymbol364, syntaxRules11, runtimeVar);
        filter_nondest = Macro.make(simpleSymbol363, syntaxRules10, runtimeVar);
        reduceovereach = Macro.make(simpleSymbol362, syntaxRules9, runtimeVar);
        sortcomparator_nondest = Macro.make(simpleSymbol361, syntaxRules8, runtimeVar);
        mincomparator$Mnnondest = Macro.make(simpleSymbol360, syntaxRules7, runtimeVar);
        maxcomparator$Mnnondest = Macro.make(simpleSymbol359, syntaxRules6, runtimeVar);
        sortkey_nondest = Macro.make(simpleSymbol358, syntaxRules5, runtimeVar);
        forrange$Mnwith$Mnbreak = Macro.make(simpleSymbol357, syntaxRules4, runtimeVar);
        while$Mnwith$Mnbreak = Macro.make(simpleSymbol356, syntaxRules3, runtimeVar);
        call$Mncomponent$Mnmethod = new ModuleMethod(runtimeVar, 47, simpleSymbol355, 16388);
        call$Mncomponent$Mnmethod$Mnwith$Mncontinuation = new ModuleMethod(runtimeVar, 48, simpleSymbol354, 20485);
        call$Mncomponent$Mnmethod$Mnwith$Mnblocking$Mncontinuation = new ModuleMethod(runtimeVar, 49, simpleSymbol353, 16388);
        call$Mncomponent$Mntype$Mnmethod = new ModuleMethod(runtimeVar, 50, simpleSymbol352, 20485);
        call$Mncomponent$Mntype$Mnmethod$Mnwith$Mncontinuation = new ModuleMethod(runtimeVar, 51, simpleSymbol351, 20485);
        call$Mncomponent$Mntype$Mnmethod$Mnwith$Mnblocking$Mncontinuation = new ModuleMethod(runtimeVar, 52, simpleSymbol350, 16388);
        call$Mnyail$Mnprimitive = new ModuleMethod(runtimeVar, 53, simpleSymbol349, 16388);
        sanitize$Mncomponent$Mndata = new ModuleMethod(runtimeVar, 54, simpleSymbol348, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        sanitize$Mnreturn$Mnvalue = new ModuleMethod(runtimeVar, 55, simpleSymbol347, 12291);
        java$Mncollection$Mn$Gryail$Mnlist = new ModuleMethod(runtimeVar, 56, simpleSymbol346, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        java$Mncollection$Mn$Grkawa$Mnlist = new ModuleMethod(runtimeVar, 57, simpleSymbol345, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        java$Mnmap$Mn$Gryail$Mndictionary = new ModuleMethod(runtimeVar, 58, simpleSymbol344, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        sanitize$Mnatomic = new ModuleMethod(runtimeVar, 59, simpleSymbol343, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        signal$Mnruntime$Mnerror = new ModuleMethod(runtimeVar, 60, simpleSymbol342, 8194);
        signal$Mnruntime$Mnform$Mnerror = new ModuleMethod(runtimeVar, 61, simpleSymbol341, 12291);
        yail$Mnnot = new ModuleMethod(runtimeVar, 62, simpleSymbol340, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        call$Mnwith$Mncoerced$Mnargs = new ModuleMethod(runtimeVar, 63, simpleSymbol339, 16388);
        $Pcset$Mnand$Mncoerce$Mnproperty$Ex = new ModuleMethod(runtimeVar, 64, simpleSymbol338, 16388);
        $Pcset$Mnsubform$Mnlayout$Mnproperty$Ex = new ModuleMethod(runtimeVar, 65, simpleSymbol337, 12291);
        generate$Mnruntime$Mntype$Mnerror = new ModuleMethod(runtimeVar, 66, simpleSymbol336, 8194);
        show$Mnarglist$Mnno$Mnparens = new ModuleMethod(runtimeVar, 67, simpleSymbol335, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        coerce$Mnargs = new ModuleMethod(runtimeVar, 68, simpleSymbol334, 12291);
        coerce$Mnarg = new ModuleMethod(runtimeVar, 69, simpleSymbol333, 8194);
        coerce$Mnto$Mnnumber$Mnlist = new ModuleMethod(runtimeVar, 70, simpleSymbol332, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        enum$Mntype$Qu = new ModuleMethod(runtimeVar, 71, simpleSymbol331, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        enum$Qu = new ModuleMethod(runtimeVar, 72, simpleSymbol330, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        coerce$Mnto$Mnenum = new ModuleMethod(runtimeVar, 73, simpleSymbol329, 8194);
        coerce$Mnto$Mntext = new ModuleMethod(runtimeVar, 74, simpleSymbol328, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        coerce$Mnto$Mninstant = new ModuleMethod(runtimeVar, 75, simpleSymbol327, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        coerce$Mnto$Mncomponent = new ModuleMethod(runtimeVar, 76, simpleSymbol326, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        coerce$Mnto$Mncomponent$Mnof$Mntype = new ModuleMethod(runtimeVar, 77, simpleSymbol325, 8194);
        type$Mn$Grclass = new ModuleMethod(runtimeVar, 78, simpleSymbol324, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        coerce$Mnto$Mnnumber = new ModuleMethod(runtimeVar, 79, simpleSymbol323, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        coerce$Mnto$Mnkey = new ModuleMethod(runtimeVar, 80, simpleSymbol322, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        use$Mnjson$Mnformat = Macro.make(simpleSymbol321, syntaxRules2, runtimeVar);
        coerce$Mnto$Mnstring = new ModuleMethod(runtimeVar, 81, simpleSymbol318, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        ModuleMethod moduleMethod6 = new ModuleMethod(runtimeVar, 82, simpleSymbol317, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod6.setProperty("source-location", "/tmp/runtime15061256449536606169.scm:1625");
        get$Mndisplay$Mnrepresentation = moduleMethod6;
        ModuleMethod moduleMethod7 = new ModuleMethod(runtimeVar, 83, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod7.setProperty("source-location", "/tmp/runtime15061256449536606169.scm:1635");
        lambda$Fn8 = moduleMethod7;
        ModuleMethod moduleMethod8 = new ModuleMethod(runtimeVar, 84, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod8.setProperty("source-location", "/tmp/runtime15061256449536606169.scm:1658");
        lambda$Fn11 = moduleMethod8;
        join$Mnstrings = new ModuleMethod(runtimeVar, 85, simpleSymbol316, 8194);
        string$Mnreplace = new ModuleMethod(runtimeVar, 86, simpleSymbol315, 8194);
        coerce$Mnto$Mnyail$Mnlist = new ModuleMethod(runtimeVar, 87, simpleSymbol314, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        coerce$Mnto$Mnpair = new ModuleMethod(runtimeVar, 88, simpleSymbol313, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        coerce$Mnto$Mndictionary = new ModuleMethod(runtimeVar, 89, simpleSymbol312, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        coerce$Mnto$Mnboolean = new ModuleMethod(runtimeVar, 90, simpleSymbol311, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        is$Mncoercible$Qu = new ModuleMethod(runtimeVar, 91, simpleSymbol310, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        all$Mncoercible$Qu = new ModuleMethod(runtimeVar, 92, simpleSymbol309, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        boolean$Mn$Grstring = new ModuleMethod(runtimeVar, 93, simpleSymbol308, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        padded$Mnstring$Mn$Grnumber = new ModuleMethod(runtimeVar, 94, simpleSymbol307, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        $Stformat$Mninexact$St = new ModuleMethod(runtimeVar, 95, simpleSymbol306, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        appinventor$Mnnumber$Mn$Grstring = new ModuleMethod(runtimeVar, 96, simpleSymbol305, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnequal$Qu = new ModuleMethod(runtimeVar, 97, simpleSymbol304, 8194);
        yail$Mnatomic$Mnequal$Qu = new ModuleMethod(runtimeVar, 98, simpleSymbol303, 8194);
        as$Mnnumber = new ModuleMethod(runtimeVar, 99, simpleSymbol302, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnnot$Mnequal$Qu = new ModuleMethod(runtimeVar, 100, simpleSymbol301, 8194);
        process$Mnand$Mndelayed = new ModuleMethod(runtimeVar, 101, simpleSymbol300, -4096);
        process$Mnor$Mndelayed = new ModuleMethod(runtimeVar, 102, simpleSymbol299, -4096);
        yail$Mnfloor = new ModuleMethod(runtimeVar, 103, simpleSymbol298, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnceiling = new ModuleMethod(runtimeVar, 104, simpleSymbol297, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnround = new ModuleMethod(runtimeVar, 105, simpleSymbol296, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        random$Mnset$Mnseed = new ModuleMethod(runtimeVar, 106, simpleSymbol295, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        random$Mnfraction = new ModuleMethod(runtimeVar, 107, simpleSymbol294, 0);
        random$Mninteger = new ModuleMethod(runtimeVar, 108, simpleSymbol293, 8194);
        ModuleMethod moduleMethod9 = new ModuleMethod(runtimeVar, 109, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod9.setProperty("source-location", "/tmp/runtime15061256449536606169.scm:1963");
        lambda$Fn15 = moduleMethod9;
        yail$Mndivide = new ModuleMethod(runtimeVar, 110, simpleSymbol292, 8194);
        degrees$Mn$Grradians$Mninternal = new ModuleMethod(runtimeVar, 111, simpleSymbol291, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        radians$Mn$Grdegrees$Mninternal = new ModuleMethod(runtimeVar, 112, simpleSymbol290, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        degrees$Mn$Grradians = new ModuleMethod(runtimeVar, 113, simpleSymbol289, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        radians$Mn$Grdegrees = new ModuleMethod(runtimeVar, 114, simpleSymbol288, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        sin$Mndegrees = new ModuleMethod(runtimeVar, 115, simpleSymbol287, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        cos$Mndegrees = new ModuleMethod(runtimeVar, 116, simpleSymbol286, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        tan$Mndegrees = new ModuleMethod(runtimeVar, 117, simpleSymbol285, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        asin$Mndegrees = new ModuleMethod(runtimeVar, 118, simpleSymbol284, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        acos$Mndegrees = new ModuleMethod(runtimeVar, 119, simpleSymbol283, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        atan$Mndegrees = new ModuleMethod(runtimeVar, 120, simpleSymbol282, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        atan2$Mndegrees = new ModuleMethod(runtimeVar, 121, simpleSymbol281, 8194);
        string$Mnto$Mnupper$Mncase = new ModuleMethod(runtimeVar, 122, simpleSymbol280, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        string$Mnto$Mnlower$Mncase = new ModuleMethod(runtimeVar, 123, simpleSymbol279, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        unicode$Mnstring$Mn$Grlist = new ModuleMethod(runtimeVar, 124, simpleSymbol278, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        string$Mnreverse = new ModuleMethod(runtimeVar, 125, simpleSymbol277, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        format$Mnas$Mndecimal = new ModuleMethod(runtimeVar, 126, simpleSymbol276, 8194);
        is$Mnnumber$Qu = new ModuleMethod(runtimeVar, WorkQueueKt.MASK, simpleSymbol275, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        is$Mnbase10$Qu = new ModuleMethod(runtimeVar, 128, simpleSymbol274, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        is$Mnhexadecimal$Qu = new ModuleMethod(runtimeVar, 129, simpleSymbol273, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        is$Mnbinary$Qu = new ModuleMethod(runtimeVar, 130, simpleSymbol272, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        math$Mnconvert$Mndec$Mnhex = new ModuleMethod(runtimeVar, 131, simpleSymbol271, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        math$Mnconvert$Mnhex$Mndec = new ModuleMethod(runtimeVar, 132, simpleSymbol270, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        math$Mnconvert$Mnbin$Mndec = new ModuleMethod(runtimeVar, 133, simpleSymbol269, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        math$Mnconvert$Mndec$Mnbin = new ModuleMethod(runtimeVar, 134, simpleSymbol268, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        patched$Mnnumber$Mn$Grstring$Mnbinary = new ModuleMethod(runtimeVar, 135, simpleSymbol267, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        alternate$Mnnumber$Mn$Grstring$Mnbinary = new ModuleMethod(runtimeVar, 136, simpleSymbol266, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        internal$Mnbinary$Mnconvert = new ModuleMethod(runtimeVar, 137, simpleSymbol265, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        avg = new ModuleMethod(runtimeVar, 138, simpleSymbol264, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnmul = new ModuleMethod(runtimeVar, 139, simpleSymbol263, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        gm = new ModuleMethod(runtimeVar, 140, simpleSymbol262, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        mode = new ModuleMethod(runtimeVar, 141, simpleSymbol261, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        maxl = new ModuleMethod(runtimeVar, 142, simpleSymbol260, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        minl = new ModuleMethod(runtimeVar, 143, simpleSymbol259, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        mean = new ModuleMethod(runtimeVar, 144, simpleSymbol258, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        sum$Mnmean$Mnsquare$Mndiff = new ModuleMethod(runtimeVar, 145, simpleSymbol257, 8194);
        std$Mndev = new ModuleMethod(runtimeVar, 146, simpleSymbol256, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        sample$Mnstd$Mndev = new ModuleMethod(runtimeVar, 147, simpleSymbol255, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        std$Mnerr = new ModuleMethod(runtimeVar, 148, simpleSymbol254, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnlist$Qu = new ModuleMethod(runtimeVar, 149, simpleSymbol253, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnlist$Mncandidate$Qu = new ModuleMethod(runtimeVar, 150, simpleSymbol252, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnlist$Mncontents = new ModuleMethod(runtimeVar, 151, simpleSymbol251, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        set$Mnyail$Mnlist$Mncontents$Ex = new ModuleMethod(runtimeVar, 152, simpleSymbol250, 8194);
        insert$Mnyail$Mnlist$Mnheader = new ModuleMethod(runtimeVar, 153, simpleSymbol249, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        kawa$Mnlist$Mn$Gryail$Mnlist = new ModuleMethod(runtimeVar, 154, simpleSymbol248, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnlist$Mn$Grkawa$Mnlist = new ModuleMethod(runtimeVar, 155, simpleSymbol247, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnlist$Mnempty$Qu = new ModuleMethod(runtimeVar, 156, simpleSymbol246, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        make$Mnyail$Mnlist = new ModuleMethod(runtimeVar, 157, simpleSymbol245, -4096);
        yail$Mnlist$Mncopy = new ModuleMethod(runtimeVar, 158, simpleSymbol244, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnlist$Mnreverse = new ModuleMethod(runtimeVar, 159, simpleSymbol243, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnlist$Mnto$Mncsv$Mntable = new ModuleMethod(runtimeVar, ComponentConstants.TEXTBOX_PREFERRED_WIDTH, simpleSymbol242, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnlist$Mnto$Mncsv$Mnrow = new ModuleMethod(runtimeVar, 161, simpleSymbol241, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        convert$Mnto$Mnstrings$Mnfor$Mncsv = new ModuleMethod(runtimeVar, 162, simpleSymbol240, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnlist$Mnfrom$Mncsv$Mntable = new ModuleMethod(runtimeVar, 163, simpleSymbol239, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnlist$Mnfrom$Mncsv$Mnrow = new ModuleMethod(runtimeVar, 164, simpleSymbol238, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnlist$Mnlength = new ModuleMethod(runtimeVar, 165, simpleSymbol237, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnlist$Mnindex = new ModuleMethod(runtimeVar, 166, simpleSymbol236, 8194);
        yail$Mnlist$Mnget$Mnitem = new ModuleMethod(runtimeVar, 167, simpleSymbol235, 8194);
        yail$Mnlist$Mnset$Mnitem$Ex = new ModuleMethod(runtimeVar, 168, simpleSymbol234, 12291);
        yail$Mnlist$Mnremove$Mnitem$Ex = new ModuleMethod(runtimeVar, 169, simpleSymbol233, 8194);
        yail$Mnlist$Mninsert$Mnitem$Ex = new ModuleMethod(runtimeVar, 170, simpleSymbol232, 12291);
        yail$Mnlist$Mnappend$Ex = new ModuleMethod(runtimeVar, 171, simpleSymbol231, 8194);
        yail$Mnlist$Mnadd$Mnto$Mnlist$Ex = new ModuleMethod(runtimeVar, 172, simpleSymbol230, -4095);
        yail$Mnlist$Mnmember$Qu = new ModuleMethod(runtimeVar, 173, simpleSymbol229, 8194);
        yail$Mnlist$Mnpick$Mnrandom = new ModuleMethod(runtimeVar, 174, simpleSymbol228, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnfor$Mneach = new ModuleMethod(runtimeVar, 175, simpleSymbol227, 8194);
        yail$Mnlist$Mnmap = new ModuleMethod(runtimeVar, 176, simpleSymbol226, 8194);
        yail$Mnlist$Mnfilter = new ModuleMethod(runtimeVar, 177, simpleSymbol225, 8194);
        yail$Mnlist$Mnreduce = new ModuleMethod(runtimeVar, 178, simpleSymbol224, 12291);
        typeof = new ModuleMethod(runtimeVar, 179, simpleSymbol223, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        indexof = new ModuleMethod(runtimeVar, 180, simpleSymbol222, 8194);
        type$Mnlt$Qu = new ModuleMethod(runtimeVar, 181, simpleSymbol221, 8194);
        is$Mnlt$Qu = new ModuleMethod(runtimeVar, 182, simpleSymbol220, 8194);
        is$Mneq$Qu = new ModuleMethod(runtimeVar, 183, simpleSymbol219, 8194);
        is$Mnleq$Qu = new ModuleMethod(runtimeVar, 184, simpleSymbol218, 8194);
        boolean$Mnlt$Qu = new ModuleMethod(runtimeVar, 185, simpleSymbol217, 8194);
        boolean$Mneq$Qu = new ModuleMethod(runtimeVar, 186, simpleSymbol216, 8194);
        boolean$Mnleq$Qu = new ModuleMethod(runtimeVar, 187, simpleSymbol215, 8194);
        list$Mnlt$Qu = new ModuleMethod(runtimeVar, 188, simpleSymbol214, 8194);
        list$Mneq$Qu = new ModuleMethod(runtimeVar, FullScreenVideoUtil.FULLSCREEN_VIDEO_DIALOG_FLAG, simpleSymbol213, 8194);
        yail$Mnlist$Mnnecessary = new ModuleMethod(runtimeVar, FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_SEEK, simpleSymbol212, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        list$Mnleq$Qu = new ModuleMethod(runtimeVar, FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_PLAY, simpleSymbol211, 8194);
        component$Mnlt$Qu = new ModuleMethod(runtimeVar, FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_PAUSE, simpleSymbol210, 8194);
        component$Mneq$Qu = new ModuleMethod(runtimeVar, FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_STOP, simpleSymbol209, 8194);
        component$Mnleq$Qu = new ModuleMethod(runtimeVar, FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_SOURCE, simpleSymbol208, 8194);
        take = new ModuleMethod(runtimeVar, FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_FULLSCREEN, simpleSymbol207, 8194);
        drop = new ModuleMethod(runtimeVar, FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_DURATION, simpleSymbol206, 8194);
        merge = new ModuleMethod(runtimeVar, 197, simpleSymbol205, 12291);
        mergesort = new ModuleMethod(runtimeVar, 198, simpleSymbol204, 8194);
        yail$Mnlist$Mnsort = new ModuleMethod(runtimeVar, 199, simpleSymbol203, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnlist$Mnsort$Mncomparator = new ModuleMethod(runtimeVar, 200, simpleSymbol202, 8194);
        merge$Mnkey = new ModuleMethod(runtimeVar, ErrorMessages.ERROR_CAMERA_NO_IMAGE_RETURNED, simpleSymbol201, 16388);
        mergesort$Mnkey = new ModuleMethod(runtimeVar, ErrorMessages.ERROR_NO_CAMERA_PERMISSION, simpleSymbol200, 12291);
        yail$Mnlist$Mnsort$Mnkey = new ModuleMethod(runtimeVar, 203, simpleSymbol199, 8194);
        list$Mnnumber$Mnonly = new ModuleMethod(runtimeVar, 204, simpleSymbol198, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        list$Mnmin = new ModuleMethod(runtimeVar, 205, simpleSymbol197, 12291);
        yail$Mnlist$Mnmin$Mncomparator = new ModuleMethod(runtimeVar, 206, simpleSymbol196, 8194);
        list$Mnmax = new ModuleMethod(runtimeVar, 207, simpleSymbol195, 12291);
        yail$Mnlist$Mnmax$Mncomparator = new ModuleMethod(runtimeVar, 208, simpleSymbol194, 8194);
        yail$Mnlist$Mnbut$Mnfirst = new ModuleMethod(runtimeVar, 209, simpleSymbol193, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        but$Mnlast = new ModuleMethod(runtimeVar, 210, simpleSymbol192, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnlist$Mnbut$Mnlast = new ModuleMethod(runtimeVar, 211, simpleSymbol191, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        front = new ModuleMethod(runtimeVar, 212, simpleSymbol190, 8194);
        back = new ModuleMethod(runtimeVar, 213, simpleSymbol189, 12291);
        yail$Mnlist$Mnslice = new ModuleMethod(runtimeVar, 214, simpleSymbol188, 12291);
        yail$Mnfor$Mnrange = new ModuleMethod(runtimeVar, 215, simpleSymbol187, 16388);
        yail$Mnfor$Mnrange$Mnwith$Mnnumeric$Mnchecked$Mnargs = new ModuleMethod(runtimeVar, 216, simpleSymbol186, 16388);
        yail$Mnnumber$Mnrange = new ModuleMethod(runtimeVar, 217, simpleSymbol185, 8194);
        yail$Mnalist$Mnlookup = new ModuleMethod(runtimeVar, 218, simpleSymbol184, 12291);
        pair$Mnok$Qu = new ModuleMethod(runtimeVar, 219, simpleSymbol183, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mnlist$Mnjoin$Mnwith$Mnseparator = new ModuleMethod(runtimeVar, 220, simpleSymbol182, 8194);
        make$Mnyail$Mndictionary = new ModuleMethod(runtimeVar, 221, simpleSymbol181, -4096);
        make$Mndictionary$Mnpair = new ModuleMethod(runtimeVar, 222, simpleSymbol180, 8194);
        yail$Mndictionary$Mnset$Mnpair = new ModuleMethod(runtimeVar, 223, simpleSymbol179, 12291);
        yail$Mndictionary$Mndelete$Mnpair = new ModuleMethod(runtimeVar, 224, simpleSymbol178, 8194);
        yail$Mndictionary$Mnlookup = new ModuleMethod(runtimeVar, 225, simpleSymbol177, 12291);
        yail$Mndictionary$Mnrecursive$Mnlookup = new ModuleMethod(runtimeVar, 226, simpleSymbol176, 12291);
        yail$Mndictionary$Mnwalk = new ModuleMethod(runtimeVar, 227, simpleSymbol175, 8194);
        yail$Mndictionary$Mnrecursive$Mnset = new ModuleMethod(runtimeVar, YaVersion.YOUNG_ANDROID_VERSION, simpleSymbol174, 12291);
        yail$Mndictionary$Mnget$Mnkeys = new ModuleMethod(runtimeVar, 229, simpleSymbol173, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mndictionary$Mnget$Mnvalues = new ModuleMethod(runtimeVar, 230, simpleSymbol172, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mndictionary$Mnis$Mnkey$Mnin = new ModuleMethod(runtimeVar, 231, simpleSymbol171, 8194);
        yail$Mndictionary$Mnlength = new ModuleMethod(runtimeVar, 232, simpleSymbol170, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mndictionary$Mnalist$Mnto$Mndict = new ModuleMethod(runtimeVar, 233, simpleSymbol169, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mndictionary$Mndict$Mnto$Mnalist = new ModuleMethod(runtimeVar, 234, simpleSymbol168, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mndictionary$Mncopy = new ModuleMethod(runtimeVar, 235, simpleSymbol167, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        yail$Mndictionary$Mncombine$Mndicts = new ModuleMethod(runtimeVar, 236, simpleSymbol166, 8194);
        yail$Mndictionary$Qu = new ModuleMethod(runtimeVar, 237, simpleSymbol165, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        make$Mndisjunct = new ModuleMethod(runtimeVar, 238, simpleSymbol164, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        array$Mn$Grlist = new ModuleMethod(runtimeVar, 239, simpleSymbol163, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        string$Mnstarts$Mnat = new ModuleMethod(runtimeVar, 240, simpleSymbol162, 8194);
        string$Mncontains = new ModuleMethod(runtimeVar, LispEscapeFormat.ESCAPE_NORMAL, simpleSymbol161, 8194);
        string$Mncontains$Mnany = new ModuleMethod(runtimeVar, LispEscapeFormat.ESCAPE_ALL, simpleSymbol160, 8194);
        string$Mncontains$Mnall = new ModuleMethod(runtimeVar, 243, simpleSymbol159, 8194);
        string$Mnsplit$Mnat$Mnfirst = new ModuleMethod(runtimeVar, 244, simpleSymbol158, 8194);
        string$Mnsplit$Mnat$Mnfirst$Mnof$Mnany = new ModuleMethod(runtimeVar, 245, simpleSymbol157, 8194);
        string$Mnsplit = new ModuleMethod(runtimeVar, 246, simpleSymbol156, 8194);
        string$Mnsplit$Mnat$Mnany = new ModuleMethod(runtimeVar, 247, simpleSymbol155, 8194);
        string$Mnsplit$Mnat$Mnspaces = new ModuleMethod(runtimeVar, 248, simpleSymbol154, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        string$Mnsubstring = new ModuleMethod(runtimeVar, 249, simpleSymbol153, 12291);
        string$Mntrim = new ModuleMethod(runtimeVar, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, simpleSymbol152, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        string$Mnreplace$Mnall = new ModuleMethod(runtimeVar, Telnet.WILL, simpleSymbol151, 12291);
        string$Mnempty$Qu = new ModuleMethod(runtimeVar, Telnet.WONT, simpleSymbol150, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        text$Mndeobfuscate = new ModuleMethod(runtimeVar, Telnet.DO, simpleSymbol149, 8194);
        string$Mnreplace$Mnmappings$Mndictionary = new ModuleMethod(runtimeVar, Telnet.DONT, simpleSymbol148, 8194);
        string$Mnreplace$Mnmappings$Mnlongest$Mnstring = new ModuleMethod(runtimeVar, 255, simpleSymbol147, 8194);
        string$Mnreplace$Mnmappings$Mnearliest$Mnoccurrence = new ModuleMethod(runtimeVar, 256, simpleSymbol146, 8194);
        make$Mnexact$Mnyail$Mninteger = new ModuleMethod(runtimeVar, InputDeviceCompat.SOURCE_KEYBOARD, simpleSymbol145, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        make$Mncolor = new ModuleMethod(runtimeVar, 258, simpleSymbol144, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        split$Mncolor = new ModuleMethod(runtimeVar, 259, simpleSymbol143, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        close$Mnscreen = new ModuleMethod(runtimeVar, 260, simpleSymbol142, 0);
        close$Mnapplication = new ModuleMethod(runtimeVar, 261, simpleSymbol141, 0);
        open$Mnanother$Mnscreen = new ModuleMethod(runtimeVar, 262, simpleSymbol140, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        open$Mnanother$Mnscreen$Mnwith$Mnstart$Mnvalue = new ModuleMethod(runtimeVar, Optimizer.OPTIMIZATION_STANDARD, simpleSymbol139, 8194);
        get$Mnstart$Mnvalue = new ModuleMethod(runtimeVar, 264, simpleSymbol138, 0);
        close$Mnscreen$Mnwith$Mnvalue = new ModuleMethod(runtimeVar, 265, simpleSymbol137, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        get$Mnplain$Mnstart$Mntext = new ModuleMethod(runtimeVar, 266, simpleSymbol136, 0);
        close$Mnscreen$Mnwith$Mnplain$Mntext = new ModuleMethod(runtimeVar, 267, simpleSymbol135, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        get$Mnserver$Mnaddress$Mnfrom$Mnwifi = new ModuleMethod(runtimeVar, 268, simpleSymbol134, 0);
        process$Mnrepl$Mninput = Macro.make(simpleSymbol133, syntaxRules, runtimeVar);
        in$Mnui = new ModuleMethod(runtimeVar, 269, simpleSymbol132, 8194);
        send$Mnto$Mnblock = new ModuleMethod(runtimeVar, 270, simpleSymbol131, 8194);
        clear$Mncurrent$Mnform = new ModuleMethod(runtimeVar, 271, simpleSymbol130, 0);
        set$Mnform$Mnname = new ModuleMethod(runtimeVar, 272, simpleSymbol129, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        remove$Mncomponent = new ModuleMethod(runtimeVar, 273, simpleSymbol128, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        rename$Mncomponent = new ModuleMethod(runtimeVar, 274, simpleSymbol127, 8194);
        init$Mnruntime = new ModuleMethod(runtimeVar, 275, simpleSymbol126, 0);
        set$Mnthis$Mnform = new ModuleMethod(runtimeVar, 276, simpleSymbol125, 0);
        clarify = new ModuleMethod(runtimeVar, 277, simpleSymbol124, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        clarify1 = new ModuleMethod(runtimeVar, 278, simpleSymbol123, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
    }

    public static Object lambda21(Object obj) {
        Object[] objArrAllocVars = SyntaxPattern.allocVars(2, null);
        if (Lit61.match(obj, objArrAllocVars, 0)) {
            Object objExecute = Lit62.execute(objArrAllocVars, TemplateScope.make());
            try {
                return SyntaxForms.makeWithTemplate(obj, strings.stringAppend("", "", ((Symbol) objExecute).toString()));
            } catch (ClassCastException e) {
                throw new WrongType(e, "symbol->string", 1, objExecute);
            }
        }
        return syntax_case.error("syntax-case", obj);
    }

    public static Object addComponentWithinRepl(Object obj, Object obj2, Object obj3, Object obj4) throws Throwable {
        frame frameVar = new frame();
        frameVar.component$Mnname = obj3;
        frameVar.init$Mnprops$Mnthunk = obj4;
        try {
            Object objLookupInCurrentFormEnvironment = lookupInCurrentFormEnvironment((Symbol) obj);
            try {
                ComponentContainer componentContainer = (ComponentContainer) objLookupInCurrentFormEnvironment;
                Object obj5 = frameVar.component$Mnname;
                try {
                    frameVar.existing$Mncomponent = lookupInCurrentFormEnvironment((Symbol) obj5);
                    Object objApply2 = Invoke.make.apply2(obj2, componentContainer);
                    frameVar.component$Mnto$Mnadd = objApply2;
                    Object obj6 = frameVar.component$Mnname;
                    try {
                        addToCurrentFormEnvironment((Symbol) obj6, objApply2);
                        return addInitThunk(frameVar.component$Mnname, frameVar.lambda$Fn1);
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "add-to-current-form-environment", 0, obj6);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "lookup-in-current-form-environment", 0, obj5);
                }
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "container", -2, objLookupInCurrentFormEnvironment);
            }
        } catch (ClassCastException e4) {
            throw new WrongType(e4, "lookup-in-current-form-environment", 0, obj);
        }
    }

    @Override // gnu.expr.ModuleBody
    public int match4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 17) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.value4 = obj4;
            callContext.proc = moduleMethod;
            callContext.pc = 4;
            return 0;
        }
        if (i == 23) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.value4 = obj4;
            callContext.proc = moduleMethod;
            callContext.pc = 4;
            return 0;
        }
        if (i == 47) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.value4 = obj4;
            callContext.proc = moduleMethod;
            callContext.pc = 4;
            return 0;
        }
        if (i == 49) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.value4 = obj4;
            callContext.proc = moduleMethod;
            callContext.pc = 4;
            return 0;
        }
        if (i == 201) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.value4 = obj4;
            callContext.proc = moduleMethod;
            callContext.pc = 4;
            return 0;
        }
        if (i == 52) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.value4 = obj4;
            callContext.proc = moduleMethod;
            callContext.pc = 4;
            return 0;
        }
        if (i == 53) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.value4 = obj4;
            callContext.proc = moduleMethod;
            callContext.pc = 4;
            return 0;
        }
        if (i == 63) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.value4 = obj4;
            callContext.proc = moduleMethod;
            callContext.pc = 4;
            return 0;
        }
        if (i == 64) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.value4 = obj4;
            callContext.proc = moduleMethod;
            callContext.pc = 4;
            return 0;
        }
        if (i == 215) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.value4 = obj4;
            callContext.proc = moduleMethod;
            callContext.pc = 4;
            return 0;
        }
        if (i != 216) {
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

    public class frame extends ModuleBody {
        Object component$Mnname;
        Object component$Mnto$Mnadd;
        Object existing$Mncomponent;
        Object init$Mnprops$Mnthunk;
        final ModuleMethod lambda$Fn1;

        public frame() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 1, null, 0);
            moduleMethod.setProperty("source-location", "/tmp/runtime15061256449536606169.scm:99");
            this.lambda$Fn1 = moduleMethod;
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

        public Object lambda1() throws Throwable {
            Object obj = this.init$Mnprops$Mnthunk;
            Boolean bool = Boolean.FALSE;
            if (obj != bool) {
                Scheme.applyToArgs.apply1(obj);
            }
            if (this.existing$Mncomponent == bool) {
                return Values.empty;
            }
            runtime.androidLog(Format.formatToString(0, "Copying component properties for ~A", this.component$Mnname));
            Object obj2 = this.existing$Mncomponent;
            try {
                Component component = (Component) obj2;
                Object obj3 = this.component$Mnto$Mnadd;
                try {
                    return PropertyUtil.copyComponentProperties(component, (Component) obj3);
                } catch (ClassCastException e) {
                    throw new WrongType(e, "com.google.appinventor.components.runtime.util.PropertyUtil.copyComponentProperties(com.google.appinventor.components.runtime.Component,com.google.appinventor.components.runtime.Component)", 2, obj3);
                }
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "com.google.appinventor.components.runtime.util.PropertyUtil.copyComponentProperties(com.google.appinventor.components.runtime.Component,com.google.appinventor.components.runtime.Component)", 1, obj2);
            }
        }
    }

    public static Object call$MnInitializeOfComponents$V(Object[] objArr) throws Throwable {
        Object objMakeList = LList.makeList(objArr, 0);
        Object cdr = objMakeList;
        while (cdr != LList.Empty) {
            try {
                Pair pair = (Pair) cdr;
                Object initThunk = getInitThunk(pair.getCar());
                if (initThunk != Boolean.FALSE) {
                    Scheme.applyToArgs.apply1(initThunk);
                }
                cdr = pair.getCdr();
            } catch (ClassCastException e) {
                throw new WrongType(e, "arg0", -2, cdr);
            }
        }
        while (objMakeList != LList.Empty) {
            try {
                Pair pair2 = (Pair) objMakeList;
                Object car = pair2.getCar();
                try {
                    ((Form) $Stthis$Mnform$St).callInitialize(lookupInCurrentFormEnvironment((Symbol) car));
                    objMakeList = pair2.getCdr();
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "lookup-in-current-form-environment", 0, car);
                }
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "arg0", -2, objMakeList);
            }
        }
        return Values.empty;
    }

    @Override // gnu.expr.ModuleBody
    public int matchN(ModuleMethod moduleMethod, Object[] objArr, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 18) {
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }
        if (i == 48) {
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }
        if (i == 157) {
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }
        if (i == 172) {
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }
        if (i == 221) {
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }
        if (i == 27) {
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }
        if (i == 28) {
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
        if (i == 46) {
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }
        if (i == 50) {
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }
        if (i == 51) {
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }
        if (i == 101) {
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }
        if (i != 102) {
            return super.matchN(moduleMethod, objArr, callContext);
        }
        callContext.values = objArr;
        callContext.proc = moduleMethod;
        callContext.pc = 5;
        return 0;
    }

    @Override // gnu.expr.ModuleBody
    public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 33) {
            if (!(obj instanceof Symbol)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 34) {
            if (!(obj instanceof Symbol)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 85) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 86) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 97) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 98) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 166) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i != 167) {
            switch (i) {
                case 19:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 24:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 60:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 66:
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
                case 73:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 77:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 100:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 108:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 110:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 121:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 126:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 145:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 152:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 169:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 171:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 173:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 180:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 181:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 182:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 183:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 184:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 185:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 186:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 187:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 188:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case FullScreenVideoUtil.FULLSCREEN_VIDEO_DIALOG_FLAG /* 189 */:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 198:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 200:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 203:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 206:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 208:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 212:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 217:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 220:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 222:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 224:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 227:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 231:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 236:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case Optimizer.OPTIMIZATION_STANDARD /* 263 */:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 269:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 270:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 274:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                default:
                    switch (i) {
                        case 38:
                            if (!(obj instanceof Symbol)) {
                                return -786431;
                            }
                            callContext.value1 = obj;
                            if (!(obj2 instanceof Symbol)) {
                                return -786430;
                            }
                            callContext.value2 = obj2;
                            callContext.proc = moduleMethod;
                            callContext.pc = 2;
                            return 0;
                        case 39:
                            if (!(obj instanceof Symbol)) {
                                return -786431;
                            }
                            callContext.value1 = obj;
                            callContext.value2 = obj2;
                            callContext.proc = moduleMethod;
                            callContext.pc = 2;
                            return 0;
                        case 40:
                            if (!(obj instanceof Symbol)) {
                                return -786431;
                            }
                            callContext.value1 = obj;
                            callContext.value2 = obj2;
                            callContext.proc = moduleMethod;
                            callContext.pc = 2;
                            return 0;
                        default:
                            switch (i) {
                                case 175:
                                    callContext.value1 = obj;
                                    callContext.value2 = obj2;
                                    callContext.proc = moduleMethod;
                                    callContext.pc = 2;
                                    return 0;
                                case 176:
                                    callContext.value1 = obj;
                                    callContext.value2 = obj2;
                                    callContext.proc = moduleMethod;
                                    callContext.pc = 2;
                                    return 0;
                                case 177:
                                    callContext.value1 = obj;
                                    callContext.value2 = obj2;
                                    callContext.proc = moduleMethod;
                                    callContext.pc = 2;
                                    return 0;
                                default:
                                    switch (i) {
                                        case FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_PLAY /* 191 */:
                                            callContext.value1 = obj;
                                            callContext.value2 = obj2;
                                            callContext.proc = moduleMethod;
                                            callContext.pc = 2;
                                            return 0;
                                        case FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_PAUSE /* 192 */:
                                            callContext.value1 = obj;
                                            callContext.value2 = obj2;
                                            callContext.proc = moduleMethod;
                                            callContext.pc = 2;
                                            return 0;
                                        case FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_STOP /* 193 */:
                                            callContext.value1 = obj;
                                            callContext.value2 = obj2;
                                            callContext.proc = moduleMethod;
                                            callContext.pc = 2;
                                            return 0;
                                        case FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_SOURCE /* 194 */:
                                            callContext.value1 = obj;
                                            callContext.value2 = obj2;
                                            callContext.proc = moduleMethod;
                                            callContext.pc = 2;
                                            return 0;
                                        case FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_FULLSCREEN /* 195 */:
                                            callContext.value1 = obj;
                                            callContext.value2 = obj2;
                                            callContext.proc = moduleMethod;
                                            callContext.pc = 2;
                                            return 0;
                                        case FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_DURATION /* 196 */:
                                            callContext.value1 = obj;
                                            callContext.value2 = obj2;
                                            callContext.proc = moduleMethod;
                                            callContext.pc = 2;
                                            return 0;
                                        default:
                                            switch (i) {
                                                case 240:
                                                    callContext.value1 = obj;
                                                    callContext.value2 = obj2;
                                                    callContext.proc = moduleMethod;
                                                    callContext.pc = 2;
                                                    return 0;
                                                case LispEscapeFormat.ESCAPE_NORMAL /* 241 */:
                                                    callContext.value1 = obj;
                                                    callContext.value2 = obj2;
                                                    callContext.proc = moduleMethod;
                                                    callContext.pc = 2;
                                                    return 0;
                                                case LispEscapeFormat.ESCAPE_ALL /* 242 */:
                                                    callContext.value1 = obj;
                                                    callContext.value2 = obj2;
                                                    callContext.proc = moduleMethod;
                                                    callContext.pc = 2;
                                                    return 0;
                                                case 243:
                                                    callContext.value1 = obj;
                                                    callContext.value2 = obj2;
                                                    callContext.proc = moduleMethod;
                                                    callContext.pc = 2;
                                                    return 0;
                                                case 244:
                                                    callContext.value1 = obj;
                                                    callContext.value2 = obj2;
                                                    callContext.proc = moduleMethod;
                                                    callContext.pc = 2;
                                                    return 0;
                                                case 245:
                                                    callContext.value1 = obj;
                                                    callContext.value2 = obj2;
                                                    callContext.proc = moduleMethod;
                                                    callContext.pc = 2;
                                                    return 0;
                                                case 246:
                                                    callContext.value1 = obj;
                                                    callContext.value2 = obj2;
                                                    callContext.proc = moduleMethod;
                                                    callContext.pc = 2;
                                                    return 0;
                                                case 247:
                                                    callContext.value1 = obj;
                                                    callContext.value2 = obj2;
                                                    callContext.proc = moduleMethod;
                                                    callContext.pc = 2;
                                                    return 0;
                                                default:
                                                    switch (i) {
                                                        case Telnet.DO /* 253 */:
                                                            callContext.value1 = obj;
                                                            callContext.value2 = obj2;
                                                            callContext.proc = moduleMethod;
                                                            callContext.pc = 2;
                                                            return 0;
                                                        case Telnet.DONT /* 254 */:
                                                            callContext.value1 = obj;
                                                            callContext.value2 = obj2;
                                                            callContext.proc = moduleMethod;
                                                            callContext.pc = 2;
                                                            return 0;
                                                        case 255:
                                                            callContext.value1 = obj;
                                                            callContext.value2 = obj2;
                                                            callContext.proc = moduleMethod;
                                                            callContext.pc = 2;
                                                            return 0;
                                                        case 256:
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
                    }
            }
        }
        callContext.value1 = obj;
        callContext.value2 = obj2;
        callContext.proc = moduleMethod;
        callContext.pc = 2;
        return 0;
    }

    public static Object addInitThunk(Object obj, Object obj2) {
        return Invoke.invokeStatic.applyN(new Object[]{KawaEnvironment, Lit0, $Stinit$Mnthunk$Mnenvironment$St, obj, obj2});
    }

    public static Object getInitThunk(Object obj) {
        Object obj2 = $Stinit$Mnthunk$Mnenvironment$St;
        try {
            try {
                boolean zIsBound = ((Environment) obj2).isBound((Symbol) obj);
                if (zIsBound) {
                    return Invoke.invokeStatic.apply4(KawaEnvironment, Lit1, $Stinit$Mnthunk$Mnenvironment$St, obj);
                }
                return zIsBound ? Boolean.TRUE : Boolean.FALSE;
            } catch (ClassCastException e) {
                throw new WrongType(e, "gnu.mapping.Environment.isBound(gnu.mapping.Symbol)", 2, obj);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "gnu.mapping.Environment.isBound(gnu.mapping.Symbol)", 1, obj2);
        }
    }

    @Override // gnu.expr.ModuleBody
    public int match0(ModuleMethod moduleMethod, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 21) {
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }
        if (i == 42) {
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }
        if (i == 107) {
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }
        if (i == 264) {
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }
        if (i == 266) {
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }
        if (i == 268) {
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }
        if (i == 271) {
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }
        if (i == 260) {
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }
        if (i == 261) {
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }
        if (i == 275) {
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }
        if (i != 276) {
            return super.match0(moduleMethod, callContext);
        }
        callContext.proc = moduleMethod;
        callContext.pc = 0;
        return 0;
    }

    public static void clearInitThunks() {
        $Stinit$Mnthunk$Mnenvironment$St = Environment.make("init-thunk-environment");
    }

    public static Object lookupComponent(Object obj) {
        try {
            Symbol symbol = (Symbol) obj;
            Boolean bool = Boolean.FALSE;
            Object objLookupInCurrentFormEnvironment = lookupInCurrentFormEnvironment(symbol, bool);
            return objLookupInCurrentFormEnvironment != bool ? objLookupInCurrentFormEnvironment : Lit2;
        } catch (ClassCastException e) {
            throw new WrongType(e, "lookup-in-current-form-environment", 0, obj);
        }
    }

    public static Object setAndCoerceProperty$Ex(Object obj, Object obj2, Object obj3, Object obj4) {
        return $PcSetAndCoerceProperty$Ex(coerceToComponentAndVerify(obj), obj2, obj3, obj4);
    }

    public static Object getProperty$1(Object obj, Object obj2) {
        Object objCoerceToComponentAndVerify = coerceToComponentAndVerify(obj);
        return sanitizeReturnValue(objCoerceToComponentAndVerify, obj2, Invoke.invoke.apply2(objCoerceToComponentAndVerify, obj2));
    }

    public static Object coerceToComponentAndVerify(Object obj) {
        Object objCoerceToComponent = coerceToComponent(obj);
        return !(objCoerceToComponent instanceof Component) ? signalRuntimeError(strings.stringAppend("Cannot find the component: ", getDisplayRepresentation(obj)), "Problem with application") : objCoerceToComponent;
    }

    @Override // gnu.expr.ModuleBody
    public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
        switch (moduleMethod.selector) {
            case 26:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 43:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 55:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 61:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 65:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 68:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 168:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 170:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 178:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 197:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case ErrorMessages.ERROR_NO_CAMERA_PERMISSION /* 202 */:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 205:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 207:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 213:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 214:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 218:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 223:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 225:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 226:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case YaVersion.YOUNG_ANDROID_VERSION /* 228 */:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case 249:
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.proc = moduleMethod;
                callContext.pc = 3;
                return 0;
            case Telnet.WILL /* 251 */:
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

    public static Object getPropertyAndCheck(Object obj, Object obj2, Object obj3) {
        Object objCoerceToComponentOfType = coerceToComponentOfType(obj, obj2);
        return !(objCoerceToComponentOfType instanceof Component) ? signalRuntimeError(Format.formatToString(0, "Property getter was expecting a ~A component but got a ~A instead.", obj2, obj.getClass().getSimpleName()), "Problem with application") : sanitizeReturnValue(objCoerceToComponentOfType, obj3, Invoke.invoke.apply2(objCoerceToComponentOfType, obj3));
    }

    public static Object setAndCoercePropertyAndCheck$Ex(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        Object objCoerceToComponentOfType = coerceToComponentOfType(obj, obj2);
        return !(objCoerceToComponentOfType instanceof Component) ? signalRuntimeError(Format.formatToString(0, "Property setter was expecting a ~A component but got a ~A instead.", obj2, obj.getClass().getSimpleName()), "Problem with application") : $PcSetAndCoerceProperty$Ex(objCoerceToComponentOfType, obj3, obj4, obj5);
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

    public static Object lambda22(Object obj) {
        Object[] objArrAllocVars = SyntaxPattern.allocVars(3, null);
        if (!Lit100.match(obj, objArrAllocVars, 0)) {
            return syntax_case.error("syntax-case", obj);
        }
        return SyntaxForms.makeWithTemplate(obj, Lit101.execute(objArrAllocVars, TemplateScope.make()));
    }

    public static Object lambda23(Object obj) {
        Object[] objArrAllocVars = SyntaxPattern.allocVars(3, null);
        if (!Lit103.match(obj, objArrAllocVars, 0)) {
            return syntax_case.error("syntax-case", obj);
        }
        return SyntaxForms.makeWithTemplate(obj, Lit104.execute(objArrAllocVars, TemplateScope.make()));
    }

    public static Object lambda24(Object obj) {
        Object[] objArrAllocVars = SyntaxPattern.allocVars(5, null);
        if (!Lit110.match(obj, objArrAllocVars, 0)) {
            return syntax_case.error("syntax-case", obj);
        }
        TemplateScope templateScopeMake = TemplateScope.make();
        return Quote.append$V(new Object[]{Lit111.execute(objArrAllocVars, templateScopeMake), Pair.make(Quote.append$V(new Object[]{Lit112.execute(objArrAllocVars, templateScopeMake), LList.consX(new Object[]{symbolAppend$V(new Object[]{Lit113.execute(objArrAllocVars, templateScopeMake), Lit114, Lit115.execute(objArrAllocVars, templateScopeMake)}), Lit116.execute(objArrAllocVars, templateScopeMake)})}), Lit117.execute(objArrAllocVars, templateScopeMake))});
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) throws Throwable {
        int i = moduleMethod.selector;
        if (i == 15) {
            androidLog(obj);
            return Values.empty;
        }
        if (i == 16) {
            return lambda21(obj);
        }
        if (i == 36) {
            try {
                return filterTypeInCurrentFormEnvironment((Symbol) obj);
            } catch (ClassCastException e) {
                throw new WrongType(e, "filter-type-in-current-form-environment", 1, obj);
            }
        }
        if (i != 37) {
            switch (i) {
                case 20:
                    return getInitThunk(obj);
                case 22:
                    return lookupComponent(obj);
                case 25:
                    return coerceToComponentAndVerify(obj);
                case 34:
                    try {
                        return lookupInCurrentFormEnvironment((Symbol) obj);
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "lookup-in-current-form-environment", 1, obj);
                    }
                case 40:
                    try {
                        return lookupGlobalVarInCurrentFormEnvironment((Symbol) obj);
                    } catch (ClassCastException e3) {
                        throw new WrongType(e3, "lookup-global-var-in-current-form-environment", 1, obj);
                    }
                case 44:
                    return $StYailBreak$St(obj);
                case 54:
                    return sanitizeComponentData(obj);
                case 62:
                    return yailNot(obj) ? Boolean.TRUE : Boolean.FALSE;
                case 67:
                    return showArglistNoParens(obj);
                case 87:
                    return coerceToYailList(obj);
                case 88:
                    return coerceToPair(obj);
                case 89:
                    return coerceToDictionary(obj);
                case 90:
                    return coerceToBoolean(obj);
                case 91:
                    return isIsCoercible(obj) ? Boolean.TRUE : Boolean.FALSE;
                case 92:
                    return isAllCoercible(obj);
                case 93:
                    return boolean$To$String(obj);
                case 94:
                    return paddedString$To$Number(obj);
                case 95:
                    return $StFormatInexact$St(obj);
                case 96:
                    return appinventorNumber$To$String(obj);
                case 99:
                    return asNumber(obj);
                case 109:
                    return lambda15(obj);
                case 122:
                    return stringToUpperCase(obj);
                case 123:
                    return stringToLowerCase(obj);
                case 124:
                    try {
                        return unicodeString$To$List((CharSequence) obj);
                    } catch (ClassCastException e4) {
                        throw new WrongType(e4, "unicode-string->list", 1, obj);
                    }
                case 125:
                    return stringReverse(obj);
                case WorkQueueKt.MASK /* 127 */:
                    return isIsNumber(obj);
                case 128:
                    return isIsBase10(obj) ? Boolean.TRUE : Boolean.FALSE;
                case 129:
                    return isIsHexadecimal(obj) ? Boolean.TRUE : Boolean.FALSE;
                case 130:
                    return isIsBinary(obj) ? Boolean.TRUE : Boolean.FALSE;
                case 131:
                    return mathConvertDecHex(obj);
                case 132:
                    return mathConvertHexDec(obj);
                case 133:
                    return mathConvertBinDec(obj);
                case 134:
                    return mathConvertDecBin(obj);
                case 135:
                    return patchedNumber$To$StringBinary(obj);
                case 136:
                    return alternateNumber$To$StringBinary(obj);
                case 137:
                    return internalBinaryConvert(obj);
                case 138:
                    return avg(obj);
                case 139:
                    return yailMul(obj);
                case 140:
                    return gm(obj);
                case 141:
                    return mode(obj);
                case 142:
                    return maxl(obj);
                case 143:
                    return minl(obj);
                case 144:
                    return mean(obj);
                case 146:
                    return stdDev(obj);
                case 147:
                    return sampleStdDev(obj);
                case 148:
                    return stdErr(obj);
                case 149:
                    return isYailList(obj);
                case 150:
                    return isYailListCandidate(obj);
                case 151:
                    return yailListContents(obj);
                case 153:
                    return insertYailListHeader(obj);
                case 154:
                    return kawaList$To$YailList(obj);
                case 155:
                    return yailList$To$KawaList(obj);
                case 156:
                    return isYailListEmpty(obj);
                case 158:
                    return yailListCopy(obj);
                case 159:
                    return yailListReverse(obj);
                case ComponentConstants.TEXTBOX_PREFERRED_WIDTH /* 160 */:
                    return yailListToCsvTable(obj);
                case 161:
                    return yailListToCsvRow(obj);
                case 162:
                    return convertToStringsForCsv(obj);
                case 163:
                    return yailListFromCsvTable(obj);
                case 164:
                    return yailListFromCsvRow(obj);
                case 165:
                    return Integer.valueOf(yailListLength(obj));
                case 174:
                    return yailListPickRandom(obj);
                case 179:
                    return typeof(obj);
                case FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_SEEK /* 190 */:
                    return yailListNecessary(obj);
                case 199:
                    return yailListSort(obj);
                case 204:
                    return listNumberOnly(obj);
                case 209:
                    return yailListButFirst(obj);
                case 210:
                    return butLast(obj);
                case 211:
                    return yailListButLast(obj);
                case 219:
                    return isPairOk(obj);
                case 229:
                    return yailDictionaryGetKeys(obj);
                case 230:
                    return yailDictionaryGetValues(obj);
                case 232:
                    return Integer.valueOf(yailDictionaryLength(obj));
                case 233:
                    return yailDictionaryAlistToDict(obj);
                case 234:
                    return yailDictionaryDictToAlist(obj);
                case 235:
                    return yailDictionaryCopy(obj);
                case 237:
                    return isYailDictionary(obj);
                case 238:
                    return makeDisjunct(obj);
                case 239:
                    return array$To$List(obj);
                case 248:
                    return stringSplitAtSpaces(obj);
                case ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION /* 250 */:
                    return stringTrim(obj);
                case Telnet.WONT /* 252 */:
                    return isStringEmpty(obj);
                case InputDeviceCompat.SOURCE_KEYBOARD /* 257 */:
                    return makeExactYailInteger(obj);
                case 258:
                    return makeColor(obj);
                case 259:
                    return splitColor(obj);
                case 262:
                    openAnotherScreen(obj);
                    return Values.empty;
                case 265:
                    closeScreenWithValue(obj);
                    return Values.empty;
                case 267:
                    closeScreenWithPlainText(obj);
                    return Values.empty;
                case 272:
                    return setFormName(obj);
                case 273:
                    return removeComponent(obj);
                case 277:
                    return clarify(obj);
                case 278:
                    return clarify1(obj);
                default:
                    switch (i) {
                        case 29:
                            return lambda22(obj);
                        case 30:
                            return lambda23(obj);
                        case 31:
                            return lambda24(obj);
                        case 32:
                            return lambda25(obj);
                        default:
                            switch (i) {
                                case 56:
                                    try {
                                        return javaCollection$To$YailList((Collection) obj);
                                    } catch (ClassCastException e5) {
                                        throw new WrongType(e5, "java-collection->yail-list", 1, obj);
                                    }
                                case 57:
                                    try {
                                        return javaCollection$To$KawaList((Collection) obj);
                                    } catch (ClassCastException e6) {
                                        throw new WrongType(e6, "java-collection->kawa-list", 1, obj);
                                    }
                                case 58:
                                    try {
                                        return javaMap$To$YailDictionary((Map) obj);
                                    } catch (ClassCastException e7) {
                                        throw new WrongType(e7, "java-map->yail-dictionary", 1, obj);
                                    }
                                case 59:
                                    return sanitizeAtomic(obj);
                                default:
                                    switch (i) {
                                        case 70:
                                            return coerceToNumberList(obj);
                                        case 71:
                                            return isEnumType(obj);
                                        case 72:
                                            return isEnum(obj);
                                        default:
                                            switch (i) {
                                                case 74:
                                                    return coerceToText(obj);
                                                case 75:
                                                    return coerceToInstant(obj);
                                                case 76:
                                                    return coerceToComponent(obj);
                                                default:
                                                    switch (i) {
                                                        case 78:
                                                            return type$To$Class(obj);
                                                        case 79:
                                                            return coerceToNumber(obj);
                                                        case 80:
                                                            return coerceToKey(obj);
                                                        case 81:
                                                            return coerceToString(obj);
                                                        case 82:
                                                            return getDisplayRepresentation(obj);
                                                        case 83:
                                                            return lambda8(obj);
                                                        case 84:
                                                            return lambda11(obj);
                                                        default:
                                                            switch (i) {
                                                                case 103:
                                                                    return yailFloor(obj);
                                                                case 104:
                                                                    return yailCeiling(obj);
                                                                case 105:
                                                                    return yailRound(obj);
                                                                case 106:
                                                                    return randomSetSeed(obj);
                                                                default:
                                                                    switch (i) {
                                                                        case 111:
                                                                            return degrees$To$RadiansInternal(obj);
                                                                        case 112:
                                                                            return radians$To$DegreesInternal(obj);
                                                                        case 113:
                                                                            return degrees$To$Radians(obj);
                                                                        case 114:
                                                                            return radians$To$Degrees(obj);
                                                                        case 115:
                                                                            return sinDegrees(obj);
                                                                        case 116:
                                                                            return cosDegrees(obj);
                                                                        case 117:
                                                                            return tanDegrees(obj);
                                                                        case 118:
                                                                            return asinDegrees(obj);
                                                                        case 119:
                                                                            return acosDegrees(obj);
                                                                        case 120:
                                                                            return atanDegrees(obj);
                                                                        default:
                                                                            return super.apply1(moduleMethod, obj);
                                                                    }
                                                            }
                                                    }
                                            }
                                    }
                            }
                    }
            }
        }
        try {
            return deleteFromCurrentFormEnvironment((Symbol) obj);
        } catch (ClassCastException e8) {
            throw new WrongType(e8, "delete-from-current-form-environment", 1, obj);
        }
    }

    public static Object lambda25(Object obj) {
        Object[] objArrAllocVars = SyntaxPattern.allocVars(5, null);
        if (!Lit119.match(obj, objArrAllocVars, 0)) {
            return syntax_case.error("syntax-case", obj);
        }
        TemplateScope templateScopeMake = TemplateScope.make();
        return Quote.append$V(new Object[]{Lit120.execute(objArrAllocVars, templateScopeMake), Pair.make(Quote.append$V(new Object[]{Lit121.execute(objArrAllocVars, templateScopeMake), LList.consX(new Object[]{symbolAppend$V(new Object[]{Lit122, Lit123.execute(objArrAllocVars, templateScopeMake), Lit114, Lit124.execute(objArrAllocVars, templateScopeMake)}), Lit125.execute(objArrAllocVars, templateScopeMake)})}), Lit126.execute(objArrAllocVars, templateScopeMake))});
    }

    public static Object addToCurrentFormEnvironment(Symbol symbol, Object obj) {
        return $Stthis$Mnform$St != null ? Invoke.invokeStatic.applyN(new Object[]{KawaEnvironment, Lit0, SlotGet.getSlotValue(false, $Stthis$Mnform$St, "form-environment", "form$Mnenvironment", "getFormEnvironment", "isFormEnvironment", Scheme.instance), symbol, obj}) : Invoke.invokeStatic.applyN(new Object[]{KawaEnvironment, Lit0, $Sttest$Mnenvironment$St, symbol, obj});
    }

    public static Object lookupInCurrentFormEnvironment(Symbol symbol, Object obj) {
        Object obj2 = $Stthis$Mnform$St;
        Object slotValue = obj2 != null ? SlotGet.getSlotValue(false, obj2, "form-environment", "form$Mnenvironment", "getFormEnvironment", "isFormEnvironment", Scheme.instance) : $Sttest$Mnenvironment$St;
        try {
            return ((Environment) slotValue).isBound(symbol) ? Invoke.invokeStatic.apply4(KawaEnvironment, Lit1, slotValue, symbol) : obj;
        } catch (ClassCastException e) {
            throw new WrongType(e, "gnu.mapping.Environment.isBound(gnu.mapping.Symbol)", 1, slotValue);
        }
    }

    public static Object filterTypeInCurrentFormEnvironment(Symbol symbol) {
        Object obj = $Stthis$Mnform$St;
        Object slotValue = obj != null ? SlotGet.getSlotValue(false, obj, "form-environment", "form$Mnenvironment", "getFormEnvironment", "isFormEnvironment", Scheme.instance) : $Sttest$Mnenvironment$St;
        try {
            return sanitizeComponentData(ComponentUtil.filterComponentsOfType((Environment) slotValue, symbol == null ? null : symbol.toString()));
        } catch (ClassCastException e) {
            throw new WrongType(e, "com.google.appinventor.components.runtime.util.ComponentUtil.filterComponentsOfType(gnu.mapping.Environment,java.lang.String)", 1, slotValue);
        }
    }

    public static Object deleteFromCurrentFormEnvironment(Symbol symbol) {
        if ($Stthis$Mnform$St != null) {
            return Invoke.invokeStatic.apply4(KawaEnvironment, Lit3, SlotGet.getSlotValue(false, $Stthis$Mnform$St, "form-environment", "form$Mnenvironment", "getFormEnvironment", "isFormEnvironment", Scheme.instance), symbol);
        }
        return Invoke.invokeStatic.apply4(KawaEnvironment, Lit3, $Sttest$Mnenvironment$St, symbol);
    }

    public static Object renameInCurrentFormEnvironment(Symbol symbol, Symbol symbol2) throws Throwable {
        if (Scheme.isEqv.apply2(symbol, symbol2) != Boolean.FALSE) {
            return Values.empty;
        }
        Object objLookupInCurrentFormEnvironment = lookupInCurrentFormEnvironment(symbol);
        if ($Stthis$Mnform$St != null) {
            Invoke.invokeStatic.applyN(new Object[]{KawaEnvironment, Lit0, SlotGet.getSlotValue(false, $Stthis$Mnform$St, "form-environment", "form$Mnenvironment", "getFormEnvironment", "isFormEnvironment", Scheme.instance), symbol2, objLookupInCurrentFormEnvironment});
        } else {
            Invoke.invokeStatic.applyN(new Object[]{KawaEnvironment, Lit0, $Sttest$Mnenvironment$St, symbol2, objLookupInCurrentFormEnvironment});
        }
        return deleteFromCurrentFormEnvironment(symbol);
    }

    public static Object addGlobalVarToCurrentFormEnvironment(Symbol symbol, Object obj) throws Throwable {
        if ($Stthis$Mnform$St != null) {
            Invoke.invokeStatic.applyN(new Object[]{KawaEnvironment, Lit0, SlotGet.getSlotValue(false, $Stthis$Mnform$St, "global-var-environment", "global$Mnvar$Mnenvironment", "getGlobalVarEnvironment", "isGlobalVarEnvironment", Scheme.instance), symbol, obj});
            return null;
        }
        Invoke.invokeStatic.applyN(new Object[]{KawaEnvironment, Lit0, $Sttest$Mnglobal$Mnvar$Mnenvironment$St, symbol, obj});
        return null;
    }

    public static Object lookupGlobalVarInCurrentFormEnvironment(Symbol symbol, Object obj) {
        Object obj2 = $Stthis$Mnform$St;
        Object slotValue = obj2 != null ? SlotGet.getSlotValue(false, obj2, "global-var-environment", "global$Mnvar$Mnenvironment", "getGlobalVarEnvironment", "isGlobalVarEnvironment", Scheme.instance) : $Sttest$Mnglobal$Mnvar$Mnenvironment$St;
        try {
            return ((Environment) slotValue).isBound(symbol) ? Invoke.invokeStatic.apply4(KawaEnvironment, Lit1, slotValue, symbol) : obj;
        } catch (ClassCastException e) {
            throw new WrongType(e, "gnu.mapping.Environment.isBound(gnu.mapping.Symbol)", 1, slotValue);
        }
    }

    public static void resetCurrentFormEnvironment() throws Throwable {
        Object obj = $Stthis$Mnform$St;
        if (obj != null) {
            Object slotValue = SlotGet.getSlotValue(false, obj, "form-name-symbol", "form$Mnname$Mnsymbol", "getFormNameSymbol", "isFormNameSymbol", Scheme.instance);
            SlotSet slotSet = SlotSet.set$Mnfield$Ex;
            try {
                slotSet.apply3($Stthis$Mnform$St, "form-environment", Environment.make(((Symbol) slotValue).toString()));
                try {
                    addToCurrentFormEnvironment((Symbol) slotValue, $Stthis$Mnform$St);
                    Object obj2 = $Stthis$Mnform$St;
                    try {
                        FString fStringStringAppend = strings.stringAppend(((Symbol) slotValue).toString(), "-global-vars");
                        slotSet.apply3(obj2, "global-var-environment", Environment.make(fStringStringAppend == null ? null : fStringStringAppend.toString()));
                        return;
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "symbol->string", 1, slotValue);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "add-to-current-form-environment", 0, slotValue);
                }
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "symbol->string", 1, slotValue);
            }
        }
        $Sttest$Mnenvironment$St = Environment.make("test-env");
        Invoke.invoke.apply3(Environment.getCurrent(), "addParent", $Sttest$Mnenvironment$St);
        $Sttest$Mnglobal$Mnvar$Mnenvironment$St = Environment.make("test-global-var-env");
    }

    public static Object lambda26(Object obj, Object obj2, Object obj3) {
        PairWithPosition pairWithPosition = Lit142;
        LList lList = LList.Empty;
        return Quote.append$V(new Object[]{Lit140, Pair.make(Quote.append$V(new Object[]{Lit141, Pair.make(pairWithPosition, Pair.make(Quote.append$V(new Object[]{Lit143, Pair.make(Pair.make(Quote.append$V(new Object[]{Lit144, Pair.make(Quote.append$V(new Object[]{Lit145, Pair.make(LList.consX(new Object[]{obj, lList}), LList.consX(new Object[]{obj2, lList}))}), lList)}), lList), Pair.make(Quote.append$V(new Object[]{Lit146, LList.consX(new Object[]{obj3, lList})}), lList))}), lList))}), lList)});
    }

    public static Object $StYailBreak$St(Object obj) {
        return signalRuntimeError("Break should be run only from within a loop", "Bad use of Break");
    }

    public static Object lambda27(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        PairWithPosition pairWithPosition = Lit151;
        LList lList = LList.Empty;
        return Quote.append$V(new Object[]{Lit149, Pair.make(Quote.append$V(new Object[]{Lit150, Pair.make(pairWithPosition, Pair.make(Quote.append$V(new Object[]{Lit152, Pair.make(Quote.append$V(new Object[]{Lit153, Pair.make(LList.consX(new Object[]{obj, lList}), LList.consX(new Object[]{obj2, lList}))}), LList.consX(new Object[]{obj3, LList.consX(new Object[]{obj4, LList.consX(new Object[]{obj5, lList})})}))}), lList))}), lList)});
    }

    public static Object lambda28$V(Object obj, Object obj2, Object[] objArr) {
        LList lListMakeList = LList.makeList(objArr, 0);
        PairWithPosition pairWithPosition = Lit158;
        Object objAppend$V = Quote.append$V(new Object[]{Lit160, LList.consX(new Object[]{obj, Pair.make(Quote.append$V(new Object[]{Lit161, Pair.make(Quote.append$V(new Object[]{Lit162, LList.consX(new Object[]{obj2, lListMakeList})}), Lit163)}), Lit164)})});
        LList lList = LList.Empty;
        return Quote.append$V(new Object[]{Lit155, Pair.make(Pair.make(Quote.append$V(new Object[]{Lit156, Pair.make(Quote.append$V(new Object[]{Lit157, Pair.make(pairWithPosition, Pair.make(Quote.append$V(new Object[]{Lit159, Pair.make(objAppend$V, lList)}), lList))}), lList)}), lList), Lit165)});
    }

    public static Object callComponentMethod(Object obj, Object obj2, Object obj3, Object obj4) throws Throwable {
        Object objApplyN;
        Object objCoerceArgs = coerceArgs(obj2, obj3, obj4);
        try {
            Object objLookupInCurrentFormEnvironment = lookupInCurrentFormEnvironment((Symbol) obj);
            if (isAllCoercible(objCoerceArgs) != Boolean.FALSE) {
                try {
                    objApplyN = Scheme.apply.apply2(Invoke.invoke, LList.consX(new Object[]{objLookupInCurrentFormEnvironment, LList.consX(new Object[]{obj2, Quote.append$V(new Object[]{objCoerceArgs, LList.Empty})})}));
                } catch (PermissionException e) {
                    objApplyN = Invoke.invoke.applyN(new Object[]{Form.getActiveForm(), "dispatchPermissionDeniedEvent", objLookupInCurrentFormEnvironment, obj2, e});
                }
            } else {
                objApplyN = generateRuntimeTypeError(obj2, obj3);
            }
            return sanitizeReturnValue(objLookupInCurrentFormEnvironment, obj2, objApplyN);
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "lookup-in-current-form-environment", 0, obj);
        }
    }

    public static Object callComponentMethodWithContinuation(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        frame0 frame0Var = new frame0();
        frame0Var.method$Mnname = obj2;
        frame0Var.k = obj5;
        Object objCoerceArgs = coerceArgs(obj2, obj3, obj4);
        try {
            frame0Var.component = lookupInCurrentFormEnvironment((Symbol) obj);
            Continuation continuationWrap = ContinuationUtil.wrap(frame0Var.lambda$Fn2, Lit4);
            if (isAllCoercible(objCoerceArgs) != Boolean.FALSE) {
                try {
                    return Scheme.apply.apply2(Invoke.invoke, LList.consX(new Object[]{frame0Var.component, LList.consX(new Object[]{frame0Var.method$Mnname, Quote.append$V(new Object[]{objCoerceArgs, LList.consX(new Object[]{continuationWrap, LList.Empty})})})}));
                } catch (PermissionException e) {
                    return Invoke.invoke.applyN(new Object[]{Form.getActiveForm(), "dispatchPermissionDeniedEvent", frame0Var.component, frame0Var.method$Mnname, e});
                }
            }
            return generateRuntimeTypeError(frame0Var.method$Mnname, obj3);
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "lookup-in-current-form-environment", 0, obj);
        }
    }

    public class frame0 extends ModuleBody {
        Object component;
        Object k;
        final ModuleMethod lambda$Fn2;
        Object method$Mnname;

        public frame0() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 2, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/tmp/runtime15061256449536606169.scm:1131");
            this.lambda$Fn2 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 2 ? lambda2(obj) : super.apply1(moduleMethod, obj);
        }

        public Object lambda2(Object obj) {
            return Scheme.applyToArgs.apply2(this.k, runtime.sanitizeReturnValue(this.component, this.method$Mnname, obj));
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
    }

    public static Object callComponentMethodWithBlockingContinuation(Object obj, Object obj2, Object obj3, Object obj4) {
        frame1 frame1Var = new frame1();
        frame1Var.result = Boolean.FALSE;
        callComponentMethodWithContinuation(obj, obj2, obj3, obj4, frame1Var.lambda$Fn3);
        return frame1Var.result;
    }

    public class frame1 extends ModuleBody {
        final ModuleMethod lambda$Fn3;
        Object result;

        public frame1() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 3, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/tmp/runtime15061256449536606169.scm:1152");
            this.lambda$Fn3 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            if (moduleMethod.selector != 3) {
                return super.apply1(moduleMethod, obj);
            }
            lambda3(obj);
            return Values.empty;
        }

        public void lambda3(Object obj) {
            this.result = obj;
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
    }

    public static Object callComponentTypeMethod(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) throws Throwable {
        Object objGenerateRuntimeTypeError;
        Object objCoerceArgs = coerceArgs(obj3, obj4, lists.cdr.apply1(obj5));
        Object objCoerceToComponentOfType = coerceToComponentOfType(obj, obj2);
        if (!(objCoerceToComponentOfType instanceof Component)) {
            return generateRuntimeTypeError(obj3, LList.list1(getDisplayRepresentation(obj)));
        }
        if (isAllCoercible(objCoerceArgs) != Boolean.FALSE) {
            objGenerateRuntimeTypeError = Scheme.apply.apply2(Invoke.invoke, LList.consX(new Object[]{objCoerceToComponentOfType, LList.consX(new Object[]{obj3, Quote.append$V(new Object[]{objCoerceArgs, LList.Empty})})}));
        } else {
            objGenerateRuntimeTypeError = generateRuntimeTypeError(obj3, obj4);
        }
        return sanitizeReturnValue(objCoerceToComponentOfType, obj3, objGenerateRuntimeTypeError);
    }

    public static Object callComponentTypeMethodWithContinuation(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        frame2 frame2Var = new frame2();
        frame2Var.method$Mnname = obj2;
        frame2Var.k = obj5;
        Object objCoerceArgs = coerceArgs(obj2, obj3, lists.cdr.apply1(obj4));
        try {
            frame2Var.component$Mnvalue = coerceToComponentOfType(loc$possible$Mncomponent.get(), obj);
            Continuation continuationWrap = ContinuationUtil.wrap(frame2Var.lambda$Fn4, Lit4);
            if (isAllCoercible(objCoerceArgs) != Boolean.FALSE) {
                try {
                    return Scheme.apply.apply2(Invoke.invoke, LList.consX(new Object[]{frame2Var.component$Mnvalue, LList.consX(new Object[]{frame2Var.method$Mnname, Quote.append$V(new Object[]{objCoerceArgs, LList.consX(new Object[]{continuationWrap, LList.Empty})})})}));
                } catch (PermissionException e) {
                    try {
                        return Invoke.invoke.applyN(new Object[]{Form.getActiveForm(), "dispatchPermissionDeniedEvent", loc$component.get(), frame2Var.method$Mnname, e});
                    } catch (UnboundLocationException e2) {
                        e2.setLine("/tmp/runtime15061256449536606169.scm", 1200, 72);
                        throw e2;
                    }
                }
            }
            return generateRuntimeTypeError(frame2Var.method$Mnname, obj3);
        } catch (UnboundLocationException e3) {
            e3.setLine("/tmp/runtime15061256449536606169.scm", 1192, 56);
            throw e3;
        }
    }

    public class frame2 extends ModuleBody {
        Object component$Mnvalue;
        Object k;
        final ModuleMethod lambda$Fn4;
        Object method$Mnname;

        public frame2() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 4, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/tmp/runtime15061256449536606169.scm:1194");
            this.lambda$Fn4 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 4 ? lambda4(obj) : super.apply1(moduleMethod, obj);
        }

        public Object lambda4(Object obj) {
            return Scheme.applyToArgs.apply2(this.k, runtime.sanitizeReturnValue(this.component$Mnvalue, this.method$Mnname, obj));
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 4) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    public static Object callComponentTypeMethodWithBlockingContinuation(Object obj, Object obj2, Object obj3, Object obj4) {
        frame3 frame3Var = new frame3();
        frame3Var.result = Boolean.FALSE;
        callComponentTypeMethodWithContinuation(obj, obj2, obj3, obj4, frame3Var.lambda$Fn5);
        return frame3Var.result;
    }

    public class frame3 extends ModuleBody {
        final ModuleMethod lambda$Fn5;
        Object result;

        public frame3() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 5, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/tmp/runtime15061256449536606169.scm:1211");
            this.lambda$Fn5 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            if (moduleMethod.selector != 5) {
                return super.apply1(moduleMethod, obj);
            }
            lambda5(obj);
            return Values.empty;
        }

        public void lambda5(Object obj) {
            this.result = obj;
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

    public static Object callYailPrimitive(Object obj, Object obj2, Object obj3, Object obj4) {
        Object objCoerceArgs = coerceArgs(obj4, obj2, obj3);
        if (isAllCoercible(objCoerceArgs) != Boolean.FALSE) {
            return Scheme.apply.apply2(obj, objCoerceArgs);
        }
        return generateRuntimeTypeError(obj4, obj2);
    }

    public static Object sanitizeComponentData(Object obj) {
        if (!strings.isString(obj)) {
            Object objIsYailDictionary = isYailDictionary(obj);
            Boolean bool = Boolean.FALSE;
            if (objIsYailDictionary == bool) {
                if (obj instanceof Map) {
                    try {
                        return javaMap$To$YailDictionary((Map) obj);
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "java-map->yail-dictionary", 0, obj);
                    }
                }
                if (isYailList(obj) == bool) {
                    if (lists.isList(obj)) {
                        return kawaList$To$YailList(obj);
                    }
                    if (obj instanceof Collection) {
                        try {
                            return javaCollection$To$YailList((Collection) obj);
                        } catch (ClassCastException e2) {
                            throw new WrongType(e2, "java-collection->yail-list", 0, obj);
                        }
                    }
                    return sanitizeAtomic(obj);
                }
            }
        }
        return obj;
    }

    public static Object sanitizeReturnValue(Object obj, Object obj2, Object obj3) throws IllegalAccessException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Object objIsEnum = isEnum(obj3);
        Boolean bool = Boolean.FALSE;
        if (objIsEnum != bool) {
            return obj3;
        }
        Object objOptionListFromValue = OptionHelper.optionListFromValue(obj, obj2 == null ? null : obj2.toString(), obj3);
        return isEnum(objOptionListFromValue) != bool ? objOptionListFromValue : sanitizeComponentData(objOptionListFromValue);
    }

    public static Object javaCollection$To$YailList(Collection collection) {
        return kawaList$To$YailList(javaCollection$To$KawaList(collection));
    }

    public static Object javaCollection$To$KawaList(Collection collection) {
        Iterator it = collection.iterator();
        LList lListCons = LList.Empty;
        while (it.hasNext()) {
            lListCons = lists.cons(sanitizeComponentData(it.next()), lListCons);
        }
        return LList.reverseInPlace(lListCons);
    }

    public static Object javaMap$To$YailDictionary(Map map) {
        YailDictionary yailDictionary = new YailDictionary();
        for (Object obj : map.keySet()) {
            yailDictionary.put(obj, sanitizeComponentData(map.get(obj)));
        }
        return yailDictionary;
    }

    public static Object sanitizeAtomic(Object obj) {
        if (obj == null || Values.empty == obj) {
            return null;
        }
        return numbers.isNumber(obj) ? Arithmetic.asNumeric(obj) : obj;
    }

    public static Object signalRuntimeError(Object obj, Object obj2) {
        throw new YailRuntimeError(obj == null ? null : obj.toString(), obj2 != null ? obj2.toString() : null);
    }

    public static Object signalRuntimeFormError(Object obj, Object obj2, Object obj3) {
        return Invoke.invoke.applyN(new Object[]{$Stthis$Mnform$St, "runtimeFormErrorOccurredEvent", obj, obj2, obj3});
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean yailNot(Object obj) {
        return ((obj != Boolean.FALSE ? 1 : 0) + 1) & 1;
    }

    public static Object callWithCoercedArgs(Object obj, Object obj2, Object obj3, Object obj4) {
        Object objCoerceArgs = coerceArgs(obj4, obj2, obj3);
        if (isAllCoercible(objCoerceArgs) != Boolean.FALSE) {
            return Scheme.apply.apply2(obj, objCoerceArgs);
        }
        return generateRuntimeTypeError(obj4, obj2);
    }

    public static Object $PcSetAndCoerceProperty$Ex(Object obj, Object obj2, Object obj3, Object obj4) {
        androidLog(Format.formatToString(0, "coercing for setting property ~A -- value ~A to type ~A", obj2, obj3, obj4));
        Object objCoerceArg = coerceArg(obj3, obj4);
        androidLog(Format.formatToString(0, "coerced property value was: ~A ", objCoerceArg));
        if (isAllCoercible(LList.list1(objCoerceArg)) != Boolean.FALSE) {
            try {
                return Invoke.invoke.apply3(obj, obj2, objCoerceArg);
            } catch (PermissionException e) {
                return Invoke.invoke.applyN(new Object[]{Form.getActiveForm(), "dispatchPermissionDeniedEvent", obj, obj2, e});
            }
        }
        return generateRuntimeTypeError(obj2, LList.list1(obj3));
    }

    public static Object $PcSetSubformLayoutProperty$Ex(Object obj, Object obj2, Object obj3) {
        return Invoke.invoke.apply3(obj, obj2, obj3);
    }

    public static Object generateRuntimeTypeError(Object obj, Object obj2) throws Throwable {
        androidLog(Format.formatToString(0, "arglist is: ~A ", obj2));
        Object objCoerceToString = coerceToString(obj);
        try {
            return signalRuntimeError(strings.stringAppend("The operation ", objCoerceToString, Format.formatToString(0, " cannot accept the argument~P: ", Integer.valueOf(lists.length((LList) obj2))), showArglistNoParens(obj2)), strings.stringAppend("Bad arguments to ", objCoerceToString));
        } catch (ClassCastException e) {
            throw new WrongType(e, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, obj2);
        }
    }

    public static Object showArglistNoParens(Object obj) throws Throwable {
        Object objMake;
        Object objMake2 = LList.Empty;
        while (true) {
            objMake = LList.Empty;
            if (obj == objMake) {
                break;
            }
            try {
                Pair pair = (Pair) obj;
                Object cdr = pair.getCdr();
                objMake2 = Pair.make(getDisplayRepresentation(pair.getCar()), objMake2);
                obj = cdr;
            } catch (ClassCastException e) {
                throw new WrongType(e, "arg0", -2, obj);
            }
        }
        Object objReverseInPlace = LList.reverseInPlace(objMake2);
        while (objReverseInPlace != LList.Empty) {
            try {
                Pair pair2 = (Pair) objReverseInPlace;
                Object cdr2 = pair2.getCdr();
                objMake = Pair.make(strings.stringAppend("[", pair2.getCar(), "]"), objMake);
                objReverseInPlace = cdr2;
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "arg0", -2, objReverseInPlace);
            }
        }
        Object objStringAppend = "";
        for (Object objReverseInPlace2 = LList.reverseInPlace(objMake); !lists.isNull(objReverseInPlace2); objReverseInPlace2 = lists.cdr.apply1(objReverseInPlace2)) {
            objStringAppend = strings.stringAppend(objStringAppend, ", ", lists.car.apply1(objReverseInPlace2));
        }
        return objStringAppend;
    }

    public static Object coerceArgs(Object obj, Object obj2, Object obj3) {
        if (lists.isNull(obj3)) {
            return lists.isNull(obj2) ? obj2 : signalRuntimeError(strings.stringAppend("The procedure ", obj, " expects no arguments, but it was called with the arguments: ", showArglistNoParens(obj2)), strings.stringAppend("Wrong number of arguments for", obj));
        }
        try {
            try {
                if (lists.length((LList) obj2) != lists.length((LList) obj3)) {
                    return signalRuntimeError(strings.stringAppend("The arguments ", showArglistNoParens(obj2), " are the wrong number of arguments for ", getDisplayRepresentation(obj)), strings.stringAppend("Wrong number of arguments for", getDisplayRepresentation(obj)));
                }
                Object objMake = LList.Empty;
                while (true) {
                    LList lList = LList.Empty;
                    if (obj2 == lList || obj3 == lList) {
                        break;
                    }
                    try {
                        Pair pair = (Pair) obj2;
                        try {
                            Pair pair2 = (Pair) obj3;
                            Object cdr = pair.getCdr();
                            Object cdr2 = pair2.getCdr();
                            objMake = Pair.make(coerceArg(pair.getCar(), pair2.getCar()), objMake);
                            obj2 = cdr;
                            obj3 = cdr2;
                        } catch (ClassCastException e) {
                            throw new WrongType(e, "arg1", -2, obj3);
                        }
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "arg0", -2, obj2);
                    }
                }
                return LList.reverseInPlace(objMake);
            } catch (ClassCastException e3) {
                throw new WrongType(e3, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, obj3);
            }
        } catch (ClassCastException e4) {
            throw new WrongType(e4, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, obj2);
        }
    }

    public static Object coerceArg(Object obj, Object obj2) {
        Object objSanitizeAtomic = sanitizeAtomic(obj);
        if (IsEqual.apply(obj2, Lit5)) {
            return coerceToNumber(objSanitizeAtomic);
        }
        if (IsEqual.apply(obj2, Lit6)) {
            return coerceToText(objSanitizeAtomic);
        }
        if (IsEqual.apply(obj2, Lit7)) {
            return coerceToBoolean(objSanitizeAtomic);
        }
        if (IsEqual.apply(obj2, Lit8)) {
            return coerceToYailList(objSanitizeAtomic);
        }
        if (IsEqual.apply(obj2, Lit9)) {
            return coerceToNumberList(objSanitizeAtomic);
        }
        if (IsEqual.apply(obj2, Lit10)) {
            return coerceToInstant(objSanitizeAtomic);
        }
        if (IsEqual.apply(obj2, Lit11)) {
            return coerceToComponent(objSanitizeAtomic);
        }
        if (IsEqual.apply(obj2, Lit12)) {
            return coerceToPair(objSanitizeAtomic);
        }
        if (IsEqual.apply(obj2, Lit13)) {
            return coerceToKey(objSanitizeAtomic);
        }
        if (IsEqual.apply(obj2, Lit14)) {
            return coerceToDictionary(objSanitizeAtomic);
        }
        if (IsEqual.apply(obj2, Lit15)) {
            return objSanitizeAtomic;
        }
        if (isEnumType(obj2) != Boolean.FALSE) {
            return coerceToEnum(objSanitizeAtomic, obj2);
        }
        return coerceToComponentOfType(objSanitizeAtomic, obj2);
    }

    public static Object coerceToNumberList(Object obj) {
        if (isYailList(obj) == Boolean.FALSE) {
            return Lit2;
        }
        Object objYailListContents = yailListContents(obj);
        Object objMake = LList.Empty;
        while (objYailListContents != LList.Empty) {
            try {
                Pair pair = (Pair) objYailListContents;
                Object cdr = pair.getCdr();
                objMake = Pair.make(coerceToNumber(pair.getCar()), objMake);
                objYailListContents = cdr;
            } catch (ClassCastException e) {
                throw new WrongType(e, "arg0", -2, objYailListContents);
            }
        }
        LList lListReverseInPlace = LList.reverseInPlace(objMake);
        if (isAllCoercible(lListReverseInPlace) == Boolean.FALSE) {
            try {
                return loc$non$Mncoercible$Mnvalue.get();
            } catch (UnboundLocationException e2) {
                e2.setLine("/tmp/runtime15061256449536606169.scm", 1500, 9);
                throw e2;
            }
        }
        return Scheme.apply.apply2(make$Mnyail$Mnlist, lListReverseInPlace);
    }

    public static Object isEnumType(Object obj) {
        try {
            return stringContains(((Symbol) obj).toString(), "Enum");
        } catch (ClassCastException e) {
            throw new WrongType(e, "symbol->string", 1, obj);
        }
    }

    public static Object isEnum(Object obj) {
        return obj instanceof OptionList ? Boolean.TRUE : Boolean.FALSE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0044, code lost:
    
        if (r0 != r1) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0046, code lost:
    
        return r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0049, code lost:
    
        r7 = com.google.appinventor.components.runtime.util.TypeUtil.castToEnum(r7, (gnu.mapping.Symbol) r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004d, code lost:
    
        if (r7 != null) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0051, code lost:
    
        return com.google.youngandroid.runtime.Lit2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0052, code lost:
    
        r7 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005b, code lost:
    
        throw new gnu.mapping.WrongType(r7, "com.google.appinventor.components.runtime.util.TypeUtil.castToEnum(java.lang.Object,gnu.mapping.Symbol)", 2, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:?, code lost:
    
        return r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x002f, code lost:
    
        if (r0.apply2(r2, gnu.lists.LList.list2(r7, kawa.lib.misc.string$To$Symbol((java.lang.CharSequence) r4))) != r1) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object coerceToEnum(java.lang.Object r7, java.lang.Object r8) throws java.lang.ClassNotFoundException, java.lang.SecurityException {
        /*
            java.lang.String r0 = "coerce-to-enum"
            androidLog(r0)
            java.lang.Object r0 = isEnum(r7)
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            if (r0 == r1) goto L44
            gnu.kawa.functions.Apply r0 = kawa.standard.Scheme.apply
            gnu.kawa.reflect.InstanceOf r2 = kawa.standard.Scheme.instanceOf
            r3 = 1
            r4 = r8
            gnu.mapping.Symbol r4 = (gnu.mapping.Symbol) r4     // Catch: java.lang.ClassCastException -> L3b
            java.lang.String r4 = kawa.lib.misc.symbol$To$String(r4)
            java.lang.String r5 = "Enum"
            java.lang.String r6 = ""
            java.lang.Object r4 = stringReplaceAll(r4, r5, r6)
            java.lang.CharSequence r4 = (java.lang.CharSequence) r4     // Catch: java.lang.ClassCastException -> L32
            gnu.mapping.SimpleSymbol r3 = kawa.lib.misc.string$To$Symbol(r4)
            gnu.lists.Pair r3 = gnu.lists.LList.list2(r7, r3)
            java.lang.Object r0 = r0.apply2(r2, r3)
            if (r0 == r1) goto L47
            goto L46
        L32:
            r7 = move-exception
            gnu.mapping.WrongType r8 = new gnu.mapping.WrongType
            java.lang.String r0 = "string->symbol"
            r8.<init>(r7, r0, r3, r4)
            throw r8
        L3b:
            r7 = move-exception
            gnu.mapping.WrongType r0 = new gnu.mapping.WrongType
            java.lang.String r1 = "symbol->string"
            r0.<init>(r7, r1, r3, r8)
            throw r0
        L44:
            if (r0 == r1) goto L47
        L46:
            return r7
        L47:
            gnu.mapping.Symbol r8 = (gnu.mapping.Symbol) r8     // Catch: java.lang.ClassCastException -> L52
            com.google.appinventor.components.common.OptionList r7 = com.google.appinventor.components.runtime.util.TypeUtil.castToEnum(r7, r8)
            if (r7 != 0) goto L51
            gnu.lists.PairWithPosition r7 = com.google.youngandroid.runtime.Lit2
        L51:
            return r7
        L52:
            r7 = move-exception
            gnu.mapping.WrongType r0 = new gnu.mapping.WrongType
            java.lang.String r1 = "com.google.appinventor.components.runtime.util.TypeUtil.castToEnum(java.lang.Object,gnu.mapping.Symbol)"
            r2 = 2
            r0.<init>(r7, r1, r2, r8)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.youngandroid.runtime.coerceToEnum(java.lang.Object, java.lang.Object):java.lang.Object");
    }

    public static Object coerceToText(Object obj) {
        if (obj == null) {
            return Lit2;
        }
        return coerceToString(obj);
    }

    public static Object coerceToInstant(Object obj) throws Throwable {
        if (obj instanceof Calendar) {
            return obj;
        }
        Object objCoerceToNumber = coerceToNumber(obj);
        if (!numbers.isNumber(objCoerceToNumber)) {
            return Lit2;
        }
        try {
            return Clock.MakeInstantFromMillis(((Number) objCoerceToNumber).longValue());
        } catch (ClassCastException e) {
            throw new WrongType(e, "com.google.appinventor.components.runtime.Clock.MakeInstantFromMillis(long)", 1, objCoerceToNumber);
        }
    }

    public static Object coerceToComponent(Object obj) {
        if (!strings.isString(obj)) {
            return obj instanceof Component ? obj : misc.isSymbol(obj) ? lookupComponent(obj) : Lit2;
        }
        if (strings.isString$Eq(obj, "")) {
            return null;
        }
        try {
            return lookupComponent(misc.string$To$Symbol((CharSequence) obj));
        } catch (ClassCastException e) {
            throw new WrongType(e, "string->symbol", 1, obj);
        }
    }

    public static Object coerceToComponentOfType(Object obj, Object obj2) {
        Object objCoerceToComponent = coerceToComponent(obj);
        PairWithPosition pairWithPosition = Lit2;
        return (objCoerceToComponent == pairWithPosition || Scheme.apply.apply2(Scheme.instanceOf, LList.list2(obj, type$To$Class(obj2))) == Boolean.FALSE) ? pairWithPosition : objCoerceToComponent;
    }

    public static Object type$To$Class(Object obj) {
        return obj == Lit16 ? Lit17 : obj;
    }

    public static Object coerceToNumber(Object obj) throws Throwable {
        if (numbers.isNumber(obj)) {
            return obj;
        }
        if (strings.isString(obj)) {
            Object objPaddedString$To$Number = paddedString$To$Number(obj);
            return objPaddedString$To$Number != Boolean.FALSE ? objPaddedString$To$Number : Lit2;
        }
        if (isEnum(obj) == Boolean.FALSE) {
            return Lit2;
        }
        Object objApply1 = Scheme.applyToArgs.apply1(GetNamedPart.getNamedPart.apply2(obj, Lit18));
        return numbers.isNumber(objApply1) ? objApply1 : Lit2;
    }

    public static Object coerceToKey(Object obj) {
        if (numbers.isNumber(obj)) {
            return coerceToNumber(obj);
        }
        if (strings.isString(obj)) {
            return coerceToString(obj);
        }
        return (isEnum(obj) == Boolean.FALSE && !(obj instanceof Component)) ? Lit2 : obj;
    }

    public static Object coerceToString(Object obj) throws Throwable {
        frame4 frame4Var = new frame4();
        frame4Var.arg = obj;
        if (obj == null) {
            return "*nothing*";
        }
        if (strings.isString(obj)) {
            return frame4Var.arg;
        }
        if (numbers.isNumber(frame4Var.arg)) {
            return appinventorNumber$To$String(frame4Var.arg);
        }
        if (misc.isBoolean(frame4Var.arg)) {
            return boolean$To$String(frame4Var.arg);
        }
        Object objIsYailList = isYailList(frame4Var.arg);
        Boolean bool = Boolean.FALSE;
        if (objIsYailList != bool) {
            return coerceToString(yailList$To$KawaList(frame4Var.arg));
        }
        if (lists.isList(frame4Var.arg)) {
            if (Form.getActiveForm().ShowListsAsJson()) {
                Object obj2 = frame4Var.arg;
                Object objMake = LList.Empty;
                while (obj2 != LList.Empty) {
                    try {
                        Pair pair = (Pair) obj2;
                        Object cdr = pair.getCdr();
                        objMake = Pair.make(((Procedure) get$Mnjson$Mndisplay$Mnrepresentation).apply1(pair.getCar()), objMake);
                        obj2 = cdr;
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "arg0", -2, obj2);
                    }
                }
                return strings.stringAppend("[", joinStrings(LList.reverseInPlace(objMake), ", "), "]");
            }
            Object obj3 = frame4Var.arg;
            Object objMake2 = LList.Empty;
            while (obj3 != LList.Empty) {
                try {
                    Pair pair2 = (Pair) obj3;
                    Object cdr2 = pair2.getCdr();
                    objMake2 = Pair.make(coerceToString(pair2.getCar()), objMake2);
                    obj3 = cdr2;
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "arg0", -2, obj3);
                }
            }
            frame4Var.pieces = LList.reverseInPlace(objMake2);
            return ports.callWithOutputString(frame4Var.lambda$Fn6);
        }
        if (isEnum(frame4Var.arg) != bool) {
            Object objApply1 = Scheme.applyToArgs.apply1(GetNamedPart.getNamedPart.apply2(frame4Var.arg, Lit18));
            return strings.isString(objApply1) ? objApply1 : Lit2;
        }
        return ports.callWithOutputString(frame4Var.lambda$Fn7);
    }

    public class frame4 extends ModuleBody {
        Object arg;
        final ModuleMethod lambda$Fn6;
        final ModuleMethod lambda$Fn7;
        LList pieces;

        public frame4() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 6, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/tmp/runtime15061256449536606169.scm:1610");
            this.lambda$Fn6 = moduleMethod;
            ModuleMethod moduleMethod2 = new ModuleMethod(this, 7, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod2.setProperty("source-location", "/tmp/runtime15061256449536606169.scm:1616");
            this.lambda$Fn7 = moduleMethod2;
        }

        public void lambda6(Object obj) {
            ports.display(this.pieces, obj);
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

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            int i = moduleMethod.selector;
            if (i == 6) {
                lambda6(obj);
                return Values.empty;
            }
            if (i != 7) {
                return super.apply1(moduleMethod, obj);
            }
            lambda7(obj);
            return Values.empty;
        }

        public void lambda7(Object obj) {
            ports.display(this.arg, obj);
        }
    }

    public static Object getDisplayRepresentation(Object obj) {
        if (Form.getActiveForm().ShowListsAsJson()) {
            return ((Procedure) get$Mnjson$Mndisplay$Mnrepresentation).apply1(obj);
        }
        return ((Procedure) get$Mnoriginal$Mndisplay$Mnrepresentation).apply1(obj);
    }

    public static Object lambda8(Object obj) {
        frame5 frame5Var = new frame5();
        frame5Var.arg = obj;
        NumberCompare numberCompare = Scheme.numEqu;
        Object objApply2 = numberCompare.apply2(obj, Lit19);
        Boolean bool = Boolean.FALSE;
        if (objApply2 != bool) {
            return "+infinity";
        }
        if (numberCompare.apply2(frame5Var.arg, Lit20) != bool) {
            return "-infinity";
        }
        Object obj2 = frame5Var.arg;
        if (obj2 == null) {
            return "*nothing*";
        }
        if (misc.isSymbol(obj2)) {
            Object obj3 = frame5Var.arg;
            try {
                return ((Symbol) obj3).toString();
            } catch (ClassCastException e) {
                throw new WrongType(e, "symbol->string", 1, obj3);
            }
        }
        if (strings.isString(frame5Var.arg)) {
            if (strings.isString$Eq(frame5Var.arg, "")) {
                return "*empty-string*";
            }
            return frame5Var.arg;
        }
        if (numbers.isNumber(frame5Var.arg)) {
            return appinventorNumber$To$String(frame5Var.arg);
        }
        if (misc.isBoolean(frame5Var.arg)) {
            return boolean$To$String(frame5Var.arg);
        }
        if (isYailList(frame5Var.arg) != bool) {
            return getDisplayRepresentation(yailList$To$KawaList(frame5Var.arg));
        }
        if (lists.isList(frame5Var.arg)) {
            Object obj4 = frame5Var.arg;
            Object objMake = LList.Empty;
            while (obj4 != LList.Empty) {
                try {
                    Pair pair = (Pair) obj4;
                    Object cdr = pair.getCdr();
                    objMake = Pair.make(getDisplayRepresentation(pair.getCar()), objMake);
                    obj4 = cdr;
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "arg0", -2, obj4);
                }
            }
            frame5Var.pieces = LList.reverseInPlace(objMake);
            return ports.callWithOutputString(frame5Var.lambda$Fn9);
        }
        return ports.callWithOutputString(frame5Var.lambda$Fn10);
    }

    public class frame5 extends ModuleBody {
        Object arg;
        final ModuleMethod lambda$Fn10;
        final ModuleMethod lambda$Fn9;
        LList pieces;

        public frame5() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 8, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/tmp/runtime15061256449536606169.scm:1650");
            this.lambda$Fn9 = moduleMethod;
            ModuleMethod moduleMethod2 = new ModuleMethod(this, 9, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod2.setProperty("source-location", "/tmp/runtime15061256449536606169.scm:1651");
            this.lambda$Fn10 = moduleMethod2;
        }

        public void lambda9(Object obj) {
            ports.display(this.pieces, obj);
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            int i = moduleMethod.selector;
            if (i == 8) {
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            }
            if (i != 9) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            int i = moduleMethod.selector;
            if (i == 8) {
                lambda9(obj);
                return Values.empty;
            }
            if (i != 9) {
                return super.apply1(moduleMethod, obj);
            }
            lambda10(obj);
            return Values.empty;
        }

        public void lambda10(Object obj) {
            ports.display(this.arg, obj);
        }
    }

    public static Object lambda11(Object obj) {
        frame6 frame6Var = new frame6();
        frame6Var.arg = obj;
        NumberCompare numberCompare = Scheme.numEqu;
        Object objApply2 = numberCompare.apply2(obj, Lit21);
        Boolean bool = Boolean.FALSE;
        if (objApply2 != bool) {
            return "+infinity";
        }
        if (numberCompare.apply2(frame6Var.arg, Lit22) != bool) {
            return "-infinity";
        }
        Object obj2 = frame6Var.arg;
        if (obj2 == null) {
            return "*nothing*";
        }
        if (misc.isSymbol(obj2)) {
            Object obj3 = frame6Var.arg;
            try {
                return ((Symbol) obj3).toString();
            } catch (ClassCastException e) {
                throw new WrongType(e, "symbol->string", 1, obj3);
            }
        }
        if (strings.isString(frame6Var.arg)) {
            return strings.stringAppend("\"", frame6Var.arg, "\"");
        }
        if (numbers.isNumber(frame6Var.arg)) {
            return appinventorNumber$To$String(frame6Var.arg);
        }
        if (misc.isBoolean(frame6Var.arg)) {
            return boolean$To$String(frame6Var.arg);
        }
        if (isYailList(frame6Var.arg) != bool) {
            return ((Procedure) get$Mnjson$Mndisplay$Mnrepresentation).apply1(yailList$To$KawaList(frame6Var.arg));
        }
        if (lists.isList(frame6Var.arg)) {
            Object obj4 = frame6Var.arg;
            Object objMake = LList.Empty;
            while (obj4 != LList.Empty) {
                try {
                    Pair pair = (Pair) obj4;
                    Object cdr = pair.getCdr();
                    objMake = Pair.make(((Procedure) get$Mnjson$Mndisplay$Mnrepresentation).apply1(pair.getCar()), objMake);
                    obj4 = cdr;
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "arg0", -2, obj4);
                }
            }
            return strings.stringAppend("[", joinStrings(LList.reverseInPlace(objMake), ", "), "]");
        }
        return ports.callWithOutputString(frame6Var.lambda$Fn12);
    }

    public class frame6 extends ModuleBody {
        Object arg;
        final ModuleMethod lambda$Fn12;

        public frame6() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 10, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/tmp/runtime15061256449536606169.scm:1671");
            this.lambda$Fn12 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            if (moduleMethod.selector != 10) {
                return super.apply1(moduleMethod, obj);
            }
            lambda12(obj);
            return Values.empty;
        }

        public void lambda12(Object obj) {
            ports.display(this.arg, obj);
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
    }

    public static Object joinStrings(Object obj, Object obj2) {
        try {
            return JavaStringUtils.joinStrings((List) obj, obj2 == null ? null : obj2.toString());
        } catch (ClassCastException e) {
            throw new WrongType(e, "com.google.appinventor.components.runtime.util.JavaStringUtils.joinStrings(java.util.List,java.lang.String)", 1, obj);
        }
    }

    public static Object stringReplace(Object obj, Object obj2) {
        return lists.isNull(obj2) ? obj : strings.isString$Eq(obj, lists.caar.apply1(obj2)) ? lists.cadar.apply1(obj2) : stringReplace(obj, lists.cdr.apply1(obj2));
    }

    public static Object coerceToYailList(Object obj) {
        Object objIsYailList = isYailList(obj);
        Boolean bool = Boolean.FALSE;
        return objIsYailList != bool ? obj : isYailDictionary(obj) != bool ? yailDictionaryDictToAlist(obj) : Lit2;
    }

    public static Object coerceToPair(Object obj) {
        return coerceToYailList(obj);
    }

    public static Object coerceToDictionary(Object obj) {
        Object objIsYailDictionary = isYailDictionary(obj);
        Boolean bool = Boolean.FALSE;
        if (objIsYailDictionary != bool) {
            return obj;
        }
        if (isYailList(obj) != bool) {
            return yailDictionaryAlistToDict(obj);
        }
        try {
            return Scheme.applyToArgs.apply1(GetNamedPart.getNamedPart.apply2(obj, Lit23));
        } catch (Exception unused) {
            return Scheme.applyToArgs.apply1(Lit2);
        }
    }

    public static Object coerceToBoolean(Object obj) {
        return misc.isBoolean(obj) ? obj : Lit2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean isIsCoercible(Object obj) {
        return ((obj == Lit2 ? 1 : 0) + 1) & 1;
    }

    public static Object isAllCoercible(Object obj) {
        if (lists.isNull(obj)) {
            return Boolean.TRUE;
        }
        boolean zIsIsCoercible = isIsCoercible(lists.car.apply1(obj));
        if (zIsIsCoercible) {
            return isAllCoercible(lists.cdr.apply1(obj));
        }
        return zIsIsCoercible ? Boolean.TRUE : Boolean.FALSE;
    }

    public static String boolean$To$String(Object obj) {
        return obj != Boolean.FALSE ? "true" : "false";
    }

    public static Object paddedString$To$Number(Object obj) {
        return numbers.string$To$Number(obj.toString().trim());
    }

    public static String $StFormatInexact$St(Object obj) {
        try {
            return YailNumberToString.format(((Number) obj).doubleValue());
        } catch (ClassCastException e) {
            throw new WrongType(e, "com.google.appinventor.components.runtime.util.YailNumberToString.format(double)", 1, obj);
        }
    }

    public class frame7 extends ModuleBody {
        final ModuleMethod lambda$Fn13;
        final ModuleMethod lambda$Fn14;
        Object n;

        public frame7() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 11, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/tmp/runtime15061256449536606169.scm:1796");
            this.lambda$Fn13 = moduleMethod;
            ModuleMethod moduleMethod2 = new ModuleMethod(this, 12, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod2.setProperty("source-location", "/tmp/runtime15061256449536606169.scm:1804");
            this.lambda$Fn14 = moduleMethod2;
        }

        public void lambda13(Object obj) {
            ports.display(this.n, obj);
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            int i = moduleMethod.selector;
            if (i == 11) {
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            }
            if (i != 12) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            int i = moduleMethod.selector;
            if (i == 11) {
                lambda13(obj);
                return Values.empty;
            }
            if (i != 12) {
                return super.apply1(moduleMethod, obj);
            }
            lambda14(obj);
            return Values.empty;
        }

        public void lambda14(Object obj) {
            Object obj2 = this.n;
            try {
                ports.display(numbers.exact((Number) obj2), obj);
            } catch (ClassCastException e) {
                throw new WrongType(e, "exact", 1, obj2);
            }
        }
    }

    public static Object appinventorNumber$To$String(Object obj) {
        frame7 frame7Var = new frame7();
        frame7Var.n = obj;
        if (!numbers.isReal(obj)) {
            return ports.callWithOutputString(frame7Var.lambda$Fn13);
        }
        if (numbers.isInteger(frame7Var.n)) {
            return ports.callWithOutputString(frame7Var.lambda$Fn14);
        }
        if (numbers.isExact(frame7Var.n)) {
            Object obj2 = frame7Var.n;
            try {
                return appinventorNumber$To$String(Arithmetic.toInexact((Number) obj2));
            } catch (ClassCastException e) {
                throw new WrongType(e, "exact->inexact", 1, obj2);
            }
        }
        return $StFormatInexact$St(frame7Var.n);
    }

    public static Object isYailEqual(Object obj, Object obj2) {
        boolean zIsNull = lists.isNull(obj);
        if (!zIsNull ? !zIsNull : !lists.isNull(obj2)) {
            return Boolean.TRUE;
        }
        boolean zIsNull2 = lists.isNull(obj);
        if (!zIsNull2 ? !lists.isNull(obj2) : !zIsNull2) {
            return Boolean.FALSE;
        }
        int i = ((lists.isPair(obj) ? 1 : 0) + 1) & 1;
        if (i == 0 ? i != 0 : !lists.isPair(obj2)) {
            return isYailAtomicEqual(obj, obj2);
        }
        int i2 = ((lists.isPair(obj) ? 1 : 0) + 1) & 1;
        if (i2 == 0 ? !lists.isPair(obj2) : i2 != 0) {
            return Boolean.FALSE;
        }
        GenericProc genericProc = lists.car;
        Object objIsYailEqual = isYailEqual(genericProc.apply1(obj), genericProc.apply1(obj2));
        if (objIsYailEqual == Boolean.FALSE) {
            return objIsYailEqual;
        }
        GenericProc genericProc2 = lists.cdr;
        return isYailEqual(genericProc2.apply1(obj), genericProc2.apply1(obj2));
    }

    public static Object isYailAtomicEqual(Object obj, Object obj2) throws Throwable {
        if (IsEqual.apply(obj, obj2)) {
            return Boolean.TRUE;
        }
        Object objIsEnum = isEnum(obj);
        Boolean bool = Boolean.FALSE;
        if (objIsEnum == bool ? objIsEnum != bool : isEnum(obj2) == bool) {
            return IsEqual.apply(Scheme.applyToArgs.apply1(GetNamedPart.getNamedPart.apply2(obj, Lit18)), obj2) ? Boolean.TRUE : bool;
        }
        int i = ((isEnum(obj) != bool ? 1 : 0) + 1) & 1;
        if (i == 0 ? i != 0 : isEnum(obj2) != bool) {
            return IsEqual.apply(obj, Scheme.applyToArgs.apply1(GetNamedPart.getNamedPart.apply2(obj2, Lit18))) ? Boolean.TRUE : bool;
        }
        Object objAsNumber = asNumber(obj);
        if (objAsNumber == bool) {
            return objAsNumber;
        }
        Object objAsNumber2 = asNumber(obj2);
        return objAsNumber2 != bool ? Scheme.numEqu.apply2(objAsNumber, objAsNumber2) : objAsNumber2;
    }

    public static Object asNumber(Object obj) throws Throwable {
        Object objCoerceToNumber = coerceToNumber(obj);
        return objCoerceToNumber == Lit2 ? Boolean.FALSE : objCoerceToNumber;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean isYailNotEqual(Object obj, Object obj2) {
        return ((isYailEqual(obj, obj2) != Boolean.FALSE ? 1 : 0) + 1) & 1;
    }

    public static Object processAndDelayed$V(Object[] objArr) throws Throwable {
        for (Object objMakeList = LList.makeList(objArr, 0); !lists.isNull(objMakeList); objMakeList = lists.cdr.apply1(objMakeList)) {
            Object objApply1 = Scheme.applyToArgs.apply1(lists.car.apply1(objMakeList));
            Object objCoerceToBoolean = coerceToBoolean(objApply1);
            if (!isIsCoercible(objCoerceToBoolean)) {
                return signalRuntimeError(strings.stringAppend("The AND operation cannot accept the argument ", getDisplayRepresentation(objApply1), " because it is neither true nor false"), strings.stringAppend("Bad argument to AND" instanceof Object[] ? (Object[]) "Bad argument to AND" : new Object[]{"Bad argument to AND"}));
            }
            if (objCoerceToBoolean == Boolean.FALSE) {
                return objCoerceToBoolean;
            }
        }
        return Boolean.TRUE;
    }

    public static Object processOrDelayed$V(Object[] objArr) throws Throwable {
        for (Object objMakeList = LList.makeList(objArr, 0); !lists.isNull(objMakeList); objMakeList = lists.cdr.apply1(objMakeList)) {
            Object objApply1 = Scheme.applyToArgs.apply1(lists.car.apply1(objMakeList));
            Object objCoerceToBoolean = coerceToBoolean(objApply1);
            if (!isIsCoercible(objCoerceToBoolean)) {
                return signalRuntimeError(strings.stringAppend("The OR operation cannot accept the argument ", getDisplayRepresentation(objApply1), " because it is neither true nor false"), strings.stringAppend("Bad argument to OR" instanceof Object[] ? (Object[]) "Bad argument to OR" : new Object[]{"Bad argument to OR"}));
            }
            if (objCoerceToBoolean != Boolean.FALSE) {
                return objCoerceToBoolean;
            }
        }
        return Boolean.FALSE;
    }

    public static Number yailFloor(Object obj) {
        try {
            return Arithmetic.toExact(numbers.floor(LangObjType.coerceRealNum(obj)));
        } catch (ClassCastException e) {
            throw new WrongType(e, "floor", 1, obj);
        }
    }

    public static Number yailCeiling(Object obj) {
        try {
            return Arithmetic.toExact(numbers.ceiling(LangObjType.coerceRealNum(obj)));
        } catch (ClassCastException e) {
            throw new WrongType(e, "ceiling", 1, obj);
        }
    }

    public static Number yailRound(Object obj) {
        try {
            return Arithmetic.toExact(numbers.round(LangObjType.coerceRealNum(obj)));
        } catch (ClassCastException e) {
            throw new WrongType(e, "round", 1, obj);
        }
    }

    public static Object randomSetSeed(Object obj) {
        if (numbers.isNumber(obj)) {
            try {
                $Strandom$Mnnumber$Mngenerator$St.setSeed(((Number) obj).longValue());
                return Values.empty;
            } catch (ClassCastException e) {
                throw new WrongType(e, "java.util.Random.setSeed(long)", 2, obj);
            }
        }
        if (strings.isString(obj)) {
            return randomSetSeed(paddedString$To$Number(obj));
        }
        if (lists.isList(obj)) {
            return randomSetSeed(lists.car.apply1(obj));
        }
        if (Boolean.TRUE == obj) {
            return randomSetSeed(Lit24);
        }
        if (Boolean.FALSE == obj) {
            return randomSetSeed(Lit25);
        }
        return randomSetSeed(Lit25);
    }

    public static double randomFraction() {
        return $Strandom$Mnnumber$Mngenerator$St.nextDouble();
    }

    public static Object randomInteger(Object obj, Object obj2) throws Throwable {
        try {
            RealNum realNumCeiling = numbers.ceiling(LangObjType.coerceRealNum(obj));
            try {
                RealNum realNumFloor = numbers.floor(LangObjType.coerceRealNum(obj2));
                while (Scheme.numGrt.apply2(realNumCeiling, realNumFloor) != Boolean.FALSE) {
                    RealNum realNum = realNumFloor;
                    realNumFloor = realNumCeiling;
                    realNumCeiling = realNum;
                }
                Object objApply1 = ((Procedure) clip$Mnto$Mnjava$Mnint$Mnrange).apply1(realNumCeiling);
                Object objApply12 = ((Procedure) clip$Mnto$Mnjava$Mnint$Mnrange).apply1(realNumFloor);
                AddOp addOp = AddOp.$Pl;
                Random random = $Strandom$Mnnumber$Mngenerator$St;
                Object objApply2 = addOp.apply2(Lit24, AddOp.$Mn.apply2(objApply12, objApply1));
                try {
                    Object objApply22 = addOp.apply2(Integer.valueOf(random.nextInt(((Number) objApply2).intValue())), objApply1);
                    try {
                        return Arithmetic.toExact((Number) objApply22);
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "inexact->exact", 1, objApply22);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "java.util.Random.nextInt(int)", 2, objApply2);
                }
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "floor", 1, obj2);
            }
        } catch (ClassCastException e4) {
            throw new WrongType(e4, "ceiling", 1, obj);
        }
    }

    public static Object lambda15(Object obj) {
        return numbers.max(lowest, numbers.min(obj, highest));
    }

    public static Object yailDivide(Object obj, Object obj2) throws Throwable {
        NumberCompare numberCompare = Scheme.numEqu;
        IntNum intNum = Lit25;
        Object objApply2 = numberCompare.apply2(obj2, intNum);
        try {
            boolean zBooleanValue = ((Boolean) objApply2).booleanValue();
            if (!zBooleanValue ? zBooleanValue : numberCompare.apply2(obj, intNum) != Boolean.FALSE) {
                signalRuntimeFormError("Division", ERROR_DIVISION_BY_ZERO, obj);
                return obj;
            }
            if (numberCompare.apply2(obj2, intNum) != Boolean.FALSE) {
                signalRuntimeFormError("Division", ERROR_DIVISION_BY_ZERO, obj);
                Object objApply22 = DivideOp.$Sl.apply2(obj, obj2);
                try {
                    return Arithmetic.toInexact((Number) objApply22);
                } catch (ClassCastException e) {
                    throw new WrongType(e, "exact->inexact", 1, objApply22);
                }
            }
            Object objApply23 = DivideOp.$Sl.apply2(obj, obj2);
            try {
                return Arithmetic.toInexact((Number) objApply23);
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "exact->inexact", 1, objApply23);
            }
        } catch (ClassCastException e3) {
            throw new WrongType(e3, "x", -2, objApply2);
        }
    }

    public static Object degrees$To$RadiansInternal(Object obj) {
        return DivideOp.$Sl.apply2(MultiplyOp.$St.apply2(obj, Lit28), Lit29);
    }

    public static Object radians$To$DegreesInternal(Object obj) {
        return DivideOp.$Sl.apply2(MultiplyOp.$St.apply2(obj, Lit29), Lit28);
    }

    public static Object degrees$To$Radians(Object obj) throws Throwable {
        Object objApply2 = DivideOp.modulo.apply2(degrees$To$RadiansInternal(obj), Lit30);
        return Scheme.numGEq.apply2(objApply2, Lit28) != Boolean.FALSE ? AddOp.$Mn.apply2(objApply2, Lit31) : objApply2;
    }

    public static Object radians$To$Degrees(Object obj) {
        return DivideOp.modulo.apply2(radians$To$DegreesInternal(obj), Lit32);
    }

    public static Object sinDegrees(Object obj) throws Throwable {
        NumberCompare numberCompare = Scheme.numEqu;
        DivideOp divideOp = DivideOp.modulo;
        IntNum intNum = Lit33;
        Object objApply2 = divideOp.apply2(obj, intNum);
        IntNum intNum2 = Lit25;
        Object objApply22 = numberCompare.apply2(objApply2, intNum2);
        Boolean bool = Boolean.FALSE;
        if (objApply22 != bool) {
            DivideOp divideOp2 = DivideOp.$Sl;
            Object objApply23 = divideOp2.apply2(obj, intNum);
            IntNum intNum3 = Lit26;
            return numberCompare.apply2(divideOp.apply2(objApply23, intNum3), intNum2) != bool ? intNum2 : numberCompare.apply2(divideOp.apply2(divideOp2.apply2(AddOp.$Mn.apply2(obj, intNum), Lit29), intNum3), intNum2) != bool ? Lit24 : Lit34;
        }
        Object objDegrees$To$RadiansInternal = degrees$To$RadiansInternal(obj);
        try {
            return Double.valueOf(numbers.sin(((Number) objDegrees$To$RadiansInternal).doubleValue()));
        } catch (ClassCastException e) {
            throw new WrongType(e, "sin", 1, objDegrees$To$RadiansInternal);
        }
    }

    public static Object cosDegrees(Object obj) throws Throwable {
        NumberCompare numberCompare = Scheme.numEqu;
        DivideOp divideOp = DivideOp.modulo;
        IntNum intNum = Lit33;
        Object objApply2 = divideOp.apply2(obj, intNum);
        IntNum intNum2 = Lit25;
        Object objApply22 = numberCompare.apply2(objApply2, intNum2);
        Boolean bool = Boolean.FALSE;
        if (objApply22 != bool) {
            DivideOp divideOp2 = DivideOp.$Sl;
            Object objApply23 = divideOp2.apply2(obj, intNum);
            IntNum intNum3 = Lit26;
            Object objApply24 = divideOp.apply2(objApply23, intNum3);
            IntNum intNum4 = Lit24;
            return numberCompare.apply2(objApply24, intNum4) != bool ? intNum2 : numberCompare.apply2(divideOp.apply2(divideOp2.apply2(obj, Lit29), intNum3), intNum4) != bool ? Lit34 : intNum4;
        }
        Object objDegrees$To$RadiansInternal = degrees$To$RadiansInternal(obj);
        try {
            return Double.valueOf(numbers.cos(((Number) objDegrees$To$RadiansInternal).doubleValue()));
        } catch (ClassCastException e) {
            throw new WrongType(e, "cos", 1, objDegrees$To$RadiansInternal);
        }
    }

    public static Object tanDegrees(Object obj) throws Throwable {
        NumberCompare numberCompare = Scheme.numEqu;
        DivideOp divideOp = DivideOp.modulo;
        Object objApply2 = divideOp.apply2(obj, Lit29);
        IntNum intNum = Lit25;
        Object objApply22 = numberCompare.apply2(objApply2, intNum);
        Boolean bool = Boolean.FALSE;
        if (objApply22 != bool) {
            return intNum;
        }
        AddOp addOp = AddOp.$Mn;
        IntNum intNum2 = Lit35;
        Object objApply23 = addOp.apply2(obj, intNum2);
        IntNum intNum3 = Lit33;
        if (numberCompare.apply2(divideOp.apply2(objApply23, intNum3), intNum) != bool) {
            return numberCompare.apply2(divideOp.apply2(DivideOp.$Sl.apply2(addOp.apply2(obj, intNum2), intNum3), Lit26), intNum) != bool ? Lit24 : Lit34;
        }
        Object objDegrees$To$RadiansInternal = degrees$To$RadiansInternal(obj);
        try {
            return Double.valueOf(numbers.tan(((Number) objDegrees$To$RadiansInternal).doubleValue()));
        } catch (ClassCastException e) {
            throw new WrongType(e, "tan", 1, objDegrees$To$RadiansInternal);
        }
    }

    public static Object asinDegrees(Object obj) {
        try {
            return radians$To$DegreesInternal(Double.valueOf(numbers.asin(((Number) obj).doubleValue())));
        } catch (ClassCastException e) {
            throw new WrongType(e, "asin", 1, obj);
        }
    }

    public static Object acosDegrees(Object obj) {
        try {
            return radians$To$DegreesInternal(Double.valueOf(numbers.acos(((Number) obj).doubleValue())));
        } catch (ClassCastException e) {
            throw new WrongType(e, "acos", 1, obj);
        }
    }

    public static Object atanDegrees(Object obj) {
        return radians$To$DegreesInternal(numbers.atan.apply1(obj));
    }

    public static Object atan2Degrees(Object obj, Object obj2) {
        return radians$To$DegreesInternal(numbers.atan.apply2(obj, obj2));
    }

    public static String stringToUpperCase(Object obj) {
        return obj.toString().toUpperCase();
    }

    public static String stringToLowerCase(Object obj) {
        return obj.toString().toLowerCase();
    }

    public static LList unicodeString$To$List(CharSequence charSequence) {
        LList pair = LList.Empty;
        int iStringLength = strings.stringLength(charSequence);
        while (true) {
            int i = iStringLength - 1;
            if (i < 0) {
                return pair;
            }
            boolean z = i >= 1;
            if (z) {
                char cStringRef = strings.stringRef(charSequence, i);
                char cStringRef2 = strings.stringRef(charSequence, iStringLength - 2);
                boolean zIsChar$Gr$Eq = characters.isChar$Gr$Eq(Char.make(cStringRef), Lit36);
                if (zIsChar$Gr$Eq) {
                    boolean zIsChar$Ls$Eq = characters.isChar$Ls$Eq(Char.make(cStringRef), Lit37);
                    if (zIsChar$Ls$Eq) {
                        boolean zIsChar$Gr$Eq2 = characters.isChar$Gr$Eq(Char.make(cStringRef2), Lit38);
                        if (zIsChar$Gr$Eq2) {
                            if (characters.isChar$Ls$Eq(Char.make(cStringRef2), Lit39)) {
                                Pair pair2 = new Pair(Char.make(strings.stringRef(charSequence, i)), new Pair(Char.make(strings.stringRef(charSequence, iStringLength - 2)), pair));
                                iStringLength -= 2;
                                pair = pair2;
                            } else {
                                pair = new Pair(Char.make(strings.stringRef(charSequence, i)), pair);
                                iStringLength = i;
                            }
                        } else if (zIsChar$Gr$Eq2) {
                            Pair pair22 = new Pair(Char.make(strings.stringRef(charSequence, i)), new Pair(Char.make(strings.stringRef(charSequence, iStringLength - 2)), pair));
                            iStringLength -= 2;
                            pair = pair22;
                        } else {
                            pair = new Pair(Char.make(strings.stringRef(charSequence, i)), pair);
                            iStringLength = i;
                        }
                    } else if (zIsChar$Ls$Eq) {
                        Pair pair222 = new Pair(Char.make(strings.stringRef(charSequence, i)), new Pair(Char.make(strings.stringRef(charSequence, iStringLength - 2)), pair));
                        iStringLength -= 2;
                        pair = pair222;
                    } else {
                        pair = new Pair(Char.make(strings.stringRef(charSequence, i)), pair);
                        iStringLength = i;
                    }
                } else if (zIsChar$Gr$Eq) {
                    Pair pair2222 = new Pair(Char.make(strings.stringRef(charSequence, i)), new Pair(Char.make(strings.stringRef(charSequence, iStringLength - 2)), pair));
                    iStringLength -= 2;
                    pair = pair2222;
                } else {
                    pair = new Pair(Char.make(strings.stringRef(charSequence, i)), pair);
                    iStringLength = i;
                }
            } else if (z) {
                Pair pair22222 = new Pair(Char.make(strings.stringRef(charSequence, i)), new Pair(Char.make(strings.stringRef(charSequence, iStringLength - 2)), pair));
                iStringLength -= 2;
                pair = pair22222;
            } else {
                pair = new Pair(Char.make(strings.stringRef(charSequence, i)), pair);
                iStringLength = i;
            }
        }
    }

    public static CharSequence stringReverse(Object obj) {
        try {
            return strings.list$To$String(lists.reverse(unicodeString$To$List((CharSequence) obj)));
        } catch (ClassCastException e) {
            throw new WrongType(e, "unicode-string->list", 0, obj);
        }
    }

    public static Object formatAsDecimal(Object obj, Object obj2) {
        NumberCompare numberCompare = Scheme.numEqu;
        IntNum intNum = Lit25;
        Object objApply2 = numberCompare.apply2(obj2, intNum);
        Boolean bool = Boolean.FALSE;
        if (objApply2 != bool) {
            return yailRound(obj);
        }
        boolean zIsInteger = numbers.isInteger(obj2);
        if (!zIsInteger ? zIsInteger : Scheme.numGrt.apply2(obj2, intNum) != bool) {
            return signalRuntimeError(strings.stringAppend("format-as-decimal was called with ", getDisplayRepresentation(obj2), " as the number of decimal places.  This number must be a non-negative integer."), strings.stringAppend("Bad number of decimal places for format as decimal" instanceof Object[] ? (Object[]) "Bad number of decimal places for format as decimal" : new Object[]{"Bad number of decimal places for format as decimal"}));
        }
        return Format.formatToString(0, strings.stringAppend("~,", appinventorNumber$To$String(obj2), "f"), obj);
    }

    public static Boolean isIsNumber(Object obj) {
        boolean zIsString;
        boolean zIsNumber = numbers.isNumber(obj);
        return (!zIsNumber ? !(!(zIsString = strings.isString(obj)) ? zIsString : paddedString$To$Number(obj) != Boolean.FALSE) : zIsNumber) ? Boolean.FALSE : Boolean.TRUE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean isIsBase10(Object obj) {
        try {
            boolean zMatches = Pattern.matches("[0123456789]*", (CharSequence) obj);
            if (zMatches) {
                return ((isStringEmpty(obj) != Boolean.FALSE ? 1 : 0) + 1) & 1;
            }
            return zMatches;
        } catch (ClassCastException e) {
            throw new WrongType(e, "java.util.regex.Pattern.matches(java.lang.String,java.lang.CharSequence)", 2, obj);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean isIsHexadecimal(Object obj) {
        try {
            boolean zMatches = Pattern.matches("[0-9a-fA-F]*", (CharSequence) obj);
            if (zMatches) {
                return ((isStringEmpty(obj) != Boolean.FALSE ? 1 : 0) + 1) & 1;
            }
            return zMatches;
        } catch (ClassCastException e) {
            throw new WrongType(e, "java.util.regex.Pattern.matches(java.lang.String,java.lang.CharSequence)", 2, obj);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean isIsBinary(Object obj) {
        try {
            boolean zMatches = Pattern.matches("[01]*", (CharSequence) obj);
            if (zMatches) {
                return ((isStringEmpty(obj) != Boolean.FALSE ? 1 : 0) + 1) & 1;
            }
            return zMatches;
        } catch (ClassCastException e) {
            throw new WrongType(e, "java.util.regex.Pattern.matches(java.lang.String,java.lang.CharSequence)", 2, obj);
        }
    }

    public static Object mathConvertDecHex(Object obj) {
        if (!isIsBase10(obj)) {
            return signalRuntimeError(Format.formatToString(0, "Convert base 10 to hex: '~A' is not a positive integer", getDisplayRepresentation(obj)), "Argument is not a positive integer");
        }
        try {
            Object objString$To$Number = numbers.string$To$Number((CharSequence) obj);
            try {
                return stringToUpperCase(numbers.number$To$String((Number) objString$To$Number, 16));
            } catch (ClassCastException e) {
                throw new WrongType(e, "number->string", 1, objString$To$Number);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "string->number", 1, obj);
        }
    }

    public static Object mathConvertHexDec(Object obj) {
        return isIsHexadecimal(obj) ? numbers.string$To$Number(stringToUpperCase(obj), 16) : signalRuntimeError(Format.formatToString(0, "Convert hex to base 10: '~A' is not a hexadecimal number", getDisplayRepresentation(obj)), "Invalid hexadecimal number");
    }

    public static Object mathConvertBinDec(Object obj) {
        if (!isIsBinary(obj)) {
            return signalRuntimeError(Format.formatToString(0, "Convert binary to base 10: '~A' is not a  binary number", getDisplayRepresentation(obj)), "Invalid binary number");
        }
        try {
            return numbers.string$To$Number((CharSequence) obj, 2);
        } catch (ClassCastException e) {
            throw new WrongType(e, "string->number", 1, obj);
        }
    }

    public static Object mathConvertDecBin(Object obj) {
        if (!isIsBase10(obj)) {
            return signalRuntimeError(Format.formatToString(0, "Convert base 10 to binary: '~A' is not a positive integer", getDisplayRepresentation(obj)), "Argument is not a positive integer");
        }
        try {
            return patchedNumber$To$StringBinary(numbers.string$To$Number((CharSequence) obj));
        } catch (ClassCastException e) {
            throw new WrongType(e, "string->number", 1, obj);
        }
    }

    public static Object patchedNumber$To$StringBinary(Object obj) {
        try {
            if (Scheme.numLss.apply2(numbers.abs((Number) obj), Lit40) != Boolean.FALSE) {
                try {
                    return numbers.number$To$String((Number) obj, 2);
                } catch (ClassCastException e) {
                    throw new WrongType(e, "number->string", 1, obj);
                }
            }
            return alternateNumber$To$StringBinary(obj);
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "abs", 1, obj);
        }
    }

    public static Object alternateNumber$To$StringBinary(Object obj) {
        try {
            Number numberAbs = numbers.abs((Number) obj);
            try {
                RealNum realNumFloor = numbers.floor(LangObjType.coerceRealNum(numberAbs));
                Object objInternalBinaryConvert = internalBinaryConvert(realNumFloor);
                return realNumFloor.doubleValue() >= 0.0d ? objInternalBinaryConvert : strings.stringAppend("-", objInternalBinaryConvert);
            } catch (ClassCastException e) {
                throw new WrongType(e, "floor", 1, numberAbs);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "abs", 1, obj);
        }
    }

    public static Object internalBinaryConvert(Object obj) {
        NumberCompare numberCompare = Scheme.numEqu;
        Object objApply2 = numberCompare.apply2(obj, Lit25);
        Boolean bool = Boolean.FALSE;
        if (objApply2 != bool) {
            return "0";
        }
        if (numberCompare.apply2(obj, Lit24) != bool) {
            return "1";
        }
        DivideOp divideOp = DivideOp.quotient;
        IntNum intNum = Lit26;
        return strings.stringAppend(internalBinaryConvert(divideOp.apply2(obj, intNum)), internalBinaryConvert(DivideOp.remainder.apply2(obj, intNum)));
    }

    public static Object avg(Object obj) throws Throwable {
        Object objYailListContents = yailListContents(obj);
        if (lists.isNull(objYailListContents)) {
            return Lit25;
        }
        try {
            return yailDivide(Scheme.apply.apply2(AddOp.$Pl, objYailListContents), Integer.valueOf(lists.length((LList) objYailListContents)));
        } catch (ClassCastException e) {
            throw new WrongType(e, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, objYailListContents);
        }
    }

    public static Object yailMul(Object obj) {
        return lists.isNull(obj) ? Lit25 : Scheme.apply.apply2(MultiplyOp.$St, obj);
    }

    public static Object gm(Object obj) {
        Object objYailListContents = yailListContents(obj);
        if (lists.isNull(objYailListContents)) {
            return Lit25;
        }
        try {
            return expt.expt(yailMul(objYailListContents), yailDivide(Lit24, Integer.valueOf(lists.length((LList) objYailListContents))));
        } catch (ClassCastException e) {
            throw new WrongType(e, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, objYailListContents);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0063  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object mode(java.lang.Object r12) throws java.lang.Throwable {
        /*
            r0 = 1
            java.lang.String r1 = "x"
            java.lang.Object r12 = yailListContents(r12)
            gnu.lists.LList r2 = gnu.lists.LList.Empty
        L9:
            boolean r3 = kawa.lib.lists.isNull(r12)
            if (r3 == 0) goto La2
            gnu.math.IntNum r12 = com.google.youngandroid.runtime.Lit34
            gnu.lists.LList r3 = gnu.lists.LList.Empty
        L13:
            boolean r4 = kawa.lib.lists.isNull(r2)
            if (r4 == 0) goto L1a
            return r3
        L1a:
            gnu.expr.GenericProc r4 = kawa.lib.lists.cdr
            java.lang.Object r5 = r4.apply1(r2)
            gnu.expr.GenericProc r6 = kawa.lib.lists.car
            java.lang.Object r7 = r6.apply1(r2)
            java.lang.Object r7 = r4.apply1(r7)
            gnu.kawa.functions.NumberCompare r8 = kawa.standard.Scheme.numGrt
            gnu.math.IntNum r9 = com.google.youngandroid.runtime.Lit25
            java.lang.Object r9 = r8.apply2(r7, r9)
            r10 = -2
            r11 = r9
            java.lang.Boolean r11 = (java.lang.Boolean) r11     // Catch: java.lang.ClassCastException -> L9b
            boolean r9 = r11.booleanValue()     // Catch: java.lang.ClassCastException -> L9b
            if (r9 == 0) goto L60
            gnu.kawa.functions.NumberCompare r9 = kawa.standard.Scheme.numEqu
            gnu.math.IntNum r11 = com.google.youngandroid.runtime.Lit34
            java.lang.Object r9 = r9.apply2(r12, r11)
            r11 = r9
            java.lang.Boolean r11 = (java.lang.Boolean) r11     // Catch: java.lang.ClassCastException -> L59
            boolean r9 = r11.booleanValue()     // Catch: java.lang.ClassCastException -> L59
            if (r9 == 0) goto L50
            if (r9 == 0) goto L63
            goto L64
        L50:
            java.lang.Object r9 = r8.apply2(r7, r12)
            java.lang.Boolean r10 = java.lang.Boolean.FALSE
            if (r9 == r10) goto L63
            goto L64
        L59:
            r12 = move-exception
            gnu.mapping.WrongType r0 = new gnu.mapping.WrongType
            r0.<init>(r12, r1, r10, r9)
            throw r0
        L60:
            if (r9 == 0) goto L63
            goto L64
        L63:
            r7 = r12
        L64:
            java.lang.Object r2 = r6.apply1(r2)
            java.lang.Object r4 = r4.apply1(r2)
            java.lang.Object r2 = r6.apply1(r2)
            gnu.kawa.functions.NumberCompare r6 = kawa.standard.Scheme.numEqu
            java.lang.Object r6 = r6.apply2(r4, r12)
            java.lang.Boolean r9 = java.lang.Boolean.FALSE
            if (r6 == r9) goto L8c
            gnu.lists.Pair r12 = gnu.lists.LList.list1(r2)
            r2 = 2
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r4 = 0
            r2[r4] = r3
            r2[r0] = r12
            java.lang.Object r12 = kawa.standard.append.append$V(r2)
        L8a:
            r3 = r12
            goto L97
        L8c:
            java.lang.Object r12 = r8.apply2(r4, r12)
            if (r12 == r9) goto L97
            gnu.lists.Pair r12 = gnu.lists.LList.list1(r2)
            goto L8a
        L97:
            r2 = r5
            r12 = r7
            goto L13
        L9b:
            r12 = move-exception
            gnu.mapping.WrongType r0 = new gnu.mapping.WrongType
            r0.<init>(r12, r1, r10, r9)
            throw r0
        La2:
            gnu.expr.GenericProc r3 = kawa.lib.lists.cdr
            java.lang.Object r4 = r3.apply1(r12)
            gnu.expr.GenericProc r5 = kawa.lib.lists.car
            java.lang.Object r12 = r5.apply1(r12)
            java.lang.Object r5 = kawa.lib.lists.assoc(r12, r2)
            java.lang.Boolean r6 = java.lang.Boolean.FALSE
            if (r5 != r6) goto Lc2
            gnu.math.IntNum r3 = com.google.youngandroid.runtime.Lit24
            gnu.lists.Pair r12 = kawa.lib.lists.cons(r12, r3)
            gnu.lists.Pair r12 = kawa.lib.lists.cons(r12, r2)
            r2 = r12
            goto Ld4
        Lc2:
            r12 = r5
            gnu.lists.Pair r12 = (gnu.lists.Pair) r12     // Catch: java.lang.ClassCastException -> Ld7
            gnu.kawa.functions.AddOp r6 = gnu.kawa.functions.AddOp.$Pl
            java.lang.Object r3 = r3.apply1(r5)
            gnu.math.IntNum r5 = com.google.youngandroid.runtime.Lit24
            java.lang.Object r3 = r6.apply2(r3, r5)
            kawa.lib.lists.setCdr$Ex(r12, r3)
        Ld4:
            r12 = r4
            goto L9
        Ld7:
            r12 = move-exception
            gnu.mapping.WrongType r1 = new gnu.mapping.WrongType
            java.lang.String r2 = "set-cdr!"
            r1.<init>(r12, r2, r0, r5)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.youngandroid.runtime.mode(java.lang.Object):java.lang.Object");
    }

    public static Object maxl(Object obj) {
        Object objYailListContents = yailListContents(obj);
        return lists.isNull(objYailListContents) ? Lit41 : Scheme.apply.apply2(numbers.max, objYailListContents);
    }

    public static Object minl(Object obj) {
        Object objYailListContents = yailListContents(obj);
        return lists.isNull(objYailListContents) ? Lit42 : Scheme.apply.apply2(numbers.min, objYailListContents);
    }

    public static Object mean(Object obj) throws Throwable {
        try {
            return yailDivide(Scheme.apply.apply2(AddOp.$Pl, obj), Integer.valueOf(lists.length((LList) obj)));
        } catch (ClassCastException e) {
            throw new WrongType(e, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, obj);
        }
    }

    public static Object sumMeanSquareDiff(Object obj, Object obj2) {
        if (lists.isNull(obj)) {
            return Lit25;
        }
        AddOp addOp = AddOp.$Pl;
        MultiplyOp multiplyOp = MultiplyOp.$St;
        AddOp addOp2 = AddOp.$Mn;
        GenericProc genericProc = lists.car;
        return addOp.apply2(multiplyOp.apply2(addOp2.apply2(genericProc.apply1(obj), obj2), addOp2.apply2(genericProc.apply1(obj), obj2)), sumMeanSquareDiff(lists.cdr.apply1(obj), obj2));
    }

    public static Object stdDev(Object obj) {
        Object objYailListContents = yailListContents(obj);
        try {
            if (lists.length((LList) objYailListContents) <= 1) {
                return signalRuntimeError(Format.formatToString(0, "Select list item: Attempt to get item number ~A, of the list ~A.  The minimum valid item number is 2.", getDisplayRepresentation(objYailListContents)), "List smaller than 2");
            }
            try {
                return numbers.sqrt.apply1(yailDivide(sumMeanSquareDiff(objYailListContents, mean(objYailListContents)), Integer.valueOf(lists.length((LList) objYailListContents))));
            } catch (ClassCastException e) {
                throw new WrongType(e, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, objYailListContents);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, objYailListContents);
        }
    }

    public static Object sampleStdDev(Object obj) {
        try {
            return numbers.sqrt.apply1(yailDivide(sumMeanSquareDiff(obj, mean(obj)), Integer.valueOf(lists.length((LList) obj) - 1)));
        } catch (ClassCastException e) {
            throw new WrongType(e, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, obj);
        }
    }

    public static Object stdErr(Object obj) {
        Object objYailListContents = yailListContents(obj);
        try {
            if (lists.length((LList) objYailListContents) <= 1) {
                return signalRuntimeError(Format.formatToString(0, "Select list item: Attempt to get item number ~A, of the list ~A.  The minimum valid item number is 2.", getDisplayRepresentation(objYailListContents)), "List smaller than 2");
            }
            try {
                return yailDivide(sampleStdDev(objYailListContents), numbers.sqrt.apply1(Integer.valueOf(lists.length((LList) objYailListContents))));
            } catch (ClassCastException e) {
                throw new WrongType(e, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, objYailListContents);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, objYailListContents);
        }
    }

    public static Object isYailList(Object obj) {
        Object objIsYailListCandidate = isYailListCandidate(obj);
        Boolean bool = Boolean.FALSE;
        return objIsYailListCandidate != bool ? obj instanceof YailList ? Boolean.TRUE : bool : objIsYailListCandidate;
    }

    public static Object isYailListCandidate(Object obj) {
        boolean zIsPair = lists.isPair(obj);
        return zIsPair ? IsEqual.apply(lists.car.apply1(obj), Lit43) ? Boolean.TRUE : Boolean.FALSE : zIsPair ? Boolean.TRUE : Boolean.FALSE;
    }

    public static Object yailListContents(Object obj) {
        return lists.cdr.apply1(obj);
    }

    public static void setYailListContents$Ex(Object obj, Object obj2) {
        try {
            ((Pair) obj).setCdr(obj2);
        } catch (ClassCastException e) {
            throw new WrongType(e, "set-cdr!", 1, obj);
        }
    }

    public static Object insertYailListHeader(Object obj) {
        return Invoke.invokeStatic.apply3(YailList, Lit44, obj);
    }

    public static Object kawaList$To$YailList(Object obj) {
        if (lists.isNull(obj)) {
            return new YailList();
        }
        if (!lists.isPair(obj)) {
            return sanitizeAtomic(obj);
        }
        if (isYailList(obj) != Boolean.FALSE) {
            return obj;
        }
        Object objMake = LList.Empty;
        while (obj != LList.Empty) {
            try {
                Pair pair = (Pair) obj;
                Object cdr = pair.getCdr();
                objMake = Pair.make(kawaList$To$YailList(pair.getCar()), objMake);
                obj = cdr;
            } catch (ClassCastException e) {
                throw new WrongType(e, "arg0", -2, obj);
            }
        }
        return YailList.makeList((List) LList.reverseInPlace(objMake));
    }

    public static Object yailList$To$KawaList(Object obj) {
        if (isYailList(obj) == Boolean.FALSE) {
            return obj;
        }
        Object objYailListContents = yailListContents(obj);
        Object objMake = LList.Empty;
        while (objYailListContents != LList.Empty) {
            try {
                Pair pair = (Pair) objYailListContents;
                Object cdr = pair.getCdr();
                objMake = Pair.make(yailList$To$KawaList(pair.getCar()), objMake);
                objYailListContents = cdr;
            } catch (ClassCastException e) {
                throw new WrongType(e, "arg0", -2, objYailListContents);
            }
        }
        return LList.reverseInPlace(objMake);
    }

    public static Object isYailListEmpty(Object obj) {
        Object objIsYailList = isYailList(obj);
        Boolean bool = Boolean.FALSE;
        return objIsYailList != bool ? lists.isNull(yailListContents(obj)) ? Boolean.TRUE : bool : objIsYailList;
    }

    public static YailList makeYailList$V(Object[] objArr) {
        return YailList.makeList((List) LList.makeList(objArr, 0));
    }

    public static Object yailListCopy(Object obj) {
        if (isYailListEmpty(obj) != Boolean.FALSE) {
            return new YailList();
        }
        if (!lists.isPair(obj)) {
            return obj;
        }
        Object objYailListContents = yailListContents(obj);
        Object objMake = LList.Empty;
        while (objYailListContents != LList.Empty) {
            try {
                Pair pair = (Pair) objYailListContents;
                Object cdr = pair.getCdr();
                objMake = Pair.make(yailListCopy(pair.getCar()), objMake);
                objYailListContents = cdr;
            } catch (ClassCastException e) {
                throw new WrongType(e, "arg0", -2, objYailListContents);
            }
        }
        return YailList.makeList((List) LList.reverseInPlace(objMake));
    }

    public static Object yailListReverse(Object obj) {
        if (isYailList(obj) == Boolean.FALSE) {
            return signalRuntimeError("Argument value to \"reverse list\" must be a list", "Expecting list");
        }
        Object objYailListContents = yailListContents(obj);
        try {
            return insertYailListHeader(lists.reverse((LList) objYailListContents));
        } catch (ClassCastException e) {
            throw new WrongType(e, "reverse", 1, objYailListContents);
        }
    }

    public static Object yailListToCsvTable(Object obj) throws Throwable {
        if (isYailList(obj) == Boolean.FALSE) {
            return signalRuntimeError("Argument value to \"list to csv table\" must be a list", "Expecting list");
        }
        Apply apply = Scheme.apply;
        ModuleMethod moduleMethod = make$Mnyail$Mnlist;
        Object objYailListContents = yailListContents(obj);
        Object objMake = LList.Empty;
        while (objYailListContents != LList.Empty) {
            try {
                Pair pair = (Pair) objYailListContents;
                Object cdr = pair.getCdr();
                objMake = Pair.make(convertToStringsForCsv(pair.getCar()), objMake);
                objYailListContents = cdr;
            } catch (ClassCastException e) {
                throw new WrongType(e, "arg0", -2, objYailListContents);
            }
        }
        Object objApply2 = apply.apply2(moduleMethod, LList.reverseInPlace(objMake));
        try {
            return CsvUtil.toCsvTable((YailList) objApply2);
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "com.google.appinventor.components.runtime.util.CsvUtil.toCsvTable(com.google.appinventor.components.runtime.util.YailList)", 1, objApply2);
        }
    }

    public static Object yailListToCsvRow(Object obj) {
        if (isYailList(obj) == Boolean.FALSE) {
            return signalRuntimeError("Argument value to \"list to csv row\" must be a list", "Expecting list");
        }
        Object objConvertToStringsForCsv = convertToStringsForCsv(obj);
        try {
            return CsvUtil.toCsvRow((YailList) objConvertToStringsForCsv);
        } catch (ClassCastException e) {
            throw new WrongType(e, "com.google.appinventor.components.runtime.util.CsvUtil.toCsvRow(com.google.appinventor.components.runtime.util.YailList)", 1, objConvertToStringsForCsv);
        }
    }

    public static Object convertToStringsForCsv(Object obj) {
        Object objIsYailListEmpty = isYailListEmpty(obj);
        Boolean bool = Boolean.FALSE;
        if (objIsYailListEmpty != bool) {
            return obj;
        }
        if (isYailList(obj) == bool) {
            return makeYailList$V(new Object[]{obj});
        }
        Apply apply = Scheme.apply;
        ModuleMethod moduleMethod = make$Mnyail$Mnlist;
        Object objYailListContents = yailListContents(obj);
        Object objMake = LList.Empty;
        while (objYailListContents != LList.Empty) {
            try {
                Pair pair = (Pair) objYailListContents;
                Object cdr = pair.getCdr();
                objMake = Pair.make(coerceToString(pair.getCar()), objMake);
                objYailListContents = cdr;
            } catch (ClassCastException e) {
                throw new WrongType(e, "arg0", -2, objYailListContents);
            }
        }
        return apply.apply2(moduleMethod, LList.reverseInPlace(objMake));
    }

    public static Object yailListFromCsvTable(Object obj) {
        String string;
        if (obj == null) {
            string = null;
        } else {
            try {
                string = obj.toString();
            } catch (Exception e) {
                return signalRuntimeError("Cannot parse text argument to \"list from csv table\" as a CSV-formatted table", e.getMessage());
            }
        }
        return CsvUtil.fromCsvTable(string);
    }

    public static Object yailListFromCsvRow(Object obj) {
        String string;
        if (obj == null) {
            string = null;
        } else {
            try {
                string = obj.toString();
            } catch (Exception e) {
                return signalRuntimeError("Cannot parse text argument to \"list from csv row\" as CSV-formatted row", e.getMessage());
            }
        }
        return CsvUtil.fromCsvRow(string);
    }

    public static int yailListLength(Object obj) {
        Object objYailListContents = yailListContents(obj);
        try {
            return lists.length((LList) objYailListContents);
        } catch (ClassCastException e) {
            throw new WrongType(e, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, objYailListContents);
        }
    }

    public static Object yailListIndex(Object obj, Object obj2) throws Throwable {
        Object objApply2 = Lit24;
        for (Object objYailListContents = yailListContents(obj2); !lists.isNull(objYailListContents); objYailListContents = lists.cdr.apply1(objYailListContents)) {
            if (isYailEqual(obj, lists.car.apply1(objYailListContents)) != Boolean.FALSE) {
                return objApply2;
            }
            objApply2 = AddOp.$Pl.apply2(objApply2, Lit24);
        }
        return Lit25;
    }

    public static Object yailListGetItem(Object obj, Object obj2) throws Throwable {
        NumberCompare numberCompare = Scheme.numLss;
        IntNum intNum = Lit24;
        Object objApply2 = numberCompare.apply2(obj2, intNum);
        Boolean bool = Boolean.FALSE;
        if (objApply2 != bool) {
            signalRuntimeError(Format.formatToString(0, "Select list item: Attempt to get item number ~A, of the list ~A.  The minimum valid item number is 1.", obj2, getDisplayRepresentation(obj)), "List index smaller than 1");
        }
        int iYailListLength = yailListLength(obj);
        if (Scheme.numGrt.apply2(obj2, Integer.valueOf(iYailListLength)) != bool) {
            return signalRuntimeError(Format.formatToString(0, "Select list item: Attempt to get item number ~A of a list of length ~A: ~A", obj2, Integer.valueOf(iYailListLength), getDisplayRepresentation(obj)), "Select list item: List index too large");
        }
        Object objYailListContents = yailListContents(obj);
        Object objApply22 = AddOp.$Mn.apply2(obj2, intNum);
        try {
            return lists.listRef(objYailListContents, ((Number) objApply22).intValue());
        } catch (ClassCastException e) {
            throw new WrongType(e, "list-ref", 2, objApply22);
        }
    }

    public static void yailListSetItem$Ex(Object obj, Object obj2, Object obj3) throws Throwable {
        NumberCompare numberCompare = Scheme.numLss;
        IntNum intNum = Lit24;
        Object objApply2 = numberCompare.apply2(obj2, intNum);
        Boolean bool = Boolean.FALSE;
        if (objApply2 != bool) {
            signalRuntimeError(Format.formatToString(0, "Replace list item: Attempt to replace item number ~A of the list ~A.  The minimum valid item number is 1.", obj2, getDisplayRepresentation(obj)), "List index smaller than 1");
        }
        int iYailListLength = yailListLength(obj);
        if (Scheme.numGrt.apply2(obj2, Integer.valueOf(iYailListLength)) != bool) {
            signalRuntimeError(Format.formatToString(0, "Replace list item: Attempt to replace item number ~A of a list of length ~A: ~A", obj2, Integer.valueOf(iYailListLength), getDisplayRepresentation(obj)), "List index too large");
        }
        Object objYailListContents = yailListContents(obj);
        Object objApply22 = AddOp.$Mn.apply2(obj2, intNum);
        try {
            Object objListTail = lists.listTail(objYailListContents, ((Number) objApply22).intValue());
            try {
                ((Pair) objListTail).setCar(obj3);
            } catch (ClassCastException e) {
                throw new WrongType(e, "set-car!", 1, objListTail);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "list-tail", 2, objApply22);
        }
    }

    public static void yailListRemoveItem$Ex(Object obj, Object obj2) throws Throwable {
        Object objCoerceToNumber = coerceToNumber(obj2);
        if (objCoerceToNumber == Lit2) {
            signalRuntimeError(Format.formatToString(0, "Remove list item: index -- ~A -- is not a number", getDisplayRepresentation(obj2)), "Bad list index");
        }
        Object objIsYailListEmpty = isYailListEmpty(obj);
        Boolean bool = Boolean.FALSE;
        if (objIsYailListEmpty != bool) {
            signalRuntimeError(Format.formatToString(0, "Remove list item: Attempt to remove item ~A of an empty list", getDisplayRepresentation(obj2)), "Invalid list operation");
        }
        NumberCompare numberCompare = Scheme.numLss;
        IntNum intNum = Lit24;
        if (numberCompare.apply2(objCoerceToNumber, intNum) != bool) {
            signalRuntimeError(Format.formatToString(0, "Remove list item: Attempt to remove item ~A of the list ~A.  The minimum valid item number is 1.", objCoerceToNumber, getDisplayRepresentation(obj)), "List index smaller than 1");
        }
        int iYailListLength = yailListLength(obj);
        if (Scheme.numGrt.apply2(objCoerceToNumber, Integer.valueOf(iYailListLength)) != bool) {
            signalRuntimeError(Format.formatToString(0, "Remove list item: Attempt to remove item ~A of a list of length ~A: ~A", objCoerceToNumber, Integer.valueOf(iYailListLength), getDisplayRepresentation(obj)), "List index too large");
        }
        Object objApply2 = AddOp.$Mn.apply2(objCoerceToNumber, intNum);
        try {
            Object objListTail = lists.listTail(obj, ((Number) objApply2).intValue());
            try {
                ((Pair) objListTail).setCdr(lists.cddr.apply1(objListTail));
            } catch (ClassCastException e) {
                throw new WrongType(e, "set-cdr!", 1, objListTail);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "list-tail", 2, objApply2);
        }
    }

    public static void yailListInsertItem$Ex(Object obj, Object obj2, Object obj3) throws Throwable {
        Object objCoerceToNumber = coerceToNumber(obj2);
        if (objCoerceToNumber == Lit2) {
            signalRuntimeError(Format.formatToString(0, "Insert list item: index (~A) is not a number", getDisplayRepresentation(obj2)), "Bad list index");
        }
        NumberCompare numberCompare = Scheme.numLss;
        IntNum intNum = Lit24;
        Object objApply2 = numberCompare.apply2(objCoerceToNumber, intNum);
        Boolean bool = Boolean.FALSE;
        if (objApply2 != bool) {
            signalRuntimeError(Format.formatToString(0, "Insert list item: Attempt to insert item ~A into the list ~A.  The minimum valid item number is 1.", objCoerceToNumber, getDisplayRepresentation(obj)), "List index smaller than 1");
        }
        int iYailListLength = yailListLength(obj) + 1;
        if (Scheme.numGrt.apply2(objCoerceToNumber, Integer.valueOf(iYailListLength)) != bool) {
            signalRuntimeError(Format.formatToString(0, "Insert list item: Attempt to insert item ~A into the list ~A.  The maximum valid item number is ~A.", objCoerceToNumber, getDisplayRepresentation(obj), Integer.valueOf(iYailListLength)), "List index too large");
        }
        Object objYailListContents = yailListContents(obj);
        if (Scheme.numEqu.apply2(objCoerceToNumber, intNum) != bool) {
            setYailListContents$Ex(obj, lists.cons(obj3, objYailListContents));
            return;
        }
        Object objApply22 = AddOp.$Mn.apply2(objCoerceToNumber, Lit26);
        try {
            Object objListTail = lists.listTail(objYailListContents, ((Number) objApply22).intValue());
            try {
                ((Pair) objListTail).setCdr(lists.cons(obj3, lists.cdr.apply1(objListTail)));
            } catch (ClassCastException e) {
                throw new WrongType(e, "set-cdr!", 1, objListTail);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "list-tail", 2, objApply22);
        }
    }

    public static Object lambda16listCopy(Object obj) {
        return lists.isNull(obj) ? LList.Empty : lists.cons(lists.car.apply1(obj), lambda16listCopy(lists.cdr.apply1(obj)));
    }

    public static void yailListAppend$Ex(Object obj, Object obj2) {
        Object objYailListContents = yailListContents(obj);
        try {
            Object objListTail = lists.listTail(obj, lists.length((LList) objYailListContents));
            try {
                ((Pair) objListTail).setCdr(lambda16listCopy(yailListContents(obj2)));
            } catch (ClassCastException e) {
                throw new WrongType(e, "set-cdr!", 1, objListTail);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, objYailListContents);
        }
    }

    public static void yailListAddToList$Ex$V(Object obj, Object[] objArr) {
        yailListAppend$Ex(obj, Scheme.apply.apply2(make$Mnyail$Mnlist, LList.makeList(objArr, 0)));
    }

    public static Boolean isYailListMember(Object obj, Object obj2) {
        Object objMember = lists.member(obj, yailListContents(obj2), yail$Mnequal$Qu);
        Boolean bool = Boolean.FALSE;
        return objMember != bool ? Boolean.TRUE : bool;
    }

    public static Object yailListPickRandom(Object obj) {
        if (isYailListEmpty(obj) != Boolean.FALSE) {
            signalRuntimeError(Format.formatToString(0, "Pick random item: Attempt to pick a random element from an empty list" instanceof Object[] ? (Object[]) "Pick random item: Attempt to pick a random element from an empty list" : new Object[]{"Pick random item: Attempt to pick a random element from an empty list"}), "Invalid list operation");
        }
        return yailListGetItem(obj, randomInteger(Lit24, Integer.valueOf(yailListLength(obj))));
    }

    public static Object yailForEach(Object obj, Object obj2) throws Throwable {
        Object objCoerceToYailList = coerceToYailList(obj2);
        if (objCoerceToYailList == Lit2) {
            return signalRuntimeError(Format.formatToString(0, "The second argument to foreach is not a list.  The second argument is: ~A", getDisplayRepresentation(obj2)), "Bad list argument to foreach");
        }
        Object objYailListContents = yailListContents(objCoerceToYailList);
        while (objYailListContents != LList.Empty) {
            try {
                Pair pair = (Pair) objYailListContents;
                Scheme.applyToArgs.apply2(obj, pair.getCar());
                objYailListContents = pair.getCdr();
            } catch (ClassCastException e) {
                throw new WrongType(e, "arg0", -2, objYailListContents);
            }
        }
        return null;
    }

    public static Object yailListMap(Object obj, Object obj2) {
        Object objCoerceToYailList = coerceToYailList(obj2);
        if (objCoerceToYailList == Lit2) {
            return signalRuntimeError(Format.formatToString(0, "The second argument to map is not a list.  The second argument is: ~A", getDisplayRepresentation(obj2)), "Bad list argument to map");
        }
        Object objYailListContents = yailListContents(objCoerceToYailList);
        Object objMake = LList.Empty;
        while (objYailListContents != LList.Empty) {
            try {
                Pair pair = (Pair) objYailListContents;
                Object cdr = pair.getCdr();
                objMake = Pair.make(Scheme.applyToArgs.apply2(obj, pair.getCar()), objMake);
                objYailListContents = cdr;
            } catch (ClassCastException e) {
                throw new WrongType(e, "arg0", -2, objYailListContents);
            }
        }
        return kawaList$To$YailList(LList.reverseInPlace(objMake));
    }

    public static Object lambda17filter_(Object obj, Object obj2) {
        if (lists.isNull(obj2)) {
            return LList.Empty;
        }
        ApplyToArgs applyToArgs = Scheme.applyToArgs;
        GenericProc genericProc = lists.car;
        return applyToArgs.apply2(obj, genericProc.apply1(obj2)) != Boolean.FALSE ? lists.cons(genericProc.apply1(obj2), lambda17filter_(obj, lists.cdr.apply1(obj2))) : lambda17filter_(obj, lists.cdr.apply1(obj2));
    }

    public static Object yailListFilter(Object obj, Object obj2) {
        Object objCoerceToYailList = coerceToYailList(obj2);
        return objCoerceToYailList == Lit2 ? signalRuntimeError(Format.formatToString(0, "The second argument to filter is not a list.  The second argument is: ~A", getDisplayRepresentation(obj2)), "Bad list argument to filter") : kawaList$To$YailList(lambda17filter_(obj, yailListContents(objCoerceToYailList)));
    }

    public static Object yailListReduce(Object obj, Object obj2, Object obj3) throws Throwable {
        Object objCoerceToYailList = coerceToYailList(obj3);
        if (objCoerceToYailList == Lit2) {
            return signalRuntimeError(Format.formatToString(0, "The second argument to reduce is not a list.  The second argument is: ~A", getDisplayRepresentation(obj3)), "Bad list argument to reduce");
        }
        for (Object objYailListContents = yailListContents(objCoerceToYailList); !lists.isNull(objYailListContents); objYailListContents = lists.cdr.apply1(objYailListContents)) {
            obj = Scheme.applyToArgs.apply3(obj2, obj, lists.car.apply1(objYailListContents));
        }
        return kawaList$To$YailList(obj);
    }

    public static Object typeof(Object obj) {
        return misc.isBoolean(obj) ? Lit7 : numbers.isNumber(obj) ? Lit5 : strings.isString(obj) ? Lit6 : isYailList(obj) != Boolean.FALSE ? Lit8 : obj instanceof Component ? Lit11 : signalRuntimeError(Format.formatToString(0, "typeof called with unexpected value: ~A", getDisplayRepresentation(obj)), "Bad arguement to typeof");
    }

    public static Object indexof(Object obj, Object obj2) {
        return yailListIndex(obj, obj2);
    }

    public static boolean isTypeLt(Object obj, Object obj2) {
        NumberCompare numberCompare = Scheme.numLss;
        PairWithPosition pairWithPosition = Lit45;
        return ((Boolean) numberCompare.apply2(indexof(obj, pairWithPosition), indexof(obj2, pairWithPosition))).booleanValue();
    }

    public static Object isIsLt(Object obj, Object obj2) {
        Object objTypeof = typeof(obj);
        Object objTypeof2 = typeof(obj2);
        boolean zIsTypeLt = isTypeLt(objTypeof, objTypeof2);
        if (zIsTypeLt) {
            return zIsTypeLt ? Boolean.TRUE : Boolean.FALSE;
        }
        boolean z = objTypeof == objTypeof2;
        if (!z) {
            return z ? Boolean.TRUE : Boolean.FALSE;
        }
        if (objTypeof == Lit7) {
            return isBooleanLt(obj, obj2);
        }
        if (objTypeof == Lit5) {
            return Scheme.numLss.apply2(obj, obj2);
        }
        if (objTypeof == Lit6) {
            return strings.isString$Ls(obj, obj2) ? Boolean.TRUE : Boolean.FALSE;
        }
        if (objTypeof == Lit8) {
            return isListLt(obj, obj2);
        }
        return objTypeof == Lit11 ? isComponentLt(obj, obj2) : signalRuntimeError(Format.formatToString(0, "(islt? ~A ~A)", getDisplayRepresentation(obj), getDisplayRepresentation(obj2)), "Shouldn't happen");
    }

    public static Object isIsEq(Object obj, Object obj2) {
        Object objTypeof = typeof(obj);
        boolean z = objTypeof == typeof(obj2);
        if (!z) {
            return z ? Boolean.TRUE : Boolean.FALSE;
        }
        if (objTypeof == Lit7) {
            return isBooleanEq(obj, obj2);
        }
        if (objTypeof == Lit5) {
            return Scheme.numEqu.apply2(obj, obj2);
        }
        if (objTypeof == Lit6) {
            return strings.isString$Eq(obj, obj2) ? Boolean.TRUE : Boolean.FALSE;
        }
        if (objTypeof == Lit8) {
            return isListEq(obj, obj2);
        }
        return objTypeof == Lit11 ? isComponentEq(obj, obj2) : signalRuntimeError(Format.formatToString(0, "(islt? ~A ~A)", getDisplayRepresentation(obj), getDisplayRepresentation(obj2)), "Shouldn't happen");
    }

    public static Object isIsLeq(Object obj, Object obj2) {
        Object objTypeof = typeof(obj);
        Object objTypeof2 = typeof(obj2);
        boolean zIsTypeLt = isTypeLt(objTypeof, objTypeof2);
        if (zIsTypeLt) {
            return zIsTypeLt ? Boolean.TRUE : Boolean.FALSE;
        }
        boolean z = objTypeof == objTypeof2;
        if (!z) {
            return z ? Boolean.TRUE : Boolean.FALSE;
        }
        if (objTypeof == Lit7) {
            return isBooleanLeq(obj, obj2);
        }
        if (objTypeof == Lit5) {
            return Scheme.numLEq.apply2(obj, obj2);
        }
        if (objTypeof == Lit6) {
            return strings.isString$Ls$Eq(obj, obj2) ? Boolean.TRUE : Boolean.FALSE;
        }
        if (objTypeof == Lit8) {
            return isListLeq(obj, obj2);
        }
        return objTypeof == Lit11 ? isComponentLeq(obj, obj2) : signalRuntimeError(Format.formatToString(0, "(isleq? ~A ~A)", getDisplayRepresentation(obj), getDisplayRepresentation(obj2)), "Shouldn't happen");
    }

    public static Object isBooleanLt(Object obj, Object obj2) {
        try {
            Boolean bool = Boolean.FALSE;
            int i = ((obj != bool ? 1 : 0) + 1) & 1;
            return i != 0 ? obj2 : i != 0 ? Boolean.TRUE : bool;
        } catch (ClassCastException e) {
            throw new WrongType(e, "x", -2, obj);
        }
    }

    public static Object isBooleanEq(Object obj, Object obj2) {
        Boolean bool = Boolean.FALSE;
        Object obj3 = obj != bool ? obj2 : obj;
        if (obj3 != bool) {
            return obj3;
        }
        int i = ((obj != bool ? 1 : 0) + 1) & 1;
        return i != 0 ? obj2 != bool ? bool : Boolean.TRUE : i != 0 ? Boolean.TRUE : bool;
    }

    public static Object isBooleanLeq(Object obj, Object obj2) {
        Boolean bool = Boolean.FALSE;
        return (obj == bool ? obj == bool : obj2 != bool) ? Boolean.TRUE : bool;
    }

    public static Object isListLt(Object obj, Object obj2) throws Throwable {
        Object objYailListContents = yailListContents(obj);
        Object objYailListContents2 = yailListContents(obj2);
        while (!lists.isNull(objYailListContents)) {
            if (lists.isNull(objYailListContents2)) {
                return Boolean.FALSE;
            }
            GenericProc genericProc = lists.car;
            Object objIsIsLt = isIsLt(genericProc.apply1(objYailListContents), genericProc.apply1(objYailListContents2));
            Boolean bool = Boolean.FALSE;
            if (objIsIsLt != bool) {
                return Boolean.TRUE;
            }
            if (isIsEq(genericProc.apply1(objYailListContents), genericProc.apply1(objYailListContents2)) == bool) {
                return bool;
            }
            GenericProc genericProc2 = lists.cdr;
            objYailListContents = genericProc2.apply1(objYailListContents);
            objYailListContents2 = genericProc2.apply1(objYailListContents2);
        }
        return lists.isNull(objYailListContents2) ? Boolean.FALSE : Boolean.TRUE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0019, code lost:
    
        return java.lang.Boolean.TRUE;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x002c A[LOOP:0: B:3:0x0008->B:13:0x002c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0037 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object isListEq(java.lang.Object r2, java.lang.Object r3) throws java.lang.Throwable {
        /*
            java.lang.Object r2 = yailListContents(r2)
            java.lang.Object r3 = yailListContents(r3)
        L8:
            boolean r0 = kawa.lib.lists.isNull(r2)
            if (r0 == 0) goto L15
            boolean r0 = kawa.lib.lists.isNull(r3)
            if (r0 == 0) goto L1a
            goto L17
        L15:
            if (r0 == 0) goto L1a
        L17:
            java.lang.Boolean r2 = java.lang.Boolean.TRUE
            return r2
        L1a:
            gnu.expr.GenericProc r0 = kawa.lib.lists.car
            java.lang.Object r1 = r0.apply1(r2)
            java.lang.Object r0 = r0.apply1(r3)
            java.lang.Object r0 = isIsEq(r1, r0)
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            if (r0 == r1) goto L37
            gnu.expr.GenericProc r0 = kawa.lib.lists.cdr
            java.lang.Object r2 = r0.apply1(r2)
            java.lang.Object r3 = r0.apply1(r3)
            goto L8
        L37:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.youngandroid.runtime.isListEq(java.lang.Object, java.lang.Object):java.lang.Object");
    }

    public static Object yailListNecessary(Object obj) {
        return isYailList(obj) != Boolean.FALSE ? yailListContents(obj) : obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0019, code lost:
    
        return java.lang.Boolean.TRUE;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0020 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object isListLeq(java.lang.Object r3, java.lang.Object r4) throws java.lang.Throwable {
        /*
            java.lang.Object r3 = yailListNecessary(r3)
            java.lang.Object r4 = yailListNecessary(r4)
        L8:
            boolean r0 = kawa.lib.lists.isNull(r3)
            if (r0 == 0) goto L15
            boolean r0 = kawa.lib.lists.isNull(r4)
            if (r0 == 0) goto L1a
            goto L17
        L15:
            if (r0 == 0) goto L1a
        L17:
            java.lang.Boolean r3 = java.lang.Boolean.TRUE
            return r3
        L1a:
            boolean r0 = kawa.lib.lists.isNull(r3)
            if (r0 == 0) goto L23
            java.lang.Boolean r3 = java.lang.Boolean.TRUE
            return r3
        L23:
            boolean r0 = kawa.lib.lists.isNull(r4)
            if (r0 == 0) goto L2c
            java.lang.Boolean r3 = java.lang.Boolean.FALSE
            return r3
        L2c:
            gnu.expr.GenericProc r0 = kawa.lib.lists.car
            java.lang.Object r1 = r0.apply1(r3)
            java.lang.Object r2 = r0.apply1(r4)
            java.lang.Object r1 = isIsLt(r1, r2)
            java.lang.Boolean r2 = java.lang.Boolean.FALSE
            if (r1 == r2) goto L41
            java.lang.Boolean r3 = java.lang.Boolean.TRUE
            return r3
        L41:
            java.lang.Object r1 = r0.apply1(r3)
            java.lang.Object r0 = r0.apply1(r4)
            java.lang.Object r0 = isIsEq(r1, r0)
            if (r0 == r2) goto L5a
            gnu.expr.GenericProc r0 = kawa.lib.lists.cdr
            java.lang.Object r3 = r0.apply1(r3)
            java.lang.Object r4 = r0.apply1(r4)
            goto L8
        L5a:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.youngandroid.runtime.isListLeq(java.lang.Object, java.lang.Object):java.lang.Object");
    }

    public static Object isComponentLt(Object obj, Object obj2) {
        boolean zIsString$Ls = strings.isString$Ls(obj.getClass().getSimpleName(), obj2.getClass().getSimpleName());
        if (zIsString$Ls) {
            return zIsString$Ls ? Boolean.TRUE : Boolean.FALSE;
        }
        boolean zIsString$Eq = strings.isString$Eq(obj.getClass().getSimpleName(), obj2.getClass().getSimpleName());
        return zIsString$Eq ? obj.hashCode() < obj2.hashCode() ? Boolean.TRUE : Boolean.FALSE : zIsString$Eq ? Boolean.TRUE : Boolean.FALSE;
    }

    public static Object isComponentEq(Object obj, Object obj2) {
        boolean zIsString$Eq = strings.isString$Eq(obj.getClass().getSimpleName(), obj2.getClass().getSimpleName());
        return zIsString$Eq ? obj.hashCode() == obj2.hashCode() ? Boolean.TRUE : Boolean.FALSE : zIsString$Eq ? Boolean.TRUE : Boolean.FALSE;
    }

    public static Object isComponentLeq(Object obj, Object obj2) {
        boolean zIsString$Ls = strings.isString$Ls(obj.getClass().getSimpleName(), obj2.getClass().getSimpleName());
        if (zIsString$Ls) {
            return zIsString$Ls ? Boolean.TRUE : Boolean.FALSE;
        }
        boolean zIsString$Eq = strings.isString$Eq(obj.getClass().getSimpleName(), obj2.getClass().getSimpleName());
        return zIsString$Eq ? obj.hashCode() <= obj2.hashCode() ? Boolean.TRUE : Boolean.FALSE : zIsString$Eq ? Boolean.TRUE : Boolean.FALSE;
    }

    public static Object take(Object obj, Object obj2) throws Throwable {
        LList lListCons = LList.Empty;
        while (true) {
            Object objApply2 = Scheme.numEqu.apply2(obj, Lit25);
            try {
                boolean zBooleanValue = ((Boolean) objApply2).booleanValue();
                if (zBooleanValue) {
                    if (zBooleanValue) {
                        break;
                    }
                    obj = AddOp.$Mn.apply2(obj, Lit24);
                    Object objApply1 = lists.cdr.apply1(obj2);
                    lListCons = lists.cons(lists.car.apply1(obj2), lListCons);
                    obj2 = objApply1;
                } else {
                    if (lists.isNull(obj2)) {
                        break;
                    }
                    obj = AddOp.$Mn.apply2(obj, Lit24);
                    Object objApply12 = lists.cdr.apply1(obj2);
                    lListCons = lists.cons(lists.car.apply1(obj2), lListCons);
                    obj2 = objApply12;
                }
            } catch (ClassCastException e) {
                throw new WrongType(e, "x", -2, objApply2);
            }
        }
        return lists.reverse(lListCons);
    }

    public static Object drop(Object obj, Object obj2) {
        Object objApply2 = Scheme.numEqu.apply2(obj, Lit25);
        try {
            boolean zBooleanValue = ((Boolean) objApply2).booleanValue();
            return (!zBooleanValue ? lists.isNull(obj2) : zBooleanValue) ? drop(AddOp.$Mn.apply2(obj, Lit24), lists.cdr.apply1(obj2)) : obj2;
        } catch (ClassCastException e) {
            throw new WrongType(e, "x", -2, objApply2);
        }
    }

    public static Object merge(Object obj, Object obj2, Object obj3) {
        if (lists.isNull(obj2)) {
            return obj3;
        }
        if (lists.isNull(obj3)) {
            return obj2;
        }
        ApplyToArgs applyToArgs = Scheme.applyToArgs;
        GenericProc genericProc = lists.car;
        return applyToArgs.apply3(obj, genericProc.apply1(obj2), genericProc.apply1(obj3)) != Boolean.FALSE ? lists.cons(genericProc.apply1(obj2), merge(obj, lists.cdr.apply1(obj2), obj3)) : lists.cons(genericProc.apply1(obj3), merge(obj, obj2, lists.cdr.apply1(obj3)));
    }

    public static Object mergesort(Object obj, Object obj2) {
        if (lists.isNull(obj2) || lists.isNull(lists.cdr.apply1(obj2))) {
            return obj2;
        }
        try {
            try {
                return merge(obj, mergesort(obj, take(Integer.valueOf(lists.length((LList) obj2) / 2), obj2)), mergesort(obj, drop(Integer.valueOf(lists.length((LList) obj2) / 2), obj2)));
            } catch (ClassCastException e) {
                throw new WrongType(e, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, obj2);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, obj2);
        }
    }

    public static Object yailListSort(Object obj) {
        return isYailListEmpty(obj) != Boolean.FALSE ? new YailList() : !lists.isPair(obj) ? obj : kawaList$To$YailList(mergesort(is$Mnleq$Qu, yailListContents(obj)));
    }

    public static Object yailListSortComparator(Object obj, Object obj2) {
        return isYailListEmpty(obj2) != Boolean.FALSE ? new YailList() : !lists.isPair(obj2) ? obj2 : kawaList$To$YailList(mergesort(obj, yailListContents(obj2)));
    }

    public static Object mergeKey(Object obj, Object obj2, Object obj3, Object obj4) {
        if (lists.isNull(obj3)) {
            return obj4;
        }
        if (lists.isNull(obj4)) {
            return obj3;
        }
        ApplyToArgs applyToArgs = Scheme.applyToArgs;
        GenericProc genericProc = lists.car;
        return applyToArgs.apply3(obj, applyToArgs.apply2(obj2, genericProc.apply1(obj3)), applyToArgs.apply2(obj2, genericProc.apply1(obj4))) != Boolean.FALSE ? lists.cons(genericProc.apply1(obj3), mergeKey(obj, obj2, lists.cdr.apply1(obj3), obj4)) : lists.cons(genericProc.apply1(obj4), mergeKey(obj, obj2, obj3, lists.cdr.apply1(obj4)));
    }

    public static Object mergesortKey(Object obj, Object obj2, Object obj3) {
        if (lists.isNull(obj3) || lists.isNull(lists.cdr.apply1(obj3))) {
            return obj3;
        }
        try {
            try {
                return mergeKey(obj, obj2, mergesortKey(obj, obj2, take(Integer.valueOf(lists.length((LList) obj3) / 2), obj3)), mergesortKey(obj, obj2, drop(Integer.valueOf(lists.length((LList) obj3) / 2), obj3)));
            } catch (ClassCastException e) {
                throw new WrongType(e, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, obj3);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, obj3);
        }
    }

    public static Object yailListSortKey(Object obj, Object obj2) {
        return isYailListEmpty(obj2) != Boolean.FALSE ? new YailList() : !lists.isPair(obj2) ? obj2 : kawaList$To$YailList(mergesortKey(is$Mnleq$Qu, obj, yailListContents(obj2)));
    }

    public static Object listNumberOnly(Object obj) {
        if (lists.isNull(obj)) {
            return LList.Empty;
        }
        GenericProc genericProc = lists.car;
        return numbers.isNumber(genericProc.apply1(obj)) ? lists.cons(genericProc.apply1(obj), listNumberOnly(lists.cdr.apply1(obj))) : listNumberOnly(lists.cdr.apply1(obj));
    }

    public static Object listMin(Object obj, Object obj2, Object obj3) throws Throwable {
        if (lists.isNull(obj3)) {
            return obj2;
        }
        ApplyToArgs applyToArgs = Scheme.applyToArgs;
        GenericProc genericProc = lists.car;
        if (applyToArgs.apply3(obj, obj2, genericProc.apply1(obj3)) == Boolean.FALSE) {
            obj2 = genericProc.apply1(obj3);
        }
        return listMin(obj, obj2, lists.cdr.apply1(obj3));
    }

    public static Object yailListMinComparator(Object obj, Object obj2) {
        if (!lists.isPair(obj2)) {
            return obj2;
        }
        if (isYailListEmpty(obj2) != Boolean.FALSE) {
            return makeYailList$V(new Object[0]);
        }
        return listMin(obj, lists.car.apply1(yailListContents(obj2)), lists.cdr.apply1(yailListContents(obj2)));
    }

    public static Object listMax(Object obj, Object obj2, Object obj3) throws Throwable {
        if (lists.isNull(obj3)) {
            return obj2;
        }
        ApplyToArgs applyToArgs = Scheme.applyToArgs;
        GenericProc genericProc = lists.car;
        if (applyToArgs.apply3(obj, obj2, genericProc.apply1(obj3)) != Boolean.FALSE) {
            obj2 = genericProc.apply1(obj3);
        }
        return listMax(obj, obj2, lists.cdr.apply1(obj3));
    }

    public static Object yailListMaxComparator(Object obj, Object obj2) {
        if (!lists.isPair(obj2)) {
            return obj2;
        }
        if (isYailListEmpty(obj2) != Boolean.FALSE) {
            return makeYailList$V(new Object[0]);
        }
        return listMax(obj, lists.car.apply1(yailListContents(obj2)), lists.cdr.apply1(yailListContents(obj2)));
    }

    public static Object yailListButFirst(Object obj) {
        Object objYailListContents = yailListContents(obj);
        if (lists.isNull(objYailListContents)) {
            return signalRuntimeError(Format.formatToString(0, "The list cannot be empty" instanceof Object[] ? (Object[]) "The list cannot be empty" : new Object[]{"The list cannot be empty"}), "Bad list argument to but-first");
        }
        GenericProc genericProc = lists.cdr;
        return lists.isNull(genericProc.apply1(objYailListContents)) ? makeYailList$V(new Object[0]) : kawaList$To$YailList(genericProc.apply1(objYailListContents));
    }

    public static Object butLast(Object obj) {
        if (lists.isNull(obj)) {
            return LList.Empty;
        }
        GenericProc genericProc = lists.cdr;
        return lists.isNull(genericProc.apply1(obj)) ? LList.Empty : lists.cons(lists.car.apply1(obj), butLast(genericProc.apply1(obj)));
    }

    public static Object yailListButLast(Object obj) {
        if (lists.isNull(yailListContents(obj))) {
            return signalRuntimeError(Format.formatToString(0, "The list cannot be empty" instanceof Object[] ? (Object[]) "The list cannot be empty" : new Object[]{"The list cannot be empty"}), "Bad list argument to but-last");
        }
        return kawaList$To$YailList(butLast(yailListContents(obj)));
    }

    public static Object front(Object obj, Object obj2) {
        NumberCompare numberCompare = Scheme.numEqu;
        IntNum intNum = Lit24;
        return numberCompare.apply2(obj2, intNum) != Boolean.FALSE ? obj : front(lists.cdr.apply1(obj), AddOp.$Mn.apply2(obj2, intNum));
    }

    public static Object back(Object obj, Object obj2, Object obj3) {
        NumberCompare numberCompare = Scheme.numEqu;
        AddOp addOp = AddOp.$Mn;
        IntNum intNum = Lit24;
        return numberCompare.apply2(obj2, addOp.apply2(obj3, intNum)) != Boolean.FALSE ? LList.Empty : lists.cons(lists.car.apply1(obj), back(lists.cdr.apply1(obj), AddOp.$Pl.apply2(obj2, intNum), obj3));
    }

    public static Object yailListSlice(Object obj, Object obj2, Object obj3) throws Throwable {
        Object objCoerceToNumber = coerceToNumber(obj2);
        Object objCoerceToNumber2 = coerceToNumber(obj3);
        PairWithPosition pairWithPosition = Lit2;
        if (objCoerceToNumber == pairWithPosition) {
            signalRuntimeError(Format.formatToString(0, "Insert list item: index (~A) is not a number", getDisplayRepresentation(objCoerceToNumber)), "Bad list verified-index1");
        }
        if (objCoerceToNumber2 == pairWithPosition) {
            signalRuntimeError(Format.formatToString(0, "Insert list item: index (~A) is not a number", getDisplayRepresentation(objCoerceToNumber2)), "Bad list verified-index2");
        }
        NumberCompare numberCompare = Scheme.numLss;
        IntNum intNum = Lit24;
        Object objApply2 = numberCompare.apply2(objCoerceToNumber, intNum);
        Boolean bool = Boolean.FALSE;
        if (objApply2 != bool) {
            signalRuntimeError(Format.formatToString(0, "Slice list: Attempt to slice list ~A at index ~A. The minimum valid index number is 1.", getDisplayRepresentation(obj), objCoerceToNumber2), "List index smaller than 1");
        }
        int iYailListLength = yailListLength(obj) + 1;
        if (Scheme.numGrt.apply2(objCoerceToNumber2, Integer.valueOf(iYailListLength)) != bool) {
            signalRuntimeError(Format.formatToString(0, "Slice list: Attempt to slice list ~A at index ~A.  The maximum valid index number is ~A.", getDisplayRepresentation(obj), objCoerceToNumber2, Integer.valueOf(iYailListLength)), "List index too large");
        }
        AddOp addOp = AddOp.$Mn;
        return kawaList$To$YailList(take(addOp.apply2(objCoerceToNumber2, objCoerceToNumber), drop(addOp.apply2(objCoerceToNumber, intNum), yailListContents(obj))));
    }

    public static Object yailForRange(Object obj, Object obj2, Object obj3, Object obj4) throws Throwable {
        Object objCoerceToNumber = coerceToNumber(obj2);
        Object objCoerceToNumber2 = coerceToNumber(obj3);
        Object objCoerceToNumber3 = coerceToNumber(obj4);
        PairWithPosition pairWithPosition = Lit2;
        if (objCoerceToNumber == pairWithPosition) {
            signalRuntimeError(Format.formatToString(0, "For range: the start value -- ~A -- is not a number", getDisplayRepresentation(obj2)), "Bad start value");
        }
        if (objCoerceToNumber2 == pairWithPosition) {
            signalRuntimeError(Format.formatToString(0, "For range: the end value -- ~A -- is not a number", getDisplayRepresentation(obj3)), "Bad end value");
        }
        if (objCoerceToNumber3 == pairWithPosition) {
            signalRuntimeError(Format.formatToString(0, "For range: the step value -- ~A -- is not a number", getDisplayRepresentation(obj4)), "Bad step value");
        }
        return yailForRangeWithNumericCheckedArgs(obj, objCoerceToNumber, objCoerceToNumber2, objCoerceToNumber3);
    }

    @Override // gnu.expr.ModuleBody
    public Object apply4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4) {
        int i = moduleMethod.selector;
        if (i == 17) {
            return addComponentWithinRepl(obj, obj2, obj3, obj4);
        }
        if (i == 23) {
            return setAndCoerceProperty$Ex(obj, obj2, obj3, obj4);
        }
        if (i == 47) {
            return callComponentMethod(obj, obj2, obj3, obj4);
        }
        if (i == 49) {
            return callComponentMethodWithBlockingContinuation(obj, obj2, obj3, obj4);
        }
        if (i == 201) {
            return mergeKey(obj, obj2, obj3, obj4);
        }
        if (i == 52) {
            return callComponentTypeMethodWithBlockingContinuation(obj, obj2, obj3, obj4);
        }
        if (i == 53) {
            return callYailPrimitive(obj, obj2, obj3, obj4);
        }
        if (i == 63) {
            return callWithCoercedArgs(obj, obj2, obj3, obj4);
        }
        if (i == 64) {
            return $PcSetAndCoerceProperty$Ex(obj, obj2, obj3, obj4);
        }
        if (i != 215) {
            return i != 216 ? super.apply4(moduleMethod, obj, obj2, obj3, obj4) : yailForRangeWithNumericCheckedArgs(obj, obj2, obj3, obj4);
        }
        return yailForRange(obj, obj2, obj3, obj4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x004d, code lost:
    
        if (r5 != false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0076, code lost:
    
        if (r5 != false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0092, code lost:
    
        return null;
     */
    /* JADX WARN: Removed duplicated region for block: B:52:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00a7 A[LOOP:0: B:53:0x009e->B:56:0x00a7, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object yailForRangeWithNumericCheckedArgs(java.lang.Object r8, java.lang.Object r9, java.lang.Object r10, java.lang.Object r11) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.youngandroid.runtime.yailForRangeWithNumericCheckedArgs(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object):java.lang.Object");
    }

    public static Object lambda18loop(Object obj, Object obj2) {
        return Scheme.numGrt.apply2(obj, obj2) != Boolean.FALSE ? LList.Empty : lists.cons(obj, lambda18loop(AddOp.$Pl.apply2(obj, Lit24), obj2));
    }

    public static Object yailNumberRange(Object obj, Object obj2) {
        try {
            try {
                return kawaList$To$YailList(lambda18loop(Arithmetic.toExact(numbers.ceiling(LangObjType.coerceRealNum(obj))), Arithmetic.toExact(numbers.floor(LangObjType.coerceRealNum(obj2)))));
            } catch (ClassCastException e) {
                throw new WrongType(e, "floor", 1, obj2);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "ceiling", 1, obj);
        }
    }

    public static Object yailAlistLookup(Object obj, Object obj2, Object obj3) throws Throwable {
        androidLog(Format.formatToString(0, "List alist lookup key is  ~A and table is ~A", obj, obj2));
        for (Object objYailListContents = yailListContents(obj2); !lists.isNull(objYailListContents); objYailListContents = lists.cdr.apply1(objYailListContents)) {
            GenericProc genericProc = lists.car;
            Object objIsPairOk = isPairOk(genericProc.apply1(objYailListContents));
            Boolean bool = Boolean.FALSE;
            if (objIsPairOk == bool) {
                return signalRuntimeError(Format.formatToString(0, "Lookup in pairs: the list ~A is not a well-formed list of pairs", getDisplayRepresentation(obj2)), "Invalid list of pairs");
            }
            if (isYailEqual(obj, genericProc.apply1(yailListContents(genericProc.apply1(objYailListContents)))) != bool) {
                return lists.cadr.apply1(yailListContents(genericProc.apply1(objYailListContents)));
            }
        }
        return obj3;
    }

    public static Object isPairOk(Object obj) {
        Object objIsYailList = isYailList(obj);
        Boolean bool = Boolean.FALSE;
        if (objIsYailList == bool) {
            return objIsYailList;
        }
        Object objYailListContents = yailListContents(obj);
        try {
            return lists.length((LList) objYailListContents) == 2 ? Boolean.TRUE : bool;
        } catch (ClassCastException e) {
            throw new WrongType(e, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, objYailListContents);
        }
    }

    public static Object yailListJoinWithSeparator(Object obj, Object obj2) {
        return joinStrings(yailListContents(obj), obj2);
    }

    public static YailDictionary makeYailDictionary$V(Object[] objArr) {
        return YailDictionary.makeDictionary(LList.makeList(objArr, 0));
    }

    @Override // gnu.expr.ModuleBody
    public Object applyN(ModuleMethod moduleMethod, Object[] objArr) {
        int i = moduleMethod.selector;
        if (i == 18) {
            return call$MnInitializeOfComponents$V(objArr);
        }
        if (i == 48) {
            return callComponentMethodWithContinuation(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4]);
        }
        if (i == 157) {
            return makeYailList$V(objArr);
        }
        if (i == 172) {
            Object obj = objArr[0];
            int length = objArr.length - 1;
            Object[] objArr2 = new Object[length];
            while (true) {
                int i2 = length - 1;
                if (i2 < 0) {
                    yailListAddToList$Ex$V(obj, objArr2);
                    return Values.empty;
                }
                objArr2[i2] = objArr[length];
                length = i2;
            }
        } else {
            if (i == 221) {
                return makeYailDictionary$V(objArr);
            }
            if (i == 27) {
                return setAndCoercePropertyAndCheck$Ex(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4]);
            }
            if (i == 28) {
                return symbolAppend$V(objArr);
            }
            if (i == 45) {
                return lambda27(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4]);
            }
            if (i != 46) {
                if (i == 50) {
                    return callComponentTypeMethod(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4]);
                }
                if (i == 51) {
                    return callComponentTypeMethodWithContinuation(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4]);
                }
                if (i == 101) {
                    return processAndDelayed$V(objArr);
                }
                if (i == 102) {
                    return processOrDelayed$V(objArr);
                }
                return super.applyN(moduleMethod, objArr);
            }
            Object obj2 = objArr[0];
            Object obj3 = objArr[1];
            int length2 = objArr.length - 2;
            Object[] objArr3 = new Object[length2];
            while (true) {
                int i3 = length2 - 1;
                if (i3 < 0) {
                    return lambda28$V(obj2, obj3, objArr3);
                }
                objArr3[i3] = objArr[length2 + 1];
                length2 = i3;
            }
        }
    }

    public static YailList makeDictionaryPair(Object obj, Object obj2) {
        return makeYailList$V(new Object[]{obj, obj2});
    }

    public static Object yailDictionarySetPair(Object obj, Object obj2, Object obj3) {
        return ((YailDictionary) obj2).put(obj, obj3);
    }

    public static Object yailDictionaryDeletePair(Object obj, Object obj2) {
        return ((YailDictionary) obj).remove(obj2);
    }

    public static Object yailDictionaryLookup(Object obj, Object obj2, Object obj3) throws Throwable {
        Object objYailAlistLookup;
        if (obj2 instanceof YailList) {
            objYailAlistLookup = yailAlistLookup(obj, obj2, obj3);
        } else {
            objYailAlistLookup = obj2 instanceof YailDictionary ? ((YailDictionary) obj2).get(obj) : obj3;
        }
        return objYailAlistLookup == null ? isEnum(obj) != Boolean.FALSE ? yailDictionaryLookup(sanitizeComponentData(Scheme.applyToArgs.apply1(GetNamedPart.getNamedPart.apply2(obj, Lit18))), obj2, obj3) : obj3 : objYailAlistLookup;
    }

    public static Object yailDictionaryRecursiveLookup(Object obj, Object obj2, Object obj3) {
        YailDictionary yailDictionary = (YailDictionary) obj2;
        Object objYailListContents = yailListContents(obj);
        try {
            Object objectAtKeyPath = yailDictionary.getObjectAtKeyPath((List) objYailListContents);
            return objectAtKeyPath == null ? obj3 : objectAtKeyPath;
        } catch (ClassCastException e) {
            throw new WrongType(e, "com.google.appinventor.components.runtime.util.YailDictionary.getObjectAtKeyPath(java.util.List)", 2, objYailListContents);
        }
    }

    public static YailList yailDictionaryWalk(Object obj, Object obj2) {
        try {
            YailObject yailObject = (YailObject) obj2;
            Object objYailListContents = yailListContents(obj);
            try {
                return YailList.makeList((List) YailDictionary.walkKeyPath(yailObject, (List) objYailListContents));
            } catch (ClassCastException e) {
                throw new WrongType(e, "com.google.appinventor.components.runtime.util.YailDictionary.walkKeyPath(com.google.appinventor.components.runtime.util.YailObject,java.util.List)", 2, objYailListContents);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "com.google.appinventor.components.runtime.util.YailDictionary.walkKeyPath(com.google.appinventor.components.runtime.util.YailObject,java.util.List)", 1, obj2);
        }
    }

    public static Object yailDictionaryRecursiveSet(Object obj, Object obj2, Object obj3) {
        return Scheme.applyToArgs.apply3(GetNamedPart.getNamedPart.apply2(obj2, Lit46), yailListContents(obj), obj3);
    }

    public static YailList yailDictionaryGetKeys(Object obj) {
        return YailList.makeList((Set) ((YailDictionary) obj).keySet());
    }

    public static YailList yailDictionaryGetValues(Object obj) {
        return YailList.makeList(((YailDictionary) obj).values());
    }

    public static boolean yailDictionaryIsKeyIn(Object obj, Object obj2) {
        return ((YailDictionary) obj2).containsKey(obj);
    }

    public static int yailDictionaryLength(Object obj) {
        return ((YailDictionary) obj).size();
    }

    public static Object yailDictionaryAlistToDict(Object obj) throws Throwable {
        Object objYailListContents = yailListContents(obj);
        while (true) {
            if (!lists.isNull(objYailListContents)) {
                if (isPairOk(lists.car.apply1(objYailListContents)) == Boolean.FALSE) {
                    signalRuntimeError(Format.formatToString(0, "List of pairs to dict: the list ~A is not a well-formed list of pairs", getDisplayRepresentation(obj)), "Invalid list of pairs");
                    break;
                }
                objYailListContents = lists.cdr.apply1(objYailListContents);
            }
        }
        try {
            return YailDictionary.alistToDict((YailList) obj);
        } catch (ClassCastException e) {
            throw new WrongType(e, "com.google.appinventor.components.runtime.util.YailDictionary.alistToDict(com.google.appinventor.components.runtime.util.YailList)", 1, obj);
        }
    }

    public static Object yailDictionaryDictToAlist(Object obj) {
        try {
            return YailDictionary.dictToAlist((YailDictionary) obj);
        } catch (ClassCastException e) {
            throw new WrongType(e, "com.google.appinventor.components.runtime.util.YailDictionary.dictToAlist(com.google.appinventor.components.runtime.util.YailDictionary)", 1, obj);
        }
    }

    public static Object yailDictionaryCopy(Object obj) {
        return ((YailDictionary) obj).clone();
    }

    public static void yailDictionaryCombineDicts(Object obj, Object obj2) {
        try {
            ((YailDictionary) obj).putAll((Map) obj2);
        } catch (ClassCastException e) {
            throw new WrongType(e, "com.google.appinventor.components.runtime.util.YailDictionary.putAll(java.util.Map)", 2, obj2);
        }
    }

    public static Object isYailDictionary(Object obj) {
        return obj instanceof YailDictionary ? Boolean.TRUE : Boolean.FALSE;
    }

    public static Object makeDisjunct(Object obj) throws Throwable {
        GenericProc genericProc = lists.cdr;
        if (lists.isNull(genericProc.apply1(obj))) {
            Object objApply1 = lists.car.apply1(obj);
            return Pattern.quote(objApply1 != null ? objApply1.toString() : null);
        }
        Object objApply12 = lists.car.apply1(obj);
        return strings.stringAppend(Pattern.quote(objApply12 != null ? objApply12.toString() : null), strings.stringAppend("|", makeDisjunct(genericProc.apply1(obj))));
    }

    public static Object array$To$List(Object obj) {
        try {
            return insertYailListHeader(LList.makeList((Object[]) obj, 0));
        } catch (ClassCastException e) {
            throw new WrongType(e, "gnu.lists.LList.makeList(java.lang.Object[],int)", 1, obj);
        }
    }

    public static int stringStartsAt(Object obj, Object obj2) {
        return obj.toString().indexOf(obj2.toString()) + 1;
    }

    public static Boolean stringContains(Object obj, Object obj2) {
        return stringStartsAt(obj, obj2) == 0 ? Boolean.FALSE : Boolean.TRUE;
    }

    public static Object stringContainsAny(Object obj, Object obj2) throws Throwable {
        for (Object objYailListContents = yailListContents(obj2); !lists.isNull(objYailListContents); objYailListContents = lists.cdr.apply1(objYailListContents)) {
            Boolean boolStringContains = stringContains(obj, lists.car.apply1(objYailListContents));
            if (boolStringContains != Boolean.FALSE) {
                return boolStringContains;
            }
        }
        return Boolean.FALSE;
    }

    public static Object stringContainsAll(Object obj, Object obj2) throws Throwable {
        for (Object objYailListContents = yailListContents(obj2); !lists.isNull(objYailListContents); objYailListContents = lists.cdr.apply1(objYailListContents)) {
            Boolean boolStringContains = stringContains(obj, lists.car.apply1(objYailListContents));
            if (boolStringContains == Boolean.FALSE) {
                return boolStringContains;
            }
        }
        return Boolean.TRUE;
    }

    public static Object stringSplitAtFirst(Object obj, Object obj2) {
        return array$To$List(obj.toString().split(Pattern.quote(obj2 == null ? null : obj2.toString()), 2));
    }

    public static Object stringSplitAtFirstOfAny(Object obj, Object obj2) throws Throwable {
        if (lists.isNull(yailListContents(obj2))) {
            return signalRuntimeError("split at first of any: The list of places to split at is empty.", "Invalid text operation");
        }
        String string = obj.toString();
        Object objMakeDisjunct = makeDisjunct(yailListContents(obj2));
        return array$To$List(string.split(objMakeDisjunct == null ? null : objMakeDisjunct.toString(), 2));
    }

    public static YailList stringSplit(Object obj, Object obj2) {
        return JavaStringUtils.split(obj == null ? null : obj.toString(), Pattern.quote(obj2 != null ? obj2.toString() : null));
    }

    public static Object stringSplitAtAny(Object obj, Object obj2) throws Throwable {
        if (lists.isNull(yailListContents(obj2))) {
            return signalRuntimeError("split at any: The list of places to split at is empty.", "Invalid text operation");
        }
        String string = obj.toString();
        Object objMakeDisjunct = makeDisjunct(yailListContents(obj2));
        return array$To$List(string.split(objMakeDisjunct == null ? null : objMakeDisjunct.toString(), -1));
    }

    public static Object stringSplitAtSpaces(Object obj) {
        return array$To$List(obj.toString().trim().split("\\s+", -1));
    }

    public static Object stringSubstring(Object obj, Object obj2, Object obj3) throws Throwable {
        try {
            int iStringLength = strings.stringLength((CharSequence) obj);
            NumberCompare numberCompare = Scheme.numLss;
            IntNum intNum = Lit24;
            Object objApply2 = numberCompare.apply2(obj2, intNum);
            Boolean bool = Boolean.FALSE;
            if (objApply2 != bool) {
                return signalRuntimeError(Format.formatToString(0, "Segment: Start is less than 1 (~A).", obj2), "Invalid text operation");
            }
            if (numberCompare.apply2(obj3, Lit25) != bool) {
                return signalRuntimeError(Format.formatToString(0, "Segment: Length is negative (~A).", obj3), "Invalid text operation");
            }
            NumberCompare numberCompare2 = Scheme.numGrt;
            AddOp addOp = AddOp.$Pl;
            AddOp addOp2 = AddOp.$Mn;
            if (numberCompare2.apply2(addOp.apply2(addOp2.apply2(obj2, intNum), obj3), Integer.valueOf(iStringLength)) != bool) {
                return signalRuntimeError(Format.formatToString(0, "Segment: Start (~A) + length (~A) - 1 exceeds text length (~A).", obj2, obj3, Integer.valueOf(iStringLength)), "Invalid text operation");
            }
            try {
                CharSequence charSequence = (CharSequence) obj;
                Object objApply22 = addOp2.apply2(obj2, intNum);
                try {
                    int iIntValue = ((Number) objApply22).intValue();
                    Object objApply23 = addOp.apply2(addOp2.apply2(obj2, intNum), obj3);
                    try {
                        return strings.substring(charSequence, iIntValue, ((Number) objApply23).intValue());
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "substring", 3, objApply23);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "substring", 2, objApply22);
                }
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "substring", 1, obj);
            }
        } catch (ClassCastException e4) {
            throw new WrongType(e4, "string-length", 1, obj);
        }
    }

    public static String stringTrim(Object obj) {
        return obj.toString().trim();
    }

    @Override // gnu.expr.ModuleBody
    public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) throws Throwable {
        switch (moduleMethod.selector) {
            case 26:
                return getPropertyAndCheck(obj, obj2, obj3);
            case 43:
                return lambda26(obj, obj2, obj3);
            case 55:
                return sanitizeReturnValue(obj, obj2, obj3);
            case 61:
                return signalRuntimeFormError(obj, obj2, obj3);
            case 65:
                return $PcSetSubformLayoutProperty$Ex(obj, obj2, obj3);
            case 68:
                return coerceArgs(obj, obj2, obj3);
            case 168:
                yailListSetItem$Ex(obj, obj2, obj3);
                return Values.empty;
            case 170:
                yailListInsertItem$Ex(obj, obj2, obj3);
                return Values.empty;
            case 178:
                return yailListReduce(obj, obj2, obj3);
            case 197:
                return merge(obj, obj2, obj3);
            case ErrorMessages.ERROR_NO_CAMERA_PERMISSION /* 202 */:
                return mergesortKey(obj, obj2, obj3);
            case 205:
                return listMin(obj, obj2, obj3);
            case 207:
                return listMax(obj, obj2, obj3);
            case 213:
                return back(obj, obj2, obj3);
            case 214:
                return yailListSlice(obj, obj2, obj3);
            case 218:
                return yailAlistLookup(obj, obj2, obj3);
            case 223:
                return yailDictionarySetPair(obj, obj2, obj3);
            case 225:
                return yailDictionaryLookup(obj, obj2, obj3);
            case 226:
                return yailDictionaryRecursiveLookup(obj, obj2, obj3);
            case YaVersion.YOUNG_ANDROID_VERSION /* 228 */:
                return yailDictionaryRecursiveSet(obj, obj2, obj3);
            case 249:
                return stringSubstring(obj, obj2, obj3);
            case Telnet.WILL /* 251 */:
                return stringReplaceAll(obj, obj2, obj3);
            default:
                return super.apply3(moduleMethod, obj, obj2, obj3);
        }
    }

    public static Object stringReplaceAll(Object obj, Object obj2, Object obj3) {
        return obj.toString().replaceAll(Pattern.quote(obj2.toString()), Matcher.quoteReplacement(obj3.toString()));
    }

    public static Object isStringEmpty(Object obj) {
        try {
            return strings.stringLength((CharSequence) obj) == 0 ? Boolean.TRUE : Boolean.FALSE;
        } catch (ClassCastException e) {
            throw new WrongType(e, "string-length", 1, obj);
        }
    }

    public static Object textDeobfuscate(Object obj, Object obj2) throws Throwable {
        frame8 frame8Var = new frame8();
        frame8Var.text = obj;
        frame8Var.lc = obj2;
        CallCC.callcc.apply1(frame8Var.cont$Fn16);
        Object objApply2 = Lit25;
        LList lListCons = LList.Empty;
        Object obj3 = frame8Var.text;
        try {
            Integer numValueOf = Integer.valueOf(strings.stringLength((CharSequence) obj3));
            while (true) {
                NumberCompare numberCompare = Scheme.numGEq;
                Object obj4 = frame8Var.text;
                try {
                    if (numberCompare.apply2(objApply2, Integer.valueOf(strings.stringLength((CharSequence) obj4))) != Boolean.FALSE) {
                        break;
                    }
                    Object obj5 = frame8Var.text;
                    try {
                        try {
                            int iIntValue = Char.make(strings.stringRef((CharSequence) obj5, ((Number) objApply2).intValue())).intValue();
                            BitwiseOp bitwiseOp = BitwiseOp.and;
                            BitwiseOp bitwiseOp2 = BitwiseOp.xor;
                            Object objApply22 = bitwiseOp2.apply2(Integer.valueOf(iIntValue), AddOp.$Mn.apply2(numValueOf, objApply2));
                            IntNum intNum = Lit47;
                            Object objApply23 = bitwiseOp.apply2(BitwiseOp.ior.apply2(BitwiseOp.ashiftl.apply2(bitwiseOp.apply2(bitwiseOp2.apply2(Integer.valueOf(iIntValue >> 8), objApply2), intNum), Lit48), bitwiseOp.apply2(objApply22, intNum)), intNum);
                            Object obj6 = frame8Var.lc;
                            try {
                                try {
                                    lListCons = lists.cons(bitwiseOp.apply2(bitwiseOp2.apply2(objApply23, Integer.valueOf(Char.make(strings.stringRef((CharSequence) obj6, ((Number) objApply2).intValue())).intValue())), intNum), lListCons);
                                    objApply2 = AddOp.$Pl.apply2(Lit24, objApply2);
                                } catch (ClassCastException e) {
                                    throw new WrongType(e, "string-ref", 2, objApply2);
                                }
                            } catch (ClassCastException e2) {
                                throw new WrongType(e2, "string-ref", 1, obj6);
                            }
                        } catch (ClassCastException e3) {
                            throw new WrongType(e3, "string-ref", 2, objApply2);
                        }
                    } catch (ClassCastException e4) {
                        throw new WrongType(e4, "string-ref", 1, obj5);
                    }
                } catch (ClassCastException e5) {
                    throw new WrongType(e5, "string-length", 1, obj4);
                }
            }
            Object objReverse = lists.reverse(lListCons);
            Object objMake = LList.Empty;
            while (objReverse != LList.Empty) {
                try {
                    Pair pair = (Pair) objReverse;
                    Object cdr = pair.getCdr();
                    Object car = pair.getCar();
                    try {
                        objMake = Pair.make(Char.make(((Number) car).intValue()), objMake);
                        objReverse = cdr;
                    } catch (ClassCastException e6) {
                        throw new WrongType(e6, "integer->char", 1, car);
                    }
                } catch (ClassCastException e7) {
                    throw new WrongType(e7, "arg0", -2, objReverse);
                }
            }
            return strings.list$To$String(LList.reverseInPlace(objMake));
        } catch (ClassCastException e8) {
            throw new WrongType(e8, "string-length", 1, obj3);
        }
    }

    public class frame8 extends ModuleBody {
        final ModuleMethod cont$Fn16 = new ModuleMethod(this, 13, runtime.Lit49, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        Object lc;
        Object text;

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 13 ? lambda19cont(obj) : super.apply1(moduleMethod, obj);
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 13) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }

        public Object lambda19cont(Object obj) {
            while (true) {
                Object obj2 = this.lc;
                try {
                    int iStringLength = strings.stringLength((CharSequence) obj2);
                    Object obj3 = this.text;
                    try {
                        if (iStringLength >= strings.stringLength((CharSequence) obj3)) {
                            return null;
                        }
                        Object obj4 = this.lc;
                        this.lc = strings.stringAppend(obj4, obj4);
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "string-length", 1, obj3);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "string-length", 1, obj2);
                }
            }
        }
    }

    public static String stringReplaceMappingsDictionary(Object obj, Object obj2) {
        try {
            return JavaStringUtils.replaceAllMappingsDictionaryOrder(obj == null ? null : obj.toString(), (Map) obj2);
        } catch (ClassCastException e) {
            throw new WrongType(e, "com.google.appinventor.components.runtime.util.JavaStringUtils.replaceAllMappingsDictionaryOrder(java.lang.String,java.util.Map)", 2, obj2);
        }
    }

    public static String stringReplaceMappingsLongestString(Object obj, Object obj2) {
        try {
            return JavaStringUtils.replaceAllMappingsLongestStringOrder(obj == null ? null : obj.toString(), (Map) obj2);
        } catch (ClassCastException e) {
            throw new WrongType(e, "com.google.appinventor.components.runtime.util.JavaStringUtils.replaceAllMappingsLongestStringOrder(java.lang.String,java.util.Map)", 2, obj2);
        }
    }

    public static String stringReplaceMappingsEarliestOccurrence(Object obj, Object obj2) {
        try {
            return JavaStringUtils.replaceAllMappingsEarliestOccurrenceOrder(obj == null ? null : obj.toString(), (Map) obj2);
        } catch (ClassCastException e) {
            throw new WrongType(e, "com.google.appinventor.components.runtime.util.JavaStringUtils.replaceAllMappingsEarliestOccurrenceOrder(java.lang.String,java.util.Map)", 2, obj2);
        }
    }

    public static Number makeExactYailInteger(Object obj) throws Throwable {
        Object objCoerceToNumber = coerceToNumber(obj);
        try {
            return numbers.exact(numbers.round(LangObjType.coerceRealNum(objCoerceToNumber)));
        } catch (ClassCastException e) {
            throw new WrongType(e, "round", 1, objCoerceToNumber);
        }
    }

    public static Object makeColor(Object obj) throws Throwable {
        Number numberMakeExactYailInteger;
        Number numberMakeExactYailInteger2 = makeExactYailInteger(yailListGetItem(obj, Lit24));
        Number numberMakeExactYailInteger3 = makeExactYailInteger(yailListGetItem(obj, Lit26));
        Number numberMakeExactYailInteger4 = makeExactYailInteger(yailListGetItem(obj, Lit52));
        if (yailListLength(obj) <= 3) {
            Object obj2 = $Stalpha$Mnopaque$St;
            try {
                numberMakeExactYailInteger = (Number) obj2;
            } catch (ClassCastException e) {
                throw new WrongType(e, "alpha", -2, obj2);
            }
        } else {
            numberMakeExactYailInteger = makeExactYailInteger(yailListGetItem(obj, Lit53));
        }
        BitwiseOp bitwiseOp = BitwiseOp.ior;
        BitwiseOp bitwiseOp2 = BitwiseOp.ashiftl;
        BitwiseOp bitwiseOp3 = BitwiseOp.and;
        return bitwiseOp.apply2(bitwiseOp.apply2(bitwiseOp.apply2(bitwiseOp2.apply2(bitwiseOp3.apply2(numberMakeExactYailInteger, $Stmax$Mncolor$Mncomponent$St), $Stcolor$Mnalpha$Mnposition$St), bitwiseOp2.apply2(bitwiseOp3.apply2(numberMakeExactYailInteger2, $Stmax$Mncolor$Mncomponent$St), $Stcolor$Mnred$Mnposition$St)), bitwiseOp2.apply2(bitwiseOp3.apply2(numberMakeExactYailInteger3, $Stmax$Mncolor$Mncomponent$St), $Stcolor$Mngreen$Mnposition$St)), bitwiseOp2.apply2(bitwiseOp3.apply2(numberMakeExactYailInteger4, $Stmax$Mncolor$Mncomponent$St), $Stcolor$Mnblue$Mnposition$St));
    }

    public static Object splitColor(Object obj) throws Throwable {
        Number numberMakeExactYailInteger = makeExactYailInteger(obj);
        BitwiseOp bitwiseOp = BitwiseOp.and;
        BitwiseOp bitwiseOp2 = BitwiseOp.ashiftr;
        return kawaList$To$YailList(LList.list4(bitwiseOp.apply2(bitwiseOp2.apply2(numberMakeExactYailInteger, $Stcolor$Mnred$Mnposition$St), $Stmax$Mncolor$Mncomponent$St), bitwiseOp.apply2(bitwiseOp2.apply2(numberMakeExactYailInteger, $Stcolor$Mngreen$Mnposition$St), $Stmax$Mncolor$Mncomponent$St), bitwiseOp.apply2(bitwiseOp2.apply2(numberMakeExactYailInteger, $Stcolor$Mnblue$Mnposition$St), $Stmax$Mncolor$Mncomponent$St), bitwiseOp.apply2(bitwiseOp2.apply2(numberMakeExactYailInteger, $Stcolor$Mnalpha$Mnposition$St), $Stmax$Mncolor$Mncomponent$St)));
    }

    public static void closeScreen() {
        Form.finishActivity();
    }

    public static void closeApplication() {
        Form.finishApplication();
    }

    public static void openAnotherScreen(Object obj) throws Throwable {
        Object objCoerceToString = coerceToString(obj);
        Form.switchForm(objCoerceToString == null ? null : objCoerceToString.toString());
    }

    public static void openAnotherScreenWithStartValue(Object obj, Object obj2) throws Throwable {
        Object objCoerceToString = coerceToString(obj);
        Form.switchFormWithStartValue(objCoerceToString == null ? null : objCoerceToString.toString(), obj2);
    }

    public static Object getStartValue() {
        return sanitizeComponentData(Form.getStartValue());
    }

    public static void closeScreenWithValue(Object obj) {
        Form.finishActivityWithResult(obj);
    }

    public static String getPlainStartText() {
        return Form.getStartText();
    }

    public static void closeScreenWithPlainText(Object obj) {
        Form.finishActivityWithTextResult(obj == null ? null : obj.toString());
    }

    public static String getServerAddressFromWifi() throws NoSuchFieldException, NoSuchMethodException, SecurityException {
        Object slotValue = SlotGet.getSlotValue(false, Scheme.applyToArgs.apply1(GetNamedPart.getNamedPart.apply2(((Context) $Stthis$Mnform$St).getSystemService(Context.WIFI_SERVICE), Lit55)), "ipAddress", "ipAddress", "getIpAddress", "isIpAddress", Scheme.instance);
        try {
            return Formatter.formatIpAddress(((Number) slotValue).intValue());
        } catch (ClassCastException e) {
            throw new WrongType(e, "android.text.format.Formatter.formatIpAddress(int)", 1, slotValue);
        }
    }

    public static Object inUi(Object obj, Object obj2) {
        frame9 frame9Var = new frame9();
        frame9Var.blockid = obj;
        frame9Var.promise = obj2;
        $Stthis$Mnis$Mnthe$Mnrepl$St = Boolean.TRUE;
        return Scheme.applyToArgs.apply2(GetNamedPart.getNamedPart.apply2($Stui$Mnhandler$St, Lit56), thread.runnable(frame9Var.lambda$Fn17));
    }

    public class frame9 extends ModuleBody {
        Object blockid;
        final ModuleMethod lambda$Fn17;
        Object promise;

        public frame9() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 14, null, 0);
            moduleMethod.setProperty("source-location", "/tmp/runtime15061256449536606169.scm:3566");
            this.lambda$Fn17 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) {
            return moduleMethod.selector == 14 ? lambda20() : super.apply0(moduleMethod);
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

        public Object lambda20() {
            Pair pairList2;
            String message;
            Object obj = this.blockid;
            try {
                try {
                    try {
                        pairList2 = LList.list2("OK", runtime.getDisplayRepresentation(misc.force(this.promise)));
                    } catch (StopBlocksExecution unused) {
                        pairList2 = LList.list2("OK", Boolean.FALSE);
                    }
                } catch (PermissionException e) {
                    e.printStackTrace();
                    pairList2 = LList.list2("NOK", strings.stringAppend("Failed due to missing permission: ", e.getPermissionNeeded()));
                } catch (YailRuntimeError e2) {
                    runtime.androidLog(e2.getMessage());
                    pairList2 = LList.list2("NOK", e2.getMessage());
                }
            } catch (Throwable th) {
                runtime.androidLog(th.getMessage());
                th.printStackTrace();
                if (th instanceof Error) {
                    message = th.toString();
                } else {
                    message = th.getMessage();
                }
                pairList2 = LList.list2("NOK", message);
            }
            return runtime.sendToBlock(obj, pairList2);
        }
    }

    public static Object sendToBlock(Object obj, Object obj2) throws Throwable {
        Object objApply1 = lists.car.apply1(obj2);
        Object objApply12 = lists.cadr.apply1(obj2);
        RetValManager.appendReturnValue(obj == null ? null : obj.toString(), objApply1 == null ? null : objApply1.toString(), objApply12 != null ? objApply12.toString() : null);
        return Values.empty;
    }

    public static Object clearCurrentForm() throws Throwable {
        if ($Stthis$Mnform$St == null) {
            return Values.empty;
        }
        clearInitThunks();
        resetCurrentFormEnvironment();
        EventDispatcher.unregisterAllEventsForDelegation();
        return Invoke.invoke.apply2($Stthis$Mnform$St, "clear");
    }

    public static Object setFormName(Object obj) {
        return Invoke.invoke.apply3($Stthis$Mnform$St, "setFormName", obj);
    }

    public static Object removeComponent(Object obj) {
        try {
            SimpleSymbol simpleSymbolString$To$Symbol = misc.string$To$Symbol((CharSequence) obj);
            Object objLookupInCurrentFormEnvironment = lookupInCurrentFormEnvironment(simpleSymbolString$To$Symbol);
            deleteFromCurrentFormEnvironment(simpleSymbolString$To$Symbol);
            return $Stthis$Mnform$St != null ? Invoke.invoke.apply3($Stthis$Mnform$St, "deleteComponent", objLookupInCurrentFormEnvironment) : Values.empty;
        } catch (ClassCastException e) {
            throw new WrongType(e, "string->symbol", 1, obj);
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) throws Throwable {
        int i = moduleMethod.selector;
        if (i == 33) {
            try {
                return addToCurrentFormEnvironment((Symbol) obj, obj2);
            } catch (ClassCastException e) {
                throw new WrongType(e, "add-to-current-form-environment", 1, obj);
            }
        }
        if (i == 34) {
            try {
                return lookupInCurrentFormEnvironment((Symbol) obj, obj2);
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "lookup-in-current-form-environment", 1, obj);
            }
        }
        if (i == 85) {
            return joinStrings(obj, obj2);
        }
        if (i == 86) {
            return stringReplace(obj, obj2);
        }
        if (i == 97) {
            return isYailEqual(obj, obj2);
        }
        if (i == 98) {
            return isYailAtomicEqual(obj, obj2);
        }
        if (i == 166) {
            return yailListIndex(obj, obj2);
        }
        if (i != 167) {
            switch (i) {
                case 19:
                    return addInitThunk(obj, obj2);
                case 24:
                    return getProperty$1(obj, obj2);
                case 60:
                    return signalRuntimeError(obj, obj2);
                case 66:
                    return generateRuntimeTypeError(obj, obj2);
                case 69:
                    return coerceArg(obj, obj2);
                case 73:
                    return coerceToEnum(obj, obj2);
                case 77:
                    return coerceToComponentOfType(obj, obj2);
                case 100:
                    return isYailNotEqual(obj, obj2) ? Boolean.TRUE : Boolean.FALSE;
                case 108:
                    return randomInteger(obj, obj2);
                case 110:
                    return yailDivide(obj, obj2);
                case 121:
                    return atan2Degrees(obj, obj2);
                case 126:
                    return formatAsDecimal(obj, obj2);
                case 145:
                    return sumMeanSquareDiff(obj, obj2);
                case 152:
                    setYailListContents$Ex(obj, obj2);
                    return Values.empty;
                case 169:
                    yailListRemoveItem$Ex(obj, obj2);
                    return Values.empty;
                case 171:
                    yailListAppend$Ex(obj, obj2);
                    return Values.empty;
                case 173:
                    return isYailListMember(obj, obj2);
                case 180:
                    return indexof(obj, obj2);
                case 181:
                    return isTypeLt(obj, obj2) ? Boolean.TRUE : Boolean.FALSE;
                case 182:
                    return isIsLt(obj, obj2);
                case 183:
                    return isIsEq(obj, obj2);
                case 184:
                    return isIsLeq(obj, obj2);
                case 185:
                    return isBooleanLt(obj, obj2);
                case 186:
                    return isBooleanEq(obj, obj2);
                case 187:
                    return isBooleanLeq(obj, obj2);
                case 188:
                    return isListLt(obj, obj2);
                case FullScreenVideoUtil.FULLSCREEN_VIDEO_DIALOG_FLAG /* 189 */:
                    return isListEq(obj, obj2);
                case 198:
                    return mergesort(obj, obj2);
                case 200:
                    return yailListSortComparator(obj, obj2);
                case 203:
                    return yailListSortKey(obj, obj2);
                case 206:
                    return yailListMinComparator(obj, obj2);
                case 208:
                    return yailListMaxComparator(obj, obj2);
                case 212:
                    return front(obj, obj2);
                case 217:
                    return yailNumberRange(obj, obj2);
                case 220:
                    return yailListJoinWithSeparator(obj, obj2);
                case 222:
                    return makeDictionaryPair(obj, obj2);
                case 224:
                    return yailDictionaryDeletePair(obj, obj2);
                case 227:
                    return yailDictionaryWalk(obj, obj2);
                case 231:
                    return yailDictionaryIsKeyIn(obj, obj2) ? Boolean.TRUE : Boolean.FALSE;
                case 236:
                    yailDictionaryCombineDicts(obj, obj2);
                    return Values.empty;
                case Optimizer.OPTIMIZATION_STANDARD /* 263 */:
                    openAnotherScreenWithStartValue(obj, obj2);
                    return Values.empty;
                case 269:
                    return inUi(obj, obj2);
                case 270:
                    return sendToBlock(obj, obj2);
                case 274:
                    return renameComponent(obj, obj2);
                default:
                    switch (i) {
                        case 38:
                            try {
                                try {
                                    return renameInCurrentFormEnvironment((Symbol) obj, (Symbol) obj2);
                                } catch (ClassCastException e3) {
                                    throw new WrongType(e3, "rename-in-current-form-environment", 2, obj2);
                                }
                            } catch (ClassCastException e4) {
                                throw new WrongType(e4, "rename-in-current-form-environment", 1, obj);
                            }
                        case 39:
                            try {
                                return addGlobalVarToCurrentFormEnvironment((Symbol) obj, obj2);
                            } catch (ClassCastException e5) {
                                throw new WrongType(e5, "add-global-var-to-current-form-environment", 1, obj);
                            }
                        case 40:
                            try {
                                return lookupGlobalVarInCurrentFormEnvironment((Symbol) obj, obj2);
                            } catch (ClassCastException e6) {
                                throw new WrongType(e6, "lookup-global-var-in-current-form-environment", 1, obj);
                            }
                        default:
                            switch (i) {
                                case 175:
                                    return yailForEach(obj, obj2);
                                case 176:
                                    return yailListMap(obj, obj2);
                                case 177:
                                    return yailListFilter(obj, obj2);
                                default:
                                    switch (i) {
                                        case FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_PLAY /* 191 */:
                                            return isListLeq(obj, obj2);
                                        case FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_PAUSE /* 192 */:
                                            return isComponentLt(obj, obj2);
                                        case FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_STOP /* 193 */:
                                            return isComponentEq(obj, obj2);
                                        case FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_SOURCE /* 194 */:
                                            return isComponentLeq(obj, obj2);
                                        case FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_FULLSCREEN /* 195 */:
                                            return take(obj, obj2);
                                        case FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_DURATION /* 196 */:
                                            return drop(obj, obj2);
                                        default:
                                            switch (i) {
                                                case 240:
                                                    return Integer.valueOf(stringStartsAt(obj, obj2));
                                                case LispEscapeFormat.ESCAPE_NORMAL /* 241 */:
                                                    return stringContains(obj, obj2);
                                                case LispEscapeFormat.ESCAPE_ALL /* 242 */:
                                                    return stringContainsAny(obj, obj2);
                                                case 243:
                                                    return stringContainsAll(obj, obj2);
                                                case 244:
                                                    return stringSplitAtFirst(obj, obj2);
                                                case 245:
                                                    return stringSplitAtFirstOfAny(obj, obj2);
                                                case 246:
                                                    return stringSplit(obj, obj2);
                                                case 247:
                                                    return stringSplitAtAny(obj, obj2);
                                                default:
                                                    switch (i) {
                                                        case Telnet.DO /* 253 */:
                                                            return textDeobfuscate(obj, obj2);
                                                        case Telnet.DONT /* 254 */:
                                                            return stringReplaceMappingsDictionary(obj, obj2);
                                                        case 255:
                                                            return stringReplaceMappingsLongestString(obj, obj2);
                                                        case 256:
                                                            return stringReplaceMappingsEarliestOccurrence(obj, obj2);
                                                        default:
                                                            return super.apply2(moduleMethod, obj, obj2);
                                                    }
                                            }
                                    }
                            }
                    }
            }
        }
        return yailListGetItem(obj, obj2);
    }

    public static Object renameComponent(Object obj, Object obj2) {
        try {
            try {
                return renameInCurrentFormEnvironment(misc.string$To$Symbol((CharSequence) obj), misc.string$To$Symbol((CharSequence) obj2));
            } catch (ClassCastException e) {
                throw new WrongType(e, "string->symbol", 1, obj2);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "string->symbol", 1, obj);
        }
    }

    public static void initRuntime() {
        setThisForm();
        $Stui$Mnhandler$St = new Handler();
    }

    @Override // gnu.expr.ModuleBody
    public Object apply0(ModuleMethod moduleMethod) throws Throwable {
        int i = moduleMethod.selector;
        if (i == 21) {
            clearInitThunks();
            return Values.empty;
        }
        if (i == 42) {
            resetCurrentFormEnvironment();
            return Values.empty;
        }
        if (i == 107) {
            return Double.valueOf(randomFraction());
        }
        if (i == 264) {
            return getStartValue();
        }
        if (i == 266) {
            return getPlainStartText();
        }
        if (i == 268) {
            return getServerAddressFromWifi();
        }
        if (i == 271) {
            return clearCurrentForm();
        }
        if (i == 260) {
            closeScreen();
            return Values.empty;
        }
        if (i == 261) {
            closeApplication();
            return Values.empty;
        }
        if (i == 275) {
            initRuntime();
            return Values.empty;
        }
        if (i != 276) {
            return super.apply0(moduleMethod);
        }
        setThisForm();
        return Values.empty;
    }

    public static void setThisForm() {
        $Stthis$Mnform$St = Form.getActiveForm();
    }

    public static Object clarify(Object obj) {
        return clarify1(yailListContents(obj));
    }

    public static Object clarify1(Object obj) {
        String strApply1;
        if (lists.isNull(obj)) {
            return LList.Empty;
        }
        GenericProc genericProc = lists.car;
        if (IsEqual.apply(genericProc.apply1(obj), "")) {
            strApply1 = "<empty>";
        } else {
            strApply1 = IsEqual.apply(genericProc.apply1(obj), " ") ? "<space>" : genericProc.apply1(obj);
        }
        return lists.cons(strApply1, clarify1(lists.cdr.apply1(obj)));
    }
}
