package androidx.lifecycle;

import androidx.annotation.CheckResult;
import androidx.annotation.MainThread;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001e\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0001H\u0007\u001aB\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u001c\u0010\u0005\u001a\u0018\u0012\t\u0012\u0007H\u0002¢\u0006\u0002\b\u0007\u0012\t\u0012\u0007H\u0004¢\u0006\u0002\b\u00070\u0006H\u0007\u001a8\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00040\tH\u0007\u001aJ\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00020\u00012$\u0010\u0005\u001a \u0012\t\u0012\u0007H\u0002¢\u0006\u0002\b\u0007\u0012\u0011\u0012\u000f\u0012\u0004\u0012\u0002H\u0004\u0018\u00010\u0001¢\u0006\u0002\b\u00070\u0006H\u0007\u001a>\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0018\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00040\u00010\tH\u0007¨\u0006\f"}, d2 = {"distinctUntilChanged", "Landroidx/lifecycle/LiveData;", "X", "map", "Y", "transform", "Lkotlin/Function1;", "Lkotlin/jvm/JvmSuppressWildcards;", "mapFunction", "Landroidx/arch/core/util/Function;", "switchMap", "switchMapFunction", "lifecycle-livedata_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@JvmName(name = "Transformations")
/* loaded from: classes.dex */
public final class Transformations {

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public static final class d implements Observer, FunctionAdapter {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Lambda f1864a;

        /* JADX WARN: Multi-variable type inference failed */
        public d(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f1864a = (Lambda) function;
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final Function<?> getFunctionDelegate() {
            return this.f1864a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [kotlin.jvm.functions.Function1, kotlin.jvm.internal.Lambda] */
        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f1864a.invoke(obj);
        }
    }

    @JvmName(name = "map")
    @NotNull
    @CheckResult
    @MainThread
    public static final <X, Y> LiveData<Y> map(@NotNull LiveData<X> liveData, @NotNull Function1<X, Y> transform) {
        Intrinsics.checkNotNullParameter(liveData, "<this>");
        Intrinsics.checkNotNullParameter(transform, "transform");
        MediatorLiveData mediatorLiveData = new MediatorLiveData();
        if (liveData.isInitialized()) {
            mediatorLiveData.setValue(transform.invoke(liveData.getValue()));
        }
        mediatorLiveData.addSource(liveData, new d(new b(mediatorLiveData, transform)));
        return mediatorLiveData;
    }

    /* JADX INFO: Add missing generic type declarations: [X] */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u000e\u0010\u0004\u001a\n \u0005*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "", "X", "Y", "x", "kotlin.jvm.PlatformType", "invoke", "(Ljava/lang/Object;)V"}, k = 3, mv = {1, 8, 0}, xi = 48)
    public static final class b<X> extends Lambda implements Function1<X, Unit> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ MediatorLiveData f1862b;
        public final /* synthetic */ Function1 c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(MediatorLiveData mediatorLiveData, Function1 function1) {
            super(1);
            this.f1862b = mediatorLiveData;
            this.c = function1;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Object obj) {
            invoke2((b<X>) obj);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(X x) {
            this.f1862b.setValue(this.c.invoke(x));
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u000e\u0010\u0004\u001a\n \u0005*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "", "X", "Y", "x", "kotlin.jvm.PlatformType", "invoke", "(Ljava/lang/Object;)V"}, k = 3, mv = {1, 8, 0}, xi = 48)
    public static final class c extends Lambda implements Function1 {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ MediatorLiveData f1863b;
        public final /* synthetic */ androidx.arch.core.util.Function c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(androidx.arch.core.util.Function function, MediatorLiveData mediatorLiveData) {
            super(1);
            this.f1863b = mediatorLiveData;
            this.c = function;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            m5invoke(obj);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke, reason: collision with other method in class */
        public final void m5invoke(Object obj) {
            this.f1863b.setValue(this.c.apply(obj));
        }
    }

    @JvmName(name = "map")
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Use kotlin functions, instead of outdated arch core Functions")
    @CheckResult
    @MainThread
    public static final /* synthetic */ LiveData map(LiveData liveData, androidx.arch.core.util.Function mapFunction) {
        Intrinsics.checkNotNullParameter(liveData, "<this>");
        Intrinsics.checkNotNullParameter(mapFunction, "mapFunction");
        MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.addSource(liveData, new d(new c(mapFunction, mediatorLiveData)));
        return mediatorLiveData;
    }

    @JvmName(name = "switchMap")
    @NotNull
    @CheckResult
    @MainThread
    public static final <X, Y> LiveData<Y> switchMap(@NotNull LiveData<X> liveData, @NotNull Function1<X, LiveData<Y>> transform) {
        LiveData<Y> liveDataInvoke;
        Intrinsics.checkNotNullParameter(liveData, "<this>");
        Intrinsics.checkNotNullParameter(transform, "transform");
        MediatorLiveData mediatorLiveData = new MediatorLiveData();
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        if (liveData.isInitialized() && (liveDataInvoke = transform.invoke(liveData.getValue())) != null && liveDataInvoke.isInitialized()) {
            mediatorLiveData.setValue(liveDataInvoke.getValue());
        }
        mediatorLiveData.addSource(liveData, new d(new e(transform, objectRef, mediatorLiveData)));
        return mediatorLiveData;
    }

    /* JADX INFO: Add missing generic type declarations: [X] */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", "X", "Y", "value", "invoke", "(Ljava/lang/Object;)V"}, k = 3, mv = {1, 8, 0}, xi = 48)
    public static final class e<X> extends Lambda implements Function1<X, Unit> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Function1 f1865b;
        public final /* synthetic */ Ref.ObjectRef c;
        public final /* synthetic */ MediatorLiveData d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(Function1 function1, Ref.ObjectRef objectRef, MediatorLiveData mediatorLiveData) {
            super(1);
            this.f1865b = function1;
            this.c = objectRef;
            this.d = mediatorLiveData;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Object obj) {
            invoke2((e<X>) obj);
            return Unit.INSTANCE;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v2, types: [T, androidx.lifecycle.LiveData, java.lang.Object] */
        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(X x) {
            ?? r4 = (LiveData) this.f1865b.invoke(x);
            Ref.ObjectRef objectRef = this.c;
            T t = objectRef.element;
            if (t != r4) {
                MediatorLiveData mediatorLiveData = this.d;
                if (t != 0) {
                    Intrinsics.checkNotNull(t);
                    mediatorLiveData.removeSource((LiveData) t);
                }
                objectRef.element = r4;
                if (r4 != 0) {
                    Intrinsics.checkNotNull(r4);
                    mediatorLiveData.addSource(r4, new d(new a(mediatorLiveData)));
                }
            }
        }

        /* JADX INFO: Add missing generic type declarations: [Y] */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u000e\u0010\u0004\u001a\n \u0005*\u0004\u0018\u0001H\u0003H\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "", "X", "Y", "y", "kotlin.jvm.PlatformType", "invoke", "(Ljava/lang/Object;)V"}, k = 3, mv = {1, 8, 0}, xi = 48)
        public static final class a<Y> extends Lambda implements Function1<Y, Unit> {

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ MediatorLiveData f1866b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(MediatorLiveData mediatorLiveData) {
                super(1);
                this.f1866b = mediatorLiveData;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Object obj) {
                invoke2((a<Y>) obj);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Y y) {
                this.f1866b.setValue(y);
            }
        }
    }

    @JvmName(name = "switchMap")
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Use kotlin functions, instead of outdated arch core Functions")
    @CheckResult
    @MainThread
    public static final /* synthetic */ LiveData switchMap(LiveData liveData, final androidx.arch.core.util.Function switchMapFunction) {
        Intrinsics.checkNotNullParameter(liveData, "<this>");
        Intrinsics.checkNotNullParameter(switchMapFunction, "switchMapFunction");
        final MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.addSource(liveData, new Observer() { // from class: androidx.lifecycle.Transformations.switchMap.2

            /* renamed from: a, reason: collision with root package name and from kotlin metadata */
            public LiveData liveData;

            @Nullable
            public final LiveData getLiveData() {
                return this.liveData;
            }

            public final void setLiveData(@Nullable LiveData liveData2) {
                this.liveData = liveData2;
            }

            @Override // androidx.lifecycle.Observer
            public void onChanged(Object value) {
                LiveData liveData2 = (LiveData) switchMapFunction.apply(value);
                LiveData liveData3 = this.liveData;
                if (liveData3 == liveData2) {
                    return;
                }
                MediatorLiveData mediatorLiveData2 = mediatorLiveData;
                if (liveData3 != null) {
                    Intrinsics.checkNotNull(liveData3);
                    mediatorLiveData2.removeSource(liveData3);
                }
                this.liveData = liveData2;
                if (liveData2 != null) {
                    Intrinsics.checkNotNull(liveData2);
                    mediatorLiveData2.addSource(liveData2, new d(new a(mediatorLiveData2)));
                }
            }

            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u000e\u0010\u0004\u001a\n \u0005*\u0004\u0018\u0001H\u0003H\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "", "X", "Y", "y", "kotlin.jvm.PlatformType", "invoke", "(Ljava/lang/Object;)V"}, k = 3, mv = {1, 8, 0}, xi = 48)
            /* renamed from: androidx.lifecycle.Transformations$switchMap$2$a */
            public static final class a extends Lambda implements Function1 {

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ MediatorLiveData f1869b;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public a(MediatorLiveData mediatorLiveData) {
                    super(1);
                    this.f1869b = mediatorLiveData;
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    m6invoke(obj);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: collision with other method in class */
                public final void m6invoke(Object obj) {
                    this.f1869b.setValue(obj);
                }
            }
        });
        return mediatorLiveData;
    }

    @JvmName(name = "distinctUntilChanged")
    @NotNull
    @CheckResult
    @MainThread
    public static final <X> LiveData<X> distinctUntilChanged(@NotNull LiveData<X> liveData) {
        Intrinsics.checkNotNullParameter(liveData, "<this>");
        MediatorLiveData mediatorLiveData = new MediatorLiveData();
        Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        booleanRef.element = true;
        if (liveData.isInitialized()) {
            mediatorLiveData.setValue(liveData.getValue());
            booleanRef.element = false;
        }
        mediatorLiveData.addSource(liveData, new d(new a(mediatorLiveData, booleanRef)));
        return mediatorLiveData;
    }

    /* JADX INFO: Add missing generic type declarations: [X] */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", "X", "value", "kotlin.jvm.PlatformType", "invoke", "(Ljava/lang/Object;)V"}, k = 3, mv = {1, 8, 0}, xi = 48)
    public static final class a<X> extends Lambda implements Function1<X, Unit> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ MediatorLiveData f1861b;
        public final /* synthetic */ Ref.BooleanRef c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(MediatorLiveData mediatorLiveData, Ref.BooleanRef booleanRef) {
            super(1);
            this.f1861b = mediatorLiveData;
            this.c = booleanRef;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Object obj) {
            invoke2((a<X>) obj);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(X x) {
            MediatorLiveData mediatorLiveData = this.f1861b;
            T value = mediatorLiveData.getValue();
            Ref.BooleanRef booleanRef = this.c;
            if (booleanRef.element || ((value == 0 && x != null) || !(value == 0 || Intrinsics.areEqual(value, x)))) {
                booleanRef.element = false;
                mediatorLiveData.setValue(x);
            }
        }
    }
}
