package com.niotron.muhammad_robi1996.V15_DATABASE;

import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.fragment.app.FragmentTransaction;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.AppInventorCompatActivity;
import com.google.appinventor.components.runtime.Clock;
import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.EventDispatcher;
import com.google.appinventor.components.runtime.Form;
import com.google.appinventor.components.runtime.HandlesEventDispatching;
import com.google.appinventor.components.runtime.HorizontalArrangement;
import com.google.appinventor.components.runtime.Image;
import com.google.appinventor.components.runtime.Label;
import com.google.appinventor.components.runtime.NiotronCardView;
import com.google.appinventor.components.runtime.NiotronColorUtils;
import com.google.appinventor.components.runtime.NiotronLinearProgressBar;
import com.google.appinventor.components.runtime.NiotronSecurity;
import com.google.appinventor.components.runtime.TinyDB;
import com.google.appinventor.components.runtime.VerticalArrangement;
import com.google.appinventor.components.runtime.Web;
import com.google.appinventor.components.runtime.WebViewer;
import com.google.appinventor.components.runtime.errors.PermissionException;
import com.google.appinventor.components.runtime.errors.StopBlocksExecution;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import com.google.appinventor.components.runtime.util.RetValManager;
import com.google.appinventor.components.runtime.util.RuntimeErrorAlert;
import com.google.youngandroid.a;
import com.google.youngandroid.runtime;
import com.puravidaapps.TaifunSettings;
import com.watermelonice.BrightnessTools.BrightnessTools;
import gnu.expr.Language;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.kawa.functions.Apply;
import gnu.kawa.functions.Format;
import gnu.kawa.functions.GetNamedPart;
import gnu.kawa.functions.IsEqual;
import gnu.kawa.reflect.Invoke;
import gnu.kawa.reflect.SlotGet;
import gnu.kawa.reflect.SlotSet;
import gnu.lists.Consumer;
import gnu.lists.FString;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.lists.PairWithPosition;
import gnu.lists.VoidConsumer;
import gnu.mapping.CallContext;
import gnu.mapping.Environment;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Symbol;
import gnu.mapping.Values;
import gnu.mapping.WrongType;
import gnu.math.IntNum;
import kawa.lang.Promise;
import kawa.lib.lists;
import kawa.lib.misc;
import kawa.lib.strings;
import kawa.standard.Scheme;

/* loaded from: classes2.dex */
public class ADMIN extends Form implements Runnable {
    public static final SimpleSymbol A;
    public static final FString A0;
    public static final FString A1;
    public static final FString A2;
    public static ADMIN ADMIN;
    public static final IntNum B;
    public static final SimpleSymbol B0;
    public static final SimpleSymbol B1;
    public static final FString B2;
    public static final SimpleSymbol C;
    public static final ModuleMethod C0 = null;
    public static final ModuleMethod C1 = null;
    public static final FString C2;
    public static final IntNum D;
    public static final SimpleSymbol D0;
    public static final FString D1;
    public static final SimpleSymbol D2;
    public static final SimpleSymbol E;
    public static final SimpleSymbol E0;
    public static final ModuleMethod E1 = null;
    public static final FString E2;
    public static final SimpleSymbol F;
    public static final SimpleSymbol F0;
    public static final FString F1;
    public static final FString F2;
    public static final SimpleSymbol G;
    public static final IntNum G0;
    public static final ModuleMethod G1 = null;
    public static final FString G2;
    public static final IntNum H;
    public static final FString H0;
    public static final SimpleSymbol I;
    public static final ModuleMethod I0 = null;
    public static final SimpleSymbol I1;
    public static final SimpleSymbol I2;
    public static final SimpleSymbol J;
    public static final FString J0;
    public static final FString J1;
    public static final SimpleSymbol J2;
    public static final IntNum K;
    public static final SimpleSymbol K0;
    public static final ModuleMethod K1 = null;
    public static final FString K2;
    public static final SimpleSymbol L;
    public static final ModuleMethod L0 = null;
    public static final SimpleSymbol L1;
    public static final FString L2;
    public static final SimpleSymbol M;
    public static final IntNum M0;
    public static final IntNum M1;
    public static final FString M2;
    public static final SimpleSymbol N;
    public static final SimpleSymbol N0;
    public static final PairWithPosition N1;
    public static final FString N2;
    public static final SimpleSymbol O;
    public static final SimpleSymbol O0;
    public static final SimpleSymbol O1;
    public static final FString O2;
    public static final SimpleSymbol P;
    public static final IntNum P0;
    public static final SimpleSymbol P1;
    public static final ModuleMethod P2 = null;
    public static final SimpleSymbol Q;
    public static final SimpleSymbol Q0;
    public static final SimpleSymbol Q1;
    public static final FString Q2;
    public static final SimpleSymbol R;
    public static final IntNum R0;
    public static final SimpleSymbol R1;
    public static final ModuleMethod R2 = null;
    public static final SimpleSymbol S;
    public static final FString S0;
    public static final PairWithPosition S1;
    public static final FString S2;
    public static final SimpleSymbol T;
    public static final ModuleMethod T0 = null;
    public static final SimpleSymbol T1;
    public static final FString T2;
    public static final SimpleSymbol U;
    public static final FString U0;
    public static final SimpleSymbol U1;
    public static final SimpleSymbol U2;
    public static final SimpleSymbol V;
    public static final SimpleSymbol V0;
    public static final FString V1;
    public static final SimpleSymbol V2;
    public static final SimpleSymbol W;
    public static final ModuleMethod W0 = null;
    public static final ModuleMethod W1 = null;
    public static final SimpleSymbol W2;
    public static final ModuleMethod X = null;
    public static final SimpleSymbol X0;
    public static final FString X1;
    public static final SimpleSymbol X2;
    public static final SimpleSymbol Y;
    public static final IntNum Y0;
    public static final ModuleMethod Y1 = null;
    public static final SimpleSymbol Y2;
    public static final SimpleSymbol Z;
    public static final FString Z0;
    public static final FString Z1;
    public static final SimpleSymbol Z2;

    /* renamed from: a, reason: collision with root package name */
    public static final SimpleSymbol f5354a;
    public static final SimpleSymbol a0;
    public static final ModuleMethod a1 = null;
    public static final SimpleSymbol a2;
    public static final SimpleSymbol a3;

    /* renamed from: b, reason: collision with root package name */
    public static final SimpleSymbol f5355b;
    public static final SimpleSymbol b0;
    public static final FString b1;
    public static final ModuleMethod b2 = null;
    public static final SimpleSymbol b3;
    public static final SimpleSymbol c;
    public static final PairWithPosition c0;
    public static final ModuleMethod c1 = null;
    public static final SimpleSymbol c2;
    public static final SimpleSymbol c3;
    public static final ModuleMethod d = null;
    public static final PairWithPosition d0;
    public static final IntNum d1;
    public static final FString d2;
    public static final SimpleSymbol d3;
    public static final SimpleSymbol e;
    public static final PairWithPosition e0;
    public static final IntNum e1;
    public static final ModuleMethod e2 = null;
    public static final SimpleSymbol e3;
    public static final ModuleMethod f = null;
    public static final PairWithPosition f0;
    public static final FString f1;
    public static final FString f2;
    public static final SimpleSymbol f3;

    /* renamed from: g, reason: collision with root package name */
    public static final SimpleSymbol f5356g;
    public static final SimpleSymbol g0;
    public static final ModuleMethod g1 = null;
    public static final FString g2;
    public static final SimpleSymbol g3;
    public static final ModuleMethod h = null;
    public static final SimpleSymbol h0;
    public static final FString h1;
    public static final SimpleSymbol h2;
    public static final SimpleSymbol h3;
    public static final SimpleSymbol i;
    public static final SimpleSymbol i0;
    public static final SimpleSymbol i1;
    public static final SimpleSymbol i2;
    public static final ModuleMethod j = null;
    public static final SimpleSymbol j0;
    public static final ModuleMethod j1 = null;
    public static final SimpleSymbol j2;
    public static final SimpleSymbol k;
    public static final SimpleSymbol k0;
    public static final SimpleSymbol k1;
    public static final SimpleSymbol k2;
    public static final SimpleSymbol l;
    public static final SimpleSymbol l0;
    public static final SimpleSymbol l1;
    public static final SimpleSymbol l2;
    public static final PairWithPosition m;
    public static final SimpleSymbol m0;
    public static final IntNum m1;
    public static final FString m2;
    public static final ModuleMethod n = null;
    public static final SimpleSymbol n0;
    public static final SimpleSymbol n1;
    public static final ModuleMethod n2 = null;
    public static final ModuleMethod o = null;
    public static final SimpleSymbol o0;
    public static final IntNum o1;
    public static final SimpleSymbol o2;
    public static final PairWithPosition p;
    public static final PairWithPosition p0;
    public static final SimpleSymbol p1;
    public static final FString p2;
    public static final SimpleSymbol q;
    public static final PairWithPosition q0;
    public static final IntNum q1;
    public static final ModuleMethod q2 = null;
    public static final ModuleMethod r = null;
    public static final PairWithPosition r0;
    public static final FString r1;
    public static final FString r2;
    public static final SimpleSymbol s;
    public static final PairWithPosition s0;
    public static final ModuleMethod s1 = null;
    public static final ModuleMethod s2 = null;
    public static final PairWithPosition t;
    public static final SimpleSymbol t0;
    public static final FString t1;
    public static final SimpleSymbol t2;
    public static final ModuleMethod u = null;
    public static final SimpleSymbol u0;
    public static final SimpleSymbol u1;
    public static final SimpleSymbol u2;
    public static final ModuleMethod v = null;
    public static final SimpleSymbol v0;
    public static final ModuleMethod v1 = null;
    public static final IntNum v2;
    public static final PairWithPosition w;
    public static final SimpleSymbol w0;
    public static final SimpleSymbol w1;
    public static final FString w2;
    public static final SimpleSymbol x;
    public static final SimpleSymbol x0;
    public static final SimpleSymbol x1;
    public static final ModuleMethod x2 = null;
    public static final IntNum y;
    public static final SimpleSymbol y0;
    public static final FString y1;
    public static final SimpleSymbol y2;
    public static final SimpleSymbol z;
    public static final SimpleSymbol z0;
    public static final ModuleMethod z1 = null;
    public static final SimpleSymbol z2;
    public Boolean $Stdebug$Mnform$St;
    public final ModuleMethod $define;
    public final ModuleMethod ADMIN$BackPressed;
    public final ModuleMethod ADMIN$Initialize;
    public BrightnessTools BrightnessTools1;
    public NiotronCardView Card_View1;
    public Clock Clock1;
    public final ModuleMethod Clock1$Timer;
    public NiotronColorUtils Color_Utils1;
    public HorizontalArrangement Horizontal_Arrangement1;
    public HorizontalArrangement Horizontal_Arrangement2;
    public Image Image1;
    public Label Label1;
    public Label LabelCEKKONTRAS;
    public Label LabelVOLUMECEK;
    public NiotronLinearProgressBar Linear_Progressbar1;
    public NiotronSecurity Security1;
    public TaifunSettings TaifunSettings1;
    public TinyDB Tiny_DBBrightnes;
    public TinyDB Tiny_DBVOLUME;
    public TinyDB Tiny_DBWARNA;
    public VerticalArrangement Vertical_ERROR;
    public Web WebBrightnes;
    public final ModuleMethod WebBrightnes$GotText;
    public Web WebVOLUME;
    public final ModuleMethod WebVOLUME$GotText;
    public WebViewer Web_View1;
    public final ModuleMethod Web_View1$ErrorOccurred;
    public final ModuleMethod Web_View1$ProgressChanged;
    public final ModuleMethod add$Mnto$Mncomponents;
    public final ModuleMethod add$Mnto$Mnevents;
    public final ModuleMethod add$Mnto$Mnform$Mndo$Mnafter$Mncreation;
    public final ModuleMethod add$Mnto$Mnform$Mnenvironment;
    public final ModuleMethod add$Mnto$Mnglobal$Mnvar$Mnenvironment;
    public final ModuleMethod add$Mnto$Mnglobal$Mnvars;
    public final ModuleMethod android$Mnlog$Mnform;
    public LList components$Mnto$Mncreate;
    public final ModuleMethod dispatchEvent;
    public final ModuleMethod dispatchGenericEvent;
    public LList events$Mnto$Mnregister;
    public LList form$Mndo$Mnafter$Mncreation;
    public Environment form$Mnenvironment;
    public Symbol form$Mnname$Mnsymbol;
    public final ModuleMethod get$Mnsimple$Mnname;
    public Environment global$Mnvar$Mnenvironment;
    public LList global$Mnvars$Mnto$Mncreate;
    public final ModuleMethod is$Mnbound$Mnin$Mnform$Mnenvironment;
    public final ModuleMethod lookup$Mnhandler;
    public final ModuleMethod lookup$Mnin$Mnform$Mnenvironment;
    public final ModuleMethod onCreate;
    public final ModuleMethod process$Mnexception;
    public final ModuleMethod send$Mnerror;

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("any");
        h3 = (SimpleSymbol) a.f("lookup-handler");
        g3 = (SimpleSymbol) a.f("dispatchGenericEvent");
        f3 = (SimpleSymbol) a.f("dispatchEvent");
        e3 = (SimpleSymbol) a.f("send-error");
        d3 = (SimpleSymbol) a.f("add-to-form-do-after-creation");
        c3 = (SimpleSymbol) a.f("add-to-global-vars");
        b3 = (SimpleSymbol) a.f("add-to-components");
        a3 = (SimpleSymbol) a.f("add-to-events");
        Z2 = (SimpleSymbol) a.f("add-to-global-var-environment");
        Y2 = (SimpleSymbol) a.f("is-bound-in-form-environment");
        X2 = (SimpleSymbol) a.f("lookup-in-form-environment");
        W2 = (SimpleSymbol) a.f("add-to-form-environment");
        V2 = (SimpleSymbol) a.f("android-log-form");
        U2 = (SimpleSymbol) a.f("get-simple-name");
        T2 = new FString("com.google.appinventor.components.runtime.NiotronColorUtils");
        S2 = new FString("com.google.appinventor.components.runtime.NiotronColorUtils");
        Q2 = new FString("com.google.appinventor.components.runtime.TinyDB");
        O2 = new FString("com.google.appinventor.components.runtime.TinyDB");
        N2 = new FString("com.google.appinventor.components.runtime.NiotronSecurity");
        M2 = new FString("com.google.appinventor.components.runtime.NiotronSecurity");
        L2 = new FString("com.google.appinventor.components.runtime.TinyDB");
        K2 = new FString("com.google.appinventor.components.runtime.TinyDB");
        J2 = (SimpleSymbol) a.f("WebVOLUME$GotText");
        I2 = (SimpleSymbol) a.f("VolumeMusic");
        G2 = new FString("com.google.appinventor.components.runtime.Web");
        F2 = new FString("com.google.appinventor.components.runtime.Web");
        E2 = new FString("com.puravidaapps.TaifunSettings");
        D2 = (SimpleSymbol) a.f("TaifunSettings1");
        C2 = new FString("com.puravidaapps.TaifunSettings");
        B2 = new FString("com.watermelonice.BrightnessTools.BrightnessTools");
        A2 = new FString("com.watermelonice.BrightnessTools.BrightnessTools");
        z2 = (SimpleSymbol) a.f("Timer");
        y2 = (SimpleSymbol) a.f("Clock1$Timer");
        w2 = new FString("com.google.appinventor.components.runtime.Clock");
        v2 = IntNum.make(500);
        u2 = (SimpleSymbol) a.f("TimerInterval");
        t2 = (SimpleSymbol) a.f("TimerAlwaysFires");
        r2 = new FString("com.google.appinventor.components.runtime.Clock");
        p2 = new FString("com.google.appinventor.components.runtime.TinyDB");
        o2 = (SimpleSymbol) a.f("Namespace");
        m2 = new FString("com.google.appinventor.components.runtime.TinyDB");
        l2 = (SimpleSymbol) a.f("GotText");
        k2 = (SimpleSymbol) a.f("WebBrightnes$GotText");
        j2 = (SimpleSymbol) a.f("Brightness");
        i2 = (SimpleSymbol) a.f("BrightnessTools1");
        h2 = (SimpleSymbol) a.f("$responseContent");
        g2 = new FString("com.google.appinventor.components.runtime.Web");
        f2 = new FString("com.google.appinventor.components.runtime.Web");
        d2 = new FString("com.google.appinventor.components.runtime.Label");
        c2 = (SimpleSymbol) a.f("FontBold");
        a2 = (SimpleSymbol) a.f("Label1");
        Z1 = new FString("com.google.appinventor.components.runtime.Label");
        X1 = new FString("com.google.appinventor.components.runtime.VerticalArrangement");
        V1 = new FString("com.google.appinventor.components.runtime.VerticalArrangement");
        U1 = (SimpleSymbol) a.f("ProgressChanged");
        T1 = (SimpleSymbol) a.f("Web_View1$ProgressChanged");
        LList lList = LList.Empty;
        S1 = PairWithPosition.make(simpleSymbol, PairWithPosition.make(simpleSymbol, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/ADMIN.yail", 700515), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/ADMIN.yail", 700510);
        R1 = (SimpleSymbol) a.f("$progress");
        Q1 = (SimpleSymbol) a.f("ErrorOccurred");
        P1 = (SimpleSymbol) a.f("Web_View1$ErrorOccurred");
        O1 = (SimpleSymbol) a.f("Vertical_ERROR");
        N1 = PairWithPosition.make(simpleSymbol, PairWithPosition.make(simpleSymbol, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/ADMIN.yail", 692323), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/ADMIN.yail", 692318);
        M1 = IntNum.make(-1);
        L1 = (SimpleSymbol) a.f("$errorCode");
        J1 = new FString("com.google.appinventor.components.runtime.WebViewer");
        I1 = (SimpleSymbol) a.f("ZoomEnabled");
        F1 = new FString("com.google.appinventor.components.runtime.WebViewer");
        D1 = new FString("com.google.appinventor.components.runtime.Label");
        B1 = (SimpleSymbol) a.f("LabelVOLUMECEK");
        A1 = new FString("com.google.appinventor.components.runtime.Label");
        y1 = new FString("com.google.appinventor.components.runtime.Label");
        x1 = (SimpleSymbol) a.f("Visible");
        w1 = (SimpleSymbol) a.f("Text");
        u1 = (SimpleSymbol) a.f("LabelCEKKONTRAS");
        t1 = new FString("com.google.appinventor.components.runtime.Label");
        r1 = new FString("com.google.appinventor.components.runtime.NiotronCardView");
        q1 = IntNum.make(5);
        p1 = (SimpleSymbol) a.f("StrokeWidth");
        o1 = IntNum.make(new int[]{-1, 0});
        n1 = (SimpleSymbol) a.f("StrokeColor");
        m1 = IntNum.make(20);
        l1 = (SimpleSymbol) a.f("Radius");
        k1 = (SimpleSymbol) a.f("CompatPadding");
        i1 = (SimpleSymbol) a.f("Card_View1");
        h1 = new FString("com.google.appinventor.components.runtime.NiotronCardView");
        f1 = new FString("com.google.appinventor.components.runtime.Image");
        e1 = IntNum.make(-1020);
        d1 = IntNum.make(-1010);
        b1 = new FString("com.google.appinventor.components.runtime.Image");
        Z0 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        Y0 = IntNum.make(-1010);
        X0 = (SimpleSymbol) a.f("Height");
        V0 = (SimpleSymbol) a.f("Horizontal_Arrangement2");
        U0 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        S0 = new FString("com.google.appinventor.components.runtime.NiotronLinearProgressBar");
        R0 = IntNum.make(new int[]{-5829, 0});
        Q0 = (SimpleSymbol) a.f("ProgressColor");
        P0 = IntNum.make(100);
        O0 = (SimpleSymbol) a.f("Max");
        N0 = (SimpleSymbol) a.f("Indeterminate");
        M0 = IntNum.make(new int[]{-769226, 0});
        K0 = (SimpleSymbol) a.f("Linear_Progressbar1");
        J0 = new FString("com.google.appinventor.components.runtime.NiotronLinearProgressBar");
        H0 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        G0 = IntNum.make(-2);
        F0 = (SimpleSymbol) a.f("Width");
        E0 = (SimpleSymbol) a.f("HeihPadding");
        D0 = (SimpleSymbol) a.f("HeihMargin");
        B0 = (SimpleSymbol) a.f("Horizontal_Arrangement1");
        A0 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        z0 = (SimpleSymbol) a.f("BackPressed");
        y0 = (SimpleSymbol) a.f("ADMIN$BackPressed");
        x0 = (SimpleSymbol) a.f("Initialize");
        w0 = (SimpleSymbol) a.f("ADMIN$Initialize");
        v0 = (SimpleSymbol) a.f("WebBrightnes");
        u0 = (SimpleSymbol) a.f("TimerEnabled");
        t0 = (SimpleSymbol) a.f("Clock1");
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f(PropertyTypeConstants.PROPERTY_TYPE_TEXT);
        F = simpleSymbol2;
        s0 = PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/ADMIN.yail", 144465);
        r0 = PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/ADMIN.yail", 144455);
        q0 = PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/ADMIN.yail", 144445);
        p0 = PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/ADMIN.yail", 144435);
        o0 = (SimpleSymbol) a.f("BASE64Decode");
        n0 = (SimpleSymbol) a.f("Security1");
        m0 = (SimpleSymbol) a.f("GoToUrl");
        l0 = (SimpleSymbol) a.f("Web_View1");
        k0 = (SimpleSymbol) a.f("Picture");
        j0 = (SimpleSymbol) a.f("Image1");
        i0 = (SimpleSymbol) a.f("Get");
        h0 = (SimpleSymbol) a.f("Url");
        g0 = (SimpleSymbol) a.f("WebVOLUME");
        f0 = PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/ADMIN.yail", 143812);
        e0 = PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/ADMIN.yail", 143804), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/ADMIN.yail", 143798);
        d0 = PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/ADMIN.yail", 143579);
        c0 = PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/ADMIN.yail", 143571), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/ADMIN.yail", 143565);
        b0 = (SimpleSymbol) a.f("GetValue");
        a0 = (SimpleSymbol) a.f("Tiny_DBWARNA");
        Z = (SimpleSymbol) a.f("HexToColor");
        Y = (SimpleSymbol) a.f("Color_Utils1");
        W = (SimpleSymbol) a.f("TitleVisible");
        V = (SimpleSymbol) a.f("Title");
        U = (SimpleSymbol) a.f("Theme");
        T = (SimpleSymbol) a.f("StatusBarLightIcons");
        S = (SimpleSymbol) a.f("Sizing");
        R = (SimpleSymbol) a.f("ShowStatusBar");
        Q = (SimpleSymbol) a.f("ShowOptionsMenu");
        P = (SimpleSymbol) a.f("ShowListsAsJson");
        O = (SimpleSymbol) a.f(PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN);
        N = (SimpleSymbol) a.f("ShowAboutInMenu");
        M = (SimpleSymbol) a.f("ScreenOrientation");
        L = (SimpleSymbol) a.f("OpenScreenAnimation");
        K = IntNum.make(new int[]{-16602892, 0});
        J = (SimpleSymbol) a.f("NavigationBarColor");
        I = (SimpleSymbol) a.f("CloseScreenAnimation");
        H = IntNum.make(new int[]{-16602892, 0});
        G = (SimpleSymbol) a.f("BackgroundColor");
        E = (SimpleSymbol) a.f("AppName");
        D = IntNum.make(2);
        C = (SimpleSymbol) a.f("AlignVertical");
        B = IntNum.make(3);
        A = (SimpleSymbol) a.f("AlignHorizontal");
        z = (SimpleSymbol) a.f("number");
        y = IntNum.make(new int[]{-14382849, 0});
        x = (SimpleSymbol) a.f("AccentColor");
        w = PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/ADMIN.yail", 45195), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/ADMIN.yail", 45189);
        t = PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/ADMIN.yail", 45195), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/ADMIN.yail", 45189);
        s = (SimpleSymbol) a.f("Tiny_DBVOLUME");
        q = (SimpleSymbol) a.f("p$VOLUME");
        p = PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/ADMIN.yail", 41112), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/ADMIN.yail", 41106);
        m = PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/ADMIN.yail", 41112), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/ADMIN.yail", 41106);
        l = (SimpleSymbol) a.f("StoreValue");
        k = (SimpleSymbol) a.f("Tiny_DBBrightnes");
        i = (SimpleSymbol) a.f("p$brightness");
        f5356g = (SimpleSymbol) a.f("g$TAMPUNG_DATA_VOLUME");
        e = (SimpleSymbol) a.f("g$TAMPUNG_DATA_Brightness2");
        c = (SimpleSymbol) a.f("*the-null-value*");
        f5355b = (SimpleSymbol) a.f("getMessage");
        f5354a = (SimpleSymbol) a.f("ADMIN");
    }

    public ADMIN() {
        ModuleInfo.register(this);
        frame frameVar = new frame();
        frameVar.c = this;
        this.get$Mnsimple$Mnname = new ModuleMethod(frameVar, 1, U2, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.onCreate = new ModuleMethod(frameVar, 2, "onCreate", FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.android$Mnlog$Mnform = new ModuleMethod(frameVar, 3, V2, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.add$Mnto$Mnform$Mnenvironment = new ModuleMethod(frameVar, 4, W2, 8194);
        this.lookup$Mnin$Mnform$Mnenvironment = new ModuleMethod(frameVar, 5, X2, 8193);
        this.is$Mnbound$Mnin$Mnform$Mnenvironment = new ModuleMethod(frameVar, 7, Y2, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.add$Mnto$Mnglobal$Mnvar$Mnenvironment = new ModuleMethod(frameVar, 8, Z2, 8194);
        this.add$Mnto$Mnevents = new ModuleMethod(frameVar, 9, a3, 8194);
        this.add$Mnto$Mncomponents = new ModuleMethod(frameVar, 10, b3, 16388);
        this.add$Mnto$Mnglobal$Mnvars = new ModuleMethod(frameVar, 11, c3, 8194);
        this.add$Mnto$Mnform$Mndo$Mnafter$Mncreation = new ModuleMethod(frameVar, 12, d3, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.send$Mnerror = new ModuleMethod(frameVar, 13, e3, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.process$Mnexception = new ModuleMethod(frameVar, 14, "process-exception", FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.dispatchEvent = new ModuleMethod(frameVar, 15, f3, 16388);
        this.dispatchGenericEvent = new ModuleMethod(frameVar, 16, g3, 16388);
        this.lookup$Mnhandler = new ModuleMethod(frameVar, 17, h3, 8194);
        ModuleMethod moduleMethod = new ModuleMethod(frameVar, 18, null, 0);
        moduleMethod.setProperty("source-location", "/tmp/runtime15061256449536606169.scm:634");
        d = moduleMethod;
        this.$define = new ModuleMethod(frameVar, 19, "$define", 0);
        f = new ModuleMethod(frameVar, 20, null, 0);
        h = new ModuleMethod(frameVar, 21, null, 0);
        j = new ModuleMethod(frameVar, 22, null, 0);
        o = new ModuleMethod(frameVar, 23, null, 0);
        n = new ModuleMethod(frameVar, 24, null, 0);
        r = new ModuleMethod(frameVar, 25, null, 0);
        v = new ModuleMethod(frameVar, 26, null, 0);
        u = new ModuleMethod(frameVar, 27, null, 0);
        X = new ModuleMethod(frameVar, 28, null, 0);
        this.ADMIN$Initialize = new ModuleMethod(frameVar, 29, w0, 0);
        this.ADMIN$BackPressed = new ModuleMethod(frameVar, 30, y0, 0);
        C0 = new ModuleMethod(frameVar, 31, null, 0);
        I0 = new ModuleMethod(frameVar, 32, null, 0);
        L0 = new ModuleMethod(frameVar, 33, null, 0);
        T0 = new ModuleMethod(frameVar, 34, null, 0);
        W0 = new ModuleMethod(frameVar, 35, null, 0);
        a1 = new ModuleMethod(frameVar, 36, null, 0);
        c1 = new ModuleMethod(frameVar, 37, null, 0);
        g1 = new ModuleMethod(frameVar, 38, null, 0);
        j1 = new ModuleMethod(frameVar, 39, null, 0);
        s1 = new ModuleMethod(frameVar, 40, null, 0);
        v1 = new ModuleMethod(frameVar, 41, null, 0);
        z1 = new ModuleMethod(frameVar, 42, null, 0);
        C1 = new ModuleMethod(frameVar, 43, null, 0);
        E1 = new ModuleMethod(frameVar, 44, null, 0);
        G1 = new ModuleMethod(frameVar, 45, null, 0);
        K1 = new ModuleMethod(frameVar, 46, null, 0);
        this.Web_View1$ErrorOccurred = new ModuleMethod(frameVar, 47, P1, 12291);
        this.Web_View1$ProgressChanged = new ModuleMethod(frameVar, 48, T1, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        W1 = new ModuleMethod(frameVar, 49, null, 0);
        Y1 = new ModuleMethod(frameVar, 50, null, 0);
        b2 = new ModuleMethod(frameVar, 51, null, 0);
        e2 = new ModuleMethod(frameVar, 52, null, 0);
        this.WebBrightnes$GotText = new ModuleMethod(frameVar, 53, k2, 16388);
        n2 = new ModuleMethod(frameVar, 54, null, 0);
        q2 = new ModuleMethod(frameVar, 55, null, 0);
        s2 = new ModuleMethod(frameVar, 56, null, 0);
        x2 = new ModuleMethod(frameVar, 57, null, 0);
        this.Clock1$Timer = new ModuleMethod(frameVar, 58, y2, 0);
        this.WebVOLUME$GotText = new ModuleMethod(frameVar, 59, J2, 16388);
        P2 = new ModuleMethod(frameVar, 60, null, 0);
        R2 = new ModuleMethod(frameVar, 61, null, 0);
    }

    public void androidLogForm(Object obj) {
    }

    public Object lookupInFormEnvironment(Symbol symbol) {
        return lookupInFormEnvironment(symbol, Boolean.FALSE);
    }

    @Override // java.lang.Runnable
    public void run() {
        CallContext callContext = CallContext.getInstance();
        Consumer consumer = callContext.consumer;
        callContext.consumer = VoidConsumer.instance;
        try {
            run(callContext);
            th = null;
        } catch (Throwable th) {
            th = th;
        }
        ModuleBody.runCleanup(callContext, th, consumer);
    }

    public final void run(CallContext callContext) {
        Object obj;
        Symbol symbol;
        Object obj2 = Y;
        Object obj3 = a0;
        Object obj4 = n0;
        Object obj5 = s;
        Symbol symbol2 = J2;
        Object obj6 = D2;
        Object obj7 = i2;
        Symbol symbol3 = y2;
        Object obj8 = k;
        Object obj9 = l2;
        Symbol symbol4 = k2;
        Object obj10 = a2;
        Symbol symbol5 = T1;
        Consumer consumer = callContext.consumer;
        runtime runtimeVar = runtime.$instance;
        runtimeVar.run();
        Boolean bool = Boolean.FALSE;
        this.$Stdebug$Mnform$St = bool;
        SimpleSymbol simpleSymbol = f5354a;
        this.form$Mnenvironment = Environment.make(simpleSymbol.toString());
        FString fStringStringAppend = strings.stringAppend(simpleSymbol.toString(), "-global-vars");
        this.global$Mnvar$Mnenvironment = Environment.make(fStringStringAppend == null ? null : fStringStringAppend.toString());
        ADMIN = null;
        this.form$Mnname$Mnsymbol = simpleSymbol;
        LList lList = LList.Empty;
        this.events$Mnto$Mnregister = lList;
        this.components$Mnto$Mncreate = lList;
        this.global$Mnvars$Mnto$Mncreate = lList;
        this.form$Mndo$Mnafter$Mncreation = lList;
        runtimeVar.run();
        Object obj11 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        SimpleSymbol simpleSymbol2 = e;
        if (obj11 != bool) {
            Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(simpleSymbol2, ""), consumer);
        } else {
            addToGlobalVars(simpleSymbol2, f);
        }
        Object obj12 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        SimpleSymbol simpleSymbol3 = f5356g;
        if (obj12 != bool) {
            Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(simpleSymbol3, ""), consumer);
        } else {
            addToGlobalVars(simpleSymbol3, h);
        }
        Object obj13 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        SimpleSymbol simpleSymbol4 = i;
        if (obj13 != bool) {
            Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(simpleSymbol4, j), consumer);
        } else {
            addToGlobalVars(simpleSymbol4, n);
        }
        Object obj14 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        SimpleSymbol simpleSymbol5 = q;
        if (obj14 != bool) {
            Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(simpleSymbol5, r), consumer);
        } else {
            addToGlobalVars(simpleSymbol5, u);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            SimpleSymbol simpleSymbol6 = x;
            IntNum intNum = y;
            obj = obj7;
            SimpleSymbol simpleSymbol7 = z;
            runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol6, intNum, simpleSymbol7);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, A, B, simpleSymbol7);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, C, D, simpleSymbol7);
            SimpleSymbol simpleSymbol8 = E;
            symbol = symbol3;
            SimpleSymbol simpleSymbol9 = F;
            runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol8, "RDEV_EXAM_V9", simpleSymbol9);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, G, H, simpleSymbol7);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, I, "slidehorizontal", simpleSymbol9);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, J, K, simpleSymbol7);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, L, "fade", simpleSymbol9);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, M, "portrait", simpleSymbol9);
            SimpleSymbol simpleSymbol10 = N;
            SimpleSymbol simpleSymbol11 = O;
            runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol10, bool, simpleSymbol11);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, P, Boolean.TRUE, simpleSymbol11);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, Q, bool, simpleSymbol11);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, R, bool, simpleSymbol11);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, S, "Responsive", simpleSymbol9);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, T, bool, simpleSymbol11);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, U, "Classic", simpleSymbol9);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, V, "ADMIN", simpleSymbol9);
            Values.writeValues(runtime.setAndCoerceProperty$Ex(simpleSymbol, W, bool, simpleSymbol11), consumer);
        } else {
            obj = obj7;
            symbol = symbol3;
            addToFormDoAfterCreation(new Promise(X));
        }
        Object obj15 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Symbol symbol6 = w0;
        if (obj15 != bool) {
            runtime.addToCurrentFormEnvironment(symbol6, this.ADMIN$Initialize);
        } else {
            addToFormEnvironment(symbol6, this.ADMIN$Initialize);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "ADMIN", "Initialize");
        } else {
            addToEvents(simpleSymbol, x0);
        }
        Object obj16 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Symbol symbol7 = y0;
        if (obj16 != bool) {
            runtime.addToCurrentFormEnvironment(symbol7, this.ADMIN$BackPressed);
        } else {
            addToFormEnvironment(symbol7, this.ADMIN$BackPressed);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "ADMIN", "BackPressed");
        } else {
            addToEvents(simpleSymbol, z0);
        }
        this.Horizontal_Arrangement1 = null;
        Object obj17 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj18 = B0;
        if (obj17 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, A0, obj18, C0), consumer);
        } else {
            addToComponents(simpleSymbol, H0, obj18, I0);
        }
        this.Linear_Progressbar1 = null;
        Object obj19 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj20 = K0;
        if (obj19 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj18, J0, obj20, L0), consumer);
        } else {
            addToComponents(obj18, S0, obj20, T0);
        }
        this.Horizontal_Arrangement2 = null;
        Object obj21 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj22 = V0;
        if (obj21 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, U0, obj22, W0), consumer);
        } else {
            addToComponents(simpleSymbol, Z0, obj22, a1);
        }
        this.Image1 = null;
        Object obj23 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj24 = j0;
        if (obj23 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj22, b1, obj24, c1), consumer);
        } else {
            addToComponents(obj22, f1, obj24, g1);
        }
        this.Card_View1 = null;
        Object obj25 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj26 = i1;
        if (obj25 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, h1, obj26, j1), consumer);
        } else {
            addToComponents(simpleSymbol, r1, obj26, s1);
        }
        this.LabelCEKKONTRAS = null;
        Object obj27 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj28 = u1;
        if (obj27 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj26, t1, obj28, v1), consumer);
        } else {
            addToComponents(obj26, y1, obj28, z1);
        }
        this.LabelVOLUMECEK = null;
        Object obj29 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj30 = B1;
        if (obj29 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj26, A1, obj30, C1), consumer);
        } else {
            addToComponents(obj26, D1, obj30, E1);
        }
        this.Web_View1 = null;
        Object obj31 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj32 = l0;
        if (obj31 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj26, F1, obj32, G1), consumer);
        } else {
            addToComponents(obj26, J1, obj32, K1);
        }
        Object obj33 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Symbol symbol8 = P1;
        if (obj33 != bool) {
            runtime.addToCurrentFormEnvironment(symbol8, this.Web_View1$ErrorOccurred);
        } else {
            addToFormEnvironment(symbol8, this.Web_View1$ErrorOccurred);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Web_View1", "ErrorOccurred");
        } else {
            addToEvents(obj32, Q1);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(symbol5, this.Web_View1$ProgressChanged);
        } else {
            addToFormEnvironment(symbol5, this.Web_View1$ProgressChanged);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Web_View1", "ProgressChanged");
        } else {
            addToEvents(obj32, U1);
        }
        this.Vertical_ERROR = null;
        Object obj34 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj35 = O1;
        if (obj34 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, V1, obj35, W1), consumer);
        } else {
            addToComponents(simpleSymbol, X1, obj35, Y1);
        }
        this.Label1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj35, Z1, obj10, b2), consumer);
        } else {
            addToComponents(obj35, d2, obj10, e2);
        }
        this.WebBrightnes = null;
        Object obj36 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj37 = v0;
        if (obj36 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, f2, obj37, bool), consumer);
        } else {
            addToComponents(simpleSymbol, g2, obj37, bool);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(symbol4, this.WebBrightnes$GotText);
        } else {
            addToFormEnvironment(symbol4, this.WebBrightnes$GotText);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "WebBrightnes", "GotText");
        } else {
            addToEvents(obj37, obj9);
        }
        this.Tiny_DBBrightnes = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, m2, obj8, n2), consumer);
        } else {
            addToComponents(simpleSymbol, p2, obj8, q2);
        }
        this.Clock1 = null;
        Object obj38 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj39 = t0;
        if (obj38 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, r2, obj39, s2), consumer);
        } else {
            addToComponents(simpleSymbol, w2, obj39, x2);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(symbol, this.Clock1$Timer);
        } else {
            addToFormEnvironment(symbol, this.Clock1$Timer);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Clock1", "Timer");
        } else {
            addToEvents(obj39, z2);
        }
        this.BrightnessTools1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, A2, obj, bool), consumer);
        } else {
            addToComponents(simpleSymbol, B2, obj, bool);
        }
        this.TaifunSettings1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, C2, obj6, bool), consumer);
        } else {
            addToComponents(simpleSymbol, E2, obj6, bool);
        }
        this.WebVOLUME = null;
        Object obj40 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj41 = g0;
        if (obj40 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, F2, obj41, bool), consumer);
        } else {
            addToComponents(simpleSymbol, G2, obj41, bool);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(symbol2, this.WebVOLUME$GotText);
        } else {
            addToFormEnvironment(symbol2, this.WebVOLUME$GotText);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "WebVOLUME", "GotText");
        } else {
            addToEvents(obj41, obj9);
        }
        this.Tiny_DBVOLUME = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, K2, obj5, bool), consumer);
        } else {
            addToComponents(simpleSymbol, L2, obj5, bool);
        }
        this.Security1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, M2, obj4, bool), consumer);
        } else {
            addToComponents(simpleSymbol, N2, obj4, bool);
        }
        this.Tiny_DBWARNA = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, O2, obj3, P2), consumer);
        } else {
            addToComponents(simpleSymbol, Q2, obj3, R2);
        }
        this.Color_Utils1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, S2, obj2, bool), consumer);
        } else {
            addToComponents(simpleSymbol, T2, obj2, bool);
        }
        runtime.initRuntime();
    }

    public class frame extends ModuleBody {
        public ADMIN c;

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            return moduleMethod.selector == 47 ? this.c.Web_View1$ErrorOccurred(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
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

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) throws Throwable {
            switch (moduleMethod.selector) {
                case 18:
                    ADMIN admin = ADMIN.ADMIN;
                    return null;
                case 19:
                    this.c.$define();
                    return Values.empty;
                case 20:
                    ADMIN admin2 = ADMIN.ADMIN;
                    return "";
                case 21:
                    ADMIN admin3 = ADMIN.ADMIN;
                    return "";
                case 22:
                    return runtime.callComponentMethod(ADMIN.k, ADMIN.l, LList.list2("kontras", runtime.lookupGlobalVarInCurrentFormEnvironment(ADMIN.e, runtime.$Stthe$Mnnull$Mnvalue$St)), ADMIN.m);
                case 23:
                    return runtime.callComponentMethod(ADMIN.k, ADMIN.l, LList.list2("kontras", runtime.lookupGlobalVarInCurrentFormEnvironment(ADMIN.e, runtime.$Stthe$Mnnull$Mnvalue$St)), ADMIN.p);
                case 24:
                    return ADMIN.o;
                case 25:
                    return runtime.callComponentMethod(ADMIN.s, ADMIN.l, LList.list2("volume", runtime.lookupGlobalVarInCurrentFormEnvironment(ADMIN.f5356g, runtime.$Stthe$Mnnull$Mnvalue$St)), ADMIN.t);
                case 26:
                    return runtime.callComponentMethod(ADMIN.s, ADMIN.l, LList.list2("volume", runtime.lookupGlobalVarInCurrentFormEnvironment(ADMIN.f5356g, runtime.$Stthe$Mnnull$Mnvalue$St)), ADMIN.w);
                case 27:
                    return ADMIN.v;
                case 28:
                    SimpleSymbol simpleSymbol = ADMIN.f5354a;
                    SimpleSymbol simpleSymbol2 = ADMIN.x;
                    IntNum intNum = ADMIN.y;
                    SimpleSymbol simpleSymbol3 = ADMIN.z;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol2, intNum, simpleSymbol3);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, ADMIN.A, ADMIN.B, simpleSymbol3);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, ADMIN.C, ADMIN.D, simpleSymbol3);
                    SimpleSymbol simpleSymbol4 = ADMIN.E;
                    SimpleSymbol simpleSymbol5 = ADMIN.F;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol4, "RDEV_EXAM_V9", simpleSymbol5);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, ADMIN.G, ADMIN.H, simpleSymbol3);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, ADMIN.I, "slidehorizontal", simpleSymbol5);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, ADMIN.J, ADMIN.K, simpleSymbol3);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, ADMIN.L, "fade", simpleSymbol5);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, ADMIN.M, "portrait", simpleSymbol5);
                    Boolean bool = Boolean.FALSE;
                    SimpleSymbol simpleSymbol6 = ADMIN.N;
                    SimpleSymbol simpleSymbol7 = ADMIN.O;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol6, bool, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, ADMIN.P, Boolean.TRUE, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, ADMIN.Q, bool, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, ADMIN.R, bool, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, ADMIN.S, "Responsive", simpleSymbol5);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, ADMIN.T, bool, simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, ADMIN.U, "Classic", simpleSymbol5);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol, ADMIN.V, "ADMIN", simpleSymbol5);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol, ADMIN.W, bool, simpleSymbol7);
                case 29:
                    return this.c.ADMIN$Initialize();
                case 30:
                    return this.c.ADMIN$BackPressed();
                case 31:
                    SimpleSymbol simpleSymbol8 = ADMIN.B0;
                    SimpleSymbol simpleSymbol9 = ADMIN.A;
                    IntNum intNum2 = ADMIN.B;
                    SimpleSymbol simpleSymbol10 = ADMIN.z;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, simpleSymbol9, intNum2, simpleSymbol10);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, ADMIN.C, ADMIN.D, simpleSymbol10);
                    SimpleSymbol simpleSymbol11 = ADMIN.D0;
                    SimpleSymbol simpleSymbol12 = ADMIN.F;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, simpleSymbol11, "0,0,0,0", simpleSymbol12);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, ADMIN.E0, "0,0,0,0", simpleSymbol12);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol8, ADMIN.F0, ADMIN.G0, simpleSymbol10);
                case 32:
                    SimpleSymbol simpleSymbol13 = ADMIN.B0;
                    SimpleSymbol simpleSymbol14 = ADMIN.A;
                    IntNum intNum3 = ADMIN.B;
                    SimpleSymbol simpleSymbol15 = ADMIN.z;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol13, simpleSymbol14, intNum3, simpleSymbol15);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol13, ADMIN.C, ADMIN.D, simpleSymbol15);
                    SimpleSymbol simpleSymbol16 = ADMIN.D0;
                    SimpleSymbol simpleSymbol17 = ADMIN.F;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol13, simpleSymbol16, "0,0,0,0", simpleSymbol17);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol13, ADMIN.E0, "0,0,0,0", simpleSymbol17);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol13, ADMIN.F0, ADMIN.G0, simpleSymbol15);
                case 33:
                    SimpleSymbol simpleSymbol18 = ADMIN.K0;
                    SimpleSymbol simpleSymbol19 = ADMIN.G;
                    IntNum intNum4 = ADMIN.M0;
                    SimpleSymbol simpleSymbol20 = ADMIN.z;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol18, simpleSymbol19, intNum4, simpleSymbol20);
                    SimpleSymbol simpleSymbol21 = ADMIN.D0;
                    SimpleSymbol simpleSymbol22 = ADMIN.F;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol18, simpleSymbol21, "0,0,0,0", simpleSymbol22);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol18, ADMIN.E0, "0,0,0,0", simpleSymbol22);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol18, ADMIN.N0, Boolean.TRUE, ADMIN.O);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol18, ADMIN.O0, ADMIN.P0, simpleSymbol20);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol18, ADMIN.Q0, ADMIN.R0, simpleSymbol20);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol18, ADMIN.F0, ADMIN.G0, simpleSymbol20);
                case 34:
                    SimpleSymbol simpleSymbol23 = ADMIN.K0;
                    SimpleSymbol simpleSymbol24 = ADMIN.G;
                    IntNum intNum5 = ADMIN.M0;
                    SimpleSymbol simpleSymbol25 = ADMIN.z;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol23, simpleSymbol24, intNum5, simpleSymbol25);
                    SimpleSymbol simpleSymbol26 = ADMIN.D0;
                    SimpleSymbol simpleSymbol27 = ADMIN.F;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol23, simpleSymbol26, "0,0,0,0", simpleSymbol27);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol23, ADMIN.E0, "0,0,0,0", simpleSymbol27);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol23, ADMIN.N0, Boolean.TRUE, ADMIN.O);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol23, ADMIN.O0, ADMIN.P0, simpleSymbol25);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol23, ADMIN.Q0, ADMIN.R0, simpleSymbol25);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol23, ADMIN.F0, ADMIN.G0, simpleSymbol25);
                case 35:
                    SimpleSymbol simpleSymbol28 = ADMIN.V0;
                    SimpleSymbol simpleSymbol29 = ADMIN.A;
                    IntNum intNum6 = ADMIN.B;
                    SimpleSymbol simpleSymbol30 = ADMIN.z;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol28, simpleSymbol29, intNum6, simpleSymbol30);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol28, ADMIN.C, ADMIN.D, simpleSymbol30);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol28, ADMIN.X0, ADMIN.Y0, simpleSymbol30);
                    SimpleSymbol simpleSymbol31 = ADMIN.D0;
                    SimpleSymbol simpleSymbol32 = ADMIN.F;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol28, simpleSymbol31, "0,0,0,0", simpleSymbol32);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol28, ADMIN.E0, "0,0,0,0", simpleSymbol32);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol28, ADMIN.F0, ADMIN.G0, simpleSymbol30);
                case 36:
                    SimpleSymbol simpleSymbol33 = ADMIN.V0;
                    SimpleSymbol simpleSymbol34 = ADMIN.A;
                    IntNum intNum7 = ADMIN.B;
                    SimpleSymbol simpleSymbol35 = ADMIN.z;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol33, simpleSymbol34, intNum7, simpleSymbol35);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol33, ADMIN.C, ADMIN.D, simpleSymbol35);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol33, ADMIN.X0, ADMIN.Y0, simpleSymbol35);
                    SimpleSymbol simpleSymbol36 = ADMIN.D0;
                    SimpleSymbol simpleSymbol37 = ADMIN.F;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol33, simpleSymbol36, "0,0,0,0", simpleSymbol37);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol33, ADMIN.E0, "0,0,0,0", simpleSymbol37);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol33, ADMIN.F0, ADMIN.G0, simpleSymbol35);
                case 37:
                    SimpleSymbol simpleSymbol38 = ADMIN.j0;
                    SimpleSymbol simpleSymbol39 = ADMIN.X0;
                    IntNum intNum8 = ADMIN.d1;
                    SimpleSymbol simpleSymbol40 = ADMIN.z;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol38, simpleSymbol39, intNum8, simpleSymbol40);
                    SimpleSymbol simpleSymbol41 = ADMIN.D0;
                    SimpleSymbol simpleSymbol42 = ADMIN.F;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol38, simpleSymbol41, "0,0,0,0", simpleSymbol42);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol38, ADMIN.E0, "0,0,0,0", simpleSymbol42);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol38, ADMIN.F0, ADMIN.e1, simpleSymbol40);
                case 38:
                    SimpleSymbol simpleSymbol43 = ADMIN.j0;
                    SimpleSymbol simpleSymbol44 = ADMIN.X0;
                    IntNum intNum9 = ADMIN.d1;
                    SimpleSymbol simpleSymbol45 = ADMIN.z;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol43, simpleSymbol44, intNum9, simpleSymbol45);
                    SimpleSymbol simpleSymbol46 = ADMIN.D0;
                    SimpleSymbol simpleSymbol47 = ADMIN.F;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol43, simpleSymbol46, "0,0,0,0", simpleSymbol47);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol43, ADMIN.E0, "0,0,0,0", simpleSymbol47);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol43, ADMIN.F0, ADMIN.e1, simpleSymbol45);
                case 39:
                    SimpleSymbol simpleSymbol48 = ADMIN.i1;
                    SimpleSymbol simpleSymbol49 = ADMIN.A;
                    IntNum intNum10 = ADMIN.B;
                    SimpleSymbol simpleSymbol50 = ADMIN.z;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol48, simpleSymbol49, intNum10, simpleSymbol50);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol48, ADMIN.C, ADMIN.D, simpleSymbol50);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol48, ADMIN.k1, Boolean.TRUE, ADMIN.O);
                    SimpleSymbol simpleSymbol51 = ADMIN.X0;
                    IntNum intNum11 = ADMIN.G0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol48, simpleSymbol51, intNum11, simpleSymbol50);
                    SimpleSymbol simpleSymbol52 = ADMIN.D0;
                    SimpleSymbol simpleSymbol53 = ADMIN.F;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol48, simpleSymbol52, "0,0,0,0", simpleSymbol53);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol48, ADMIN.E0, "0,0,0,0", simpleSymbol53);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol48, ADMIN.l1, ADMIN.m1, simpleSymbol50);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol48, ADMIN.n1, ADMIN.o1, simpleSymbol50);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol48, ADMIN.p1, ADMIN.q1, simpleSymbol50);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol48, ADMIN.F0, intNum11, simpleSymbol50);
                case 40:
                    SimpleSymbol simpleSymbol54 = ADMIN.i1;
                    SimpleSymbol simpleSymbol55 = ADMIN.A;
                    IntNum intNum12 = ADMIN.B;
                    SimpleSymbol simpleSymbol56 = ADMIN.z;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol54, simpleSymbol55, intNum12, simpleSymbol56);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol54, ADMIN.C, ADMIN.D, simpleSymbol56);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol54, ADMIN.k1, Boolean.TRUE, ADMIN.O);
                    SimpleSymbol simpleSymbol57 = ADMIN.X0;
                    IntNum intNum13 = ADMIN.G0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol54, simpleSymbol57, intNum13, simpleSymbol56);
                    SimpleSymbol simpleSymbol58 = ADMIN.D0;
                    SimpleSymbol simpleSymbol59 = ADMIN.F;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol54, simpleSymbol58, "0,0,0,0", simpleSymbol59);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol54, ADMIN.E0, "0,0,0,0", simpleSymbol59);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol54, ADMIN.l1, ADMIN.m1, simpleSymbol56);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol54, ADMIN.n1, ADMIN.o1, simpleSymbol56);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol54, ADMIN.p1, ADMIN.q1, simpleSymbol56);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol54, ADMIN.F0, intNum13, simpleSymbol56);
                case 41:
                    SimpleSymbol simpleSymbol60 = ADMIN.u1;
                    SimpleSymbol simpleSymbol61 = ADMIN.D0;
                    SimpleSymbol simpleSymbol62 = ADMIN.F;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol60, simpleSymbol61, "0,0,0,0", simpleSymbol62);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol60, ADMIN.E0, "0,0,0,0", simpleSymbol62);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol60, ADMIN.w1, "Text for Label2", simpleSymbol62);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol60, ADMIN.x1, Boolean.FALSE, ADMIN.O);
                case 42:
                    SimpleSymbol simpleSymbol63 = ADMIN.u1;
                    SimpleSymbol simpleSymbol64 = ADMIN.D0;
                    SimpleSymbol simpleSymbol65 = ADMIN.F;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol63, simpleSymbol64, "0,0,0,0", simpleSymbol65);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol63, ADMIN.E0, "0,0,0,0", simpleSymbol65);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol63, ADMIN.w1, "Text for Label2", simpleSymbol65);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol63, ADMIN.x1, Boolean.FALSE, ADMIN.O);
                case 43:
                    SimpleSymbol simpleSymbol66 = ADMIN.B1;
                    SimpleSymbol simpleSymbol67 = ADMIN.D0;
                    SimpleSymbol simpleSymbol68 = ADMIN.F;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol66, simpleSymbol67, "0,0,0,0", simpleSymbol68);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol66, ADMIN.E0, "0,0,0,0", simpleSymbol68);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol66, ADMIN.w1, "Text for Label2", simpleSymbol68);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol66, ADMIN.x1, Boolean.FALSE, ADMIN.O);
                case 44:
                    SimpleSymbol simpleSymbol69 = ADMIN.B1;
                    SimpleSymbol simpleSymbol70 = ADMIN.D0;
                    SimpleSymbol simpleSymbol71 = ADMIN.F;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol69, simpleSymbol70, "0,0,0,0", simpleSymbol71);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol69, ADMIN.E0, "0,0,0,0", simpleSymbol71);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol69, ADMIN.w1, "Text for Label2", simpleSymbol71);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol69, ADMIN.x1, Boolean.FALSE, ADMIN.O);
                case 45:
                    SimpleSymbol simpleSymbol72 = ADMIN.l0;
                    SimpleSymbol simpleSymbol73 = ADMIN.X0;
                    IntNum intNum14 = ADMIN.G0;
                    SimpleSymbol simpleSymbol74 = ADMIN.z;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol72, simpleSymbol73, intNum14, simpleSymbol74);
                    SimpleSymbol simpleSymbol75 = ADMIN.D0;
                    SimpleSymbol simpleSymbol76 = ADMIN.F;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol72, simpleSymbol75, "0,0,0,0", simpleSymbol76);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol72, ADMIN.E0, "0,0,0,0", simpleSymbol76);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol72, ADMIN.F0, intNum14, simpleSymbol74);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol72, ADMIN.I1, Boolean.FALSE, ADMIN.O);
                case 46:
                    SimpleSymbol simpleSymbol77 = ADMIN.l0;
                    SimpleSymbol simpleSymbol78 = ADMIN.X0;
                    IntNum intNum15 = ADMIN.G0;
                    SimpleSymbol simpleSymbol79 = ADMIN.z;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol77, simpleSymbol78, intNum15, simpleSymbol79);
                    SimpleSymbol simpleSymbol80 = ADMIN.D0;
                    SimpleSymbol simpleSymbol81 = ADMIN.F;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol77, simpleSymbol80, "0,0,0,0", simpleSymbol81);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol77, ADMIN.E0, "0,0,0,0", simpleSymbol81);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol77, ADMIN.F0, intNum15, simpleSymbol79);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol77, ADMIN.I1, Boolean.FALSE, ADMIN.O);
                case 47:
                case 48:
                case 53:
                case 59:
                default:
                    return super.apply0(moduleMethod);
                case 49:
                    SimpleSymbol simpleSymbol82 = ADMIN.O1;
                    SimpleSymbol simpleSymbol83 = ADMIN.A;
                    IntNum intNum16 = ADMIN.B;
                    SimpleSymbol simpleSymbol84 = ADMIN.z;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol82, simpleSymbol83, intNum16, simpleSymbol84);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol82, ADMIN.C, ADMIN.D, simpleSymbol84);
                    SimpleSymbol simpleSymbol85 = ADMIN.X0;
                    IntNum intNum17 = ADMIN.G0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol82, simpleSymbol85, intNum17, simpleSymbol84);
                    SimpleSymbol simpleSymbol86 = ADMIN.D0;
                    SimpleSymbol simpleSymbol87 = ADMIN.F;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol82, simpleSymbol86, "0,0,0,0", simpleSymbol87);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol82, ADMIN.E0, "0,0,0,0", simpleSymbol87);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol82, ADMIN.x1, Boolean.FALSE, ADMIN.O);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol82, ADMIN.F0, intNum17, simpleSymbol84);
                case 50:
                    SimpleSymbol simpleSymbol88 = ADMIN.O1;
                    SimpleSymbol simpleSymbol89 = ADMIN.A;
                    IntNum intNum18 = ADMIN.B;
                    SimpleSymbol simpleSymbol90 = ADMIN.z;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol88, simpleSymbol89, intNum18, simpleSymbol90);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol88, ADMIN.C, ADMIN.D, simpleSymbol90);
                    SimpleSymbol simpleSymbol91 = ADMIN.X0;
                    IntNum intNum19 = ADMIN.G0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol88, simpleSymbol91, intNum19, simpleSymbol90);
                    SimpleSymbol simpleSymbol92 = ADMIN.D0;
                    SimpleSymbol simpleSymbol93 = ADMIN.F;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol88, simpleSymbol92, "0,0,0,0", simpleSymbol93);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol88, ADMIN.E0, "0,0,0,0", simpleSymbol93);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol88, ADMIN.x1, Boolean.FALSE, ADMIN.O);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol88, ADMIN.F0, intNum19, simpleSymbol90);
                case 51:
                    Boolean bool2 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol94 = ADMIN.O;
                    SimpleSymbol simpleSymbol95 = ADMIN.a2;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol95, ADMIN.c2, bool2, simpleSymbol94);
                    SimpleSymbol simpleSymbol96 = ADMIN.D0;
                    SimpleSymbol simpleSymbol97 = ADMIN.F;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol95, simpleSymbol96, "0,0,0,0", simpleSymbol97);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol95, ADMIN.E0, "0,0,0,0", simpleSymbol97);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol95, ADMIN.w1, "ERROR 404", simpleSymbol97);
                case 52:
                    Boolean bool3 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol98 = ADMIN.O;
                    SimpleSymbol simpleSymbol99 = ADMIN.a2;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol99, ADMIN.c2, bool3, simpleSymbol98);
                    SimpleSymbol simpleSymbol100 = ADMIN.D0;
                    SimpleSymbol simpleSymbol101 = ADMIN.F;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol99, simpleSymbol100, "0,0,0,0", simpleSymbol101);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol99, ADMIN.E0, "0,0,0,0", simpleSymbol101);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol99, ADMIN.w1, "ERROR 404", simpleSymbol101);
                case 54:
                    return runtime.setAndCoerceProperty$Ex(ADMIN.k, ADMIN.o2, "Tiny_DBBrightnes", ADMIN.F);
                case 55:
                    return runtime.setAndCoerceProperty$Ex(ADMIN.k, ADMIN.o2, "Tiny_DBBrightnes", ADMIN.F);
                case 56:
                    Boolean bool4 = Boolean.FALSE;
                    SimpleSymbol simpleSymbol102 = ADMIN.O;
                    SimpleSymbol simpleSymbol103 = ADMIN.t0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol103, ADMIN.t2, bool4, simpleSymbol102);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol103, ADMIN.u2, ADMIN.v2, ADMIN.z);
                case 57:
                    Boolean bool5 = Boolean.FALSE;
                    SimpleSymbol simpleSymbol104 = ADMIN.O;
                    SimpleSymbol simpleSymbol105 = ADMIN.t0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol105, ADMIN.t2, bool5, simpleSymbol104);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol105, ADMIN.u2, ADMIN.v2, ADMIN.z);
                case 58:
                    return this.c.Clock1$Timer();
                case 60:
                    return runtime.setAndCoerceProperty$Ex(ADMIN.a0, ADMIN.o2, "Tiny_DBWARNA", ADMIN.F);
                case 61:
                    return runtime.setAndCoerceProperty$Ex(ADMIN.a0, ADMIN.o2, "Tiny_DBWARNA", ADMIN.F);
            }
        }

        @Override // gnu.expr.ModuleBody
        public int match0(ModuleMethod moduleMethod, CallContext callContext) {
            switch (moduleMethod.selector) {
                case 18:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 19:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 20:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 21:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 22:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 23:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 24:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 25:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 26:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 27:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 28:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 29:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 30:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 31:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 32:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 33:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 34:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 35:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
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
                case 42:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 43:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 44:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 45:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 46:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 47:
                case 48:
                case 53:
                case 59:
                default:
                    return super.match0(moduleMethod, callContext);
                case 49:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 50:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 51:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 52:
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
                case 57:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 58:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 60:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 61:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
            }
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
                if (!(obj instanceof ADMIN)) {
                    return -786431;
                }
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
            if (i == 5) {
                if (!(obj instanceof Symbol)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            }
            if (i == 7) {
                if (!(obj instanceof Symbol)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            }
            if (i == 48) {
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            }
            switch (i) {
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
                case 14:
                    if (!(obj instanceof ADMIN)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                default:
                    return super.match1(moduleMethod, obj, callContext);
            }
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            int i = moduleMethod.selector;
            if (i == 4) {
                if (!(obj instanceof Symbol)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            }
            if (i == 5) {
                if (!(obj instanceof Symbol)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            }
            if (i == 8) {
                if (!(obj instanceof Symbol)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            }
            if (i == 9) {
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            }
            if (i == 11) {
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            }
            if (i != 17) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public int match4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4, CallContext callContext) {
            int i = moduleMethod.selector;
            if (i == 10) {
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
            if (i == 59) {
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.value4 = obj4;
                callContext.proc = moduleMethod;
                callContext.pc = 4;
                return 0;
            }
            if (i != 15) {
                if (i != 16) {
                    return super.match4(moduleMethod, obj, obj2, obj3, obj4, callContext);
                }
                if (!(obj instanceof ADMIN)) {
                    return -786431;
                }
                callContext.value1 = obj;
                if (!(obj2 instanceof Component)) {
                    return -786430;
                }
                callContext.value2 = obj2;
                if (!(obj3 instanceof String)) {
                    return -786429;
                }
                callContext.value3 = obj3;
                callContext.value4 = obj4;
                callContext.proc = moduleMethod;
                callContext.pc = 4;
                return 0;
            }
            if (!(obj instanceof ADMIN)) {
                return -786431;
            }
            callContext.value1 = obj;
            if (!(obj2 instanceof Component)) {
                return -786430;
            }
            callContext.value2 = obj2;
            if (!(obj3 instanceof String)) {
                return -786429;
            }
            callContext.value3 = obj3;
            if (!(obj4 instanceof String)) {
                return -786428;
            }
            callContext.value4 = obj4;
            callContext.proc = moduleMethod;
            callContext.pc = 4;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) throws Throwable {
            int i = moduleMethod.selector;
            if (i == 1) {
                return this.c.getSimpleName(obj);
            }
            if (i == 2) {
                try {
                    this.c.onCreate((Bundle) obj);
                    return Values.empty;
                } catch (ClassCastException e) {
                    throw new WrongType(e, "onCreate", 1, obj);
                }
            }
            if (i == 3) {
                this.c.androidLogForm(obj);
                return Values.empty;
            }
            if (i == 5) {
                try {
                    return this.c.lookupInFormEnvironment((Symbol) obj);
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "lookup-in-form-environment", 1, obj);
                }
            }
            if (i == 7) {
                try {
                    return this.c.isBoundInFormEnvironment((Symbol) obj) ? Boolean.TRUE : Boolean.FALSE;
                } catch (ClassCastException e3) {
                    throw new WrongType(e3, "is-bound-in-form-environment", 1, obj);
                }
            }
            if (i != 48) {
                switch (i) {
                    case 12:
                        this.c.addToFormDoAfterCreation(obj);
                        return Values.empty;
                    case 13:
                        this.c.sendError(obj);
                        return Values.empty;
                    case 14:
                        this.c.processException(obj);
                        return Values.empty;
                    default:
                        return super.apply1(moduleMethod, obj);
                }
            }
            return this.c.Web_View1$ProgressChanged(obj);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4) throws Throwable {
            int i = moduleMethod.selector;
            if (i == 10) {
                this.c.addToComponents(obj, obj2, obj3, obj4);
                return Values.empty;
            }
            if (i == 53) {
                return this.c.WebBrightnes$GotText(obj, obj2, obj3, obj4);
            }
            if (i == 59) {
                return this.c.WebVOLUME$GotText(obj, obj2, obj3, obj4);
            }
            if (i == 15) {
                try {
                    try {
                        try {
                            try {
                                return this.c.dispatchEvent((Component) obj, (String) obj2, (String) obj3, (Object[]) obj4) ? Boolean.TRUE : Boolean.FALSE;
                            } catch (ClassCastException e) {
                                throw new WrongType(e, "dispatchEvent", 4, obj4);
                            }
                        } catch (ClassCastException e2) {
                            throw new WrongType(e2, "dispatchEvent", 3, obj3);
                        }
                    } catch (ClassCastException e3) {
                        throw new WrongType(e3, "dispatchEvent", 2, obj2);
                    }
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "dispatchEvent", 1, obj);
                }
            }
            if (i != 16) {
                return super.apply4(moduleMethod, obj, obj2, obj3, obj4);
            }
            try {
                try {
                    try {
                        try {
                            this.c.dispatchGenericEvent((Component) obj, (String) obj2, obj3 != Boolean.FALSE, (Object[]) obj4);
                            return Values.empty;
                        } catch (ClassCastException e5) {
                            throw new WrongType(e5, "dispatchGenericEvent", 4, obj4);
                        }
                    } catch (ClassCastException e6) {
                        throw new WrongType(e6, "dispatchGenericEvent", 3, obj3);
                    }
                } catch (ClassCastException e7) {
                    throw new WrongType(e7, "dispatchGenericEvent", 2, obj2);
                }
            } catch (ClassCastException e8) {
                throw new WrongType(e8, "dispatchGenericEvent", 1, obj);
            }
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            int i = moduleMethod.selector;
            if (i == 4) {
                try {
                    this.c.addToFormEnvironment((Symbol) obj, obj2);
                    return Values.empty;
                } catch (ClassCastException e) {
                    throw new WrongType(e, "add-to-form-environment", 1, obj);
                }
            }
            if (i == 5) {
                try {
                    return this.c.lookupInFormEnvironment((Symbol) obj, obj2);
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "lookup-in-form-environment", 1, obj);
                }
            }
            if (i == 8) {
                try {
                    this.c.addToGlobalVarEnvironment((Symbol) obj, obj2);
                    return Values.empty;
                } catch (ClassCastException e3) {
                    throw new WrongType(e3, "add-to-global-var-environment", 1, obj);
                }
            }
            if (i == 9) {
                this.c.addToEvents(obj, obj2);
                return Values.empty;
            }
            if (i != 11) {
                return i != 17 ? super.apply2(moduleMethod, obj, obj2) : this.c.lookupHandler(obj, obj2);
            }
            this.c.addToGlobalVars(obj, obj2);
            return Values.empty;
        }
    }

    public Object ADMIN$Initialize() throws Throwable {
        runtime.setThisForm();
        Pair pairList2 = LList.list2("warna", "");
        PairWithPosition pairWithPosition = c0;
        SimpleSymbol simpleSymbol = a0;
        SimpleSymbol simpleSymbol2 = b0;
        Pair pairList1 = LList.list1(runtime.callComponentMethod(simpleSymbol, simpleSymbol2, pairList2, pairWithPosition));
        PairWithPosition pairWithPosition2 = d0;
        SimpleSymbol simpleSymbol3 = Y;
        SimpleSymbol simpleSymbol4 = Z;
        Object objCallComponentMethod = runtime.callComponentMethod(simpleSymbol3, simpleSymbol4, pairList1, pairWithPosition2);
        SimpleSymbol simpleSymbol5 = f5354a;
        SimpleSymbol simpleSymbol6 = G;
        SimpleSymbol simpleSymbol7 = z;
        runtime.setAndCoerceProperty$Ex(simpleSymbol5, simpleSymbol6, objCallComponentMethod, simpleSymbol7);
        runtime.setAndCoerceProperty$Ex(simpleSymbol5, J, runtime.callComponentMethod(simpleSymbol3, simpleSymbol4, LList.list1(runtime.callComponentMethod(simpleSymbol, simpleSymbol2, LList.list2("warna", ""), e0)), f0), simpleSymbol7);
        SimpleSymbol simpleSymbol8 = g0;
        SimpleSymbol simpleSymbol9 = h0;
        SimpleSymbol simpleSymbol10 = F;
        runtime.setAndCoerceProperty$Ex(simpleSymbol8, simpleSymbol9, "https://examdb.r-developer.my.id/examsetV6/volume.txt", simpleSymbol10);
        LList lList = LList.Empty;
        SimpleSymbol simpleSymbol11 = i0;
        runtime.callComponentMethod(simpleSymbol8, simpleSymbol11, lList, lList);
        runtime.setAndCoerceProperty$Ex(j0, k0, "512.png", simpleSymbol10);
        Pair pairList12 = LList.list1("WVVoU01HTklUVFpNZVRsc1pVZEdkRnBIU1hWamFURnJXbGhhYkdKSE9YZGFXRWwxWWxocmRXRlhVWFphV0dob1lsaE9iR1JHV1RKTWR6MDk=");
        PairWithPosition pairWithPosition3 = p0;
        SimpleSymbol simpleSymbol12 = n0;
        SimpleSymbol simpleSymbol13 = o0;
        runtime.callComponentMethod(l0, m0, LList.list1(runtime.callComponentMethod(simpleSymbol12, simpleSymbol13, LList.list1(runtime.callComponentMethod(simpleSymbol12, simpleSymbol13, LList.list1(runtime.callComponentMethod(simpleSymbol12, simpleSymbol13, pairList12, pairWithPosition3)), q0)), r0)), s0);
        runtime.setAndCoerceProperty$Ex(t0, u0, Boolean.TRUE, O);
        SimpleSymbol simpleSymbol14 = v0;
        runtime.setAndCoerceProperty$Ex(simpleSymbol14, simpleSymbol9, "https://examdb.r-developer.my.id/examsetV6/kontras.txt", simpleSymbol10);
        return runtime.callComponentMethod(simpleSymbol14, simpleSymbol11, lList, lList);
    }

    public Object ADMIN$BackPressed() {
        runtime.setThisForm();
        ModuleMethod moduleMethod = runtime.close$Mnapplication;
        LList lList = LList.Empty;
        return runtime.callYailPrimitive(moduleMethod, lList, lList, "close application");
    }

    public Object Web_View1$ErrorOccurred(Object obj, Object obj2, Object obj3) {
        Object objSanitizeComponentData = runtime.sanitizeComponentData(obj);
        runtime.sanitizeComponentData(obj2);
        runtime.sanitizeComponentData(obj3);
        runtime.setThisForm();
        ModuleMethod moduleMethod = runtime.yail$Mnequal$Qu;
        if (objSanitizeComponentData instanceof Package) {
            objSanitizeComponentData = runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(L1), " is not bound in the current context"), "Unbound Variable");
        }
        Object objCallYailPrimitive = runtime.callYailPrimitive(moduleMethod, LList.list2(objSanitizeComponentData, M1), N1, "=");
        Boolean bool = Boolean.FALSE;
        SimpleSymbol simpleSymbol = O;
        SimpleSymbol simpleSymbol2 = x1;
        SimpleSymbol simpleSymbol3 = l0;
        if (objCallYailPrimitive != bool) {
            return runtime.setAndCoerceProperty$Ex(simpleSymbol3, simpleSymbol2, bool, simpleSymbol);
        }
        runtime.setAndCoerceProperty$Ex(O1, simpleSymbol2, Boolean.TRUE, simpleSymbol);
        return runtime.setAndCoerceProperty$Ex(simpleSymbol3, simpleSymbol2, bool, simpleSymbol);
    }

    public Object Web_View1$ProgressChanged(Object obj) {
        Object objSanitizeComponentData = runtime.sanitizeComponentData(obj);
        runtime.setThisForm();
        ModuleMethod moduleMethod = runtime.yail$Mnequal$Qu;
        if (objSanitizeComponentData instanceof Package) {
            objSanitizeComponentData = runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(R1), " is not bound in the current context"), "Unbound Variable");
        }
        Object objCallYailPrimitive = runtime.callYailPrimitive(moduleMethod, LList.list2(objSanitizeComponentData, P0), S1, "=");
        Boolean bool = Boolean.FALSE;
        SimpleSymbol simpleSymbol = O;
        SimpleSymbol simpleSymbol2 = x1;
        SimpleSymbol simpleSymbol3 = B0;
        return objCallYailPrimitive != bool ? runtime.setAndCoerceProperty$Ex(simpleSymbol3, simpleSymbol2, bool, simpleSymbol) : runtime.setAndCoerceProperty$Ex(simpleSymbol3, simpleSymbol2, Boolean.TRUE, simpleSymbol);
    }

    public Object WebBrightnes$GotText(Object obj, Object obj2, Object obj3, Object obj4) throws Throwable {
        Object objE = a.e(obj, obj2, obj3, obj4);
        boolean z3 = objE instanceof Package;
        SimpleSymbol simpleSymbol = h2;
        runtime.addGlobalVarToCurrentFormEnvironment(e, z3 ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(simpleSymbol), " is not bound in the current context"), "Unbound Variable") : objE);
        Scheme.applyToArgs.apply1(runtime.lookupGlobalVarInCurrentFormEnvironment(i, runtime.$Stthe$Mnnull$Mnvalue$St));
        runtime.setAndCoerceProperty$Ex(i2, j2, z3 ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(simpleSymbol), " is not bound in the current context"), "Unbound Variable") : objE, z);
        if (z3) {
            objE = runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(simpleSymbol), " is not bound in the current context"), "Unbound Variable");
        }
        return runtime.setAndCoerceProperty$Ex(u1, w1, objE, F);
    }

    public Object Clock1$Timer() throws Throwable {
        runtime.setThisForm();
        LList lList = LList.Empty;
        SimpleSymbol simpleSymbol = v0;
        SimpleSymbol simpleSymbol2 = i0;
        runtime.callComponentMethod(simpleSymbol, simpleSymbol2, lList, lList);
        return runtime.callComponentMethod(g0, simpleSymbol2, lList, lList);
    }

    public Object WebVOLUME$GotText(Object obj, Object obj2, Object obj3, Object obj4) throws Throwable {
        Object objE = a.e(obj, obj2, obj3, obj4);
        boolean z3 = objE instanceof Package;
        SimpleSymbol simpleSymbol = h2;
        runtime.addGlobalVarToCurrentFormEnvironment(f5356g, z3 ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(simpleSymbol), " is not bound in the current context"), "Unbound Variable") : objE);
        Scheme.applyToArgs.apply1(runtime.lookupGlobalVarInCurrentFormEnvironment(q, runtime.$Stthe$Mnnull$Mnvalue$St));
        runtime.setAndCoerceProperty$Ex(D2, I2, z3 ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(simpleSymbol), " is not bound in the current context"), "Unbound Variable") : objE, z);
        if (z3) {
            objE = runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(simpleSymbol), " is not bound in the current context"), "Unbound Variable");
        }
        return runtime.setAndCoerceProperty$Ex(B1, w1, objE, F);
    }

    public String getSimpleName(Object obj) {
        return obj.getClass().getSimpleName();
    }

    @Override // com.google.appinventor.components.runtime.Form, com.google.appinventor.components.runtime.AppInventorCompatActivity, android.app.Activity
    public void onCreate(Bundle bundle) throws NoSuchMethodException, PackageManager.NameNotFoundException, SecurityException {
        AppInventorCompatActivity.setClassicModeFromYail(true);
        super.onCreate(bundle);
    }

    public void addToFormEnvironment(Symbol symbol, Object obj) {
        androidLogForm(Format.formatToString(0, "Adding ~A to env ~A with value ~A", symbol, this.form$Mnenvironment, obj));
        this.form$Mnenvironment.put(symbol, obj);
    }

    public Object lookupInFormEnvironment(Symbol symbol, Object obj) {
        Environment environment = this.form$Mnenvironment;
        int i3 = 1 & ((environment == null ? 1 : 0) + 1);
        return (i3 == 0 ? i3 == 0 : !environment.isBound(symbol)) ? obj : this.form$Mnenvironment.get(symbol);
    }

    public boolean isBoundInFormEnvironment(Symbol symbol) {
        return this.form$Mnenvironment.isBound(symbol);
    }

    public void addToGlobalVarEnvironment(Symbol symbol, Object obj) {
        androidLogForm(Format.formatToString(0, "Adding ~A to env ~A with value ~A", symbol, this.global$Mnvar$Mnenvironment, obj));
        this.global$Mnvar$Mnenvironment.put(symbol, obj);
    }

    public void addToEvents(Object obj, Object obj2) {
        this.events$Mnto$Mnregister = lists.cons(lists.cons(obj, obj2), this.events$Mnto$Mnregister);
    }

    public void addToComponents(Object obj, Object obj2, Object obj3, Object obj4) {
        this.components$Mnto$Mncreate = lists.cons(LList.list4(obj, obj2, obj3, obj4), this.components$Mnto$Mncreate);
    }

    public void addToGlobalVars(Object obj, Object obj2) {
        this.global$Mnvars$Mnto$Mncreate = lists.cons(LList.list2(obj, obj2), this.global$Mnvars$Mnto$Mncreate);
    }

    public void addToFormDoAfterCreation(Object obj) {
        this.form$Mndo$Mnafter$Mncreation = lists.cons(obj, this.form$Mndo$Mnafter$Mncreation);
    }

    public void sendError(Object obj) {
        RetValManager.sendError(obj == null ? null : obj.toString());
    }

    public void processException(Object obj) throws Throwable {
        Object objApply1 = Scheme.applyToArgs.apply1(GetNamedPart.getNamedPart.apply2(obj, f5355b));
        RuntimeErrorAlert.alert(this, objApply1 == null ? null : objApply1.toString(), obj instanceof YailRuntimeError ? ((YailRuntimeError) obj).getErrorType() : "Runtime Error", "End Application");
    }

    @Override // com.google.appinventor.components.runtime.Form, com.google.appinventor.components.runtime.HandlesEventDispatching
    public boolean dispatchEvent(Component component, String str, String str2, Object[] objArr) throws Throwable {
        Symbol symbolString$To$Symbol = misc.string$To$Symbol(str);
        if (isBoundInFormEnvironment(symbolString$To$Symbol)) {
            if (lookupInFormEnvironment(symbolString$To$Symbol) != component) {
                return false;
            }
            try {
                Scheme.apply.apply2(lookupHandler(str, str2), LList.makeList(objArr, 0));
                return true;
            } catch (PermissionException e4) {
                e4.printStackTrace();
                boolean z3 = this == component;
                if (!z3 ? z3 : IsEqual.apply(str2, "PermissionNeeded")) {
                    processException(e4);
                    return false;
                }
                PermissionDenied(component, str2, e4.getPermissionNeeded());
                return false;
            } catch (StopBlocksExecution unused) {
                return false;
            } catch (Throwable th) {
                androidLogForm(th.getMessage());
                th.printStackTrace();
                processException(th);
                return false;
            }
        }
        EventDispatcher.unregisterEventForDelegation(this, str, str2);
        return false;
    }

    @Override // com.google.appinventor.components.runtime.Form, com.google.appinventor.components.runtime.HandlesEventDispatching
    public void dispatchGenericEvent(Component component, String str, boolean z3, Object[] objArr) throws Throwable {
        Object objLookupInFormEnvironment = lookupInFormEnvironment(misc.string$To$Symbol(strings.stringAppend("any$", getSimpleName(component), "$", str)));
        Object obj = Boolean.FALSE;
        if (objLookupInFormEnvironment != obj) {
            try {
                Apply apply = Scheme.apply;
                if (z3) {
                    obj = Boolean.TRUE;
                }
                apply.apply2(objLookupInFormEnvironment, lists.cons(component, lists.cons(obj, LList.makeList(objArr, 0))));
            } catch (PermissionException e4) {
                e4.printStackTrace();
                boolean z4 = this == component;
                if (!z4 ? z4 : IsEqual.apply(str, "PermissionNeeded")) {
                    processException(e4);
                } else {
                    PermissionDenied(component, str, e4.getPermissionNeeded());
                }
            } catch (StopBlocksExecution unused) {
            } catch (Throwable th) {
                androidLogForm(th.getMessage());
                th.printStackTrace();
                processException(th);
            }
        }
    }

    public Object lookupHandler(Object obj, Object obj2) {
        return lookupInFormEnvironment(misc.string$To$Symbol(EventDispatcher.makeFullEventName(obj == null ? null : obj.toString(), obj2 != null ? obj2.toString() : null)));
    }

    public static SimpleSymbol lambda1symbolAppend$V(Object[] objArr) throws Throwable {
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
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "symbol->string", 1, car);
                }
            } catch (ClassCastException e5) {
                throw new WrongType(e5, "arg0", -2, objMakeList);
            }
        }
        Object objApply2 = apply.apply2(moduleMethod, LList.reverseInPlace(objMake));
        try {
            return misc.string$To$Symbol((CharSequence) objApply2);
        } catch (ClassCastException e6) {
            throw new WrongType(e6, "string->symbol", 1, objApply2);
        }
    }

    @Override // com.google.appinventor.components.runtime.Form
    public void $define() throws Throwable {
        Language.setDefaults(Scheme.getInstance());
        try {
            run();
        } catch (Exception e4) {
            androidLogForm(e4.getMessage());
            processException(e4);
        }
        ADMIN = this;
        addToFormEnvironment(f5354a, this);
        Object cdr = this.events$Mnto$Mnregister;
        while (cdr != LList.Empty) {
            try {
                Pair pair = (Pair) cdr;
                Object car = pair.getCar();
                Object objApply1 = lists.car.apply1(car);
                String string = null;
                String string2 = objApply1 == null ? null : objApply1.toString();
                Object objApply12 = lists.cdr.apply1(car);
                if (objApply12 != null) {
                    string = objApply12.toString();
                }
                EventDispatcher.registerEventForDelegation(this, string2, string);
                cdr = pair.getCdr();
            } catch (ClassCastException e5) {
                throw new WrongType(e5, "arg0", -2, cdr);
            }
        }
        try {
            Object objReverse = lists.reverse(this.components$Mnto$Mncreate);
            addToGlobalVars(c, d);
            Object objReverse2 = lists.reverse(this.form$Mndo$Mnafter$Mncreation);
            while (objReverse2 != LList.Empty) {
                try {
                    Pair pair2 = (Pair) objReverse2;
                    misc.force(pair2.getCar());
                    objReverse2 = pair2.getCdr();
                } catch (ClassCastException e6) {
                    throw new WrongType(e6, "arg0", -2, objReverse2);
                }
            }
            Object cdr2 = objReverse;
            while (cdr2 != LList.Empty) {
                try {
                    Pair pair3 = (Pair) cdr2;
                    Object car2 = pair3.getCar();
                    Object objApply13 = lists.caddr.apply1(car2);
                    lists.cadddr.apply1(car2);
                    Object objApply14 = lists.cadr.apply1(car2);
                    Object objApply15 = lists.car.apply1(car2);
                    try {
                        Object objApply2 = Invoke.make.apply2(objApply14, lookupInFormEnvironment((Symbol) objApply15));
                        SlotSet.set$Mnfield$Ex.apply3(this, objApply13, objApply2);
                        try {
                            addToFormEnvironment((Symbol) objApply13, objApply2);
                            cdr2 = pair3.getCdr();
                        } catch (ClassCastException e7) {
                            throw new WrongType(e7, "add-to-form-environment", 0, objApply13);
                        }
                    } catch (ClassCastException e8) {
                        throw new WrongType(e8, "lookup-in-form-environment", 0, objApply15);
                    }
                } catch (ClassCastException e9) {
                    throw new WrongType(e9, "arg0", -2, cdr2);
                }
            }
            Object objReverse3 = lists.reverse(this.global$Mnvars$Mnto$Mncreate);
            while (objReverse3 != LList.Empty) {
                try {
                    Pair pair4 = (Pair) objReverse3;
                    Object car3 = pair4.getCar();
                    Object objApply16 = lists.car.apply1(car3);
                    try {
                        addToGlobalVarEnvironment((Symbol) objApply16, Scheme.applyToArgs.apply1(lists.cadr.apply1(car3)));
                        objReverse3 = pair4.getCdr();
                    } catch (ClassCastException e10) {
                        throw new WrongType(e10, "add-to-global-var-environment", 0, objApply16);
                    }
                } catch (ClassCastException e11) {
                    throw new WrongType(e11, "arg0", -2, objReverse3);
                }
            }
            Object cdr3 = objReverse;
            while (cdr3 != LList.Empty) {
                try {
                    Pair pair5 = (Pair) cdr3;
                    Object car4 = pair5.getCar();
                    lists.caddr.apply1(car4);
                    Object objApply17 = lists.cadddr.apply1(car4);
                    if (objApply17 != Boolean.FALSE) {
                        Scheme.applyToArgs.apply1(objApply17);
                    }
                    cdr3 = pair5.getCdr();
                } catch (ClassCastException e12) {
                    throw new WrongType(e12, "arg0", -2, cdr3);
                }
            }
            while (objReverse != LList.Empty) {
                try {
                    Pair pair6 = (Pair) objReverse;
                    Object car5 = pair6.getCar();
                    Object objApply18 = lists.caddr.apply1(car5);
                    lists.cadddr.apply1(car5);
                    callInitialize(SlotGet.field.apply2(this, objApply18));
                    objReverse = pair6.getCdr();
                } catch (ClassCastException e13) {
                    throw new WrongType(e13, "arg0", -2, objReverse);
                }
            }
        } catch (YailRuntimeError e14) {
            processException(e14);
        }
    }
}
