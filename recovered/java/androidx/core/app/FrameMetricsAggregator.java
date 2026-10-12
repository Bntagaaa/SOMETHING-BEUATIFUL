package androidx.core.app;

import android.app.Activity;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.SparseIntArray;
import android.view.FrameMetrics;
import android.view.Window;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class FrameMetricsAggregator {
    public static final int ANIMATION_DURATION = 256;
    public static final int ANIMATION_INDEX = 8;
    public static final int COMMAND_DURATION = 32;
    public static final int COMMAND_INDEX = 5;
    public static final int DELAY_DURATION = 128;
    public static final int DELAY_INDEX = 7;
    public static final int DRAW_DURATION = 8;
    public static final int DRAW_INDEX = 3;
    public static final int EVERY_DURATION = 511;
    public static final int INPUT_DURATION = 2;
    public static final int INPUT_INDEX = 1;
    public static final int LAYOUT_MEASURE_DURATION = 4;
    public static final int LAYOUT_MEASURE_INDEX = 2;
    public static final int SWAP_DURATION = 64;
    public static final int SWAP_INDEX = 6;
    public static final int SYNC_DURATION = 16;
    public static final int SYNC_INDEX = 4;
    public static final int TOTAL_DURATION = 1;
    public static final int TOTAL_INDEX = 0;

    /* renamed from: a, reason: collision with root package name */
    public final b f849a;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public @interface MetricType {
    }

    public static class b {
        public void add(Activity activity) {
        }

        public SparseIntArray[] getMetrics() {
            return null;
        }

        public SparseIntArray[] remove(Activity activity) {
            return null;
        }

        public SparseIntArray[] reset() {
            return null;
        }

        public SparseIntArray[] stop() {
            return null;
        }
    }

    public FrameMetricsAggregator() {
        this(1);
    }

    public FrameMetricsAggregator(int i) {
        if (Build.VERSION.SDK_INT >= 24) {
            this.f849a = new a(i);
        } else {
            this.f849a = new b();
        }
    }

    public void add(@NonNull Activity activity) {
        this.f849a.add(activity);
    }

    @Nullable
    public SparseIntArray[] remove(@NonNull Activity activity) {
        return this.f849a.remove(activity);
    }

    @Nullable
    public SparseIntArray[] stop() {
        return this.f849a.stop();
    }

    @Nullable
    public SparseIntArray[] reset() {
        return this.f849a.reset();
    }

    @Nullable
    public SparseIntArray[] getMetrics() {
        return this.f849a.getMetrics();
    }

    @RequiresApi(24)
    public static class a extends b {
        public static HandlerThread e;
        public static Handler f;

        /* renamed from: a, reason: collision with root package name */
        public final int f850a;

        /* renamed from: b, reason: collision with root package name */
        public SparseIntArray[] f851b = new SparseIntArray[9];
        public final ArrayList c = new ArrayList();
        public final Window.OnFrameMetricsAvailableListener d = new WindowOnFrameMetricsAvailableListenerC0009a();

        public a(int i) {
            this.f850a = i;
        }

        /* renamed from: androidx.core.app.FrameMetricsAggregator$a$a, reason: collision with other inner class name */
        public class WindowOnFrameMetricsAvailableListenerC0009a implements Window.OnFrameMetricsAvailableListener {
            public WindowOnFrameMetricsAvailableListenerC0009a() {
            }

            @Override // android.view.Window.OnFrameMetricsAvailableListener
            public void onFrameMetricsAvailable(Window window, FrameMetrics frameMetrics, int i) {
                a aVar = a.this;
                if ((aVar.f850a & 1) != 0) {
                    a.a(aVar.f851b[0], frameMetrics.getMetric(8));
                }
                a aVar2 = a.this;
                if ((aVar2.f850a & 2) != 0) {
                    a.a(aVar2.f851b[1], frameMetrics.getMetric(1));
                }
                a aVar3 = a.this;
                if ((aVar3.f850a & 4) != 0) {
                    a.a(aVar3.f851b[2], frameMetrics.getMetric(3));
                }
                a aVar4 = a.this;
                if ((aVar4.f850a & 8) != 0) {
                    a.a(aVar4.f851b[3], frameMetrics.getMetric(4));
                }
                a aVar5 = a.this;
                if ((aVar5.f850a & 16) != 0) {
                    a.a(aVar5.f851b[4], frameMetrics.getMetric(5));
                }
                a aVar6 = a.this;
                if ((aVar6.f850a & 64) != 0) {
                    a.a(aVar6.f851b[6], frameMetrics.getMetric(7));
                }
                a aVar7 = a.this;
                if ((aVar7.f850a & 32) != 0) {
                    a.a(aVar7.f851b[5], frameMetrics.getMetric(6));
                }
                a aVar8 = a.this;
                if ((aVar8.f850a & 128) != 0) {
                    a.a(aVar8.f851b[7], frameMetrics.getMetric(0));
                }
                a aVar9 = a.this;
                if ((aVar9.f850a & 256) != 0) {
                    a.a(aVar9.f851b[8], frameMetrics.getMetric(2));
                }
            }
        }

        public static void a(SparseIntArray sparseIntArray, long j) {
            if (sparseIntArray != null) {
                int i = (int) ((500000 + j) / 1000000);
                if (j >= 0) {
                    sparseIntArray.put(i, sparseIntArray.get(i) + 1);
                }
            }
        }

        @Override // androidx.core.app.FrameMetricsAggregator.b
        public void add(Activity activity) {
            if (e == null) {
                HandlerThread handlerThread = new HandlerThread("FrameMetricsAggregator");
                e = handlerThread;
                handlerThread.start();
                f = new Handler(e.getLooper());
            }
            for (int i = 0; i <= 8; i++) {
                SparseIntArray[] sparseIntArrayArr = this.f851b;
                if (sparseIntArrayArr[i] == null && (this.f850a & (1 << i)) != 0) {
                    sparseIntArrayArr[i] = new SparseIntArray();
                }
            }
            activity.getWindow().addOnFrameMetricsAvailableListener(this.d, f);
            this.c.add(new WeakReference(activity));
        }

        @Override // androidx.core.app.FrameMetricsAggregator.b
        public SparseIntArray[] remove(Activity activity) {
            ArrayList arrayList = this.c;
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                WeakReference weakReference = (WeakReference) it.next();
                if (weakReference.get() == activity) {
                    arrayList.remove(weakReference);
                    break;
                }
            }
            activity.getWindow().removeOnFrameMetricsAvailableListener(this.d);
            return this.f851b;
        }

        @Override // androidx.core.app.FrameMetricsAggregator.b
        public SparseIntArray[] stop() {
            ArrayList arrayList = this.c;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                WeakReference weakReference = (WeakReference) arrayList.get(size);
                Activity activity = (Activity) weakReference.get();
                if (weakReference.get() != null) {
                    activity.getWindow().removeOnFrameMetricsAvailableListener(this.d);
                    arrayList.remove(size);
                }
            }
            return this.f851b;
        }

        @Override // androidx.core.app.FrameMetricsAggregator.b
        public SparseIntArray[] getMetrics() {
            return this.f851b;
        }

        @Override // androidx.core.app.FrameMetricsAggregator.b
        public SparseIntArray[] reset() {
            SparseIntArray[] sparseIntArrayArr = this.f851b;
            this.f851b = new SparseIntArray[9];
            return sparseIntArrayArr;
        }
    }
}
