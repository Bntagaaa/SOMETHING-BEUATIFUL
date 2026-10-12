package androidx.core.app;

import android.app.Service;
import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobServiceEngine;
import android.app.job.JobWorkItem;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
import android.os.IBinder;
import android.os.PowerManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.appcompat.app.r;
import java.util.ArrayList;
import java.util.HashMap;

@Deprecated
/* loaded from: classes.dex */
public abstract class JobIntentService extends Service {
    public static final Object h = new Object();
    public static final HashMap i = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public f f853a;

    /* renamed from: b, reason: collision with root package name */
    public h f854b;
    public a c;
    public boolean d = false;
    public boolean e = false;
    public boolean f = false;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f855g;

    public interface b {
        IBinder compatGetBinder();

        e dequeueWork();
    }

    public interface e {
        void complete();

        Intent getIntent();
    }

    public abstract void onHandleWork(@NonNull Intent intent);

    public boolean onStopCurrentWork() {
        return true;
    }

    public static abstract class h {

        /* renamed from: a, reason: collision with root package name */
        public final ComponentName f864a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f865b;
        public int c;

        public abstract void a(Intent intent);

        public void serviceProcessingFinished() {
        }

        public void serviceProcessingStarted() {
        }

        public void serviceStartReceived() {
        }

        public h(ComponentName componentName) {
            this.f864a = componentName;
        }

        public final void b(int i) {
            if (!this.f865b) {
                this.f865b = true;
                this.c = i;
            } else {
                if (this.c == i) {
                    return;
                }
                StringBuilder sbO = _COROUTINE.a.o(i, "Given job ID ", " is different than previous ");
                sbO.append(this.c);
                throw new IllegalArgumentException(sbO.toString());
            }
        }
    }

    public static final class c extends h {
        public final Context d;
        public final PowerManager.WakeLock e;
        public final PowerManager.WakeLock f;

        /* renamed from: g, reason: collision with root package name */
        public boolean f857g;
        public boolean h;

        public c(Context context, ComponentName componentName) {
            super(componentName);
            this.d = context.getApplicationContext();
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            PowerManager.WakeLock wakeLockNewWakeLock = powerManager.newWakeLock(1, componentName.getClassName() + ":launch");
            this.e = wakeLockNewWakeLock;
            wakeLockNewWakeLock.setReferenceCounted(false);
            PowerManager.WakeLock wakeLockNewWakeLock2 = powerManager.newWakeLock(1, componentName.getClassName() + ":run");
            this.f = wakeLockNewWakeLock2;
            wakeLockNewWakeLock2.setReferenceCounted(false);
        }

        @Override // androidx.core.app.JobIntentService.h
        public final void a(Intent intent) {
            Intent intent2 = new Intent(intent);
            intent2.setComponent(this.f864a);
            if (this.d.startService(intent2) != null) {
                synchronized (this) {
                    try {
                        if (!this.f857g) {
                            this.f857g = true;
                            if (!this.h) {
                                this.e.acquire(60000L);
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }

        @Override // androidx.core.app.JobIntentService.h
        public void serviceStartReceived() {
            synchronized (this) {
                this.f857g = false;
            }
        }

        @Override // androidx.core.app.JobIntentService.h
        public void serviceProcessingStarted() {
            synchronized (this) {
                try {
                    if (!this.h) {
                        this.h = true;
                        this.f.acquire(600000L);
                        this.e.release();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.core.app.JobIntentService.h
        public void serviceProcessingFinished() {
            synchronized (this) {
                try {
                    if (this.h) {
                        if (this.f857g) {
                            this.e.acquire(60000L);
                        }
                        this.h = false;
                        this.f.release();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @RequiresApi(26)
    public static final class f extends JobServiceEngine implements b {

        /* renamed from: a, reason: collision with root package name */
        public final JobIntentService f860a;

        /* renamed from: b, reason: collision with root package name */
        public final Object f861b;
        public JobParameters c;

        public final class a implements e {

            /* renamed from: a, reason: collision with root package name */
            public final JobWorkItem f862a;

            public a(JobWorkItem jobWorkItem) {
                this.f862a = jobWorkItem;
            }

            @Override // androidx.core.app.JobIntentService.e
            public Intent getIntent() {
                return this.f862a.getIntent();
            }

            @Override // androidx.core.app.JobIntentService.e
            public void complete() {
                synchronized (f.this.f861b) {
                    try {
                        JobParameters jobParameters = f.this.c;
                        if (jobParameters != null) {
                            jobParameters.completeWork(this.f862a);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }

        public f(JobIntentService jobIntentService) {
            super(jobIntentService);
            this.f861b = new Object();
            this.f860a = jobIntentService;
        }

        @Override // androidx.core.app.JobIntentService.b
        public IBinder compatGetBinder() {
            return getBinder();
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStartJob(JobParameters jobParameters) {
            this.c = jobParameters;
            this.f860a.a(false);
            return true;
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStopJob(JobParameters jobParameters) {
            JobIntentService jobIntentService = this.f860a;
            a aVar = jobIntentService.c;
            if (aVar != null) {
                aVar.cancel(jobIntentService.d);
            }
            jobIntentService.e = true;
            boolean zOnStopCurrentWork = jobIntentService.onStopCurrentWork();
            synchronized (this.f861b) {
                this.c = null;
            }
            return zOnStopCurrentWork;
        }

        @Override // androidx.core.app.JobIntentService.b
        public e dequeueWork() {
            synchronized (this.f861b) {
                try {
                    JobParameters jobParameters = this.c;
                    if (jobParameters == null) {
                        return null;
                    }
                    JobWorkItem jobWorkItemDequeueWork = jobParameters.dequeueWork();
                    if (jobWorkItemDequeueWork == null) {
                        return null;
                    }
                    jobWorkItemDequeueWork.getIntent().setExtrasClassLoader(this.f860a.getClassLoader());
                    return new a(jobWorkItemDequeueWork);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @RequiresApi(26)
    public static final class g extends h {
        public final JobInfo d;
        public final JobScheduler e;

        public g(Context context, ComponentName componentName, int i) {
            super(componentName);
            b(i);
            this.d = new JobInfo.Builder(i, componentName).setOverrideDeadline(0L).build();
            this.e = (JobScheduler) context.getApplicationContext().getSystemService("jobscheduler");
        }

        @Override // androidx.core.app.JobIntentService.h
        public final void a(Intent intent) {
            this.e.enqueue(this.d, r.j(intent));
        }
    }

    public final class d implements e {

        /* renamed from: a, reason: collision with root package name */
        public final Intent f858a;

        /* renamed from: b, reason: collision with root package name */
        public final int f859b;

        public d(Intent intent, int i) {
            this.f858a = intent;
            this.f859b = i;
        }

        @Override // androidx.core.app.JobIntentService.e
        public Intent getIntent() {
            return this.f858a;
        }

        @Override // androidx.core.app.JobIntentService.e
        public void complete() {
            JobIntentService.this.stopSelf(this.f859b);
        }
    }

    public final class a extends AsyncTask<Void, Void, Void> {
        public a() {
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Void... voidArr) {
            e eVarDequeueWork;
            while (true) {
                JobIntentService jobIntentService = JobIntentService.this;
                f fVar = jobIntentService.f853a;
                if (fVar != null) {
                    eVarDequeueWork = fVar.dequeueWork();
                } else {
                    synchronized (jobIntentService.f855g) {
                        try {
                            eVarDequeueWork = jobIntentService.f855g.size() > 0 ? (e) jobIntentService.f855g.remove(0) : null;
                        } finally {
                        }
                    }
                }
                if (eVarDequeueWork == null) {
                    return null;
                }
                JobIntentService.this.onHandleWork(eVarDequeueWork.getIntent());
                eVarDequeueWork.complete();
            }
        }

        @Override // android.os.AsyncTask
        public void onCancelled(Void r1) {
            JobIntentService.this.c();
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Void r1) {
            JobIntentService.this.c();
        }
    }

    public JobIntentService() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f855g = null;
        } else {
            this.f855g = new ArrayList();
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 26) {
            this.f853a = new f(this);
            this.f854b = null;
        } else {
            this.f853a = null;
            this.f854b = b(this, new ComponentName(this, getClass()), false, 0);
        }
    }

    @Override // android.app.Service
    public int onStartCommand(@Nullable Intent intent, int i2, int i3) {
        if (this.f855g == null) {
            return 2;
        }
        this.f854b.serviceStartReceived();
        synchronized (this.f855g) {
            ArrayList arrayList = this.f855g;
            if (intent == null) {
                intent = new Intent();
            }
            arrayList.add(new d(intent, i3));
            a(true);
        }
        return 3;
    }

    @Override // android.app.Service
    public IBinder onBind(@NonNull Intent intent) {
        f fVar = this.f853a;
        if (fVar != null) {
            return fVar.compatGetBinder();
        }
        return null;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        ArrayList arrayList = this.f855g;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f = true;
                this.f854b.serviceProcessingFinished();
            }
        }
    }

    public static void enqueueWork(@NonNull Context context, @NonNull Class<?> cls, int i2, @NonNull Intent intent) {
        enqueueWork(context, new ComponentName(context, cls), i2, intent);
    }

    public static void enqueueWork(@NonNull Context context, @NonNull ComponentName componentName, int i2, @NonNull Intent intent) {
        if (intent == null) {
            throw new IllegalArgumentException("work must not be null");
        }
        synchronized (h) {
            h hVarB = b(context, componentName, true, i2);
            hVarB.b(i2);
            hVarB.a(intent);
        }
    }

    public static h b(Context context, ComponentName componentName, boolean z, int i2) {
        h cVar;
        HashMap map = i;
        h hVar = (h) map.get(componentName);
        if (hVar != null) {
            return hVar;
        }
        if (Build.VERSION.SDK_INT < 26) {
            cVar = new c(context, componentName);
        } else {
            if (!z) {
                throw new IllegalArgumentException("Can't be here without a job id");
            }
            cVar = new g(context, componentName, i2);
        }
        map.put(componentName, cVar);
        return cVar;
    }

    public void setInterruptIfStopped(boolean z) {
        this.d = z;
    }

    public boolean isStopped() {
        return this.e;
    }

    public final void a(boolean z) {
        if (this.c == null) {
            this.c = new a();
            h hVar = this.f854b;
            if (hVar != null && z) {
                hVar.serviceProcessingStarted();
            }
            this.c.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    public final void c() {
        ArrayList arrayList = this.f855g;
        if (arrayList != null) {
            synchronized (arrayList) {
                try {
                    this.c = null;
                    ArrayList arrayList2 = this.f855g;
                    if (arrayList2 != null && arrayList2.size() > 0) {
                        a(false);
                    } else if (!this.f) {
                        this.f854b.serviceProcessingFinished();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
