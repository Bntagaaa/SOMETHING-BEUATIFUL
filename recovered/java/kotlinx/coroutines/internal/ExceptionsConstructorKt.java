package kotlinx.coroutines.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CopyableThrowable;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a#\u0010\u0003\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u0000H\u0000¢\u0006\u0004\b\u0003\u0010\u0004*(\b\u0002\u0010\u0006\"\u0010\u0012\u0004\u0012\u00020\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u00000\u00052\u0010\u0012\u0004\u0012\u00020\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u00000\u0005¨\u0006\u0007"}, d2 = {"", "E", "exception", "tryCopyException", "(Ljava/lang/Throwable;)Ljava/lang/Throwable;", "Lkotlin/Function1;", "Ctor", "kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nExceptionsConstructor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExceptionsConstructor.kt\nkotlinx/coroutines/internal/ExceptionsConstructorKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,112:1\n1#2:113\n11158#3:114\n11493#3,3:115\n12727#3,3:132\n1971#4,14:118\n*S KotlinDebug\n*F\n+ 1 ExceptionsConstructor.kt\nkotlinx/coroutines/internal/ExceptionsConstructorKt\n*L\n41#1:114\n41#1:115,3\n78#1:132,3\n59#1:118,14\n*E\n"})
/* loaded from: classes2.dex */
public final class ExceptionsConstructorKt {

    /* renamed from: a, reason: collision with root package name */
    public static final int f6621a = a(Throwable.class, -1);

    /* renamed from: b, reason: collision with root package name */
    public static final CtorCache f6622b;

    static {
        CtorCache ctorCache;
        try {
            ctorCache = FastServiceLoaderKt.getANDROID_DETECTED() ? j.f6658a : ClassValueCtorCache.f6610a;
        } catch (Throwable unused) {
            ctorCache = j.f6658a;
        }
        f6622b = ctorCache;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public static final <E extends Throwable> E tryCopyException(@NotNull E e) {
        Object objM565constructorimpl;
        if (e instanceof CopyableThrowable) {
            try {
                Result.Companion companion = Result.INSTANCE;
                objM565constructorimpl = Result.m565constructorimpl(((CopyableThrowable) e).createCopy());
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM565constructorimpl = Result.m565constructorimpl(ResultKt.createFailure(th));
            }
            if (Result.m570isFailureimpl(objM565constructorimpl)) {
                objM565constructorimpl = null;
            }
            return (E) objM565constructorimpl;
        }
        return (E) f6622b.get(e.getClass()).invoke(e);
    }

    public static final Function1 access$createConstructor(Class cls) throws SecurityException {
        Object next;
        Function1 function1;
        Pair pair;
        b bVar = b.f6650a;
        if (f6621a == a(cls, 0)) {
            Constructor<?>[] constructors = cls.getConstructors();
            ArrayList arrayList = new ArrayList(constructors.length);
            int length = constructors.length;
            int i = 0;
            while (true) {
                next = null;
                if (i >= length) {
                    break;
                }
                final Constructor<?> constructor = constructors[i];
                Class<?>[] parameterTypes = constructor.getParameterTypes();
                int length2 = parameterTypes.length;
                if (length2 == 0) {
                    final int i2 = 3;
                    pair = TuplesKt.to(new kotlin.sequences.g(2, new Function1() { // from class: kotlinx.coroutines.internal.a
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
                            Constructor constructor2 = constructor;
                            Throwable th = (Throwable) obj;
                            switch (i2) {
                                case 0:
                                    int i3 = ExceptionsConstructorKt.f6621a;
                                    Object objNewInstance = constructor2.newInstance(th.getMessage(), th);
                                    Intrinsics.checkNotNull(objNewInstance, "null cannot be cast to non-null type kotlin.Throwable");
                                    return (Throwable) objNewInstance;
                                case 1:
                                    int i4 = ExceptionsConstructorKt.f6621a;
                                    Object objNewInstance2 = constructor2.newInstance(th.getMessage());
                                    Intrinsics.checkNotNull(objNewInstance2, "null cannot be cast to non-null type kotlin.Throwable");
                                    Throwable th2 = (Throwable) objNewInstance2;
                                    th2.initCause(th);
                                    return th2;
                                case 2:
                                    int i5 = ExceptionsConstructorKt.f6621a;
                                    Object objNewInstance3 = constructor2.newInstance(th);
                                    Intrinsics.checkNotNull(objNewInstance3, "null cannot be cast to non-null type kotlin.Throwable");
                                    return (Throwable) objNewInstance3;
                                default:
                                    int i6 = ExceptionsConstructorKt.f6621a;
                                    Object objNewInstance4 = constructor2.newInstance(new Object[0]);
                                    Intrinsics.checkNotNull(objNewInstance4, "null cannot be cast to non-null type kotlin.Throwable");
                                    Throwable th3 = (Throwable) objNewInstance4;
                                    th3.initCause(th);
                                    return th3;
                            }
                        }
                    }), 0);
                } else if (length2 == 1) {
                    Class<?> cls2 = parameterTypes[0];
                    if (Intrinsics.areEqual(cls2, String.class)) {
                        final int i3 = 1;
                        pair = TuplesKt.to(new kotlin.sequences.g(2, new Function1() { // from class: kotlinx.coroutines.internal.a
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
                                Constructor constructor2 = constructor;
                                Throwable th = (Throwable) obj;
                                switch (i3) {
                                    case 0:
                                        int i32 = ExceptionsConstructorKt.f6621a;
                                        Object objNewInstance = constructor2.newInstance(th.getMessage(), th);
                                        Intrinsics.checkNotNull(objNewInstance, "null cannot be cast to non-null type kotlin.Throwable");
                                        return (Throwable) objNewInstance;
                                    case 1:
                                        int i4 = ExceptionsConstructorKt.f6621a;
                                        Object objNewInstance2 = constructor2.newInstance(th.getMessage());
                                        Intrinsics.checkNotNull(objNewInstance2, "null cannot be cast to non-null type kotlin.Throwable");
                                        Throwable th2 = (Throwable) objNewInstance2;
                                        th2.initCause(th);
                                        return th2;
                                    case 2:
                                        int i5 = ExceptionsConstructorKt.f6621a;
                                        Object objNewInstance3 = constructor2.newInstance(th);
                                        Intrinsics.checkNotNull(objNewInstance3, "null cannot be cast to non-null type kotlin.Throwable");
                                        return (Throwable) objNewInstance3;
                                    default:
                                        int i6 = ExceptionsConstructorKt.f6621a;
                                        Object objNewInstance4 = constructor2.newInstance(new Object[0]);
                                        Intrinsics.checkNotNull(objNewInstance4, "null cannot be cast to non-null type kotlin.Throwable");
                                        Throwable th3 = (Throwable) objNewInstance4;
                                        th3.initCause(th);
                                        return th3;
                                }
                            }
                        }), 2);
                    } else if (Intrinsics.areEqual(cls2, Throwable.class)) {
                        final int i4 = 2;
                        pair = TuplesKt.to(new kotlin.sequences.g(2, new Function1() { // from class: kotlinx.coroutines.internal.a
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
                                Constructor constructor2 = constructor;
                                Throwable th = (Throwable) obj;
                                switch (i4) {
                                    case 0:
                                        int i32 = ExceptionsConstructorKt.f6621a;
                                        Object objNewInstance = constructor2.newInstance(th.getMessage(), th);
                                        Intrinsics.checkNotNull(objNewInstance, "null cannot be cast to non-null type kotlin.Throwable");
                                        return (Throwable) objNewInstance;
                                    case 1:
                                        int i42 = ExceptionsConstructorKt.f6621a;
                                        Object objNewInstance2 = constructor2.newInstance(th.getMessage());
                                        Intrinsics.checkNotNull(objNewInstance2, "null cannot be cast to non-null type kotlin.Throwable");
                                        Throwable th2 = (Throwable) objNewInstance2;
                                        th2.initCause(th);
                                        return th2;
                                    case 2:
                                        int i5 = ExceptionsConstructorKt.f6621a;
                                        Object objNewInstance3 = constructor2.newInstance(th);
                                        Intrinsics.checkNotNull(objNewInstance3, "null cannot be cast to non-null type kotlin.Throwable");
                                        return (Throwable) objNewInstance3;
                                    default:
                                        int i6 = ExceptionsConstructorKt.f6621a;
                                        Object objNewInstance4 = constructor2.newInstance(new Object[0]);
                                        Intrinsics.checkNotNull(objNewInstance4, "null cannot be cast to non-null type kotlin.Throwable");
                                        Throwable th3 = (Throwable) objNewInstance4;
                                        th3.initCause(th);
                                        return th3;
                                }
                            }
                        }), 1);
                    } else {
                        pair = TuplesKt.to(null, -1);
                    }
                } else if (length2 != 2) {
                    pair = TuplesKt.to(null, -1);
                } else if (Intrinsics.areEqual(parameterTypes[0], String.class) && Intrinsics.areEqual(parameterTypes[1], Throwable.class)) {
                    final int i5 = 0;
                    pair = TuplesKt.to(new kotlin.sequences.g(2, new Function1() { // from class: kotlinx.coroutines.internal.a
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
                            Constructor constructor2 = constructor;
                            Throwable th = (Throwable) obj;
                            switch (i5) {
                                case 0:
                                    int i32 = ExceptionsConstructorKt.f6621a;
                                    Object objNewInstance = constructor2.newInstance(th.getMessage(), th);
                                    Intrinsics.checkNotNull(objNewInstance, "null cannot be cast to non-null type kotlin.Throwable");
                                    return (Throwable) objNewInstance;
                                case 1:
                                    int i42 = ExceptionsConstructorKt.f6621a;
                                    Object objNewInstance2 = constructor2.newInstance(th.getMessage());
                                    Intrinsics.checkNotNull(objNewInstance2, "null cannot be cast to non-null type kotlin.Throwable");
                                    Throwable th2 = (Throwable) objNewInstance2;
                                    th2.initCause(th);
                                    return th2;
                                case 2:
                                    int i52 = ExceptionsConstructorKt.f6621a;
                                    Object objNewInstance3 = constructor2.newInstance(th);
                                    Intrinsics.checkNotNull(objNewInstance3, "null cannot be cast to non-null type kotlin.Throwable");
                                    return (Throwable) objNewInstance3;
                                default:
                                    int i6 = ExceptionsConstructorKt.f6621a;
                                    Object objNewInstance4 = constructor2.newInstance(new Object[0]);
                                    Intrinsics.checkNotNull(objNewInstance4, "null cannot be cast to non-null type kotlin.Throwable");
                                    Throwable th3 = (Throwable) objNewInstance4;
                                    th3.initCause(th);
                                    return th3;
                            }
                        }
                    }), 3);
                } else {
                    pair = TuplesKt.to(null, -1);
                }
                arrayList.add(pair);
                i++;
            }
            Iterator it = arrayList.iterator();
            if (it.hasNext()) {
                next = it.next();
                if (it.hasNext()) {
                    int iIntValue = ((Number) ((Pair) next).getSecond()).intValue();
                    do {
                        Object next2 = it.next();
                        int iIntValue2 = ((Number) ((Pair) next2).getSecond()).intValue();
                        if (iIntValue < iIntValue2) {
                            next = next2;
                            iIntValue = iIntValue2;
                        }
                    } while (it.hasNext());
                }
            }
            Pair pair2 = (Pair) next;
            if (pair2 != null && (function1 = (Function1) pair2.getFirst()) != null) {
                return function1;
            }
        }
        return bVar;
    }

    public static final int a(Class cls, int i) {
        Object objM565constructorimpl;
        JvmClassMappingKt.getKotlinClass(cls);
        try {
            Result.Companion companion = Result.INSTANCE;
            int i2 = 0;
            do {
                int i3 = 0;
                for (Field field : cls.getDeclaredFields()) {
                    if (!Modifier.isStatic(field.getModifiers())) {
                        i3++;
                    }
                }
                i2 += i3;
                cls = cls.getSuperclass();
            } while (cls != null);
            objM565constructorimpl = Result.m565constructorimpl(Integer.valueOf(i2));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM565constructorimpl = Result.m565constructorimpl(ResultKt.createFailure(th));
        }
        Integer numValueOf = Integer.valueOf(i);
        if (Result.m570isFailureimpl(objM565constructorimpl)) {
            objM565constructorimpl = numValueOf;
        }
        return ((Number) objM565constructorimpl).intValue();
    }
}
