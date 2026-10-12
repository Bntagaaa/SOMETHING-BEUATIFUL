package me.aemo.floatingview;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.runtime.ActivityResultListener;
import com.google.appinventor.components.runtime.AndroidNonvisibleComponent;
import com.google.appinventor.components.runtime.AndroidViewComponent;
import com.google.appinventor.components.runtime.ComponentContainer;
import com.google.appinventor.components.runtime.EventDispatcher;
import com.google.appinventor.components.runtime.OnDestroyListener;
import com.google.appinventor.components.runtime.util.YailList;

/* loaded from: classes2.dex */
public class FloatingView extends AndroidNonvisibleComponent implements ActivityResultListener, OnDestroyListener {
    public static boolean r = false;

    /* renamed from: a, reason: collision with root package name */
    public final ComponentContainer f6730a;

    /* renamed from: b, reason: collision with root package name */
    public final Activity f6731b;
    public boolean c;
    public boolean d;
    public int e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f6732g;
    public int h;
    public WindowManager j;
    public WindowManager.LayoutParams k;
    public RelativeLayout l;
    public ViewGroup m;
    public int n;
    public View o;
    public boolean p;
    public int q;

    public class a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            WindowManager windowManager;
            FloatingView floatingView = FloatingView.this;
            RelativeLayout relativeLayout = floatingView.l;
            if (relativeLayout != null) {
                if (FloatingView.r && (windowManager = floatingView.j) != null) {
                    windowManager.removeView(relativeLayout);
                }
                FloatingView.r = false;
                floatingView.l.removeView(floatingView.o);
                View childAt = floatingView.o;
                if (childAt instanceof ViewGroup) {
                    childAt = ((ViewGroup) childAt).getChildAt(0);
                }
                childAt.setOnClickListener(null);
                childAt.setOnTouchListener(null);
                floatingView.m.addView(floatingView.o, floatingView.n);
                floatingView.l = null;
            }
        }

        public a() {
        }
    }

    public class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ float f6734a;

        @Override // java.lang.Runnable
        public void run() {
            FloatingView floatingView = FloatingView.this;
            if (floatingView.j != null) {
                DisplayMetrics displayMetrics = new DisplayMetrics();
                floatingView.j.getDefaultDisplay().getMetrics(displayMetrics);
                int i = displayMetrics.widthPixels;
                WindowManager.LayoutParams layoutParams = floatingView.k;
                layoutParams.width = (int) (i * this.f6734a);
                floatingView.j.updateViewLayout(floatingView.l, layoutParams);
            }
        }

        public b(float f) {
            this.f6734a = f;
        }
    }

    public class c implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ float f6736a;

        @Override // java.lang.Runnable
        public void run() {
            FloatingView floatingView = FloatingView.this;
            if (floatingView.j != null) {
                DisplayMetrics displayMetrics = new DisplayMetrics();
                floatingView.j.getDefaultDisplay().getMetrics(displayMetrics);
                int i = displayMetrics.heightPixels;
                WindowManager.LayoutParams layoutParams = floatingView.k;
                layoutParams.width = (int) (i * this.f6736a);
                floatingView.j.updateViewLayout(floatingView.l, layoutParams);
            }
        }

        public c(float f) {
            this.f6736a = f;
        }
    }

    public class d implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            FloatingView floatingView = FloatingView.this;
            WindowManager windowManager = floatingView.j;
            if (windowManager != null) {
                WindowManager.LayoutParams layoutParams = floatingView.k;
                layoutParams.flags = 262144;
                windowManager.updateViewLayout(floatingView.l, layoutParams);
            }
        }

        public d() {
        }
    }

    public class e implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            FloatingView floatingView = FloatingView.this;
            if (floatingView.j != null) {
                floatingView.l.clearFocus();
                WindowManager.LayoutParams layoutParams = floatingView.k;
                layoutParams.flags = 262152;
                floatingView.j.updateViewLayout(floatingView.l, layoutParams);
            }
        }

        public e() {
        }
    }

    public FloatingView(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.c = false;
        this.d = false;
        this.p = false;
        this.q = 0;
        this.f6730a = componentContainer;
        this.f6731b = componentContainer.$context();
        this.form.registerForOnDestroy(this);
    }

    @SimpleFunction(description = "Initializes the component you want to float.")
    public void SetupView(AndroidViewComponent androidViewComponent, boolean z, int i, int i2) {
        this.o = androidViewComponent.getView();
        this.d = z;
        if (r) {
            r = false;
            this.f6731b.runOnUiThread(new me.aemo.floatingview.b(this));
        }
        this.l = new RelativeLayout(this.f6730a.$context());
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, Build.VERSION.SDK_INT >= 26 ? 2038 : 2002, 262152, -3);
        this.k = layoutParams;
        layoutParams.gravity = 51;
        layoutParams.x = i;
        layoutParams.y = i2;
        if (this.p) {
            layoutParams.flags |= 8192;
        }
        View childAt = this.o;
        if (childAt instanceof ViewGroup) {
            childAt = ((ViewGroup) childAt).getChildAt(0);
        }
        childAt.setOnClickListener(new me.aemo.floatingview.c(this));
        childAt.setOnTouchListener(new me.aemo.floatingview.d(this));
        if (this.o.getParent() != null) {
            ViewGroup viewGroup = (ViewGroup) this.o.getParent();
            this.m = viewGroup;
            this.n = viewGroup.indexOfChild(this.o);
            ((ViewGroup) this.o.getParent()).removeView(this.o);
        }
        this.l.addView(this.o);
    }

    @SimpleFunction(description = "Displays the floating component.")
    public void ShowFloatingView() {
        if (!a(true) || r) {
            return;
        }
        r = true;
        this.f6731b.runOnUiThread(new me.aemo.floatingview.a(this));
    }

    @SimpleFunction(description = "Checks whether the overlay permission is active.")
    public boolean CheckDrawOverlayPermission() {
        return a(false);
    }

    @SimpleFunction(description = "Redirects to application settings to allow overlay permission.")
    public void RequestDrawOverlayPermission() {
        a(true);
    }

    @SimpleFunction(description = "Gets the X coordinate that the floating view is in.")
    public int GetPositionX() {
        return this.k.x;
    }

    @SimpleFunction(description = "Gets the Y coordinate that the floating view is in.")
    public int GetPositionY() {
        return this.k.y;
    }

    @SimpleFunction(description = "Moves the floating view to the indicated coordinates.")
    public void SetPosition(int i, int i2) {
        WindowManager.LayoutParams layoutParams = this.k;
        layoutParams.x = i;
        layoutParams.y = i2;
        if (this.j != null) {
            PositionMoved(i, i2);
            this.j.updateViewLayout(this.l, this.k);
        }
    }

    @SimpleProperty(description = "Adjusts whether the floating view is clickable")
    public void SetClickable(boolean z) {
        this.d = z;
    }

    @SimpleProperty(description = "Checks whether the floating view is clickable.")
    public boolean GetClickable() {
        return this.d;
    }

    @SimpleProperty(description = "Checks if the floating is present on the screen.")
    public boolean GetFloatingViewVisible() {
        return r;
    }

    @SimpleEvent(description = "View moved from position")
    public void PositionMoved(int i, int i2) {
        EventDispatcher.dispatchEvent(this, "PositionMoved", Integer.valueOf(i), Integer.valueOf(i2));
    }

    @SimpleEvent(description = "Executes after clicking on the floating component.")
    public void ClickView() {
        EventDispatcher.dispatchEvent(this, "ClickView", new Object[0]);
    }

    @SimpleFunction(description = "Returns the floating window to the screen.")
    public void RestoreFloatingView() {
        this.f6731b.runOnUiThread(new a());
    }

    @SimpleFunction(description = "Change floating window width.")
    public void ChangeWidth(float f) {
        if (r) {
            this.f6731b.runOnUiThread(new b(f));
        }
    }

    @SimpleFunction(description = "Change floating window height.")
    public void ChangeHeight(float f) {
        if (r) {
            this.f6731b.runOnUiThread(new c(f));
        }
    }

    @SimpleFunction(description = "Prompts to focus on the floating window.")
    public void RequestFocusFloatingView() {
        if (r) {
            this.f6731b.runOnUiThread(new d());
        }
    }

    @SimpleFunction(description = "Loses focus on the floating window.")
    public void LoseFocusFloatingView() {
        if (r) {
            this.f6731b.runOnUiThread(new e());
        }
    }

    @Override // com.google.appinventor.components.runtime.ActivityResultListener
    public void resultReturned(int i, int i2, Intent intent) {
        if (i != 5 || Build.VERSION.SDK_INT < 23 || !Settings.canDrawOverlays(this.f6730a.$context()) || r) {
            return;
        }
        r = true;
        this.f6731b.runOnUiThread(new me.aemo.floatingview.a(this));
    }

    public final boolean a(boolean z) {
        if (Build.VERSION.SDK_INT < 23) {
            return true;
        }
        ComponentContainer componentContainer = this.f6730a;
        if (Settings.canDrawOverlays(componentContainer.$context())) {
            return true;
        }
        if (!z) {
            return false;
        }
        Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + componentContainer.$form().getPackageName()));
        if (this.q == 0) {
            this.q = this.form.registerForActivityResult(this);
        }
        componentContainer.$context().startActivityForResult(intent, 5);
        return false;
    }

    @SimpleFunction(description = "Hides the floating component.")
    public void DismissViewFloating() {
        if (r) {
            r = false;
            this.f6731b.runOnUiThread(new me.aemo.floatingview.b(this));
        }
    }

    @SimpleFunction
    public void ScreenRecording(boolean z) {
        WindowManager windowManager;
        if (!z) {
            DisableScreenRecordingProtection();
            return;
        }
        if (!r || (windowManager = this.j) == null) {
            return;
        }
        WindowManager.LayoutParams layoutParams = this.k;
        layoutParams.flags |= 8192;
        windowManager.updateViewLayout(this.l, layoutParams);
        this.p = true;
    }

    public void DisableScreenRecordingProtection() {
        WindowManager windowManager;
        if (!r || (windowManager = this.j) == null) {
            return;
        }
        WindowManager.LayoutParams layoutParams = this.k;
        layoutParams.flags &= -8193;
        windowManager.updateViewLayout(this.l, layoutParams);
        this.p = false;
    }

    @SimpleFunction(description = "Through this block it is possible to overlap any visible component on another.\nmargins (list):\n\tindex 1 -> margin left (number)\n\tindex 2 -> margin top (number)\n\tindex 3 -> margin right(number)\n\tindex 4 -> margin bottom (number)\ngravity (number):\n\t0  -> TOP-LEFT\n\t1  -> TOP-CENTER\n\t2  -> TOP-RIGHT\n\t3  -> CENTER-LEFT\n\t4  -> CENTER\n\t5  -> CENTER-RIGHT\n\t6  -> BOTTOM-LEFT\n\t7  -> BOTTOM-CENTER\n\t8  -> BOTTOM-RIGHT\n")
    public void OverlapView(AndroidViewComponent androidViewComponent, AndroidViewComponent androidViewComponent2, YailList yailList, int i) {
        if (i == 0) {
            i = 51;
        } else if (i == 1) {
            i = 49;
        } else if (i == 2) {
            i = 53;
        } else if (i == 3) {
            i = 19;
        } else if (i == 4) {
            i = 17;
        } else if (i == 5) {
            i = 21;
        } else if (i == 6) {
            i = 83;
        } else if (i == 7) {
            i = 81;
        } else if (i == 8) {
            i = 85;
        }
        View view = androidViewComponent2.getView();
        if (view.getParent() != null) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
        FrameLayout frameLayout = new FrameLayout(this.f6730a.$context());
        frameLayout.addView(view);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = i;
        String[] stringArray = yailList.toStringArray();
        layoutParams.setMargins(stringArray.length > 0 ? Integer.parseInt(stringArray[0]) : 0, stringArray.length > 1 ? Integer.parseInt(stringArray[1]) : 0, stringArray.length > 2 ? Integer.parseInt(stringArray[2]) : 0, stringArray.length > 3 ? Integer.parseInt(stringArray[3]) : 0);
        frameLayout.setLayoutParams(layoutParams);
        ((FrameLayout) androidViewComponent.getView()).addView(frameLayout);
    }

    @Override // com.google.appinventor.components.runtime.OnDestroyListener
    public void onDestroy() {
        WindowManager windowManager = this.j;
        if (windowManager != null) {
            windowManager.removeViewImmediate(this.l);
        }
    }
}
