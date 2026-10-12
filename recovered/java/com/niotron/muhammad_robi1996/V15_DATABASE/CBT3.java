package com.niotron.muhammad_robi1996.V15_DATABASE;

import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.fragment.app.FragmentTransaction;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.AppInventorCompatActivity;
import com.google.appinventor.components.runtime.BluetoothClient;
import com.google.appinventor.components.runtime.Button;
import com.google.appinventor.components.runtime.Clock;
import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.DevsTool;
import com.google.appinventor.components.runtime.EventDispatcher;
import com.google.appinventor.components.runtime.Form;
import com.google.appinventor.components.runtime.HandlesEventDispatching;
import com.google.appinventor.components.runtime.HorizontalArrangement;
import com.google.appinventor.components.runtime.Image;
import com.google.appinventor.components.runtime.Label;
import com.google.appinventor.components.runtime.LottieAnimation;
import com.google.appinventor.components.runtime.NiotronBatteryTools;
import com.google.appinventor.components.runtime.NiotronCardView;
import com.google.appinventor.components.runtime.NiotronLinearProgressBar;
import com.google.appinventor.components.runtime.NiotronScreenshot;
import com.google.appinventor.components.runtime.NiotronSecurity;
import com.google.appinventor.components.runtime.Notifier;
import com.google.appinventor.components.runtime.Player;
import com.google.appinventor.components.runtime.Spacer;
import com.google.appinventor.components.runtime.TextBox;
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
import com.puravidaapps.TaifunHeadset;
import com.puravidaapps.TaifunLockTask.TaifunLockTask;
import com.puravidaapps.TaifunSettings;
import com.rdev.lockkeyboard.RdevKeyoardLock;
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
import kotlinx.coroutines.scheduling.WorkQueueKt;
import me.aemo.specialkeyboard.SpecialKeyboard;
import me.aemo.specialkeyboard.addon.KeyboardChangeListener;
import me.aemo.webviewtools.WebViewTools;

/* loaded from: classes2.dex */
public class CBT3 extends Form implements Runnable {
    public static final SimpleSymbol A;
    public static final SimpleSymbol A0;
    public static final SimpleSymbol A1;
    public static final PairWithPosition A2;
    public static final SimpleSymbol A3;
    public static final SimpleSymbol A4;
    public static final SimpleSymbol A5;
    public static final ModuleMethod A6 = null;
    public static final FString A7;
    public static final SimpleSymbol A8;
    public static final SimpleSymbol A9;
    public static final SimpleSymbol B;
    public static final SimpleSymbol B0;
    public static final IntNum B1;
    public static final PairWithPosition B2;
    public static final FString B3;
    public static final ModuleMethod B4 = null;
    public static final SimpleSymbol B5;
    public static final PairWithPosition B6;
    public static final FString B7;
    public static final PairWithPosition B8;
    public static final ModuleMethod B9 = null;
    public static final SimpleSymbol C;
    public static final PairWithPosition C0;
    public static final SimpleSymbol C1;
    public static final PairWithPosition C2;
    public static final SimpleSymbol C3;
    public static final IntNum C4;
    public static final PairWithPosition C5;
    public static final PairWithPosition C6;
    public static final FString C7;
    public static final PairWithPosition C8;
    public static final IntNum C9;
    public static CBT3 CBT3;
    public static final SimpleSymbol D;
    public static final SimpleSymbol D0;
    public static final SimpleSymbol D1;
    public static final PairWithPosition D2;
    public static final ModuleMethod D3 = null;
    public static final IntNum D4;
    public static final PairWithPosition D5;
    public static final SimpleSymbol D6;
    public static final ModuleMethod D7 = null;
    public static final PairWithPosition D8;
    public static final FString D9;
    public static final SimpleSymbol E;
    public static final SimpleSymbol E0;
    public static final FString E1;
    public static final SimpleSymbol E2;
    public static final IntNum E3;
    public static final FString E4;
    public static final PairWithPosition E5;
    public static final SimpleSymbol E6;
    public static final IntNum E7;
    public static final SimpleSymbol E8;
    public static final ModuleMethod E9 = null;
    public static final SimpleSymbol F;
    public static final SimpleSymbol F0;
    public static final ModuleMethod F1 = null;
    public static final SimpleSymbol F2;
    public static final IntNum F3;
    public static final ModuleMethod F4 = null;
    public static final SimpleSymbol F5;
    public static final PairWithPosition F6;
    public static final SimpleSymbol F7;
    public static final SimpleSymbol F8;
    public static final SimpleSymbol F9;
    public static final SimpleSymbol G;
    public static final FString G0;
    public static final SimpleSymbol G1;
    public static final SimpleSymbol G2;
    public static final FString G3;
    public static final SimpleSymbol G4;
    public static final SimpleSymbol G5;
    public static final PairWithPosition G6;
    public static final FString G7;
    public static final PairWithPosition G8;
    public static final FString G9;
    public static final SimpleSymbol H;
    public static final ModuleMethod H0 = null;
    public static final PairWithPosition H5;
    public static final SimpleSymbol H6;
    public static final ModuleMethod H7 = null;
    public static final PairWithPosition H8;
    public static final SimpleSymbol H9;
    public static final SimpleSymbol I;
    public static final SimpleSymbol I0;
    public static final SimpleSymbol I1;
    public static final SimpleSymbol I2;
    public static final ModuleMethod I3 = null;
    public static final SimpleSymbol I4;
    public static final PairWithPosition I5;
    public static final SimpleSymbol I6;
    public static final FString I7;
    public static final SimpleSymbol I8;
    public static final FString I9;
    public static final SimpleSymbol J;
    public static final IntNum J0;
    public static final SimpleSymbol J1;
    public static final PairWithPosition J2;
    public static final SimpleSymbol J3;
    public static final FString J4;
    public static final PairWithPosition J5;
    public static final PairWithPosition J6;
    public static final ModuleMethod J7 = null;
    public static final SimpleSymbol J8;
    public static final SimpleSymbol J9;
    public static final SimpleSymbol K;
    public static final SimpleSymbol K0;
    public static final SimpleSymbol K1;
    public static final IntNum K2;
    public static final SimpleSymbol K3;
    public static final SimpleSymbol K4;
    public static final PairWithPosition K5;
    public static final PairWithPosition K6;
    public static final SimpleSymbol K7;
    public static final PairWithPosition K8;
    public static final SimpleSymbol K9;
    public static final SimpleSymbol L;
    public static final SimpleSymbol L0;
    public static final SimpleSymbol L1;
    public static final SimpleSymbol L2;
    public static final SimpleSymbol L3;
    public static final ModuleMethod L4 = null;
    public static final PairWithPosition L5;
    public static final SimpleSymbol L6;
    public static final SimpleSymbol L7;
    public static final PairWithPosition L8;
    public static final FString L9;
    public static final SimpleSymbol M;
    public static final SimpleSymbol M0;
    public static final IntNum M1;
    public static final FString M2;
    public static final FString M3;
    public static final IntNum M4;
    public static final PairWithPosition M5;
    public static final SimpleSymbol M6;
    public static final IntNum M7;
    public static final SimpleSymbol M8;
    public static final FString M9;
    public static final SimpleSymbol N;
    public static final IntNum N0;
    public static final SimpleSymbol N1;
    public static final SimpleSymbol N2;
    public static final SimpleSymbol N3;
    public static final FString N4;
    public static final SimpleSymbol N5;
    public static final FString N6;
    public static final FString N7;
    public static final FString N8;
    public static final FString N9;
    public static final SimpleSymbol O;
    public static final FString O0;
    public static final SimpleSymbol O1;
    public static final ModuleMethod O2 = null;
    public static final ModuleMethod O3 = null;
    public static final ModuleMethod O4 = null;
    public static final SimpleSymbol O5;
    public static final ModuleMethod O6 = null;
    public static final ModuleMethod O7 = null;
    public static final FString O8;
    public static final SimpleSymbol O9;
    public static final SimpleSymbol P;
    public static final ModuleMethod P0 = null;
    public static final SimpleSymbol P1;
    public static final FString P2;
    public static final IntNum P3;
    public static final FString P4;
    public static final FString P5;
    public static final FString P6;
    public static final SimpleSymbol P7;
    public static final FString P8;
    public static final FString P9;
    public static final SimpleSymbol Q;
    public static final FString Q0;
    public static final SimpleSymbol Q1;
    public static final ModuleMethod Q2 = null;
    public static final FString Q3;
    public static final SimpleSymbol Q4;
    public static final SimpleSymbol Q5;
    public static final ModuleMethod Q6 = null;
    public static final SimpleSymbol Q7;
    public static final FString Q8;
    public static final PairWithPosition Q9;
    public static final SimpleSymbol R;
    public static final SimpleSymbol R0;
    public static final FString R1;
    public static final FString R2;
    public static final ModuleMethod R3 = null;
    public static final ModuleMethod R4 = null;
    public static final ModuleMethod R5 = null;
    public static final FString R6;
    public static final SimpleSymbol R7;
    public static final FString R8;
    public static final PairWithPosition R9;
    public static final ModuleMethod S = null;
    public static final ModuleMethod S0 = null;
    public static final SimpleSymbol S1;
    public static final ModuleMethod S2 = null;
    public static final FString S3;
    public static final FString S4;
    public static final FString S5;
    public static final SimpleSymbol S6;
    public static final FString S7;
    public static final FString S8;
    public static final PairWithPosition S9;
    public static final SimpleSymbol T;
    public static final SimpleSymbol T0;
    public static final ModuleMethod T1 = null;
    public static final IntNum T2;
    public static final SimpleSymbol T3;
    public static final ModuleMethod T4 = null;
    public static final ModuleMethod T5 = null;
    public static final ModuleMethod T6 = null;
    public static final ModuleMethod T7 = null;
    public static final SimpleSymbol T8;
    public static final SimpleSymbol T9;
    public static final SimpleSymbol U;
    public static final IntNum U0;
    public static final IntNum U1;
    public static final FString U2;
    public static final ModuleMethod U3 = null;
    public static final FString U4;
    public static final FString U5;
    public static final FString U6;
    public static final SimpleSymbol U7;
    public static final PairWithPosition U8;
    public static final PairWithPosition U9;
    public static final SimpleSymbol V;
    public static final SimpleSymbol V0;
    public static final SimpleSymbol V1;
    public static final ModuleMethod V2 = null;
    public static final IntNum V3;
    public static final SimpleSymbol V4;
    public static final SimpleSymbol V5;
    public static final ModuleMethod V6 = null;
    public static final FString V7;
    public static final PairWithPosition V8;
    public static final PairWithPosition V9;
    public static final SimpleSymbol W;
    public static final SimpleSymbol W0;
    public static final SimpleSymbol W1;
    public static final FString W2;
    public static final FString W3;
    public static final ModuleMethod W4 = null;
    public static final ModuleMethod W5 = null;
    public static final FString W6;
    public static final ModuleMethod W7 = null;
    public static final SimpleSymbol W8;
    public static final SimpleSymbol W9;
    public static final SimpleSymbol X;
    public static final IntNum X0;
    public static final IntNum X1;
    public static final SimpleSymbol X2;
    public static final ModuleMethod X3 = null;
    public static final FString X4;
    public static final FString X5;
    public static final SimpleSymbol X6;
    public static final FString X7;
    public static final IntNum X8;
    public static final FString X9;
    public static final SimpleSymbol Y;
    public static final SimpleSymbol Y0;
    public static final SimpleSymbol Y1;
    public static final ModuleMethod Y2 = null;
    public static final FString Y3;
    public static final ModuleMethod Y4 = null;
    public static final ModuleMethod Y5 = null;
    public static final ModuleMethod Y6 = null;
    public static final FString Y7;
    public static final PairWithPosition Y8;
    public static final ModuleMethod Y9 = null;
    public static final PairWithPosition Z;
    public static final IntNum Z0;
    public static final SimpleSymbol Z1;
    public static final IntNum Z2;
    public static final SimpleSymbol Z3;
    public static final FString Z4;
    public static final FString Z5;
    public static final IntNum Z6;
    public static final FString Z7;
    public static final PairWithPosition Z8;
    public static final FString Z9;

    /* renamed from: a, reason: collision with root package name */
    public static final SimpleSymbol f5363a;
    public static final SimpleSymbol a0;
    public static final FString a1;
    public static final SimpleSymbol a2;
    public static final IntNum a3;
    public static final ModuleMethod a4 = null;
    public static final SimpleSymbol a5;
    public static final SimpleSymbol a6;
    public static final FString a7;
    public static final SimpleSymbol a8;
    public static final PairWithPosition a9;
    public static final ModuleMethod aa = null;

    /* renamed from: b, reason: collision with root package name */
    public static final SimpleSymbol f5364b;
    public static final SimpleSymbol b0;
    public static final ModuleMethod b1 = null;
    public static final SimpleSymbol b2;
    public static final FString b3;
    public static final IntNum b4;
    public static final ModuleMethod b5 = null;
    public static final ModuleMethod b6 = null;
    public static final ModuleMethod b7 = null;
    public static final FString b8;
    public static final SimpleSymbol b9;
    public static final PairWithPosition ba;
    public static final SimpleSymbol c;
    public static final PairWithPosition c0;
    public static final FString c1;
    public static final IntNum c2;
    public static final ModuleMethod c3 = null;
    public static final SimpleSymbol c4;
    public static final FString c5;
    public static final IntNum c6;
    public static final FString c7;
    public static final FString c8;
    public static final SimpleSymbol c9;
    public static final PairWithPosition ca;
    public static final ModuleMethod d = null;
    public static final SimpleSymbol d0;
    public static final SimpleSymbol d1;
    public static final IntNum d2;
    public static final FString d3;
    public static final IntNum d4;
    public static final ModuleMethod d5 = null;
    public static final FString d6;
    public static final SimpleSymbol d7;
    public static final SimpleSymbol d8;
    public static final FString d9;
    public static final PairWithPosition da;
    public static final SimpleSymbol e;
    public static final SimpleSymbol e0;
    public static final ModuleMethod e1 = null;
    public static final FString e2;
    public static final SimpleSymbol e3;
    public static final IntNum e4;
    public static final FString e5;
    public static final ModuleMethod e6 = null;
    public static final ModuleMethod e7 = null;
    public static final ModuleMethod e8 = null;
    public static final SimpleSymbol e9;
    public static final PairWithPosition ea;
    public static final ModuleMethod f = null;
    public static final SimpleSymbol f0;
    public static final SimpleSymbol f1;
    public static final ModuleMethod f2 = null;
    public static final ModuleMethod f3 = null;
    public static final IntNum f4;
    public static final ModuleMethod f5 = null;
    public static final FString f6;
    public static final SimpleSymbol f7;
    public static final FString f8;
    public static final ModuleMethod f9 = null;
    public static final SimpleSymbol fa;

    /* renamed from: g, reason: collision with root package name */
    public static final SimpleSymbol f5365g;
    public static final SimpleSymbol g0;
    public static final IntNum g1;
    public static final FString g2;
    public static final IntNum g3;
    public static final FString g4;
    public static final FString g5;
    public static final SimpleSymbol g6;
    public static final IntNum g7;
    public static final ModuleMethod g8 = null;
    public static final FString g9;
    public static final SimpleSymbol ga;
    public static final ModuleMethod h = null;
    public static final SimpleSymbol h0;
    public static final FString h1;
    public static final ModuleMethod h2 = null;
    public static final IntNum h3;
    public static final ModuleMethod h4 = null;
    public static final ModuleMethod h5 = null;
    public static final ModuleMethod h6 = null;
    public static final IntNum h7;
    public static final SimpleSymbol h8;
    public static final ModuleMethod h9 = null;
    public static final FString ha;
    public static final SimpleSymbol i;
    public static final PairWithPosition i0;
    public static final ModuleMethod i1 = null;
    public static final IntNum i2;
    public static final IntNum i3;
    public static final FString i4;
    public static final FString i5;
    public static final FString i6;
    public static final SimpleSymbol i7;
    public static final SimpleSymbol i8;
    public static final FString i9;
    public static final FString ia;
    public static final ModuleMethod j = null;
    public static final SimpleSymbol j0;
    public static final FString j1;
    public static final IntNum j2;
    public static final IntNum j3;
    public static final SimpleSymbol j4;
    public static final SimpleSymbol j5;
    public static final ModuleMethod j6 = null;
    public static final SimpleSymbol j7;
    public static final PairWithPosition j8;
    public static final ModuleMethod j9 = null;
    public static final SimpleSymbol ja;
    public static final SimpleSymbol k;
    public static final SimpleSymbol k0;
    public static final SimpleSymbol k1;
    public static final SimpleSymbol k2;
    public static final FString k3;
    public static final ModuleMethod k4 = null;
    public static final ModuleMethod k5 = null;
    public static final FString k6;
    public static final FString k7;
    public static final SimpleSymbol k8;
    public static final FString k9;
    public static final SimpleSymbol ka;
    public static final SimpleSymbol l;
    public static final SimpleSymbol l0;
    public static final ModuleMethod l1 = null;
    public static final IntNum l2;
    public static final ModuleMethod l3 = null;
    public static final IntNum l4;
    public static final FString l5;
    public static final ModuleMethod l6 = null;
    public static final ModuleMethod l7 = null;
    public static final FString l8;
    public static final ModuleMethod l9 = null;
    public static final SimpleSymbol la;
    public static final SimpleSymbol m;
    public static final SimpleSymbol m0;
    public static final IntNum m1;
    public static final SimpleSymbol m2;
    public static final FString m3;
    public static final FString m4;
    public static final ModuleMethod m5 = null;
    public static final IntNum m6;
    public static final FString m7;
    public static final ModuleMethod m8 = null;
    public static final FString m9;
    public static final SimpleSymbol ma;
    public static final SimpleSymbol n;
    public static final SimpleSymbol n0;
    public static final FString n1;
    public static final IntNum n2;
    public static final SimpleSymbol n3;
    public static final ModuleMethod n4 = null;
    public static final FString n5;
    public static final FString n6;
    public static final SimpleSymbol n7;
    public static final FString n8;
    public static final FString n9;
    public static final SimpleSymbol na;
    public static final IntNum o;
    public static final PairWithPosition o0;
    public static final ModuleMethod o1 = null;
    public static final SimpleSymbol o2;
    public static final ModuleMethod o3 = null;
    public static final FString o4;
    public static final ModuleMethod o5 = null;
    public static final ModuleMethod o6 = null;
    public static final ModuleMethod o7 = null;
    public static final ModuleMethod o8 = null;
    public static final FString o9;
    public static final SimpleSymbol oa;
    public static final PairWithPosition p;
    public static final PairWithPosition p0;
    public static final FString p1;
    public static final IntNum p2;
    public static final FString p3;
    public static final SimpleSymbol p4;
    public static final FString p5;
    public static final FString p6;
    public static final IntNum p7;
    public static final FString p8;
    public static final FString p9;
    public static final SimpleSymbol pa;
    public static final ModuleMethod q = null;
    public static final SimpleSymbol q0;
    public static final SimpleSymbol q1;
    public static final IntNum q2;
    public static final ModuleMethod q3 = null;
    public static final ModuleMethod q4 = null;
    public static final ModuleMethod q5 = null;
    public static final SimpleSymbol q6;
    public static final IntNum q7;
    public static final FString q8;
    public static final FString q9;
    public static final SimpleSymbol qa;
    public static final ModuleMethod r = null;
    public static final SimpleSymbol r0;
    public static final ModuleMethod r1 = null;
    public static final FString r2;
    public static final FString r3;
    public static final IntNum r4;
    public static final SimpleSymbol r5;
    public static final ModuleMethod r6 = null;
    public static final FString r7;
    public static final FString r8;
    public static final SimpleSymbol r9;
    public static final SimpleSymbol ra;
    public static final PairWithPosition s;
    public static final SimpleSymbol s0;
    public static final FString s1;
    public static final ModuleMethod s2 = null;
    public static final SimpleSymbol s3;
    public static final IntNum s4;
    public static final PairWithPosition s5;
    public static final FString s6;
    public static final ModuleMethod s7 = null;
    public static final ModuleMethod s8 = null;
    public static final ModuleMethod s9 = null;
    public static final SimpleSymbol sa;
    public static final SimpleSymbol t;
    public static final SimpleSymbol t0;
    public static final ModuleMethod t1 = null;
    public static final FString t2;
    public static final ModuleMethod t3 = null;
    public static final FString t4;
    public static final SimpleSymbol t5;
    public static final ModuleMethod t6 = null;
    public static final SimpleSymbol t7;
    public static final IntNum t8;
    public static final IntNum t9;
    public static final SimpleSymbol ta;
    public static final ModuleMethod u = null;
    public static final SimpleSymbol u0;
    public static final FString u1;
    public static final SimpleSymbol u2;
    public static final IntNum u3;
    public static final ModuleMethod u4 = null;
    public static final SimpleSymbol u5;
    public static final FString u6;
    public static final FString u7;
    public static final FString u8;
    public static final FString u9;
    public static final SimpleSymbol ua;
    public static final SimpleSymbol v;
    public static final PairWithPosition v0;
    public static final SimpleSymbol v1;
    public static final ModuleMethod v2 = null;
    public static final IntNum v3;
    public static final SimpleSymbol v4;
    public static final SimpleSymbol v5;
    public static final SimpleSymbol v6;
    public static final ModuleMethod v7 = null;
    public static final ModuleMethod v8 = null;
    public static final ModuleMethod v9 = null;
    public static final SimpleSymbol va;
    public static final IntNum w;
    public static final SimpleSymbol w0;
    public static final ModuleMethod w1 = null;
    public static final IntNum w2;
    public static final FString w3;
    public static final SimpleSymbol w4;
    public static final IntNum w5;
    public static final ModuleMethod w6 = null;
    public static final SimpleSymbol w7;
    public static final SimpleSymbol w8;
    public static final PairWithPosition w9;
    public static final SimpleSymbol wa;
    public static final SimpleSymbol x;
    public static final SimpleSymbol x0;
    public static final SimpleSymbol x1;
    public static final FString x2;
    public static final ModuleMethod x3 = null;
    public static final PairWithPosition x4;
    public static final PairWithPosition x5;
    public static final IntNum x6;
    public static final IntNum x7;
    public static final SimpleSymbol x8;
    public static final PairWithPosition x9;
    public static final SimpleSymbol y;
    public static final SimpleSymbol y0;
    public static final SimpleSymbol y1;
    public static final ModuleMethod y2 = null;
    public static final SimpleSymbol y3;
    public static final SimpleSymbol y4;
    public static final SimpleSymbol y5;
    public static final IntNum y6;
    public static final FString y7;
    public static final PairWithPosition y8;
    public static final SimpleSymbol y9;
    public static final IntNum z;
    public static final SimpleSymbol z0;
    public static final IntNum z1;
    public static final SimpleSymbol z2;
    public static final SimpleSymbol z3;
    public static final FString z4;
    public static final SimpleSymbol z5;
    public static final FString z6;
    public static final ModuleMethod z7 = null;
    public static final SimpleSymbol z8;
    public static final FString z9;
    public Boolean $Stdebug$Mnform$St;
    public final ModuleMethod $define;
    public NiotronBatteryTools Battery_Tools1;
    public BluetoothClient Bluetooth_Client1;
    public Button ButtonBACK;
    public final ModuleMethod ButtonBACK$Click;
    public Button ButtonBAWAH;
    public final ModuleMethod ButtonBAWAH$GotFocus;
    public final ModuleMethod ButtonBAWAH$TouchDown;
    public final ModuleMethod ButtonBAWAH$TouchUp;
    public Button ButtonEXIT;
    public final ModuleMethod ButtonEXIT$Click;
    public Button ButtonGOTEXBOX;
    public Button ButtonREFRESH;
    public final ModuleMethod ButtonREFRESH$Click;
    public final ModuleMethod CBT3$BackPressed;
    public final ModuleMethod CBT3$Initialize;
    public final ModuleMethod CBT3$OnPause;
    public Label CEKLOCKTASK;
    public Clock CEKTASKLOCK;
    public final ModuleMethod CEKTASKLOCK$Timer;
    public NiotronCardView Card_View1;
    public NiotronCardView Card_ViewTexboX;
    public NiotronCardView Card_ViewTexbox_EXIT;
    public Label Cekpasskeluar;
    public Clock Clock1;
    public final ModuleMethod Clock1$Timer;
    public Clock ClockCEKSERVER;
    public final ModuleMethod ClockCEKSERVER$Timer;
    public Clock ClockCLIPBOARD;
    public final ModuleMethod ClockCLIPBOARD$Timer;
    public Clock ClockCLIPBOARD2;
    public final ModuleMethod ClockCLIPBOARD2$Timer;
    public Clock ClockJAM;
    public final ModuleMethod ClockJAM$Timer;
    public DevsTool DevsTool1;
    public HorizontalArrangement Hori_PASSWORD;
    public HorizontalArrangement Horizontal_Arrangement1;
    public HorizontalArrangement Horizontal_Arrangement4;
    public HorizontalArrangement Horizontal_Arrangement6;
    public HorizontalArrangement Horizontal_FOOTER;
    public HorizontalArrangement Horizontal_PROGRESSBAR;
    public HorizontalArrangement Horizontal_TEXBOX;
    public Image Image512;
    public Label JAM;
    public Button KELUAR;
    public final ModuleMethod KELUAR$Click;
    public Label Label1;
    public Label Label2;
    public Label Label6;
    public Label LabelBLUETOOTH;
    public Label LabelHEADSET;
    public NiotronLinearProgressBar Linear_Progressbar1;
    public LottieAnimation Lottie_Animation1;
    public Notifier Notifier1;
    public Label PERSEN;
    public Player Player1;
    public RdevKeyoardLock RdevKeyoardLock1;
    public Label STATUS;
    public NiotronScreenshot Screenshot1;
    public NiotronSecurity Security1;
    public Spacer Spacer1;
    public Spacer Spacer2;
    public Spacer Spacer3;
    public Spacer Spacer9;
    public SpecialKeyboard SpecialKeyboard1;
    public final ModuleMethod SpecialKeyboard1$OnKeyboardChange;
    public TaifunHeadset TaifunHeadset1;
    public TaifunLockTask TaifunLockTask1;
    public TaifunSettings TaifunSettings1;
    public TextBox Text_BOX_PASSWORD_EXIT;
    public TextBox Text_BoxQRSCREEN;
    public TinyDB Tiny_DBPASSKELUAR;
    public TinyDB Tiny_DBUSERAGENT;
    public TinyDB Tiny_DBVOLUME;
    public TinyDB Tiny_LINK;
    public VerticalArrangement Vertical_CONTAINER;
    public VerticalArrangement Vertical_ERROR;
    public Button WEBBACKBUTTON;
    public final ModuleMethod WEBBACKBUTTON$Click;
    public Button WEBFORWARD;
    public final ModuleMethod WEBFORWARD$Click;
    public Web Web1;
    public final ModuleMethod Web1$GotText;
    public Web WebPASSKELUAR;
    public final ModuleMethod WebPASSKELUAR$GotText;
    public WebViewTools WebViewTools1;
    public WebViewer Web_View1;
    public final ModuleMethod Web_View1$ErrorOccurred;
    public final ModuleMethod Web_View1$PageLoaded;
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

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("list");
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f("any");
        wa = (SimpleSymbol) a.f("lookup-handler");
        va = (SimpleSymbol) a.f("dispatchGenericEvent");
        ua = (SimpleSymbol) a.f("dispatchEvent");
        ta = (SimpleSymbol) a.f("send-error");
        sa = (SimpleSymbol) a.f("add-to-form-do-after-creation");
        ra = (SimpleSymbol) a.f("add-to-global-vars");
        qa = (SimpleSymbol) a.f("add-to-components");
        pa = (SimpleSymbol) a.f("add-to-events");
        oa = (SimpleSymbol) a.f("add-to-global-var-environment");
        na = (SimpleSymbol) a.f("is-bound-in-form-environment");
        ma = (SimpleSymbol) a.f("lookup-in-form-environment");
        la = (SimpleSymbol) a.f("add-to-form-environment");
        ka = (SimpleSymbol) a.f("android-log-form");
        ja = (SimpleSymbol) a.f("get-simple-name");
        ia = new FString("com.rdev.lockkeyboard.RdevKeyoardLock");
        ha = new FString("com.rdev.lockkeyboard.RdevKeyoardLock");
        ga = (SimpleSymbol) a.f("ClockCEKSERVER$Timer");
        fa = (SimpleSymbol) a.f("DismissProgressDialog");
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) a.f(PropertyTypeConstants.PROPERTY_TYPE_TEXT);
        B = simpleSymbol3;
        LList lList = LList.Empty;
        ea = PairWithPosition.make(simpleSymbol3, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 4149898);
        da = PairWithPosition.make(simpleSymbol3, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 4149799);
        ca = PairWithPosition.make(simpleSymbol3, PairWithPosition.make(simpleSymbol3, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 4149771), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 4149765);
        ba = PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 4149361), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 4149356);
        Z9 = new FString("com.google.appinventor.components.runtime.Clock");
        X9 = new FString("com.google.appinventor.components.runtime.Clock");
        W9 = (SimpleSymbol) a.f("WebPASSKELUAR$GotText");
        V9 = PairWithPosition.make(simpleSymbol3, PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 4104821), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 4104815);
        SimpleSymbol simpleSymbol4 = (SimpleSymbol) a.f("number");
        x = simpleSymbol4;
        U9 = PairWithPosition.make(simpleSymbol, PairWithPosition.make(simpleSymbol4, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 4104785), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 4104779);
        T9 = (SimpleSymbol) a.f("StoreValue");
        S9 = PairWithPosition.make(simpleSymbol, PairWithPosition.make(simpleSymbol4, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 4104574), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 4104568);
        R9 = PairWithPosition.make(simpleSymbol3, PairWithPosition.make(simpleSymbol3, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 4104413), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 4104407);
        Q9 = PairWithPosition.make(simpleSymbol3, PairWithPosition.make(simpleSymbol3, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 4104379), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 4104373);
        P9 = new FString("com.google.appinventor.components.runtime.Web");
        O9 = (SimpleSymbol) a.f("WebPASSKELUAR");
        N9 = new FString("com.google.appinventor.components.runtime.Web");
        M9 = new FString("me.aemo.webviewtools.WebViewTools");
        L9 = new FString("me.aemo.webviewtools.WebViewTools");
        K9 = (SimpleSymbol) a.f("OnKeyboardChange");
        J9 = (SimpleSymbol) a.f("SpecialKeyboard1$OnKeyboardChange");
        I9 = new FString("me.aemo.specialkeyboard.SpecialKeyboard");
        H9 = (SimpleSymbol) a.f("SpecialKeyboard1");
        G9 = new FString("me.aemo.specialkeyboard.SpecialKeyboard");
        F9 = (SimpleSymbol) a.f("ClockCLIPBOARD2$Timer");
        D9 = new FString("com.google.appinventor.components.runtime.Clock");
        C9 = IntNum.make(30);
        A9 = (SimpleSymbol) a.f("ClockCLIPBOARD2");
        z9 = new FString("com.google.appinventor.components.runtime.Clock");
        y9 = (SimpleSymbol) a.f("ClockCLIPBOARD$Timer");
        x9 = PairWithPosition.make(simpleSymbol3, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 3973304);
        w9 = PairWithPosition.make(simpleSymbol3, PairWithPosition.make(simpleSymbol3, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 3973276), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 3973270);
        u9 = new FString("com.google.appinventor.components.runtime.Clock");
        t9 = IntNum.make(KeyboardChangeListener.MIN_KEYBOARD_HEIGHT);
        r9 = (SimpleSymbol) a.f("ClockCLIPBOARD");
        q9 = new FString("com.google.appinventor.components.runtime.Clock");
        p9 = new FString("com.google.appinventor.components.runtime.DevsTool");
        o9 = new FString("com.google.appinventor.components.runtime.DevsTool");
        n9 = new FString("com.google.appinventor.components.runtime.NiotronSecurity");
        m9 = new FString("com.google.appinventor.components.runtime.NiotronSecurity");
        k9 = new FString("com.google.appinventor.components.runtime.TinyDB");
        i9 = new FString("com.google.appinventor.components.runtime.TinyDB");
        g9 = new FString("com.google.appinventor.components.runtime.TinyDB");
        e9 = (SimpleSymbol) a.f("Tiny_LINK");
        d9 = new FString("com.google.appinventor.components.runtime.TinyDB");
        c9 = (SimpleSymbol) a.f("GotText");
        b9 = (SimpleSymbol) a.f("Web1$GotText");
        a9 = PairWithPosition.make(simpleSymbol3, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 3822073);
        Z8 = PairWithPosition.make(simpleSymbol3, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 3822063);
        Y8 = PairWithPosition.make(simpleSymbol, PairWithPosition.make(simpleSymbol4, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 3822033), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 3822027);
        X8 = IntNum.make(6);
        W8 = (SimpleSymbol) a.f("$data");
        V8 = PairWithPosition.make(simpleSymbol3, PairWithPosition.make(simpleSymbol3, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 3821789), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 3821783);
        U8 = PairWithPosition.make(simpleSymbol3, PairWithPosition.make(simpleSymbol3, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 3821755), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 3821749);
        T8 = (SimpleSymbol) a.f("$responseContent");
        S8 = new FString("com.google.appinventor.components.runtime.Web");
        R8 = new FString("com.google.appinventor.components.runtime.Web");
        Q8 = new FString("com.puravidaapps.TaifunHeadset");
        P8 = new FString("com.puravidaapps.TaifunHeadset");
        O8 = new FString("com.google.appinventor.components.runtime.BluetoothClient");
        N8 = new FString("com.google.appinventor.components.runtime.BluetoothClient");
        M8 = (SimpleSymbol) a.f("CEKTASKLOCK$Timer");
        L8 = PairWithPosition.make(simpleSymbol3, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 3754059);
        K8 = PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 3753890), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 3753885);
        J8 = (SimpleSymbol) a.f("Status");
        I8 = (SimpleSymbol) a.f("TaifunHeadset1");
        H8 = PairWithPosition.make(simpleSymbol3, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 3753659);
        G8 = PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 3753488), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 3753483);
        F8 = (SimpleSymbol) a.f("Enabled");
        E8 = (SimpleSymbol) a.f("Bluetooth_Client1");
        D8 = PairWithPosition.make(simpleSymbol3, PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 3753203), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 3753197);
        C8 = PairWithPosition.make(simpleSymbol3, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 3753051);
        B8 = PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 3752606), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 3752601);
        A8 = (SimpleSymbol) a.f("Mode");
        z8 = (SimpleSymbol) a.f("Level");
        y8 = PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 3752104), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 3752099);
        x8 = (SimpleSymbol) a.f("CheckAndForceSimpleKeyboard");
        w8 = (SimpleSymbol) a.f("RdevKeyoardLock1");
        u8 = new FString("com.google.appinventor.components.runtime.Clock");
        t8 = IntNum.make(200);
        r8 = new FString("com.google.appinventor.components.runtime.Clock");
        q8 = new FString("com.google.appinventor.components.runtime.NiotronScreenshot");
        p8 = new FString("com.google.appinventor.components.runtime.NiotronScreenshot");
        n8 = new FString("com.google.appinventor.components.runtime.TinyDB");
        l8 = new FString("com.google.appinventor.components.runtime.TinyDB");
        k8 = (SimpleSymbol) a.f("ClockJAM$Timer");
        j8 = PairWithPosition.make((SimpleSymbol) a.f("InstantInTime"), PairWithPosition.make(simpleSymbol3, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 3657928), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 3657913);
        i8 = (SimpleSymbol) a.f("Now");
        h8 = (SimpleSymbol) a.f("FormatDate");
        f8 = new FString("com.google.appinventor.components.runtime.Clock");
        d8 = (SimpleSymbol) a.f("ClockJAM");
        c8 = new FString("com.google.appinventor.components.runtime.Clock");
        b8 = new FString("com.google.appinventor.components.runtime.NiotronBatteryTools");
        a8 = (SimpleSymbol) a.f("Battery_Tools1");
        Z7 = new FString("com.google.appinventor.components.runtime.NiotronBatteryTools");
        Y7 = new FString("com.puravidaapps.TaifunLockTask.TaifunLockTask");
        X7 = new FString("com.puravidaapps.TaifunLockTask.TaifunLockTask");
        V7 = new FString("com.google.appinventor.components.runtime.TinyDB");
        U7 = (SimpleSymbol) a.f("Namespace");
        S7 = new FString("com.google.appinventor.components.runtime.TinyDB");
        R7 = (SimpleSymbol) a.f("Timer");
        Q7 = (SimpleSymbol) a.f("Clock1$Timer");
        P7 = (SimpleSymbol) a.f("StartAnimation");
        N7 = new FString("com.google.appinventor.components.runtime.Clock");
        M7 = IntNum.make(6000);
        L7 = (SimpleSymbol) a.f("TimerInterval");
        K7 = (SimpleSymbol) a.f("TimerAlwaysFires");
        I7 = new FString("com.google.appinventor.components.runtime.Clock");
        G7 = new FString("com.google.appinventor.components.runtime.Notifier");
        F7 = (SimpleSymbol) a.f("NotifierLength");
        E7 = IntNum.make(new int[]{-16777216, 0});
        C7 = new FString("com.google.appinventor.components.runtime.Notifier");
        B7 = new FString("com.puravidaapps.TaifunSettings");
        A7 = new FString("com.puravidaapps.TaifunSettings");
        y7 = new FString("com.google.appinventor.components.runtime.Player");
        x7 = IntNum.make(99);
        w7 = (SimpleSymbol) a.f("Volume");
        u7 = new FString("com.google.appinventor.components.runtime.Player");
        t7 = (SimpleSymbol) a.f("KELUAR$Click");
        r7 = new FString("com.google.appinventor.components.runtime.Button");
        q7 = IntNum.make(new int[]{-1, 0});
        p7 = IntNum.make(new int[]{-16602892, 0});
        n7 = (SimpleSymbol) a.f("KELUAR");
        m7 = new FString("com.google.appinventor.components.runtime.Button");
        k7 = new FString("com.google.appinventor.components.runtime.LottieAnimation");
        j7 = (SimpleSymbol) a.f("Source");
        i7 = (SimpleSymbol) a.f("Loop");
        h7 = IntNum.make(-1040);
        g7 = IntNum.make(800);
        f7 = (SimpleSymbol) a.f("EndFrame");
        d7 = (SimpleSymbol) a.f("Lottie_Animation1");
        c7 = new FString("com.google.appinventor.components.runtime.LottieAnimation");
        a7 = new FString("com.google.appinventor.components.runtime.Spacer");
        Z6 = IntNum.make(-1007);
        X6 = (SimpleSymbol) a.f("Spacer1");
        W6 = new FString("com.google.appinventor.components.runtime.Spacer");
        U6 = new FString("com.google.appinventor.components.runtime.Label");
        S6 = (SimpleSymbol) a.f("Label2");
        R6 = new FString("com.google.appinventor.components.runtime.Label");
        P6 = new FString("com.google.appinventor.components.runtime.VerticalArrangement");
        N6 = new FString("com.google.appinventor.components.runtime.VerticalArrangement");
        M6 = (SimpleSymbol) a.f("TouchUp");
        L6 = (SimpleSymbol) a.f("ButtonBAWAH$TouchUp");
        K6 = PairWithPosition.make(simpleSymbol3, PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 3064130), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 3064124);
        J6 = PairWithPosition.make(simpleSymbol3, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 3063915);
        I6 = (SimpleSymbol) a.f("TouchDown");
        H6 = (SimpleSymbol) a.f("ButtonBAWAH$TouchDown");
        G6 = PairWithPosition.make(simpleSymbol3, PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 3055938), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 3055932);
        F6 = PairWithPosition.make(simpleSymbol3, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 3055723);
        E6 = (SimpleSymbol) a.f("GotFocus");
        D6 = (SimpleSymbol) a.f("ButtonBAWAH$GotFocus");
        C6 = PairWithPosition.make(simpleSymbol3, PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 3047746), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 3047740);
        B6 = PairWithPosition.make(simpleSymbol3, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 3047531);
        z6 = new FString("com.google.appinventor.components.runtime.Button");
        y6 = IntNum.make(-1002);
        x6 = IntNum.make(16777215);
        v6 = (SimpleSymbol) a.f("ButtonBAWAH");
        u6 = new FString("com.google.appinventor.components.runtime.Button");
        s6 = new FString("com.google.appinventor.components.runtime.Spacer");
        q6 = (SimpleSymbol) a.f("Spacer2");
        p6 = new FString("com.google.appinventor.components.runtime.Spacer");
        n6 = new FString("com.google.appinventor.components.runtime.Image");
        m6 = IntNum.make(-1025);
        k6 = new FString("com.google.appinventor.components.runtime.Image");
        i6 = new FString("com.google.appinventor.components.runtime.Spacer");
        g6 = (SimpleSymbol) a.f("Spacer3");
        f6 = new FString("com.google.appinventor.components.runtime.Spacer");
        d6 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        c6 = IntNum.make(-1003);
        a6 = (SimpleSymbol) a.f("Horizontal_FOOTER");
        Z5 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        X5 = new FString("com.google.appinventor.components.runtime.Label");
        V5 = (SimpleSymbol) a.f("LabelBLUETOOTH");
        U5 = new FString("com.google.appinventor.components.runtime.Label");
        S5 = new FString("com.google.appinventor.components.runtime.Label");
        Q5 = (SimpleSymbol) a.f("CEKLOCKTASK");
        P5 = new FString("com.google.appinventor.components.runtime.Label");
        O5 = (SimpleSymbol) a.f("PageLoaded");
        N5 = (SimpleSymbol) a.f("Web_View1$PageLoaded");
        M5 = PairWithPosition.make(simpleSymbol3, PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 2659837), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 2659831);
        L5 = PairWithPosition.make(simpleSymbol3, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 2659621);
        K5 = PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 2659504), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 2659499);
        J5 = PairWithPosition.make(simpleSymbol3, PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 2659294), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 2659288);
        I5 = PairWithPosition.make(simpleSymbol3, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 2659078);
        H5 = PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 2658961), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 2658956);
        G5 = (SimpleSymbol) a.f("Stop");
        F5 = (SimpleSymbol) a.f("TaifunLockTask1");
        E5 = PairWithPosition.make(simpleSymbol3, PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 2658753), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 2658747);
        D5 = PairWithPosition.make(simpleSymbol3, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 2658537);
        C5 = PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 2658420), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 2658415);
        B5 = (SimpleSymbol) a.f("$url");
        A5 = (SimpleSymbol) a.f("ErrorOccurred");
        z5 = (SimpleSymbol) a.f("Web_View1$ErrorOccurred");
        y5 = (SimpleSymbol) a.f("Vertical_ERROR");
        x5 = PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 2650211), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 2650206);
        w5 = IntNum.make(-1);
        v5 = (SimpleSymbol) a.f("$errorCode");
        u5 = (SimpleSymbol) a.f("ProgressChanged");
        t5 = (SimpleSymbol) a.f("Web_View1$ProgressChanged");
        s5 = PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 2642019), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 2642014);
        r5 = (SimpleSymbol) a.f("$progress");
        p5 = new FString("com.google.appinventor.components.runtime.WebViewer");
        n5 = new FString("com.google.appinventor.components.runtime.WebViewer");
        l5 = new FString("com.google.appinventor.components.runtime.Label");
        j5 = (SimpleSymbol) a.f("Label6");
        i5 = new FString("com.google.appinventor.components.runtime.Label");
        g5 = new FString("com.google.appinventor.components.runtime.Label");
        e5 = new FString("com.google.appinventor.components.runtime.Label");
        c5 = new FString("com.google.appinventor.components.runtime.Label");
        a5 = (SimpleSymbol) a.f("PERSEN");
        Z4 = new FString("com.google.appinventor.components.runtime.Label");
        X4 = new FString("com.google.appinventor.components.runtime.Label");
        V4 = (SimpleSymbol) a.f("STATUS");
        U4 = new FString("com.google.appinventor.components.runtime.Label");
        S4 = new FString("com.google.appinventor.components.runtime.Label");
        Q4 = (SimpleSymbol) a.f("Label1");
        P4 = new FString("com.google.appinventor.components.runtime.Label");
        N4 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        M4 = IntNum.make(new int[]{-1, 0});
        K4 = (SimpleSymbol) a.f("Horizontal_Arrangement1");
        J4 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        I4 = (SimpleSymbol) a.f("ButtonEXIT$Click");
        G4 = (SimpleSymbol) a.f("RequestFocus");
        E4 = new FString("com.google.appinventor.components.runtime.Button");
        D4 = IntNum.make(new int[]{-1, 0});
        C4 = IntNum.make(new int[]{-16777216, 0});
        A4 = (SimpleSymbol) a.f("ButtonEXIT");
        z4 = new FString("com.google.appinventor.components.runtime.Button");
        y4 = (SimpleSymbol) a.f("ButtonREFRESH$Click");
        x4 = PairWithPosition.make(simpleSymbol3, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 2052204);
        w4 = (SimpleSymbol) a.f("CurrentUrl");
        v4 = (SimpleSymbol) a.f("GoToUrl");
        t4 = new FString("com.google.appinventor.components.runtime.Button");
        s4 = IntNum.make(new int[]{-1, 0});
        r4 = IntNum.make(new int[]{-16777216, 0});
        p4 = (SimpleSymbol) a.f("ButtonREFRESH");
        o4 = new FString("com.google.appinventor.components.runtime.Button");
        m4 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        l4 = IntNum.make(16777215);
        j4 = (SimpleSymbol) a.f("Horizontal_Arrangement4");
        i4 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        g4 = new FString("com.google.appinventor.components.runtime.NiotronCardView");
        f4 = IntNum.make(180);
        e4 = IntNum.make(25);
        d4 = IntNum.make(5);
        c4 = (SimpleSymbol) a.f("Elevation");
        b4 = IntNum.make(new int[]{-16777216, 0});
        Z3 = (SimpleSymbol) a.f("Card_View1");
        Y3 = new FString("com.google.appinventor.components.runtime.NiotronCardView");
        W3 = new FString("com.google.appinventor.components.runtime.Label");
        V3 = IntNum.make(15);
        T3 = (SimpleSymbol) a.f("JAM");
        S3 = new FString("com.google.appinventor.components.runtime.Label");
        Q3 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        P3 = IntNum.make(16777215);
        N3 = (SimpleSymbol) a.f("Horizontal_Arrangement6");
        M3 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        L3 = (SimpleSymbol) a.f("WEBFORWARD$Click");
        K3 = (SimpleSymbol) a.f("GoForward");
        J3 = (SimpleSymbol) a.f("CanGoForward");
        G3 = new FString("com.google.appinventor.components.runtime.Button");
        F3 = IntNum.make(new int[]{-1, 0});
        E3 = IntNum.make(new int[]{-16777216, 0});
        C3 = (SimpleSymbol) a.f("WEBFORWARD");
        B3 = new FString("com.google.appinventor.components.runtime.Button");
        A3 = (SimpleSymbol) a.f("WEBBACKBUTTON$Click");
        z3 = (SimpleSymbol) a.f("GoBack");
        y3 = (SimpleSymbol) a.f("CanGoBack");
        w3 = new FString("com.google.appinventor.components.runtime.Button");
        v3 = IntNum.make(new int[]{-1, 0});
        u3 = IntNum.make(new int[]{-16777216, 0});
        s3 = (SimpleSymbol) a.f("WEBBACKBUTTON");
        r3 = new FString("com.google.appinventor.components.runtime.Button");
        p3 = new FString("com.google.appinventor.components.runtime.Button");
        n3 = (SimpleSymbol) a.f("ButtonGOTEXBOX");
        m3 = new FString("com.google.appinventor.components.runtime.Button");
        k3 = new FString("com.google.appinventor.components.runtime.TextBox");
        j3 = IntNum.make(-1058);
        i3 = IntNum.make(new int[]{-16777216, 0});
        h3 = IntNum.make(new int[]{-12500671, 0});
        g3 = IntNum.make(16777215);
        e3 = (SimpleSymbol) a.f("Text_BoxQRSCREEN");
        d3 = new FString("com.google.appinventor.components.runtime.TextBox");
        b3 = new FString("com.google.appinventor.components.runtime.NiotronCardView");
        a3 = IntNum.make(-1060);
        Z2 = IntNum.make(new int[]{-5785155, 0});
        X2 = (SimpleSymbol) a.f("Card_ViewTexboX");
        W2 = new FString("com.google.appinventor.components.runtime.NiotronCardView");
        U2 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        T2 = IntNum.make(new int[]{-1, 0});
        R2 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        P2 = new FString("com.google.appinventor.components.runtime.Label");
        N2 = (SimpleSymbol) a.f("LabelHEADSET");
        M2 = new FString("com.google.appinventor.components.runtime.Label");
        L2 = (SimpleSymbol) a.f("YESEXIT$Click");
        K2 = IntNum.make(-3407872);
        J2 = PairWithPosition.make(simpleSymbol3, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 905979);
        I2 = (SimpleSymbol) a.f("ShowAlert");
        G2 = (SimpleSymbol) a.f("Notifier1");
        F2 = (SimpleSymbol) a.f("ClearCookies");
        E2 = (SimpleSymbol) a.f("ClearCaches");
        D2 = PairWithPosition.make(simpleSymbol3, PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 905735), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 905729);
        C2 = PairWithPosition.make(simpleSymbol2, PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 905507), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 905502);
        B2 = PairWithPosition.make(simpleSymbol3, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 905447);
        A2 = PairWithPosition.make(simpleSymbol3, PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 905439), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 905433);
        z2 = (SimpleSymbol) a.f("Tiny_DBPASSKELUAR");
        x2 = new FString("com.google.appinventor.components.runtime.Button");
        w2 = IntNum.make(14);
        u2 = (SimpleSymbol) a.f("YESEXIT");
        t2 = new FString("com.google.appinventor.components.runtime.Button");
        r2 = new FString("com.google.appinventor.components.runtime.TextBox");
        q2 = IntNum.make(-1058);
        p2 = IntNum.make(new int[]{-16777216, 0});
        o2 = (SimpleSymbol) a.f("TextColor");
        n2 = IntNum.make(1);
        m2 = (SimpleSymbol) a.f("TextAlignment");
        l2 = IntNum.make(4);
        k2 = (SimpleSymbol) a.f("InputType");
        j2 = IntNum.make(new int[]{-12500671, 0});
        i2 = IntNum.make(16777215);
        g2 = new FString("com.google.appinventor.components.runtime.TextBox");
        e2 = new FString("com.google.appinventor.components.runtime.NiotronCardView");
        d2 = IntNum.make(-1060);
        c2 = IntNum.make(20);
        b2 = (SimpleSymbol) a.f("Radius");
        a2 = (SimpleSymbol) a.f("CornerOverlap");
        Z1 = (SimpleSymbol) a.f("ContentPaddingTop");
        Y1 = (SimpleSymbol) a.f("ContentPaddingRight");
        X1 = IntNum.make(10);
        W1 = (SimpleSymbol) a.f("ContentPaddingLeft");
        V1 = (SimpleSymbol) a.f("ContentPaddingBottom");
        U1 = IntNum.make(new int[]{-5785155, 0});
        S1 = (SimpleSymbol) a.f("Card_ViewTexbox_EXIT");
        R1 = new FString("com.google.appinventor.components.runtime.NiotronCardView");
        Q1 = (SimpleSymbol) a.f("Click");
        P1 = (SimpleSymbol) a.f("ButtonBACK$Click");
        O1 = (SimpleSymbol) a.f("ClockCEKSERVER");
        N1 = (SimpleSymbol) a.f("Cekpasskeluar");
        M1 = IntNum.make(-13421773);
        L1 = (SimpleSymbol) a.f("HintColor");
        K1 = (SimpleSymbol) a.f("Hint");
        J1 = (SimpleSymbol) a.f("Text_BOX_PASSWORD_EXIT");
        I1 = (SimpleSymbol) a.f("Horizontal_TEXBOX");
        G1 = (SimpleSymbol) a.f("HideKeyboard");
        E1 = new FString("com.google.appinventor.components.runtime.Button");
        D1 = (SimpleSymbol) a.f("Text");
        C1 = (SimpleSymbol) a.f("Shape");
        B1 = IntNum.make(45);
        A1 = (SimpleSymbol) a.f("FontTypeface");
        z1 = IntNum.make(12);
        y1 = (SimpleSymbol) a.f("FontSize");
        x1 = (SimpleSymbol) a.f("FontBold");
        v1 = (SimpleSymbol) a.f("ButtonBACK");
        u1 = new FString("com.google.appinventor.components.runtime.Button");
        s1 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        q1 = (SimpleSymbol) a.f("Hori_PASSWORD");
        p1 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        n1 = new FString("com.google.appinventor.components.runtime.VerticalArrangement");
        m1 = IntNum.make(new int[]{-1, 0});
        k1 = (SimpleSymbol) a.f("Vertical_CONTAINER");
        j1 = new FString("com.google.appinventor.components.runtime.VerticalArrangement");
        h1 = new FString("com.google.appinventor.components.runtime.Spacer");
        g1 = IntNum.make(-1001);
        f1 = (SimpleSymbol) a.f("Height");
        d1 = (SimpleSymbol) a.f("Spacer9");
        c1 = new FString("com.google.appinventor.components.runtime.Spacer");
        a1 = new FString("com.google.appinventor.components.runtime.NiotronLinearProgressBar");
        Z0 = IntNum.make(new int[]{-16602892, 0});
        Y0 = (SimpleSymbol) a.f("ProgressColor");
        X0 = IntNum.make(100);
        W0 = (SimpleSymbol) a.f("Max");
        V0 = (SimpleSymbol) a.f("Indeterminate");
        U0 = IntNum.make(new int[]{-1, 0});
        T0 = (SimpleSymbol) a.f("BackgroundColor");
        R0 = (SimpleSymbol) a.f("Linear_Progressbar1");
        Q0 = new FString("com.google.appinventor.components.runtime.NiotronLinearProgressBar");
        O0 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        N0 = IntNum.make(-2);
        M0 = (SimpleSymbol) a.f("Width");
        L0 = (SimpleSymbol) a.f("HeihPadding");
        K0 = (SimpleSymbol) a.f("HeihMargin");
        J0 = IntNum.make(2);
        I0 = (SimpleSymbol) a.f("AlignVertical");
        G0 = new FString("com.google.appinventor.components.runtime.HorizontalArrangement");
        F0 = (SimpleSymbol) a.f("CBT3$Initialize");
        E0 = (SimpleSymbol) a.f("DisableCapture");
        D0 = (SimpleSymbol) a.f("Screenshot1");
        C0 = PairWithPosition.make(simpleSymbol3, PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 165211), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 165205);
        B0 = (SimpleSymbol) a.f("Visible");
        A0 = (SimpleSymbol) a.f("Horizontal_PROGRESSBAR");
        z0 = (SimpleSymbol) a.f("Clock1");
        y0 = (SimpleSymbol) a.f("KeepScreeenOn");
        x0 = (SimpleSymbol) a.f("Picture");
        w0 = (SimpleSymbol) a.f("Image512");
        v0 = PairWithPosition.make(simpleSymbol3, PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 164793), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 164787);
        u0 = (SimpleSymbol) a.f("Tiny_DBUSERAGENT");
        t0 = (SimpleSymbol) a.f("UserAgent");
        s0 = (SimpleSymbol) a.f("TimerEnabled");
        r0 = (SimpleSymbol) a.f("CEKTASKLOCK");
        q0 = (SimpleSymbol) a.f("Get");
        p0 = PairWithPosition.make(simpleSymbol3, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 164512);
        o0 = PairWithPosition.make(simpleSymbol3, PairWithPosition.make(simpleSymbol3, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 164484), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 164478);
        n0 = (SimpleSymbol) a.f("BASE64Decode");
        m0 = (SimpleSymbol) a.f("Security1");
        l0 = (SimpleSymbol) a.f("Url");
        k0 = (SimpleSymbol) a.f("Web1");
        j0 = (SimpleSymbol) a.f("DisablesAllTouchEvents");
        i0 = PairWithPosition.make((SimpleSymbol) a.f("component"), lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 163943);
        h0 = (SimpleSymbol) a.f("Web_View1");
        g0 = (SimpleSymbol) a.f("Initialize");
        f0 = (SimpleSymbol) a.f("WebViewTools1");
        e0 = (SimpleSymbol) a.f("BackPressed");
        d0 = (SimpleSymbol) a.f("CBT3$BackPressed");
        c0 = PairWithPosition.make(simpleSymbol3, PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 155862), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 155856);
        b0 = (SimpleSymbol) a.f("OnPause");
        a0 = (SimpleSymbol) a.f("CBT3$OnPause");
        Z = PairWithPosition.make(simpleSymbol3, PairWithPosition.make(simpleSymbol2, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 147670), "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 147664);
        Y = (SimpleSymbol) a.f("GetValue");
        X = (SimpleSymbol) a.f("Tiny_DBVOLUME");
        W = (SimpleSymbol) a.f("VolumeMusic");
        V = (SimpleSymbol) a.f("TaifunSettings1");
        U = (SimpleSymbol) a.f("Start");
        T = (SimpleSymbol) a.f("Player1");
        R = (SimpleSymbol) a.f("TitleVisible");
        Q = (SimpleSymbol) a.f("Title");
        P = (SimpleSymbol) a.f("Theme");
        O = (SimpleSymbol) a.f("StatusBarLightIcons");
        N = (SimpleSymbol) a.f("Sizing");
        M = (SimpleSymbol) a.f("ShowStatusBar");
        L = (SimpleSymbol) a.f("ShowOptionsMenu");
        K = (SimpleSymbol) a.f("ShowNavigationBar");
        J = (SimpleSymbol) a.f("ShowListsAsJson");
        I = (SimpleSymbol) a.f("ShowAboutInMenu");
        H = (SimpleSymbol) a.f("ScreenOrientation");
        G = (SimpleSymbol) a.f("OpenScreenAnimation");
        F = (SimpleSymbol) a.f("Icon");
        E = (SimpleSymbol) a.f("HighQualityImages");
        D = (SimpleSymbol) a.f("HighContrast");
        C = (SimpleSymbol) a.f("CloseScreenAnimation");
        A = (SimpleSymbol) a.f("AppName");
        z = IntNum.make(3);
        y = (SimpleSymbol) a.f("AlignHorizontal");
        w = IntNum.make(new int[]{-14382849, 0});
        v = (SimpleSymbol) a.f("AccentColor");
        t = (SimpleSymbol) a.f("g$TAMPUNG_DATA_PASS_KELUAR");
        s = PairWithPosition.make(simpleSymbol3, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 41117);
        p = PairWithPosition.make(simpleSymbol3, lList, "/tmp/1770963987212_0.08493078794246611-0/youngandroidproject/../src/com/niotron/muhammad_robi1996/V15_DATABASE/CBT3.yail", 41117);
        o = IntNum.make(0);
        n = (SimpleSymbol) a.f("CopyToClipboard");
        m = (SimpleSymbol) a.f(PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN);
        l = (SimpleSymbol) a.f("ShowToast");
        k = (SimpleSymbol) a.f("DevsTool1");
        i = (SimpleSymbol) a.f("p$CLIPBOARD");
        f5365g = (SimpleSymbol) a.f("g$Tampungdatalink");
        e = (SimpleSymbol) a.f("g$Exit");
        c = (SimpleSymbol) a.f("*the-null-value*");
        f5364b = (SimpleSymbol) a.f("getMessage");
        f5363a = (SimpleSymbol) a.f("CBT3");
    }

    public CBT3() {
        ModuleInfo.register(this);
        frame frameVar = new frame();
        frameVar.c = this;
        this.get$Mnsimple$Mnname = new ModuleMethod(frameVar, 1, ja, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.onCreate = new ModuleMethod(frameVar, 2, "onCreate", FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.android$Mnlog$Mnform = new ModuleMethod(frameVar, 3, ka, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.add$Mnto$Mnform$Mnenvironment = new ModuleMethod(frameVar, 4, la, 8194);
        this.lookup$Mnin$Mnform$Mnenvironment = new ModuleMethod(frameVar, 5, ma, 8193);
        this.is$Mnbound$Mnin$Mnform$Mnenvironment = new ModuleMethod(frameVar, 7, na, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.add$Mnto$Mnglobal$Mnvar$Mnenvironment = new ModuleMethod(frameVar, 8, oa, 8194);
        this.add$Mnto$Mnevents = new ModuleMethod(frameVar, 9, pa, 8194);
        this.add$Mnto$Mncomponents = new ModuleMethod(frameVar, 10, qa, 16388);
        this.add$Mnto$Mnglobal$Mnvars = new ModuleMethod(frameVar, 11, ra, 8194);
        this.add$Mnto$Mnform$Mndo$Mnafter$Mncreation = new ModuleMethod(frameVar, 12, sa, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.send$Mnerror = new ModuleMethod(frameVar, 13, ta, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.process$Mnexception = new ModuleMethod(frameVar, 14, "process-exception", FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.dispatchEvent = new ModuleMethod(frameVar, 15, ua, 16388);
        this.dispatchGenericEvent = new ModuleMethod(frameVar, 16, va, 16388);
        this.lookup$Mnhandler = new ModuleMethod(frameVar, 17, wa, 8194);
        ModuleMethod moduleMethod = new ModuleMethod(frameVar, 18, null, 0);
        moduleMethod.setProperty("source-location", "/tmp/runtime15061256449536606169.scm:634");
        d = moduleMethod;
        this.$define = new ModuleMethod(frameVar, 19, "$define", 0);
        f = new ModuleMethod(frameVar, 20, null, 0);
        h = new ModuleMethod(frameVar, 21, null, 0);
        j = new ModuleMethod(frameVar, 22, null, 0);
        r = new ModuleMethod(frameVar, 23, null, 0);
        q = new ModuleMethod(frameVar, 24, null, 0);
        u = new ModuleMethod(frameVar, 25, null, 0);
        S = new ModuleMethod(frameVar, 26, null, 0);
        this.CBT3$OnPause = new ModuleMethod(frameVar, 27, a0, 0);
        this.CBT3$BackPressed = new ModuleMethod(frameVar, 28, d0, 0);
        this.CBT3$Initialize = new ModuleMethod(frameVar, 29, F0, 0);
        H0 = new ModuleMethod(frameVar, 30, null, 0);
        P0 = new ModuleMethod(frameVar, 31, null, 0);
        S0 = new ModuleMethod(frameVar, 32, null, 0);
        b1 = new ModuleMethod(frameVar, 33, null, 0);
        e1 = new ModuleMethod(frameVar, 34, null, 0);
        i1 = new ModuleMethod(frameVar, 35, null, 0);
        l1 = new ModuleMethod(frameVar, 36, null, 0);
        o1 = new ModuleMethod(frameVar, 37, null, 0);
        r1 = new ModuleMethod(frameVar, 38, null, 0);
        t1 = new ModuleMethod(frameVar, 39, null, 0);
        w1 = new ModuleMethod(frameVar, 40, null, 0);
        F1 = new ModuleMethod(frameVar, 41, null, 0);
        this.ButtonBACK$Click = new ModuleMethod(frameVar, 42, P1, 0);
        T1 = new ModuleMethod(frameVar, 43, null, 0);
        f2 = new ModuleMethod(frameVar, 44, null, 0);
        h2 = new ModuleMethod(frameVar, 45, null, 0);
        s2 = new ModuleMethod(frameVar, 46, null, 0);
        v2 = new ModuleMethod(frameVar, 47, null, 0);
        y2 = new ModuleMethod(frameVar, 48, null, 0);
        this.YESEXIT$Click = new ModuleMethod(frameVar, 49, L2, 0);
        O2 = new ModuleMethod(frameVar, 50, null, 0);
        Q2 = new ModuleMethod(frameVar, 51, null, 0);
        S2 = new ModuleMethod(frameVar, 52, null, 0);
        V2 = new ModuleMethod(frameVar, 53, null, 0);
        Y2 = new ModuleMethod(frameVar, 54, null, 0);
        c3 = new ModuleMethod(frameVar, 55, null, 0);
        f3 = new ModuleMethod(frameVar, 56, null, 0);
        l3 = new ModuleMethod(frameVar, 57, null, 0);
        o3 = new ModuleMethod(frameVar, 58, null, 0);
        q3 = new ModuleMethod(frameVar, 59, null, 0);
        t3 = new ModuleMethod(frameVar, 60, null, 0);
        x3 = new ModuleMethod(frameVar, 61, null, 0);
        this.WEBBACKBUTTON$Click = new ModuleMethod(frameVar, 62, A3, 0);
        D3 = new ModuleMethod(frameVar, 63, null, 0);
        I3 = new ModuleMethod(frameVar, 64, null, 0);
        this.WEBFORWARD$Click = new ModuleMethod(frameVar, 65, L3, 0);
        O3 = new ModuleMethod(frameVar, 66, null, 0);
        R3 = new ModuleMethod(frameVar, 67, null, 0);
        U3 = new ModuleMethod(frameVar, 68, null, 0);
        X3 = new ModuleMethod(frameVar, 69, null, 0);
        a4 = new ModuleMethod(frameVar, 70, null, 0);
        h4 = new ModuleMethod(frameVar, 71, null, 0);
        k4 = new ModuleMethod(frameVar, 72, null, 0);
        n4 = new ModuleMethod(frameVar, 73, null, 0);
        q4 = new ModuleMethod(frameVar, 74, null, 0);
        u4 = new ModuleMethod(frameVar, 75, null, 0);
        this.ButtonREFRESH$Click = new ModuleMethod(frameVar, 76, y4, 0);
        B4 = new ModuleMethod(frameVar, 77, null, 0);
        F4 = new ModuleMethod(frameVar, 78, null, 0);
        this.ButtonEXIT$Click = new ModuleMethod(frameVar, 79, I4, 0);
        L4 = new ModuleMethod(frameVar, 80, null, 0);
        O4 = new ModuleMethod(frameVar, 81, null, 0);
        R4 = new ModuleMethod(frameVar, 82, null, 0);
        T4 = new ModuleMethod(frameVar, 83, null, 0);
        W4 = new ModuleMethod(frameVar, 84, null, 0);
        Y4 = new ModuleMethod(frameVar, 85, null, 0);
        b5 = new ModuleMethod(frameVar, 86, null, 0);
        d5 = new ModuleMethod(frameVar, 87, null, 0);
        f5 = new ModuleMethod(frameVar, 88, null, 0);
        h5 = new ModuleMethod(frameVar, 89, null, 0);
        k5 = new ModuleMethod(frameVar, 90, null, 0);
        m5 = new ModuleMethod(frameVar, 91, null, 0);
        o5 = new ModuleMethod(frameVar, 92, null, 0);
        q5 = new ModuleMethod(frameVar, 93, null, 0);
        this.Web_View1$ProgressChanged = new ModuleMethod(frameVar, 94, t5, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        this.Web_View1$ErrorOccurred = new ModuleMethod(frameVar, 95, z5, 12291);
        this.Web_View1$PageLoaded = new ModuleMethod(frameVar, 96, N5, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        R5 = new ModuleMethod(frameVar, 97, null, 0);
        T5 = new ModuleMethod(frameVar, 98, null, 0);
        W5 = new ModuleMethod(frameVar, 99, null, 0);
        Y5 = new ModuleMethod(frameVar, 100, null, 0);
        b6 = new ModuleMethod(frameVar, 101, null, 0);
        e6 = new ModuleMethod(frameVar, 102, null, 0);
        h6 = new ModuleMethod(frameVar, 103, null, 0);
        j6 = new ModuleMethod(frameVar, 104, null, 0);
        l6 = new ModuleMethod(frameVar, 105, null, 0);
        o6 = new ModuleMethod(frameVar, 106, null, 0);
        r6 = new ModuleMethod(frameVar, 107, null, 0);
        t6 = new ModuleMethod(frameVar, 108, null, 0);
        w6 = new ModuleMethod(frameVar, 109, null, 0);
        A6 = new ModuleMethod(frameVar, 110, null, 0);
        this.ButtonBAWAH$GotFocus = new ModuleMethod(frameVar, 111, D6, 0);
        this.ButtonBAWAH$TouchDown = new ModuleMethod(frameVar, 112, H6, 0);
        this.ButtonBAWAH$TouchUp = new ModuleMethod(frameVar, 113, L6, 0);
        O6 = new ModuleMethod(frameVar, 114, null, 0);
        Q6 = new ModuleMethod(frameVar, 115, null, 0);
        T6 = new ModuleMethod(frameVar, 116, null, 0);
        V6 = new ModuleMethod(frameVar, 117, null, 0);
        Y6 = new ModuleMethod(frameVar, 118, null, 0);
        b7 = new ModuleMethod(frameVar, 119, null, 0);
        e7 = new ModuleMethod(frameVar, 120, null, 0);
        l7 = new ModuleMethod(frameVar, 121, null, 0);
        o7 = new ModuleMethod(frameVar, 122, null, 0);
        s7 = new ModuleMethod(frameVar, 123, null, 0);
        this.KELUAR$Click = new ModuleMethod(frameVar, 124, t7, 0);
        v7 = new ModuleMethod(frameVar, 125, null, 0);
        z7 = new ModuleMethod(frameVar, 126, null, 0);
        D7 = new ModuleMethod(frameVar, WorkQueueKt.MASK, null, 0);
        H7 = new ModuleMethod(frameVar, 128, null, 0);
        J7 = new ModuleMethod(frameVar, 129, null, 0);
        O7 = new ModuleMethod(frameVar, 130, null, 0);
        this.Clock1$Timer = new ModuleMethod(frameVar, 131, Q7, 0);
        T7 = new ModuleMethod(frameVar, 132, null, 0);
        W7 = new ModuleMethod(frameVar, 133, null, 0);
        e8 = new ModuleMethod(frameVar, 134, null, 0);
        g8 = new ModuleMethod(frameVar, 135, null, 0);
        this.ClockJAM$Timer = new ModuleMethod(frameVar, 136, k8, 0);
        m8 = new ModuleMethod(frameVar, 137, null, 0);
        o8 = new ModuleMethod(frameVar, 138, null, 0);
        s8 = new ModuleMethod(frameVar, 139, null, 0);
        v8 = new ModuleMethod(frameVar, 140, null, 0);
        this.CEKTASKLOCK$Timer = new ModuleMethod(frameVar, 141, M8, 0);
        this.Web1$GotText = new ModuleMethod(frameVar, 142, b9, 16388);
        f9 = new ModuleMethod(frameVar, 143, null, 0);
        h9 = new ModuleMethod(frameVar, 144, null, 0);
        j9 = new ModuleMethod(frameVar, 145, null, 0);
        l9 = new ModuleMethod(frameVar, 146, null, 0);
        s9 = new ModuleMethod(frameVar, 147, null, 0);
        v9 = new ModuleMethod(frameVar, 148, null, 0);
        this.ClockCLIPBOARD$Timer = new ModuleMethod(frameVar, 149, y9, 0);
        B9 = new ModuleMethod(frameVar, 150, null, 0);
        E9 = new ModuleMethod(frameVar, 151, null, 0);
        this.ClockCLIPBOARD2$Timer = new ModuleMethod(frameVar, 152, F9, 0);
        this.SpecialKeyboard1$OnKeyboardChange = new ModuleMethod(frameVar, 153, J9, 8194);
        this.WebPASSKELUAR$GotText = new ModuleMethod(frameVar, 154, W9, 16388);
        Y9 = new ModuleMethod(frameVar, 155, null, 0);
        aa = new ModuleMethod(frameVar, 156, null, 0);
        this.ClockCEKSERVER$Timer = new ModuleMethod(frameVar, 157, ga, 0);
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
        String str;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        Object obj7;
        Object obj8;
        Object obj9;
        Object obj10;
        Object obj11;
        Object obj12;
        Symbol symbol = a0;
        SimpleSymbol simpleSymbol = t;
        SimpleSymbol simpleSymbol2 = i;
        SimpleSymbol simpleSymbol3 = f5365g;
        SimpleSymbol simpleSymbol4 = e;
        Object obj13 = O1;
        Object obj14 = O9;
        Object obj15 = H9;
        Object obj16 = A9;
        Object obj17 = r9;
        Object obj18 = k0;
        Object obj19 = r0;
        Object obj20 = d8;
        Object obj21 = z0;
        Object obj22 = n7;
        Object obj23 = A4;
        Object obj24 = p4;
        Object obj25 = C3;
        Object obj26 = s3;
        Consumer consumer = callContext.consumer;
        runtime runtimeVar = runtime.$instance;
        runtimeVar.run();
        Boolean bool = Boolean.FALSE;
        this.$Stdebug$Mnform$St = bool;
        SimpleSymbol simpleSymbol5 = f5363a;
        this.form$Mnenvironment = Environment.make(simpleSymbol5.toString());
        FString fStringStringAppend = strings.stringAppend(simpleSymbol5.toString(), "-global-vars");
        this.global$Mnvar$Mnenvironment = Environment.make(fStringStringAppend == null ? null : fStringStringAppend.toString());
        CBT3 = null;
        this.form$Mnname$Mnsymbol = simpleSymbol5;
        LList lList = LList.Empty;
        this.events$Mnto$Mnregister = lList;
        this.components$Mnto$Mncreate = lList;
        this.global$Mnvars$Mnto$Mncreate = lList;
        this.form$Mndo$Mnafter$Mncreation = lList;
        runtimeVar.run();
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(simpleSymbol4, bool), consumer);
        } else {
            addToGlobalVars(simpleSymbol4, f);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(simpleSymbol3, ""), consumer);
        } else {
            addToGlobalVars(simpleSymbol3, h);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(simpleSymbol2, j), consumer);
        } else {
            addToGlobalVars(simpleSymbol2, q);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addGlobalVarToCurrentFormEnvironment(simpleSymbol, ""), consumer);
        } else {
            addToGlobalVars(simpleSymbol, u);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            SimpleSymbol simpleSymbol6 = v;
            IntNum intNum = w;
            SimpleSymbol simpleSymbol7 = x;
            runtime.setAndCoerceProperty$Ex(simpleSymbol5, simpleSymbol6, intNum, simpleSymbol7);
            runtime.setAndCoerceProperty$Ex(simpleSymbol5, y, z, simpleSymbol7);
            SimpleSymbol simpleSymbol8 = A;
            SimpleSymbol simpleSymbol9 = B;
            runtime.setAndCoerceProperty$Ex(simpleSymbol5, simpleSymbol8, "RDEV_EXAM_V9", simpleSymbol9);
            runtime.setAndCoerceProperty$Ex(simpleSymbol5, C, "slidevertical", simpleSymbol9);
            Boolean bool2 = Boolean.TRUE;
            SimpleSymbol simpleSymbol10 = D;
            SimpleSymbol simpleSymbol11 = m;
            runtime.setAndCoerceProperty$Ex(simpleSymbol5, simpleSymbol10, bool2, simpleSymbol11);
            runtime.setAndCoerceProperty$Ex(simpleSymbol5, E, bool2, simpleSymbol11);
            runtime.setAndCoerceProperty$Ex(simpleSymbol5, F, "512.png", simpleSymbol9);
            runtime.setAndCoerceProperty$Ex(simpleSymbol5, G, "slidehorizontal", simpleSymbol9);
            runtime.setAndCoerceProperty$Ex(simpleSymbol5, H, "sensor", simpleSymbol9);
            runtime.setAndCoerceProperty$Ex(simpleSymbol5, I, bool, simpleSymbol11);
            runtime.setAndCoerceProperty$Ex(simpleSymbol5, J, bool2, simpleSymbol11);
            runtime.setAndCoerceProperty$Ex(simpleSymbol5, K, bool, simpleSymbol11);
            runtime.setAndCoerceProperty$Ex(simpleSymbol5, L, bool, simpleSymbol11);
            runtime.setAndCoerceProperty$Ex(simpleSymbol5, M, bool, simpleSymbol11);
            runtime.setAndCoerceProperty$Ex(simpleSymbol5, N, "Responsive", simpleSymbol9);
            runtime.setAndCoerceProperty$Ex(simpleSymbol5, O, bool, simpleSymbol11);
            runtime.setAndCoerceProperty$Ex(simpleSymbol5, P, "Classic", simpleSymbol9);
            runtime.setAndCoerceProperty$Ex(simpleSymbol5, Q, "CBT3", simpleSymbol9);
            Values.writeValues(runtime.setAndCoerceProperty$Ex(simpleSymbol5, R, bool, simpleSymbol11), consumer);
        } else {
            addToFormDoAfterCreation(new Promise(S));
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(symbol, this.CBT3$OnPause);
        } else {
            addToFormEnvironment(symbol, this.CBT3$OnPause);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "CBT3", "OnPause");
        } else {
            addToEvents(simpleSymbol5, b0);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(d0, this.CBT3$BackPressed);
        } else {
            addToFormEnvironment(d0, this.CBT3$BackPressed);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "CBT3", "BackPressed");
        } else {
            addToEvents(simpleSymbol5, e0);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(F0, this.CBT3$Initialize);
        } else {
            addToFormEnvironment(F0, this.CBT3$Initialize);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "CBT3", "Initialize");
        } else {
            addToEvents(simpleSymbol5, g0);
        }
        this.Horizontal_PROGRESSBAR = null;
        Object obj27 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj28 = A0;
        if (obj27 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol5, G0, obj28, H0), consumer);
        } else {
            addToComponents(simpleSymbol5, O0, obj28, P0);
        }
        this.Linear_Progressbar1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj28, Q0, R0, S0), consumer);
        } else {
            addToComponents(obj28, a1, R0, b1);
        }
        this.Spacer9 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol5, c1, d1, e1), consumer);
        } else {
            addToComponents(simpleSymbol5, h1, d1, i1);
        }
        this.Vertical_CONTAINER = null;
        Object obj29 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj30 = k1;
        if (obj29 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(simpleSymbol5, j1, obj30, l1), consumer);
        } else {
            addToComponents(simpleSymbol5, n1, obj30, o1);
        }
        this.Hori_PASSWORD = null;
        Object obj31 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj32 = q1;
        if (obj31 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj30, p1, obj32, r1), consumer);
        } else {
            addToComponents(obj30, s1, obj32, t1);
        }
        this.ButtonBACK = null;
        Object obj33 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj34 = v1;
        if (obj33 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj32, u1, obj34, w1), consumer);
        } else {
            addToComponents(obj32, E1, obj34, F1);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(P1, this.ButtonBACK$Click);
        } else {
            addToFormEnvironment(P1, this.ButtonBACK$Click);
        }
        Object obj35 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj36 = Q1;
        if (obj35 != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "ButtonBACK", "Click");
        } else {
            addToEvents(obj34, obj36);
        }
        this.Card_ViewTexbox_EXIT = null;
        Object obj37 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj38 = S1;
        if (obj37 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj32, R1, obj38, T1), consumer);
        } else {
            addToComponents(obj32, e2, obj38, f2);
        }
        this.Text_BOX_PASSWORD_EXIT = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            obj = simpleSymbol5;
            Values.writeValues(runtime.addComponentWithinRepl(obj38, g2, J1, h2), consumer);
        } else {
            obj = simpleSymbol5;
            addToComponents(obj38, r2, J1, s2);
        }
        this.YESEXIT = null;
        Object obj39 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj40 = u2;
        if (obj39 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj32, t2, obj40, v2), consumer);
        } else {
            addToComponents(obj32, x2, obj40, y2);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(L2, this.YESEXIT$Click);
        } else {
            addToFormEnvironment(L2, this.YESEXIT$Click);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "YESEXIT", "Click");
        } else {
            addToEvents(obj40, obj36);
        }
        this.LabelHEADSET = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj30, M2, N2, O2), consumer);
        } else {
            addToComponents(obj30, P2, N2, Q2);
        }
        this.Horizontal_TEXBOX = null;
        Object obj41 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj42 = I1;
        if (obj41 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj30, R2, obj42, S2), consumer);
        } else {
            addToComponents(obj30, U2, obj42, V2);
        }
        this.Card_ViewTexboX = null;
        Object obj43 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj44 = X2;
        if (obj43 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj42, W2, obj44, Y2), consumer);
        } else {
            addToComponents(obj42, b3, obj44, c3);
        }
        this.Text_BoxQRSCREEN = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj44, d3, e3, f3), consumer);
        } else {
            addToComponents(obj44, k3, e3, l3);
        }
        this.ButtonGOTEXBOX = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj42, m3, n3, o3), consumer);
        } else {
            addToComponents(obj42, p3, n3, q3);
        }
        this.WEBBACKBUTTON = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj42, r3, obj26, t3), consumer);
        } else {
            addToComponents(obj42, w3, obj26, x3);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(A3, this.WEBBACKBUTTON$Click);
        } else {
            addToFormEnvironment(A3, this.WEBBACKBUTTON$Click);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "WEBBACKBUTTON", "Click");
        } else {
            addToEvents(obj26, obj36);
        }
        this.WEBFORWARD = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj42, B3, obj25, D3), consumer);
        } else {
            addToComponents(obj42, G3, obj25, I3);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(L3, this.WEBFORWARD$Click);
        } else {
            addToFormEnvironment(L3, this.WEBFORWARD$Click);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "WEBFORWARD", "Click");
        } else {
            addToEvents(obj25, obj36);
        }
        this.Horizontal_Arrangement6 = null;
        Object obj45 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj46 = N3;
        if (obj45 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj42, M3, obj46, O3), consumer);
        } else {
            addToComponents(obj42, Q3, obj46, R3);
        }
        this.JAM = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj46, S3, T3, U3), consumer);
        } else {
            addToComponents(obj46, W3, T3, X3);
        }
        this.Card_View1 = null;
        Object obj47 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj48 = Z3;
        if (obj47 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj42, Y3, obj48, a4), consumer);
        } else {
            addToComponents(obj42, g4, obj48, h4);
        }
        this.Horizontal_Arrangement4 = null;
        Object obj49 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj50 = j4;
        if (obj49 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj48, i4, obj50, k4), consumer);
        } else {
            addToComponents(obj48, m4, obj50, n4);
        }
        this.ButtonREFRESH = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj50, o4, obj24, q4), consumer);
        } else {
            addToComponents(obj50, t4, obj24, u4);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(y4, this.ButtonREFRESH$Click);
        } else {
            addToFormEnvironment(y4, this.ButtonREFRESH$Click);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "ButtonREFRESH", "Click");
        } else {
            addToEvents(obj24, obj36);
        }
        this.ButtonEXIT = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj50, z4, obj23, B4), consumer);
        } else {
            addToComponents(obj50, E4, obj23, F4);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(I4, this.ButtonEXIT$Click);
        } else {
            addToFormEnvironment(I4, this.ButtonEXIT$Click);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "ButtonEXIT", "Click");
        } else {
            addToEvents(obj23, obj36);
        }
        this.Horizontal_Arrangement1 = null;
        Object obj51 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj52 = K4;
        if (obj51 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj42, J4, obj52, L4), consumer);
        } else {
            addToComponents(obj42, N4, obj52, O4);
        }
        this.Label1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj52, P4, Q4, R4), consumer);
        } else {
            addToComponents(obj52, S4, Q4, T4);
        }
        this.STATUS = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj52, U4, V4, W4), consumer);
        } else {
            addToComponents(obj52, X4, V4, Y4);
        }
        this.PERSEN = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj52, Z4, a5, b5), consumer);
        } else {
            addToComponents(obj52, c5, a5, d5);
        }
        this.Cekpasskeluar = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj30, e5, N1, f5), consumer);
        } else {
            addToComponents(obj30, g5, N1, h5);
        }
        this.Label6 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj30, i5, j5, k5), consumer);
        } else {
            addToComponents(obj30, l5, j5, m5);
        }
        this.Web_View1 = null;
        Object obj53 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj54 = h0;
        if (obj53 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj30, n5, obj54, o5), consumer);
        } else {
            addToComponents(obj30, p5, obj54, q5);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(t5, this.Web_View1$ProgressChanged);
        } else {
            addToFormEnvironment(t5, this.Web_View1$ProgressChanged);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Web_View1", "ProgressChanged");
        } else {
            addToEvents(obj54, u5);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(z5, this.Web_View1$ErrorOccurred);
        } else {
            addToFormEnvironment(z5, this.Web_View1$ErrorOccurred);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Web_View1", "ErrorOccurred");
        } else {
            addToEvents(obj54, A5);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(N5, this.Web_View1$PageLoaded);
        } else {
            addToFormEnvironment(N5, this.Web_View1$PageLoaded);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Web_View1", "PageLoaded");
        } else {
            addToEvents(obj54, O5);
        }
        this.CEKLOCKTASK = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj30, P5, Q5, R5), consumer);
        } else {
            addToComponents(obj30, S5, Q5, T5);
        }
        this.LabelBLUETOOTH = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj30, U5, V5, W5), consumer);
        } else {
            addToComponents(obj30, X5, V5, Y5);
        }
        this.Horizontal_FOOTER = null;
        Object obj55 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj56 = a6;
        if (obj55 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj30, Z5, obj56, b6), consumer);
        } else {
            addToComponents(obj30, d6, obj56, e6);
        }
        this.Spacer3 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj56, f6, g6, h6), consumer);
        } else {
            addToComponents(obj56, i6, g6, j6);
        }
        this.Image512 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj56, k6, w0, l6), consumer);
        } else {
            addToComponents(obj56, n6, w0, o6);
        }
        this.Spacer2 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj56, p6, q6, r6), consumer);
        } else {
            addToComponents(obj56, s6, q6, t6);
        }
        this.ButtonBAWAH = null;
        Object obj57 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj58 = v6;
        if (obj57 != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj30, u6, obj58, w6), consumer);
        } else {
            addToComponents(obj30, z6, obj58, A6);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(D6, this.ButtonBAWAH$GotFocus);
        } else {
            addToFormEnvironment(D6, this.ButtonBAWAH$GotFocus);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            str = "ButtonBAWAH";
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, str, "GotFocus");
        } else {
            str = "ButtonBAWAH";
            addToEvents(obj58, E6);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(H6, this.ButtonBAWAH$TouchDown);
        } else {
            addToFormEnvironment(H6, this.ButtonBAWAH$TouchDown);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, str, "TouchDown");
        } else {
            addToEvents(obj58, I6);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(L6, this.ButtonBAWAH$TouchUp);
        } else {
            addToFormEnvironment(L6, this.ButtonBAWAH$TouchUp);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, str, "TouchUp");
        } else {
            addToEvents(obj58, M6);
        }
        this.Vertical_ERROR = null;
        Object obj59 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj60 = y5;
        if (obj59 != bool) {
            obj2 = obj;
            Values.writeValues(runtime.addComponentWithinRepl(obj2, N6, obj60, O6), consumer);
        } else {
            obj2 = obj;
            addToComponents(obj2, P6, obj60, Q6);
        }
        this.Label2 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj60, R6, S6, T6), consumer);
        } else {
            addToComponents(obj60, U6, S6, V6);
        }
        this.Spacer1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj60, W6, X6, Y6), consumer);
        } else {
            addToComponents(obj60, a7, X6, b7);
        }
        this.Lottie_Animation1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj60, c7, d7, e7), consumer);
        } else {
            addToComponents(obj60, k7, d7, l7);
        }
        this.KELUAR = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            obj3 = obj22;
            Values.writeValues(runtime.addComponentWithinRepl(obj60, m7, obj3, o7), consumer);
        } else {
            obj3 = obj22;
            addToComponents(obj60, r7, obj3, s7);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(t7, this.KELUAR$Click);
        } else {
            addToFormEnvironment(t7, this.KELUAR$Click);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "KELUAR", "Click");
        } else {
            addToEvents(obj3, obj36);
        }
        this.Player1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj2, u7, T, v7), consumer);
        } else {
            addToComponents(obj2, y7, T, z7);
        }
        this.TaifunSettings1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj2, A7, V, bool), consumer);
        } else {
            addToComponents(obj2, B7, V, bool);
        }
        this.Notifier1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj2, C7, G2, D7), consumer);
        } else {
            addToComponents(obj2, G7, G2, H7);
        }
        this.Clock1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            obj4 = obj21;
            Values.writeValues(runtime.addComponentWithinRepl(obj2, I7, obj4, J7), consumer);
        } else {
            obj4 = obj21;
            addToComponents(obj2, N7, obj4, O7);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(Q7, this.Clock1$Timer);
        } else {
            addToFormEnvironment(Q7, this.Clock1$Timer);
        }
        Object obj61 = runtime.$Stthis$Mnis$Mnthe$Mnrepl$St;
        Object obj62 = R7;
        if (obj61 != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Clock1", "Timer");
        } else {
            addToEvents(obj4, obj62);
        }
        this.Tiny_DBPASSKELUAR = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj2, S7, z2, T7), consumer);
        } else {
            addToComponents(obj2, V7, z2, W7);
        }
        this.TaifunLockTask1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj2, X7, F5, bool), consumer);
        } else {
            addToComponents(obj2, Y7, F5, bool);
        }
        this.Battery_Tools1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj2, Z7, a8, bool), consumer);
        } else {
            addToComponents(obj2, b8, a8, bool);
        }
        this.ClockJAM = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            obj5 = obj20;
            Values.writeValues(runtime.addComponentWithinRepl(obj2, c8, obj5, e8), consumer);
        } else {
            obj5 = obj20;
            addToComponents(obj2, f8, obj5, g8);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(k8, this.ClockJAM$Timer);
        } else {
            addToFormEnvironment(k8, this.ClockJAM$Timer);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "ClockJAM", "Timer");
        } else {
            addToEvents(obj5, obj62);
        }
        this.Tiny_DBUSERAGENT = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj2, l8, u0, m8), consumer);
        } else {
            addToComponents(obj2, n8, u0, o8);
        }
        this.Screenshot1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj2, p8, D0, bool), consumer);
        } else {
            addToComponents(obj2, q8, D0, bool);
        }
        this.CEKTASKLOCK = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            obj6 = obj19;
            Values.writeValues(runtime.addComponentWithinRepl(obj2, r8, obj6, s8), consumer);
        } else {
            obj6 = obj19;
            addToComponents(obj2, u8, obj6, v8);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(M8, this.CEKTASKLOCK$Timer);
        } else {
            addToFormEnvironment(M8, this.CEKTASKLOCK$Timer);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "CEKTASKLOCK", "Timer");
        } else {
            addToEvents(obj6, obj62);
        }
        this.Bluetooth_Client1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj2, N8, E8, bool), consumer);
        } else {
            addToComponents(obj2, O8, E8, bool);
        }
        this.TaifunHeadset1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj2, P8, I8, bool), consumer);
        } else {
            addToComponents(obj2, Q8, I8, bool);
        }
        this.Web1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            obj7 = obj18;
            Values.writeValues(runtime.addComponentWithinRepl(obj2, R8, obj7, bool), consumer);
        } else {
            obj7 = obj18;
            addToComponents(obj2, S8, obj7, bool);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(b9, this.Web1$GotText);
        } else {
            addToFormEnvironment(b9, this.Web1$GotText);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "Web1", "GotText");
        } else {
            addToEvents(obj7, c9);
        }
        this.Tiny_LINK = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj2, d9, e9, f9), consumer);
        } else {
            addToComponents(obj2, g9, e9, h9);
        }
        this.Tiny_DBVOLUME = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj2, i9, X, j9), consumer);
        } else {
            addToComponents(obj2, k9, X, l9);
        }
        this.Security1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj2, m9, m0, bool), consumer);
        } else {
            addToComponents(obj2, n9, m0, bool);
        }
        this.DevsTool1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj2, o9, k, bool), consumer);
        } else {
            addToComponents(obj2, p9, k, bool);
        }
        this.ClockCLIPBOARD = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            obj8 = obj17;
            Values.writeValues(runtime.addComponentWithinRepl(obj2, q9, obj8, s9), consumer);
        } else {
            obj8 = obj17;
            addToComponents(obj2, u9, obj8, v9);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(y9, this.ClockCLIPBOARD$Timer);
        } else {
            addToFormEnvironment(y9, this.ClockCLIPBOARD$Timer);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "ClockCLIPBOARD", "Timer");
        } else {
            addToEvents(obj8, obj62);
        }
        this.ClockCLIPBOARD2 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            obj9 = obj16;
            Values.writeValues(runtime.addComponentWithinRepl(obj2, z9, obj9, B9), consumer);
        } else {
            obj9 = obj16;
            addToComponents(obj2, D9, obj9, E9);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(F9, this.ClockCLIPBOARD2$Timer);
        } else {
            addToFormEnvironment(F9, this.ClockCLIPBOARD2$Timer);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "ClockCLIPBOARD2", "Timer");
        } else {
            addToEvents(obj9, obj62);
        }
        this.SpecialKeyboard1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            obj10 = obj15;
            Values.writeValues(runtime.addComponentWithinRepl(obj2, G9, obj10, bool), consumer);
        } else {
            obj10 = obj15;
            addToComponents(obj2, I9, obj10, bool);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(J9, this.SpecialKeyboard1$OnKeyboardChange);
        } else {
            addToFormEnvironment(J9, this.SpecialKeyboard1$OnKeyboardChange);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "SpecialKeyboard1", "OnKeyboardChange");
        } else {
            addToEvents(obj10, K9);
        }
        this.WebViewTools1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj2, L9, f0, bool), consumer);
        } else {
            addToComponents(obj2, M9, f0, bool);
        }
        this.WebPASSKELUAR = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            obj11 = obj14;
            Values.writeValues(runtime.addComponentWithinRepl(obj2, N9, obj11, bool), consumer);
        } else {
            obj11 = obj14;
            addToComponents(obj2, P9, obj11, bool);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(W9, this.WebPASSKELUAR$GotText);
        } else {
            addToFormEnvironment(W9, this.WebPASSKELUAR$GotText);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "WebPASSKELUAR", "GotText");
        } else {
            addToEvents(obj11, c9);
        }
        this.ClockCEKSERVER = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            obj12 = obj13;
            Values.writeValues(runtime.addComponentWithinRepl(obj2, X9, obj12, Y9), consumer);
        } else {
            obj12 = obj13;
            addToComponents(obj2, Z9, obj12, aa);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            runtime.addToCurrentFormEnvironment(ga, this.ClockCEKSERVER$Timer);
        } else {
            addToFormEnvironment(ga, this.ClockCEKSERVER$Timer);
        }
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            EventDispatcher.registerEventForDelegation((HandlesEventDispatching) runtime.$Stthis$Mnform$St, "ClockCEKSERVER", "Timer");
        } else {
            addToEvents(obj12, obj62);
        }
        this.RdevKeyoardLock1 = null;
        if (runtime.$Stthis$Mnis$Mnthe$Mnrepl$St != bool) {
            Values.writeValues(runtime.addComponentWithinRepl(obj2, ha, w8, bool), consumer);
        } else {
            addToComponents(obj2, ia, w8, bool);
        }
        runtime.initRuntime();
    }

    public class frame extends ModuleBody {
        public CBT3 c;

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            return moduleMethod.selector == 95 ? this.c.Web_View1$ErrorOccurred(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
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

        @Override // gnu.expr.ModuleBody
        public Object apply0(ModuleMethod moduleMethod) throws Throwable {
            switch (moduleMethod.selector) {
                case 18:
                    CBT3 cbt3 = CBT3.CBT3;
                    return null;
                case 19:
                    this.c.$define();
                    return Values.empty;
                case 20:
                    CBT3 cbt32 = CBT3.CBT3;
                    return Boolean.FALSE;
                case 21:
                    CBT3 cbt33 = CBT3.CBT3;
                    return "";
                case 22:
                    return CBT3.H();
                case 23:
                    Boolean bool = Boolean.FALSE;
                    SimpleSymbol simpleSymbol = CBT3.m;
                    SimpleSymbol simpleSymbol2 = CBT3.k;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol2, CBT3.l, bool, simpleSymbol);
                    return runtime.callComponentMethod(simpleSymbol2, CBT3.n, LList.list1(CBT3.o), CBT3.s);
                case 24:
                    return CBT3.r;
                case 25:
                    CBT3 cbt34 = CBT3.CBT3;
                    return "";
                case 26:
                    return CBT3.I();
                case 27:
                    return this.c.CBT3$OnPause();
                case 28:
                    return this.c.CBT3$BackPressed();
                case 29:
                    return this.c.CBT3$Initialize();
                case 30:
                    return CBT3.k();
                case 31:
                    return CBT3.l();
                case 32:
                    return CBT3.m();
                case 33:
                    return CBT3.n();
                case 34:
                    return CBT3.o();
                case 35:
                    return CBT3.p();
                case 36:
                    return CBT3.q();
                case 37:
                    return CBT3.r();
                case 38:
                    return CBT3.s();
                case 39:
                    return CBT3.t();
                case 40:
                    return CBT3.u();
                case 41:
                    return CBT3.v();
                case 42:
                    return this.c.ButtonBACK$Click();
                case 43:
                    return CBT3.w();
                case 44:
                    return CBT3.x();
                case 45:
                    return CBT3.y();
                case 46:
                    return CBT3.z();
                case 47:
                    return CBT3.A();
                case 48:
                    return CBT3.B();
                case 49:
                    return this.c.YESEXIT$Click();
                case 50:
                    return CBT3.C();
                case 51:
                    return CBT3.D();
                case 52:
                    return CBT3.E();
                case 53:
                    SimpleSymbol simpleSymbol3 = CBT3.I1;
                    SimpleSymbol simpleSymbol4 = CBT3.y;
                    IntNum intNum = CBT3.z;
                    SimpleSymbol simpleSymbol5 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol3, simpleSymbol4, intNum, simpleSymbol5);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol3, CBT3.I0, CBT3.J0, simpleSymbol5);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol3, CBT3.T0, CBT3.T2, simpleSymbol5);
                    SimpleSymbol simpleSymbol6 = CBT3.K0;
                    SimpleSymbol simpleSymbol7 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol3, simpleSymbol6, "0,0,0,0", simpleSymbol7);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol3, CBT3.L0, "0,0,0,0", simpleSymbol7);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol3, CBT3.M0, CBT3.N0, simpleSymbol5);
                case 54:
                    return CBT3.F();
                case 55:
                    return CBT3.G();
                case 56:
                    SimpleSymbol simpleSymbol8 = CBT3.e3;
                    SimpleSymbol simpleSymbol9 = CBT3.T0;
                    IntNum intNum2 = CBT3.g3;
                    SimpleSymbol simpleSymbol10 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, simpleSymbol9, intNum2, simpleSymbol10);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, CBT3.x1, Boolean.TRUE, CBT3.m);
                    SimpleSymbol simpleSymbol11 = CBT3.A1;
                    SimpleSymbol simpleSymbol12 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, simpleSymbol11, "1", simpleSymbol12);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, CBT3.K0, "0,0,0,0", simpleSymbol12);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, CBT3.K1, "Masukan link/ip ujian", simpleSymbol12);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, CBT3.L1, CBT3.h3, simpleSymbol10);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, CBT3.m2, CBT3.n2, simpleSymbol10);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol8, CBT3.o2, CBT3.i3, simpleSymbol10);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol8, CBT3.M0, CBT3.j3, simpleSymbol10);
                case 57:
                    SimpleSymbol simpleSymbol13 = CBT3.e3;
                    SimpleSymbol simpleSymbol14 = CBT3.T0;
                    IntNum intNum3 = CBT3.g3;
                    SimpleSymbol simpleSymbol15 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol13, simpleSymbol14, intNum3, simpleSymbol15);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol13, CBT3.x1, Boolean.TRUE, CBT3.m);
                    SimpleSymbol simpleSymbol16 = CBT3.A1;
                    SimpleSymbol simpleSymbol17 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol13, simpleSymbol16, "1", simpleSymbol17);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol13, CBT3.K0, "0,0,0,0", simpleSymbol17);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol13, CBT3.K1, "Masukan link/ip ujian", simpleSymbol17);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol13, CBT3.L1, CBT3.h3, simpleSymbol15);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol13, CBT3.m2, CBT3.n2, simpleSymbol15);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol13, CBT3.o2, CBT3.i3, simpleSymbol15);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol13, CBT3.M0, CBT3.j3, simpleSymbol15);
                case 58:
                    Boolean bool2 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol18 = CBT3.n3;
                    SimpleSymbol simpleSymbol19 = CBT3.x1;
                    SimpleSymbol simpleSymbol20 = CBT3.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol18, simpleSymbol19, bool2, simpleSymbol20);
                    SimpleSymbol simpleSymbol21 = CBT3.y1;
                    IntNum intNum4 = CBT3.w2;
                    SimpleSymbol simpleSymbol22 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol18, simpleSymbol21, intNum4, simpleSymbol22);
                    SimpleSymbol simpleSymbol23 = CBT3.A1;
                    SimpleSymbol simpleSymbol24 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol18, simpleSymbol23, Component.TYPEFACE_GOOGLE_MATERIAL_DESIGN, simpleSymbol24);
                    SimpleSymbol simpleSymbol25 = CBT3.f1;
                    IntNum intNum5 = CBT3.B1;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol18, simpleSymbol25, intNum5, simpleSymbol22);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol18, CBT3.K0, "0,0,0,0", simpleSymbol24);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol18, CBT3.C1, CBT3.z, simpleSymbol22);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol18, CBT3.D1, "search", simpleSymbol24);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol18, CBT3.B0, Boolean.FALSE, simpleSymbol20);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol18, CBT3.M0, intNum5, simpleSymbol22);
                case 59:
                    Boolean bool3 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol26 = CBT3.n3;
                    SimpleSymbol simpleSymbol27 = CBT3.x1;
                    SimpleSymbol simpleSymbol28 = CBT3.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol26, simpleSymbol27, bool3, simpleSymbol28);
                    SimpleSymbol simpleSymbol29 = CBT3.y1;
                    IntNum intNum6 = CBT3.w2;
                    SimpleSymbol simpleSymbol30 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol26, simpleSymbol29, intNum6, simpleSymbol30);
                    SimpleSymbol simpleSymbol31 = CBT3.A1;
                    SimpleSymbol simpleSymbol32 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol26, simpleSymbol31, Component.TYPEFACE_GOOGLE_MATERIAL_DESIGN, simpleSymbol32);
                    SimpleSymbol simpleSymbol33 = CBT3.f1;
                    IntNum intNum7 = CBT3.B1;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol26, simpleSymbol33, intNum7, simpleSymbol30);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol26, CBT3.K0, "0,0,0,0", simpleSymbol32);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol26, CBT3.C1, CBT3.z, simpleSymbol30);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol26, CBT3.D1, "search", simpleSymbol32);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol26, CBT3.B0, Boolean.FALSE, simpleSymbol28);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol26, CBT3.M0, intNum7, simpleSymbol30);
                case 60:
                    SimpleSymbol simpleSymbol34 = CBT3.s3;
                    SimpleSymbol simpleSymbol35 = CBT3.T0;
                    IntNum intNum8 = CBT3.u3;
                    SimpleSymbol simpleSymbol36 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol34, simpleSymbol35, intNum8, simpleSymbol36);
                    Boolean bool4 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol37 = CBT3.x1;
                    SimpleSymbol simpleSymbol38 = CBT3.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol34, simpleSymbol37, bool4, simpleSymbol38);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol34, CBT3.y1, CBT3.z1, simpleSymbol36);
                    SimpleSymbol simpleSymbol39 = CBT3.A1;
                    SimpleSymbol simpleSymbol40 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol34, simpleSymbol39, Component.TYPEFACE_GOOGLE_MATERIAL_DESIGN, simpleSymbol40);
                    SimpleSymbol simpleSymbol41 = CBT3.f1;
                    IntNum intNum9 = CBT3.B1;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol34, simpleSymbol41, intNum9, simpleSymbol36);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol34, CBT3.K0, "0,0,0,0", simpleSymbol40);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol34, CBT3.C1, CBT3.z, simpleSymbol36);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol34, CBT3.D1, "first_page", simpleSymbol40);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol34, CBT3.o2, CBT3.v3, simpleSymbol36);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol34, CBT3.B0, Boolean.FALSE, simpleSymbol38);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol34, CBT3.M0, intNum9, simpleSymbol36);
                case 61:
                    SimpleSymbol simpleSymbol42 = CBT3.s3;
                    SimpleSymbol simpleSymbol43 = CBT3.T0;
                    IntNum intNum10 = CBT3.u3;
                    SimpleSymbol simpleSymbol44 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol42, simpleSymbol43, intNum10, simpleSymbol44);
                    Boolean bool5 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol45 = CBT3.x1;
                    SimpleSymbol simpleSymbol46 = CBT3.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol42, simpleSymbol45, bool5, simpleSymbol46);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol42, CBT3.y1, CBT3.z1, simpleSymbol44);
                    SimpleSymbol simpleSymbol47 = CBT3.A1;
                    SimpleSymbol simpleSymbol48 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol42, simpleSymbol47, Component.TYPEFACE_GOOGLE_MATERIAL_DESIGN, simpleSymbol48);
                    SimpleSymbol simpleSymbol49 = CBT3.f1;
                    IntNum intNum11 = CBT3.B1;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol42, simpleSymbol49, intNum11, simpleSymbol44);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol42, CBT3.K0, "0,0,0,0", simpleSymbol48);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol42, CBT3.C1, CBT3.z, simpleSymbol44);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol42, CBT3.D1, "first_page", simpleSymbol48);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol42, CBT3.o2, CBT3.v3, simpleSymbol44);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol42, CBT3.B0, Boolean.FALSE, simpleSymbol46);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol42, CBT3.M0, intNum11, simpleSymbol44);
                case 62:
                    return this.c.WEBBACKBUTTON$Click();
                case 63:
                    SimpleSymbol simpleSymbol50 = CBT3.C3;
                    SimpleSymbol simpleSymbol51 = CBT3.T0;
                    IntNum intNum12 = CBT3.E3;
                    SimpleSymbol simpleSymbol52 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol50, simpleSymbol51, intNum12, simpleSymbol52);
                    Boolean bool6 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol53 = CBT3.x1;
                    SimpleSymbol simpleSymbol54 = CBT3.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol50, simpleSymbol53, bool6, simpleSymbol54);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol50, CBT3.y1, CBT3.z1, simpleSymbol52);
                    SimpleSymbol simpleSymbol55 = CBT3.A1;
                    SimpleSymbol simpleSymbol56 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol50, simpleSymbol55, Component.TYPEFACE_GOOGLE_MATERIAL_DESIGN, simpleSymbol56);
                    SimpleSymbol simpleSymbol57 = CBT3.f1;
                    IntNum intNum13 = CBT3.B1;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol50, simpleSymbol57, intNum13, simpleSymbol52);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol50, CBT3.K0, "0,0,0,0", simpleSymbol56);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol50, CBT3.C1, CBT3.z, simpleSymbol52);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol50, CBT3.D1, "last_page", simpleSymbol56);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol50, CBT3.o2, CBT3.F3, simpleSymbol52);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol50, CBT3.B0, Boolean.FALSE, simpleSymbol54);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol50, CBT3.M0, intNum13, simpleSymbol52);
                case 64:
                    SimpleSymbol simpleSymbol58 = CBT3.C3;
                    SimpleSymbol simpleSymbol59 = CBT3.T0;
                    IntNum intNum14 = CBT3.E3;
                    SimpleSymbol simpleSymbol60 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol58, simpleSymbol59, intNum14, simpleSymbol60);
                    Boolean bool7 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol61 = CBT3.x1;
                    SimpleSymbol simpleSymbol62 = CBT3.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol58, simpleSymbol61, bool7, simpleSymbol62);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol58, CBT3.y1, CBT3.z1, simpleSymbol60);
                    SimpleSymbol simpleSymbol63 = CBT3.A1;
                    SimpleSymbol simpleSymbol64 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol58, simpleSymbol63, Component.TYPEFACE_GOOGLE_MATERIAL_DESIGN, simpleSymbol64);
                    SimpleSymbol simpleSymbol65 = CBT3.f1;
                    IntNum intNum15 = CBT3.B1;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol58, simpleSymbol65, intNum15, simpleSymbol60);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol58, CBT3.K0, "0,0,0,0", simpleSymbol64);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol58, CBT3.C1, CBT3.z, simpleSymbol60);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol58, CBT3.D1, "last_page", simpleSymbol64);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol58, CBT3.o2, CBT3.F3, simpleSymbol60);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol58, CBT3.B0, Boolean.FALSE, simpleSymbol62);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol58, CBT3.M0, intNum15, simpleSymbol60);
                case 65:
                    return this.c.WEBFORWARD$Click();
                case 66:
                    SimpleSymbol simpleSymbol66 = CBT3.N3;
                    SimpleSymbol simpleSymbol67 = CBT3.y;
                    IntNum intNum16 = CBT3.z;
                    SimpleSymbol simpleSymbol68 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol66, simpleSymbol67, intNum16, simpleSymbol68);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol66, CBT3.I0, CBT3.J0, simpleSymbol68);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol66, CBT3.T0, CBT3.P3, simpleSymbol68);
                    SimpleSymbol simpleSymbol69 = CBT3.f1;
                    IntNum intNum17 = CBT3.N0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol66, simpleSymbol69, intNum17, simpleSymbol68);
                    SimpleSymbol simpleSymbol70 = CBT3.K0;
                    SimpleSymbol simpleSymbol71 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol66, simpleSymbol70, "0,0,0,0", simpleSymbol71);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol66, CBT3.L0, "0,0,0,0", simpleSymbol71);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol66, CBT3.M0, intNum17, simpleSymbol68);
                case 67:
                    SimpleSymbol simpleSymbol72 = CBT3.N3;
                    SimpleSymbol simpleSymbol73 = CBT3.y;
                    IntNum intNum18 = CBT3.z;
                    SimpleSymbol simpleSymbol74 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol72, simpleSymbol73, intNum18, simpleSymbol74);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol72, CBT3.I0, CBT3.J0, simpleSymbol74);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol72, CBT3.T0, CBT3.P3, simpleSymbol74);
                    SimpleSymbol simpleSymbol75 = CBT3.f1;
                    IntNum intNum19 = CBT3.N0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol72, simpleSymbol75, intNum19, simpleSymbol74);
                    SimpleSymbol simpleSymbol76 = CBT3.K0;
                    SimpleSymbol simpleSymbol77 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol72, simpleSymbol76, "0,0,0,0", simpleSymbol77);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol72, CBT3.L0, "0,0,0,0", simpleSymbol77);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol72, CBT3.M0, intNum19, simpleSymbol74);
                case 68:
                    Boolean bool8 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol78 = CBT3.m;
                    SimpleSymbol simpleSymbol79 = CBT3.T3;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol79, CBT3.x1, bool8, simpleSymbol78);
                    SimpleSymbol simpleSymbol80 = CBT3.y1;
                    IntNum intNum20 = CBT3.V3;
                    SimpleSymbol simpleSymbol81 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol79, simpleSymbol80, intNum20, simpleSymbol81);
                    SimpleSymbol simpleSymbol82 = CBT3.A1;
                    SimpleSymbol simpleSymbol83 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol79, simpleSymbol82, "1", simpleSymbol83);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol79, CBT3.K0, "0,0,0,0", simpleSymbol83);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol79, CBT3.L0, "0,0,0,0", simpleSymbol83);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol79, CBT3.D1, "00:00", simpleSymbol83);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol79, CBT3.m2, CBT3.n2, simpleSymbol81);
                case 69:
                    Boolean bool9 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol84 = CBT3.m;
                    SimpleSymbol simpleSymbol85 = CBT3.T3;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol85, CBT3.x1, bool9, simpleSymbol84);
                    SimpleSymbol simpleSymbol86 = CBT3.y1;
                    IntNum intNum21 = CBT3.V3;
                    SimpleSymbol simpleSymbol87 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol85, simpleSymbol86, intNum21, simpleSymbol87);
                    SimpleSymbol simpleSymbol88 = CBT3.A1;
                    SimpleSymbol simpleSymbol89 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol85, simpleSymbol88, "1", simpleSymbol89);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol85, CBT3.K0, "0,0,0,0", simpleSymbol89);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol85, CBT3.L0, "0,0,0,0", simpleSymbol89);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol85, CBT3.D1, "00:00", simpleSymbol89);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol85, CBT3.m2, CBT3.n2, simpleSymbol87);
                case 70:
                    SimpleSymbol simpleSymbol90 = CBT3.Z3;
                    SimpleSymbol simpleSymbol91 = CBT3.y;
                    IntNum intNum22 = CBT3.z;
                    SimpleSymbol simpleSymbol92 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol90, simpleSymbol91, intNum22, simpleSymbol92);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol90, CBT3.I0, CBT3.J0, simpleSymbol92);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol90, CBT3.T0, CBT3.b4, simpleSymbol92);
                    SimpleSymbol simpleSymbol93 = CBT3.V1;
                    IntNum intNum23 = CBT3.o;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol90, simpleSymbol93, intNum23, simpleSymbol92);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol90, CBT3.W1, intNum23, simpleSymbol92);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol90, CBT3.Y1, intNum23, simpleSymbol92);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol90, CBT3.Z1, intNum23, simpleSymbol92);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol90, CBT3.a2, Boolean.FALSE, CBT3.m);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol90, CBT3.c4, CBT3.d4, simpleSymbol92);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol90, CBT3.f1, CBT3.B1, simpleSymbol92);
                    SimpleSymbol simpleSymbol94 = CBT3.K0;
                    SimpleSymbol simpleSymbol95 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol90, simpleSymbol94, "0,0,0,0", simpleSymbol95);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol90, CBT3.L0, "0,0,0,0", simpleSymbol95);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol90, CBT3.b2, CBT3.e4, simpleSymbol92);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol90, CBT3.M0, CBT3.f4, simpleSymbol92);
                case 71:
                    SimpleSymbol simpleSymbol96 = CBT3.Z3;
                    SimpleSymbol simpleSymbol97 = CBT3.y;
                    IntNum intNum24 = CBT3.z;
                    SimpleSymbol simpleSymbol98 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol96, simpleSymbol97, intNum24, simpleSymbol98);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol96, CBT3.I0, CBT3.J0, simpleSymbol98);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol96, CBT3.T0, CBT3.b4, simpleSymbol98);
                    SimpleSymbol simpleSymbol99 = CBT3.V1;
                    IntNum intNum25 = CBT3.o;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol96, simpleSymbol99, intNum25, simpleSymbol98);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol96, CBT3.W1, intNum25, simpleSymbol98);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol96, CBT3.Y1, intNum25, simpleSymbol98);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol96, CBT3.Z1, intNum25, simpleSymbol98);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol96, CBT3.a2, Boolean.FALSE, CBT3.m);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol96, CBT3.c4, CBT3.d4, simpleSymbol98);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol96, CBT3.f1, CBT3.B1, simpleSymbol98);
                    SimpleSymbol simpleSymbol100 = CBT3.K0;
                    SimpleSymbol simpleSymbol101 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol96, simpleSymbol100, "0,0,0,0", simpleSymbol101);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol96, CBT3.L0, "0,0,0,0", simpleSymbol101);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol96, CBT3.b2, CBT3.e4, simpleSymbol98);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol96, CBT3.M0, CBT3.f4, simpleSymbol98);
                case 72:
                    SimpleSymbol simpleSymbol102 = CBT3.j4;
                    SimpleSymbol simpleSymbol103 = CBT3.y;
                    IntNum intNum26 = CBT3.z;
                    SimpleSymbol simpleSymbol104 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol102, simpleSymbol103, intNum26, simpleSymbol104);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol102, CBT3.I0, CBT3.J0, simpleSymbol104);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol102, CBT3.T0, CBT3.l4, simpleSymbol104);
                    SimpleSymbol simpleSymbol105 = CBT3.f1;
                    IntNum intNum27 = CBT3.N0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol102, simpleSymbol105, intNum27, simpleSymbol104);
                    SimpleSymbol simpleSymbol106 = CBT3.K0;
                    SimpleSymbol simpleSymbol107 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol102, simpleSymbol106, "0,0,0,0", simpleSymbol107);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol102, CBT3.L0, "0,0,0,0", simpleSymbol107);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol102, CBT3.M0, intNum27, simpleSymbol104);
                case 73:
                    SimpleSymbol simpleSymbol108 = CBT3.j4;
                    SimpleSymbol simpleSymbol109 = CBT3.y;
                    IntNum intNum28 = CBT3.z;
                    SimpleSymbol simpleSymbol110 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol108, simpleSymbol109, intNum28, simpleSymbol110);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol108, CBT3.I0, CBT3.J0, simpleSymbol110);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol108, CBT3.T0, CBT3.l4, simpleSymbol110);
                    SimpleSymbol simpleSymbol111 = CBT3.f1;
                    IntNum intNum29 = CBT3.N0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol108, simpleSymbol111, intNum29, simpleSymbol110);
                    SimpleSymbol simpleSymbol112 = CBT3.K0;
                    SimpleSymbol simpleSymbol113 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol108, simpleSymbol112, "0,0,0,0", simpleSymbol113);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol108, CBT3.L0, "0,0,0,0", simpleSymbol113);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol108, CBT3.M0, intNum29, simpleSymbol110);
                case 74:
                    SimpleSymbol simpleSymbol114 = CBT3.p4;
                    SimpleSymbol simpleSymbol115 = CBT3.T0;
                    IntNum intNum30 = CBT3.r4;
                    SimpleSymbol simpleSymbol116 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol114, simpleSymbol115, intNum30, simpleSymbol116);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol114, CBT3.x1, Boolean.TRUE, CBT3.m);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol114, CBT3.y1, CBT3.X1, simpleSymbol116);
                    SimpleSymbol simpleSymbol117 = CBT3.A1;
                    SimpleSymbol simpleSymbol118 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol114, simpleSymbol117, Component.TYPEFACE_GOOGLE_MATERIAL_DESIGN, simpleSymbol118);
                    SimpleSymbol simpleSymbol119 = CBT3.f1;
                    IntNum intNum31 = CBT3.B1;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol114, simpleSymbol119, intNum31, simpleSymbol116);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol114, CBT3.K0, "0,0,0,0", simpleSymbol118);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol114, CBT3.C1, CBT3.z, simpleSymbol116);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol114, CBT3.D1, "refresh", simpleSymbol118);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol114, CBT3.o2, CBT3.s4, simpleSymbol116);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol114, CBT3.M0, intNum31, simpleSymbol116);
                case 75:
                    SimpleSymbol simpleSymbol120 = CBT3.p4;
                    SimpleSymbol simpleSymbol121 = CBT3.T0;
                    IntNum intNum32 = CBT3.r4;
                    SimpleSymbol simpleSymbol122 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol120, simpleSymbol121, intNum32, simpleSymbol122);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol120, CBT3.x1, Boolean.TRUE, CBT3.m);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol120, CBT3.y1, CBT3.X1, simpleSymbol122);
                    SimpleSymbol simpleSymbol123 = CBT3.A1;
                    SimpleSymbol simpleSymbol124 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol120, simpleSymbol123, Component.TYPEFACE_GOOGLE_MATERIAL_DESIGN, simpleSymbol124);
                    SimpleSymbol simpleSymbol125 = CBT3.f1;
                    IntNum intNum33 = CBT3.B1;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol120, simpleSymbol125, intNum33, simpleSymbol122);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol120, CBT3.K0, "0,0,0,0", simpleSymbol124);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol120, CBT3.C1, CBT3.z, simpleSymbol122);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol120, CBT3.D1, "refresh", simpleSymbol124);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol120, CBT3.o2, CBT3.s4, simpleSymbol122);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol120, CBT3.M0, intNum33, simpleSymbol122);
                case 76:
                    return this.c.ButtonREFRESH$Click();
                case 77:
                    SimpleSymbol simpleSymbol126 = CBT3.A4;
                    SimpleSymbol simpleSymbol127 = CBT3.T0;
                    IntNum intNum34 = CBT3.C4;
                    SimpleSymbol simpleSymbol128 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol126, simpleSymbol127, intNum34, simpleSymbol128);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol126, CBT3.x1, Boolean.TRUE, CBT3.m);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol126, CBT3.y1, CBT3.X1, simpleSymbol128);
                    SimpleSymbol simpleSymbol129 = CBT3.A1;
                    SimpleSymbol simpleSymbol130 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol126, simpleSymbol129, Component.TYPEFACE_GOOGLE_MATERIAL_DESIGN, simpleSymbol130);
                    SimpleSymbol simpleSymbol131 = CBT3.f1;
                    IntNum intNum35 = CBT3.B1;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol126, simpleSymbol131, intNum35, simpleSymbol128);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol126, CBT3.K0, "0,0,0,0", simpleSymbol130);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol126, CBT3.C1, CBT3.z, simpleSymbol128);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol126, CBT3.D1, "exit_to_app", simpleSymbol130);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol126, CBT3.o2, CBT3.D4, simpleSymbol128);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol126, CBT3.M0, intNum35, simpleSymbol128);
                case 78:
                    SimpleSymbol simpleSymbol132 = CBT3.A4;
                    SimpleSymbol simpleSymbol133 = CBT3.T0;
                    IntNum intNum36 = CBT3.C4;
                    SimpleSymbol simpleSymbol134 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol132, simpleSymbol133, intNum36, simpleSymbol134);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol132, CBT3.x1, Boolean.TRUE, CBT3.m);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol132, CBT3.y1, CBT3.X1, simpleSymbol134);
                    SimpleSymbol simpleSymbol135 = CBT3.A1;
                    SimpleSymbol simpleSymbol136 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol132, simpleSymbol135, Component.TYPEFACE_GOOGLE_MATERIAL_DESIGN, simpleSymbol136);
                    SimpleSymbol simpleSymbol137 = CBT3.f1;
                    IntNum intNum37 = CBT3.B1;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol132, simpleSymbol137, intNum37, simpleSymbol134);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol132, CBT3.K0, "0,0,0,0", simpleSymbol136);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol132, CBT3.C1, CBT3.z, simpleSymbol134);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol132, CBT3.D1, "exit_to_app", simpleSymbol136);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol132, CBT3.o2, CBT3.D4, simpleSymbol134);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol132, CBT3.M0, intNum37, simpleSymbol134);
                case 79:
                    return this.c.ButtonEXIT$Click();
                case 80:
                    SimpleSymbol simpleSymbol138 = CBT3.K4;
                    SimpleSymbol simpleSymbol139 = CBT3.y;
                    IntNum intNum38 = CBT3.z;
                    SimpleSymbol simpleSymbol140 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol138, simpleSymbol139, intNum38, simpleSymbol140);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol138, CBT3.I0, CBT3.J0, simpleSymbol140);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol138, CBT3.T0, CBT3.M4, simpleSymbol140);
                    SimpleSymbol simpleSymbol141 = CBT3.f1;
                    IntNum intNum39 = CBT3.N0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol138, simpleSymbol141, intNum39, simpleSymbol140);
                    SimpleSymbol simpleSymbol142 = CBT3.K0;
                    SimpleSymbol simpleSymbol143 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol138, simpleSymbol142, "0,0,0,0", simpleSymbol143);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol138, CBT3.L0, "0,0,0,0", simpleSymbol143);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol138, CBT3.M0, intNum39, simpleSymbol140);
                case 81:
                    SimpleSymbol simpleSymbol144 = CBT3.K4;
                    SimpleSymbol simpleSymbol145 = CBT3.y;
                    IntNum intNum40 = CBT3.z;
                    SimpleSymbol simpleSymbol146 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol144, simpleSymbol145, intNum40, simpleSymbol146);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol144, CBT3.I0, CBT3.J0, simpleSymbol146);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol144, CBT3.T0, CBT3.M4, simpleSymbol146);
                    SimpleSymbol simpleSymbol147 = CBT3.f1;
                    IntNum intNum41 = CBT3.N0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol144, simpleSymbol147, intNum41, simpleSymbol146);
                    SimpleSymbol simpleSymbol148 = CBT3.K0;
                    SimpleSymbol simpleSymbol149 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol144, simpleSymbol148, "0,0,0,0", simpleSymbol149);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol144, CBT3.L0, "0,0,0,0", simpleSymbol149);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol144, CBT3.M0, intNum41, simpleSymbol146);
                case 82:
                    Boolean bool10 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol150 = CBT3.Q4;
                    SimpleSymbol simpleSymbol151 = CBT3.x1;
                    SimpleSymbol simpleSymbol152 = CBT3.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol150, simpleSymbol151, bool10, simpleSymbol152);
                    SimpleSymbol simpleSymbol153 = CBT3.y1;
                    IntNum intNum42 = CBT3.X1;
                    SimpleSymbol simpleSymbol154 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol150, simpleSymbol153, intNum42, simpleSymbol154);
                    SimpleSymbol simpleSymbol155 = CBT3.A1;
                    SimpleSymbol simpleSymbol156 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol150, simpleSymbol155, "1", simpleSymbol156);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol150, CBT3.K0, "0,0,0,0", simpleSymbol156);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol150, CBT3.L0, "0,0,0,0", simpleSymbol156);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol150, CBT3.D1, "BATERAI:  ", simpleSymbol156);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol150, CBT3.m2, CBT3.n2, simpleSymbol154);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol150, CBT3.B0, Boolean.FALSE, simpleSymbol152);
                case 83:
                    Boolean bool11 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol157 = CBT3.Q4;
                    SimpleSymbol simpleSymbol158 = CBT3.x1;
                    SimpleSymbol simpleSymbol159 = CBT3.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol157, simpleSymbol158, bool11, simpleSymbol159);
                    SimpleSymbol simpleSymbol160 = CBT3.y1;
                    IntNum intNum43 = CBT3.X1;
                    SimpleSymbol simpleSymbol161 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol157, simpleSymbol160, intNum43, simpleSymbol161);
                    SimpleSymbol simpleSymbol162 = CBT3.A1;
                    SimpleSymbol simpleSymbol163 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol157, simpleSymbol162, "1", simpleSymbol163);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol157, CBT3.K0, "0,0,0,0", simpleSymbol163);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol157, CBT3.L0, "0,0,0,0", simpleSymbol163);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol157, CBT3.D1, "BATERAI:  ", simpleSymbol163);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol157, CBT3.m2, CBT3.n2, simpleSymbol161);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol157, CBT3.B0, Boolean.FALSE, simpleSymbol159);
                case 84:
                    Boolean bool12 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol164 = CBT3.m;
                    SimpleSymbol simpleSymbol165 = CBT3.V4;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol165, CBT3.x1, bool12, simpleSymbol164);
                    SimpleSymbol simpleSymbol166 = CBT3.y1;
                    IntNum intNum44 = CBT3.V3;
                    SimpleSymbol simpleSymbol167 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol165, simpleSymbol166, intNum44, simpleSymbol167);
                    SimpleSymbol simpleSymbol168 = CBT3.A1;
                    SimpleSymbol simpleSymbol169 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol165, simpleSymbol168, "1", simpleSymbol169);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol165, CBT3.K0, "0,0,0,0", simpleSymbol169);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol165, CBT3.L0, "0,0,0,0", simpleSymbol169);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol165, CBT3.D1, "???", simpleSymbol169);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol165, CBT3.m2, CBT3.n2, simpleSymbol167);
                case 85:
                    Boolean bool13 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol170 = CBT3.m;
                    SimpleSymbol simpleSymbol171 = CBT3.V4;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol171, CBT3.x1, bool13, simpleSymbol170);
                    SimpleSymbol simpleSymbol172 = CBT3.y1;
                    IntNum intNum45 = CBT3.V3;
                    SimpleSymbol simpleSymbol173 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol171, simpleSymbol172, intNum45, simpleSymbol173);
                    SimpleSymbol simpleSymbol174 = CBT3.A1;
                    SimpleSymbol simpleSymbol175 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol171, simpleSymbol174, "1", simpleSymbol175);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol171, CBT3.K0, "0,0,0,0", simpleSymbol175);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol171, CBT3.L0, "0,0,0,0", simpleSymbol175);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol171, CBT3.D1, "???", simpleSymbol175);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol171, CBT3.m2, CBT3.n2, simpleSymbol173);
                case 86:
                    Boolean bool14 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol176 = CBT3.m;
                    SimpleSymbol simpleSymbol177 = CBT3.a5;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol177, CBT3.x1, bool14, simpleSymbol176);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol177, CBT3.y1, CBT3.V3, CBT3.x);
                    SimpleSymbol simpleSymbol178 = CBT3.A1;
                    SimpleSymbol simpleSymbol179 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol177, simpleSymbol178, "1", simpleSymbol179);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol177, CBT3.K0, "0,0,0,0", simpleSymbol179);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol177, CBT3.L0, "0,0,0,0", simpleSymbol179);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol177, CBT3.D1, "%", simpleSymbol179);
                case 87:
                    Boolean bool15 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol180 = CBT3.m;
                    SimpleSymbol simpleSymbol181 = CBT3.a5;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol181, CBT3.x1, bool15, simpleSymbol180);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol181, CBT3.y1, CBT3.V3, CBT3.x);
                    SimpleSymbol simpleSymbol182 = CBT3.A1;
                    SimpleSymbol simpleSymbol183 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol181, simpleSymbol182, "1", simpleSymbol183);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol181, CBT3.K0, "0,0,0,0", simpleSymbol183);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol181, CBT3.L0, "0,0,0,0", simpleSymbol183);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol181, CBT3.D1, "%", simpleSymbol183);
                case 88:
                    SimpleSymbol simpleSymbol184 = CBT3.N1;
                    SimpleSymbol simpleSymbol185 = CBT3.K0;
                    SimpleSymbol simpleSymbol186 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol184, simpleSymbol185, "0,0,0,0", simpleSymbol186);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol184, CBT3.L0, "0,0,0,0", simpleSymbol186);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol184, CBT3.D1, "false", simpleSymbol186);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol184, CBT3.B0, Boolean.FALSE, CBT3.m);
                case 89:
                    SimpleSymbol simpleSymbol187 = CBT3.N1;
                    SimpleSymbol simpleSymbol188 = CBT3.K0;
                    SimpleSymbol simpleSymbol189 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol187, simpleSymbol188, "0,0,0,0", simpleSymbol189);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol187, CBT3.L0, "0,0,0,0", simpleSymbol189);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol187, CBT3.D1, "false", simpleSymbol189);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol187, CBT3.B0, Boolean.FALSE, CBT3.m);
                case 90:
                    SimpleSymbol simpleSymbol190 = CBT3.j5;
                    SimpleSymbol simpleSymbol191 = CBT3.K0;
                    SimpleSymbol simpleSymbol192 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol190, simpleSymbol191, "0,0,0,0", simpleSymbol192);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol190, CBT3.L0, "0,0,0,0", simpleSymbol192);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol190, CBT3.D1, "Text for Label6", simpleSymbol192);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol190, CBT3.B0, Boolean.FALSE, CBT3.m);
                case 91:
                    SimpleSymbol simpleSymbol193 = CBT3.j5;
                    SimpleSymbol simpleSymbol194 = CBT3.K0;
                    SimpleSymbol simpleSymbol195 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol193, simpleSymbol194, "0,0,0,0", simpleSymbol195);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol193, CBT3.L0, "0,0,0,0", simpleSymbol195);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol193, CBT3.D1, "Text for Label6", simpleSymbol195);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol193, CBT3.B0, Boolean.FALSE, CBT3.m);
                case 92:
                    SimpleSymbol simpleSymbol196 = CBT3.h0;
                    SimpleSymbol simpleSymbol197 = CBT3.f1;
                    IntNum intNum46 = CBT3.N0;
                    SimpleSymbol simpleSymbol198 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol196, simpleSymbol197, intNum46, simpleSymbol198);
                    SimpleSymbol simpleSymbol199 = CBT3.K0;
                    SimpleSymbol simpleSymbol200 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol196, simpleSymbol199, "0,0,0,0", simpleSymbol200);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol196, CBT3.L0, "0,0,0,0", simpleSymbol200);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol196, CBT3.M0, intNum46, simpleSymbol198);
                case 93:
                    SimpleSymbol simpleSymbol201 = CBT3.h0;
                    SimpleSymbol simpleSymbol202 = CBT3.f1;
                    IntNum intNum47 = CBT3.N0;
                    SimpleSymbol simpleSymbol203 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol201, simpleSymbol202, intNum47, simpleSymbol203);
                    SimpleSymbol simpleSymbol204 = CBT3.K0;
                    SimpleSymbol simpleSymbol205 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol201, simpleSymbol204, "0,0,0,0", simpleSymbol205);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol201, CBT3.L0, "0,0,0,0", simpleSymbol205);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol201, CBT3.M0, intNum47, simpleSymbol203);
                case 94:
                case 95:
                case 96:
                case 142:
                case 153:
                case 154:
                default:
                    return super.apply0(moduleMethod);
                case 97:
                    SimpleSymbol simpleSymbol206 = CBT3.Q5;
                    SimpleSymbol simpleSymbol207 = CBT3.K0;
                    SimpleSymbol simpleSymbol208 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol206, simpleSymbol207, "0,0,0,0", simpleSymbol208);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol206, CBT3.L0, "0,0,0,0", simpleSymbol208);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol206, CBT3.B0, Boolean.FALSE, CBT3.m);
                case 98:
                    SimpleSymbol simpleSymbol209 = CBT3.Q5;
                    SimpleSymbol simpleSymbol210 = CBT3.K0;
                    SimpleSymbol simpleSymbol211 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol209, simpleSymbol210, "0,0,0,0", simpleSymbol211);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol209, CBT3.L0, "0,0,0,0", simpleSymbol211);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol209, CBT3.B0, Boolean.FALSE, CBT3.m);
                case 99:
                    SimpleSymbol simpleSymbol212 = CBT3.V5;
                    SimpleSymbol simpleSymbol213 = CBT3.K0;
                    SimpleSymbol simpleSymbol214 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol212, simpleSymbol213, "0,0,0,0", simpleSymbol214);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol212, CBT3.L0, "0,0,0,0", simpleSymbol214);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol212, CBT3.B0, Boolean.FALSE, CBT3.m);
                case 100:
                    SimpleSymbol simpleSymbol215 = CBT3.V5;
                    SimpleSymbol simpleSymbol216 = CBT3.K0;
                    SimpleSymbol simpleSymbol217 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol215, simpleSymbol216, "0,0,0,0", simpleSymbol217);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol215, CBT3.L0, "0,0,0,0", simpleSymbol217);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol215, CBT3.B0, Boolean.FALSE, CBT3.m);
                case 101:
                    SimpleSymbol simpleSymbol218 = CBT3.a6;
                    SimpleSymbol simpleSymbol219 = CBT3.y;
                    IntNum intNum48 = CBT3.z;
                    SimpleSymbol simpleSymbol220 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol218, simpleSymbol219, intNum48, simpleSymbol220);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol218, CBT3.I0, CBT3.J0, simpleSymbol220);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol218, CBT3.f1, CBT3.c6, simpleSymbol220);
                    SimpleSymbol simpleSymbol221 = CBT3.K0;
                    SimpleSymbol simpleSymbol222 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol218, simpleSymbol221, "0,0,0,0", simpleSymbol222);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol218, CBT3.L0, "0,0,0,0", simpleSymbol222);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol218, CBT3.B0, Boolean.FALSE, CBT3.m);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol218, CBT3.M0, CBT3.N0, simpleSymbol220);
                case 102:
                    SimpleSymbol simpleSymbol223 = CBT3.a6;
                    SimpleSymbol simpleSymbol224 = CBT3.y;
                    IntNum intNum49 = CBT3.z;
                    SimpleSymbol simpleSymbol225 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol223, simpleSymbol224, intNum49, simpleSymbol225);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol223, CBT3.I0, CBT3.J0, simpleSymbol225);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol223, CBT3.f1, CBT3.c6, simpleSymbol225);
                    SimpleSymbol simpleSymbol226 = CBT3.K0;
                    SimpleSymbol simpleSymbol227 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol223, simpleSymbol226, "0,0,0,0", simpleSymbol227);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol223, CBT3.L0, "0,0,0,0", simpleSymbol227);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol223, CBT3.B0, Boolean.FALSE, CBT3.m);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol223, CBT3.M0, CBT3.N0, simpleSymbol225);
                case 103:
                    SimpleSymbol simpleSymbol228 = CBT3.g6;
                    SimpleSymbol simpleSymbol229 = CBT3.f1;
                    IntNum intNum50 = CBT3.N0;
                    SimpleSymbol simpleSymbol230 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol228, simpleSymbol229, intNum50, simpleSymbol230);
                    SimpleSymbol simpleSymbol231 = CBT3.K0;
                    SimpleSymbol simpleSymbol232 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol228, simpleSymbol231, "0,0,0,0", simpleSymbol232);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol228, CBT3.L0, "0,0,0,0", simpleSymbol232);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol228, CBT3.M0, CBT3.X1, simpleSymbol230);
                case 104:
                    SimpleSymbol simpleSymbol233 = CBT3.g6;
                    SimpleSymbol simpleSymbol234 = CBT3.f1;
                    IntNum intNum51 = CBT3.N0;
                    SimpleSymbol simpleSymbol235 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol233, simpleSymbol234, intNum51, simpleSymbol235);
                    SimpleSymbol simpleSymbol236 = CBT3.K0;
                    SimpleSymbol simpleSymbol237 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol233, simpleSymbol236, "0,0,0,0", simpleSymbol237);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol233, CBT3.L0, "0,0,0,0", simpleSymbol237);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol233, CBT3.M0, CBT3.X1, simpleSymbol235);
                case 105:
                    SimpleSymbol simpleSymbol238 = CBT3.w0;
                    SimpleSymbol simpleSymbol239 = CBT3.f1;
                    IntNum intNum52 = CBT3.m6;
                    SimpleSymbol simpleSymbol240 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol238, simpleSymbol239, intNum52, simpleSymbol240);
                    SimpleSymbol simpleSymbol241 = CBT3.K0;
                    SimpleSymbol simpleSymbol242 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol238, simpleSymbol241, "0,0,0,0", simpleSymbol242);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol238, CBT3.L0, "0,0,0,0", simpleSymbol242);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol238, CBT3.M0, CBT3.e4, simpleSymbol240);
                case 106:
                    SimpleSymbol simpleSymbol243 = CBT3.w0;
                    SimpleSymbol simpleSymbol244 = CBT3.f1;
                    IntNum intNum53 = CBT3.m6;
                    SimpleSymbol simpleSymbol245 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol243, simpleSymbol244, intNum53, simpleSymbol245);
                    SimpleSymbol simpleSymbol246 = CBT3.K0;
                    SimpleSymbol simpleSymbol247 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol243, simpleSymbol246, "0,0,0,0", simpleSymbol247);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol243, CBT3.L0, "0,0,0,0", simpleSymbol247);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol243, CBT3.M0, CBT3.e4, simpleSymbol245);
                case 107:
                    SimpleSymbol simpleSymbol248 = CBT3.q6;
                    SimpleSymbol simpleSymbol249 = CBT3.f1;
                    IntNum intNum54 = CBT3.N0;
                    SimpleSymbol simpleSymbol250 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol248, simpleSymbol249, intNum54, simpleSymbol250);
                    SimpleSymbol simpleSymbol251 = CBT3.K0;
                    SimpleSymbol simpleSymbol252 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol248, simpleSymbol251, "0,0,0,0", simpleSymbol252);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol248, CBT3.L0, "0,0,0,0", simpleSymbol252);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol248, CBT3.M0, CBT3.X1, simpleSymbol250);
                case 108:
                    SimpleSymbol simpleSymbol253 = CBT3.q6;
                    SimpleSymbol simpleSymbol254 = CBT3.f1;
                    IntNum intNum55 = CBT3.N0;
                    SimpleSymbol simpleSymbol255 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol253, simpleSymbol254, intNum55, simpleSymbol255);
                    SimpleSymbol simpleSymbol256 = CBT3.K0;
                    SimpleSymbol simpleSymbol257 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol253, simpleSymbol256, "0,0,0,0", simpleSymbol257);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol253, CBT3.L0, "0,0,0,0", simpleSymbol257);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol253, CBT3.M0, CBT3.X1, simpleSymbol255);
                case 109:
                    SimpleSymbol simpleSymbol258 = CBT3.v6;
                    SimpleSymbol simpleSymbol259 = CBT3.T0;
                    IntNum intNum56 = CBT3.x6;
                    SimpleSymbol simpleSymbol260 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol258, simpleSymbol259, intNum56, simpleSymbol260);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol258, CBT3.f1, CBT3.y6, simpleSymbol260);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol258, CBT3.K0, "0,0,0,0", CBT3.B);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol258, CBT3.M0, CBT3.N0, simpleSymbol260);
                case 110:
                    SimpleSymbol simpleSymbol261 = CBT3.v6;
                    SimpleSymbol simpleSymbol262 = CBT3.T0;
                    IntNum intNum57 = CBT3.x6;
                    SimpleSymbol simpleSymbol263 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol261, simpleSymbol262, intNum57, simpleSymbol263);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol261, CBT3.f1, CBT3.y6, simpleSymbol263);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol261, CBT3.K0, "0,0,0,0", CBT3.B);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol261, CBT3.M0, CBT3.N0, simpleSymbol263);
                case 111:
                    return this.c.ButtonBAWAH$GotFocus();
                case 112:
                    return this.c.ButtonBAWAH$TouchDown();
                case 113:
                    return this.c.ButtonBAWAH$TouchUp();
                case 114:
                    SimpleSymbol simpleSymbol264 = CBT3.y5;
                    SimpleSymbol simpleSymbol265 = CBT3.y;
                    IntNum intNum58 = CBT3.z;
                    SimpleSymbol simpleSymbol266 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol264, simpleSymbol265, intNum58, simpleSymbol266);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol264, CBT3.I0, CBT3.J0, simpleSymbol266);
                    SimpleSymbol simpleSymbol267 = CBT3.f1;
                    IntNum intNum59 = CBT3.N0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol264, simpleSymbol267, intNum59, simpleSymbol266);
                    SimpleSymbol simpleSymbol268 = CBT3.K0;
                    SimpleSymbol simpleSymbol269 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol264, simpleSymbol268, "0,0,0,0", simpleSymbol269);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol264, CBT3.L0, "0,0,0,0", simpleSymbol269);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol264, CBT3.B0, Boolean.FALSE, CBT3.m);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol264, CBT3.M0, intNum59, simpleSymbol266);
                case 115:
                    SimpleSymbol simpleSymbol270 = CBT3.y5;
                    SimpleSymbol simpleSymbol271 = CBT3.y;
                    IntNum intNum60 = CBT3.z;
                    SimpleSymbol simpleSymbol272 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol270, simpleSymbol271, intNum60, simpleSymbol272);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol270, CBT3.I0, CBT3.J0, simpleSymbol272);
                    SimpleSymbol simpleSymbol273 = CBT3.f1;
                    IntNum intNum61 = CBT3.N0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol270, simpleSymbol273, intNum61, simpleSymbol272);
                    SimpleSymbol simpleSymbol274 = CBT3.K0;
                    SimpleSymbol simpleSymbol275 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol270, simpleSymbol274, "0,0,0,0", simpleSymbol275);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol270, CBT3.L0, "0,0,0,0", simpleSymbol275);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol270, CBT3.B0, Boolean.FALSE, CBT3.m);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol270, CBT3.M0, intNum61, simpleSymbol272);
                case 116:
                    Boolean bool16 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol276 = CBT3.m;
                    SimpleSymbol simpleSymbol277 = CBT3.S6;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol277, CBT3.x1, bool16, simpleSymbol276);
                    SimpleSymbol simpleSymbol278 = CBT3.y1;
                    IntNum intNum62 = CBT3.c2;
                    SimpleSymbol simpleSymbol279 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol277, simpleSymbol278, intNum62, simpleSymbol279);
                    SimpleSymbol simpleSymbol280 = CBT3.A1;
                    SimpleSymbol simpleSymbol281 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol277, simpleSymbol280, "1", simpleSymbol281);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol277, CBT3.K0, "0,0,0,0", simpleSymbol281);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol277, CBT3.L0, "0,0,0,0", simpleSymbol281);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol277, CBT3.D1, "Terjadi kesalahan. Mungkin koneksi jaringan tidak stabil, server down, salah link ujian, tidak terhubung ke server. ", simpleSymbol281);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol277, CBT3.m2, CBT3.n2, simpleSymbol279);
                case 117:
                    Boolean bool17 = Boolean.TRUE;
                    SimpleSymbol simpleSymbol282 = CBT3.m;
                    SimpleSymbol simpleSymbol283 = CBT3.S6;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol283, CBT3.x1, bool17, simpleSymbol282);
                    SimpleSymbol simpleSymbol284 = CBT3.y1;
                    IntNum intNum63 = CBT3.c2;
                    SimpleSymbol simpleSymbol285 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol283, simpleSymbol284, intNum63, simpleSymbol285);
                    SimpleSymbol simpleSymbol286 = CBT3.A1;
                    SimpleSymbol simpleSymbol287 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol283, simpleSymbol286, "1", simpleSymbol287);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol283, CBT3.K0, "0,0,0,0", simpleSymbol287);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol283, CBT3.L0, "0,0,0,0", simpleSymbol287);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol283, CBT3.D1, "Terjadi kesalahan. Mungkin koneksi jaringan tidak stabil, server down, salah link ujian, tidak terhubung ke server. ", simpleSymbol287);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol283, CBT3.m2, CBT3.n2, simpleSymbol285);
                case 118:
                    SimpleSymbol simpleSymbol288 = CBT3.X6;
                    SimpleSymbol simpleSymbol289 = CBT3.f1;
                    IntNum intNum64 = CBT3.Z6;
                    SimpleSymbol simpleSymbol290 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol288, simpleSymbol289, intNum64, simpleSymbol290);
                    SimpleSymbol simpleSymbol291 = CBT3.K0;
                    SimpleSymbol simpleSymbol292 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol288, simpleSymbol291, "0,0,0,0", simpleSymbol292);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol288, CBT3.L0, "0,0,0,0", simpleSymbol292);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol288, CBT3.M0, CBT3.N0, simpleSymbol290);
                case 119:
                    SimpleSymbol simpleSymbol293 = CBT3.X6;
                    SimpleSymbol simpleSymbol294 = CBT3.f1;
                    IntNum intNum65 = CBT3.Z6;
                    SimpleSymbol simpleSymbol295 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol293, simpleSymbol294, intNum65, simpleSymbol295);
                    SimpleSymbol simpleSymbol296 = CBT3.K0;
                    SimpleSymbol simpleSymbol297 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol293, simpleSymbol296, "0,0,0,0", simpleSymbol297);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol293, CBT3.L0, "0,0,0,0", simpleSymbol297);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol293, CBT3.M0, CBT3.N0, simpleSymbol295);
                case 120:
                    SimpleSymbol simpleSymbol298 = CBT3.d7;
                    SimpleSymbol simpleSymbol299 = CBT3.f7;
                    IntNum intNum66 = CBT3.g7;
                    SimpleSymbol simpleSymbol300 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol298, simpleSymbol299, intNum66, simpleSymbol300);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol298, CBT3.f1, CBT3.h7, simpleSymbol300);
                    SimpleSymbol simpleSymbol301 = CBT3.K0;
                    SimpleSymbol simpleSymbol302 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol298, simpleSymbol301, "0,0,0,0", simpleSymbol302);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol298, CBT3.L0, "0,0,0,0", simpleSymbol302);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol298, CBT3.i7, Boolean.FALSE, CBT3.m);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol298, CBT3.j7, "animation_lndeobf2.json", simpleSymbol302);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol298, CBT3.M0, CBT3.N0, simpleSymbol300);
                case 121:
                    SimpleSymbol simpleSymbol303 = CBT3.d7;
                    SimpleSymbol simpleSymbol304 = CBT3.f7;
                    IntNum intNum67 = CBT3.g7;
                    SimpleSymbol simpleSymbol305 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol303, simpleSymbol304, intNum67, simpleSymbol305);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol303, CBT3.f1, CBT3.h7, simpleSymbol305);
                    SimpleSymbol simpleSymbol306 = CBT3.K0;
                    SimpleSymbol simpleSymbol307 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol303, simpleSymbol306, "0,0,0,0", simpleSymbol307);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol303, CBT3.L0, "0,0,0,0", simpleSymbol307);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol303, CBT3.i7, Boolean.FALSE, CBT3.m);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol303, CBT3.j7, "animation_lndeobf2.json", simpleSymbol307);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol303, CBT3.M0, CBT3.N0, simpleSymbol305);
                case 122:
                    SimpleSymbol simpleSymbol308 = CBT3.n7;
                    SimpleSymbol simpleSymbol309 = CBT3.T0;
                    IntNum intNum68 = CBT3.p7;
                    SimpleSymbol simpleSymbol310 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol308, simpleSymbol309, intNum68, simpleSymbol310);
                    SimpleSymbol simpleSymbol311 = CBT3.K0;
                    SimpleSymbol simpleSymbol312 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol308, simpleSymbol311, "0,0,0,0", simpleSymbol312);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol308, CBT3.D1, "COBA LAGI", simpleSymbol312);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol308, CBT3.o2, CBT3.q7, simpleSymbol310);
                case 123:
                    SimpleSymbol simpleSymbol313 = CBT3.n7;
                    SimpleSymbol simpleSymbol314 = CBT3.T0;
                    IntNum intNum69 = CBT3.p7;
                    SimpleSymbol simpleSymbol315 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol313, simpleSymbol314, intNum69, simpleSymbol315);
                    SimpleSymbol simpleSymbol316 = CBT3.K0;
                    SimpleSymbol simpleSymbol317 = CBT3.B;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol313, simpleSymbol316, "0,0,0,0", simpleSymbol317);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol313, CBT3.D1, "COBA LAGI", simpleSymbol317);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol313, CBT3.o2, CBT3.q7, simpleSymbol315);
                case 124:
                    return this.c.KELUAR$Click();
                case 125:
                    SimpleSymbol simpleSymbol318 = CBT3.B;
                    SimpleSymbol simpleSymbol319 = CBT3.T;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol319, CBT3.j7, "alert.mp3", simpleSymbol318);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol319, CBT3.w7, CBT3.x7, CBT3.x);
                case 126:
                    SimpleSymbol simpleSymbol320 = CBT3.B;
                    SimpleSymbol simpleSymbol321 = CBT3.T;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol321, CBT3.j7, "alert.mp3", simpleSymbol320);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol321, CBT3.w7, CBT3.x7, CBT3.x);
                case WorkQueueKt.MASK /* 127 */:
                    SimpleSymbol simpleSymbol322 = CBT3.G2;
                    SimpleSymbol simpleSymbol323 = CBT3.T0;
                    IntNum intNum70 = CBT3.E7;
                    SimpleSymbol simpleSymbol324 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol322, simpleSymbol323, intNum70, simpleSymbol324);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol322, CBT3.F7, CBT3.o, simpleSymbol324);
                case 128:
                    SimpleSymbol simpleSymbol325 = CBT3.G2;
                    SimpleSymbol simpleSymbol326 = CBT3.T0;
                    IntNum intNum71 = CBT3.E7;
                    SimpleSymbol simpleSymbol327 = CBT3.x;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol325, simpleSymbol326, intNum71, simpleSymbol327);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol325, CBT3.F7, CBT3.o, simpleSymbol327);
                case 129:
                    Boolean bool18 = Boolean.FALSE;
                    SimpleSymbol simpleSymbol328 = CBT3.m;
                    SimpleSymbol simpleSymbol329 = CBT3.z0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol329, CBT3.K7, bool18, simpleSymbol328);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol329, CBT3.L7, CBT3.M7, CBT3.x);
                case 130:
                    Boolean bool19 = Boolean.FALSE;
                    SimpleSymbol simpleSymbol330 = CBT3.m;
                    SimpleSymbol simpleSymbol331 = CBT3.z0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol331, CBT3.K7, bool19, simpleSymbol330);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol331, CBT3.L7, CBT3.M7, CBT3.x);
                case 131:
                    return this.c.Clock1$Timer();
                case 132:
                    return runtime.setAndCoerceProperty$Ex(CBT3.z2, CBT3.U7, "Tiny_DBPASSKELUAR", CBT3.B);
                case 133:
                    return runtime.setAndCoerceProperty$Ex(CBT3.z2, CBT3.U7, "Tiny_DBPASSKELUAR", CBT3.B);
                case 134:
                    return runtime.setAndCoerceProperty$Ex(CBT3.d8, CBT3.K7, Boolean.FALSE, CBT3.m);
                case 135:
                    return runtime.setAndCoerceProperty$Ex(CBT3.d8, CBT3.K7, Boolean.FALSE, CBT3.m);
                case 136:
                    return this.c.ClockJAM$Timer();
                case 137:
                    return runtime.setAndCoerceProperty$Ex(CBT3.u0, CBT3.U7, "Tiny_DBUSERAGENT", CBT3.B);
                case 138:
                    return runtime.setAndCoerceProperty$Ex(CBT3.u0, CBT3.U7, "Tiny_DBUSERAGENT", CBT3.B);
                case 139:
                    Boolean bool20 = Boolean.FALSE;
                    SimpleSymbol simpleSymbol332 = CBT3.m;
                    SimpleSymbol simpleSymbol333 = CBT3.r0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol333, CBT3.K7, bool20, simpleSymbol332);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol333, CBT3.L7, CBT3.t8, CBT3.x);
                case 140:
                    Boolean bool21 = Boolean.FALSE;
                    SimpleSymbol simpleSymbol334 = CBT3.m;
                    SimpleSymbol simpleSymbol335 = CBT3.r0;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol335, CBT3.K7, bool21, simpleSymbol334);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol335, CBT3.L7, CBT3.t8, CBT3.x);
                case 141:
                    return this.c.CEKTASKLOCK$Timer();
                case 143:
                    return runtime.setAndCoerceProperty$Ex(CBT3.e9, CBT3.U7, "Tiny_LINK", CBT3.B);
                case 144:
                    return runtime.setAndCoerceProperty$Ex(CBT3.e9, CBT3.U7, "Tiny_LINK", CBT3.B);
                case 145:
                    return runtime.setAndCoerceProperty$Ex(CBT3.X, CBT3.U7, "Tiny_DBVOLUME", CBT3.B);
                case 146:
                    return runtime.setAndCoerceProperty$Ex(CBT3.X, CBT3.U7, "Tiny_DBVOLUME", CBT3.B);
                case 147:
                    Boolean bool22 = Boolean.FALSE;
                    SimpleSymbol simpleSymbol336 = CBT3.r9;
                    SimpleSymbol simpleSymbol337 = CBT3.K7;
                    SimpleSymbol simpleSymbol338 = CBT3.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol336, simpleSymbol337, bool22, simpleSymbol338);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol336, CBT3.s0, bool22, simpleSymbol338);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol336, CBT3.L7, CBT3.t9, CBT3.x);
                case 148:
                    Boolean bool23 = Boolean.FALSE;
                    SimpleSymbol simpleSymbol339 = CBT3.r9;
                    SimpleSymbol simpleSymbol340 = CBT3.K7;
                    SimpleSymbol simpleSymbol341 = CBT3.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol339, simpleSymbol340, bool23, simpleSymbol341);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol339, CBT3.s0, bool23, simpleSymbol341);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol339, CBT3.L7, CBT3.t9, CBT3.x);
                case 149:
                    return this.c.ClockCLIPBOARD$Timer();
                case 150:
                    Boolean bool24 = Boolean.FALSE;
                    SimpleSymbol simpleSymbol342 = CBT3.A9;
                    SimpleSymbol simpleSymbol343 = CBT3.K7;
                    SimpleSymbol simpleSymbol344 = CBT3.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol342, simpleSymbol343, bool24, simpleSymbol344);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol342, CBT3.s0, bool24, simpleSymbol344);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol342, CBT3.L7, CBT3.C9, CBT3.x);
                case 151:
                    Boolean bool25 = Boolean.FALSE;
                    SimpleSymbol simpleSymbol345 = CBT3.A9;
                    SimpleSymbol simpleSymbol346 = CBT3.K7;
                    SimpleSymbol simpleSymbol347 = CBT3.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol345, simpleSymbol346, bool25, simpleSymbol347);
                    runtime.setAndCoerceProperty$Ex(simpleSymbol345, CBT3.s0, bool25, simpleSymbol347);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol345, CBT3.L7, CBT3.C9, CBT3.x);
                case 152:
                    return this.c.ClockCLIPBOARD2$Timer();
                case 155:
                    Boolean bool26 = Boolean.FALSE;
                    SimpleSymbol simpleSymbol348 = CBT3.O1;
                    SimpleSymbol simpleSymbol349 = CBT3.K7;
                    SimpleSymbol simpleSymbol350 = CBT3.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol348, simpleSymbol349, bool26, simpleSymbol350);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol348, CBT3.s0, bool26, simpleSymbol350);
                case 156:
                    Boolean bool27 = Boolean.FALSE;
                    SimpleSymbol simpleSymbol351 = CBT3.O1;
                    SimpleSymbol simpleSymbol352 = CBT3.K7;
                    SimpleSymbol simpleSymbol353 = CBT3.m;
                    runtime.setAndCoerceProperty$Ex(simpleSymbol351, simpleSymbol352, bool27, simpleSymbol353);
                    return runtime.setAndCoerceProperty$Ex(simpleSymbol351, CBT3.s0, bool27, simpleSymbol353);
                case 157:
                    return this.c.ClockCEKSERVER$Timer();
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
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 59:
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
                case 79:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 80:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 81:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 82:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 83:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 84:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 85:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 86:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 87:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 88:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 89:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 90:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 91:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 92:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 93:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 94:
                case 95:
                case 96:
                case 142:
                case 153:
                case 154:
                default:
                    return super.match0(moduleMethod, callContext);
                case 97:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 98:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 99:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 100:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 101:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 102:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 103:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 104:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 105:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 106:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 107:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 108:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 109:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 110:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 111:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 112:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 113:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 114:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 115:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 116:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 117:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 118:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 119:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 120:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 121:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 122:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 123:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 124:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 125:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 126:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case WorkQueueKt.MASK /* 127 */:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 128:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 129:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 130:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 131:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 132:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 133:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 134:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 135:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 136:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 137:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 138:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 139:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 140:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 141:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 143:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 144:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 145:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 146:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 147:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 148:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 149:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 150:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 151:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 152:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 155:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 156:
                    callContext.proc = moduleMethod;
                    callContext.pc = 0;
                    return 0;
                case 157:
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
                if (!(obj instanceof CBT3)) {
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
            if (i == 94) {
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            }
            if (i == 96) {
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
                    if (!(obj instanceof CBT3)) {
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
            if (i == 17) {
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            }
            if (i != 153) {
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
            if (i == 142) {
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.value3 = obj3;
                callContext.value4 = obj4;
                callContext.proc = moduleMethod;
                callContext.pc = 4;
                return 0;
            }
            if (i == 154) {
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
                if (!(obj instanceof CBT3)) {
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
            if (!(obj instanceof CBT3)) {
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
            if (i == 94) {
                return this.c.Web_View1$ProgressChanged(obj);
            }
            if (i != 96) {
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
            return this.c.Web_View1$PageLoaded(obj);
        }

        @Override // gnu.expr.ModuleBody
        public Object apply4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4) throws Throwable {
            int i = moduleMethod.selector;
            if (i == 10) {
                this.c.addToComponents(obj, obj2, obj3, obj4);
                return Values.empty;
            }
            if (i == 142) {
                return this.c.Web1$GotText(obj, obj2, obj3, obj4);
            }
            if (i == 154) {
                return this.c.WebPASSKELUAR$GotText(obj, obj2, obj3, obj4);
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
                return i != 17 ? i != 153 ? super.apply2(moduleMethod, obj, obj2) : this.c.SpecialKeyboard1$OnKeyboardChange(obj, obj2) : this.c.lookupHandler(obj, obj2);
            }
            this.c.addToGlobalVars(obj, obj2);
            return Values.empty;
        }
    }

    public static Object H() {
        Boolean bool = Boolean.FALSE;
        SimpleSymbol simpleSymbol = m;
        SimpleSymbol simpleSymbol2 = k;
        runtime.setAndCoerceProperty$Ex(simpleSymbol2, l, bool, simpleSymbol);
        return runtime.callComponentMethod(simpleSymbol2, n, LList.list1(o), p);
    }

    public static Object I() {
        SimpleSymbol simpleSymbol = f5363a;
        SimpleSymbol simpleSymbol2 = v;
        IntNum intNum = w;
        SimpleSymbol simpleSymbol3 = x;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol2, intNum, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, y, z, simpleSymbol3);
        SimpleSymbol simpleSymbol4 = A;
        SimpleSymbol simpleSymbol5 = B;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol4, "RDEV_EXAM_V9", simpleSymbol5);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, C, "slidevertical", simpleSymbol5);
        Boolean bool = Boolean.TRUE;
        SimpleSymbol simpleSymbol6 = D;
        SimpleSymbol simpleSymbol7 = m;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol6, bool, simpleSymbol7);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, E, bool, simpleSymbol7);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, F, "512.png", simpleSymbol5);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, G, "slidehorizontal", simpleSymbol5);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, H, "sensor", simpleSymbol5);
        Boolean bool2 = Boolean.FALSE;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, I, bool2, simpleSymbol7);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, J, bool, simpleSymbol7);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, K, bool2, simpleSymbol7);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, L, bool2, simpleSymbol7);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, M, bool2, simpleSymbol7);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, N, "Responsive", simpleSymbol5);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, O, bool2, simpleSymbol7);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, P, "Classic", simpleSymbol5);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, Q, "CBT3", simpleSymbol5);
        return runtime.setAndCoerceProperty$Ex(simpleSymbol, R, bool2, simpleSymbol7);
    }

    public Object CBT3$OnPause() throws Throwable {
        runtime.setThisForm();
        SimpleSymbol simpleSymbol = U;
        LList lList = LList.Empty;
        runtime.callComponentMethod(T, simpleSymbol, lList, lList);
        return runtime.setAndCoerceProperty$Ex(V, W, runtime.callComponentMethod(X, Y, LList.list2("volume", ""), Z), x);
    }

    public Object CBT3$BackPressed() throws Throwable {
        runtime.setThisForm();
        LList lList = LList.Empty;
        runtime.callComponentMethod(T, U, lList, lList);
        runtime.setAndCoerceProperty$Ex(V, W, runtime.callComponentMethod(X, Y, LList.list2("volume", ""), c0), x);
        Object obj = runtime.$Stthe$Mnnull$Mnvalue$St;
        SimpleSymbol simpleSymbol = e;
        Object objLookupGlobalVarInCurrentFormEnvironment = runtime.lookupGlobalVarInCurrentFormEnvironment(simpleSymbol, obj);
        Boolean bool = Boolean.FALSE;
        return objLookupGlobalVarInCurrentFormEnvironment != bool ? runtime.callYailPrimitive(runtime.close$Mnapplication, lList, lList, "close application") : runtime.addGlobalVarToCurrentFormEnvironment(simpleSymbol, bool);
    }

    public Object CBT3$Initialize() throws Throwable {
        runtime.setThisForm();
        SimpleSymbol simpleSymbol = h0;
        Pair pairList1 = LList.list1(runtime.lookupInCurrentFormEnvironment(simpleSymbol));
        PairWithPosition pairWithPosition = i0;
        SimpleSymbol simpleSymbol2 = f0;
        runtime.callComponentMethod(simpleSymbol2, g0, pairList1, pairWithPosition);
        LList lList = LList.Empty;
        runtime.callComponentMethod(simpleSymbol2, j0, lList, lList);
        Boolean bool = Boolean.FALSE;
        SimpleSymbol simpleSymbol3 = k;
        SimpleSymbol simpleSymbol4 = l;
        SimpleSymbol simpleSymbol5 = m;
        runtime.setAndCoerceProperty$Ex(simpleSymbol3, simpleSymbol4, bool, simpleSymbol5);
        Object objCallComponentMethod = runtime.callComponentMethod(m0, n0, LList.list1(runtime.callYailPrimitive(runtime.text$Mndeobfuscate, LList.list2("Wv`\u0004Ihl\u0013rO\u0003VAU\tHECpH^^\u007fYMHp@Q%p8\f\rg>(rq3\u0004;\u00104!j\f+%|s,8:\u0017?/\u0011>$1\u0005/\u0018,M0E\tR'U2D(\u0014\u0006??\u0014?6,\b6\u001e#A\n'WQ", "jehmrwwp"), o0, "deobfuscate text")), p0);
        SimpleSymbol simpleSymbol6 = k0;
        SimpleSymbol simpleSymbol7 = l0;
        SimpleSymbol simpleSymbol8 = B;
        runtime.setAndCoerceProperty$Ex(simpleSymbol6, simpleSymbol7, objCallComponentMethod, simpleSymbol8);
        runtime.callComponentMethod(simpleSymbol6, q0, lList, lList);
        Boolean bool2 = Boolean.TRUE;
        SimpleSymbol simpleSymbol9 = r0;
        SimpleSymbol simpleSymbol10 = s0;
        runtime.setAndCoerceProperty$Ex(simpleSymbol9, simpleSymbol10, bool2, simpleSymbol5);
        Pair pairList2 = LList.list2("useragent", "");
        PairWithPosition pairWithPosition2 = v0;
        SimpleSymbol simpleSymbol11 = u0;
        SimpleSymbol simpleSymbol12 = Y;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, t0, runtime.callComponentMethod(simpleSymbol11, simpleSymbol12, pairList2, pairWithPosition2), simpleSymbol8);
        runtime.setAndCoerceProperty$Ex(w0, x0, "512.png", simpleSymbol8);
        runtime.callComponentMethod(f5363a, y0, lList, lList);
        runtime.setAndCoerceProperty$Ex(z0, simpleSymbol10, bool2, simpleSymbol5);
        runtime.setAndCoerceProperty$Ex(A0, B0, bool, simpleSymbol5);
        runtime.setAndCoerceProperty$Ex(V, W, runtime.callComponentMethod(X, simpleSymbol12, LList.list2("volume", ""), C0), x);
        return runtime.setAndCoerceProperty$Ex(D0, E0, bool2, simpleSymbol5);
    }

    public static Object k() {
        SimpleSymbol simpleSymbol = A0;
        SimpleSymbol simpleSymbol2 = y;
        IntNum intNum = z;
        SimpleSymbol simpleSymbol3 = x;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol2, intNum, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, I0, J0, simpleSymbol3);
        SimpleSymbol simpleSymbol4 = K0;
        SimpleSymbol simpleSymbol5 = B;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol4, "0,0,0,0", simpleSymbol5);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, L0, "0,0,0,0", simpleSymbol5);
        return runtime.setAndCoerceProperty$Ex(simpleSymbol, M0, N0, simpleSymbol3);
    }

    public static Object l() {
        SimpleSymbol simpleSymbol = A0;
        SimpleSymbol simpleSymbol2 = y;
        IntNum intNum = z;
        SimpleSymbol simpleSymbol3 = x;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol2, intNum, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, I0, J0, simpleSymbol3);
        SimpleSymbol simpleSymbol4 = K0;
        SimpleSymbol simpleSymbol5 = B;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol4, "0,0,0,0", simpleSymbol5);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, L0, "0,0,0,0", simpleSymbol5);
        return runtime.setAndCoerceProperty$Ex(simpleSymbol, M0, N0, simpleSymbol3);
    }

    public static Object m() {
        SimpleSymbol simpleSymbol = R0;
        SimpleSymbol simpleSymbol2 = T0;
        IntNum intNum = U0;
        SimpleSymbol simpleSymbol3 = x;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol2, intNum, simpleSymbol3);
        SimpleSymbol simpleSymbol4 = K0;
        SimpleSymbol simpleSymbol5 = B;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol4, "0,0,0,0", simpleSymbol5);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, L0, "0,0,0,0", simpleSymbol5);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, V0, Boolean.TRUE, m);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, W0, X0, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, Y0, Z0, simpleSymbol3);
        return runtime.setAndCoerceProperty$Ex(simpleSymbol, M0, N0, simpleSymbol3);
    }

    public static Object n() {
        SimpleSymbol simpleSymbol = R0;
        SimpleSymbol simpleSymbol2 = T0;
        IntNum intNum = U0;
        SimpleSymbol simpleSymbol3 = x;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol2, intNum, simpleSymbol3);
        SimpleSymbol simpleSymbol4 = K0;
        SimpleSymbol simpleSymbol5 = B;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol4, "0,0,0,0", simpleSymbol5);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, L0, "0,0,0,0", simpleSymbol5);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, V0, Boolean.TRUE, m);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, W0, X0, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, Y0, Z0, simpleSymbol3);
        return runtime.setAndCoerceProperty$Ex(simpleSymbol, M0, N0, simpleSymbol3);
    }

    public static Object o() {
        SimpleSymbol simpleSymbol = d1;
        SimpleSymbol simpleSymbol2 = f1;
        IntNum intNum = g1;
        SimpleSymbol simpleSymbol3 = x;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol2, intNum, simpleSymbol3);
        SimpleSymbol simpleSymbol4 = K0;
        SimpleSymbol simpleSymbol5 = B;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol4, "0,0,0,0", simpleSymbol5);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, L0, "0,0,0,0", simpleSymbol5);
        return runtime.setAndCoerceProperty$Ex(simpleSymbol, M0, N0, simpleSymbol3);
    }

    public static Object p() {
        SimpleSymbol simpleSymbol = d1;
        SimpleSymbol simpleSymbol2 = f1;
        IntNum intNum = g1;
        SimpleSymbol simpleSymbol3 = x;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol2, intNum, simpleSymbol3);
        SimpleSymbol simpleSymbol4 = K0;
        SimpleSymbol simpleSymbol5 = B;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol4, "0,0,0,0", simpleSymbol5);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, L0, "0,0,0,0", simpleSymbol5);
        return runtime.setAndCoerceProperty$Ex(simpleSymbol, M0, N0, simpleSymbol3);
    }

    public static Object q() {
        SimpleSymbol simpleSymbol = k1;
        SimpleSymbol simpleSymbol2 = y;
        IntNum intNum = z;
        SimpleSymbol simpleSymbol3 = x;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol2, intNum, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, T0, m1, simpleSymbol3);
        SimpleSymbol simpleSymbol4 = f1;
        IntNum intNum2 = N0;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol4, intNum2, simpleSymbol3);
        SimpleSymbol simpleSymbol5 = K0;
        SimpleSymbol simpleSymbol6 = B;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol5, "0,0,0,0", simpleSymbol6);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, L0, "0,0,0,0", simpleSymbol6);
        return runtime.setAndCoerceProperty$Ex(simpleSymbol, M0, intNum2, simpleSymbol3);
    }

    public static Object r() {
        SimpleSymbol simpleSymbol = k1;
        SimpleSymbol simpleSymbol2 = y;
        IntNum intNum = z;
        SimpleSymbol simpleSymbol3 = x;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol2, intNum, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, T0, m1, simpleSymbol3);
        SimpleSymbol simpleSymbol4 = f1;
        IntNum intNum2 = N0;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol4, intNum2, simpleSymbol3);
        SimpleSymbol simpleSymbol5 = K0;
        SimpleSymbol simpleSymbol6 = B;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol5, "0,0,0,0", simpleSymbol6);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, L0, "0,0,0,0", simpleSymbol6);
        return runtime.setAndCoerceProperty$Ex(simpleSymbol, M0, intNum2, simpleSymbol3);
    }

    public static Object s() {
        SimpleSymbol simpleSymbol = q1;
        SimpleSymbol simpleSymbol2 = y;
        IntNum intNum = z;
        SimpleSymbol simpleSymbol3 = x;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol2, intNum, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, I0, J0, simpleSymbol3);
        SimpleSymbol simpleSymbol4 = K0;
        SimpleSymbol simpleSymbol5 = B;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol4, "0,0,0,0", simpleSymbol5);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, L0, "0,0,0,0", simpleSymbol5);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, B0, Boolean.FALSE, m);
        return runtime.setAndCoerceProperty$Ex(simpleSymbol, M0, N0, simpleSymbol3);
    }

    public static Object t() {
        SimpleSymbol simpleSymbol = q1;
        SimpleSymbol simpleSymbol2 = y;
        IntNum intNum = z;
        SimpleSymbol simpleSymbol3 = x;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol2, intNum, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, I0, J0, simpleSymbol3);
        SimpleSymbol simpleSymbol4 = K0;
        SimpleSymbol simpleSymbol5 = B;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol4, "0,0,0,0", simpleSymbol5);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, L0, "0,0,0,0", simpleSymbol5);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, B0, Boolean.FALSE, m);
        return runtime.setAndCoerceProperty$Ex(simpleSymbol, M0, N0, simpleSymbol3);
    }

    public static Object u() {
        Boolean bool = Boolean.TRUE;
        SimpleSymbol simpleSymbol = m;
        SimpleSymbol simpleSymbol2 = v1;
        runtime.setAndCoerceProperty$Ex(simpleSymbol2, x1, bool, simpleSymbol);
        SimpleSymbol simpleSymbol3 = y1;
        IntNum intNum = z1;
        SimpleSymbol simpleSymbol4 = x;
        runtime.setAndCoerceProperty$Ex(simpleSymbol2, simpleSymbol3, intNum, simpleSymbol4);
        SimpleSymbol simpleSymbol5 = A1;
        SimpleSymbol simpleSymbol6 = B;
        runtime.setAndCoerceProperty$Ex(simpleSymbol2, simpleSymbol5, Component.TYPEFACE_GOOGLE_MATERIAL_DESIGN, simpleSymbol6);
        SimpleSymbol simpleSymbol7 = f1;
        IntNum intNum2 = B1;
        runtime.setAndCoerceProperty$Ex(simpleSymbol2, simpleSymbol7, intNum2, simpleSymbol4);
        runtime.setAndCoerceProperty$Ex(simpleSymbol2, K0, "0,0,0,0", simpleSymbol6);
        runtime.setAndCoerceProperty$Ex(simpleSymbol2, C1, z, simpleSymbol4);
        runtime.setAndCoerceProperty$Ex(simpleSymbol2, D1, "arrow_back", simpleSymbol6);
        return runtime.setAndCoerceProperty$Ex(simpleSymbol2, M0, intNum2, simpleSymbol4);
    }

    public static Object v() {
        Boolean bool = Boolean.TRUE;
        SimpleSymbol simpleSymbol = m;
        SimpleSymbol simpleSymbol2 = v1;
        runtime.setAndCoerceProperty$Ex(simpleSymbol2, x1, bool, simpleSymbol);
        SimpleSymbol simpleSymbol3 = y1;
        IntNum intNum = z1;
        SimpleSymbol simpleSymbol4 = x;
        runtime.setAndCoerceProperty$Ex(simpleSymbol2, simpleSymbol3, intNum, simpleSymbol4);
        SimpleSymbol simpleSymbol5 = A1;
        SimpleSymbol simpleSymbol6 = B;
        runtime.setAndCoerceProperty$Ex(simpleSymbol2, simpleSymbol5, Component.TYPEFACE_GOOGLE_MATERIAL_DESIGN, simpleSymbol6);
        SimpleSymbol simpleSymbol7 = f1;
        IntNum intNum2 = B1;
        runtime.setAndCoerceProperty$Ex(simpleSymbol2, simpleSymbol7, intNum2, simpleSymbol4);
        runtime.setAndCoerceProperty$Ex(simpleSymbol2, K0, "0,0,0,0", simpleSymbol6);
        runtime.setAndCoerceProperty$Ex(simpleSymbol2, C1, z, simpleSymbol4);
        runtime.setAndCoerceProperty$Ex(simpleSymbol2, D1, "arrow_back", simpleSymbol6);
        return runtime.setAndCoerceProperty$Ex(simpleSymbol2, M0, intNum2, simpleSymbol4);
    }

    public Object ButtonBACK$Click() throws Throwable {
        runtime.setThisForm();
        SimpleSymbol simpleSymbol = G1;
        LList lList = LList.Empty;
        runtime.callComponentMethod(f5363a, simpleSymbol, lList, lList);
        Boolean bool = Boolean.TRUE;
        SimpleSymbol simpleSymbol2 = I1;
        SimpleSymbol simpleSymbol3 = B0;
        SimpleSymbol simpleSymbol4 = m;
        runtime.setAndCoerceProperty$Ex(simpleSymbol2, simpleSymbol3, bool, simpleSymbol4);
        Boolean bool2 = Boolean.FALSE;
        runtime.setAndCoerceProperty$Ex(q1, simpleSymbol3, bool2, simpleSymbol4);
        SimpleSymbol simpleSymbol5 = J1;
        SimpleSymbol simpleSymbol6 = K1;
        SimpleSymbol simpleSymbol7 = B;
        runtime.setAndCoerceProperty$Ex(simpleSymbol5, simpleSymbol6, "Password untuk keluar", simpleSymbol7);
        runtime.setAndCoerceProperty$Ex(simpleSymbol5, L1, M1, x);
        runtime.setAndCoerceProperty$Ex(N1, D1, "false", simpleSymbol7);
        return runtime.setAndCoerceProperty$Ex(O1, s0, bool2, simpleSymbol4);
    }

    public static Object w() {
        SimpleSymbol simpleSymbol = S1;
        SimpleSymbol simpleSymbol2 = y;
        IntNum intNum = z;
        SimpleSymbol simpleSymbol3 = x;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol2, intNum, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, I0, J0, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, T0, U1, simpleSymbol3);
        SimpleSymbol simpleSymbol4 = V1;
        IntNum intNum2 = o;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol4, intNum2, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, W1, X1, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, Y1, intNum2, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, Z1, intNum2, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, a2, Boolean.FALSE, m);
        SimpleSymbol simpleSymbol5 = K0;
        SimpleSymbol simpleSymbol6 = B;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol5, "0,0,0,0", simpleSymbol6);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, L0, "0,0,0,0", simpleSymbol6);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, b2, c2, simpleSymbol3);
        return runtime.setAndCoerceProperty$Ex(simpleSymbol, M0, d2, simpleSymbol3);
    }

    public static Object x() {
        SimpleSymbol simpleSymbol = S1;
        SimpleSymbol simpleSymbol2 = y;
        IntNum intNum = z;
        SimpleSymbol simpleSymbol3 = x;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol2, intNum, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, I0, J0, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, T0, U1, simpleSymbol3);
        SimpleSymbol simpleSymbol4 = V1;
        IntNum intNum2 = o;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol4, intNum2, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, W1, X1, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, Y1, intNum2, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, Z1, intNum2, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, a2, Boolean.FALSE, m);
        SimpleSymbol simpleSymbol5 = K0;
        SimpleSymbol simpleSymbol6 = B;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol5, "0,0,0,0", simpleSymbol6);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, L0, "0,0,0,0", simpleSymbol6);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, b2, c2, simpleSymbol3);
        return runtime.setAndCoerceProperty$Ex(simpleSymbol, M0, d2, simpleSymbol3);
    }

    public static Object y() {
        SimpleSymbol simpleSymbol = J1;
        SimpleSymbol simpleSymbol2 = T0;
        IntNum intNum = i2;
        SimpleSymbol simpleSymbol3 = x;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol2, intNum, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, x1, Boolean.TRUE, m);
        SimpleSymbol simpleSymbol4 = A1;
        SimpleSymbol simpleSymbol5 = B;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol4, "1", simpleSymbol5);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, K0, "0,0,0,0", simpleSymbol5);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, K1, "Password untuk keluar", simpleSymbol5);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, L1, j2, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, k2, l2, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, m2, n2, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, o2, p2, simpleSymbol3);
        return runtime.setAndCoerceProperty$Ex(simpleSymbol, M0, q2, simpleSymbol3);
    }

    public static Object z() {
        SimpleSymbol simpleSymbol = J1;
        SimpleSymbol simpleSymbol2 = T0;
        IntNum intNum = i2;
        SimpleSymbol simpleSymbol3 = x;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol2, intNum, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, x1, Boolean.TRUE, m);
        SimpleSymbol simpleSymbol4 = A1;
        SimpleSymbol simpleSymbol5 = B;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol4, "1", simpleSymbol5);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, K0, "0,0,0,0", simpleSymbol5);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, K1, "Password untuk keluar", simpleSymbol5);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, L1, j2, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, k2, l2, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, m2, n2, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, o2, p2, simpleSymbol3);
        return runtime.setAndCoerceProperty$Ex(simpleSymbol, M0, q2, simpleSymbol3);
    }

    public static Object A() {
        Boolean bool = Boolean.TRUE;
        SimpleSymbol simpleSymbol = m;
        SimpleSymbol simpleSymbol2 = u2;
        runtime.setAndCoerceProperty$Ex(simpleSymbol2, x1, bool, simpleSymbol);
        SimpleSymbol simpleSymbol3 = y1;
        IntNum intNum = w2;
        SimpleSymbol simpleSymbol4 = x;
        runtime.setAndCoerceProperty$Ex(simpleSymbol2, simpleSymbol3, intNum, simpleSymbol4);
        SimpleSymbol simpleSymbol5 = A1;
        SimpleSymbol simpleSymbol6 = B;
        runtime.setAndCoerceProperty$Ex(simpleSymbol2, simpleSymbol5, Component.TYPEFACE_GOOGLE_MATERIAL_DESIGN, simpleSymbol6);
        SimpleSymbol simpleSymbol7 = f1;
        IntNum intNum2 = B1;
        runtime.setAndCoerceProperty$Ex(simpleSymbol2, simpleSymbol7, intNum2, simpleSymbol4);
        runtime.setAndCoerceProperty$Ex(simpleSymbol2, K0, "0,0,0,0", simpleSymbol6);
        runtime.setAndCoerceProperty$Ex(simpleSymbol2, C1, z, simpleSymbol4);
        runtime.setAndCoerceProperty$Ex(simpleSymbol2, D1, "logout", simpleSymbol6);
        return runtime.setAndCoerceProperty$Ex(simpleSymbol2, M0, intNum2, simpleSymbol4);
    }

    public static Object B() {
        Boolean bool = Boolean.TRUE;
        SimpleSymbol simpleSymbol = m;
        SimpleSymbol simpleSymbol2 = u2;
        runtime.setAndCoerceProperty$Ex(simpleSymbol2, x1, bool, simpleSymbol);
        SimpleSymbol simpleSymbol3 = y1;
        IntNum intNum = w2;
        SimpleSymbol simpleSymbol4 = x;
        runtime.setAndCoerceProperty$Ex(simpleSymbol2, simpleSymbol3, intNum, simpleSymbol4);
        SimpleSymbol simpleSymbol5 = A1;
        SimpleSymbol simpleSymbol6 = B;
        runtime.setAndCoerceProperty$Ex(simpleSymbol2, simpleSymbol5, Component.TYPEFACE_GOOGLE_MATERIAL_DESIGN, simpleSymbol6);
        SimpleSymbol simpleSymbol7 = f1;
        IntNum intNum2 = B1;
        runtime.setAndCoerceProperty$Ex(simpleSymbol2, simpleSymbol7, intNum2, simpleSymbol4);
        runtime.setAndCoerceProperty$Ex(simpleSymbol2, K0, "0,0,0,0", simpleSymbol6);
        runtime.setAndCoerceProperty$Ex(simpleSymbol2, C1, z, simpleSymbol4);
        runtime.setAndCoerceProperty$Ex(simpleSymbol2, D1, "logout", simpleSymbol6);
        return runtime.setAndCoerceProperty$Ex(simpleSymbol2, M0, intNum2, simpleSymbol4);
    }

    public Object YESEXIT$Click() throws Throwable {
        runtime.setThisForm();
        ModuleMethod moduleMethod = runtime.yail$Mnequal$Qu;
        Pair pairList2 = LList.list2("keluar", "");
        PairWithPosition pairWithPosition = A2;
        SimpleSymbol simpleSymbol = z2;
        SimpleSymbol simpleSymbol2 = Y;
        Object objCallComponentMethod = runtime.callComponentMethod(m0, n0, LList.list1(runtime.callComponentMethod(simpleSymbol, simpleSymbol2, pairList2, pairWithPosition)), B2);
        ModuleMethod moduleMethod2 = runtime.get$Mnproperty;
        SimpleSymbol simpleSymbol3 = J1;
        SimpleSymbol simpleSymbol4 = D1;
        Object objCallYailPrimitive = runtime.callYailPrimitive(moduleMethod, LList.list2(objCallComponentMethod, moduleMethod2.apply2(simpleSymbol3, simpleSymbol4)), C2, "=");
        Boolean bool = Boolean.FALSE;
        SimpleSymbol simpleSymbol5 = x;
        if (objCallYailPrimitive == bool) {
            SimpleSymbol simpleSymbol6 = B;
            runtime.setAndCoerceProperty$Ex(simpleSymbol3, simpleSymbol4, "", simpleSymbol6);
            runtime.setAndCoerceProperty$Ex(simpleSymbol3, K1, "PASSWORD SALAH!!", simpleSymbol6);
            return runtime.setAndCoerceProperty$Ex(simpleSymbol3, L1, K2, simpleSymbol5);
        }
        LList lList = LList.Empty;
        runtime.callComponentMethod(T, U, lList, lList);
        runtime.setAndCoerceProperty$Ex(V, W, runtime.callComponentMethod(X, simpleSymbol2, LList.list2("volume", ""), D2), simpleSymbol5);
        SimpleSymbol simpleSymbol7 = E2;
        SimpleSymbol simpleSymbol8 = h0;
        runtime.callComponentMethod(simpleSymbol8, simpleSymbol7, lList, lList);
        runtime.callComponentMethod(simpleSymbol8, F2, lList, lList);
        runtime.callComponentMethod(G2, I2, LList.list1("Berhasil Keluar"), J2);
        runtime.callComponentMethod(f5363a, G1, lList, lList);
        return runtime.callYailPrimitive(runtime.close$Mnscreen, lList, lList, "close screen");
    }

    public static Object C() {
        SimpleSymbol simpleSymbol = N2;
        SimpleSymbol simpleSymbol2 = K0;
        SimpleSymbol simpleSymbol3 = B;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol2, "0,0,0,0", simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, L0, "0,0,0,0", simpleSymbol3);
        return runtime.setAndCoerceProperty$Ex(simpleSymbol, B0, Boolean.FALSE, m);
    }

    public static Object D() {
        SimpleSymbol simpleSymbol = N2;
        SimpleSymbol simpleSymbol2 = K0;
        SimpleSymbol simpleSymbol3 = B;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol2, "0,0,0,0", simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, L0, "0,0,0,0", simpleSymbol3);
        return runtime.setAndCoerceProperty$Ex(simpleSymbol, B0, Boolean.FALSE, m);
    }

    public static Object E() {
        SimpleSymbol simpleSymbol = I1;
        SimpleSymbol simpleSymbol2 = y;
        IntNum intNum = z;
        SimpleSymbol simpleSymbol3 = x;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol2, intNum, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, I0, J0, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, T0, T2, simpleSymbol3);
        SimpleSymbol simpleSymbol4 = K0;
        SimpleSymbol simpleSymbol5 = B;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol4, "0,0,0,0", simpleSymbol5);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, L0, "0,0,0,0", simpleSymbol5);
        return runtime.setAndCoerceProperty$Ex(simpleSymbol, M0, N0, simpleSymbol3);
    }

    public static Object F() {
        SimpleSymbol simpleSymbol = X2;
        SimpleSymbol simpleSymbol2 = y;
        IntNum intNum = z;
        SimpleSymbol simpleSymbol3 = x;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol2, intNum, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, I0, J0, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, T0, Z2, simpleSymbol3);
        SimpleSymbol simpleSymbol4 = V1;
        IntNum intNum2 = o;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol4, intNum2, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, W1, X1, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, Y1, intNum2, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, Z1, intNum2, simpleSymbol3);
        Boolean bool = Boolean.FALSE;
        SimpleSymbol simpleSymbol5 = a2;
        SimpleSymbol simpleSymbol6 = m;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol5, bool, simpleSymbol6);
        SimpleSymbol simpleSymbol7 = K0;
        SimpleSymbol simpleSymbol8 = B;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol7, "0,0,0,0", simpleSymbol8);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, L0, "0,0,0,0", simpleSymbol8);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, b2, c2, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, B0, bool, simpleSymbol6);
        return runtime.setAndCoerceProperty$Ex(simpleSymbol, M0, a3, simpleSymbol3);
    }

    public static Object G() {
        SimpleSymbol simpleSymbol = X2;
        SimpleSymbol simpleSymbol2 = y;
        IntNum intNum = z;
        SimpleSymbol simpleSymbol3 = x;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol2, intNum, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, I0, J0, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, T0, Z2, simpleSymbol3);
        SimpleSymbol simpleSymbol4 = V1;
        IntNum intNum2 = o;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol4, intNum2, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, W1, X1, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, Y1, intNum2, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, Z1, intNum2, simpleSymbol3);
        Boolean bool = Boolean.FALSE;
        SimpleSymbol simpleSymbol5 = a2;
        SimpleSymbol simpleSymbol6 = m;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol5, bool, simpleSymbol6);
        SimpleSymbol simpleSymbol7 = K0;
        SimpleSymbol simpleSymbol8 = B;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol7, "0,0,0,0", simpleSymbol8);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, L0, "0,0,0,0", simpleSymbol8);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, b2, c2, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol, B0, bool, simpleSymbol6);
        return runtime.setAndCoerceProperty$Ex(simpleSymbol, M0, a3, simpleSymbol3);
    }

    public Object WEBBACKBUTTON$Click() {
        runtime.setThisForm();
        LList lList = LList.Empty;
        SimpleSymbol simpleSymbol = h0;
        return runtime.callComponentMethod(simpleSymbol, y3, lList, lList) != Boolean.FALSE ? runtime.callComponentMethod(simpleSymbol, z3, lList, lList) : Values.empty;
    }

    public Object WEBFORWARD$Click() {
        runtime.setThisForm();
        LList lList = LList.Empty;
        SimpleSymbol simpleSymbol = h0;
        return runtime.callComponentMethod(simpleSymbol, J3, lList, lList) != Boolean.FALSE ? runtime.callComponentMethod(simpleSymbol, K3, lList, lList) : Values.empty;
    }

    public Object ButtonREFRESH$Click() {
        runtime.setThisForm();
        ModuleMethod moduleMethod = runtime.get$Mnproperty;
        SimpleSymbol simpleSymbol = w4;
        SimpleSymbol simpleSymbol2 = h0;
        return runtime.callComponentMethod(simpleSymbol2, v4, LList.list1(moduleMethod.apply2(simpleSymbol2, simpleSymbol)), x4);
    }

    public Object ButtonEXIT$Click() throws Throwable {
        runtime.setThisForm();
        Boolean bool = Boolean.TRUE;
        SimpleSymbol simpleSymbol = O1;
        SimpleSymbol simpleSymbol2 = s0;
        SimpleSymbol simpleSymbol3 = m;
        runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol2, bool, simpleSymbol3);
        SimpleSymbol simpleSymbol4 = B;
        SimpleSymbol simpleSymbol5 = J1;
        runtime.setAndCoerceProperty$Ex(simpleSymbol5, D1, "", simpleSymbol4);
        SimpleSymbol simpleSymbol6 = G4;
        LList lList = LList.Empty;
        runtime.callComponentMethod(simpleSymbol5, simpleSymbol6, lList, lList);
        return runtime.setAndCoerceProperty$Ex(I1, B0, Boolean.FALSE, simpleSymbol3);
    }

    public Object Web_View1$ProgressChanged(Object obj) {
        Object objSanitizeComponentData = runtime.sanitizeComponentData(obj);
        runtime.setThisForm();
        ModuleMethod moduleMethod = runtime.yail$Mnequal$Qu;
        if (objSanitizeComponentData instanceof Package) {
            objSanitizeComponentData = runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(r5), " is not bound in the current context"), "Unbound Variable");
        }
        Object objCallYailPrimitive = runtime.callYailPrimitive(moduleMethod, LList.list2(objSanitizeComponentData, X0), s5, "=");
        Boolean bool = Boolean.FALSE;
        SimpleSymbol simpleSymbol = A0;
        SimpleSymbol simpleSymbol2 = m;
        SimpleSymbol simpleSymbol3 = B0;
        if (objCallYailPrimitive == bool) {
            return runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol3, Boolean.TRUE, simpleSymbol2);
        }
        runtime.setAndCoerceProperty$Ex(h0, simpleSymbol3, Boolean.TRUE, simpleSymbol2);
        return runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol3, bool, simpleSymbol2);
    }

    public Object Web_View1$ErrorOccurred(Object obj, Object obj2, Object obj3) {
        Object objSanitizeComponentData = runtime.sanitizeComponentData(obj);
        runtime.sanitizeComponentData(obj2);
        runtime.sanitizeComponentData(obj3);
        runtime.setThisForm();
        ModuleMethod moduleMethod = runtime.yail$Mnequal$Qu;
        if (objSanitizeComponentData instanceof Package) {
            objSanitizeComponentData = runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(v5), " is not bound in the current context"), "Unbound Variable");
        }
        runtime.callYailPrimitive(moduleMethod, LList.list2(objSanitizeComponentData, w5), x5, "=");
        Boolean bool = Boolean.FALSE;
        SimpleSymbol simpleSymbol = k1;
        SimpleSymbol simpleSymbol2 = h0;
        SimpleSymbol simpleSymbol3 = m;
        SimpleSymbol simpleSymbol4 = B0;
        runtime.setAndCoerceProperty$Ex(y5, simpleSymbol4, Boolean.TRUE, simpleSymbol3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol2, simpleSymbol4, bool, simpleSymbol3);
        return runtime.setAndCoerceProperty$Ex(simpleSymbol, simpleSymbol4, bool, simpleSymbol3);
    }

    public Object Web_View1$PageLoaded(Object obj) throws Throwable {
        Object obj2;
        Boolean bool;
        SimpleSymbol simpleSymbol;
        Boolean bool2;
        Object obj3;
        Object obj4;
        Object objSanitizeComponentData = runtime.sanitizeComponentData(obj);
        runtime.setThisForm();
        ModuleMethod moduleMethod = runtime.yail$Mnequal$Qu;
        boolean z10 = objSanitizeComponentData instanceof Package;
        SimpleSymbol simpleSymbol2 = B5;
        Object objCallYailPrimitive = runtime.callYailPrimitive(moduleMethod, LList.list2(z10 ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(simpleSymbol2), " is not bound in the current context"), "Unbound Variable") : objSanitizeComponentData, "https://www.google.com/"), C5, "=");
        Boolean bool3 = Boolean.FALSE;
        SimpleSymbol simpleSymbol3 = G5;
        SimpleSymbol simpleSymbol4 = F5;
        SimpleSymbol simpleSymbol5 = x;
        SimpleSymbol simpleSymbol6 = Y;
        SimpleSymbol simpleSymbol7 = X;
        SimpleSymbol simpleSymbol8 = W;
        SimpleSymbol simpleSymbol9 = V;
        SimpleSymbol simpleSymbol10 = U;
        SimpleSymbol simpleSymbol11 = T;
        SimpleSymbol simpleSymbol12 = I2;
        SimpleSymbol simpleSymbol13 = G2;
        if (objCallYailPrimitive != bool3) {
            bool = bool3;
            runtime.callComponentMethod(simpleSymbol13, simpleSymbol12, LList.list1("Tidak boleh buka google ya!!"), D5);
            LList lList = LList.Empty;
            runtime.callComponentMethod(simpleSymbol11, simpleSymbol10, lList, lList);
            obj2 = "";
            runtime.setAndCoerceProperty$Ex(simpleSymbol9, simpleSymbol8, runtime.callComponentMethod(simpleSymbol7, simpleSymbol6, LList.list2("volume", ""), E5), simpleSymbol5);
            runtime.callComponentMethod(simpleSymbol4, simpleSymbol3, lList, lList);
        } else {
            obj2 = "";
            bool = bool3;
        }
        Boolean bool4 = bool;
        if (runtime.callYailPrimitive(moduleMethod, LList.list2(z10 ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(simpleSymbol2), " is not bound in the current context"), "Unbound Variable") : objSanitizeComponentData, "https://policies.google.com/terms"), H5, "=") != bool4) {
            bool2 = bool4;
            runtime.callComponentMethod(simpleSymbol13, simpleSymbol12, LList.list1("Tidak boleh buka google ya!!"), I5);
            LList lList2 = LList.Empty;
            runtime.callComponentMethod(simpleSymbol11, simpleSymbol10, lList2, lList2);
            simpleSymbol = simpleSymbol10;
            obj3 = obj2;
            obj4 = "volume";
            runtime.setAndCoerceProperty$Ex(simpleSymbol9, simpleSymbol8, runtime.callComponentMethod(simpleSymbol7, simpleSymbol6, LList.list2("volume", obj3), J5), simpleSymbol5);
            runtime.callComponentMethod(simpleSymbol4, simpleSymbol3, lList2, lList2);
        } else {
            simpleSymbol = simpleSymbol10;
            bool2 = bool4;
            obj3 = obj2;
            obj4 = "volume";
        }
        if (runtime.callYailPrimitive(moduleMethod, LList.list2(z10 ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(simpleSymbol2), " is not bound in the current context"), "Unbound Variable") : objSanitizeComponentData, "https://policies.google.com/privacy"), K5, "=") == bool2) {
            return Values.empty;
        }
        runtime.callComponentMethod(simpleSymbol13, simpleSymbol12, LList.list1("Tidak boleh buka google ya!!"), L5);
        LList lList3 = LList.Empty;
        runtime.callComponentMethod(simpleSymbol11, simpleSymbol, lList3, lList3);
        runtime.setAndCoerceProperty$Ex(simpleSymbol9, simpleSymbol8, runtime.callComponentMethod(simpleSymbol7, simpleSymbol6, LList.list2(obj4, obj3), M5), simpleSymbol5);
        return runtime.callComponentMethod(simpleSymbol4, simpleSymbol3, lList3, lList3);
    }

    public Object ButtonBAWAH$GotFocus() throws Throwable {
        runtime.setThisForm();
        runtime.callComponentMethod(G2, I2, LList.list1("Dilarang membuka tombol navigasi"), B6);
        runtime.setAndCoerceProperty$Ex(f5363a, K, Boolean.FALSE, m);
        runtime.setAndCoerceProperty$Ex(V, W, runtime.callComponentMethod(X, Y, LList.list2("volume", ""), C6), x);
        SimpleSymbol simpleSymbol = U;
        LList lList = LList.Empty;
        return runtime.callComponentMethod(T, simpleSymbol, lList, lList);
    }

    public Object ButtonBAWAH$TouchDown() throws Throwable {
        runtime.setThisForm();
        runtime.callComponentMethod(G2, I2, LList.list1("Dilarang membuka tombol navigasi"), F6);
        runtime.setAndCoerceProperty$Ex(f5363a, K, Boolean.FALSE, m);
        runtime.setAndCoerceProperty$Ex(V, W, runtime.callComponentMethod(X, Y, LList.list2("volume", ""), G6), x);
        SimpleSymbol simpleSymbol = U;
        LList lList = LList.Empty;
        return runtime.callComponentMethod(T, simpleSymbol, lList, lList);
    }

    public Object ButtonBAWAH$TouchUp() throws Throwable {
        runtime.setThisForm();
        runtime.callComponentMethod(G2, I2, LList.list1("Dilarang membuka tombol navigasi"), J6);
        runtime.setAndCoerceProperty$Ex(f5363a, K, Boolean.FALSE, m);
        runtime.setAndCoerceProperty$Ex(V, W, runtime.callComponentMethod(X, Y, LList.list2("volume", ""), K6), x);
        SimpleSymbol simpleSymbol = U;
        LList lList = LList.Empty;
        return runtime.callComponentMethod(T, simpleSymbol, lList, lList);
    }

    public Object KELUAR$Click() throws Throwable {
        runtime.setThisForm();
        LList lList = LList.Empty;
        runtime.callComponentMethod(T, U, lList, lList);
        runtime.setAndCoerceProperty$Ex(V, W, o, x);
        return runtime.callYailPrimitive(runtime.close$Mnscreen, lList, lList, "close screen");
    }

    public Object Clock1$Timer() {
        runtime.setThisForm();
        SimpleSymbol simpleSymbol = P7;
        LList lList = LList.Empty;
        return runtime.callComponentMethod(d7, simpleSymbol, lList, lList);
    }

    public Object ClockJAM$Timer() throws Throwable {
        runtime.setThisForm();
        SimpleSymbol simpleSymbol = i8;
        LList lList = LList.Empty;
        SimpleSymbol simpleSymbol2 = d8;
        return runtime.setAndCoerceProperty$Ex(T3, D1, runtime.callComponentMethod(simpleSymbol2, h8, LList.list2(runtime.callComponentMethod(simpleSymbol2, simpleSymbol, lList, lList), "HH:mm:ss"), j8), B);
    }

    public Object CEKTASKLOCK$Timer() throws Throwable {
        runtime.setThisForm();
        ModuleMethod moduleMethod = runtime.yail$Mnequal$Qu;
        LList lList = LList.Empty;
        Object objCallYailPrimitive = runtime.callYailPrimitive(moduleMethod, LList.list2(runtime.callComponentMethod(w8, x8, lList, lList), Boolean.TRUE), y8, "=");
        Boolean bool = Boolean.FALSE;
        SimpleSymbol simpleSymbol = F5;
        SimpleSymbol simpleSymbol2 = B;
        SimpleSymbol simpleSymbol3 = D1;
        SimpleSymbol simpleSymbol4 = G5;
        if (objCallYailPrimitive != bool) {
            runtime.setAndCoerceProperty$Ex(j5, simpleSymbol3, "true", simpleSymbol2);
        } else {
            runtime.callComponentMethod(simpleSymbol, simpleSymbol4, lList, lList);
        }
        runtime.setAndCoerceProperty$Ex(V4, simpleSymbol3, runtime.callComponentMethod(a8, z8, lList, lList), simpleSymbol2);
        Object objCallComponentMethod = runtime.callComponentMethod(simpleSymbol, A8, lList, lList);
        SimpleSymbol simpleSymbol5 = Q5;
        runtime.setAndCoerceProperty$Ex(simpleSymbol5, simpleSymbol3, objCallComponentMethod, simpleSymbol2);
        ModuleMethod moduleMethod2 = runtime.get$Mnproperty;
        if (runtime.callYailPrimitive(moduleMethod, LList.list2(moduleMethod2.apply2(simpleSymbol5, simpleSymbol3), "None"), B8, "=") != bool) {
            SimpleSymbol simpleSymbol6 = E2;
            SimpleSymbol simpleSymbol7 = h0;
            runtime.callComponentMethod(simpleSymbol7, simpleSymbol6, lList, lList);
            runtime.callComponentMethod(simpleSymbol7, F2, lList, lList);
            SimpleSymbol simpleSymbol8 = B0;
            SimpleSymbol simpleSymbol9 = m;
            runtime.setAndCoerceProperty$Ex(simpleSymbol7, simpleSymbol8, bool, simpleSymbol9);
            runtime.setAndCoerceProperty$Ex(I1, simpleSymbol8, bool, simpleSymbol9);
            runtime.setAndCoerceProperty$Ex(q1, simpleSymbol8, bool, simpleSymbol9);
            runtime.callComponentMethod(G2, I2, LList.list1("Kamu telah membuka kunci!"), C8);
            runtime.setAndCoerceProperty$Ex(V, W, runtime.callComponentMethod(X, Y, LList.list2("volume", ""), D8), x);
            runtime.callComponentMethod(T, U, lList, lList);
        }
        Object objApply2 = moduleMethod2.apply2(E8, F8);
        SimpleSymbol simpleSymbol10 = V5;
        runtime.setAndCoerceProperty$Ex(simpleSymbol10, simpleSymbol3, objApply2, simpleSymbol2);
        if (runtime.callYailPrimitive(moduleMethod, LList.list2(moduleMethod2.apply2(simpleSymbol10, simpleSymbol3), "true"), G8, "=") != bool) {
            runtime.callComponentMethod(simpleSymbol, simpleSymbol4, lList, lList);
            runtime.callYailPrimitive(runtime.open$Mnanother$Mnscreen, LList.list1("DETECTBLUETOOTH"), H8, "open another screen");
        }
        Object objApply22 = moduleMethod2.apply2(I8, J8);
        SimpleSymbol simpleSymbol11 = N2;
        runtime.setAndCoerceProperty$Ex(simpleSymbol11, simpleSymbol3, objApply22, simpleSymbol2);
        if (runtime.callYailPrimitive(moduleMethod, LList.list2(moduleMethod2.apply2(simpleSymbol11, simpleSymbol3), "plugged"), K8, "=") == bool) {
            return Values.empty;
        }
        runtime.callComponentMethod(simpleSymbol, simpleSymbol4, lList, lList);
        return runtime.callYailPrimitive(runtime.open$Mnanother$Mnscreen, LList.list1("FRTRCTHEADSET"), L8, "open another screen");
    }

    public Object Web1$GotText(Object obj, Object obj2, Object obj3, Object obj4) {
        Object objE = a.e(obj, obj2, obj3, obj4);
        ModuleMethod moduleMethod = runtime.string$Mnsplit;
        if (objE instanceof Package) {
            objE = runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(T8), " is not bound in the current context"), "Unbound Variable");
        }
        Object objCallYailPrimitive = runtime.callYailPrimitive(moduleMethod, LList.list2(objE, runtime.callYailPrimitive(runtime.text$Mndeobfuscate, LList.list2("G", "jiwyuwdu"), U8, "deobfuscate text")), V8, "split");
        ModuleMethod moduleMethod2 = runtime.yail$Mnlist$Mnget$Mnitem;
        if (objCallYailPrimitive instanceof Package) {
            objCallYailPrimitive = runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(W8), " is not bound in the current context"), "Unbound Variable");
        }
        return runtime.callComponentMethod(h0, v4, LList.list1(runtime.callComponentMethod(m0, n0, LList.list1(runtime.callYailPrimitive(moduleMethod2, LList.list2(objCallYailPrimitive, X8), Y8, "select list item")), Z8)), a9);
    }

    public Object ClockCLIPBOARD$Timer() {
        runtime.setThisForm();
        return runtime.callComponentMethod(k, n, LList.list1(runtime.callYailPrimitive(runtime.text$Mndeobfuscate, LList.list2(Component.TYPEFACE_GOOGLE_MATERIAL_DESIGN, "xznfidx"), w9, "deobfuscate text")), x9);
    }

    public Object ClockCLIPBOARD2$Timer() {
        runtime.setThisForm();
        return Scheme.applyToArgs.apply1(runtime.lookupGlobalVarInCurrentFormEnvironment(i, runtime.$Stthe$Mnnull$Mnvalue$St));
    }

    public Object SpecialKeyboard1$OnKeyboardChange(Object obj, Object obj2) {
        runtime.sanitizeComponentData(obj);
        runtime.sanitizeComponentData(obj2);
        runtime.setThisForm();
        return runtime.lookupGlobalVarInCurrentFormEnvironment(c, runtime.$Stthe$Mnnull$Mnvalue$St);
    }

    public Object WebPASSKELUAR$GotText(Object obj, Object obj2, Object obj3, Object obj4) {
        Object objE = a.e(obj, obj2, obj3, obj4);
        ModuleMethod moduleMethod = runtime.string$Mnsplit;
        if (objE instanceof Package) {
            objE = runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(T8), " is not bound in the current context"), "Unbound Variable");
        }
        Object objCallYailPrimitive = runtime.callYailPrimitive(moduleMethod, LList.list2(objE, runtime.callYailPrimitive(runtime.text$Mndeobfuscate, LList.list2("G", "jiwyuwdu"), Q9, "deobfuscate text")), R9, "split");
        ModuleMethod moduleMethod2 = runtime.yail$Mnlist$Mnget$Mnitem;
        boolean z10 = objCallYailPrimitive instanceof Package;
        SimpleSymbol simpleSymbol = W8;
        Object objSignalRuntimeError = z10 ? runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(simpleSymbol), " is not bound in the current context"), "Unbound Variable") : objCallYailPrimitive;
        IntNum intNum = X1;
        runtime.setAndCoerceProperty$Ex(N1, D1, runtime.callYailPrimitive(moduleMethod2, LList.list2(objSignalRuntimeError, intNum), S9, "select list item"), B);
        if (z10) {
            objCallYailPrimitive = runtime.signalRuntimeError(strings.stringAppend("The variable ", runtime.getDisplayRepresentation(simpleSymbol), " is not bound in the current context"), "Unbound Variable");
        }
        return runtime.callComponentMethod(z2, T9, LList.list2("keluar", runtime.callYailPrimitive(moduleMethod2, LList.list2(objCallYailPrimitive, intNum), U9, "select list item")), V9);
    }

    public Object ClockCEKSERVER$Timer() throws Throwable {
        runtime.setThisForm();
        Object objCallYailPrimitive = runtime.callYailPrimitive(runtime.yail$Mnequal$Qu, LList.list2(runtime.get$Mnproperty.apply2(N1, D1), "false"), ba, "=");
        Boolean bool = Boolean.FALSE;
        SimpleSymbol simpleSymbol = G2;
        if (objCallYailPrimitive == bool) {
            runtime.setAndCoerceProperty$Ex(q1, B0, Boolean.TRUE, m);
            SimpleSymbol simpleSymbol2 = fa;
            LList lList = LList.Empty;
            return runtime.callComponentMethod(simpleSymbol, simpleSymbol2, lList, lList);
        }
        Object objCallComponentMethod = runtime.callComponentMethod(m0, n0, LList.list1(runtime.callYailPrimitive(runtime.text$Mndeobfuscate, LList.list2("Wyx\u000b_q~\u0005r@\u001bYWL\u001b^ELhGHGmOMGhOG<b.\f\u0002\u007f1>kc%\u00044\b;7s\u001e=%sk#.#\u0005)/\u001e&+'\u001c=\u000e,B(J\u001fK5C2K0\u001b\u0010&-\u0002?94\u0007 \u00071W\n(O^", "jjpbdnef"), ca, "deobfuscate text")), da);
        SimpleSymbol simpleSymbol3 = B;
        SimpleSymbol simpleSymbol4 = O9;
        runtime.setAndCoerceProperty$Ex(simpleSymbol4, l0, objCallComponentMethod, simpleSymbol3);
        runtime.callComponentMethod(simpleSymbol, I2, LList.list1("Mohon Tunggu..."), ea);
        SimpleSymbol simpleSymbol5 = q0;
        LList lList2 = LList.Empty;
        return runtime.callComponentMethod(simpleSymbol4, simpleSymbol5, lList2, lList2);
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
        int i10 = 1 & ((environment == null ? 1 : 0) + 1);
        return (i10 == 0 ? i10 == 0 : !environment.isBound(symbol)) ? obj : this.form$Mnenvironment.get(symbol);
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
        Object objApply1 = Scheme.applyToArgs.apply1(GetNamedPart.getNamedPart.apply2(obj, f5364b));
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
            } catch (PermissionException e10) {
                e10.printStackTrace();
                boolean z10 = this == component;
                if (!z10 ? z10 : IsEqual.apply(str2, "PermissionNeeded")) {
                    processException(e10);
                    return false;
                }
                PermissionDenied(component, str2, e10.getPermissionNeeded());
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
    public void dispatchGenericEvent(Component component, String str, boolean z10, Object[] objArr) throws Throwable {
        Object objLookupInFormEnvironment = lookupInFormEnvironment(misc.string$To$Symbol(strings.stringAppend("any$", getSimpleName(component), "$", str)));
        Object obj = Boolean.FALSE;
        if (objLookupInFormEnvironment != obj) {
            try {
                Apply apply = Scheme.apply;
                if (z10) {
                    obj = Boolean.TRUE;
                }
                apply.apply2(objLookupInFormEnvironment, lists.cons(component, lists.cons(obj, LList.makeList(objArr, 0))));
            } catch (PermissionException e10) {
                e10.printStackTrace();
                boolean z11 = this == component;
                if (!z11 ? z11 : IsEqual.apply(str, "PermissionNeeded")) {
                    processException(e10);
                } else {
                    PermissionDenied(component, str, e10.getPermissionNeeded());
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
                } catch (ClassCastException e10) {
                    throw new WrongType(e10, "symbol->string", 1, car);
                }
            } catch (ClassCastException e11) {
                throw new WrongType(e11, "arg0", -2, objMakeList);
            }
        }
        Object objApply2 = apply.apply2(moduleMethod, LList.reverseInPlace(objMake));
        try {
            return misc.string$To$Symbol((CharSequence) objApply2);
        } catch (ClassCastException e12) {
            throw new WrongType(e12, "string->symbol", 1, objApply2);
        }
    }

    @Override // com.google.appinventor.components.runtime.Form
    public void $define() throws Throwable {
        Language.setDefaults(Scheme.getInstance());
        try {
            run();
        } catch (Exception e10) {
            androidLogForm(e10.getMessage());
            processException(e10);
        }
        CBT3 = this;
        addToFormEnvironment(f5363a, this);
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
            } catch (ClassCastException e11) {
                throw new WrongType(e11, "arg0", -2, cdr);
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
                } catch (ClassCastException e12) {
                    throw new WrongType(e12, "arg0", -2, objReverse2);
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
                        } catch (ClassCastException e13) {
                            throw new WrongType(e13, "add-to-form-environment", 0, objApply13);
                        }
                    } catch (ClassCastException e14) {
                        throw new WrongType(e14, "lookup-in-form-environment", 0, objApply15);
                    }
                } catch (ClassCastException e15) {
                    throw new WrongType(e15, "arg0", -2, cdr2);
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
                    } catch (ClassCastException e16) {
                        throw new WrongType(e16, "add-to-global-var-environment", 0, objApply16);
                    }
                } catch (ClassCastException e17) {
                    throw new WrongType(e17, "arg0", -2, objReverse3);
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
                } catch (ClassCastException e18) {
                    throw new WrongType(e18, "arg0", -2, cdr3);
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
                } catch (ClassCastException e19) {
                    throw new WrongType(e19, "arg0", -2, objReverse);
                }
            }
        } catch (YailRuntimeError e20) {
            processException(e20);
        }
    }
}
