package androidx.core.location;

import android.location.Location;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.core.util.Preconditions;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class LocationCompat {
    public static final String EXTRA_BEARING_ACCURACY = "bearingAccuracy";
    public static final String EXTRA_IS_MOCK = "mockLocation";
    public static final String EXTRA_MSL_ALTITUDE = "androidx.core.location.extra.MSL_ALTITUDE";
    public static final String EXTRA_MSL_ALTITUDE_ACCURACY = "androidx.core.location.extra.MSL_ALTITUDE_ACCURACY";
    public static final String EXTRA_SPEED_ACCURACY = "speedAccuracy";
    public static final String EXTRA_VERTICAL_ACCURACY = "verticalAccuracy";

    /* renamed from: a, reason: collision with root package name */
    public static Method f1070a;

    private LocationCompat() {
    }

    public static long getElapsedRealtimeNanos(@NonNull Location location) {
        return a.a(location);
    }

    public static long getElapsedRealtimeMillis(@NonNull Location location) {
        return TimeUnit.NANOSECONDS.toMillis(a.a(location));
    }

    public static boolean hasVerticalAccuracy(@NonNull Location location) {
        if (Build.VERSION.SDK_INT >= 26) {
            return c.f(location);
        }
        return a(location, EXTRA_VERTICAL_ACCURACY);
    }

    public static float getVerticalAccuracyMeters(@NonNull Location location) {
        if (Build.VERSION.SDK_INT >= 26) {
            return c.c(location);
        }
        Bundle extras = location.getExtras();
        if (extras == null) {
            return 0.0f;
        }
        return extras.getFloat(EXTRA_VERTICAL_ACCURACY, 0.0f);
    }

    public static void setVerticalAccuracyMeters(@NonNull Location location, float f) {
        if (Build.VERSION.SDK_INT >= 26) {
            c.i(location, f);
        } else {
            b(location).putFloat(EXTRA_VERTICAL_ACCURACY, f);
        }
    }

    public static boolean hasSpeedAccuracy(@NonNull Location location) {
        if (Build.VERSION.SDK_INT >= 26) {
            return c.e(location);
        }
        return a(location, EXTRA_SPEED_ACCURACY);
    }

    public static float getSpeedAccuracyMetersPerSecond(@NonNull Location location) {
        if (Build.VERSION.SDK_INT >= 26) {
            return c.b(location);
        }
        Bundle extras = location.getExtras();
        if (extras == null) {
            return 0.0f;
        }
        return extras.getFloat(EXTRA_SPEED_ACCURACY, 0.0f);
    }

    public static void setSpeedAccuracyMetersPerSecond(@NonNull Location location, float f) {
        if (Build.VERSION.SDK_INT >= 26) {
            c.h(location, f);
        } else {
            b(location).putFloat(EXTRA_SPEED_ACCURACY, f);
        }
    }

    public static boolean hasBearingAccuracy(@NonNull Location location) {
        if (Build.VERSION.SDK_INT >= 26) {
            return c.d(location);
        }
        return a(location, EXTRA_BEARING_ACCURACY);
    }

    public static float getBearingAccuracyDegrees(@NonNull Location location) {
        if (Build.VERSION.SDK_INT >= 26) {
            return c.a(location);
        }
        Bundle extras = location.getExtras();
        if (extras == null) {
            return 0.0f;
        }
        return extras.getFloat(EXTRA_BEARING_ACCURACY, 0.0f);
    }

    public static void setBearingAccuracyDegrees(@NonNull Location location, float f) {
        if (Build.VERSION.SDK_INT >= 26) {
            c.g(location, f);
        } else {
            b(location).putFloat(EXTRA_BEARING_ACCURACY, f);
        }
    }

    public static double getMslAltitudeMeters(@NonNull Location location) {
        Preconditions.checkState(hasMslAltitude(location), "The Mean Sea Level altitude of the location is not set.");
        return b(location).getDouble(EXTRA_MSL_ALTITUDE);
    }

    public static void setMslAltitudeMeters(@NonNull Location location, double d) {
        b(location).putDouble(EXTRA_MSL_ALTITUDE, d);
    }

    public static boolean hasMslAltitude(@NonNull Location location) {
        return a(location, EXTRA_MSL_ALTITUDE);
    }

    @FloatRange(from = 0.0d)
    public static float getMslAltitudeAccuracyMeters(@NonNull Location location) {
        Preconditions.checkState(hasMslAltitudeAccuracy(location), "The Mean Sea Level altitude accuracy of the location is not set.");
        return b(location).getFloat(EXTRA_MSL_ALTITUDE_ACCURACY);
    }

    public static void setMslAltitudeAccuracyMeters(@NonNull Location location, @FloatRange(from = 0.0d) float f) {
        b(location).putFloat(EXTRA_MSL_ALTITUDE_ACCURACY, f);
    }

    public static boolean hasMslAltitudeAccuracy(@NonNull Location location) {
        return a(location, EXTRA_MSL_ALTITUDE_ACCURACY);
    }

    public static boolean isMock(@NonNull Location location) {
        return b.a(location);
    }

    public static void setMock(@NonNull Location location, boolean z) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            c().invoke(location, Boolean.valueOf(z));
        } catch (IllegalAccessException e) {
            IllegalAccessError illegalAccessError = new IllegalAccessError();
            illegalAccessError.initCause(e);
            throw illegalAccessError;
        } catch (NoSuchMethodException e2) {
            NoSuchMethodError noSuchMethodError = new NoSuchMethodError();
            noSuchMethodError.initCause(e2);
            throw noSuchMethodError;
        } catch (InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }

    @RequiresApi(26)
    public static class c {
        private c() {
        }

        @DoNotInline
        public static boolean f(Location location) {
            return location.hasVerticalAccuracy();
        }

        @DoNotInline
        public static float c(Location location) {
            return location.getVerticalAccuracyMeters();
        }

        @DoNotInline
        public static void i(Location location, float f) {
            location.setVerticalAccuracyMeters(f);
        }

        @DoNotInline
        public static boolean e(Location location) {
            return location.hasSpeedAccuracy();
        }

        @DoNotInline
        public static float b(Location location) {
            return location.getSpeedAccuracyMetersPerSecond();
        }

        @DoNotInline
        public static void h(Location location, float f) {
            location.setSpeedAccuracyMetersPerSecond(f);
        }

        @DoNotInline
        public static boolean d(Location location) {
            return location.hasBearingAccuracy();
        }

        @DoNotInline
        public static float a(Location location) {
            return location.getBearingAccuracyDegrees();
        }

        @DoNotInline
        public static void g(Location location, float f) {
            location.setBearingAccuracyDegrees(f);
        }
    }

    @RequiresApi(18)
    public static class b {
        private b() {
        }

        @DoNotInline
        public static boolean a(Location location) {
            return location.isFromMockProvider();
        }
    }

    @RequiresApi(17)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static long a(Location location) {
            return location.getElapsedRealtimeNanos();
        }
    }

    public static Method c() throws NoSuchMethodException, SecurityException {
        if (f1070a == null) {
            Method declaredMethod = Location.class.getDeclaredMethod("setIsFromMockProvider", Boolean.TYPE);
            f1070a = declaredMethod;
            declaredMethod.setAccessible(true);
        }
        return f1070a;
    }

    public static Bundle b(Location location) {
        Bundle extras = location.getExtras();
        if (extras != null) {
            return extras;
        }
        location.setExtras(new Bundle());
        return location.getExtras();
    }

    public static boolean a(Location location, String str) {
        Bundle extras = location.getExtras();
        return extras != null && extras.containsKey(str);
    }

    public static void removeMslAltitude(@NonNull Location location) {
        Bundle extras = location.getExtras();
        if (extras != null) {
            extras.remove(EXTRA_MSL_ALTITUDE);
            if (extras.isEmpty()) {
                location.setExtras(null);
            }
        }
    }

    public static void removeMslAltitudeAccuracy(@NonNull Location location) {
        Bundle extras = location.getExtras();
        if (extras != null) {
            extras.remove(EXTRA_MSL_ALTITUDE_ACCURACY);
            if (extras.isEmpty()) {
                location.setExtras(null);
            }
        }
    }
}
