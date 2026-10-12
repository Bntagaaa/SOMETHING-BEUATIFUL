package androidx.core.view;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ClipData;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContentInfo;
import android.view.Display;
import android.view.KeyEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.animation.PathInterpolator;
import androidx.annotation.DoNotInline;
import androidx.annotation.FloatRange;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;
import androidx.collection.SimpleArrayMap;
import androidx.core.R;
import androidx.core.util.Preconditions;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;

@SuppressLint({"PrivateConstructorForUtilityClass"})
/* loaded from: classes.dex */
public class ViewCompat {
    public static final int ACCESSIBILITY_LIVE_REGION_ASSERTIVE = 2;
    public static final int ACCESSIBILITY_LIVE_REGION_NONE = 0;
    public static final int ACCESSIBILITY_LIVE_REGION_POLITE = 1;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_AUTO = 0;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_NO = 2;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS = 4;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_YES = 1;

    @Deprecated
    public static final int LAYER_TYPE_HARDWARE = 2;

    @Deprecated
    public static final int LAYER_TYPE_NONE = 0;

    @Deprecated
    public static final int LAYER_TYPE_SOFTWARE = 1;
    public static final int LAYOUT_DIRECTION_INHERIT = 2;
    public static final int LAYOUT_DIRECTION_LOCALE = 3;
    public static final int LAYOUT_DIRECTION_LTR = 0;
    public static final int LAYOUT_DIRECTION_RTL = 1;

    @Deprecated
    public static final int MEASURED_HEIGHT_STATE_SHIFT = 16;

    @Deprecated
    public static final int MEASURED_SIZE_MASK = 16777215;

    @Deprecated
    public static final int MEASURED_STATE_MASK = -16777216;

    @Deprecated
    public static final int MEASURED_STATE_TOO_SMALL = 16777216;

    @Deprecated
    public static final int OVER_SCROLL_ALWAYS = 0;

    @Deprecated
    public static final int OVER_SCROLL_IF_CONTENT_SCROLLS = 1;

    @Deprecated
    public static final int OVER_SCROLL_NEVER = 2;
    public static final int SCROLL_AXIS_HORIZONTAL = 1;
    public static final int SCROLL_AXIS_NONE = 0;
    public static final int SCROLL_AXIS_VERTICAL = 2;
    public static final int SCROLL_INDICATOR_BOTTOM = 2;
    public static final int SCROLL_INDICATOR_END = 32;
    public static final int SCROLL_INDICATOR_LEFT = 4;
    public static final int SCROLL_INDICATOR_RIGHT = 8;
    public static final int SCROLL_INDICATOR_START = 16;
    public static final int SCROLL_INDICATOR_TOP = 1;
    public static final int TYPE_NON_TOUCH = 1;
    public static final int TYPE_TOUCH = 0;

    /* renamed from: a, reason: collision with root package name */
    public static Method f1314a;

    /* renamed from: b, reason: collision with root package name */
    public static Method f1315b;
    public static boolean c;
    public static WeakHashMap d;
    public static Method e;
    public static Field f;

    /* renamed from: g, reason: collision with root package name */
    public static boolean f1316g;
    public static ThreadLocal h;
    public static final int[] i;
    public static final androidx.core.view.h j;
    public static final a k;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public @interface FocusDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public @interface FocusRealDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public @interface FocusRelativeDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public @interface NestedScrollType {
    }

    public interface OnUnhandledKeyEventListenerCompat {
        boolean onUnhandledKeyEvent(@NonNull View view, @NonNull KeyEvent keyEvent);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public @interface ScrollAxis {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public @interface ScrollIndicators {
    }

    static {
        new AtomicInteger(1);
        d = null;
        f1316g = false;
        i = new int[]{R.id.accessibility_custom_action_0, R.id.accessibility_custom_action_1, R.id.accessibility_custom_action_2, R.id.accessibility_custom_action_3, R.id.accessibility_custom_action_4, R.id.accessibility_custom_action_5, R.id.accessibility_custom_action_6, R.id.accessibility_custom_action_7, R.id.accessibility_custom_action_8, R.id.accessibility_custom_action_9, R.id.accessibility_custom_action_10, R.id.accessibility_custom_action_11, R.id.accessibility_custom_action_12, R.id.accessibility_custom_action_13, R.id.accessibility_custom_action_14, R.id.accessibility_custom_action_15, R.id.accessibility_custom_action_16, R.id.accessibility_custom_action_17, R.id.accessibility_custom_action_18, R.id.accessibility_custom_action_19, R.id.accessibility_custom_action_20, R.id.accessibility_custom_action_21, R.id.accessibility_custom_action_22, R.id.accessibility_custom_action_23, R.id.accessibility_custom_action_24, R.id.accessibility_custom_action_25, R.id.accessibility_custom_action_26, R.id.accessibility_custom_action_27, R.id.accessibility_custom_action_28, R.id.accessibility_custom_action_29, R.id.accessibility_custom_action_30, R.id.accessibility_custom_action_31};
        j = new androidx.core.view.h();
        k = new a();
    }

    public static Rect e() {
        if (h == null) {
            h = new ThreadLocal();
        }
        Rect rect = (Rect) h.get();
        if (rect == null) {
            rect = new Rect();
            h.set(rect);
        }
        rect.setEmpty();
        return rect;
    }

    public static void setWindowInsetsAnimationCallback(@NonNull View view, @Nullable WindowInsetsAnimationCompat.Callback callback) {
        if (Build.VERSION.SDK_INT >= 30) {
            WindowInsetsAnimationCompat.b.setCallback(view, callback);
            return;
        }
        PathInterpolator pathInterpolator = WindowInsetsAnimationCompat.a.f;
        Object tag = view.getTag(R.id.tag_on_apply_window_listener);
        if (callback == null) {
            view.setTag(R.id.tag_window_insets_animation_callback, null);
            if (tag == null) {
                view.setOnApplyWindowInsetsListener(null);
                return;
            }
            return;
        }
        View.OnApplyWindowInsetsListener viewOnApplyWindowInsetsListenerC0017a = new WindowInsetsAnimationCompat.a.ViewOnApplyWindowInsetsListenerC0017a(view, callback);
        view.setTag(R.id.tag_window_insets_animation_callback, viewOnApplyWindowInsetsListenerC0017a);
        if (tag == null) {
            view.setOnApplyWindowInsetsListener(viewOnApplyWindowInsetsListenerC0017a);
        }
    }

    public static void saveAttributeDataForStyleable(@NonNull View view, @NonNull @SuppressLint({"ContextFirst"}) Context context, @NonNull int[] iArr, @Nullable AttributeSet attributeSet, @NonNull TypedArray typedArray, int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 29) {
            n.c(view, context, iArr, attributeSet, typedArray, i2, i3);
        }
    }

    @Deprecated
    public static boolean canScrollHorizontally(View view, int i2) {
        return view.canScrollHorizontally(i2);
    }

    @Deprecated
    public static boolean canScrollVertically(View view, int i2) {
        return view.canScrollVertically(i2);
    }

    @Deprecated
    public static int getOverScrollMode(View view) {
        return view.getOverScrollMode();
    }

    @Deprecated
    public static void setOverScrollMode(View view, int i2) {
        view.setOverScrollMode(i2);
    }

    @Deprecated
    public static void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        view.onPopulateAccessibilityEvent(accessibilityEvent);
    }

    @Deprecated
    public static void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        view.onInitializeAccessibilityEvent(accessibilityEvent);
    }

    public static void onInitializeAccessibilityNodeInfo(@NonNull View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        view.onInitializeAccessibilityNodeInfo(accessibilityNodeInfoCompat.unwrap());
    }

    public static void setAccessibilityDelegate(@NonNull View view, @Nullable AccessibilityDelegateCompat accessibilityDelegateCompat) {
        if (accessibilityDelegateCompat == null && (c(view) instanceof AccessibilityDelegateCompat.a)) {
            accessibilityDelegateCompat = new AccessibilityDelegateCompat();
        }
        view.setAccessibilityDelegate(accessibilityDelegateCompat == null ? null : accessibilityDelegateCompat.f1272b);
    }

    public static void setAutofillHints(@NonNull View view, @Nullable String... strArr) {
        if (Build.VERSION.SDK_INT >= 26) {
            l.j(view, strArr);
        }
    }

    @SuppressLint({"InlinedApi"})
    public static int getImportantForAutofill(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return l.b(view);
        }
        return 0;
    }

    public static void setImportantForAutofill(@NonNull View view, int i2) {
        if (Build.VERSION.SDK_INT >= 26) {
            l.l(view, i2);
        }
    }

    public static boolean isImportantForAutofill(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return l.f(view);
        }
        return true;
    }

    public static boolean hasAccessibilityDelegate(@NonNull View view) {
        return c(view) != null;
    }

    @Nullable
    public static AccessibilityDelegateCompat getAccessibilityDelegate(@NonNull View view) {
        View.AccessibilityDelegate accessibilityDelegateC = c(view);
        if (accessibilityDelegateC == null) {
            return null;
        }
        if (accessibilityDelegateC instanceof AccessibilityDelegateCompat.a) {
            return ((AccessibilityDelegateCompat.a) accessibilityDelegateC).f1273a;
        }
        return new AccessibilityDelegateCompat(accessibilityDelegateC);
    }

    public static void enableAccessibleClickableSpanSupport(@NonNull View view) {
        AccessibilityDelegateCompat accessibilityDelegate = getAccessibilityDelegate(view);
        if (accessibilityDelegate == null) {
            accessibilityDelegate = new AccessibilityDelegateCompat();
        }
        setAccessibilityDelegate(view, accessibilityDelegate);
    }

    public static View.AccessibilityDelegate c(View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return n.a(view);
        }
        if (f1316g) {
            return null;
        }
        if (f == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                f = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable unused) {
                f1316g = true;
                return null;
            }
        }
        try {
            Object obj = f.get(view);
            if (obj instanceof View.AccessibilityDelegate) {
                return (View.AccessibilityDelegate) obj;
            }
            return null;
        } catch (Throwable unused2) {
            f1316g = true;
            return null;
        }
    }

    public static boolean hasTransientState(@NonNull View view) {
        return d.i(view);
    }

    public static void setHasTransientState(@NonNull View view, boolean z) {
        d.r(view, z);
    }

    public static void postInvalidateOnAnimation(@NonNull View view) {
        d.k(view);
    }

    public static void postInvalidateOnAnimation(@NonNull View view, int i2, int i3, int i4, int i5) {
        d.l(view, i2, i3, i4, i5);
    }

    public static void postOnAnimation(@NonNull View view, @NonNull Runnable runnable) {
        d.m(view, runnable);
    }

    @SuppressLint({"LambdaLast"})
    public static void postOnAnimationDelayed(@NonNull View view, @NonNull Runnable runnable, long j2) {
        d.n(view, runnable, j2);
    }

    public static int getImportantForAccessibility(@NonNull View view) {
        return d.c(view);
    }

    @UiThread
    public static void setImportantForAccessibility(@NonNull View view, int i2) {
        d.s(view, i2);
    }

    public static boolean isImportantForAccessibility(@NonNull View view) {
        return i.n(view);
    }

    public static boolean performAccessibilityAction(@NonNull View view, int i2, @Nullable Bundle bundle) {
        return d.j(view, i2, bundle);
    }

    public static int addAccessibilityAction(@NonNull View view, @NonNull CharSequence charSequence, @NonNull AccessibilityViewCommand accessibilityViewCommand) {
        int id;
        ArrayList arrayListD = d(view);
        int i2 = 0;
        while (true) {
            if (i2 >= arrayListD.size()) {
                int i3 = -1;
                int i4 = 0;
                while (true) {
                    int[] iArr = i;
                    if (i4 >= iArr.length || i3 != -1) {
                        break;
                    }
                    int i5 = iArr[i4];
                    boolean z = true;
                    for (int i6 = 0; i6 < arrayListD.size(); i6++) {
                        z &= ((AccessibilityNodeInfoCompat.AccessibilityActionCompat) arrayListD.get(i6)).getId() != i5;
                    }
                    if (z) {
                        i3 = i5;
                    }
                    i4++;
                }
                id = i3;
            } else {
                if (TextUtils.equals(charSequence, ((AccessibilityNodeInfoCompat.AccessibilityActionCompat) arrayListD.get(i2)).getLabel())) {
                    id = ((AccessibilityNodeInfoCompat.AccessibilityActionCompat) arrayListD.get(i2)).getId();
                    break;
                }
                i2++;
            }
        }
        if (id != -1) {
            AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat = new AccessibilityNodeInfoCompat.AccessibilityActionCompat(id, charSequence, accessibilityViewCommand);
            AccessibilityDelegateCompat accessibilityDelegate = getAccessibilityDelegate(view);
            if (accessibilityDelegate == null) {
                accessibilityDelegate = new AccessibilityDelegateCompat();
            }
            setAccessibilityDelegate(view, accessibilityDelegate);
            g(accessibilityActionCompat.getId(), view);
            d(view).add(accessibilityActionCompat);
            f(0, view);
        }
        return id;
    }

    public static void replaceAccessibilityAction(@NonNull View view, @NonNull AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat, @Nullable CharSequence charSequence, @Nullable AccessibilityViewCommand accessibilityViewCommand) {
        if (accessibilityViewCommand == null && charSequence == null) {
            removeAccessibilityAction(view, accessibilityActionCompat.getId());
            return;
        }
        AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompatCreateReplacementAction = accessibilityActionCompat.createReplacementAction(charSequence, accessibilityViewCommand);
        AccessibilityDelegateCompat accessibilityDelegate = getAccessibilityDelegate(view);
        if (accessibilityDelegate == null) {
            accessibilityDelegate = new AccessibilityDelegateCompat();
        }
        setAccessibilityDelegate(view, accessibilityDelegate);
        g(accessibilityActionCompatCreateReplacementAction.getId(), view);
        d(view).add(accessibilityActionCompatCreateReplacementAction);
        f(0, view);
    }

    public static void removeAccessibilityAction(@NonNull View view, int i2) {
        g(i2, view);
        f(0, view);
    }

    public static void g(int i2, View view) {
        ArrayList arrayListD = d(view);
        for (int i3 = 0; i3 < arrayListD.size(); i3++) {
            if (((AccessibilityNodeInfoCompat.AccessibilityActionCompat) arrayListD.get(i3)).getId() == i2) {
                arrayListD.remove(i3);
                return;
            }
        }
    }

    public static ArrayList d(View view) {
        int i2 = R.id.tag_accessibility_actions;
        ArrayList arrayList = (ArrayList) view.getTag(i2);
        if (arrayList != null) {
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        view.setTag(i2, arrayList2);
        return arrayList2;
    }

    @Nullable
    public static AccessibilityNodeProviderCompat getAccessibilityNodeProvider(@NonNull View view) {
        AccessibilityNodeProvider accessibilityNodeProviderA = d.a(view);
        if (accessibilityNodeProviderA != null) {
            return new AccessibilityNodeProviderCompat(accessibilityNodeProviderA);
        }
        return null;
    }

    @Deprecated
    public static float getAlpha(View view) {
        return view.getAlpha();
    }

    @Deprecated
    public static void setLayerType(View view, int i2, Paint paint) {
        view.setLayerType(i2, paint);
    }

    @Deprecated
    public static int getLayerType(View view) {
        return view.getLayerType();
    }

    public static int getLabelFor(@NonNull View view) {
        return e.c(view);
    }

    public static void setLabelFor(@NonNull View view, @IdRes int i2) {
        e.h(view, i2);
    }

    public static void setLayerPaint(@NonNull View view, @Nullable Paint paint) {
        e.i(view, paint);
    }

    public static int getLayoutDirection(@NonNull View view) {
        return e.d(view);
    }

    public static void setLayoutDirection(@NonNull View view, int i2) {
        e.j(view, i2);
    }

    @Nullable
    public static ViewParent getParentForAccessibility(@NonNull View view) {
        return d.f(view);
    }

    @NonNull
    public static <T extends View> T requireViewById(@NonNull View view, @IdRes int i2) {
        if (Build.VERSION.SDK_INT >= 28) {
            return (T) m.f(view, i2);
        }
        T t = (T) view.findViewById(i2);
        if (t != null) {
            return t;
        }
        throw new IllegalArgumentException("ID does not reference a View inside this View");
    }

    @Deprecated
    public static boolean isOpaque(View view) {
        return view.isOpaque();
    }

    @Deprecated
    public static int resolveSizeAndState(int i2, int i3, int i4) {
        return View.resolveSizeAndState(i2, i3, i4);
    }

    @Deprecated
    public static int getMeasuredWidthAndState(View view) {
        return view.getMeasuredWidthAndState();
    }

    @Deprecated
    public static int getMeasuredHeightAndState(View view) {
        return view.getMeasuredHeightAndState();
    }

    @Deprecated
    public static int getMeasuredState(View view) {
        return view.getMeasuredState();
    }

    @Deprecated
    public static int combineMeasuredStates(int i2, int i3) {
        return View.combineMeasuredStates(i2, i3);
    }

    public static int getAccessibilityLiveRegion(@NonNull View view) {
        return g.a(view);
    }

    public static void setAccessibilityLiveRegion(@NonNull View view, int i2) {
        g.f(view, i2);
    }

    @Px
    public static int getPaddingStart(@NonNull View view) {
        return e.f(view);
    }

    @Px
    public static int getPaddingEnd(@NonNull View view) {
        return e.e(view);
    }

    public static void setPaddingRelative(@NonNull View view, @Px int i2, @Px int i3, @Px int i4, @Px int i5) {
        e.k(view, i2, i3, i4, i5);
    }

    public static void a() {
        try {
            f1314a = View.class.getDeclaredMethod("dispatchStartTemporaryDetach", new Class[0]);
            f1315b = View.class.getDeclaredMethod("dispatchFinishTemporaryDetach", new Class[0]);
        } catch (NoSuchMethodException e2) {
            Log.e("ViewCompat", "Couldn't find method", e2);
        }
        c = true;
    }

    public static void dispatchStartTemporaryDetach(@NonNull View view) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (Build.VERSION.SDK_INT >= 24) {
            k.c(view);
            return;
        }
        if (!c) {
            a();
        }
        Method method = f1314a;
        if (method != null) {
            try {
                method.invoke(view, new Object[0]);
                return;
            } catch (Exception e2) {
                Log.d("ViewCompat", "Error calling dispatchStartTemporaryDetach", e2);
                return;
            }
        }
        view.onStartTemporaryDetach();
    }

    public static void dispatchFinishTemporaryDetach(@NonNull View view) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (Build.VERSION.SDK_INT >= 24) {
            k.b(view);
            return;
        }
        if (!c) {
            a();
        }
        Method method = f1315b;
        if (method != null) {
            try {
                method.invoke(view, new Object[0]);
                return;
            } catch (Exception e2) {
                Log.d("ViewCompat", "Error calling dispatchFinishTemporaryDetach", e2);
                return;
            }
        }
        view.onFinishTemporaryDetach();
    }

    @Deprecated
    public static float getTranslationX(View view) {
        return view.getTranslationX();
    }

    @Deprecated
    public static float getTranslationY(View view) {
        return view.getTranslationY();
    }

    @Nullable
    @Deprecated
    public static Matrix getMatrix(View view) {
        return view.getMatrix();
    }

    public static int getMinimumWidth(@NonNull View view) {
        return d.e(view);
    }

    public static int getMinimumHeight(@NonNull View view) {
        return d.d(view);
    }

    @NonNull
    public static ViewPropertyAnimatorCompat animate(@NonNull View view) {
        if (d == null) {
            d = new WeakHashMap();
        }
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = (ViewPropertyAnimatorCompat) d.get(view);
        if (viewPropertyAnimatorCompat != null) {
            return viewPropertyAnimatorCompat;
        }
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2 = new ViewPropertyAnimatorCompat(view);
        d.put(view, viewPropertyAnimatorCompat2);
        return viewPropertyAnimatorCompat2;
    }

    @Deprecated
    public static void setTranslationX(View view, float f2) {
        view.setTranslationX(f2);
    }

    @Deprecated
    public static void setTranslationY(View view, float f2) {
        view.setTranslationY(f2);
    }

    @Deprecated
    public static void setAlpha(View view, @FloatRange(from = 0.0d, to = 1.0d) float f2) {
        view.setAlpha(f2);
    }

    @Deprecated
    public static void setX(View view, float f2) {
        view.setX(f2);
    }

    @Deprecated
    public static void setY(View view, float f2) {
        view.setY(f2);
    }

    @Deprecated
    public static void setRotation(View view, float f2) {
        view.setRotation(f2);
    }

    @Deprecated
    public static void setRotationX(View view, float f2) {
        view.setRotationX(f2);
    }

    @Deprecated
    public static void setRotationY(View view, float f2) {
        view.setRotationY(f2);
    }

    @Deprecated
    public static void setScaleX(View view, float f2) {
        view.setScaleX(f2);
    }

    @Deprecated
    public static void setScaleY(View view, float f2) {
        view.setScaleY(f2);
    }

    @Deprecated
    public static float getPivotX(View view) {
        return view.getPivotX();
    }

    @Deprecated
    public static void setPivotX(View view, float f2) {
        view.setPivotX(f2);
    }

    @Deprecated
    public static float getPivotY(View view) {
        return view.getPivotY();
    }

    @Deprecated
    public static void setPivotY(View view, float f2) {
        view.setPivotY(f2);
    }

    @Deprecated
    public static float getRotation(View view) {
        return view.getRotation();
    }

    @Deprecated
    public static float getRotationX(View view) {
        return view.getRotationX();
    }

    @Deprecated
    public static float getRotationY(View view) {
        return view.getRotationY();
    }

    @Deprecated
    public static float getScaleX(View view) {
        return view.getScaleX();
    }

    @Deprecated
    public static float getScaleY(View view) {
        return view.getScaleY();
    }

    @Deprecated
    public static float getX(View view) {
        return view.getX();
    }

    @Deprecated
    public static float getY(View view) {
        return view.getY();
    }

    public static void setElevation(@NonNull View view, float f2) {
        i.r(view, f2);
    }

    public static float getElevation(@NonNull View view) {
        return i.i(view);
    }

    public static void setTranslationZ(@NonNull View view, float f2) {
        i.v(view, f2);
    }

    public static float getTranslationZ(@NonNull View view) {
        return i.k(view);
    }

    public static void setTransitionName(@NonNull View view, @Nullable String str) {
        i.u(view, str);
    }

    @Nullable
    public static String getTransitionName(@NonNull View view) {
        return i.j(view);
    }

    @Deprecated
    public static int getWindowSystemUiVisibility(@NonNull View view) {
        return d.g(view);
    }

    public static void requestApplyInsets(@NonNull View view) {
        h.c(view);
    }

    @SuppressLint({"BanUncheckedReflection"})
    @Deprecated
    public static void setChildrenDrawingOrderEnabled(ViewGroup viewGroup, boolean z) throws IllegalAccessException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (e == null) {
            try {
                e = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException e2) {
                Log.e("ViewCompat", "Unable to find childrenDrawingOrderEnabled", e2);
            }
            e.setAccessible(true);
        }
        try {
            e.invoke(viewGroup, Boolean.valueOf(z));
        } catch (IllegalAccessException e3) {
            Log.e("ViewCompat", "Unable to invoke childrenDrawingOrderEnabled", e3);
        } catch (IllegalArgumentException e4) {
            Log.e("ViewCompat", "Unable to invoke childrenDrawingOrderEnabled", e4);
        } catch (InvocationTargetException e5) {
            Log.e("ViewCompat", "Unable to invoke childrenDrawingOrderEnabled", e5);
        }
    }

    public static boolean getFitsSystemWindows(@NonNull View view) {
        return d.b(view);
    }

    @Deprecated
    public static void setFitsSystemWindows(View view, boolean z) {
        view.setFitsSystemWindows(z);
    }

    @Deprecated
    public static void jumpDrawablesToCurrentState(View view) {
        view.jumpDrawablesToCurrentState();
    }

    public static void setOnApplyWindowInsetsListener(@NonNull View view, @Nullable OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        i.t(view, onApplyWindowInsetsListener);
    }

    @NonNull
    public static WindowInsetsCompat onApplyWindowInsets(@NonNull View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
        WindowInsets windowInsets = windowInsetsCompat.toWindowInsets();
        if (windowInsets != null) {
            WindowInsets windowInsetsB = h.b(view, windowInsets);
            if (!windowInsetsB.equals(windowInsets)) {
                return WindowInsetsCompat.toWindowInsetsCompat(windowInsetsB, view);
            }
        }
        return windowInsetsCompat;
    }

    @NonNull
    public static WindowInsetsCompat dispatchApplyWindowInsets(@NonNull View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
        WindowInsets windowInsets = windowInsetsCompat.toWindowInsets();
        if (windowInsets != null) {
            WindowInsets windowInsetsA = h.a(view, windowInsets);
            if (!windowInsetsA.equals(windowInsets)) {
                return WindowInsetsCompat.toWindowInsetsCompat(windowInsetsA, view);
            }
        }
        return windowInsetsCompat;
    }

    public static void setSystemGestureExclusionRects(@NonNull View view, @NonNull List<Rect> list) {
        if (Build.VERSION.SDK_INT >= 29) {
            n.d(view, list);
        }
    }

    @NonNull
    public static List<Rect> getSystemGestureExclusionRects(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return n.b(view);
        }
        return Collections.EMPTY_LIST;
    }

    @Nullable
    public static WindowInsetsCompat getRootWindowInsets(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 23) {
            return j.getRootWindowInsets(view);
        }
        return i.getRootWindowInsets(view);
    }

    @NonNull
    public static WindowInsetsCompat computeSystemWindowInsets(@NonNull View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull Rect rect) {
        return i.b(view, windowInsetsCompat, rect);
    }

    @Nullable
    @Deprecated
    public static WindowInsetsControllerCompat getWindowInsetsController(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 30) {
            return o.getWindowInsetsController(view);
        }
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                Window window = ((Activity) context).getWindow();
                if (window != null) {
                    return WindowCompat.getInsetsController(window, view);
                }
                return null;
            }
        }
        return null;
    }

    public static void setOnReceiveContentListener(@NonNull View view, @Nullable String[] strArr, @Nullable OnReceiveContentListener onReceiveContentListener) {
        if (Build.VERSION.SDK_INT >= 31) {
            p.setOnReceiveContentListener(view, strArr, onReceiveContentListener);
            return;
        }
        if (strArr == null || strArr.length == 0) {
            strArr = null;
        }
        boolean z = false;
        if (onReceiveContentListener != null) {
            Preconditions.checkArgument(strArr != null, "When the listener is set, MIME types must also be set");
        }
        if (strArr != null) {
            int length = strArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                if (strArr[i2].startsWith("*")) {
                    z = true;
                    break;
                }
                i2++;
            }
            Preconditions.checkArgument(!z, "A MIME type set here must not start with *: " + Arrays.toString(strArr));
        }
        view.setTag(R.id.tag_on_receive_content_mime_types, strArr);
        view.setTag(R.id.tag_on_receive_content_listener, onReceiveContentListener);
    }

    @Nullable
    public static String[] getOnReceiveContentMimeTypes(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 31) {
            return p.getReceiveContentMimeTypes(view);
        }
        return (String[]) view.getTag(R.id.tag_on_receive_content_mime_types);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public static ContentInfoCompat performReceiveContent(@NonNull View view, @NonNull ContentInfoCompat contentInfoCompat) {
        if (Log.isLoggable("ViewCompat", 3)) {
            Log.d("ViewCompat", "performReceiveContent: " + contentInfoCompat + ", view=" + view.getClass().getSimpleName() + "[" + view.getId() + "]");
        }
        if (Build.VERSION.SDK_INT >= 31) {
            return p.performReceiveContent(view, contentInfoCompat);
        }
        OnReceiveContentListener onReceiveContentListener = (OnReceiveContentListener) view.getTag(R.id.tag_on_receive_content_listener);
        OnReceiveContentViewBehavior onReceiveContentViewBehavior = j;
        if (onReceiveContentListener != null) {
            ContentInfoCompat contentInfoCompatOnReceiveContent = onReceiveContentListener.onReceiveContent(view, contentInfoCompat);
            if (contentInfoCompatOnReceiveContent == null) {
                return null;
            }
            if (view instanceof OnReceiveContentViewBehavior) {
                onReceiveContentViewBehavior = (OnReceiveContentViewBehavior) view;
            }
            return onReceiveContentViewBehavior.onReceiveContent(contentInfoCompatOnReceiveContent);
        }
        if (view instanceof OnReceiveContentViewBehavior) {
            onReceiveContentViewBehavior = (OnReceiveContentViewBehavior) view;
        }
        return onReceiveContentViewBehavior.onReceiveContent(contentInfoCompat);
    }

    @RequiresApi(31)
    public static final class p {
        private p() {
        }

        @DoNotInline
        public static void setOnReceiveContentListener(@NonNull View view, @Nullable String[] strArr, @Nullable OnReceiveContentListener onReceiveContentListener) {
            if (onReceiveContentListener == null) {
                view.setOnReceiveContentListener(strArr, null);
            } else {
                view.setOnReceiveContentListener(strArr, new q(onReceiveContentListener));
            }
        }

        @Nullable
        @DoNotInline
        public static String[] getReceiveContentMimeTypes(@NonNull View view) {
            return view.getReceiveContentMimeTypes();
        }

        @Nullable
        @DoNotInline
        public static ContentInfoCompat performReceiveContent(@NonNull View view, @NonNull ContentInfoCompat contentInfoCompat) {
            ContentInfo contentInfo = contentInfoCompat.toContentInfo();
            ContentInfo contentInfoPerformReceiveContent = view.performReceiveContent(contentInfo);
            if (contentInfoPerformReceiveContent == null) {
                return null;
            }
            return contentInfoPerformReceiveContent == contentInfo ? contentInfoCompat : ContentInfoCompat.toContentInfoCompat(contentInfoPerformReceiveContent);
        }
    }

    @RequiresApi(31)
    public static final class q implements android.view.OnReceiveContentListener {

        /* renamed from: a, reason: collision with root package name */
        public final OnReceiveContentListener f1322a;

        public q(OnReceiveContentListener onReceiveContentListener) {
            this.f1322a = onReceiveContentListener;
        }

        @Override // android.view.OnReceiveContentListener
        @Nullable
        public ContentInfo onReceiveContent(@NonNull View view, @NonNull ContentInfo contentInfo) {
            ContentInfoCompat contentInfoCompat = ContentInfoCompat.toContentInfoCompat(contentInfo);
            ContentInfoCompat contentInfoCompatOnReceiveContent = this.f1322a.onReceiveContent(view, contentInfoCompat);
            if (contentInfoCompatOnReceiveContent == null) {
                return null;
            }
            return contentInfoCompatOnReceiveContent == contentInfoCompat ? contentInfo : contentInfoCompatOnReceiveContent.toContentInfo();
        }
    }

    @Deprecated
    public static void setSaveFromParentEnabled(View view, boolean z) {
        view.setSaveFromParentEnabled(z);
    }

    @Deprecated
    public static void setActivated(View view, boolean z) {
        view.setActivated(z);
    }

    public static boolean hasOverlappingRendering(@NonNull View view) {
        return d.h(view);
    }

    public static boolean isPaddingRelative(@NonNull View view) {
        return e.g(view);
    }

    public static void setBackground(@NonNull View view, @Nullable Drawable drawable) {
        d.q(view, drawable);
    }

    @Nullable
    public static ColorStateList getBackgroundTintList(@NonNull View view) {
        return i.g(view);
    }

    public static void setBackgroundTintList(@NonNull View view, @Nullable ColorStateList colorStateList) {
        int i2 = Build.VERSION.SDK_INT;
        i.p(view, colorStateList);
        if (i2 == 21) {
            Drawable background = view.getBackground();
            boolean z = (i.g(view) == null && i.h(view) == null) ? false : true;
            if (background == null || !z) {
                return;
            }
            if (background.isStateful()) {
                background.setState(view.getDrawableState());
            }
            d.q(view, background);
        }
    }

    @Nullable
    public static PorterDuff.Mode getBackgroundTintMode(@NonNull View view) {
        return i.h(view);
    }

    public static void setBackgroundTintMode(@NonNull View view, @Nullable PorterDuff.Mode mode) {
        int i2 = Build.VERSION.SDK_INT;
        i.q(view, mode);
        if (i2 == 21) {
            Drawable background = view.getBackground();
            boolean z = (i.g(view) == null && i.h(view) == null) ? false : true;
            if (background == null || !z) {
                return;
            }
            if (background.isStateful()) {
                background.setState(view.getDrawableState());
            }
            d.q(view, background);
        }
    }

    public static void setNestedScrollingEnabled(@NonNull View view, boolean z) {
        i.s(view, z);
    }

    public static boolean isNestedScrollingEnabled(@NonNull View view) {
        return i.o(view);
    }

    public static boolean startNestedScroll(@NonNull View view, int i2) {
        return i.x(view, i2);
    }

    public static void stopNestedScroll(@NonNull View view) {
        i.y(view);
    }

    public static boolean hasNestedScrollingParent(@NonNull View view) {
        return i.m(view);
    }

    public static boolean dispatchNestedScroll(@NonNull View view, int i2, int i3, int i4, int i5, @Nullable int[] iArr) {
        return i.f(view, i2, i3, i4, i5, iArr);
    }

    public static boolean dispatchNestedPreScroll(@NonNull View view, int i2, int i3, @Nullable int[] iArr, @Nullable int[] iArr2) {
        return i.e(view, i2, i3, iArr, iArr2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean startNestedScroll(@NonNull View view, int i2, int i3) {
        if (view instanceof NestedScrollingChild2) {
            return ((NestedScrollingChild2) view).startNestedScroll(i2, i3);
        }
        if (i3 == 0) {
            return startNestedScroll(view, i2);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void stopNestedScroll(@NonNull View view, int i2) {
        if (view instanceof NestedScrollingChild2) {
            ((NestedScrollingChild2) view).stopNestedScroll(i2);
        } else if (i2 == 0) {
            stopNestedScroll(view);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean hasNestedScrollingParent(@NonNull View view, int i2) {
        if (view instanceof NestedScrollingChild2) {
            ((NestedScrollingChild2) view).hasNestedScrollingParent(i2);
            return false;
        }
        if (i2 == 0) {
            return hasNestedScrollingParent(view);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void dispatchNestedScroll(@NonNull View view, int i2, int i3, int i4, int i5, @Nullable int[] iArr, int i6, @NonNull int[] iArr2) {
        if (view instanceof NestedScrollingChild3) {
            ((NestedScrollingChild3) view).dispatchNestedScroll(i2, i3, i4, i5, iArr, i6, iArr2);
        } else {
            dispatchNestedScroll(view, i2, i3, i4, i5, iArr, i6);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean dispatchNestedScroll(@NonNull View view, int i2, int i3, int i4, int i5, @Nullable int[] iArr, int i6) {
        if (view instanceof NestedScrollingChild2) {
            return ((NestedScrollingChild2) view).dispatchNestedScroll(i2, i3, i4, i5, iArr, i6);
        }
        if (i6 == 0) {
            return dispatchNestedScroll(view, i2, i3, i4, i5, iArr);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean dispatchNestedPreScroll(@NonNull View view, int i2, int i3, @Nullable int[] iArr, @Nullable int[] iArr2, int i4) {
        if (view instanceof NestedScrollingChild2) {
            return ((NestedScrollingChild2) view).dispatchNestedPreScroll(i2, i3, iArr, iArr2, i4);
        }
        if (i4 == 0) {
            return dispatchNestedPreScroll(view, i2, i3, iArr, iArr2);
        }
        return false;
    }

    public static boolean dispatchNestedFling(@NonNull View view, float f2, float f3, boolean z) {
        return i.c(view, f2, f3, z);
    }

    public static boolean dispatchNestedPreFling(@NonNull View view, float f2, float f3) {
        return i.d(view, f2, f3);
    }

    public static boolean isInLayout(@NonNull View view) {
        return f.b(view);
    }

    public static boolean isLaidOut(@NonNull View view) {
        return g.c(view);
    }

    public static boolean isLayoutDirectionResolved(@NonNull View view) {
        return g.d(view);
    }

    public static float getZ(@NonNull View view) {
        return i.l(view);
    }

    public static void setZ(@NonNull View view, float f2) {
        i.w(view, f2);
    }

    public static void offsetTopAndBottom(@NonNull View view, int i2) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 23) {
            view.offsetTopAndBottom(i2);
            return;
        }
        Rect rectE = e();
        Object parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            rectE.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z = !rectE.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        } else {
            z = false;
        }
        view.offsetTopAndBottom(i2);
        if (view.getVisibility() == 0) {
            h(view);
            Object parent2 = view.getParent();
            if (parent2 instanceof View) {
                h((View) parent2);
            }
        }
        if (z && rectE.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((View) parent).invalidate(rectE);
        }
    }

    public static void offsetLeftAndRight(@NonNull View view, int i2) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 23) {
            view.offsetLeftAndRight(i2);
            return;
        }
        Rect rectE = e();
        Object parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            rectE.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z = !rectE.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        } else {
            z = false;
        }
        view.offsetLeftAndRight(i2);
        if (view.getVisibility() == 0) {
            h(view);
            Object parent2 = view.getParent();
            if (parent2 instanceof View) {
                h((View) parent2);
            }
        }
        if (z && rectE.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((View) parent).invalidate(rectE);
        }
    }

    public static void h(View view) {
        float translationY = view.getTranslationY();
        view.setTranslationY(1.0f + translationY);
        view.setTranslationY(translationY);
    }

    public static void setClipBounds(@NonNull View view, @Nullable Rect rect) {
        f.c(view, rect);
    }

    @Nullable
    public static Rect getClipBounds(@NonNull View view) {
        return f.a(view);
    }

    public static boolean isAttachedToWindow(@NonNull View view) {
        return g.b(view);
    }

    public static boolean hasOnClickListeners(@NonNull View view) {
        return c.a(view);
    }

    public static void setScrollIndicators(@NonNull View view, int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            j.b(view, i2);
        }
    }

    public static void setScrollIndicators(@NonNull View view, int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 23) {
            j.c(view, i2, i3);
        }
    }

    public static int getScrollIndicators(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 23) {
            return j.a(view);
        }
        return 0;
    }

    public static void setPointerIcon(@NonNull View view, @Nullable PointerIconCompat pointerIconCompat) {
        if (Build.VERSION.SDK_INT >= 24) {
            k.d(view, androidx.core.os.f.j(pointerIconCompat != null ? pointerIconCompat.getPointerIcon() : null));
        }
    }

    @Nullable
    public static Display getDisplay(@NonNull View view) {
        return e.b(view);
    }

    public static void setTooltipText(@NonNull View view, @Nullable CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            l.o(view, charSequence);
        }
    }

    public static boolean startDragAndDrop(@NonNull View view, @Nullable ClipData clipData, @NonNull View.DragShadowBuilder dragShadowBuilder, @Nullable Object obj, int i2) {
        if (Build.VERSION.SDK_INT >= 24) {
            return k.e(view, clipData, dragShadowBuilder, obj, i2);
        }
        return view.startDrag(clipData, dragShadowBuilder, obj, i2);
    }

    public static void cancelDragAndDrop(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 24) {
            k.a(view);
        }
    }

    public static void updateDragShadow(@NonNull View view, @NonNull View.DragShadowBuilder dragShadowBuilder) {
        if (Build.VERSION.SDK_INT >= 24) {
            k.f(view, dragShadowBuilder);
        }
    }

    public static int getNextClusterForwardId(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return l.c(view);
        }
        return -1;
    }

    public static void setNextClusterForwardId(@NonNull View view, int i2) {
        if (Build.VERSION.SDK_INT >= 26) {
            l.n(view, i2);
        }
    }

    public static boolean isKeyboardNavigationCluster(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return l.g(view);
        }
        return false;
    }

    public static void setKeyboardNavigationCluster(@NonNull View view, boolean z) {
        if (Build.VERSION.SDK_INT >= 26) {
            l.m(view, z);
        }
    }

    public static boolean isFocusedByDefault(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return l.e(view);
        }
        return false;
    }

    public static void setFocusedByDefault(@NonNull View view, boolean z) {
        if (Build.VERSION.SDK_INT >= 26) {
            l.k(view, z);
        }
    }

    @Nullable
    public static View keyboardNavigationClusterSearch(@NonNull View view, @Nullable View view2, int i2) {
        if (Build.VERSION.SDK_INT >= 26) {
            return l.h(view, view2, i2);
        }
        return null;
    }

    public static void addKeyboardNavigationClusters(@NonNull View view, @NonNull Collection<View> collection, int i2) {
        if (Build.VERSION.SDK_INT >= 26) {
            l.a(view, collection, i2);
        }
    }

    public static boolean restoreDefaultFocus(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return l.i(view);
        }
        return view.requestFocus();
    }

    public static boolean hasExplicitFocusable(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return l.d(view);
        }
        return view.hasFocusable();
    }

    public static int generateViewId() {
        return e.a();
    }

    public static void addOnUnhandledKeyEventListener(@NonNull View view, @NonNull OnUnhandledKeyEventListenerCompat onUnhandledKeyEventListenerCompat) {
        if (Build.VERSION.SDK_INT >= 28) {
            m.a(view, onUnhandledKeyEventListenerCompat);
            return;
        }
        int i2 = R.id.tag_unhandled_key_listeners;
        ArrayList arrayList = (ArrayList) view.getTag(i2);
        if (arrayList == null) {
            arrayList = new ArrayList();
            view.setTag(i2, arrayList);
        }
        arrayList.add(onUnhandledKeyEventListenerCompat);
        if (arrayList.size() == 1) {
            ArrayList arrayList2 = r.d;
            synchronized (arrayList2) {
                try {
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        if (((WeakReference) it.next()).get() == view) {
                            return;
                        }
                    }
                    r.d.add(new WeakReference(view));
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static void removeOnUnhandledKeyEventListener(@NonNull View view, @NonNull OnUnhandledKeyEventListenerCompat onUnhandledKeyEventListenerCompat) {
        if (Build.VERSION.SDK_INT >= 28) {
            m.e(view, onUnhandledKeyEventListenerCompat);
            return;
        }
        ArrayList arrayList = (ArrayList) view.getTag(R.id.tag_unhandled_key_listeners);
        if (arrayList == null) {
            return;
        }
        arrayList.remove(onUnhandledKeyEventListenerCompat);
        if (arrayList.size() != 0) {
            return;
        }
        synchronized (r.d) {
            int i2 = 0;
            while (true) {
                try {
                    ArrayList arrayList2 = r.d;
                    if (i2 >= arrayList2.size()) {
                        return;
                    }
                    if (((WeakReference) arrayList2.get(i2)).get() == view) {
                        arrayList2.remove(i2);
                        return;
                    }
                    i2++;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Deprecated
    public ViewCompat() {
    }

    public static boolean b(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        ArrayList arrayList = r.d;
        int i2 = R.id.tag_unhandled_key_event_manager;
        r rVar = (r) view.getTag(i2);
        if (rVar == null) {
            rVar = new r();
            view.setTag(i2, rVar);
        }
        if (keyEvent.getAction() == 0) {
            WeakHashMap weakHashMap = rVar.f1323a;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            ArrayList arrayList2 = r.d;
            if (!arrayList2.isEmpty()) {
                synchronized (arrayList2) {
                    try {
                        if (rVar.f1323a == null) {
                            rVar.f1323a = new WeakHashMap();
                        }
                        for (int size = arrayList2.size() - 1; size >= 0; size--) {
                            ArrayList arrayList3 = r.d;
                            View view2 = (View) ((WeakReference) arrayList3.get(size)).get();
                            if (view2 == null) {
                                arrayList3.remove(size);
                            } else {
                                rVar.f1323a.put(view2, Boolean.TRUE);
                                for (ViewParent parent = view2.getParent(); parent instanceof View; parent = parent.getParent()) {
                                    rVar.f1323a.put((View) parent, Boolean.TRUE);
                                }
                            }
                        }
                    } finally {
                    }
                }
            }
        }
        View viewA = rVar.a(view, keyEvent);
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (viewA != null && !KeyEvent.isModifierKey(keyCode)) {
                if (rVar.f1324b == null) {
                    rVar.f1324b = new SparseArray();
                }
                rVar.f1324b.put(keyCode, new WeakReference(viewA));
            }
        }
        return viewA != null;
    }

    @UiThread
    public static boolean isScreenReaderFocusable(@NonNull View view) {
        Boolean bool = (Boolean) new androidx.core.view.i(R.id.tag_screen_reader_focusable, Boolean.class, 0, 28).c(view);
        return bool != null && bool.booleanValue();
    }

    @UiThread
    public static void setScreenReaderFocusable(@NonNull View view, boolean z) {
        new androidx.core.view.i(R.id.tag_screen_reader_focusable, Boolean.class, 0, 28).d(view, Boolean.valueOf(z));
    }

    @Nullable
    @UiThread
    public static CharSequence getAccessibilityPaneTitle(@NonNull View view) {
        return (CharSequence) new androidx.core.view.j(R.id.tag_accessibility_pane_title, CharSequence.class, 8, 28).c(view);
    }

    @UiThread
    public static void setAccessibilityPaneTitle(@NonNull View view, @Nullable CharSequence charSequence) {
        new androidx.core.view.j(R.id.tag_accessibility_pane_title, CharSequence.class, 8, 28).d(view, charSequence);
        a aVar = k;
        if (charSequence != null) {
            aVar.f1317a.put(view, Boolean.valueOf(view.isShown() && view.getWindowVisibility() == 0));
            view.addOnAttachStateChangeListener(aVar);
            if (g.b(view)) {
                view.getViewTreeObserver().addOnGlobalLayoutListener(aVar);
                return;
            }
            return;
        }
        aVar.f1317a.remove(view);
        view.removeOnAttachStateChangeListener(aVar);
        d.o(view.getViewTreeObserver(), aVar);
    }

    @Nullable
    @UiThread
    public static CharSequence getStateDescription(@NonNull View view) {
        return (CharSequence) new androidx.core.view.k(R.id.tag_state_description, CharSequence.class, 64, 30).c(view);
    }

    @UiThread
    public static void setStateDescription(@NonNull View view, @Nullable CharSequence charSequence) {
        new androidx.core.view.k(R.id.tag_state_description, CharSequence.class, 64, 30).d(view, charSequence);
    }

    @UiThread
    public static boolean isAccessibilityHeading(@NonNull View view) {
        Boolean bool = (Boolean) new androidx.core.view.l(R.id.tag_accessibility_heading, Boolean.class, 0, 28).c(view);
        return bool != null && bool.booleanValue();
    }

    @UiThread
    public static void setAccessibilityHeading(@NonNull View view, boolean z) {
        new androidx.core.view.l(R.id.tag_accessibility_heading, Boolean.class, 0, 28).d(view, Boolean.valueOf(z));
    }

    public static abstract class b<T> {

        /* renamed from: a, reason: collision with root package name */
        public final int f1318a;

        /* renamed from: b, reason: collision with root package name */
        public final Class f1319b;
        public final int c;
        public final int d;

        public abstract Object a(View view);

        public abstract void b(View view, Object obj);

        public b(int i, Class cls, int i2, int i3) {
            this.f1318a = i;
            this.f1319b = cls;
            this.d = i2;
            this.c = i3;
        }

        public final Object c(View view) {
            if (Build.VERSION.SDK_INT >= this.c) {
                return a(view);
            }
            Object tag = view.getTag(this.f1318a);
            if (this.f1319b.isInstance(tag)) {
                return tag;
            }
            return null;
        }

        public final void d(View view, Object obj) {
            if (Build.VERSION.SDK_INT >= this.c) {
                b(view, obj);
                return;
            }
            if (e(c(view), obj)) {
                AccessibilityDelegateCompat accessibilityDelegate = ViewCompat.getAccessibilityDelegate(view);
                if (accessibilityDelegate == null) {
                    accessibilityDelegate = new AccessibilityDelegateCompat();
                }
                ViewCompat.setAccessibilityDelegate(view, accessibilityDelegate);
                view.setTag(this.f1318a, obj);
                ViewCompat.f(this.d, view);
            }
        }

        public boolean e(Object obj, Object obj2) {
            return !obj2.equals(obj);
        }
    }

    public static void f(int i2, View view) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            boolean z = getAccessibilityPaneTitle(view) != null && view.isShown() && view.getWindowVisibility() == 0;
            if (getAccessibilityLiveRegion(view) != 0 || z) {
                AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
                accessibilityEventObtain.setEventType(z ? 32 : 2048);
                g.g(accessibilityEventObtain, i2);
                if (z) {
                    accessibilityEventObtain.getText().add(getAccessibilityPaneTitle(view));
                    if (getImportantForAccessibility(view) == 0) {
                        setImportantForAccessibility(view, 1);
                    }
                    ViewParent parent = view.getParent();
                    while (true) {
                        if (!(parent instanceof View)) {
                            break;
                        }
                        if (getImportantForAccessibility((View) parent) == 4) {
                            setImportantForAccessibility(view, 2);
                            break;
                        }
                        parent = parent.getParent();
                    }
                }
                view.sendAccessibilityEventUnchecked(accessibilityEventObtain);
                return;
            }
            if (i2 == 32) {
                AccessibilityEvent accessibilityEventObtain2 = AccessibilityEvent.obtain();
                view.onInitializeAccessibilityEvent(accessibilityEventObtain2);
                accessibilityEventObtain2.setEventType(32);
                g.g(accessibilityEventObtain2, i2);
                accessibilityEventObtain2.setSource(view);
                view.onPopulateAccessibilityEvent(accessibilityEventObtain2);
                accessibilityEventObtain2.getText().add(getAccessibilityPaneTitle(view));
                accessibilityManager.sendAccessibilityEvent(accessibilityEventObtain2);
                return;
            }
            if (view.getParent() != null) {
                try {
                    g.e(view.getParent(), view, view, i2);
                } catch (AbstractMethodError e2) {
                    Log.e("ViewCompat", view.getParent().getClass().getSimpleName().concat(" does not fully implement ViewParent"), e2);
                }
            }
        }
    }

    public static class a implements ViewTreeObserver.OnGlobalLayoutListener, View.OnAttachStateChangeListener {

        /* renamed from: a, reason: collision with root package name */
        public final WeakHashMap f1317a = new WeakHashMap();

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        @RequiresApi(19)
        public void onGlobalLayout() {
            if (Build.VERSION.SDK_INT < 28) {
                WeakHashMap weakHashMap = this.f1317a;
                for (Map.Entry entry : weakHashMap.entrySet()) {
                    View view = (View) entry.getKey();
                    boolean zBooleanValue = ((Boolean) entry.getValue()).booleanValue();
                    boolean z = view.isShown() && view.getWindowVisibility() == 0;
                    if (zBooleanValue != z) {
                        ViewCompat.f(z ? 16 : 32, view);
                        weakHashMap.put(view, Boolean.valueOf(z));
                    }
                }
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        @RequiresApi(19)
        public void onViewAttachedToWindow(View view) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }
    }

    public static class r {
        public static final ArrayList d = new ArrayList();

        /* renamed from: a, reason: collision with root package name */
        public WeakHashMap f1323a = null;

        /* renamed from: b, reason: collision with root package name */
        public SparseArray f1324b = null;
        public WeakReference c = null;

        public final View a(View view, KeyEvent keyEvent) {
            WeakHashMap weakHashMap = this.f1323a;
            if (weakHashMap == null || !weakHashMap.containsKey(view)) {
                return null;
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                    View viewA = a(viewGroup.getChildAt(childCount), keyEvent);
                    if (viewA != null) {
                        return viewA;
                    }
                }
            }
            if (b(view, keyEvent)) {
                return view;
            }
            return null;
        }

        public static boolean b(View view, KeyEvent keyEvent) {
            ArrayList arrayList = (ArrayList) view.getTag(R.id.tag_unhandled_key_listeners);
            if (arrayList == null) {
                return false;
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (((OnUnhandledKeyEventListenerCompat) arrayList.get(size)).onUnhandledKeyEvent(view, keyEvent)) {
                    return true;
                }
            }
            return false;
        }
    }

    @RequiresApi(21)
    public static class i {
        private i() {
        }

        @Nullable
        @DoNotInline
        public static WindowInsetsCompat getRootWindowInsets(@NonNull View view) {
            return WindowInsetsCompat.a.getRootWindowInsets(view);
        }

        @DoNotInline
        public static WindowInsetsCompat b(@NonNull View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull Rect rect) {
            WindowInsets windowInsets = windowInsetsCompat.toWindowInsets();
            if (windowInsets != null) {
                return WindowInsetsCompat.toWindowInsetsCompat(view.computeSystemWindowInsets(windowInsets, rect), view);
            }
            rect.setEmpty();
            return windowInsetsCompat;
        }

        @DoNotInline
        public static void t(@NonNull View view, @Nullable OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
            if (Build.VERSION.SDK_INT < 30) {
                view.setTag(R.id.tag_on_apply_window_listener, onApplyWindowInsetsListener);
            }
            if (onApplyWindowInsetsListener == null) {
                view.setOnApplyWindowInsetsListener((View.OnApplyWindowInsetsListener) view.getTag(R.id.tag_window_insets_animation_callback));
            } else {
                view.setOnApplyWindowInsetsListener(new a(view, onApplyWindowInsetsListener));
            }
        }

        public class a implements View.OnApplyWindowInsetsListener {

            /* renamed from: a, reason: collision with root package name */
            public WindowInsetsCompat f1320a = null;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ View f1321b;
            public final /* synthetic */ OnApplyWindowInsetsListener c;

            public a(View view, OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
                this.f1321b = view;
                this.c = onApplyWindowInsetsListener;
            }

            @Override // android.view.View.OnApplyWindowInsetsListener
            public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(windowInsets, view);
                int i = Build.VERSION.SDK_INT;
                OnApplyWindowInsetsListener onApplyWindowInsetsListener = this.c;
                if (i < 30) {
                    i.a(windowInsets, this.f1321b);
                    if (windowInsetsCompat.equals(this.f1320a)) {
                        return onApplyWindowInsetsListener.onApplyWindowInsets(view, windowInsetsCompat).toWindowInsets();
                    }
                }
                this.f1320a = windowInsetsCompat;
                WindowInsetsCompat windowInsetsCompatOnApplyWindowInsets = onApplyWindowInsetsListener.onApplyWindowInsets(view, windowInsetsCompat);
                if (i >= 30) {
                    return windowInsetsCompatOnApplyWindowInsets.toWindowInsets();
                }
                ViewCompat.requestApplyInsets(view);
                return windowInsetsCompatOnApplyWindowInsets.toWindowInsets();
            }
        }

        @DoNotInline
        public static void a(@NonNull WindowInsets windowInsets, @NonNull View view) {
            View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = (View.OnApplyWindowInsetsListener) view.getTag(R.id.tag_window_insets_animation_callback);
            if (onApplyWindowInsetsListener != null) {
                onApplyWindowInsetsListener.onApplyWindowInsets(view, windowInsets);
            }
        }

        @DoNotInline
        public static boolean c(@NonNull View view, float f, float f2, boolean z) {
            return view.dispatchNestedFling(f, f2, z);
        }

        @DoNotInline
        public static boolean d(@NonNull View view, float f, float f2) {
            return view.dispatchNestedPreFling(f, f2);
        }

        @DoNotInline
        public static float l(@NonNull View view) {
            return view.getZ();
        }

        @DoNotInline
        public static void w(@NonNull View view, float f) {
            view.setZ(f);
        }

        @DoNotInline
        public static void r(View view, float f) {
            view.setElevation(f);
        }

        @DoNotInline
        public static void v(View view, float f) {
            view.setTranslationZ(f);
        }

        @DoNotInline
        public static float k(View view) {
            return view.getTranslationZ();
        }

        @DoNotInline
        public static void u(View view, String str) {
            view.setTransitionName(str);
        }

        @DoNotInline
        public static boolean n(View view) {
            return view.isImportantForAccessibility();
        }

        @DoNotInline
        public static float i(View view) {
            return view.getElevation();
        }

        @DoNotInline
        public static String j(View view) {
            return view.getTransitionName();
        }

        @DoNotInline
        public static void p(View view, ColorStateList colorStateList) {
            view.setBackgroundTintList(colorStateList);
        }

        @DoNotInline
        public static ColorStateList g(View view) {
            return view.getBackgroundTintList();
        }

        @DoNotInline
        public static PorterDuff.Mode h(View view) {
            return view.getBackgroundTintMode();
        }

        @DoNotInline
        public static void q(View view, PorterDuff.Mode mode) {
            view.setBackgroundTintMode(mode);
        }

        @DoNotInline
        public static void s(View view, boolean z) {
            view.setNestedScrollingEnabled(z);
        }

        @DoNotInline
        public static boolean o(View view) {
            return view.isNestedScrollingEnabled();
        }

        @DoNotInline
        public static boolean x(View view, int i) {
            return view.startNestedScroll(i);
        }

        @DoNotInline
        public static void y(View view) {
            view.stopNestedScroll();
        }

        @DoNotInline
        public static boolean m(View view) {
            return view.hasNestedScrollingParent();
        }

        @DoNotInline
        public static boolean f(View view, int i, int i2, int i3, int i4, int[] iArr) {
            return view.dispatchNestedScroll(i, i2, i3, i4, iArr);
        }

        @DoNotInline
        public static boolean e(View view, int i, int i2, int[] iArr, int[] iArr2) {
            return view.dispatchNestedPreScroll(i, i2, iArr, iArr2);
        }
    }

    @RequiresApi(23)
    public static class j {
        private j() {
        }

        @Nullable
        public static WindowInsetsCompat getRootWindowInsets(@NonNull View view) {
            WindowInsets rootWindowInsets = view.getRootWindowInsets();
            if (rootWindowInsets == null) {
                return null;
            }
            WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(rootWindowInsets);
            windowInsetsCompat.f1361a.p(windowInsetsCompat);
            windowInsetsCompat.f1361a.d(view.getRootView());
            return windowInsetsCompat;
        }

        @DoNotInline
        public static void b(@NonNull View view, int i) {
            view.setScrollIndicators(i);
        }

        @DoNotInline
        public static void c(@NonNull View view, int i, int i2) {
            view.setScrollIndicators(i, i2);
        }

        @DoNotInline
        public static int a(@NonNull View view) {
            return view.getScrollIndicators();
        }
    }

    @RequiresApi(29)
    public static class n {
        private n() {
        }

        @DoNotInline
        public static void c(@NonNull View view, @NonNull Context context, @NonNull int[] iArr, @Nullable AttributeSet attributeSet, @NonNull TypedArray typedArray, int i, int i2) {
            view.saveAttributeDataForStyleable(context, iArr, attributeSet, typedArray, i, i2);
        }

        @DoNotInline
        public static View.AccessibilityDelegate a(View view) {
            return view.getAccessibilityDelegate();
        }

        @DoNotInline
        public static void d(View view, List<Rect> list) {
            view.setSystemGestureExclusionRects(list);
        }

        @DoNotInline
        public static List<Rect> b(View view) {
            return view.getSystemGestureExclusionRects();
        }
    }

    @RequiresApi(30)
    public static class o {
        private o() {
        }

        @Nullable
        public static WindowInsetsControllerCompat getWindowInsetsController(@NonNull View view) {
            WindowInsetsController windowInsetsController = view.getWindowInsetsController();
            if (windowInsetsController != null) {
                return WindowInsetsControllerCompat.toWindowInsetsControllerCompat(windowInsetsController);
            }
            return null;
        }

        @DoNotInline
        public static void b(View view, CharSequence charSequence) {
            view.setStateDescription(charSequence);
        }

        @DoNotInline
        public static CharSequence a(View view) {
            return view.getStateDescription();
        }
    }

    @RequiresApi(26)
    public static class l {
        private l() {
        }

        @DoNotInline
        public static void j(@NonNull View view, String... strArr) {
            view.setAutofillHints(strArr);
        }

        @DoNotInline
        public static void o(@NonNull View view, CharSequence charSequence) {
            view.setTooltipText(charSequence);
        }

        @DoNotInline
        public static int c(@NonNull View view) {
            return view.getNextClusterForwardId();
        }

        @DoNotInline
        public static void n(View view, int i) {
            view.setNextClusterForwardId(i);
        }

        @DoNotInline
        public static boolean g(@NonNull View view) {
            return view.isKeyboardNavigationCluster();
        }

        @DoNotInline
        public static void m(@NonNull View view, boolean z) {
            view.setKeyboardNavigationCluster(z);
        }

        @DoNotInline
        public static boolean e(@NonNull View view) {
            return view.isFocusedByDefault();
        }

        @DoNotInline
        public static void k(@NonNull View view, boolean z) {
            view.setFocusedByDefault(z);
        }

        @DoNotInline
        public static View h(@NonNull View view, View view2, int i) {
            return view.keyboardNavigationClusterSearch(view2, i);
        }

        @DoNotInline
        public static void a(@NonNull View view, Collection<View> collection, int i) {
            view.addKeyboardNavigationClusters(collection, i);
        }

        @DoNotInline
        public static boolean i(@NonNull View view) {
            return view.restoreDefaultFocus();
        }

        @DoNotInline
        public static boolean d(@NonNull View view) {
            return view.hasExplicitFocusable();
        }

        @DoNotInline
        public static int b(View view) {
            return view.getImportantForAutofill();
        }

        @DoNotInline
        public static void l(View view, int i) {
            view.setImportantForAutofill(i);
        }

        @DoNotInline
        public static boolean f(View view) {
            return view.isImportantForAutofill();
        }
    }

    @RequiresApi(18)
    public static class f {
        private f() {
        }

        @DoNotInline
        public static boolean b(@NonNull View view) {
            return view.isInLayout();
        }

        @DoNotInline
        public static void c(@NonNull View view, Rect rect) {
            view.setClipBounds(rect);
        }

        @DoNotInline
        public static Rect a(@NonNull View view) {
            return view.getClipBounds();
        }
    }

    @RequiresApi(19)
    public static class g {
        private g() {
        }

        @DoNotInline
        public static boolean c(@NonNull View view) {
            return view.isLaidOut();
        }

        @DoNotInline
        public static boolean b(@NonNull View view) {
            return view.isAttachedToWindow();
        }

        @DoNotInline
        public static boolean d(@NonNull View view) {
            return view.isLayoutDirectionResolved();
        }

        @DoNotInline
        public static int a(View view) {
            return view.getAccessibilityLiveRegion();
        }

        @DoNotInline
        public static void f(View view, int i) {
            view.setAccessibilityLiveRegion(i);
        }

        @DoNotInline
        public static void g(AccessibilityEvent accessibilityEvent, int i) {
            accessibilityEvent.setContentChangeTypes(i);
        }

        @DoNotInline
        public static void e(ViewParent viewParent, View view, View view2, int i) {
            viewParent.notifySubtreeAccessibilityStateChanged(view, view2, i);
        }
    }

    @RequiresApi(15)
    public static class c {
        private c() {
        }

        @DoNotInline
        public static boolean a(@NonNull View view) {
            return view.hasOnClickListeners();
        }
    }

    @RequiresApi(24)
    public static class k {
        private k() {
        }

        @DoNotInline
        public static void d(@NonNull View view, PointerIcon pointerIcon) {
            view.setPointerIcon(pointerIcon);
        }

        @DoNotInline
        public static boolean e(@NonNull View view, @Nullable ClipData clipData, @NonNull View.DragShadowBuilder dragShadowBuilder, @Nullable Object obj, int i) {
            return view.startDragAndDrop(clipData, dragShadowBuilder, obj, i);
        }

        @DoNotInline
        public static void a(@NonNull View view) {
            view.cancelDragAndDrop();
        }

        @DoNotInline
        public static void f(@NonNull View view, @NonNull View.DragShadowBuilder dragShadowBuilder) {
            view.updateDragShadow(dragShadowBuilder);
        }

        @DoNotInline
        public static void c(View view) {
            view.dispatchStartTemporaryDetach();
        }

        @DoNotInline
        public static void b(View view) {
            view.dispatchFinishTemporaryDetach();
        }
    }

    @RequiresApi(17)
    public static class e {
        private e() {
        }

        @DoNotInline
        public static Display b(@NonNull View view) {
            return view.getDisplay();
        }

        @DoNotInline
        public static int a() {
            return View.generateViewId();
        }

        @DoNotInline
        public static int c(View view) {
            return view.getLabelFor();
        }

        @DoNotInline
        public static void h(View view, int i) {
            view.setLabelFor(i);
        }

        @DoNotInline
        public static void i(View view, Paint paint) {
            view.setLayerPaint(paint);
        }

        @DoNotInline
        public static int d(View view) {
            return view.getLayoutDirection();
        }

        @DoNotInline
        public static void j(View view, int i) {
            view.setLayoutDirection(i);
        }

        @DoNotInline
        public static int f(View view) {
            return view.getPaddingStart();
        }

        @DoNotInline
        public static int e(View view) {
            return view.getPaddingEnd();
        }

        @DoNotInline
        public static void k(View view, int i, int i2, int i3, int i4) {
            view.setPaddingRelative(i, i2, i3, i4);
        }

        @DoNotInline
        public static boolean g(View view) {
            return view.isPaddingRelative();
        }
    }

    @RequiresApi(16)
    public static class d {
        private d() {
        }

        @DoNotInline
        public static boolean i(View view) {
            return view.hasTransientState();
        }

        @DoNotInline
        public static void r(View view, boolean z) {
            view.setHasTransientState(z);
        }

        @DoNotInline
        public static void k(View view) {
            view.postInvalidateOnAnimation();
        }

        @DoNotInline
        public static void l(View view, int i, int i2, int i3, int i4) {
            view.postInvalidateOnAnimation(i, i2, i3, i4);
        }

        @DoNotInline
        public static void m(View view, Runnable runnable) {
            view.postOnAnimation(runnable);
        }

        @DoNotInline
        public static void n(View view, Runnable runnable, long j) {
            view.postOnAnimationDelayed(runnable, j);
        }

        @DoNotInline
        public static int c(View view) {
            return view.getImportantForAccessibility();
        }

        @DoNotInline
        public static void s(View view, int i) {
            view.setImportantForAccessibility(i);
        }

        @DoNotInline
        public static AccessibilityNodeProvider a(View view) {
            return view.getAccessibilityNodeProvider();
        }

        @DoNotInline
        public static ViewParent f(View view) {
            return view.getParentForAccessibility();
        }

        @DoNotInline
        public static int e(View view) {
            return view.getMinimumWidth();
        }

        @DoNotInline
        public static int d(View view) {
            return view.getMinimumHeight();
        }

        @DoNotInline
        public static int g(View view) {
            return view.getWindowSystemUiVisibility();
        }

        @DoNotInline
        public static void p(View view) {
            view.requestFitSystemWindows();
        }

        @DoNotInline
        public static boolean b(View view) {
            return view.getFitsSystemWindows();
        }

        @DoNotInline
        public static boolean j(View view, int i, Bundle bundle) {
            return view.performAccessibilityAction(i, bundle);
        }

        @DoNotInline
        public static boolean h(View view) {
            return view.hasOverlappingRendering();
        }

        @DoNotInline
        public static void q(View view, Drawable drawable) {
            view.setBackground(drawable);
        }

        @DoNotInline
        public static void o(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
            viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
        }
    }

    @RequiresApi(28)
    public static class m {
        private m() {
        }

        @DoNotInline
        public static <T> T f(View view, int i) {
            return (T) view.requireViewById(i);
        }

        @DoNotInline
        public static CharSequence b(View view) {
            return view.getAccessibilityPaneTitle();
        }

        @DoNotInline
        public static void h(View view, CharSequence charSequence) {
            view.setAccessibilityPaneTitle(charSequence);
        }

        @DoNotInline
        public static void g(View view, boolean z) {
            view.setAccessibilityHeading(z);
        }

        @DoNotInline
        public static boolean c(View view) {
            return view.isAccessibilityHeading();
        }

        @DoNotInline
        public static boolean d(View view) {
            return view.isScreenReaderFocusable();
        }

        @DoNotInline
        public static void i(View view, boolean z) {
            view.setScreenReaderFocusable(z);
        }

        @DoNotInline
        public static void a(@NonNull View view, @NonNull final OnUnhandledKeyEventListenerCompat onUnhandledKeyEventListenerCompat) {
            int i = R.id.tag_unhandled_key_listeners;
            SimpleArrayMap simpleArrayMap = (SimpleArrayMap) view.getTag(i);
            if (simpleArrayMap == null) {
                simpleArrayMap = new SimpleArrayMap();
                view.setTag(i, simpleArrayMap);
            }
            Objects.requireNonNull(onUnhandledKeyEventListenerCompat);
            View.OnUnhandledKeyEventListener onUnhandledKeyEventListener = new View.OnUnhandledKeyEventListener() { // from class: androidx.core.view.m
                @Override // android.view.View.OnUnhandledKeyEventListener
                public final boolean onUnhandledKeyEvent(View view2, KeyEvent keyEvent) {
                    return onUnhandledKeyEventListenerCompat.onUnhandledKeyEvent(view2, keyEvent);
                }
            };
            simpleArrayMap.put(onUnhandledKeyEventListenerCompat, onUnhandledKeyEventListener);
            view.addOnUnhandledKeyEventListener(onUnhandledKeyEventListener);
        }

        @DoNotInline
        public static void e(@NonNull View view, @NonNull OnUnhandledKeyEventListenerCompat onUnhandledKeyEventListenerCompat) {
            View.OnUnhandledKeyEventListener onUnhandledKeyEventListener;
            SimpleArrayMap simpleArrayMap = (SimpleArrayMap) view.getTag(R.id.tag_unhandled_key_listeners);
            if (simpleArrayMap == null || (onUnhandledKeyEventListener = (View.OnUnhandledKeyEventListener) simpleArrayMap.get(onUnhandledKeyEventListenerCompat)) == null) {
                return;
            }
            view.removeOnUnhandledKeyEventListener(onUnhandledKeyEventListener);
        }
    }

    @RequiresApi(20)
    public static class h {
        private h() {
        }

        @DoNotInline
        public static void c(View view) {
            view.requestApplyInsets();
        }

        @DoNotInline
        public static WindowInsets b(View view, WindowInsets windowInsets) {
            return view.onApplyWindowInsets(windowInsets);
        }

        @DoNotInline
        public static WindowInsets a(View view, WindowInsets windowInsets) {
            return view.dispatchApplyWindowInsets(windowInsets);
        }
    }
}
