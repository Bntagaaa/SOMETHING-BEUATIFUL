package androidx.core.location;

import android.annotation.SuppressLint;
import android.location.GnssMeasurementsEvent;
import android.location.GnssStatus;
import android.location.GpsStatus;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.location.LocationRequest;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresPermission;
import androidx.appcompat.app.q;
import androidx.collection.SimpleArrayMap;
import androidx.core.location.GnssStatusCompat;
import androidx.core.location.LocationManagerCompat;
import androidx.core.os.CancellationSignal;
import androidx.core.os.ExecutorCompat;
import androidx.core.util.Consumer;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Preconditions;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* loaded from: classes.dex */
public final class LocationManagerCompat {

    /* renamed from: a, reason: collision with root package name */
    public static Class f1071a;

    /* renamed from: b, reason: collision with root package name */
    public static Method f1072b;
    public static Method c;
    public static final WeakHashMap d = new WeakHashMap();

    public static boolean isLocationEnabled(@NonNull LocationManager locationManager) {
        if (Build.VERSION.SDK_INT >= 28) {
            return c.c(locationManager);
        }
        return locationManager.isProviderEnabled("network") || locationManager.isProviderEnabled("gps");
    }

    public static boolean hasProvider(@NonNull LocationManager locationManager, @NonNull String str) {
        if (Build.VERSION.SDK_INT >= 31) {
            return e.a(locationManager, str);
        }
        if (locationManager.getAllProviders().contains(str)) {
            return true;
        }
        return locationManager.getProvider(str) != null;
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public static void getCurrentLocation(@NonNull LocationManager locationManager, @NonNull String str, @Nullable CancellationSignal cancellationSignal, @NonNull Executor executor, @NonNull Consumer<Location> consumer) {
        if (Build.VERSION.SDK_INT >= 30) {
            d.a(locationManager, str, cancellationSignal, executor, consumer);
            return;
        }
        if (cancellationSignal != null) {
            cancellationSignal.throwIfCanceled();
        }
        Location lastKnownLocation = locationManager.getLastKnownLocation(str);
        if (lastKnownLocation != null && SystemClock.elapsedRealtime() - LocationCompat.getElapsedRealtimeMillis(lastKnownLocation) < 10000) {
            executor.execute(new androidx.core.location.d(consumer, lastKnownLocation, 0));
            return;
        }
        final f fVar = new f(locationManager, executor, consumer);
        locationManager.requestLocationUpdates(str, 0L, 0.0f, fVar, Looper.getMainLooper());
        if (cancellationSignal != null) {
            cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: androidx.core.location.e
                @Override // androidx.core.os.CancellationSignal.OnCancelListener
                public final void onCancel() {
                    fVar.cancel();
                }
            });
        }
        fVar.startTimeout(30000L);
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public static void requestLocationUpdates(@NonNull LocationManager locationManager, @NonNull String str, @NonNull LocationRequestCompat locationRequestCompat, @NonNull Executor executor, @NonNull LocationListenerCompat locationListenerCompat) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 31) {
            e.c(locationManager, str, locationRequestCompat.toLocationRequest(), executor, locationListenerCompat);
            return;
        }
        if (i2 < 30 || !d.tryRequestLocationUpdates(locationManager, str, locationRequestCompat, executor, locationListenerCompat)) {
            l lVar = new l(new k(locationListenerCompat, str), executor);
            if (a.b(locationManager, str, locationRequestCompat, lVar)) {
                return;
            }
            synchronized (d) {
                locationManager.requestLocationUpdates(str, locationRequestCompat.getIntervalMillis(), locationRequestCompat.getMinUpdateDistanceMeters(), lVar, Looper.getMainLooper());
                c(locationManager, lVar);
            }
        }
    }

    public static void c(LocationManager locationManager, l lVar) {
        WeakReference weakReference = (WeakReference) d.put(lVar.getKey(), new WeakReference(lVar));
        l lVar2 = weakReference != null ? (l) weakReference.get() : null;
        if (lVar2 != null) {
            lVar2.unregister();
            locationManager.removeUpdates(lVar2);
        }
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public static void requestLocationUpdates(@NonNull LocationManager locationManager, @NonNull String str, @NonNull LocationRequestCompat locationRequestCompat, @NonNull LocationListenerCompat locationListenerCompat, @NonNull Looper looper) {
        if (Build.VERSION.SDK_INT >= 31) {
            e.c(locationManager, str, locationRequestCompat.toLocationRequest(), ExecutorCompat.create(new Handler(looper)), locationListenerCompat);
        } else {
            if (a.a(locationManager, str, locationRequestCompat, locationListenerCompat, looper)) {
                return;
            }
            locationManager.requestLocationUpdates(str, locationRequestCompat.getIntervalMillis(), locationRequestCompat.getMinUpdateDistanceMeters(), locationListenerCompat, looper);
        }
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public static void removeUpdates(@NonNull LocationManager locationManager, @NonNull LocationListenerCompat locationListenerCompat) {
        WeakHashMap weakHashMap = d;
        synchronized (weakHashMap) {
            try {
                Iterator it = weakHashMap.values().iterator();
                ArrayList arrayList = null;
                while (it.hasNext()) {
                    l lVar = (l) ((WeakReference) it.next()).get();
                    if (lVar != null) {
                        k key = lVar.getKey();
                        if (key.f1085b == locationListenerCompat) {
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                            }
                            arrayList.add(key);
                            lVar.unregister();
                            locationManager.removeUpdates(lVar);
                        }
                    }
                }
                if (arrayList != null) {
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        d.remove((k) it2.next());
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        locationManager.removeUpdates(locationListenerCompat);
    }

    @Nullable
    public static String getGnssHardwareModelName(@NonNull LocationManager locationManager) {
        if (Build.VERSION.SDK_INT >= 28) {
            return c.a(locationManager);
        }
        return null;
    }

    public static int getGnssYearOfHardware(@NonNull LocationManager locationManager) {
        if (Build.VERSION.SDK_INT >= 28) {
            return c.b(locationManager);
        }
        return 0;
    }

    public static class g {

        /* renamed from: a, reason: collision with root package name */
        public static final SimpleArrayMap f1079a = new SimpleArrayMap();

        private g() {
        }
    }

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    @RequiresApi(24)
    public static boolean registerGnssMeasurementsCallback(@NonNull LocationManager locationManager, @NonNull GnssMeasurementsEvent.Callback callback, @NonNull Handler handler) {
        if (Build.VERSION.SDK_INT != 30) {
            return b.a(locationManager, callback, handler);
        }
        return a(locationManager, ExecutorCompat.create(handler), callback);
    }

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    @RequiresApi(30)
    public static boolean registerGnssMeasurementsCallback(@NonNull LocationManager locationManager, @NonNull Executor executor, @NonNull GnssMeasurementsEvent.Callback callback) {
        if (Build.VERSION.SDK_INT > 30) {
            return e.b(locationManager, executor, callback);
        }
        return a(locationManager, executor, callback);
    }

    @RequiresApi(24)
    public static void unregisterGnssMeasurementsCallback(@NonNull LocationManager locationManager, @NonNull GnssMeasurementsEvent.Callback callback) {
        b.c(locationManager, callback);
    }

    public static boolean a(LocationManager locationManager, Executor executor, GnssMeasurementsEvent.Callback callback) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (Build.VERSION.SDK_INT == 30) {
            try {
                if (f1071a == null) {
                    f1071a = Class.forName("android.location.GnssRequest$Builder");
                }
                if (f1072b == null) {
                    Method declaredMethod = f1071a.getDeclaredMethod("build", new Class[0]);
                    f1072b = declaredMethod;
                    declaredMethod.setAccessible(true);
                }
                if (c == null) {
                    Method declaredMethod2 = LocationManager.class.getDeclaredMethod("registerGnssMeasurementsCallback", Class.forName("android.location.GnssRequest"), Executor.class, q.C());
                    c = declaredMethod2;
                    declaredMethod2.setAccessible(true);
                }
                Object objInvoke = c.invoke(locationManager, f1072b.invoke(f1071a.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]), new Object[0]), executor, callback);
                if (objInvoke != null) {
                    if (((Boolean) objInvoke).booleanValue()) {
                        return true;
                    }
                }
            } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException unused) {
            }
            return false;
        }
        throw new IllegalStateException();
    }

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    public static boolean registerGnssStatusCallback(@NonNull LocationManager locationManager, @NonNull GnssStatusCompat.Callback callback, @NonNull Handler handler) {
        if (Build.VERSION.SDK_INT >= 30) {
            return registerGnssStatusCallback(locationManager, ExecutorCompat.create(handler), callback);
        }
        return registerGnssStatusCallback(locationManager, new j(handler), callback);
    }

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    public static boolean registerGnssStatusCallback(@NonNull LocationManager locationManager, @NonNull Executor executor, @NonNull GnssStatusCompat.Callback callback) {
        if (Build.VERSION.SDK_INT >= 30) {
            return b(locationManager, null, executor, callback);
        }
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper == null) {
            looperMyLooper = Looper.getMainLooper();
        }
        return b(locationManager, new Handler(looperMyLooper), executor, callback);
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x00cc A[Catch: all -> 0x00a7, TryCatch #7 {all -> 0x00a7, blocks: (B:27:0x0056, B:60:0x00ad, B:61:0x00c3, B:62:0x00c4, B:64:0x00cc, B:66:0x00d4, B:67:0x00da, B:68:0x00db, B:69:0x00e0, B:70:0x00e1, B:71:0x00e7), top: B:79:0x0056 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00e1 A[Catch: all -> 0x00a7, TryCatch #7 {all -> 0x00a7, blocks: (B:27:0x0056, B:60:0x00ad, B:61:0x00c3, B:62:0x00c4, B:64:0x00cc, B:66:0x00d4, B:67:0x00da, B:68:0x00db, B:69:0x00e0, B:70:0x00e1, B:71:0x00e7), top: B:79:0x0056 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00ea A[Catch: all -> 0x002f, TRY_ENTER, TryCatch #10 {all -> 0x002f, blocks: (B:16:0x0021, B:18:0x0029, B:22:0x0035, B:24:0x004c, B:33:0x0079, B:34:0x0080, B:43:0x008d, B:44:0x0094, B:73:0x00ea, B:74:0x00f1, B:25:0x0050, B:75:0x00f2, B:76:0x0108, B:21:0x0032), top: B:80:0x0021 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean b(final android.location.LocationManager r9, android.os.Handler r10, java.util.concurrent.Executor r11, androidx.core.location.GnssStatusCompat.Callback r12) {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.location.LocationManagerCompat.b(android.location.LocationManager, android.os.Handler, java.util.concurrent.Executor, androidx.core.location.GnssStatusCompat$Callback):boolean");
    }

    public static void unregisterGnssStatusCallback(@NonNull LocationManager locationManager, @NonNull GnssStatusCompat.Callback callback) {
        if (Build.VERSION.SDK_INT >= 24) {
            SimpleArrayMap simpleArrayMap = g.f1079a;
            synchronized (simpleArrayMap) {
                try {
                    Object objRemove = simpleArrayMap.remove(callback);
                    if (objRemove != null) {
                        b.d(locationManager, objRemove);
                    }
                } finally {
                }
            }
            return;
        }
        SimpleArrayMap simpleArrayMap2 = g.f1079a;
        synchronized (simpleArrayMap2) {
            try {
                i iVar = (i) simpleArrayMap2.remove(callback);
                if (iVar != null) {
                    iVar.unregister();
                    locationManager.removeGpsStatusListener(iVar);
                }
            } finally {
            }
        }
    }

    private LocationManagerCompat() {
    }

    public static class k {

        /* renamed from: a, reason: collision with root package name */
        public final String f1084a;

        /* renamed from: b, reason: collision with root package name */
        public final LocationListenerCompat f1085b;

        public k(LocationListenerCompat locationListenerCompat, String str) {
            this.f1084a = (String) ObjectsCompat.requireNonNull(str, "invalid null provider");
            this.f1085b = (LocationListenerCompat) ObjectsCompat.requireNonNull(locationListenerCompat, "invalid null listener");
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof k)) {
                return false;
            }
            k kVar = (k) obj;
            return this.f1084a.equals(kVar.f1084a) && this.f1085b.equals(kVar.f1085b);
        }

        public int hashCode() {
            return ObjectsCompat.hash(this.f1084a, this.f1085b);
        }
    }

    public static class l implements LocationListener {

        /* renamed from: a, reason: collision with root package name */
        public volatile k f1086a;

        /* renamed from: b, reason: collision with root package name */
        public final Executor f1087b;

        public l(k kVar, Executor executor) {
            this.f1086a = kVar;
            this.f1087b = executor;
        }

        public k getKey() {
            return (k) ObjectsCompat.requireNonNull(this.f1086a);
        }

        public void unregister() {
            this.f1086a = null;
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(@NonNull Location location) {
            if (this.f1086a == null) {
                return;
            }
            this.f1087b.execute(new androidx.core.location.m(this, location, 1));
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(@NonNull List<Location> list) {
            if (this.f1086a == null) {
                return;
            }
            this.f1087b.execute(new androidx.core.location.m(this, list, 0));
        }

        @Override // android.location.LocationListener
        public void onFlushComplete(final int i) {
            if (this.f1086a == null) {
                return;
            }
            this.f1087b.execute(new Runnable() { // from class: androidx.core.location.n
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.l lVar = this.f1118a;
                    int i2 = i;
                    LocationManagerCompat.k kVar = lVar.f1086a;
                    if (kVar == null) {
                        return;
                    }
                    kVar.f1085b.onFlushComplete(i2);
                }
            });
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(final String str, final int i, final Bundle bundle) {
            if (this.f1086a == null) {
                return;
            }
            this.f1087b.execute(new Runnable() { // from class: androidx.core.location.o
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.l lVar = this.f1120a;
                    String str2 = str;
                    int i2 = i;
                    Bundle bundle2 = bundle;
                    LocationManagerCompat.k kVar = lVar.f1086a;
                    if (kVar == null) {
                        return;
                    }
                    kVar.f1085b.onStatusChanged(str2, i2, bundle2);
                }
            });
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(@NonNull String str) {
            if (this.f1086a == null) {
                return;
            }
            this.f1087b.execute(new androidx.core.location.l(this, str, 0));
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(@NonNull String str) {
            if (this.f1086a == null) {
                return;
            }
            this.f1087b.execute(new androidx.core.location.l(this, str, 1));
        }
    }

    @RequiresApi(30)
    public static class h extends GnssStatus.Callback {

        /* renamed from: a, reason: collision with root package name */
        public final GnssStatusCompat.Callback f1080a;

        public h(GnssStatusCompat.Callback callback) {
            Preconditions.checkArgument(callback != null, "invalid null callback");
            this.f1080a = callback;
        }

        @Override // android.location.GnssStatus.Callback
        public void onStarted() {
            this.f1080a.onStarted();
        }

        @Override // android.location.GnssStatus.Callback
        public void onStopped() {
            this.f1080a.onStopped();
        }

        @Override // android.location.GnssStatus.Callback
        public void onFirstFix(int i) {
            this.f1080a.onFirstFix(i);
        }

        @Override // android.location.GnssStatus.Callback
        public void onSatelliteStatusChanged(GnssStatus gnssStatus) {
            this.f1080a.onSatelliteStatusChanged(GnssStatusCompat.wrap(gnssStatus));
        }
    }

    @RequiresApi(24)
    public static class m extends GnssStatus.Callback {

        /* renamed from: a, reason: collision with root package name */
        public final GnssStatusCompat.Callback f1088a;

        /* renamed from: b, reason: collision with root package name */
        public volatile Executor f1089b;

        public m(GnssStatusCompat.Callback callback) {
            Preconditions.checkArgument(callback != null, "invalid null callback");
            this.f1088a = callback;
        }

        public void register(Executor executor) {
            Preconditions.checkArgument(executor != null, "invalid null executor");
            Preconditions.checkState(this.f1089b == null);
            this.f1089b = executor;
        }

        public void unregister() {
            this.f1089b = null;
        }

        @Override // android.location.GnssStatus.Callback
        public void onStarted() {
            Executor executor = this.f1089b;
            if (executor == null) {
                return;
            }
            executor.execute(new p(this, executor, 1));
        }

        @Override // android.location.GnssStatus.Callback
        public void onStopped() {
            Executor executor = this.f1089b;
            if (executor == null) {
                return;
            }
            executor.execute(new p(this, executor, 0));
        }

        @Override // android.location.GnssStatus.Callback
        public void onFirstFix(int i) {
            Executor executor = this.f1089b;
            if (executor == null) {
                return;
            }
            executor.execute(new androidx.core.location.j(this, executor, i, 1));
        }

        @Override // android.location.GnssStatus.Callback
        public void onSatelliteStatusChanged(GnssStatus gnssStatus) {
            Executor executor = this.f1089b;
            if (executor == null) {
                return;
            }
            executor.execute(new androidx.core.location.k(this, executor, gnssStatus, 1));
        }
    }

    public static class i implements GpsStatus.Listener {

        /* renamed from: a, reason: collision with root package name */
        public final LocationManager f1081a;

        /* renamed from: b, reason: collision with root package name */
        public final GnssStatusCompat.Callback f1082b;
        public volatile Executor c;

        public i(LocationManager locationManager, GnssStatusCompat.Callback callback) {
            Preconditions.checkArgument(callback != null, "invalid null callback");
            this.f1081a = locationManager;
            this.f1082b = callback;
        }

        public void register(Executor executor) {
            Preconditions.checkState(this.c == null);
            this.c = executor;
        }

        public void unregister() {
            this.c = null;
        }

        @Override // android.location.GpsStatus.Listener
        @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
        public void onGpsStatusChanged(int i) {
            GpsStatus gpsStatus;
            final Executor executor = this.c;
            if (executor == null) {
                return;
            }
            if (i == 1) {
                final int i2 = 0;
                executor.execute(new Runnable(this) { // from class: androidx.core.location.i

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ LocationManagerCompat.i f1109b;

                    {
                        this.f1109b = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i2) {
                            case 0:
                                LocationManagerCompat.i iVar = this.f1109b;
                                if (iVar.c == executor) {
                                    iVar.f1082b.onStarted();
                                    break;
                                }
                                break;
                            default:
                                LocationManagerCompat.i iVar2 = this.f1109b;
                                if (iVar2.c == executor) {
                                    iVar2.f1082b.onStopped();
                                    break;
                                }
                                break;
                        }
                    }
                });
                return;
            }
            if (i == 2) {
                final int i3 = 1;
                executor.execute(new Runnable(this) { // from class: androidx.core.location.i

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ LocationManagerCompat.i f1109b;

                    {
                        this.f1109b = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i3) {
                            case 0:
                                LocationManagerCompat.i iVar = this.f1109b;
                                if (iVar.c == executor) {
                                    iVar.f1082b.onStarted();
                                    break;
                                }
                                break;
                            default:
                                LocationManagerCompat.i iVar2 = this.f1109b;
                                if (iVar2.c == executor) {
                                    iVar2.f1082b.onStopped();
                                    break;
                                }
                                break;
                        }
                    }
                });
            } else {
                if (i != 3) {
                    if (i == 4 && (gpsStatus = this.f1081a.getGpsStatus(null)) != null) {
                        executor.execute(new androidx.core.location.k(this, executor, GnssStatusCompat.wrap(gpsStatus), 0));
                        return;
                    }
                    return;
                }
                GpsStatus gpsStatus2 = this.f1081a.getGpsStatus(null);
                if (gpsStatus2 != null) {
                    executor.execute(new androidx.core.location.j(this, executor, gpsStatus2.getTimeToFirstFix(), 0));
                }
            }
        }
    }

    public static final class f implements LocationListener {

        /* renamed from: a, reason: collision with root package name */
        public final LocationManager f1077a;

        /* renamed from: b, reason: collision with root package name */
        public final Executor f1078b;
        public final Handler c = new Handler(Looper.getMainLooper());
        public Consumer d;
        public boolean e;
        public androidx.core.location.h f;

        @Override // android.location.LocationListener
        public void onProviderEnabled(@NonNull String str) {
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i, Bundle bundle) {
        }

        public f(LocationManager locationManager, Executor executor, Consumer consumer) {
            this.f1077a = locationManager;
            this.f1078b = executor;
            this.d = consumer;
        }

        @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
        public void cancel() {
            synchronized (this) {
                try {
                    if (this.e) {
                        return;
                    }
                    this.e = true;
                    this.d = null;
                    this.f1077a.removeUpdates(this);
                    androidx.core.location.h hVar = this.f;
                    if (hVar != null) {
                        this.c.removeCallbacks(hVar);
                        this.f = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [androidx.core.location.h, java.lang.Runnable] */
        @SuppressLint({"MissingPermission"})
        public void startTimeout(long j) {
            synchronized (this) {
                try {
                    if (this.e) {
                        return;
                    }
                    ?? r0 = new Runnable() { // from class: androidx.core.location.h
                        @Override // java.lang.Runnable
                        public final void run() {
                            LocationManagerCompat.f fVar = this.f1107a;
                            fVar.f = null;
                            fVar.onLocationChanged((Location) null);
                        }
                    };
                    this.f = r0;
                    this.c.postDelayed(r0, j);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // android.location.LocationListener
        @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
        public void onProviderDisabled(@NonNull String str) {
            onLocationChanged((Location) null);
        }

        @Override // android.location.LocationListener
        @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
        public void onLocationChanged(@Nullable Location location) {
            synchronized (this) {
                try {
                    if (this.e) {
                        return;
                    }
                    this.e = true;
                    this.f1078b.execute(new androidx.core.location.d(this.d, location, 1));
                    this.d = null;
                    this.f1077a.removeUpdates(this);
                    androidx.core.location.h hVar = this.f;
                    if (hVar != null) {
                        this.c.removeCallbacks(hVar);
                        this.f = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static final class j implements Executor {

        /* renamed from: a, reason: collision with root package name */
        public final Handler f1083a;

        public j(Handler handler) {
            this.f1083a = (Handler) Preconditions.checkNotNull(handler);
        }

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            Looper looperMyLooper = Looper.myLooper();
            Handler handler = this.f1083a;
            if (looperMyLooper == handler.getLooper()) {
                runnable.run();
            } else {
                if (handler.post((Runnable) Preconditions.checkNotNull(runnable))) {
                    return;
                }
                throw new RejectedExecutionException(handler + " is shutting down");
            }
        }
    }

    @RequiresApi(31)
    public static class e {
        private e() {
        }

        @DoNotInline
        public static boolean a(LocationManager locationManager, @NonNull String str) {
            return locationManager.hasProvider(str);
        }

        @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
        @DoNotInline
        public static void c(LocationManager locationManager, @NonNull String str, @NonNull LocationRequest locationRequest, @NonNull Executor executor, @NonNull LocationListener locationListener) {
            locationManager.requestLocationUpdates(str, locationRequest, executor, locationListener);
        }

        @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
        @DoNotInline
        public static boolean b(@NonNull LocationManager locationManager, @NonNull Executor executor, @NonNull GnssMeasurementsEvent.Callback callback) {
            return locationManager.registerGnssMeasurementsCallback(executor, callback);
        }
    }

    @RequiresApi(30)
    public static class d {

        /* renamed from: a, reason: collision with root package name */
        public static Class f1075a;

        /* renamed from: b, reason: collision with root package name */
        public static Method f1076b;

        private d() {
        }

        @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
        @DoNotInline
        public static void a(LocationManager locationManager, @NonNull String str, @Nullable CancellationSignal cancellationSignal, @NonNull Executor executor, @NonNull final Consumer<Location> consumer) {
            android.os.CancellationSignal cancellationSignal2 = cancellationSignal != null ? (android.os.CancellationSignal) cancellationSignal.getCancellationSignalObject() : null;
            Objects.requireNonNull(consumer);
            locationManager.getCurrentLocation(str, cancellationSignal2, executor, new java.util.function.Consumer() { // from class: androidx.core.location.g
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    consumer.accept((Location) obj);
                }
            });
        }

        @DoNotInline
        public static boolean tryRequestLocationUpdates(LocationManager locationManager, String str, LocationRequestCompat locationRequestCompat, Executor executor, LocationListenerCompat locationListenerCompat) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            if (Build.VERSION.SDK_INT >= 30) {
                try {
                    if (f1075a == null) {
                        f1075a = Class.forName("android.location.LocationRequest");
                    }
                    if (f1076b == null) {
                        Method declaredMethod = LocationManager.class.getDeclaredMethod("requestLocationUpdates", f1075a, Executor.class, LocationListener.class);
                        f1076b = declaredMethod;
                        declaredMethod.setAccessible(true);
                    }
                    LocationRequest locationRequest = locationRequestCompat.toLocationRequest(str);
                    if (locationRequest != null) {
                        f1076b.invoke(locationManager, locationRequest, executor, locationListenerCompat);
                        return true;
                    }
                } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | UnsupportedOperationException | InvocationTargetException unused) {
                }
            }
            return false;
        }

        @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
        @DoNotInline
        public static boolean registerGnssStatusCallback(LocationManager locationManager, Handler handler, Executor executor, GnssStatusCompat.Callback callback) {
            SimpleArrayMap simpleArrayMap = g.f1079a;
            synchronized (simpleArrayMap) {
                try {
                    h hVar = (h) simpleArrayMap.get(callback);
                    if (hVar == null) {
                        hVar = new h(callback);
                    }
                    if (!locationManager.registerGnssStatusCallback(executor, hVar)) {
                        return false;
                    }
                    simpleArrayMap.put(callback, hVar);
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @RequiresApi(28)
    public static class c {
        private c() {
        }

        @DoNotInline
        public static boolean c(LocationManager locationManager) {
            return locationManager.isLocationEnabled();
        }

        @DoNotInline
        public static String a(LocationManager locationManager) {
            return locationManager.getGnssHardwareModelName();
        }

        @DoNotInline
        public static int b(LocationManager locationManager) {
            return locationManager.getGnssYearOfHardware();
        }
    }

    @RequiresApi(19)
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static Class f1073a;

        /* renamed from: b, reason: collision with root package name */
        public static Method f1074b;

        private a() {
        }

        @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
        @DoNotInline
        public static boolean b(LocationManager locationManager, String str, LocationRequestCompat locationRequestCompat, l lVar) throws NoSuchMethodException, SecurityException {
            try {
                if (f1073a == null) {
                    f1073a = Class.forName("android.location.LocationRequest");
                }
                if (f1074b == null) {
                    Method declaredMethod = LocationManager.class.getDeclaredMethod("requestLocationUpdates", f1073a, LocationListener.class, Looper.class);
                    f1074b = declaredMethod;
                    declaredMethod.setAccessible(true);
                }
                LocationRequest locationRequest = locationRequestCompat.toLocationRequest(str);
                if (locationRequest != null) {
                    synchronized (LocationManagerCompat.d) {
                        f1074b.invoke(locationManager, locationRequest, lVar, Looper.getMainLooper());
                        LocationManagerCompat.c(locationManager, lVar);
                    }
                    return true;
                }
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | UnsupportedOperationException | InvocationTargetException unused) {
            }
            return false;
        }

        @DoNotInline
        public static boolean a(LocationManager locationManager, String str, LocationRequestCompat locationRequestCompat, LocationListenerCompat locationListenerCompat, Looper looper) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            try {
                if (f1073a == null) {
                    f1073a = Class.forName("android.location.LocationRequest");
                }
                if (f1074b == null) {
                    Method declaredMethod = LocationManager.class.getDeclaredMethod("requestLocationUpdates", f1073a, LocationListener.class, Looper.class);
                    f1074b = declaredMethod;
                    declaredMethod.setAccessible(true);
                }
                LocationRequest locationRequest = locationRequestCompat.toLocationRequest(str);
                if (locationRequest != null) {
                    f1074b.invoke(locationManager, locationRequest, locationListenerCompat, looper);
                    return true;
                }
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | UnsupportedOperationException | InvocationTargetException unused) {
            }
            return false;
        }
    }

    @RequiresApi(24)
    public static class b {
        private b() {
        }

        @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
        @DoNotInline
        public static boolean a(@NonNull LocationManager locationManager, @NonNull GnssMeasurementsEvent.Callback callback, @NonNull Handler handler) {
            return locationManager.registerGnssMeasurementsCallback(callback, handler);
        }

        @DoNotInline
        public static void c(@NonNull LocationManager locationManager, @NonNull GnssMeasurementsEvent.Callback callback) {
            locationManager.unregisterGnssMeasurementsCallback(callback);
        }

        @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
        @DoNotInline
        public static boolean b(LocationManager locationManager, Handler handler, Executor executor, GnssStatusCompat.Callback callback) {
            Preconditions.checkArgument(handler != null);
            SimpleArrayMap simpleArrayMap = g.f1079a;
            synchronized (simpleArrayMap) {
                try {
                    m mVar = (m) simpleArrayMap.get(callback);
                    if (mVar == null) {
                        mVar = new m(callback);
                    } else {
                        mVar.unregister();
                    }
                    mVar.register(executor);
                    if (!locationManager.registerGnssStatusCallback(mVar, handler)) {
                        return false;
                    }
                    simpleArrayMap.put(callback, mVar);
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @DoNotInline
        public static void d(LocationManager locationManager, Object obj) {
            if (obj instanceof m) {
                ((m) obj).unregister();
            }
            locationManager.unregisterGnssStatusCallback((GnssStatus.Callback) obj);
        }
    }
}
