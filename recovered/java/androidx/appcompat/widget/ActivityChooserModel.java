package androidx.appcompat.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.os.AsyncTask;
import android.text.TextUtils;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
class ActivityChooserModel extends DataSetObservable {
    public static final Object n = new Object();
    public static final HashMap o = new HashMap();
    public final Context d;
    public final String e;
    public Intent f;
    public OnChooseActivityListener m;

    /* renamed from: a, reason: collision with root package name */
    public final Object f294a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f295b = new ArrayList();
    public final ArrayList c = new ArrayList();

    /* renamed from: g, reason: collision with root package name */
    public final ActivitySorter f296g = new a();
    public final int h = 50;
    public boolean i = true;
    public boolean j = false;
    public boolean k = true;
    public boolean l = false;

    public interface ActivityChooserModelClient {
        void setActivityChooserModel(ActivityChooserModel activityChooserModel);
    }

    public interface ActivitySorter {
        void sort(Intent intent, List<ActivityResolveInfo> list, List<HistoricalRecord> list2);
    }

    public interface OnChooseActivityListener {
        boolean onChooseActivity(ActivityChooserModel activityChooserModel, Intent intent);
    }

    public static ActivityChooserModel get(Context context, String str) {
        ActivityChooserModel activityChooserModel;
        synchronized (n) {
            try {
                HashMap map = o;
                activityChooserModel = (ActivityChooserModel) map.get(str);
                if (activityChooserModel == null) {
                    activityChooserModel = new ActivityChooserModel(context, str);
                    map.put(str, activityChooserModel);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return activityChooserModel;
    }

    public ActivityChooserModel(Context context, String str) {
        this.d = context.getApplicationContext();
        if (!TextUtils.isEmpty(str) && !str.endsWith(".xml")) {
            this.e = str.concat(".xml");
        } else {
            this.e = str;
        }
    }

    public void setIntent(Intent intent) {
        synchronized (this.f294a) {
            try {
                if (this.f == intent) {
                    return;
                }
                this.f = intent;
                this.l = true;
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public int getActivityCount() {
        int size;
        synchronized (this.f294a) {
            b();
            size = this.f295b.size();
        }
        return size;
    }

    public ResolveInfo getActivity(int i) {
        ResolveInfo resolveInfo;
        synchronized (this.f294a) {
            b();
            resolveInfo = ((ActivityResolveInfo) this.f295b.get(i)).resolveInfo;
        }
        return resolveInfo;
    }

    public int getActivityIndex(ResolveInfo resolveInfo) {
        synchronized (this.f294a) {
            try {
                b();
                ArrayList arrayList = this.f295b;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    if (((ActivityResolveInfo) arrayList.get(i)).resolveInfo == resolveInfo) {
                        return i;
                    }
                }
                return -1;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public Intent chooseActivity(int i) {
        synchronized (this.f294a) {
            try {
                if (this.f == null) {
                    return null;
                }
                b();
                ActivityInfo activityInfo = ((ActivityResolveInfo) this.f295b.get(i)).resolveInfo.activityInfo;
                ComponentName componentName = new ComponentName(activityInfo.packageName, activityInfo.name);
                Intent intent = new Intent(this.f);
                intent.setComponent(componentName);
                if (this.m != null) {
                    if (this.m.onChooseActivity(this, new Intent(intent))) {
                        return null;
                    }
                }
                a(new HistoricalRecord(componentName, System.currentTimeMillis(), 1.0f));
                return intent;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setOnChooseActivityListener(OnChooseActivityListener onChooseActivityListener) {
        synchronized (this.f294a) {
            this.m = onChooseActivityListener;
        }
    }

    public ResolveInfo getDefaultActivity() {
        synchronized (this.f294a) {
            try {
                b();
                if (this.f295b.isEmpty()) {
                    return null;
                }
                return ((ActivityResolveInfo) this.f295b.get(0)).resolveInfo;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setDefaultActivity(int i) {
        synchronized (this.f294a) {
            try {
                b();
                ActivityResolveInfo activityResolveInfo = (ActivityResolveInfo) this.f295b.get(i);
                ActivityResolveInfo activityResolveInfo2 = (ActivityResolveInfo) this.f295b.get(0);
                float f = activityResolveInfo2 != null ? (activityResolveInfo2.weight - activityResolveInfo.weight) + 5.0f : 1.0f;
                ActivityInfo activityInfo = activityResolveInfo.resolveInfo.activityInfo;
                a(new HistoricalRecord(new ComponentName(activityInfo.packageName, activityInfo.name), System.currentTimeMillis(), f));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public int getHistorySize() {
        int size;
        synchronized (this.f294a) {
            b();
            size = this.c.size();
        }
        return size;
    }

    public final void d() {
        ActivitySorter activitySorter = this.f296g;
        if (activitySorter == null || this.f == null) {
            return;
        }
        ArrayList arrayList = this.f295b;
        if (arrayList.isEmpty()) {
            return;
        }
        ArrayList arrayList2 = this.c;
        if (arrayList2.isEmpty()) {
            return;
        }
        activitySorter.sort(this.f, arrayList, Collections.unmodifiableList(arrayList2));
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x0106  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActivityChooserModel.b():void");
    }

    public final void a(HistoricalRecord historicalRecord) {
        ArrayList arrayList = this.c;
        if (arrayList.add(historicalRecord)) {
            this.k = true;
            c();
            if (!this.j) {
                throw new IllegalStateException("No preceding call to #readHistoricalData");
            }
            if (this.k) {
                this.k = false;
                String str = this.e;
                if (!TextUtils.isEmpty(str)) {
                    new b().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new ArrayList(arrayList), str);
                }
            }
            d();
            notifyChanged();
        }
    }

    public final void c() {
        ArrayList arrayList = this.c;
        int size = arrayList.size() - this.h;
        if (size <= 0) {
            return;
        }
        this.k = true;
        for (int i = 0; i < size; i++) {
        }
    }

    public static final class HistoricalRecord {
        public final ComponentName activity;
        public final long time;
        public final float weight;

        public HistoricalRecord(String str, long j, float f) {
            this(ComponentName.unflattenFromString(str), j, f);
        }

        public HistoricalRecord(ComponentName componentName, long j, float f) {
            this.activity = componentName;
            this.time = j;
            this.weight = f;
        }

        public int hashCode() {
            ComponentName componentName = this.activity;
            int iHashCode = componentName == null ? 0 : componentName.hashCode();
            long j = this.time;
            return Float.floatToIntBits(this.weight) + ((((iHashCode + 31) * 31) + ((int) (j ^ (j >>> 32)))) * 31);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || HistoricalRecord.class != obj.getClass()) {
                return false;
            }
            HistoricalRecord historicalRecord = (HistoricalRecord) obj;
            ComponentName componentName = this.activity;
            if (componentName == null) {
                if (historicalRecord.activity != null) {
                    return false;
                }
            } else if (!componentName.equals(historicalRecord.activity)) {
                return false;
            }
            return this.time == historicalRecord.time && Float.floatToIntBits(this.weight) == Float.floatToIntBits(historicalRecord.weight);
        }

        public String toString() {
            return "[; activity:" + this.activity + "; time:" + this.time + "; weight:" + new BigDecimal(this.weight) + "]";
        }
    }

    public static final class ActivityResolveInfo implements Comparable<ActivityResolveInfo> {
        public final ResolveInfo resolveInfo;
        public float weight;

        public ActivityResolveInfo(ResolveInfo resolveInfo) {
            this.resolveInfo = resolveInfo;
        }

        public int hashCode() {
            return Float.floatToIntBits(this.weight) + 31;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && ActivityResolveInfo.class == obj.getClass() && Float.floatToIntBits(this.weight) == Float.floatToIntBits(((ActivityResolveInfo) obj).weight);
        }

        @Override // java.lang.Comparable
        public int compareTo(ActivityResolveInfo activityResolveInfo) {
            return Float.floatToIntBits(activityResolveInfo.weight) - Float.floatToIntBits(this.weight);
        }

        public String toString() {
            return "[resolveInfo:" + this.resolveInfo.toString() + "; weight:" + new BigDecimal(this.weight) + "]";
        }
    }

    public static final class a implements ActivitySorter {

        /* renamed from: a, reason: collision with root package name */
        public final HashMap f297a = new HashMap();

        @Override // androidx.appcompat.widget.ActivityChooserModel.ActivitySorter
        public void sort(Intent intent, List<ActivityResolveInfo> list, List<HistoricalRecord> list2) {
            HashMap map = this.f297a;
            map.clear();
            int size = list.size();
            for (int i = 0; i < size; i++) {
                ActivityResolveInfo activityResolveInfo = list.get(i);
                activityResolveInfo.weight = 0.0f;
                ActivityInfo activityInfo = activityResolveInfo.resolveInfo.activityInfo;
                map.put(new ComponentName(activityInfo.packageName, activityInfo.name), activityResolveInfo);
            }
            float f = 1.0f;
            for (int size2 = list2.size() - 1; size2 >= 0; size2--) {
                HistoricalRecord historicalRecord = list2.get(size2);
                ActivityResolveInfo activityResolveInfo2 = (ActivityResolveInfo) map.get(historicalRecord.activity);
                if (activityResolveInfo2 != null) {
                    activityResolveInfo2.weight = (historicalRecord.weight * f) + activityResolveInfo2.weight;
                    f *= 0.95f;
                }
            }
            Collections.sort(list);
        }
    }

    public final class b extends AsyncTask<Object, Void, Void> {
        public b() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:67:0x0102 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:73:0x00fd A[PHI: r17
          0x00fd: PHI (r17v11 ??) = (r17v21 ??), (r17v22 ??), (r17v23 ??), (r17v24 ??), (r17v25 ??) binds: [B:49:0x00de, B:53:0x00fa, B:33:0x0097, B:45:0x00c2, B:32:0x0095] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:76:0x0097 A[EXC_TOP_SPLITTER, PHI: r17
          0x0097: PHI (r17v10 java.io.FileOutputStream) = 
          (r17v26 java.io.FileOutputStream)
          (r17v27 java.io.FileOutputStream)
          (r17v28 java.io.FileOutputStream)
          (r17v29 java.io.FileOutputStream)
         binds: [B:49:0x00de, B:53:0x00fa, B:45:0x00c2, B:32:0x0095] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r17v1 */
        /* JADX WARN: Type inference failed for: r17v11 */
        /* JADX WARN: Type inference failed for: r17v12 */
        /* JADX WARN: Type inference failed for: r17v13 */
        /* JADX WARN: Type inference failed for: r17v14 */
        /* JADX WARN: Type inference failed for: r17v15 */
        /* JADX WARN: Type inference failed for: r17v16 */
        /* JADX WARN: Type inference failed for: r17v17 */
        /* JADX WARN: Type inference failed for: r17v18 */
        /* JADX WARN: Type inference failed for: r17v19 */
        /* JADX WARN: Type inference failed for: r17v2 */
        /* JADX WARN: Type inference failed for: r17v20 */
        /* JADX WARN: Type inference failed for: r17v21 */
        /* JADX WARN: Type inference failed for: r17v22 */
        /* JADX WARN: Type inference failed for: r17v23 */
        /* JADX WARN: Type inference failed for: r17v24 */
        /* JADX WARN: Type inference failed for: r17v25 */
        /* JADX WARN: Type inference failed for: r17v3, types: [java.io.FileOutputStream] */
        /* JADX WARN: Type inference failed for: r17v4 */
        /* JADX WARN: Type inference failed for: r17v5 */
        /* JADX WARN: Type inference failed for: r17v6 */
        /* JADX WARN: Type inference failed for: r17v7 */
        /* JADX WARN: Type inference failed for: r17v8 */
        /* JADX WARN: Type inference failed for: r17v9 */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Void doInBackground(java.lang.Object... r17) throws java.lang.Throwable {
            /*
                Method dump skipped, instructions count: 281
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActivityChooserModel.b.doInBackground(java.lang.Object[]):java.lang.Void");
        }
    }
}
