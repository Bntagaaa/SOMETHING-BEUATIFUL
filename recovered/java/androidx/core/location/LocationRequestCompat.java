package androidx.core.location;

import android.annotation.SuppressLint;
import android.location.LocationRequest;
import android.os.Build;
import androidx.annotation.DoNotInline;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import androidx.core.util.TimeUtils;
import gnu.kawa.functions.GetNamedPart;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class LocationRequestCompat {
    public static final long PASSIVE_INTERVAL = Long.MAX_VALUE;
    public static final int QUALITY_BALANCED_POWER_ACCURACY = 102;
    public static final int QUALITY_HIGH_ACCURACY = 100;
    public static final int QUALITY_LOW_POWER = 104;

    /* renamed from: a, reason: collision with root package name */
    public final int f1090a;

    /* renamed from: b, reason: collision with root package name */
    public final long f1091b;
    public final long c;
    public final long d;
    public final int e;
    public final float f;

    /* renamed from: g, reason: collision with root package name */
    public final long f1092g;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public @interface Quality {
    }

    public LocationRequestCompat(long j, int i, long j2, int i2, long j3, float f, long j4) {
        this.f1091b = j;
        this.f1090a = i;
        this.c = j3;
        this.d = j2;
        this.e = i2;
        this.f = f;
        this.f1092g = j4;
    }

    public int getQuality() {
        return this.f1090a;
    }

    @IntRange(from = 0)
    public long getIntervalMillis() {
        return this.f1091b;
    }

    @IntRange(from = 0)
    public long getMinUpdateIntervalMillis() {
        long j = this.c;
        return j == -1 ? this.f1091b : j;
    }

    @IntRange(from = 1)
    public long getDurationMillis() {
        return this.d;
    }

    @IntRange(from = 1, to = 2147483647L)
    public int getMaxUpdates() {
        return this.e;
    }

    @FloatRange(from = 0.0d, to = 3.4028234663852886E38d)
    public float getMinUpdateDistanceMeters() {
        return this.f;
    }

    @IntRange(from = 0)
    public long getMaxUpdateDelayMillis() {
        return this.f1092g;
    }

    @NonNull
    @RequiresApi(31)
    public LocationRequest toLocationRequest() {
        return b.toLocationRequest(this);
    }

    @Nullable
    @RequiresApi(19)
    @SuppressLint({"NewApi"})
    public LocationRequest toLocationRequest(@NonNull String str) {
        if (Build.VERSION.SDK_INT >= 31) {
            return toLocationRequest();
        }
        return androidx.core.app.g.d(a.toLocationRequest(this, str));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LocationRequestCompat)) {
            return false;
        }
        LocationRequestCompat locationRequestCompat = (LocationRequestCompat) obj;
        return this.f1090a == locationRequestCompat.f1090a && this.f1091b == locationRequestCompat.f1091b && this.c == locationRequestCompat.c && this.d == locationRequestCompat.d && this.e == locationRequestCompat.e && Float.compare(locationRequestCompat.f, this.f) == 0 && this.f1092g == locationRequestCompat.f1092g;
    }

    public int hashCode() {
        int i = this.f1090a * 31;
        long j = this.f1091b;
        int i2 = (i + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.c;
        return i2 + ((int) (j2 ^ (j2 >>> 32)));
    }

    @NonNull
    public String toString() {
        StringBuilder sbP = _COROUTINE.a.p("Request[");
        long j = this.f1091b;
        if (j != Long.MAX_VALUE) {
            sbP.append(GetNamedPart.CAST_METHOD_NAME);
            TimeUtils.formatDuration(j, sbP);
            int i = this.f1090a;
            if (i == 100) {
                sbP.append(" HIGH_ACCURACY");
            } else if (i == 102) {
                sbP.append(" BALANCED");
            } else if (i == 104) {
                sbP.append(" LOW_POWER");
            }
        } else {
            sbP.append("PASSIVE");
        }
        long j2 = this.d;
        if (j2 != Long.MAX_VALUE) {
            sbP.append(", duration=");
            TimeUtils.formatDuration(j2, sbP);
        }
        int i2 = this.e;
        if (i2 != Integer.MAX_VALUE) {
            sbP.append(", maxUpdates=");
            sbP.append(i2);
        }
        long j3 = this.c;
        if (j3 != -1 && j3 < j) {
            sbP.append(", minUpdateInterval=");
            TimeUtils.formatDuration(j3, sbP);
        }
        float f = this.f;
        if (f > 0.0d) {
            sbP.append(", minUpdateDistance=");
            sbP.append(f);
        }
        long j4 = this.f1092g;
        if (j4 / 2 > j) {
            sbP.append(", maxUpdateDelay=");
            TimeUtils.formatDuration(j4, sbP);
        }
        sbP.append(']');
        return sbP.toString();
    }

    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public long f1093a;

        /* renamed from: b, reason: collision with root package name */
        public int f1094b;
        public long c;
        public int d;
        public long e;
        public float f;

        /* renamed from: g, reason: collision with root package name */
        public long f1095g;

        public Builder(long j) {
            setIntervalMillis(j);
            this.f1094b = 102;
            this.c = Long.MAX_VALUE;
            this.d = Integer.MAX_VALUE;
            this.e = -1L;
            this.f = 0.0f;
            this.f1095g = 0L;
        }

        public Builder(@NonNull LocationRequestCompat locationRequestCompat) {
            this.f1093a = locationRequestCompat.f1091b;
            this.f1094b = locationRequestCompat.f1090a;
            this.c = locationRequestCompat.d;
            this.d = locationRequestCompat.e;
            this.e = locationRequestCompat.c;
            this.f = locationRequestCompat.f;
            this.f1095g = locationRequestCompat.f1092g;
        }

        @NonNull
        public Builder setIntervalMillis(@IntRange(from = 0) long j) {
            this.f1093a = Preconditions.checkArgumentInRange(j, 0L, Long.MAX_VALUE, "intervalMillis");
            return this;
        }

        @NonNull
        public Builder setQuality(int i) {
            Preconditions.checkArgument(i == 104 || i == 102 || i == 100, "quality must be a defined QUALITY constant, not %d", Integer.valueOf(i));
            this.f1094b = i;
            return this;
        }

        @NonNull
        public Builder setDurationMillis(@IntRange(from = 1) long j) {
            this.c = Preconditions.checkArgumentInRange(j, 1L, Long.MAX_VALUE, "durationMillis");
            return this;
        }

        @NonNull
        public Builder setMaxUpdates(@IntRange(from = 1, to = 2147483647L) int i) {
            this.d = Preconditions.checkArgumentInRange(i, 1, Integer.MAX_VALUE, "maxUpdates");
            return this;
        }

        @NonNull
        public Builder setMinUpdateIntervalMillis(@IntRange(from = 0) long j) {
            this.e = Preconditions.checkArgumentInRange(j, 0L, Long.MAX_VALUE, "minUpdateIntervalMillis");
            return this;
        }

        @NonNull
        public Builder clearMinUpdateIntervalMillis() {
            this.e = -1L;
            return this;
        }

        @NonNull
        public Builder setMinUpdateDistanceMeters(@FloatRange(from = 0.0d, to = 3.4028234663852886E38d) float f) {
            this.f = f;
            this.f = Preconditions.checkArgumentInRange(f, 0.0f, Float.MAX_VALUE, "minUpdateDistanceMeters");
            return this;
        }

        @NonNull
        public Builder setMaxUpdateDelayMillis(@IntRange(from = 0) long j) {
            this.f1095g = j;
            this.f1095g = Preconditions.checkArgumentInRange(j, 0L, Long.MAX_VALUE, "maxUpdateDelayMillis");
            return this;
        }

        @NonNull
        public LocationRequestCompat build() {
            Preconditions.checkState((this.f1093a == Long.MAX_VALUE && this.e == -1) ? false : true, "passive location requests must have an explicit minimum update interval");
            long j = this.f1093a;
            return new LocationRequestCompat(j, this.f1094b, this.c, this.d, Math.min(this.e, j), this.f, this.f1095g);
        }
    }

    @RequiresApi(31)
    public static class b {
        private b() {
        }

        @DoNotInline
        public static LocationRequest toLocationRequest(LocationRequestCompat locationRequestCompat) {
            return new LocationRequest.Builder(locationRequestCompat.getIntervalMillis()).setQuality(locationRequestCompat.getQuality()).setMinUpdateIntervalMillis(locationRequestCompat.getMinUpdateIntervalMillis()).setDurationMillis(locationRequestCompat.getDurationMillis()).setMaxUpdates(locationRequestCompat.getMaxUpdates()).setMinUpdateDistanceMeters(locationRequestCompat.getMinUpdateDistanceMeters()).setMaxUpdateDelayMillis(locationRequestCompat.getMaxUpdateDelayMillis()).build();
        }
    }

    @RequiresApi(19)
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static Class f1096a;

        /* renamed from: b, reason: collision with root package name */
        public static Method f1097b;
        public static Method c;
        public static Method d;
        public static Method e;
        public static Method f;

        private a() {
        }

        public static Object toLocationRequest(LocationRequestCompat locationRequestCompat, String str) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            try {
                if (f1096a == null) {
                    f1096a = Class.forName("android.location.LocationRequest");
                }
                Method method = f1097b;
                Class<?> cls = Long.TYPE;
                if (method == null) {
                    Method declaredMethod = f1096a.getDeclaredMethod("createFromDeprecatedProvider", String.class, cls, Float.TYPE, Boolean.TYPE);
                    f1097b = declaredMethod;
                    declaredMethod.setAccessible(true);
                }
                Object objInvoke = f1097b.invoke(null, str, Long.valueOf(locationRequestCompat.getIntervalMillis()), Float.valueOf(locationRequestCompat.getMinUpdateDistanceMeters()), Boolean.FALSE);
                if (objInvoke == null) {
                    return null;
                }
                Method method2 = c;
                Class<?> cls2 = Integer.TYPE;
                if (method2 == null) {
                    Method declaredMethod2 = f1096a.getDeclaredMethod("setQuality", cls2);
                    c = declaredMethod2;
                    declaredMethod2.setAccessible(true);
                }
                c.invoke(objInvoke, Integer.valueOf(locationRequestCompat.getQuality()));
                if (d == null) {
                    Method declaredMethod3 = f1096a.getDeclaredMethod("setFastestInterval", cls);
                    d = declaredMethod3;
                    declaredMethod3.setAccessible(true);
                }
                d.invoke(objInvoke, Long.valueOf(locationRequestCompat.getMinUpdateIntervalMillis()));
                if (locationRequestCompat.getMaxUpdates() < Integer.MAX_VALUE) {
                    if (e == null) {
                        Method declaredMethod4 = f1096a.getDeclaredMethod("setNumUpdates", cls2);
                        e = declaredMethod4;
                        declaredMethod4.setAccessible(true);
                    }
                    e.invoke(objInvoke, Integer.valueOf(locationRequestCompat.getMaxUpdates()));
                }
                if (locationRequestCompat.getDurationMillis() < Long.MAX_VALUE) {
                    if (f == null) {
                        Method declaredMethod5 = f1096a.getDeclaredMethod("setExpireIn", cls);
                        f = declaredMethod5;
                        declaredMethod5.setAccessible(true);
                    }
                    f.invoke(objInvoke, Long.valueOf(locationRequestCompat.getDurationMillis()));
                }
                return objInvoke;
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                return null;
            }
        }
    }
}
