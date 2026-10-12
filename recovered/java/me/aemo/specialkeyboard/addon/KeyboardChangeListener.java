package me.aemo.specialkeyboard.addon;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;

/* loaded from: classes2.dex */
public class KeyboardChangeListener implements ViewTreeObserver.OnGlobalLayoutListener {
    public static final int MIN_KEYBOARD_HEIGHT = 300;

    /* renamed from: a, reason: collision with root package name */
    public KeyboardListener f6747a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f6748b = false;
    public final Window c;
    public final View d;

    public interface KeyboardListener {
        void onKeyboardChange(boolean z, int i);
    }

    public void setKeyboardListener(KeyboardListener keyboardListener) {
        this.f6747a = keyboardListener;
    }

    public static KeyboardChangeListener create(Activity activity) {
        return new KeyboardChangeListener(activity);
    }

    public static KeyboardChangeListener create(Dialog dialog) {
        return new KeyboardChangeListener(dialog);
    }

    public KeyboardChangeListener(Object obj) {
        if (obj == null) {
            Log.d("KeyboardChangeListener", "contextObj is null");
            return;
        }
        if (obj instanceof Activity) {
            Activity activity = (Activity) obj;
            this.d = activity.findViewById(R.id.content);
            this.c = activity.getWindow();
        } else if (obj instanceof Dialog) {
            Dialog dialog = (Dialog) obj;
            this.d = dialog.findViewById(R.id.content);
            this.c = dialog.getWindow();
        }
        View view = this.d;
        if (view == null || this.c == null) {
            return;
        }
        view.getViewTreeObserver().addOnGlobalLayoutListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        Window window;
        View view = this.d;
        if (view == null || (window = this.c) == null) {
            return;
        }
        if (view.getHeight() == 0) {
            Log.d("KeyboardChangeListener", "currHeight is 0");
            return;
        }
        Display defaultDisplay = window.getWindowManager().getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        int i = point.y;
        Rect rect = new Rect();
        window.getDecorView().getWindowVisibleDisplayFrame(rect);
        int i2 = rect.bottom;
        int i3 = i - i2;
        Log.d("KeyboardChangeListener", "onGlobalLayout() called  screenHeight " + i + " VisibleDisplayHeight " + i2);
        KeyboardListener keyboardListener = this.f6747a;
        if (keyboardListener != null) {
            boolean z = i3 > 300;
            if (this.f6748b != z) {
                this.f6748b = z;
                keyboardListener.onKeyboardChange(z, i3);
            }
        }
    }

    public void destroy() {
        View view = this.d;
        if (view != null) {
            view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        }
    }
}
