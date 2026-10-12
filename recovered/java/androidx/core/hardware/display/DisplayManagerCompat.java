package androidx.core.hardware.display;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.view.Display;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class DisplayManagerCompat {
    public static final String DISPLAY_CATEGORY_PRESENTATION = "android.hardware.display.category.PRESENTATION";

    /* renamed from: b, reason: collision with root package name */
    public static final WeakHashMap f1063b = new WeakHashMap();

    /* renamed from: a, reason: collision with root package name */
    public final Context f1064a;

    public DisplayManagerCompat(Context context) {
        this.f1064a = context;
    }

    @NonNull
    public static DisplayManagerCompat getInstance(@NonNull Context context) {
        DisplayManagerCompat displayManagerCompat;
        WeakHashMap weakHashMap = f1063b;
        synchronized (weakHashMap) {
            try {
                displayManagerCompat = (DisplayManagerCompat) weakHashMap.get(context);
                if (displayManagerCompat == null) {
                    displayManagerCompat = new DisplayManagerCompat(context);
                    weakHashMap.put(context, displayManagerCompat);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return displayManagerCompat;
    }

    @Nullable
    public Display getDisplay(int i) {
        return a.a((DisplayManager) this.f1064a.getSystemService("display"), i);
    }

    @NonNull
    public Display[] getDisplays() {
        return a.b((DisplayManager) this.f1064a.getSystemService("display"));
    }

    @NonNull
    public Display[] getDisplays(@Nullable String str) {
        return a.b((DisplayManager) this.f1064a.getSystemService("display"));
    }

    @RequiresApi(17)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static Display a(DisplayManager displayManager, int i) {
            return displayManager.getDisplay(i);
        }

        @DoNotInline
        public static Display[] b(DisplayManager displayManager) {
            return displayManager.getDisplays();
        }
    }
}
