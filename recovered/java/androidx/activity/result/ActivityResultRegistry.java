package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.ActivityOptionsCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;

/* loaded from: classes.dex */
public abstract class ActivityResultRegistry {

    /* renamed from: a, reason: collision with root package name */
    public Random f55a = new Random();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f56b = new HashMap();
    public final HashMap c = new HashMap();
    public final HashMap d = new HashMap();
    public ArrayList e = new ArrayList();
    public final transient HashMap f = new HashMap();

    /* renamed from: g, reason: collision with root package name */
    public final HashMap f57g = new HashMap();
    public final Bundle h = new Bundle();

    @MainThread
    public abstract <I, O> void onLaunch(int i, @NonNull ActivityResultContract<I, O> activityResultContract, @SuppressLint({"UnknownNullness"}) I i2, @Nullable ActivityOptionsCompat activityOptionsCompat);

    @NonNull
    public final <I, O> ActivityResultLauncher<I> register(@NonNull String str, @NonNull LifecycleOwner lifecycleOwner, @NonNull ActivityResultContract<I, O> activityResultContract, @NonNull ActivityResultCallback<O> activityResultCallback) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        if (lifecycle.getCurrentState().isAtLeast(Lifecycle.State.STARTED)) {
            throw new IllegalStateException("LifecycleOwner " + lifecycleOwner + " is attempting to register while current state is " + lifecycle.getCurrentState() + ". LifecycleOwners must call register before they are STARTED.");
        }
        a(str);
        HashMap map = this.d;
        e eVar = (e) map.get(str);
        if (eVar == null) {
            eVar = new e(lifecycle);
        }
        a aVar = new a(str, activityResultCallback, activityResultContract);
        eVar.f66a.addObserver(aVar);
        eVar.f67b.add(aVar);
        map.put(str, eVar);
        return new b(str, activityResultContract);
    }

    public class a implements LifecycleEventObserver {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f58a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ ActivityResultCallback f59b;
        public final /* synthetic */ ActivityResultContract c;

        public a(String str, ActivityResultCallback activityResultCallback, ActivityResultContract activityResultContract) {
            this.f58a = str;
            this.f59b = activityResultCallback;
            this.c = activityResultContract;
        }

        @Override // androidx.lifecycle.LifecycleEventObserver
        public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
            boolean zEquals = Lifecycle.Event.ON_START.equals(event);
            ActivityResultRegistry activityResultRegistry = ActivityResultRegistry.this;
            String str = this.f58a;
            HashMap map = activityResultRegistry.f;
            if (zEquals) {
                ActivityResultCallback activityResultCallback = this.f59b;
                ActivityResultContract activityResultContract = this.c;
                map.put(str, new d(activityResultContract, activityResultCallback));
                HashMap map2 = activityResultRegistry.f57g;
                if (map2.containsKey(str)) {
                    Object obj = map2.get(str);
                    map2.remove(str);
                    activityResultCallback.onActivityResult(obj);
                }
                Bundle bundle = activityResultRegistry.h;
                ActivityResult activityResult = (ActivityResult) bundle.getParcelable(str);
                if (activityResult != null) {
                    bundle.remove(str);
                    activityResultCallback.onActivityResult(activityResultContract.parseResult(activityResult.getResultCode(), activityResult.getData()));
                    return;
                }
                return;
            }
            if (Lifecycle.Event.ON_STOP.equals(event)) {
                map.remove(str);
            } else if (Lifecycle.Event.ON_DESTROY.equals(event)) {
                activityResultRegistry.b(str);
            }
        }
    }

    /* JADX INFO: Add missing generic type declarations: [I] */
    public class b<I> extends ActivityResultLauncher<I> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f60a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ ActivityResultContract f61b;

        public b(String str, ActivityResultContract activityResultContract) {
            this.f60a = str;
            this.f61b = activityResultContract;
        }

        @Override // androidx.activity.result.ActivityResultLauncher
        public void launch(I i, @Nullable ActivityOptionsCompat activityOptionsCompat) throws Exception {
            ActivityResultRegistry activityResultRegistry = ActivityResultRegistry.this;
            HashMap map = activityResultRegistry.c;
            String str = this.f60a;
            Integer num = (Integer) map.get(str);
            ActivityResultContract activityResultContract = this.f61b;
            if (num == null) {
                throw new IllegalStateException("Attempting to launch an unregistered ActivityResultLauncher with contract " + activityResultContract + " and input " + i + ". You must ensure the ActivityResultLauncher is registered before calling launch().");
            }
            activityResultRegistry.e.add(str);
            try {
                activityResultRegistry.onLaunch(num.intValue(), activityResultContract, i, activityOptionsCompat);
            } catch (Exception e) {
                activityResultRegistry.e.remove(str);
                throw e;
            }
        }

        @Override // androidx.activity.result.ActivityResultLauncher
        public void unregister() {
            ActivityResultRegistry.this.b(this.f60a);
        }

        @Override // androidx.activity.result.ActivityResultLauncher
        @NonNull
        public ActivityResultContract<I, ?> getContract() {
            return this.f61b;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public final <I, O> ActivityResultLauncher<I> register(@NonNull String str, @NonNull ActivityResultContract<I, O> activityResultContract, @NonNull ActivityResultCallback<O> activityResultCallback) {
        a(str);
        this.f.put(str, new d(activityResultContract, activityResultCallback));
        HashMap map = this.f57g;
        if (map.containsKey(str)) {
            Object obj = map.get(str);
            map.remove(str);
            activityResultCallback.onActivityResult(obj);
        }
        Bundle bundle = this.h;
        ActivityResult activityResult = (ActivityResult) bundle.getParcelable(str);
        if (activityResult != null) {
            bundle.remove(str);
            activityResultCallback.onActivityResult(activityResultContract.parseResult(activityResult.getResultCode(), activityResult.getData()));
        }
        return new c(str, activityResultContract);
    }

    /* JADX INFO: Add missing generic type declarations: [I] */
    public class c<I> extends ActivityResultLauncher<I> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f62a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ ActivityResultContract f63b;

        public c(String str, ActivityResultContract activityResultContract) {
            this.f62a = str;
            this.f63b = activityResultContract;
        }

        @Override // androidx.activity.result.ActivityResultLauncher
        public void launch(I i, @Nullable ActivityOptionsCompat activityOptionsCompat) throws Exception {
            ActivityResultRegistry activityResultRegistry = ActivityResultRegistry.this;
            HashMap map = activityResultRegistry.c;
            String str = this.f62a;
            Integer num = (Integer) map.get(str);
            ActivityResultContract activityResultContract = this.f63b;
            if (num == null) {
                throw new IllegalStateException("Attempting to launch an unregistered ActivityResultLauncher with contract " + activityResultContract + " and input " + i + ". You must ensure the ActivityResultLauncher is registered before calling launch().");
            }
            activityResultRegistry.e.add(str);
            try {
                activityResultRegistry.onLaunch(num.intValue(), activityResultContract, i, activityOptionsCompat);
            } catch (Exception e) {
                activityResultRegistry.e.remove(str);
                throw e;
            }
        }

        @Override // androidx.activity.result.ActivityResultLauncher
        public void unregister() {
            ActivityResultRegistry.this.b(this.f62a);
        }

        @Override // androidx.activity.result.ActivityResultLauncher
        @NonNull
        public ActivityResultContract<I, ?> getContract() {
            return this.f63b;
        }
    }

    public final void b(String str) {
        Integer num;
        if (!this.e.contains(str) && (num = (Integer) this.c.remove(str)) != null) {
            this.f56b.remove(num);
        }
        this.f.remove(str);
        HashMap map = this.f57g;
        if (map.containsKey(str)) {
            StringBuilder sbR = _COROUTINE.a.r("Dropping pending result for request ", str, ": ");
            sbR.append(map.get(str));
            Log.w("ActivityResultRegistry", sbR.toString());
            map.remove(str);
        }
        Bundle bundle = this.h;
        if (bundle.containsKey(str)) {
            StringBuilder sbR2 = _COROUTINE.a.r("Dropping pending result for request ", str, ": ");
            sbR2.append(bundle.getParcelable(str));
            Log.w("ActivityResultRegistry", sbR2.toString());
            bundle.remove(str);
        }
        HashMap map2 = this.d;
        e eVar = (e) map2.get(str);
        if (eVar != null) {
            ArrayList arrayList = eVar.f67b;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                eVar.f66a.removeObserver((LifecycleEventObserver) it.next());
            }
            arrayList.clear();
            map2.remove(str);
        }
    }

    public final void onSaveInstanceState(@NonNull Bundle bundle) {
        HashMap map = this.c;
        bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(map.values()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(map.keySet()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(this.e));
        bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", (Bundle) this.h.clone());
        bundle.putSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT", this.f55a);
    }

    public final void onRestoreInstanceState(@Nullable Bundle bundle) {
        if (bundle == null) {
            return;
        }
        ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
        ArrayList<String> stringArrayList = bundle.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
        if (stringArrayList == null || integerArrayList == null) {
            return;
        }
        this.e = bundle.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
        this.f55a = (Random) bundle.getSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT");
        Bundle bundle2 = bundle.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT");
        Bundle bundle3 = this.h;
        bundle3.putAll(bundle2);
        for (int i = 0; i < stringArrayList.size(); i++) {
            String str = stringArrayList.get(i);
            HashMap map = this.c;
            boolean zContainsKey = map.containsKey(str);
            HashMap map2 = this.f56b;
            if (zContainsKey) {
                Integer num = (Integer) map.remove(str);
                if (!bundle3.containsKey(str)) {
                    map2.remove(num);
                }
            }
            Integer num2 = integerArrayList.get(i);
            num2.intValue();
            String str2 = stringArrayList.get(i);
            map2.put(num2, str2);
            map.put(str2, num2);
        }
    }

    @MainThread
    public final boolean dispatchResult(int i, int i2, @Nullable Intent intent) {
        ActivityResultCallback activityResultCallback;
        String str = (String) this.f56b.get(Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        d dVar = (d) this.f.get(str);
        if (dVar != null && (activityResultCallback = dVar.f64a) != null && this.e.contains(str)) {
            activityResultCallback.onActivityResult(dVar.f65b.parseResult(i2, intent));
            this.e.remove(str);
            return true;
        }
        this.f57g.remove(str);
        this.h.putParcelable(str, new ActivityResult(i2, intent));
        return true;
    }

    @MainThread
    public final <O> boolean dispatchResult(int i, @SuppressLint({"UnknownNullness"}) O o) {
        ActivityResultCallback activityResultCallback;
        String str = (String) this.f56b.get(Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        d dVar = (d) this.f.get(str);
        if (dVar == null || (activityResultCallback = dVar.f64a) == null) {
            this.h.remove(str);
            this.f57g.put(str, o);
            return true;
        }
        if (!this.e.remove(str)) {
            return true;
        }
        activityResultCallback.onActivityResult(o);
        return true;
    }

    public final void a(String str) {
        HashMap map = this.c;
        if (((Integer) map.get(str)) != null) {
            return;
        }
        int iNextInt = this.f55a.nextInt(2147418112);
        while (true) {
            int i = iNextInt + 65536;
            HashMap map2 = this.f56b;
            if (map2.containsKey(Integer.valueOf(i))) {
                iNextInt = this.f55a.nextInt(2147418112);
            } else {
                map2.put(Integer.valueOf(i), str);
                map.put(str, Integer.valueOf(i));
                return;
            }
        }
    }

    public static class d<O> {

        /* renamed from: a, reason: collision with root package name */
        public final ActivityResultCallback f64a;

        /* renamed from: b, reason: collision with root package name */
        public final ActivityResultContract f65b;

        public d(ActivityResultContract activityResultContract, ActivityResultCallback activityResultCallback) {
            this.f64a = activityResultCallback;
            this.f65b = activityResultContract;
        }
    }

    public static class e {

        /* renamed from: a, reason: collision with root package name */
        public final Lifecycle f66a;

        /* renamed from: b, reason: collision with root package name */
        public final ArrayList f67b = new ArrayList();

        public e(Lifecycle lifecycle) {
            this.f66a = lifecycle;
        }
    }
}
