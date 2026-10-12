package androidx.core.view;

import android.annotation.SuppressLint;
import android.app.UiModeManager;
import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.text.TextUtils;
import android.view.Display;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.util.Preconditions;

/* loaded from: classes.dex */
public final class DisplayCompat {
    private DisplayCompat() {
    }

    @NonNull
    public static ModeCompat getMode(@NonNull Context context, @NonNull Display display) throws ClassNotFoundException, NumberFormatException {
        if (Build.VERSION.SDK_INT >= 23) {
            return b.a(context, display);
        }
        Point pointA = a(context, display);
        if (pointA == null) {
            pointA = new Point();
            display.getRealSize(pointA);
        }
        return new ModeCompat(pointA);
    }

    @NonNull
    @SuppressLint({"ArrayReturn"})
    public static ModeCompat[] getSupportedModes(@NonNull Context context, @NonNull Display display) {
        if (Build.VERSION.SDK_INT >= 23) {
            return b.getSupportedModes(context, display);
        }
        return new ModeCompat[]{getMode(context, display)};
    }

    public static Point b(String str, Display display) throws ClassNotFoundException, NumberFormatException {
        String str2;
        if (display.getDisplayId() == 0) {
            try {
                Class<?> cls = Class.forName("android.os.SystemProperties");
                str2 = (String) cls.getMethod("get", String.class).invoke(cls, str);
            } catch (Exception unused) {
                str2 = null;
            }
            if (!TextUtils.isEmpty(str2) && str2 != null) {
                try {
                    String[] strArrSplit = str2.trim().split("x", -1);
                    if (strArrSplit.length == 2) {
                        int i = Integer.parseInt(strArrSplit[0]);
                        int i2 = Integer.parseInt(strArrSplit[1]);
                        if (i > 0 && i2 > 0) {
                            return new Point(i, i2);
                        }
                    }
                    throw new NumberFormatException();
                } catch (NumberFormatException unused2) {
                }
            }
        }
        return null;
    }

    public static Point a(Context context, Display display) throws ClassNotFoundException, NumberFormatException {
        Point pointB;
        int i = Build.VERSION.SDK_INT;
        if (i < 28) {
            pointB = b("sys.display-size", display);
        } else {
            pointB = b("vendor.display-size", display);
        }
        if (pointB != null) {
            return pointB;
        }
        UiModeManager uiModeManager = (UiModeManager) context.getSystemService("uimode");
        if (uiModeManager == null || uiModeManager.getCurrentModeType() != 4 || !"Sony".equals(Build.MANUFACTURER) || !Build.MODEL.startsWith("BRAVIA") || !context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd")) {
            return null;
        }
        if (i >= 23 ? b.b(display) : true) {
            return new Point(3840, 2160);
        }
        return null;
    }

    @RequiresApi(23)
    public static class b {
        private b() {
        }

        public static ModeCompat a(Context context, Display display) throws ClassNotFoundException, NumberFormatException {
            Display.Mode mode = display.getMode();
            Point pointA = DisplayCompat.a(context, display);
            if (pointA == null || c(mode, pointA)) {
                return new ModeCompat(mode, true);
            }
            return new ModeCompat(mode, pointA);
        }

        @NonNull
        @SuppressLint({"ArrayReturn"})
        public static ModeCompat[] getSupportedModes(@NonNull Context context, @NonNull Display display) throws ClassNotFoundException, NumberFormatException {
            ModeCompat modeCompat;
            Display.Mode[] supportedModes = display.getSupportedModes();
            ModeCompat[] modeCompatArr = new ModeCompat[supportedModes.length];
            Display.Mode mode = display.getMode();
            Point pointA = DisplayCompat.a(context, display);
            if (pointA == null || c(mode, pointA)) {
                for (int i = 0; i < supportedModes.length; i++) {
                    Display.Mode mode2 = supportedModes[i];
                    modeCompatArr[i] = new ModeCompat(supportedModes[i], mode2.getPhysicalWidth() == mode.getPhysicalWidth() && mode2.getPhysicalHeight() == mode.getPhysicalHeight());
                }
            } else {
                for (int i2 = 0; i2 < supportedModes.length; i2++) {
                    Display.Mode mode3 = supportedModes[i2];
                    if (mode3.getPhysicalWidth() == mode.getPhysicalWidth() && mode3.getPhysicalHeight() == mode.getPhysicalHeight()) {
                        modeCompat = new ModeCompat(supportedModes[i2], pointA);
                    } else {
                        modeCompat = new ModeCompat(supportedModes[i2], false);
                    }
                    modeCompatArr[i2] = modeCompat;
                }
            }
            return modeCompatArr;
        }

        public static boolean b(Display display) {
            Display.Mode mode = display.getMode();
            for (Display.Mode mode2 : display.getSupportedModes()) {
                if (mode.getPhysicalHeight() < mode2.getPhysicalHeight() || mode.getPhysicalWidth() < mode2.getPhysicalWidth()) {
                    return false;
                }
            }
            return true;
        }

        public static boolean c(Display.Mode mode, Point point) {
            if (mode.getPhysicalWidth() == point.x && mode.getPhysicalHeight() == point.y) {
                return true;
            }
            return mode.getPhysicalWidth() == point.y && mode.getPhysicalHeight() == point.x;
        }
    }

    @RequiresApi(17)
    public static class a {
        private a() {
        }
    }

    public static final class ModeCompat {

        /* renamed from: a, reason: collision with root package name */
        public final Display.Mode f1284a;

        /* renamed from: b, reason: collision with root package name */
        public final Point f1285b;
        public final boolean c;

        public ModeCompat(Point point) {
            Preconditions.checkNotNull(point, "physicalSize == null");
            this.f1285b = point;
            this.f1284a = null;
            this.c = true;
        }

        public ModeCompat(Display.Mode mode, boolean z) {
            Preconditions.checkNotNull(mode, "mode == null, can't wrap a null reference");
            this.f1285b = new Point(a.b(mode), a.a(mode));
            this.f1284a = mode;
            this.c = z;
        }

        public ModeCompat(Display.Mode mode, Point point) {
            Preconditions.checkNotNull(mode, "mode == null, can't wrap a null reference");
            Preconditions.checkNotNull(point, "physicalSize == null");
            this.f1285b = point;
            this.f1284a = mode;
            this.c = true;
        }

        public int getPhysicalWidth() {
            return this.f1285b.x;
        }

        public int getPhysicalHeight() {
            return this.f1285b.y;
        }

        @Deprecated
        public boolean isNative() {
            return this.c;
        }

        @Nullable
        @RequiresApi(23)
        public Display.Mode toMode() {
            return this.f1284a;
        }

        @RequiresApi(23)
        public static class a {
            private a() {
            }

            @DoNotInline
            public static int b(Display.Mode mode) {
                return mode.getPhysicalWidth();
            }

            @DoNotInline
            public static int a(Display.Mode mode) {
                return mode.getPhysicalHeight();
            }
        }
    }
}
