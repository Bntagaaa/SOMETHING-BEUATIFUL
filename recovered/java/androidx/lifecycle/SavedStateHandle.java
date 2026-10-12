package androidx.lifecycle;

import android.os.Binder;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import androidx.annotation.MainThread;
import androidx.annotation.RestrictTo;
import androidx.core.os.BundleKt;
import androidx.savedstate.SavedStateRegistry;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.collections.g0;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u000b\u0018\u0000 '2\u00020\u0001:\u0002'(B\u001f\b\u0016\u0012\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006B\t\b\u0016¢\u0006\u0004\b\u0005\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0007¢\u0006\u0004\b\t\u0010\nJ\u0018\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u0003H\u0087\u0002¢\u0006\u0004\b\r\u0010\u000eJ#\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010\"\u0004\b\u0000\u0010\u000f2\u0006\u0010\u000b\u001a\u00020\u0003H\u0007¢\u0006\u0004\b\u0011\u0010\u0012J+\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010\"\u0004\b\u0000\u0010\u000f2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00028\u0000H\u0007¢\u0006\u0004\b\u0011\u0010\u0014J+\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u0015\"\u0004\b\u0000\u0010\u000f2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00028\u0000H\u0007¢\u0006\u0004\b\u0016\u0010\u0017J\u0015\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00030\u0018H\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ \u0010\u001b\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u000f2\u0006\u0010\u000b\u001a\u00020\u0003H\u0087\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ(\u0010\u001f\u001a\u00020\u001e\"\u0004\b\u0000\u0010\u000f2\u0006\u0010\u000b\u001a\u00020\u00032\b\u0010\u001d\u001a\u0004\u0018\u00018\u0000H\u0087\u0002¢\u0006\u0004\b\u001f\u0010 J\u001f\u0010!\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u000f2\u0006\u0010\u000b\u001a\u00020\u0003H\u0007¢\u0006\u0004\b!\u0010\u001cJ\u001f\u0010#\u001a\u00020\u001e2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\bH\u0007¢\u0006\u0004\b#\u0010$J\u0017\u0010%\u001a\u00020\u001e2\u0006\u0010\u000b\u001a\u00020\u0003H\u0007¢\u0006\u0004\b%\u0010&¨\u0006)"}, d2 = {"Landroidx/lifecycle/SavedStateHandle;", "", "", "", "initialState", "<init>", "(Ljava/util/Map;)V", "()V", "Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;", "savedStateProvider", "()Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;", "key", "", "contains", "(Ljava/lang/String;)Z", "T", "Landroidx/lifecycle/MutableLiveData;", "getLiveData", "(Ljava/lang/String;)Landroidx/lifecycle/MutableLiveData;", "initialValue", "(Ljava/lang/String;Ljava/lang/Object;)Landroidx/lifecycle/MutableLiveData;", "Lkotlinx/coroutines/flow/StateFlow;", "getStateFlow", "(Ljava/lang/String;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;", "", "keys", "()Ljava/util/Set;", "get", "(Ljava/lang/String;)Ljava/lang/Object;", "value", "", "set", "(Ljava/lang/String;Ljava/lang/Object;)V", "remove", "provider", "setSavedStateProvider", "(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V", "clearSavedStateProvider", "(Ljava/lang/String;)V", "Companion", "SavingStateLiveData", "lifecycle-viewmodel-savedstate_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSavedStateHandle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateHandle.kt\nandroidx/lifecycle/SavedStateHandle\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,489:1\n361#2,3:490\n364#2,4:494\n1#3:493\n*S KotlinDebug\n*F\n+ 1 SavedStateHandle.kt\nandroidx/lifecycle/SavedStateHandle\n*L\n227#1:490,3\n227#1:494,4\n*E\n"})
/* loaded from: classes.dex */
public final class SavedStateHandle {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final Class[] f = {Boolean.TYPE, boolean[].class, Double.TYPE, double[].class, Integer.TYPE, int[].class, Long.TYPE, long[].class, String.class, String[].class, Binder.class, Bundle.class, Byte.TYPE, byte[].class, Character.TYPE, char[].class, CharSequence.class, CharSequence[].class, ArrayList.class, Float.TYPE, float[].class, Parcelable.class, Parcelable[].class, Serializable.class, Short.TYPE, short[].class, SparseArray.class, Size.class, SizeF.class};

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f1848a;

    /* renamed from: b, reason: collision with root package name */
    public final LinkedHashMap f1849b;
    public final LinkedHashMap c;
    public final LinkedHashMap d;
    public final SavedStateRegistry.SavedStateProvider e;

    @JvmStatic
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public static final SavedStateHandle createHandle(@Nullable Bundle bundle, @Nullable Bundle bundle2) {
        return INSTANCE.createHandle(bundle, bundle2);
    }

    public static Bundle a(SavedStateHandle this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        for (Map.Entry entry : MapsKt.toMap(this$0.f1849b).entrySet()) {
            this$0.set((String) entry.getKey(), ((SavedStateRegistry.SavedStateProvider) entry.getValue()).saveState());
        }
        LinkedHashMap linkedHashMap = this$0.f1848a;
        Set<String> setKeySet = linkedHashMap.keySet();
        ArrayList arrayList = new ArrayList(setKeySet.size());
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (String str : setKeySet) {
            arrayList.add(str);
            arrayList2.add(linkedHashMap.get(str));
        }
        return BundleKt.bundleOf(TuplesKt.to("keys", arrayList), TuplesKt.to("values", arrayList2));
    }

    public SavedStateHandle(@NotNull Map<String, ? extends Object> initialState) {
        Intrinsics.checkNotNullParameter(initialState, "initialState");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f1848a = linkedHashMap;
        this.f1849b = new LinkedHashMap();
        this.c = new LinkedHashMap();
        this.d = new LinkedHashMap();
        this.e = new androidx.activity.c(this, 1);
        linkedHashMap.putAll(initialState);
    }

    public SavedStateHandle() {
        this.f1848a = new LinkedHashMap();
        this.f1849b = new LinkedHashMap();
        this.c = new LinkedHashMap();
        this.d = new LinkedHashMap();
        this.e = new androidx.activity.c(this, 1);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    /* renamed from: savedStateProvider, reason: from getter */
    public final SavedStateRegistry.SavedStateProvider getE() {
        return this.e;
    }

    @MainThread
    public final boolean contains(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.f1848a.containsKey(key);
    }

    @MainThread
    @NotNull
    public final <T> MutableLiveData<T> getLiveData(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        MutableLiveData<T> mutableLiveDataB = b(null, key, false);
        Intrinsics.checkNotNull(mutableLiveDataB, "null cannot be cast to non-null type androidx.lifecycle.MutableLiveData<T of androidx.lifecycle.SavedStateHandle.getLiveData>");
        return mutableLiveDataB;
    }

    @MainThread
    @NotNull
    public final <T> MutableLiveData<T> getLiveData(@NotNull String key, T initialValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        return b(initialValue, key, true);
    }

    public final MutableLiveData b(Object obj, String str, boolean z) {
        SavingStateLiveData savingStateLiveData;
        LinkedHashMap linkedHashMap = this.c;
        Object obj2 = linkedHashMap.get(str);
        MutableLiveData mutableLiveData = obj2 instanceof MutableLiveData ? (MutableLiveData) obj2 : null;
        if (mutableLiveData != null) {
            return mutableLiveData;
        }
        LinkedHashMap linkedHashMap2 = this.f1848a;
        if (linkedHashMap2.containsKey(str)) {
            savingStateLiveData = new SavingStateLiveData(this, str, linkedHashMap2.get(str));
        } else if (z) {
            linkedHashMap2.put(str, obj);
            savingStateLiveData = new SavingStateLiveData(this, str, obj);
        } else {
            savingStateLiveData = new SavingStateLiveData(this, str);
        }
        linkedHashMap.put(str, savingStateLiveData);
        return savingStateLiveData;
    }

    @MainThread
    @NotNull
    public final Set<String> keys() {
        return g0.plus(g0.plus(this.f1848a.keySet(), (Iterable) this.f1849b.keySet()), (Iterable) this.c.keySet());
    }

    @MainThread
    @Nullable
    public final <T> T get(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            return (T) this.f1848a.get(key);
        } catch (ClassCastException unused) {
            remove(key);
            return null;
        }
    }

    @MainThread
    public final <T> void set(@NotNull String key, @Nullable T value) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (!INSTANCE.validateValue(value)) {
            StringBuilder sb = new StringBuilder("Can't put value with type ");
            Intrinsics.checkNotNull(value);
            sb.append(value.getClass());
            sb.append(" into saved state");
            throw new IllegalArgumentException(sb.toString());
        }
        Object obj = this.c.get(key);
        MutableLiveData mutableLiveData = obj instanceof MutableLiveData ? (MutableLiveData) obj : null;
        if (mutableLiveData != null) {
            mutableLiveData.setValue(value);
        } else {
            this.f1848a.put(key, value);
        }
        MutableStateFlow mutableStateFlow = (MutableStateFlow) this.d.get(key);
        if (mutableStateFlow == null) {
            return;
        }
        mutableStateFlow.setValue(value);
    }

    @MainThread
    @Nullable
    public final <T> T remove(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        T t = (T) this.f1848a.remove(key);
        SavingStateLiveData savingStateLiveData = (SavingStateLiveData) this.c.remove(key);
        if (savingStateLiveData != null) {
            savingStateLiveData.detach();
        }
        this.d.remove(key);
        return t;
    }

    @MainThread
    public final void setSavedStateProvider(@NotNull String key, @NotNull SavedStateRegistry.SavedStateProvider provider) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(provider, "provider");
        this.f1849b.put(key, provider);
    }

    @MainThread
    public final void clearSavedStateProvider(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.f1849b.remove(key);
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B#\b\u0016\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00028\u0000¢\u0006\u0004\b\b\u0010\tB\u001b\b\u0016\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\nJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\f\u0010\rJ\r\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Landroidx/lifecycle/SavedStateHandle$SavingStateLiveData;", "T", "Landroidx/lifecycle/MutableLiveData;", "Landroidx/lifecycle/SavedStateHandle;", "handle", "", "key", "value", "<init>", "(Landroidx/lifecycle/SavedStateHandle;Ljava/lang/String;Ljava/lang/Object;)V", "(Landroidx/lifecycle/SavedStateHandle;Ljava/lang/String;)V", "", "setValue", "(Ljava/lang/Object;)V", "detach", "()V", "lifecycle-viewmodel-savedstate_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class SavingStateLiveData<T> extends MutableLiveData<T> {
        public final String l;
        public SavedStateHandle m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SavingStateLiveData(@Nullable SavedStateHandle savedStateHandle, @NotNull String key, T t) {
            super(t);
            Intrinsics.checkNotNullParameter(key, "key");
            this.l = key;
            this.m = savedStateHandle;
        }

        public SavingStateLiveData(@Nullable SavedStateHandle savedStateHandle, @NotNull String key) {
            Intrinsics.checkNotNullParameter(key, "key");
            this.l = key;
            this.m = savedStateHandle;
        }

        @Override // androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData
        public void setValue(T value) {
            SavedStateHandle savedStateHandle = this.m;
            if (savedStateHandle != null) {
                Map map = savedStateHandle.f1848a;
                String str = this.l;
                map.put(str, value);
                MutableStateFlow mutableStateFlow = (MutableStateFlow) savedStateHandle.d.get(str);
                if (mutableStateFlow != null) {
                    mutableStateFlow.setValue(value);
                }
            }
            super.setValue(value);
        }

        public final void detach() {
            this.m = null;
        }
    }

    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0007J\u0012\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u0007R \u0010\u0003\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\b\u0001\u0012\u00020\u0001\u0018\u00010\u00050\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Landroidx/lifecycle/SavedStateHandle$Companion;", "", "()V", "ACCEPTABLE_CLASSES", "", "Ljava/lang/Class;", "[Ljava/lang/Class;", "KEYS", "", "VALUES", "createHandle", "Landroidx/lifecycle/SavedStateHandle;", "restoredState", "Landroid/os/Bundle;", "defaultState", "validateValue", "", "value", "lifecycle-viewmodel-savedstate_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        @NotNull
        public final SavedStateHandle createHandle(@Nullable Bundle restoredState, @Nullable Bundle defaultState) {
            if (restoredState == null) {
                if (defaultState == null) {
                    return new SavedStateHandle();
                }
                HashMap map = new HashMap();
                for (String key : defaultState.keySet()) {
                    Intrinsics.checkNotNullExpressionValue(key, "key");
                    map.put(key, defaultState.get(key));
                }
                return new SavedStateHandle(map);
            }
            ClassLoader classLoader = SavedStateHandle.class.getClassLoader();
            Intrinsics.checkNotNull(classLoader);
            restoredState.setClassLoader(classLoader);
            ArrayList parcelableArrayList = restoredState.getParcelableArrayList("keys");
            ArrayList parcelableArrayList2 = restoredState.getParcelableArrayList("values");
            if (parcelableArrayList == null || parcelableArrayList2 == null || parcelableArrayList.size() != parcelableArrayList2.size()) {
                throw new IllegalStateException("Invalid bundle passed as restored state");
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            int size = parcelableArrayList.size();
            for (int i = 0; i < size; i++) {
                Object obj = parcelableArrayList.get(i);
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                linkedHashMap.put((String) obj, parcelableArrayList2.get(i));
            }
            return new SavedStateHandle(linkedHashMap);
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final boolean validateValue(@Nullable Object value) {
            if (value == null) {
                return true;
            }
            for (Class cls : SavedStateHandle.f) {
                Intrinsics.checkNotNull(cls);
                if (cls.isInstance(value)) {
                    return true;
                }
            }
            return false;
        }
    }

    @MainThread
    @NotNull
    public final <T> StateFlow<T> getStateFlow(@NotNull String key, T initialValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        LinkedHashMap linkedHashMap = this.d;
        Object objMutableStateFlow = linkedHashMap.get(key);
        if (objMutableStateFlow == null) {
            LinkedHashMap linkedHashMap2 = this.f1848a;
            if (!linkedHashMap2.containsKey(key)) {
                linkedHashMap2.put(key, initialValue);
            }
            objMutableStateFlow = StateFlowKt.MutableStateFlow(linkedHashMap2.get(key));
            linkedHashMap.put(key, objMutableStateFlow);
            linkedHashMap.put(key, objMutableStateFlow);
        }
        StateFlow<T> stateFlowAsStateFlow = FlowKt.asStateFlow((MutableStateFlow) objMutableStateFlow);
        Intrinsics.checkNotNull(stateFlowAsStateFlow, "null cannot be cast to non-null type kotlinx.coroutines.flow.StateFlow<T of androidx.lifecycle.SavedStateHandle.getStateFlow>");
        return stateFlowAsStateFlow;
    }
}
