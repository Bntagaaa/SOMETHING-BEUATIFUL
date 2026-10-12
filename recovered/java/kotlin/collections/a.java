package kotlin.collections;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CompletableFuture;
import kotlin.ExceptionsKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.AbstractMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeReference;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.KVariance;
import kotlin.sequences.Sequence;
import kotlinx.coroutines.channels.ChannelsKt;
import kotlinx.coroutines.channels.ReceiveChannel;

/* loaded from: classes2.dex */
public final /* synthetic */ class a implements Function1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5652a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f5653b;

    public /* synthetic */ a(Object obj, int i) {
        this.f5652a = i;
        this.f5653b = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object it) throws Throwable {
        String strValueOf;
        Throwable th = null;
        Object obj = this.f5653b;
        switch (this.f5652a) {
            case 0:
                return it == ((AbstractCollection) obj) ? "(this Collection)" : String.valueOf(it);
            case 1:
                Map.Entry it2 = (Map.Entry) it;
                AbstractMap.Companion companion = AbstractMap.Companion;
                Intrinsics.checkNotNullParameter(it2, "it");
                AbstractMap abstractMap = (AbstractMap) obj;
                StringBuilder sb = new StringBuilder();
                Object key = it2.getKey();
                sb.append(key == abstractMap ? "(this Map)" : String.valueOf(key));
                sb.append('=');
                Object value = it2.getValue();
                sb.append(value != abstractMap ? String.valueOf(value) : "(this Map)");
                return sb.toString();
            case 2:
                KTypeProjection it3 = (KTypeProjection) it;
                TypeReference.Companion companion2 = TypeReference.Companion;
                Intrinsics.checkNotNullParameter(it3, "it");
                ((TypeReference) obj).getClass();
                if (it3.getVariance() == null) {
                    return "*";
                }
                KType type = it3.getType();
                TypeReference typeReference = type instanceof TypeReference ? (TypeReference) type : null;
                if (typeReference == null || (strValueOf = typeReference.a(true)) == null) {
                    strValueOf = String.valueOf(it3.getType());
                }
                KVariance variance = it3.getVariance();
                int i = variance == null ? -1 : TypeReference.WhenMappings.$EnumSwitchMapping$0[variance.ordinal()];
                if (i == 1) {
                    return strValueOf;
                }
                if (i == 2) {
                    return "in ".concat(strValueOf);
                }
                if (i == 3) {
                    return "out ".concat(strValueOf);
                }
                throw new NoWhenBranchMatchedException();
            case 3:
                Intrinsics.checkNotNullParameter(it, "it");
                return ((Function0) obj).invoke();
            case 4:
                return Boolean.valueOf(((Class) obj).isInstance(it));
            case 5:
                if (it != null) {
                    return it;
                }
                throw new IllegalArgumentException("null element found in " + ((Sequence) obj) + '.');
            case 6:
                IndexedValue it4 = (IndexedValue) it;
                Intrinsics.checkNotNullParameter(it4, "it");
                Boolean bool = (Boolean) ((Function2) obj).invoke(Integer.valueOf(it4.getIndex()), it4.getValue());
                bool.booleanValue();
                return bool;
            case 7:
                return Boolean.valueOf(ArraysKt.contains((Object[]) obj, it));
            case 8:
                return Boolean.valueOf(((Collection) obj).contains(it));
            case 9:
                return Boolean.valueOf(((List) obj).contains(it));
            case 10:
                Throwable th2 = (Throwable) it;
                for (ReceiveChannel receiveChannel : (ReceiveChannel[]) obj) {
                    try {
                        ChannelsKt.cancelConsumed(receiveChannel, th2);
                    } catch (Throwable th3) {
                        if (th == null) {
                            th = th3;
                        } else {
                            ExceptionsKt.addSuppressed(th, th3);
                        }
                    }
                }
                if (th == null) {
                    return Unit.INSTANCE;
                }
                throw th;
            default:
                CompletableFuture completableFuture = (CompletableFuture) obj;
                Throwable th4 = (Throwable) it;
                if (th4 == null) {
                    completableFuture.complete(Unit.INSTANCE);
                } else {
                    completableFuture.completeExceptionally(th4);
                }
                return Unit.INSTANCE;
        }
    }
}
