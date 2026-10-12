package com.niotron.muhammad_robi1996.V15_DATABASE;

import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.fragment.app.FragmentTransaction;
import com.google.appinventor.components.common.Permission;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.AppInventorCompatActivity;
import com.google.appinventor.components.runtime.Button;
import com.google.appinventor.components.runtime.Clock;
import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.EventDispatcher;
import com.google.appinventor.components.runtime.Form;
import com.google.appinventor.components.runtime.HandlesEventDispatching;
import com.google.appinventor.components.runtime.HorizontalArrangement;
import com.google.appinventor.components.runtime.LottieAnimation;
import com.google.appinventor.components.runtime.NiotronCardView;
import com.google.appinventor.components.runtime.NiotronLinearProgressBar;
import com.google.appinventor.components.runtime.Notifier;
import com.google.appinventor.components.runtime.Player;
import com.google.appinventor.components.runtime.Spacer;
import com.google.appinventor.components.runtime.TextBox;
import com.google.appinventor.components.runtime.VerticalArrangement;
import com.google.appinventor.components.runtime.WebViewer;
import com.google.appinventor.components.runtime.errors.PermissionException;
import com.google.appinventor.components.runtime.errors.StopBlocksExecution;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import com.google.appinventor.components.runtime.util.RetValManager;
import com.google.appinventor.components.runtime.util.RuntimeErrorAlert;
import com.google.youngandroid.a;
import com.google.youngandroid.runtime;
import com.puravidaapps.TaifunSettings;
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
public class url2 extends Form implements Runnable {
    public static final SimpleSymbol A;
    public static final IntNum A0;
    public static final IntNum A1;
    public static final SimpleSymbol A2;
    public static final FString A3;
    public static final SimpleSymbol B;
    public static final SimpleSymbol B0;
    public static final IntNum B1;
    public static final SimpleSymbol B2;
    public static final ModuleMethod B3 = null;
    public static final SimpleSymbol C;
    public static final SimpleSymbol C0;
    public static final FString C1;
    public static final FString C2;
    public static final SimpleSymbol C3;
    public static final SimpleSymbol D;
    public static final SimpleSymbol D0;
    public static final ModuleMethod D1 = null;
    public static final SimpleSymbol D2;
    public static final IntNum D3;
    public static final SimpleSymbol E;
    public static final SimpleSymbol E0;
    public static final SimpleSymbol E1;
    public static final ModuleMethod E2 = null;
    public static final FString E3;
    public static final SimpleSymbol F;
    public static final IntNum F0;
    public static final SimpleSymbol F1;
    public static final IntNum F2;
    public static final ModuleMethod F3 = null;
    public static final SimpleSymbol G;
    public static final IntNum G0;
    public static final SimpleSymbol G1;
    public static final IntNum G2;
    public static final FString G3;
    public static final SimpleSymbol H;
    public static final FString H0;
    public static final SimpleSymbol I;
    public static final ModuleMethod I0 = null;
    public static final SimpleSymbol I1;
    public static final FString I2;
    public static final FString I3;
    public static final SimpleSymbol J;
    public static final FString J0;
    public static final FString J1;
    public static final ModuleMethod J2 = null;
    public static final FString J3;
    public static final FString K;
    public static final ModuleMethod K0 = null;
    public static final ModuleMethod K1 = null;
    public static final SimpleSymbol K2;
    public static final FString K3;
    public static final ModuleMethod L = null;
    public static final IntNum L0;
    public static final FString L1;
    public static final SimpleSymbol L2;
    public static final FString L3;
    public static final SimpleSymbol M;
    public static final SimpleSymbol M0;
    public static final ModuleMethod M1 = null;
    public static final PairWithPosition M2;
    public static final ModuleMethod M3 = null;
    public static final IntNum N;
    public static final SimpleSymbol N0;
    public static final FString N1;
    public static final SimpleSymbol N2;
    public static final SimpleSymbol N3;
    public static final SimpleSymbol O;
    public static final SimpleSymbol O0;
    public static final SimpleSymbol O1;
    public static final SimpleSymbol O2;
    public static final SimpleSymbol O3;
    public static final IntNum P;
    public static final IntNum P0;
    public static final ModuleMethod P1 = null;
    public static final SimpleSymbol P2;
    public static final IntNum P3;
    public static final SimpleSymbol Q;
    public static final SimpleSymbol Q0;
    public static final FString Q1;
    public static final SimpleSymbol Q2;
    public static final FString Q3;
    public static final SimpleSymbol R;
    public static final IntNum R0;
    public static final ModuleMethod R1 = null;
    public static final SimpleSymbol R2;
    public static final ModuleMethod R3 = null;
    public static final SimpleSymbol S;
    public static final SimpleSymbol S0;
    public static final SimpleSymbol S1;
    public static final SimpleSymbol S2;
    public static final SimpleSymbol S3;
    public static final IntNum T;
    public static final IntNum T0;
    public static final FString T1;
    public static final PairWithPosition T2;
    public static final SimpleSymbol T3;
    public static final FString U;
    public static final IntNum U0;
    public static final SimpleSymbol U1;
    public static final SimpleSymbol U2;
    public static final SimpleSymbol U3;
    public static final ModuleMethod V = null;
    public static final FString V0;
    public static final ModuleMethod V1 = null;
    public static final SimpleSymbol V2;
    public static final SimpleSymbol V3;
    public static final FString W;
    public static final ModuleMethod W0 = null;
    public static final IntNum W1;
    public static final PairWithPosition W2;
    public static final SimpleSymbol W3;
    public static final SimpleSymbol X;
    public static final FString X0;
    public static final IntNum X1;
    public static final SimpleSymbol X2;
    public static final SimpleSymbol X3;
    public static final ModuleMethod Y = null;
    public static final SimpleSymbol Y0;
    public static final FString Y1;
    public static final SimpleSymbol Y2;
    public static final SimpleSymbol Y3;
    public static final SimpleSymbol Z;
    public static final ModuleMethod Z0 = null;
    public static final ModuleMethod Z1 = null;
    public static final FString Z2;
    public static final SimpleSymbol Z3;

    /* renamed from: a, reason: collision with root package name */
    public static final SimpleSymbol f5438a;
    public static final IntNum a0;
    public static final SimpleSymbol a1;
    public static final FString a2;
    public static final ModuleMethod a3 = null;
    public static final SimpleSymbol a4;

    /* renamed from: b, reason: collision with root package name */
    public static final SimpleSymbol f5439b;
    public static final SimpleSymbol b0;
    public static final SimpleSymbol b1;
    public static final ModuleMethod b2 = null;
    public static final FString b3;
    public static final SimpleSymbol b4;
    public static final SimpleSymbol c;
    public static final SimpleSymbol c0;
    public static final IntNum c1;
    public static final IntNum c2;
    public static final ModuleMethod c3 = null;
    public static final SimpleSymbol c4;
    public static final ModuleMethod d = null;
    public static final IntNum d0;
    public static final IntNum d1;
    public static final IntNum d2;
    public static final FString d3;
    public static final SimpleSymbol d4;
    public static final SimpleSymbol e;
    public static final SimpleSymbol e0;
    public static final SimpleSymbol e1;
    public static final IntNum e2;
    public static final SimpleSymbol e3;
    public static final SimpleSymbol e4;
    public static final IntNum f;
    public static final IntNum f0;
    public static final SimpleSymbol f1;
    public static final IntNum f2;
    public static final ModuleMethod f3 = null;
    public static final SimpleSymbol f4;

    /* renamed from: g, reason: collision with root package name */
    public static final SimpleSymbol f5440g;
    public static final FString g0;
    public static final FString g1;
    public static final FString g2;
    public static final SimpleSymbol g3;
    public static final SimpleSymbol g4;
    public static final SimpleSymbol h;
    public static final ModuleMethod h0 = null;
    public static final ModuleMethod h1 = null;
    public static final ModuleMethod h2 = null;
    public static final IntNum h3;
    public static final SimpleSymbol h4;
    public static final SimpleSymbol i;
    public static final FString i0;
    public static final SimpleSymbol i1;
    public static final FString i2;
    public static final SimpleSymbol i3;
    public static final SimpleSymbol i4;
    public static final SimpleSymbol j;
    public static final SimpleSymbol j0;
    public static final SimpleSymbol j1;
    public static final SimpleSymbol j2;
    public static final SimpleSymbol j3;
    public static final SimpleSymbol k;
    public static final ModuleMethod k0 = null;
    public static final PairWithPosition k1;
    public static final ModuleMethod k2 = null;
    public static final FString k3;
    public static final SimpleSymbol l;
    public static final SimpleSymbol l0;
    public static final SimpleSymbol l1;
    public static final FString l2;
    public static final ModuleMethod l3 = null;
    public static final SimpleSymbol m;
    public static final FString m0;
    public static final SimpleSymbol m1;
    public static final ModuleMethod m2 = null;
    public static final FString m3;
    public static final SimpleSymbol n;
    public static final ModuleMethod n0 = null;
    public static final SimpleSymbol n1;
    public static final SimpleSymbol n2;
    public static final SimpleSymbol n3;
    public static final SimpleSymbol o;
    public static final FString o0;
    public static final FString o1;
    public static final FString o2;
    public static final ModuleMethod o3 = null;
    public static final SimpleSymbol p;
    public static final SimpleSymbol p0;
    public static final SimpleSymbol p1;
    public static final ModuleMethod p2 = null;
    public static final IntNum p3;
    public static final SimpleSymbol q;
    public static final ModuleMethod q0 = null;
    public static final ModuleMethod q1 = null;
    public static final FString q2;
    public static final IntNum q3;
    public static final SimpleSymbol r;
    public static final FString r0;
    public static final FString r1;
    public static final ModuleMethod r2 = null;
    public static final FString r3;
    public static final SimpleSymbol s;
    public static final ModuleMethod s0 = null;
    public static final ModuleMethod s1 = null;
    public static final SimpleSymbol s2;
    public static final ModuleMethod s3 = null;
    public static final SimpleSymbol t;
    public static final FString t0;
    public static final SimpleSymbol t1;
    public static final IntNum t2;
    public static final SimpleSymbol t3;
    public static final SimpleSymbol u;
    public static final SimpleSymbol u0;
    public static final PairWithPosition u1;
    public static final PairWithPosition u2;
    public static final FString u3;
    public static url2 url2;
    public static final SimpleSymbol v;
    public static final ModuleMethod v0 = null;
    public static final SimpleSymbol v1;
    public static final SimpleSymbol v2;
    public static final SimpleSymbol v3;
    public static final SimpleSymbol w;
    public static final IntNum w0;
    public static final FString w1;
    public static final SimpleSymbol w2;
    public static final ModuleMethod w3 = null;
    public static final ModuleMethod x = null;
    public static final SimpleSymbol x0;
    public static final SimpleSymbol x1;
    public static final SimpleSymbol x2;
    public static final IntNum x3;
    public static final SimpleSymbol y;
    public static final IntNum y0;
    public static final ModuleMethod y1 = null;
    public static final SimpleSymbol y2;
    public static final FString y3;
    public static final PairWithPosition z;
    public static final SimpleSymbol z0;
    public static final IntNum z1;
    public static final PairWithPosition z2;
    public static final ModuleMethod z3 = null;
    public Boolean $Stdebug$Mnform$St;
    public final ModuleMethod $define;
    public Button ButtonBACK;
    public final ModuleMethod ButtonBACK$Click;
    public Button ButtonBAWAH;
    public final ModuleMethod ButtonBAWAH$GotFocus;
    public final ModuleMethod ButtonBAWAH$TouchDown;
    public final ModuleMethod ButtonBAWAH$TouchUp;
    public Button ButtonEXIT;
    public final ModuleMethod ButtonEXIT$Click;
    public Button ButtonGOTEXBOX;
    public final ModuleMethod ButtonGOTEXBOX$Click;
    public Button ButtonREFRESH;
    public final ModuleMethod ButtonREFRESH$Click;
    public NiotronCardView Card_ViewTexboX;
    public NiotronCardView Card_ViewTexbox_EXIT;
    public Clock Clock1;
    public final ModuleMethod Clock1$Timer;
    public HorizontalArrangement Hori_PASSWORD;
    public HorizontalArrangement Horizontal_PROGRESSBAR;
    public HorizontalArrangement Horizontal_TEXBOX;
    public Button KELUAR;
    public final ModuleMethod KELUAR$Click;
    public NiotronLinearProgressBar Linear_Progressbar1;
    public LottieAnimation Lottie_Animation1;
    public Notifier Notifier1;
    public Player Player1;
    public Spacer Spacer1;
    public TaifunSettings TaifunSettings1;
    public TextBox Text_BOX_PASSWORD_EXIT;
    public TextBox Text_Boxurl2;
    public VerticalArrangement Vertical_CONTAINER;
    public VerticalArrangement Vertical_ERROR;
    public WebViewer Web_View1;
    public final ModuleMethod Web_View1$ErrorOccurred;
    public final ModuleMethod Web_View1$ProgressChanged;
    public Button YESEXIT;
    public final ModuleMethod YESEXIT$Click;
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
    public final ModuleMethod url2$BackPressed;
    public final ModuleMethod url2$Initialize;

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("any");
        i4 = (SimpleSymbol) a.f("lookup-handler");
        h4 = (SimpleSymbol) a.f("dispatchGenericEvent");
        g4 = (SimpleSymbol) a.f("dispatchEvent");
        f4 = (SimpleSymbol) a.f("send-error");
        e4 = (SimpleSymbol) a.f("add-to-form-do-after-creation");
        d4 = (SimpleSymbol) a.f("add-to-global-vars");
        c4 = (SimpleSymbol) a.f("add-to-components");
        b4 = (SimpleSymbol) a.f("add-to-events");
        a4 = (SimpleSymbol) a.f("add-to-global-var-environment");
        Z3 = (SimpleSymbol) a.f("is-bound-in-form-environment");
        Y3 = (SimpleSymbol) a.f("lookup-in-form-environment");
        X3 = (SimpleSymbol) a.f("add-to-form-environment");
        W3 = (SimpleSymbol) a.f("android-log-form");
        V3 = (SimpleSymbol) a.f("get-simple-name");
        U3 = (SimpleSymbol) a.f("Timer");
        T3 = (SimpleSymbol) a.f("Clock1$Timer");
        S3 = (SimpleSymbol) a.f("StartAnimation");
        Q3 = new FString("com.google.appinventor.components.runtime.Clock");
        P3 = IntNum.make(6000);
        O3 = (SimpleSymbol) a.f("TimerInterval");
        N3 = (SimpleSymbol) a.f("TimerAlwaysFires");
        L3 = new FString("com.google.appinventor.components.runtime.Clock");
        K3 = new FString("com.google.appinventor.components.runtime.Notifier");
        J3 = new FString("com.google.appinventor.components.runtime.Notifier");
        I3 = new FString("com.puravidaapps.TaifunSettings");
        G3 = new FString("com.puravidaapps.TaifunSettings");
        E3 = new FString("com.google.appinventor.components.runtime.Player");
        D3 = IntNum.make(99);
        C3 = (SimpleSymbol) a.f("Volume");
        A3 = new FString("com.google.appinventor.components.runtime.Player");
        y3 = new FString("com.google.appinventor.components.runtime.Spacer");
        x3 = IntNum.make(-1007);
        v3 = (SimpleSymbol) a.f("Spacer1");
        u3 = new FString("com.google.appinventor.components.runtime.Spacer");
        t3 = (SimpleSymbol) a.f("KELUAR$Click");
        r3 = new FString("com.google.appinventor.components.runtime.Button");
        q3 = IntNum.make(new int[]{-1, 0});
        p3 = IntNum.make(new int[]{-16602892, 0});
        n3 = (SimpleSymbol) a.f("KELUAR");
        m3 = new FString("com.google.appinventor.components.runtime.Button");
        k3 = new FString("com.google.appinventor.components.runtime.LottieAnimation");
        j3 = (SimpleSymbol) a.f("Source");
        i3 = (SimpleSymbol) a.f("Loop");
        h3 = IntNum.make(800);
        g3 = (SimpleSymbol) a.f("EndFrame");
        e3 = (SimpleSymbol) a.f("Lottie_Animation1");
        d3 = new FString("com.google.appinventor.components.runtime.LottieAnimation");
        b3 = new FString("com.google.appinventor.components.runtime.VerticalArrangement");
        Z2 = new FString("com.google.appinventor.components.runtime.VerticalArrangement");
        Y2 = (SimpleSymbol) a.f("TouchUp");
        X2 = (SimpleSymbol) a.f("ButtonBAWAH$TouchUp");
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f(PropertyTypeConstants.PROPERTY_TYPE_TEXT);
        i = simpleSymbol2;
        LList lList = LList.Empty;
        W2 = PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/url2.yail", 1499243);
        V2 = (SimpleSymbol) a.f("TouchDown");
        U2 = (SimpleSymbol) a.f("ButtonBAWAH$TouchDown");
        T2 = PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/url2.yail", 1491051);
        S2 = (SimpleSymbol) a.f("GotFocus");
        R2 = (SimpleSymbol) a.f("ButtonBAWAH$GotFocus");
        Q2 = (SimpleSymbol) a.f("Start");
        P2 = (SimpleSymbol) a.f("Player1");
        O2 = (SimpleSymbol) a.f("VolumeMusic");
        N2 = (SimpleSymbol) a.f("TaifunSettings1");
        M2 = PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/url2.yail", 1482859);
        L2 = (SimpleSymbol) a.f("ShowAlert");
        K2 = (SimpleSymbol) a.f("Notifier1");
        I2 = new FString("com.google.appinventor.components.runtime.Button");
        G2 = IntNum.make(-1002);
        F2 = IntNum.make(16777215);
        D2 = (SimpleSymbol) a.f("ButtonBAWAH");
        C2 = new FString("com.google.appinventor.components.runtime.Button");
        B2 = (SimpleSymbol) a.f("ProgressChanged");
        A2 = (SimpleSymbol) a.f("Web_View1$ProgressChanged");
        z2 = PairWithPosition.make(simpleSymbol, PairWithPosition.make(simpleSymbol, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/url2.yail", 1421411), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/url2.yail", 1421406);
        y2 = (SimpleSymbol) a.f("$progress");
        x2 = (SimpleSymbol) a.f("ErrorOccurred");
        w2 = (SimpleSymbol) a.f("Web_View1$ErrorOccurred");
        v2 = (SimpleSymbol) a.f("Vertical_ERROR");
        u2 = PairWithPosition.make(simpleSymbol, PairWithPosition.make(simpleSymbol, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/url2.yail", 1413219), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/url2.yail", 1413214);
        t2 = IntNum.make(-1);
        s2 = (SimpleSymbol) a.f("$errorCode");
        q2 = new FString("com.google.appinventor.components.runtime.WebViewer");
        o2 = new FString("com.google.appinventor.components.runtime.WebViewer");
        n2 = (SimpleSymbol) a.f("YESEXIT$Click");
        l2 = new FString("com.google.appinventor.components.runtime.Button");
        j2 = (SimpleSymbol) a.f("YESEXIT");
        i2 = new FString("com.google.appinventor.components.runtime.Button");
        g2 = new FString("com.google.appinventor.components.runtime.TextBox");
        f2 = IntNum.make(-1058);
        e2 = IntNum.make(new int[]{-16777216, 0});
        d2 = IntNum.make(new int[]{-12500671, 0});
        c2 = IntNum.make(16777215);
        a2 = new FString("com.google.appinventor.components.runtime.TextBox");
        Y1 = new FString("com.google.appinventor.components.runtime.NiotronCardView");
        X1 = IntNum.make(-1060);
        W1 = IntNum.make(new int[]{-5785155, 0});
        U1 = (SimpleSymbol) a.f("Card_ViewTexbox_EXIT");
        T1 = new FString("com.google.appinventor.components.runtime.NiotronCardView");
        S1 = (SimpleSymbol) a.f("ButtonBACK$Click");
        Q1 = new FString("com.google.appinventor.components.runtime.Button");
        O1 = (SimpleSymbol) a.f("ButtonBACK");
        N1 = new FString("com.google.appinventor.components.runtime.Button");
        L1 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        J1 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        I1 = (SimpleSymbol) a.f("ButtonEXIT$Click");
        G1 = (SimpleSymbol) a.f("Hori_PASSWORD");
        F1 = (SimpleSymbol) a.f("ShowKeyboard");
        E1 = (SimpleSymbol) a.f("Text_BOX_PASSWORD_EXIT");
        C1 = new FString("com.google.appinventor.components.runtime.Button");
        B1 = IntNum.make(new int[]{-1, 0});
        A1 = IntNum.make(12);
        z1 = IntNum.make(new int[]{-1546407, 0});
        x1 = (SimpleSymbol) a.f("ButtonEXIT");
        w1 = new FString("com.google.appinventor.components.runtime.Button");
        v1 = (SimpleSymbol) a.f("ButtonREFRESH$Click");
        u1 = PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/url2.yail", 778348);
        t1 = (SimpleSymbol) a.f("CurrentUrl");
        r1 = new FString("com.google.appinventor.components.runtime.Button");
        p1 = (SimpleSymbol) a.f("ButtonREFRESH");
        o1 = new FString("com.google.appinventor.components.runtime.Button");
        n1 = (SimpleSymbol) a.f("Click");
        m1 = (SimpleSymbol) a.f("ButtonGOTEXBOX$Click");
        l1 = (SimpleSymbol) a.f("HideKeyboard");
        k1 = PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/url2.yail", 684137);
        j1 = (SimpleSymbol) a.f("GoToUrl");
        i1 = (SimpleSymbol) a.f("Web_View1");
        g1 = new FString("com.google.appinventor.components.runtime.Button");
        f1 = (SimpleSymbol) a.f("Text");
        e1 = (SimpleSymbol) a.f("Shape");
        d1 = IntNum.make(45);
        c1 = IntNum.make(14);
        b1 = (SimpleSymbol) a.f("FontSize");
        a1 = (SimpleSymbol) a.f("FontBold");
        Y0 = (SimpleSymbol) a.f("ButtonGOTEXBOX");
        X0 = new FString("com.google.appinventor.components.runtime.Button");
        V0 = new FString("com.google.appinventor.components.runtime.TextBox");
        U0 = IntNum.make(-1058);
        T0 = IntNum.make(new int[]{-16777216, 0});
        S0 = (SimpleSymbol) a.f("TextColor");
        R0 = IntNum.make(1);
        Q0 = (SimpleSymbol) a.f("TextAlignment");
        P0 = IntNum.make(new int[]{-12500671, 0});
        O0 = (SimpleSymbol) a.f("HintColor");
        N0 = (SimpleSymbol) a.f("Hint");
        M0 = (SimpleSymbol) a.f("FontTypeface");
        L0 = IntNum.make(16777215);
        J0 = new FString("com.google.appinventor.components.runtime.TextBox");
        H0 = new FString("com.google.appinventor.components.runtime.NiotronCardView");
        G0 = IntNum.make(-1060);
        F0 = IntNum.make(20);
        E0 = (SimpleSymbol) a.f("Radius");
        D0 = (SimpleSymbol) a.f("CornerOverlap");
        C0 = (SimpleSymbol) a.f("ContentPaddingTop");
        B0 = (SimpleSymbol) a.f("ContentPaddingRight");
        A0 = IntNum.make(10);
        z0 = (SimpleSymbol) a.f("ContentPaddingLeft");
        y0 = IntNum.make(0);
        x0 = (SimpleSymbol) a.f("ContentPaddingBottom");
        w0 = IntNum.make(new int[]{-5785155, 0});
        u0 = (SimpleSymbol) a.f("Card_ViewTexboX");
        t0 = new FString("com.google.appinventor.components.runtime.NiotronCardView");
        r0 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        p0 = (SimpleSymbol) a.f("Horizontal_TEXBOX");
        o0 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        m0 = new FString("com.google.appinventor.components.runtime.VerticalArrangement");
        l0 = (SimpleSymbol) a.f("Height");
        j0 = (SimpleSymbol) a.f("Vertical_CONTAINER");
        i0 = new FString("com.google.appinventor.components.runtime.VerticalArrangement");
        g0 = new FString("com.google.appinventor.components.runtime.NiotronLinearProgressBar");
        f0 = IntNum.make(new int[]{-16602892, 0});
        e0 = (SimpleSymbol) a.f("ProgressColor");
        d0 = IntNum.make(100);
        c0 = (SimpleSymbol) a.f("Max");
        b0 = (SimpleSymbol) a.f("Indeterminate");
        a0 = IntNum.make(new int[]{-1, 0});
        Z = (SimpleSymbol) a.f("BackgroundColor");
        X = (SimpleSymbol) a.f("Linear_Progressbar1");
        W = new FString("com.google.appinventor.components.runtime.NiotronLinearProgressBar");
        U = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        T = IntNum.make(-2);
        S = (SimpleSymbol) a.f("Width");
        R = (SimpleSymbol) a.f("HeihPadding");
        Q = (SimpleSymbol) a.f("HeihMargin");
        P = IntNum.make(2);
        O = (SimpleSymbol) a.f("AlignVertical");
        N = IntNum.make(3);
        M = (SimpleSymbol) a.f("AlignHorizontal");
        K = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        J = (SimpleSymbol) a.f("BackPressed");
        I = (SimpleSymbol) a.f("url2$BackPressed");
        H = (SimpleSymbol) a.f("Initialize");
        G = (SimpleSymbol) a.f("url2$Initialize");
        F = (SimpleSymbol) a.f("Visible");
        E = (SimpleSymbol) a.f("Horizontal_PROGRESSBAR");
        D = (SimpleSymbol) a.f("TimerEnabled");
        C = (SimpleSymbol) a.f("Clock1");
        B = (SimpleSymbol) a.f("RequestFocus");
        A = (SimpleSymbol) a.f("Text_Boxurl2");
        z = PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/url2.yail", 114838);
        y = (SimpleSymbol) a.f("AskForPermission");
        w = (SimpleSymbol) a.f("TitleVisible");
        v = (SimpleSymbol) a.f("Title");
        u = (SimpleSymbol) a.f("Theme");
        t = (SimpleSymbol) a.f("StatusBarLightIcons");
        s = (SimpleSymbol) a.f("Sizing");
        r = (SimpleSymbol) a.f("ShowStatusBar");
        q = (SimpleSymbol) a.f("ShowOptionsMenu");
        p = (SimpleSymbol) a.f("ShowNavigationBar");
        o = (SimpleSymbol) a.f("ShowListsAsJson");
        n = (SimpleSymbol) a.f("ShowAboutInMenu");
        m = (SimpleSymbol) a.f("ScreenOrientation");
        l = (SimpleSymbol) a.f("HighQualityImages");
        k = (SimpleSymbol) a.f(PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN);
        j = (SimpleSymbol) a.f("HighContrast");
        h = (SimpleSymbol) a.f("AppName");
        f5440g = (SimpleSymbol) a.f("number");
        f = IntNum.make(new int[]{-14382849, 0});
        e = (SimpleSymbol) a.f("AccentColor");
        c = (SimpleSymbol) a.f("*the-null-value*");
        f5439b = (SimpleSymbol) a.f("getMessage");
        f5438a = (SimpleSymbol) a.f("url2");
    }

    public url2() {
        ModuleInfo.register(this);
        frame frameVar = new frame();
        frameVar.c = this;
        this.get$Mnsimple$Mnname = new ModuleMethod(frameVar, 1, V3, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.onCreate = new ModuleMethod(frameVar, 2, "onCreate", FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.android$Mnlog$Mnform = new ModuleMethod(frameVar, 3, W3, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.add$Mnto$Mnform$Mnenvironment = new ModuleMethod(frameVar, 4, X3, 8194);
        this.lookup$Mnin$Mnform$Mnenvironment = new ModuleMethod(frameVar, 5, Y3, 8193);
        this.is$Mnbound$Mnin$Mnform$Mnenvironment = new ModuleMethod(frameVar, 7, Z3, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.add$Mnto$Mnglobal$Mnvar$Mnenvironment = new ModuleMethod(frameVar, 8, a4, 8194);
        this.add$Mnto$Mnevents = new ModuleMethod(frameVar, 9, b4, 8194);
        this.add$Mnto$Mncomponents = new ModuleMethod(frameVar, 10, c4, 16388);
        this.add$Mnto$Mnglobal$Mnvars = new ModuleMethod(frameVar, 11, d4, 8194);
        this.add$Mnto$Mnform$Mndo$Mnafter$Mncreation = new ModuleMethod(frameVar, 12, e4, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.send$Mnerror = new ModuleMethod(frameVar, 13, f4, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.process$Mnexception = new ModuleMethod(frameVar, 14, "process-exception", FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.dispatchEvent = new ModuleMethod(frameVar, 15, g4, 16388);
        this.dispatchGenericEvent = new ModuleMethod(frameVar, 16, h4, 16388);
        this.lookup$Mnhandler = new ModuleMethod(frameVar, 17, i4, 8194);
        ModuleMethod moduleMethod = new ModuleMethod(frameVar, 18, null, 0);
        moduleMethod.setProperty("source-location", "/tmp/runtime15061256449536606169.scm:634");
        d = moduleMethod;
        this.$define = new ModuleMethod(frameVar, 19, "$define", 0);
        x = new ModuleMethod(frameVar, 20, null, 0);
        this.url2$Initialize = new ModuleMethod(frameVar, 21, G, 0);
        this.url2$BackPressed = new ModuleMethod(frameVar, 22, I, 0);
        L = new ModuleMethod(frameVar, 23, null, 0);
        V = new ModuleMethod(frameVar, 24, null, 0);
        Y = new ModuleMethod(frameVar, 25, null, 0);
        h0 = new ModuleMethod(frameVar, 26, null, 0);
        k0 = new ModuleMethod(frameVar, 27, null, 0);
        n0 = new ModuleMethod(frameVar, 28, null, 0);
        q0 = new ModuleMethod(frameVar, 29, null, 0);
        s0 = new ModuleMethod(frameVar, 30, null, 0);
        v0 = new ModuleMethod(frameVar, 31, null, 0);
        I0 = new ModuleMethod(frameVar, 32, null, 0);
        K0 = new ModuleMethod(frameVar, 33, null, 0);
        W0 = new ModuleMethod(frameVar, 34, null, 0);
        Z0 = new ModuleMethod(frameVar, 35, null, 0);
        h1 = new ModuleMethod(frameVar, 36, null, 0);
        this.ButtonGOTEXBOX$Click = new ModuleMethod(frameVar, 37, m1, 0);
        q1 = new ModuleMethod(frameVar, 38, null, 0);
        s1 = new ModuleMethod(frameVar, 39, null, 0);
        this.ButtonREFRESH$Click = new ModuleMethod(frameVar, 40, v1, 0);
        y1 = new ModuleMethod(frameVar, 41, null, 0);
        D1 = new ModuleMethod(frameVar, 42, null, 0);
        this.ButtonEXIT$Click = new ModuleMethod(frameVar, 43, I1, 0);
        K1 = new ModuleMethod(frameVar, 44, null, 0);
        M1 = new ModuleMethod(frameVar, 45, null, 0);
        P1 = new ModuleMethod(frameVar, 46, null, 0);
        R1 = new ModuleMethod(frameVar, 47, null, 0);
        this.ButtonBACK$Click = new ModuleMethod(frameVar, 48, S1, 0);
        V1 = new ModuleMethod(frameVar, 49, null, 0);
        Z1 = new ModuleMethod(frameVar, 50, null, 0);
        b2 = new ModuleMethod(frameVar, 51, null, 0);
        h2 = new ModuleMethod(frameVar, 52, null, 0);
        k2 = new ModuleMethod(frameVar, 53, null, 0);
        m2 = new ModuleMethod(frameVar, 54, null, 0);
        this.YESEXIT$Click = new ModuleMethod(frameVar, 55, n2, 0);
        p2 = new ModuleMethod(frameVar, 56, null, 0);
        r2 = new ModuleMethod(frameVar, 57, null, 0);
        this.Web_View1$ErrorOccurred = new ModuleMethod(frameVar, 58, w2, 12291);
        this.Web_View1$ProgressChanged = new ModuleMethod(frameVar, 59, A2, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        E2 = new ModuleMethod(frameVar, 60, null, 0);
        J2 = new ModuleMethod(frameVar, 61, null, 0);
        this.ButtonBAWAH$GotFocus = new ModuleMethod(frameVar, 62, R2, 0);
        this.ButtonBAWAH$TouchDown = new ModuleMethod(frameVar, 63, U2, 0);
        this.ButtonBAWAH$TouchUp = new ModuleMethod(frameVar, 64, X2, 0);
        a3 = new ModuleMethod(frameVar, 65, null, 0);
        c3 = new ModuleMethod(frameVar, 66, null, 0);
        f3 = new ModuleMethod(frameVar, 67, null, 0);
        l3 = new ModuleMethod(frameVar, 68, null, 0);
        o3 = new ModuleMethod(frameVar, 69, null, 0);
        s3 = new ModuleMethod(frameVar, 70, null, 0);
        this.KELUAR$Click = new ModuleMethod(frameVar, 71, t3, 0);
        w3 = new ModuleMethod(frameVar, 72, null, 0);
        z3 = new ModuleMethod(frameVar, 73, null, 0);
        B3 = new ModuleMethod(frameVar, 74, null, 0);
        F3 = new ModuleMethod(frameVar, 75, null, 0);
        M3 = new ModuleMethod(frameVar, 76, null, 0);
        R3 = new ModuleMethod(frameVar, 77, null, 0);
        this.Clock1$Timer = new ModuleMethod(frameVar, 78, T3, 0);
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
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        Object obj;
        String str;
        Symbol symbol4 = T3;
        Object obj2 = K2;
        Object obj3 = N2;
        Object obj4 = P2;
        Object obj5 = v3;
        Symbol symbol5 = t3;
        Object obj6 = e3;
        Symbol symbol6 = X2;
        Symbol symbol7 = U2;
        Symbol symbol8 = R2;
        Symbol symbol9 = A2;
        Symbol symbol10 = w2;
        Symbol symbol11 = n2;
        Object obj7 = E1;
        Symbol symbol12 = S1;
        Symbol symbol13 = I1;
        Symbol symbol14 = v1;
        Symbol symbol15 = m1;
        Object obj8 = A;
        Object obj9 = X;
        Symbol symbol16 = I;
        Consumer consumer = callContext.consumer;
        runtime runtimeVar = runtime.$instance;
        runtimeVar.run();
        Boolean bool = Boolean.FALSE;
        this.$Stdebug$Mnform$St = bool;
        SimpleSymbol simpleSymbol = f5438a;
        this.form$Mnenvironment = Environment.make(simpleSymbol.toString());
        FString fStringStringAppend = strings.stringAppend(simpleSymbol.toString(), "-global-vars");
        this.global$Mnvar$Mnenvironment = Environment.make(fStringStringAppend == null ? null : fStringStringAppend.toString());
        url2 = null;
        this.form$Mnname$Mnsymbol = simpleSymbol;
        LList lList = LList.Empty;
        this.events$Mnto$Mnregister = lList;
        this.components$Mnto$Mncreate = lList;
        this.global$Mnvars$Mnto$Mncreate = lList;
        this.form$Mndo$Mnafter$Mncreation = lList;
        runtimeVar.run();
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            symbol2 = symbol10;
            symbol3 = symbol11;
            runtime.setAndCoerceProperty$Ex(simpleSymbol, e, f, f5440g);
            SimpleSymbol simpleSymbol2 = h;
            SimpleSymbol simpleSymbol3 = i;
            runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol2, "RDEV_EXAM_V9", simpleSymbol3);
            Boolean bool2 = Boolean.TRUE;
            SimpleSymbol simpleSymbol4 = j;
            obj = obj7;
            SimpleSymbol simpleSymbol5 = k;
            runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol4, bool2, simpleSymbol5);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, l, bool2, simpleSymbol5);
            symbol = symbol12;
            runtime.setAndCoerceProperty$Ex(simpleSymbol, m, "unspecified", simpleSymbol3);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, n, bool, simpleSymbol5);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, o, bool2, simpleSymbol5);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, p, bool, simpleSymbol5);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, q, bool, simpleSymbol5);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, r, bool, simpleSymbol5);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, s, "Responsive", simpleSymbol3);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, t, bool, simpleSymbol5);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, u, "Classic", simpleSymbol3);
            runtime.setAndCoerceProperty$Ex(simpleSymbol, v, "url2", simpleSymbol3);
            Values.writeValues(runtime.setAndCoerceProperty$Ex(simpleSymbol, w, bool, simpleSymbol5), consumer);
        } else {
            symbol = symbol12;
            symbol2 = symbol10;
            symbol3 = symbol11;
            obj = obj7;
            addToFormDoAfterCreation(new Promise(x));
        }
        Object obj10 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Symbol symbol17 = G;
        if (obj10 != bool) {
            runtime.addToCurrentFormEnvironment(symbol17, this.url2$Initialize);
        } else {
            addToFormEnvironment(symbol17, this.url2$Initialize);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "url2", "Initialize");
        } else {
            addToEvents(simpleSymbol, H);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(symbol16, this.url2$BackPressed);
        } else {
            addToFormEnvironment(symbol16, this.url2$BackPressed);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "url2", "BackPressed");
        } else {
            addToEvents(simpleSymbol, J);
        }
        this.Horizontal_PROGRESSBAR = null;
        Object obj11 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj12 = E;
        if (obj11 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, K, obj12, L), consumer);
        } else {
            addToComponents(simpleSymbol, U, obj12, V);
        }
        this.Linear_Progressbar1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj12, W, obj9, Y), consumer);
        } else {
            addToComponents(obj12, g0, obj9, h0);
        }
        this.Vertical_CONTAINER = null;
        Object obj13 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj14 = j0;
        if (obj13 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, i0, obj14, k0), consumer);
        } else {
            addToComponents(simpleSymbol, m0, obj14, n0);
        }
        this.Horizontal_TEXBOX = null;
        Object obj15 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj16 = p0;
        if (obj15 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj14, o0, obj16, q0), consumer);
        } else {
            addToComponents(obj14, r0, obj16, s0);
        }
        this.Card_ViewTexboX = null;
        Object obj17 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj18 = u0;
        if (obj17 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj16, t0, obj18, v0), consumer);
        } else {
            addToComponents(obj16, H0, obj18, I0);
        }
        this.Text_Boxurl2 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj18, J0, obj8, K0), consumer);
        } else {
            addToComponents(obj18, V0, obj8, W0);
        }
        this.ButtonGOTEXBOX = null;
        Object obj19 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj20 = Y0;
        if (obj19 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj16, X0, obj20, Z0), consumer);
        } else {
            addToComponents(obj16, g1, obj20, h1);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(symbol15, this.ButtonGOTEXBOX$Click);
        } else {
            addToFormEnvironment(symbol15, this.ButtonGOTEXBOX$Click);
        }
        Object obj21 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj22 = n1;
        if (obj21 != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "ButtonGOTEXBOX", "Click");
        } else {
            addToEvents(obj20, obj22);
        }
        this.ButtonREFRESH = null;
        Object obj23 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj24 = p1;
        if (obj23 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj16, o1, obj24, q1), consumer);
        } else {
            addToComponents(obj16, r1, obj24, s1);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(symbol14, this.ButtonREFRESH$Click);
        } else {
            addToFormEnvironment(symbol14, this.ButtonREFRESH$Click);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "ButtonREFRESH", "Click");
        } else {
            addToEvents(obj24, obj22);
        }
        this.ButtonEXIT = null;
        Object obj25 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj26 = x1;
        if (obj25 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj16, w1, obj26, y1), consumer);
        } else {
            addToComponents(obj16, C1, obj26, D1);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(symbol13, this.ButtonEXIT$Click);
        } else {
            addToFormEnvironment(symbol13, this.ButtonEXIT$Click);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "ButtonEXIT", "Click");
        } else {
            addToEvents(obj26, obj22);
        }
        this.Hori_PASSWORD = null;
        Object obj27 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj28 = G1;
        if (obj27 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj14, J1, obj28, K1), consumer);
        } else {
            addToComponents(obj14, L1, obj28, M1);
        }
        this.ButtonBACK = null;
        Object obj29 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj30 = O1;
        if (obj29 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj28, N1, obj30, P1), consumer);
        } else {
            addToComponents(obj28, Q1, obj30, R1);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(symbol, this.ButtonBACK$Click);
        } else {
            addToFormEnvironment(symbol, this.ButtonBACK$Click);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "ButtonBACK", "Click");
        } else {
            addToEvents(obj30, obj22);
        }
        this.Card_ViewTexbox_EXIT = null;
        Object obj31 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj32 = U1;
        if (obj31 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj28, T1, obj32, V1), consumer);
        } else {
            addToComponents(obj28, Y1, obj32, Z1);
        }
        this.Text_BOX_PASSWORD_EXIT = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj32, a2, obj, b2), consumer);
        } else {
            addToComponents(obj32, g2, obj, h2);
        }
        this.YESEXIT = null;
        Object obj33 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj34 = j2;
        if (obj33 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj28, i2, obj34, k2), consumer);
        } else {
            addToComponents(obj28, l2, obj34, m2);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(symbol3, this.YESEXIT$Click);
        } else {
            addToFormEnvironment(symbol3, this.YESEXIT$Click);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "YESEXIT", "Click");
        } else {
            addToEvents(obj34, obj22);
        }
        this.Web_View1 = null;
        Object obj35 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj36 = i1;
        if (obj35 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj14, o2, obj36, p2), consumer);
        } else {
            addToComponents(obj14, q2, obj36, r2);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(symbol2, this.Web_View1$ErrorOccurred);
        } else {
            addToFormEnvironment(symbol2, this.Web_View1$ErrorOccurred);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            str = "Web_View1";
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, str, "ErrorOccurred");
        } else {
            str = "Web_View1";
            addToEvents(obj36, x2);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(symbol9, this.Web_View1$ProgressChanged);
        } else {
            addToFormEnvironment(symbol9, this.Web_View1$ProgressChanged);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, str, "ProgressChanged");
        } else {
            addToEvents(obj36, B2);
        }
        this.ButtonBAWAH = null;
        Object obj37 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj38 = D2;
        if (obj37 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj14, C2, obj38, E2), consumer);
        } else {
            addToComponents(obj14, I2, obj38, J2);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(symbol8, this.ButtonBAWAH$GotFocus);
        } else {
            addToFormEnvironment(symbol8, this.ButtonBAWAH$GotFocus);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "ButtonBAWAH", "GotFocus");
        } else {
            addToEvents(obj38, S2);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(symbol7, this.ButtonBAWAH$TouchDown);
        } else {
            addToFormEnvironment(symbol7, this.ButtonBAWAH$TouchDown);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "ButtonBAWAH", "TouchDown");
        } else {
            addToEvents(obj38, V2);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(symbol6, this.ButtonBAWAH$TouchUp);
        } else {
            addToFormEnvironment(symbol6, this.ButtonBAWAH$TouchUp);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "ButtonBAWAH", "TouchUp");
        } else {
            addToEvents(obj38, Y2);
        }
        this.Vertical_ERROR = null;
        Object obj39 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj40 = v2;
        if (obj39 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, Z2, obj40, a3), consumer);
        } else {
            addToComponents(simpleSymbol, b3, obj40, c3);
        }
        this.Lottie_Animation1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj40, d3, obj6, f3), consumer);
        } else {
            addToComponents(obj40, k3, obj6, l3);
        }
        this.KELUAR = null;
        Object obj41 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj42 = n3;
        if (obj41 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj40, m3, obj42, o3), consumer);
        } else {
            addToComponents(obj40, r3, obj42, s3);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(symbol5, this.KELUAR$Click);
        } else {
            addToFormEnvironment(symbol5, this.KELUAR$Click);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "KELUAR", "Click");
        } else {
            addToEvents(obj42, obj22);
        }
        this.Spacer1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj40, u3, obj5, w3), consumer);
        } else {
            addToComponents(obj40, y3, obj5, z3);
        }
        this.Player1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, A3, obj4, B3), consumer);
        } else {
            addToComponents(simpleSymbol, E3, obj4, F3);
        }
        this.TaifunSettings1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, G3, obj3, bool), consumer);
        } else {
            addToComponents(simpleSymbol, I3, obj3, bool);
        }
        this.Notifier1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, J3, obj2, bool), consumer);
        } else {
            addToComponents(simpleSymbol, K3, obj2, bool);
        }
        this.Clock1 = null;
        Object obj43 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj44 = C;
        if (obj43 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol, L3, obj44, M3), consumer);
        } else {
            addToComponents(simpleSymbol, Q3, obj44, R3);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(symbol4, this.Clock1$Timer);
        } else {
            addToFormEnvironment(symbol4, this.Clock1$Timer);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Clock1", "Timer");
        } else {
            addToEvents(obj44, U3);
        }
        runtime.initRuntime();
    }

    public Object url2$Initialize() throws Throwable {
        runtime.setThisForm();
        runtime.callComponentMethod(f5438a, y, LList.list1(Permission.Camera), z);
        SimpleSymbol simpleSymbol = B;
        LList lList = LList.Empty;
        runtime.callComponentMethod(A, simpleSymbol, lList, lList);
        Boolean bool = Boolean.TRUE;
        SimpleSymbol simpleSymbol2 = C;
        SimpleSymbol simpleSymbol3 = D;
        SimpleSymbol simpleSymbol4 = k;
        runtime.setAndCoerceProperty$Ex(simpleSymbol2, simpleSymbol3, bool, simpleSymbol4);
        return runtime.setAndCoerceProperty$Ex(E, F, Boolean.FALSE, simpleSymbol4);
    }

    public Object url2$BackPressed() {
        runtime.setThisForm();
        ModuleMethod moduleMethod = runtime.close$Mnapplication;
        LList lList = LList.Empty;
        return runtime.callYailPrimitive(moduleMethod, lList, lList, "close application");
    }

    public Object ButtonGOTEXBOX$Click() throws Throwable {
        runtime.setThisForm();
        runtime.callComponentMethod(i1, j1, LList.list1(runtime.get$Mnproperty.apply2(A, f1)), k1);
        SimpleSymbol simpleSymbol = l1;
        LList lList = LList.Empty;
        return runtime.callComponentMethod(f5438a, simpleSymbol, lList, lList);
    }

    public Object ButtonREFRESH$Click() {
        runtime.setThisForm();
        ModuleMethod moduleMethod = runtime.get$Mnproperty;
        SimpleSymbol simpleSymbol = t1;
        SimpleSymbol simpleSymbol2 = i1;
        return runtime.callComponentMethod(simpleSymbol2, j1, LList.list1(moduleMethod.apply2(simpleSymbol2, simpleSymbol)), u1);
    }

    public Object ButtonEXIT$Click() throws Throwable {
        runtime.setThisForm();
        LList lList = LList.Empty;
        SimpleSymbol simpleSymbol = E1;
        runtime.callComponentMethod(simpleSymbol, F1, lList, lList);
        runtime.callComponentMethod(simpleSymbol, B, lList, lList);
        Boolean bool = Boolean.FALSE;
        SimpleSymbol simpleSymbol2 = p0;
        SimpleSymbol simpleSymbol3 = F;
        SimpleSymbol simpleSymbol4 = k;
        runtime.setAndCoerceProperty$Ex(simpleSymbol2, simpleSymbol3, bool, simpleSymbol4);
        return runtime.setAndCoerceProperty$Ex(G1, simpleSymbol3, Boolean.TRUE, simpleSymbol4);
    }

    public Object ButtonBACK$Click() throws Throwable {
        runtime.setThisForm();
        SimpleSymbol simpleSymbol = l1;
        LList lList = LList.Empty;
        runtime.callComponentMethod(f5438a, simpleSymbol, lList, lList);
        Boolean bool = Boolean.TRUE;
        SimpleSymbol simpleSymbol2 = p0;
        SimpleSymbol simpleSymbol3 = F;
        SimpleSymbol simpleSymbol4 = k;
        runtime.setAndCoerceProperty$Ex(simpleSymbol2, simpleSymbol3, bool, simpleSymbol4);
        return runtime.setAndCoerceProperty$Ex(G1, simpleSymbol3, Boolean.FALSE, simpleSymbol4);
    }

    public class frame extends ModuleBody {
        public url2 c;

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            return moduleMethod.selector == 58 ? this.c.Web_View1$ErrorOccurred(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
        }

        @Override // gnu.expr.ModuleBody
        public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
            if (moduleMethod.selector != 58) {
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
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            int i = moduleMethod.selector;
            if (i == 1) {
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            }
            if (i == 2) {
                if (!(obj instanceof url2)) {
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
            if (i == 59) {
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
                    if (!(obj instanceof url2)) {
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
            if (i != 15) {
                if (i != 16) {
                    return super.match4(moduleMethod, obj, obj2, obj3, obj4, callContext);
                }
                if (!(obj instanceof url2)) {
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
            if (!(obj instanceof url2)) {
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
            if (i != 59) {
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

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) throws Throwable {
            switch (moduleMethod.selector) {
                case 18:
                    url2 url2Var = url2.url2;
                    return null;
                case 19:
                    this.c.$define();
                    return Values.empty;
                case 20:
                    IntNum intNum = url2.f;
                    SimpleSymbol simpleSymbol = url2.f5440g;
                    SimpleSymbol simpleSymbol2 = url2.f5438a;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol2, url2.e, intNum, simpleSymbol);
                    SimpleSymbol simpleSymbol3 = url2.h;
                    SimpleSymbol simpleSymbol4 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol2, simpleSymbol3, "RDEV_EXAM_V9", simpleSymbol4);
                    Boolean bool = Boolean.TRUE;
                    SimpleSymbol simpleSymbol5 = url2.j;
                    SimpleSymbol simpleSymbol6 = url2.k;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol2, simpleSymbol5, bool, simpleSymbol6);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol2, url2.l, bool, simpleSymbol6);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol2, url2.m, "unspecified", simpleSymbol4);
                    Boolean bool2 = Boolean.FALSE;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol2, url2.n, bool2, simpleSymbol6);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol2, url2.o, bool, simpleSymbol6);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol2, url2.p, bool2, simpleSymbol6);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol2, url2.q, bool2, simpleSymbol6);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol2, url2.r, bool2, simpleSymbol6);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol2, url2.s, "Responsive", simpleSymbol4);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol2, url2.t, bool2, simpleSymbol6);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol2, url2.u, "Classic", simpleSymbol4);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol2, url2.v, "url2", simpleSymbol4);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol2, url2.w, bool2, simpleSymbol6);
                case 21:
                    return this.c.url2$Initialize();
                case 22:
                    return this.c.url2$BackPressed();
                case 23:
                    SimpleSymbol simpleSymbol7 = url2.E;
                    SimpleSymbol simpleSymbol8 = url2.M;
                    IntNum intNum2 = url2.N;
                    SimpleSymbol simpleSymbol9 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol7, simpleSymbol8, intNum2, simpleSymbol9);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol7, url2.O, url2.P, simpleSymbol9);
                    SimpleSymbol simpleSymbol10 = url2.Q;
                    SimpleSymbol simpleSymbol11 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol7, simpleSymbol10, "0,0,0,0", simpleSymbol11);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol7, url2.R, "0,0,0,0", simpleSymbol11);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol7, url2.S, url2.T, simpleSymbol9);
                case 24:
                    SimpleSymbol simpleSymbol12 = url2.E;
                    SimpleSymbol simpleSymbol13 = url2.M;
                    IntNum intNum3 = url2.N;
                    SimpleSymbol simpleSymbol14 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol12, simpleSymbol13, intNum3, simpleSymbol14);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol12, url2.O, url2.P, simpleSymbol14);
                    SimpleSymbol simpleSymbol15 = url2.Q;
                    SimpleSymbol simpleSymbol16 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol12, simpleSymbol15, "0,0,0,0", simpleSymbol16);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol12, url2.R, "0,0,0,0", simpleSymbol16);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol12, url2.S, url2.T, simpleSymbol14);
                case 25:
                    SimpleSymbol simpleSymbol17 = url2.X;
                    SimpleSymbol simpleSymbol18 = url2.Z;
                    IntNum intNum4 = url2.a0;
                    SimpleSymbol simpleSymbol19 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol17, simpleSymbol18, intNum4, simpleSymbol19);
                    SimpleSymbol simpleSymbol20 = url2.Q;
                    SimpleSymbol simpleSymbol21 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol17, simpleSymbol20, "0,0,0,0", simpleSymbol21);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol17, url2.R, "0,0,0,0", simpleSymbol21);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol17, url2.b0, Boolean.TRUE, url2.k);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol17, url2.c0, url2.d0, simpleSymbol19);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol17, url2.e0, url2.f0, simpleSymbol19);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol17, url2.S, url2.T, simpleSymbol19);
                case 26:
                    SimpleSymbol simpleSymbol22 = url2.X;
                    SimpleSymbol simpleSymbol23 = url2.Z;
                    IntNum intNum5 = url2.a0;
                    SimpleSymbol simpleSymbol24 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol22, simpleSymbol23, intNum5, simpleSymbol24);
                    SimpleSymbol simpleSymbol25 = url2.Q;
                    SimpleSymbol simpleSymbol26 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol22, simpleSymbol25, "0,0,0,0", simpleSymbol26);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol22, url2.R, "0,0,0,0", simpleSymbol26);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol22, url2.b0, Boolean.TRUE, url2.k);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol22, url2.c0, url2.d0, simpleSymbol24);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol22, url2.e0, url2.f0, simpleSymbol24);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol22, url2.S, url2.T, simpleSymbol24);
                case 27:
                    SimpleSymbol simpleSymbol27 = url2.j0;
                    SimpleSymbol simpleSymbol28 = url2.M;
                    IntNum intNum6 = url2.N;
                    SimpleSymbol simpleSymbol29 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol27, simpleSymbol28, intNum6, simpleSymbol29);
                    SimpleSymbol simpleSymbol30 = url2.l0;
                    IntNum intNum7 = url2.T;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol27, simpleSymbol30, intNum7, simpleSymbol29);
                    SimpleSymbol simpleSymbol31 = url2.Q;
                    SimpleSymbol simpleSymbol32 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol27, simpleSymbol31, "0,0,0,0", simpleSymbol32);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol27, url2.R, "0,0,0,0", simpleSymbol32);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol27, url2.S, intNum7, simpleSymbol29);
                case 28:
                    SimpleSymbol simpleSymbol33 = url2.j0;
                    SimpleSymbol simpleSymbol34 = url2.M;
                    IntNum intNum8 = url2.N;
                    SimpleSymbol simpleSymbol35 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol33, simpleSymbol34, intNum8, simpleSymbol35);
                    SimpleSymbol simpleSymbol36 = url2.l0;
                    IntNum intNum9 = url2.T;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol33, simpleSymbol36, intNum9, simpleSymbol35);
                    SimpleSymbol simpleSymbol37 = url2.Q;
                    SimpleSymbol simpleSymbol38 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol33, simpleSymbol37, "0,0,0,0", simpleSymbol38);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol33, url2.R, "0,0,0,0", simpleSymbol38);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol33, url2.S, intNum9, simpleSymbol35);
                case 29:
                    SimpleSymbol simpleSymbol39 = url2.p0;
                    SimpleSymbol simpleSymbol40 = url2.M;
                    IntNum intNum10 = url2.N;
                    SimpleSymbol simpleSymbol41 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol39, simpleSymbol40, intNum10, simpleSymbol41);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol39, url2.O, url2.P, simpleSymbol41);
                    SimpleSymbol simpleSymbol42 = url2.Q;
                    SimpleSymbol simpleSymbol43 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol39, simpleSymbol42, "0,0,0,0", simpleSymbol43);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol39, url2.R, "0,0,0,0", simpleSymbol43);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol39, url2.S, url2.T, simpleSymbol41);
                case 30:
                    SimpleSymbol simpleSymbol44 = url2.p0;
                    SimpleSymbol simpleSymbol45 = url2.M;
                    IntNum intNum11 = url2.N;
                    SimpleSymbol simpleSymbol46 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol44, simpleSymbol45, intNum11, simpleSymbol46);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol44, url2.O, url2.P, simpleSymbol46);
                    SimpleSymbol simpleSymbol47 = url2.Q;
                    SimpleSymbol simpleSymbol48 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol44, simpleSymbol47, "0,0,0,0", simpleSymbol48);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol44, url2.R, "0,0,0,0", simpleSymbol48);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol44, url2.S, url2.T, simpleSymbol46);
                case 31:
                    SimpleSymbol simpleSymbol49 = url2.u0;
                    SimpleSymbol simpleSymbol50 = url2.M;
                    IntNum intNum12 = url2.N;
                    SimpleSymbol simpleSymbol51 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol49, simpleSymbol50, intNum12, simpleSymbol51);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol49, url2.O, url2.P, simpleSymbol51);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol49, url2.Z, url2.w0, simpleSymbol51);
                    SimpleSymbol simpleSymbol52 = url2.x0;
                    IntNum intNum13 = url2.y0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol49, simpleSymbol52, intNum13, simpleSymbol51);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol49, url2.z0, url2.A0, simpleSymbol51);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol49, url2.B0, intNum13, simpleSymbol51);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol49, url2.C0, intNum13, simpleSymbol51);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol49, url2.D0, Boolean.FALSE, url2.k);
                    SimpleSymbol simpleSymbol53 = url2.Q;
                    SimpleSymbol simpleSymbol54 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol49, simpleSymbol53, "0,0,0,0", simpleSymbol54);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol49, url2.R, "0,0,0,0", simpleSymbol54);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol49, url2.E0, url2.F0, simpleSymbol51);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol49, url2.S, url2.G0, simpleSymbol51);
                case 32:
                    SimpleSymbol simpleSymbol55 = url2.u0;
                    SimpleSymbol simpleSymbol56 = url2.M;
                    IntNum intNum14 = url2.N;
                    SimpleSymbol simpleSymbol57 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol55, simpleSymbol56, intNum14, simpleSymbol57);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol55, url2.O, url2.P, simpleSymbol57);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol55, url2.Z, url2.w0, simpleSymbol57);
                    SimpleSymbol simpleSymbol58 = url2.x0;
                    IntNum intNum15 = url2.y0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol55, simpleSymbol58, intNum15, simpleSymbol57);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol55, url2.z0, url2.A0, simpleSymbol57);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol55, url2.B0, intNum15, simpleSymbol57);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol55, url2.C0, intNum15, simpleSymbol57);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol55, url2.D0, Boolean.FALSE, url2.k);
                    SimpleSymbol simpleSymbol59 = url2.Q;
                    SimpleSymbol simpleSymbol60 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol55, simpleSymbol59, "0,0,0,0", simpleSymbol60);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol55, url2.R, "0,0,0,0", simpleSymbol60);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol55, url2.E0, url2.F0, simpleSymbol57);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol55, url2.S, url2.G0, simpleSymbol57);
                case 33:
                    SimpleSymbol simpleSymbol61 = url2.A;
                    SimpleSymbol simpleSymbol62 = url2.Z;
                    IntNum intNum16 = url2.L0;
                    SimpleSymbol simpleSymbol63 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol61, simpleSymbol62, intNum16, simpleSymbol63);
                    SimpleSymbol simpleSymbol64 = url2.M0;
                    SimpleSymbol simpleSymbol65 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol61, simpleSymbol64, "1", simpleSymbol65);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol61, url2.Q, "0,0,0,0", simpleSymbol65);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol61, url2.N0, "Masukan link/ip ujian", simpleSymbol65);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol61, url2.O0, url2.P0, simpleSymbol63);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol61, url2.Q0, url2.R0, simpleSymbol63);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol61, url2.S0, url2.T0, simpleSymbol63);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol61, url2.S, url2.U0, simpleSymbol63);
                case 34:
                    SimpleSymbol simpleSymbol66 = url2.A;
                    SimpleSymbol simpleSymbol67 = url2.Z;
                    IntNum intNum17 = url2.L0;
                    SimpleSymbol simpleSymbol68 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol66, simpleSymbol67, intNum17, simpleSymbol68);
                    SimpleSymbol simpleSymbol69 = url2.M0;
                    SimpleSymbol simpleSymbol70 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol66, simpleSymbol69, "1", simpleSymbol70);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol66, url2.Q, "0,0,0,0", simpleSymbol70);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol66, url2.N0, "Masukan link/ip ujian", simpleSymbol70);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol66, url2.O0, url2.P0, simpleSymbol68);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol66, url2.Q0, url2.R0, simpleSymbol68);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol66, url2.S0, url2.T0, simpleSymbol68);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol66, url2.S, url2.U0, simpleSymbol68);
                case 35:
                    Boolean bool3 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol71 = url2.k;
                    SimpleSymbol simpleSymbol72 = url2.Y0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol72, url2.a1, bool3, simpleSymbol71);
                    SimpleSymbol simpleSymbol73 = url2.b1;
                    IntNum intNum18 = url2.c1;
                    SimpleSymbol simpleSymbol74 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol72, simpleSymbol73, intNum18, simpleSymbol74);
                    SimpleSymbol simpleSymbol75 = url2.M0;
                    SimpleSymbol simpleSymbol76 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol72, simpleSymbol75, Component.TYPEFACE_GOOGLE_MATERIAL_DESIGN, simpleSymbol76);
                    SimpleSymbol simpleSymbol77 = url2.l0;
                    IntNum intNum19 = url2.d1;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol72, simpleSymbol77, intNum19, simpleSymbol74);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol72, url2.Q, "0,0,0,0", simpleSymbol76);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol72, url2.e1, url2.N, simpleSymbol74);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol72, url2.f1, "search", simpleSymbol76);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol72, url2.S, intNum19, simpleSymbol74);
                case 36:
                    Boolean bool4 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol78 = url2.k;
                    SimpleSymbol simpleSymbol79 = url2.Y0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol79, url2.a1, bool4, simpleSymbol78);
                    SimpleSymbol simpleSymbol80 = url2.b1;
                    IntNum intNum20 = url2.c1;
                    SimpleSymbol simpleSymbol81 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol79, simpleSymbol80, intNum20, simpleSymbol81);
                    SimpleSymbol simpleSymbol82 = url2.M0;
                    SimpleSymbol simpleSymbol83 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol79, simpleSymbol82, Component.TYPEFACE_GOOGLE_MATERIAL_DESIGN, simpleSymbol83);
                    SimpleSymbol simpleSymbol84 = url2.l0;
                    IntNum intNum21 = url2.d1;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol79, simpleSymbol84, intNum21, simpleSymbol81);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol79, url2.Q, "0,0,0,0", simpleSymbol83);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol79, url2.e1, url2.N, simpleSymbol81);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol79, url2.f1, "search", simpleSymbol83);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol79, url2.S, intNum21, simpleSymbol81);
                case 37:
                    return this.c.ButtonGOTEXBOX$Click();
                case 38:
                    Boolean bool5 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol85 = url2.k;
                    SimpleSymbol simpleSymbol86 = url2.p1;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol86, url2.a1, bool5, simpleSymbol85);
                    SimpleSymbol simpleSymbol87 = url2.b1;
                    IntNum intNum22 = url2.c1;
                    SimpleSymbol simpleSymbol88 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol86, simpleSymbol87, intNum22, simpleSymbol88);
                    SimpleSymbol simpleSymbol89 = url2.M0;
                    SimpleSymbol simpleSymbol90 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol86, simpleSymbol89, Component.TYPEFACE_GOOGLE_MATERIAL_DESIGN, simpleSymbol90);
                    SimpleSymbol simpleSymbol91 = url2.l0;
                    IntNum intNum23 = url2.d1;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol86, simpleSymbol91, intNum23, simpleSymbol88);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol86, url2.Q, "0,0,0,0", simpleSymbol90);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol86, url2.e1, url2.N, simpleSymbol88);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol86, url2.f1, "refresh", simpleSymbol90);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol86, url2.S, intNum23, simpleSymbol88);
                case 39:
                    Boolean bool6 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol92 = url2.k;
                    SimpleSymbol simpleSymbol93 = url2.p1;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol93, url2.a1, bool6, simpleSymbol92);
                    SimpleSymbol simpleSymbol94 = url2.b1;
                    IntNum intNum24 = url2.c1;
                    SimpleSymbol simpleSymbol95 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol93, simpleSymbol94, intNum24, simpleSymbol95);
                    SimpleSymbol simpleSymbol96 = url2.M0;
                    SimpleSymbol simpleSymbol97 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol93, simpleSymbol96, Component.TYPEFACE_GOOGLE_MATERIAL_DESIGN, simpleSymbol97);
                    SimpleSymbol simpleSymbol98 = url2.l0;
                    IntNum intNum25 = url2.d1;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol93, simpleSymbol98, intNum25, simpleSymbol95);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol93, url2.Q, "0,0,0,0", simpleSymbol97);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol93, url2.e1, url2.N, simpleSymbol95);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol93, url2.f1, "refresh", simpleSymbol97);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol93, url2.S, intNum25, simpleSymbol95);
                case 40:
                    return this.c.ButtonREFRESH$Click();
                case 41:
                    SimpleSymbol simpleSymbol99 = url2.x1;
                    SimpleSymbol simpleSymbol100 = url2.Z;
                    IntNum intNum26 = url2.z1;
                    SimpleSymbol simpleSymbol101 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol99, simpleSymbol100, intNum26, simpleSymbol101);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol99, url2.a1, Boolean.TRUE, url2.k);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol99, url2.b1, url2.A1, simpleSymbol101);
                    SimpleSymbol simpleSymbol102 = url2.M0;
                    SimpleSymbol simpleSymbol103 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol99, simpleSymbol102, Component.TYPEFACE_GOOGLE_MATERIAL_DESIGN, simpleSymbol103);
                    SimpleSymbol simpleSymbol104 = url2.l0;
                    IntNum intNum27 = url2.d1;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol99, simpleSymbol104, intNum27, simpleSymbol101);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol99, url2.Q, "0,0,0,0", simpleSymbol103);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol99, url2.e1, url2.N, simpleSymbol101);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol99, url2.f1, "close", simpleSymbol103);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol99, url2.S0, url2.B1, simpleSymbol101);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol99, url2.S, intNum27, simpleSymbol101);
                case 42:
                    SimpleSymbol simpleSymbol105 = url2.x1;
                    SimpleSymbol simpleSymbol106 = url2.Z;
                    IntNum intNum28 = url2.z1;
                    SimpleSymbol simpleSymbol107 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol105, simpleSymbol106, intNum28, simpleSymbol107);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol105, url2.a1, Boolean.TRUE, url2.k);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol105, url2.b1, url2.A1, simpleSymbol107);
                    SimpleSymbol simpleSymbol108 = url2.M0;
                    SimpleSymbol simpleSymbol109 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol105, simpleSymbol108, Component.TYPEFACE_GOOGLE_MATERIAL_DESIGN, simpleSymbol109);
                    SimpleSymbol simpleSymbol110 = url2.l0;
                    IntNum intNum29 = url2.d1;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol105, simpleSymbol110, intNum29, simpleSymbol107);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol105, url2.Q, "0,0,0,0", simpleSymbol109);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol105, url2.e1, url2.N, simpleSymbol107);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol105, url2.f1, "close", simpleSymbol109);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol105, url2.S0, url2.B1, simpleSymbol107);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol105, url2.S, intNum29, simpleSymbol107);
                case 43:
                    return this.c.ButtonEXIT$Click();
                case 44:
                    SimpleSymbol simpleSymbol111 = url2.G1;
                    SimpleSymbol simpleSymbol112 = url2.M;
                    IntNum intNum30 = url2.N;
                    SimpleSymbol simpleSymbol113 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol111, simpleSymbol112, intNum30, simpleSymbol113);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol111, url2.O, url2.P, simpleSymbol113);
                    SimpleSymbol simpleSymbol114 = url2.Q;
                    SimpleSymbol simpleSymbol115 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol111, simpleSymbol114, "0,0,0,0", simpleSymbol115);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol111, url2.R, "0,0,0,0", simpleSymbol115);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol111, url2.F, Boolean.FALSE, url2.k);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol111, url2.S, url2.T, simpleSymbol113);
                case 45:
                    SimpleSymbol simpleSymbol116 = url2.G1;
                    SimpleSymbol simpleSymbol117 = url2.M;
                    IntNum intNum31 = url2.N;
                    SimpleSymbol simpleSymbol118 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol116, simpleSymbol117, intNum31, simpleSymbol118);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol116, url2.O, url2.P, simpleSymbol118);
                    SimpleSymbol simpleSymbol119 = url2.Q;
                    SimpleSymbol simpleSymbol120 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol116, simpleSymbol119, "0,0,0,0", simpleSymbol120);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol116, url2.R, "0,0,0,0", simpleSymbol120);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol116, url2.F, Boolean.FALSE, url2.k);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol116, url2.S, url2.T, simpleSymbol118);
                case 46:
                    Boolean bool7 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol121 = url2.k;
                    SimpleSymbol simpleSymbol122 = url2.O1;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol122, url2.a1, bool7, simpleSymbol121);
                    SimpleSymbol simpleSymbol123 = url2.b1;
                    IntNum intNum32 = url2.A1;
                    SimpleSymbol simpleSymbol124 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol122, simpleSymbol123, intNum32, simpleSymbol124);
                    SimpleSymbol simpleSymbol125 = url2.M0;
                    SimpleSymbol simpleSymbol126 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol122, simpleSymbol125, Component.TYPEFACE_GOOGLE_MATERIAL_DESIGN, simpleSymbol126);
                    SimpleSymbol simpleSymbol127 = url2.l0;
                    IntNum intNum33 = url2.d1;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol122, simpleSymbol127, intNum33, simpleSymbol124);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol122, url2.Q, "0,0,0,0", simpleSymbol126);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol122, url2.e1, url2.N, simpleSymbol124);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol122, url2.f1, "arrow_back", simpleSymbol126);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol122, url2.S, intNum33, simpleSymbol124);
                case 47:
                    Boolean bool8 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol128 = url2.k;
                    SimpleSymbol simpleSymbol129 = url2.O1;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol129, url2.a1, bool8, simpleSymbol128);
                    SimpleSymbol simpleSymbol130 = url2.b1;
                    IntNum intNum34 = url2.A1;
                    SimpleSymbol simpleSymbol131 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol129, simpleSymbol130, intNum34, simpleSymbol131);
                    SimpleSymbol simpleSymbol132 = url2.M0;
                    SimpleSymbol simpleSymbol133 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol129, simpleSymbol132, Component.TYPEFACE_GOOGLE_MATERIAL_DESIGN, simpleSymbol133);
                    SimpleSymbol simpleSymbol134 = url2.l0;
                    IntNum intNum35 = url2.d1;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol129, simpleSymbol134, intNum35, simpleSymbol131);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol129, url2.Q, "0,0,0,0", simpleSymbol133);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol129, url2.e1, url2.N, simpleSymbol131);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol129, url2.f1, "arrow_back", simpleSymbol133);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol129, url2.S, intNum35, simpleSymbol131);
                case 48:
                    return this.c.ButtonBACK$Click();
                case 49:
                    SimpleSymbol simpleSymbol135 = url2.U1;
                    SimpleSymbol simpleSymbol136 = url2.M;
                    IntNum intNum36 = url2.N;
                    SimpleSymbol simpleSymbol137 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol135, simpleSymbol136, intNum36, simpleSymbol137);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol135, url2.O, url2.P, simpleSymbol137);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol135, url2.Z, url2.W1, simpleSymbol137);
                    SimpleSymbol simpleSymbol138 = url2.x0;
                    IntNum intNum37 = url2.y0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol135, simpleSymbol138, intNum37, simpleSymbol137);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol135, url2.z0, url2.A0, simpleSymbol137);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol135, url2.B0, intNum37, simpleSymbol137);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol135, url2.C0, intNum37, simpleSymbol137);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol135, url2.D0, Boolean.FALSE, url2.k);
                    SimpleSymbol simpleSymbol139 = url2.Q;
                    SimpleSymbol simpleSymbol140 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol135, simpleSymbol139, "0,0,0,0", simpleSymbol140);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol135, url2.R, "0,0,0,0", simpleSymbol140);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol135, url2.E0, url2.F0, simpleSymbol137);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol135, url2.S, url2.X1, simpleSymbol137);
                case 50:
                    SimpleSymbol simpleSymbol141 = url2.U1;
                    SimpleSymbol simpleSymbol142 = url2.M;
                    IntNum intNum38 = url2.N;
                    SimpleSymbol simpleSymbol143 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol141, simpleSymbol142, intNum38, simpleSymbol143);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol141, url2.O, url2.P, simpleSymbol143);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol141, url2.Z, url2.W1, simpleSymbol143);
                    SimpleSymbol simpleSymbol144 = url2.x0;
                    IntNum intNum39 = url2.y0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol141, simpleSymbol144, intNum39, simpleSymbol143);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol141, url2.z0, url2.A0, simpleSymbol143);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol141, url2.B0, intNum39, simpleSymbol143);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol141, url2.C0, intNum39, simpleSymbol143);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol141, url2.D0, Boolean.FALSE, url2.k);
                    SimpleSymbol simpleSymbol145 = url2.Q;
                    SimpleSymbol simpleSymbol146 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol141, simpleSymbol145, "0,0,0,0", simpleSymbol146);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol141, url2.R, "0,0,0,0", simpleSymbol146);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol141, url2.E0, url2.F0, simpleSymbol143);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol141, url2.S, url2.X1, simpleSymbol143);
                case 51:
                    SimpleSymbol simpleSymbol147 = url2.E1;
                    SimpleSymbol simpleSymbol148 = url2.Z;
                    IntNum intNum40 = url2.c2;
                    SimpleSymbol simpleSymbol149 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol147, simpleSymbol148, intNum40, simpleSymbol149);
                    SimpleSymbol simpleSymbol150 = url2.M0;
                    SimpleSymbol simpleSymbol151 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol147, simpleSymbol150, "1", simpleSymbol151);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol147, url2.Q, "0,0,0,0", simpleSymbol151);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol147, url2.N0, "Password untuk keluar", simpleSymbol151);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol147, url2.O0, url2.d2, simpleSymbol149);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol147, url2.Q0, url2.R0, simpleSymbol149);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol147, url2.S0, url2.e2, simpleSymbol149);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol147, url2.S, url2.f2, simpleSymbol149);
                case 52:
                    SimpleSymbol simpleSymbol152 = url2.E1;
                    SimpleSymbol simpleSymbol153 = url2.Z;
                    IntNum intNum41 = url2.c2;
                    SimpleSymbol simpleSymbol154 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol152, simpleSymbol153, intNum41, simpleSymbol154);
                    SimpleSymbol simpleSymbol155 = url2.M0;
                    SimpleSymbol simpleSymbol156 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol152, simpleSymbol155, "1", simpleSymbol156);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol152, url2.Q, "0,0,0,0", simpleSymbol156);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol152, url2.N0, "Password untuk keluar", simpleSymbol156);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol152, url2.O0, url2.d2, simpleSymbol154);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol152, url2.Q0, url2.R0, simpleSymbol154);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol152, url2.S0, url2.e2, simpleSymbol154);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol152, url2.S, url2.f2, simpleSymbol154);
                case 53:
                    Boolean bool9 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol157 = url2.k;
                    SimpleSymbol simpleSymbol158 = url2.j2;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol158, url2.a1, bool9, simpleSymbol157);
                    SimpleSymbol simpleSymbol159 = url2.b1;
                    IntNum intNum42 = url2.c1;
                    SimpleSymbol simpleSymbol160 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol158, simpleSymbol159, intNum42, simpleSymbol160);
                    SimpleSymbol simpleSymbol161 = url2.M0;
                    SimpleSymbol simpleSymbol162 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol158, simpleSymbol161, Component.TYPEFACE_GOOGLE_MATERIAL_DESIGN, simpleSymbol162);
                    SimpleSymbol simpleSymbol163 = url2.l0;
                    IntNum intNum43 = url2.d1;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol158, simpleSymbol163, intNum43, simpleSymbol160);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol158, url2.Q, "0,0,0,0", simpleSymbol162);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol158, url2.e1, url2.N, simpleSymbol160);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol158, url2.f1, "logout", simpleSymbol162);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol158, url2.S, intNum43, simpleSymbol160);
                case 54:
                    Boolean bool10 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol164 = url2.k;
                    SimpleSymbol simpleSymbol165 = url2.j2;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol165, url2.a1, bool10, simpleSymbol164);
                    SimpleSymbol simpleSymbol166 = url2.b1;
                    IntNum intNum44 = url2.c1;
                    SimpleSymbol simpleSymbol167 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol165, simpleSymbol166, intNum44, simpleSymbol167);
                    SimpleSymbol simpleSymbol168 = url2.M0;
                    SimpleSymbol simpleSymbol169 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol165, simpleSymbol168, Component.TYPEFACE_GOOGLE_MATERIAL_DESIGN, simpleSymbol169);
                    SimpleSymbol simpleSymbol170 = url2.l0;
                    IntNum intNum45 = url2.d1;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol165, simpleSymbol170, intNum45, simpleSymbol167);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol165, url2.Q, "0,0,0,0", simpleSymbol169);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol165, url2.e1, url2.N, simpleSymbol167);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol165, url2.f1, "logout", simpleSymbol169);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol165, url2.S, intNum45, simpleSymbol167);
                case 55:
                    return this.c.YESEXIT$Click();
                case 56:
                    SimpleSymbol simpleSymbol171 = url2.i1;
                    SimpleSymbol simpleSymbol172 = url2.l0;
                    IntNum intNum46 = url2.T;
                    SimpleSymbol simpleSymbol173 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol171, simpleSymbol172, intNum46, simpleSymbol173);
                    SimpleSymbol simpleSymbol174 = url2.Q;
                    SimpleSymbol simpleSymbol175 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol171, simpleSymbol174, "0,0,0,0", simpleSymbol175);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol171, url2.R, "0,0,0,0", simpleSymbol175);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol171, url2.S, intNum46, simpleSymbol173);
                case 57:
                    SimpleSymbol simpleSymbol176 = url2.i1;
                    SimpleSymbol simpleSymbol177 = url2.l0;
                    IntNum intNum47 = url2.T;
                    SimpleSymbol simpleSymbol178 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol176, simpleSymbol177, intNum47, simpleSymbol178);
                    SimpleSymbol simpleSymbol179 = url2.Q;
                    SimpleSymbol simpleSymbol180 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol176, simpleSymbol179, "0,0,0,0", simpleSymbol180);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol176, url2.R, "0,0,0,0", simpleSymbol180);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol176, url2.S, intNum47, simpleSymbol178);
                case 58:
                case 59:
                default:
                    return super.apply0(moduleMethod);
                case 60:
                    SimpleSymbol simpleSymbol181 = url2.D2;
                    SimpleSymbol simpleSymbol182 = url2.Z;
                    IntNum intNum48 = url2.F2;
                    SimpleSymbol simpleSymbol183 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol181, simpleSymbol182, intNum48, simpleSymbol183);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol181, url2.l0, url2.G2, simpleSymbol183);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol181, url2.Q, "0,0,0,0", url2.i);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol181, url2.S, url2.T, simpleSymbol183);
                case 61:
                    SimpleSymbol simpleSymbol184 = url2.D2;
                    SimpleSymbol simpleSymbol185 = url2.Z;
                    IntNum intNum49 = url2.F2;
                    SimpleSymbol simpleSymbol186 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol184, simpleSymbol185, intNum49, simpleSymbol186);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol184, url2.l0, url2.G2, simpleSymbol186);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol184, url2.Q, "0,0,0,0", url2.i);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol184, url2.S, url2.T, simpleSymbol186);
                case 62:
                    return this.c.ButtonBAWAH$GotFocus();
                case 63:
                    return this.c.ButtonBAWAH$TouchDown();
                case 64:
                    return this.c.ButtonBAWAH$TouchUp();
                case 65:
                    SimpleSymbol simpleSymbol187 = url2.v2;
                    SimpleSymbol simpleSymbol188 = url2.M;
                    IntNum intNum50 = url2.N;
                    SimpleSymbol simpleSymbol189 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol187, simpleSymbol188, intNum50, simpleSymbol189);
                    SimpleSymbol simpleSymbol190 = url2.l0;
                    IntNum intNum51 = url2.T;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol187, simpleSymbol190, intNum51, simpleSymbol189);
                    SimpleSymbol simpleSymbol191 = url2.Q;
                    SimpleSymbol simpleSymbol192 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol187, simpleSymbol191, "0,0,0,0", simpleSymbol192);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol187, url2.R, "0,0,0,0", simpleSymbol192);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol187, url2.F, Boolean.FALSE, url2.k);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol187, url2.S, intNum51, simpleSymbol189);
                case 66:
                    SimpleSymbol simpleSymbol193 = url2.v2;
                    SimpleSymbol simpleSymbol194 = url2.M;
                    IntNum intNum52 = url2.N;
                    SimpleSymbol simpleSymbol195 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol193, simpleSymbol194, intNum52, simpleSymbol195);
                    SimpleSymbol simpleSymbol196 = url2.l0;
                    IntNum intNum53 = url2.T;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol193, simpleSymbol196, intNum53, simpleSymbol195);
                    SimpleSymbol simpleSymbol197 = url2.Q;
                    SimpleSymbol simpleSymbol198 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol193, simpleSymbol197, "0,0,0,0", simpleSymbol198);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol193, url2.R, "0,0,0,0", simpleSymbol198);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol193, url2.F, Boolean.FALSE, url2.k);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol193, url2.S, intNum53, simpleSymbol195);
                case 67:
                    SimpleSymbol simpleSymbol199 = url2.e3;
                    SimpleSymbol simpleSymbol200 = url2.g3;
                    IntNum intNum54 = url2.h3;
                    SimpleSymbol simpleSymbol201 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol199, simpleSymbol200, intNum54, simpleSymbol201);
                    SimpleSymbol simpleSymbol202 = url2.l0;
                    IntNum intNum55 = url2.T;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol199, simpleSymbol202, intNum55, simpleSymbol201);
                    SimpleSymbol simpleSymbol203 = url2.Q;
                    SimpleSymbol simpleSymbol204 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol199, simpleSymbol203, "0,0,0,0", simpleSymbol204);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol199, url2.R, "0,0,0,0", simpleSymbol204);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol199, url2.i3, Boolean.FALSE, url2.k);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol199, url2.j3, "animation_lndeobf2.json", simpleSymbol204);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol199, url2.S, intNum55, simpleSymbol201);
                case 68:
                    SimpleSymbol simpleSymbol205 = url2.e3;
                    SimpleSymbol simpleSymbol206 = url2.g3;
                    IntNum intNum56 = url2.h3;
                    SimpleSymbol simpleSymbol207 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol205, simpleSymbol206, intNum56, simpleSymbol207);
                    SimpleSymbol simpleSymbol208 = url2.l0;
                    IntNum intNum57 = url2.T;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol205, simpleSymbol208, intNum57, simpleSymbol207);
                    SimpleSymbol simpleSymbol209 = url2.Q;
                    SimpleSymbol simpleSymbol210 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol205, simpleSymbol209, "0,0,0,0", simpleSymbol210);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol205, url2.R, "0,0,0,0", simpleSymbol210);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol205, url2.i3, Boolean.FALSE, url2.k);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol205, url2.j3, "animation_lndeobf2.json", simpleSymbol210);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol205, url2.S, intNum57, simpleSymbol207);
                case 69:
                    SimpleSymbol simpleSymbol211 = url2.n3;
                    SimpleSymbol simpleSymbol212 = url2.Z;
                    IntNum intNum58 = url2.p3;
                    SimpleSymbol simpleSymbol213 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol211, simpleSymbol212, intNum58, simpleSymbol213);
                    SimpleSymbol simpleSymbol214 = url2.Q;
                    SimpleSymbol simpleSymbol215 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol211, simpleSymbol214, "0,0,0,0", simpleSymbol215);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol211, url2.f1, "COBA LAGI", simpleSymbol215);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol211, url2.S0, url2.q3, simpleSymbol213);
                case 70:
                    SimpleSymbol simpleSymbol216 = url2.n3;
                    SimpleSymbol simpleSymbol217 = url2.Z;
                    IntNum intNum59 = url2.p3;
                    SimpleSymbol simpleSymbol218 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol216, simpleSymbol217, intNum59, simpleSymbol218);
                    SimpleSymbol simpleSymbol219 = url2.Q;
                    SimpleSymbol simpleSymbol220 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol216, simpleSymbol219, "0,0,0,0", simpleSymbol220);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol216, url2.f1, "COBA LAGI", simpleSymbol220);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol216, url2.S0, url2.q3, simpleSymbol218);
                case 71:
                    return this.c.KELUAR$Click();
                case 72:
                    SimpleSymbol simpleSymbol221 = url2.v3;
                    SimpleSymbol simpleSymbol222 = url2.l0;
                    IntNum intNum60 = url2.x3;
                    SimpleSymbol simpleSymbol223 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol221, simpleSymbol222, intNum60, simpleSymbol223);
                    SimpleSymbol simpleSymbol224 = url2.Q;
                    SimpleSymbol simpleSymbol225 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol221, simpleSymbol224, "0,0,0,0", simpleSymbol225);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol221, url2.R, "0,0,0,0", simpleSymbol225);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol221, url2.S, url2.T, simpleSymbol223);
                case 73:
                    SimpleSymbol simpleSymbol226 = url2.v3;
                    SimpleSymbol simpleSymbol227 = url2.l0;
                    IntNum intNum61 = url2.x3;
                    SimpleSymbol simpleSymbol228 = url2.f5440g;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol226, simpleSymbol227, intNum61, simpleSymbol228);
                    SimpleSymbol simpleSymbol229 = url2.Q;
                    SimpleSymbol simpleSymbol230 = url2.i;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol226, simpleSymbol229, "0,0,0,0", simpleSymbol230);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol226, url2.R, "0,0,0,0", simpleSymbol230);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol226, url2.S, url2.T, simpleSymbol228);
                case 74:
                    SimpleSymbol simpleSymbol231 = url2.i;
                    SimpleSymbol simpleSymbol232 = url2.P2;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol232, url2.j3, "alert.mp3", simpleSymbol231);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol232, url2.C3, url2.D3, url2.f5440g);
                case 75:
                    SimpleSymbol simpleSymbol233 = url2.i;
                    SimpleSymbol simpleSymbol234 = url2.P2;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol234, url2.j3, "alert.mp3", simpleSymbol233);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol234, url2.C3, url2.D3, url2.f5440g);
                case 76:
                    Boolean bool11 = Boolean.FALSE;
                    SimpleSymbol simpleSymbol235 = url2.k;
                    SimpleSymbol simpleSymbol236 = url2.C;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol236, url2.N3, bool11, simpleSymbol235);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol236, url2.O3, url2.P3, url2.f5440g);
                case 77:
                    Boolean bool12 = Boolean.FALSE;
                    SimpleSymbol simpleSymbol237 = url2.k;
                    SimpleSymbol simpleSymbol238 = url2.C;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol238, url2.N3, bool12, simpleSymbol237);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol238, url2.O3, url2.P3, url2.f5440g);
                case 78:
                    return this.c.Clock1$Timer();
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
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 48:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
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
                case 57:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 58:
                case 59:
                default:
                    return super.match0(moduleMethod, callContext);
                case 60:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 61:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 62:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 63:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 64:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 65:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 66:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 67:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 68:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 69:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 70:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 71:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 72:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 73:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 74:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 75:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 76:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 77:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 78:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
            }
        }
    }

    public Object YESEXIT$Click() {
        runtime.setThisForm();
        return runtime.lookupGlobalVarInCurrentFormEnvironment(c, runtime.$Stthe$Mnnull$Mnvalue$St);
    }

    public Object Web_View1$ErrorOccurred(Object obj, Object obj2, Object obj3) {
        Object objSanitizeComponentData = runtime.sanitizeComponentData(obj);
        runtime.sanitizeComponentData(obj2);
        runtime.sanitizeComponentData(obj3);
        runtime.setThisForm();
        ModuleMethod moduleMethod = runtime.yail$Mnequal$Qu;
        if (objSanitizeComponentData instanceof Package) {
            objSanitizeComponentData = runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(s2), " is not bound in the current context"), "Unbound Variable");
        }
        Object objCallYailPrimitive = runtime.callYailPrimitive(moduleMethod, LList.list2(objSanitizeComponentData, t2), u2, "=");
        Boolean bool = Boolean.FALSE;
        SimpleSymbol simpleSymbol = j0;
        SimpleSymbol simpleSymbol2 = k;
        SimpleSymbol simpleSymbol3 = F;
        SimpleSymbol simpleSymbol4 = i1;
        if (objCallYailPrimitive == bool) {
            runtime.setAndCoerceProperty$Ex(v2, simpleSymbol3, Boolean.TRUE, simpleSymbol2);
        }
        runtime.setAndCoerceProperty$Ex(simpleSymbol4, simpleSymbol3, bool, simpleSymbol2);
        return runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol3, bool, simpleSymbol2);
    }

    public Object Web_View1$ProgressChanged(Object obj) {
        Object objSanitizeComponentData = runtime.sanitizeComponentData(obj);
        runtime.setThisForm();
        ModuleMethod moduleMethod = runtime.yail$Mnequal$Qu;
        if (objSanitizeComponentData instanceof Package) {
            objSanitizeComponentData = runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(y2), " is not bound in the current context"), "Unbound Variable");
        }
        Object objCallYailPrimitive = runtime.callYailPrimitive(moduleMethod, LList.list2(objSanitizeComponentData, d0), z2, "=");
        Boolean bool = Boolean.FALSE;
        SimpleSymbol simpleSymbol = k;
        SimpleSymbol simpleSymbol2 = F;
        SimpleSymbol simpleSymbol3 = E;
        return objCallYailPrimitive != bool ? runtime.setAndCoerceProperty$Ex(simpleSymbol3, simpleSymbol2, bool, simpleSymbol) : runtime.setAndCoerceProperty$Ex(simpleSymbol3, simpleSymbol2, Boolean.TRUE, simpleSymbol);
    }

    public Object ButtonBAWAH$GotFocus() throws Throwable {
        runtime.setThisForm();
        runtime.callComponentMethod(K2, L2, LList.list1("Dilarang membuka tombol navigasi"), M2);
        runtime.setAndCoerceProperty$Ex(f5438a, p, Boolean.FALSE, k);
        runtime.setAndCoerceProperty$Ex(N2, O2, d0, f5440g);
        SimpleSymbol simpleSymbol = Q2;
        LList lList = LList.Empty;
        return runtime.callComponentMethod(P2, simpleSymbol, lList, lList);
    }

    public Object ButtonBAWAH$TouchDown() throws Throwable {
        runtime.setThisForm();
        runtime.callComponentMethod(K2, L2, LList.list1("Dilarang membuka tombol navigasi"), T2);
        runtime.setAndCoerceProperty$Ex(f5438a, p, Boolean.FALSE, k);
        runtime.setAndCoerceProperty$Ex(N2, O2, d0, f5440g);
        SimpleSymbol simpleSymbol = Q2;
        LList lList = LList.Empty;
        return runtime.callComponentMethod(P2, simpleSymbol, lList, lList);
    }

    public Object ButtonBAWAH$TouchUp() throws Throwable {
        runtime.setThisForm();
        runtime.callComponentMethod(K2, L2, LList.list1("Dilarang membuka tombol navigasi"), W2);
        runtime.setAndCoerceProperty$Ex(f5438a, p, Boolean.FALSE, k);
        runtime.setAndCoerceProperty$Ex(N2, O2, d0, f5440g);
        SimpleSymbol simpleSymbol = Q2;
        LList lList = LList.Empty;
        return runtime.callComponentMethod(P2, simpleSymbol, lList, lList);
    }

    public Object KELUAR$Click() {
        runtime.setThisForm();
        return runtime.lookupGlobalVarInCurrentFormEnvironment(c, runtime.$Stthe$Mnnull$Mnvalue$St);
    }

    public Object Clock1$Timer() {
        runtime.setThisForm();
        SimpleSymbol simpleSymbol = S3;
        LList lList = LList.Empty;
        return runtime.callComponentMethod(e3, simpleSymbol, lList, lList);
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
        int i5 = 1 & ((environment == null ? 1 : 0) + 1);
        return (i5 == 0 ? i5 == 0 : !environment.isBound(symbol)) ? obj : this.form$Mnenvironment.get(symbol);
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
        Object objApply1 = Scheme.applyToArgs.apply1(GetNamedPart.getNamedPart.apply2(obj, f5439b));
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
            } catch (PermissionException e5) {
                e5.printStackTrace();
                boolean z4 = this == component;
                if (!z4 ? z4 : IsEqual.apply(str2, "PermissionNeeded")) {
                    processException(e5);
                    return false;
                }
                PermissionDenied(component, str2, e5.getPermissionNeeded());
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
    public void dispatchGenericEvent(Component component, String str, boolean z4, Object[] objArr) throws Throwable {
        Object objLookupInFormEnvironment = lookupInFormEnvironment(misc.string$To$Symbol(strings.stringAppend("any$", getSimpleName(component), "$", str)));
        Object obj = Boolean.FALSE;
        if (objLookupInFormEnvironment != obj) {
            try {
                Apply apply = Scheme.apply;
                if (z4) {
                    obj = Boolean.TRUE;
                }
                apply.apply2(objLookupInFormEnvironment, lists.cons(component, lists.cons(obj, LList.makeList(objArr, 0))));
            } catch (PermissionException e5) {
                e5.printStackTrace();
                boolean z5 = this == component;
                if (!z5 ? z5 : IsEqual.apply(str, "PermissionNeeded")) {
                    processException(e5);
                } else {
                    PermissionDenied(component, str, e5.getPermissionNeeded());
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
                } catch (ClassCastException e5) {
                    throw new WrongType(e5, "symbol->string", 1, car);
                }
            } catch (ClassCastException e6) {
                throw new WrongType(e6, "arg0", -2, objMakeList);
            }
        }
        Object objApply2 = apply.apply2(moduleMethod, LList.reverseInPlace(objMake));
        try {
            return misc.string$To$Symbol((CharSequence) objApply2);
        } catch (ClassCastException e7) {
            throw new WrongType(e7, "string->symbol", 1, objApply2);
        }
    }

    @Override // com.google.appinventor.components.runtime.Form
    public void $define() throws Throwable {
        Language.setDefaults(Scheme.getInstance());
        try {
            run();
        } catch (Exception e5) {
            androidLogForm(e5.getMessage());
            processException(e5);
        }
        url2 = this;
        addToFormEnvironment(f5438a, this);
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
            } catch (ClassCastException e6) {
                throw new WrongType(e6, "arg0", -2, cdr);
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
                } catch (ClassCastException e7) {
                    throw new WrongType(e7, "arg0", -2, objReverse2);
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
                        } catch (ClassCastException e8) {
                            throw new WrongType(e8, "add-to-form-environment", 0, objApply13);
                        }
                    } catch (ClassCastException e9) {
                        throw new WrongType(e9, "lookup-in-form-environment", 0, objApply15);
                    }
                } catch (ClassCastException e10) {
                    throw new WrongType(e10, "arg0", -2, cdr2);
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
                    } catch (ClassCastException e11) {
                        throw new WrongType(e11, "add-to-global-var-environment", 0, objApply16);
                    }
                } catch (ClassCastException e12) {
                    throw new WrongType(e12, "arg0", -2, objReverse3);
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
                } catch (ClassCastException e13) {
                    throw new WrongType(e13, "arg0", -2, cdr3);
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
                } catch (ClassCastException e14) {
                    throw new WrongType(e14, "arg0", -2, objReverse);
                }
            }
        } catch (YailRuntimeError e15) {
            processException(e15);
        }
    }
}
