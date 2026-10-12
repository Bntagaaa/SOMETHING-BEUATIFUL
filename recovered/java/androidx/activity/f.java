package androidx.activity;

import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import java.lang.reflect.Field;

@RequiresApi(19)
/* loaded from: classes.dex */
final class f implements LifecycleEventObserver {

    /* renamed from: b, reason: collision with root package name */
    public static int f49b;
    public static Field c;
    public static Field d;
    public static Field e;

    /* renamed from: a, reason: collision with root package name */
    public ComponentActivity f50a;

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        if (event != Lifecycle.Event.ON_DESTROY) {
            return;
        }
        if (f49b == 0) {
            try {
                f49b = 2;
                Field declaredField = InputMethodManager.class.getDeclaredField("mServedView");
                d = declaredField;
                declaredField.setAccessible(true);
                Field declaredField2 = InputMethodManager.class.getDeclaredField("mNextServedView");
                e = declaredField2;
                declaredField2.setAccessible(true);
                Field declaredField3 = InputMethodManager.class.getDeclaredField("mH");
                c = declaredField3;
                declaredField3.setAccessible(true);
                f49b = 1;
            } catch (NoSuchFieldException unused) {
            }
        }
        if (f49b == 1) {
            InputMethodManager inputMethodManager = (InputMethodManager) this.f50a.getSystemService("input_method");
            try {
                Object obj = c.get(inputMethodManager);
                if (obj == null) {
                    return;
                }
                synchronized (obj) {
                    try {
                        View view = (View) d.get(inputMethodManager);
                        if (view != null) {
                            if (!view.isAttachedToWindow()) {
                                e.set(inputMethodManager, null);
                                inputMethodManager.isActive();
                            }
                        }
                    } catch (IllegalAccessException unused2) {
                    } catch (ClassCastException unused3) {
                    } catch (IllegalAccessException unused4) {
                    } finally {
                    }
                }
            } catch (IllegalAccessException unused5) {
            }
        }
    }
}
