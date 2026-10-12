package kotlin.jvm.internal;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\r\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0013\u0010\u0007\u001a\u00020\u0003*\u00028\u0000H$¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00028\u0000¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u0004\u001a\u00020\u0003H\u0004¢\u0006\u0004\b\u0004\u0010\rJ\u001f\u0010\u0010\u001a\u00028\u00002\u0006\u0010\u000e\u001a\u00028\u00002\u0006\u0010\u000f\u001a\u00028\u0000H\u0004¢\u0006\u0004\b\u0010\u0010\u0011R\"\u0010\u0016\u001a\u00020\u00038\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\r\"\u0004\b\u0015\u0010\u0006¨\u0006\u0017"}, d2 = {"Lkotlin/jvm/internal/PrimitiveSpreadBuilder;", "", "T", "", "size", "<init>", "(I)V", "getSize", "(Ljava/lang/Object;)I", "spreadArgument", "", "addSpread", "(Ljava/lang/Object;)V", "()I", "values", "result", "toArray", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "b", "I", "getPosition", "setPosition", "position", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
public abstract class PrimitiveSpreadBuilder<T> {

    /* renamed from: a, reason: collision with root package name */
    public final int f5842a;

    /* renamed from: b, reason: collision with root package name and from kotlin metadata */
    public int position;
    public final Object[] c;

    public abstract int getSize(@NotNull T t);

    public PrimitiveSpreadBuilder(int i) {
        this.f5842a = i;
        this.c = new Object[i];
    }

    public final int getPosition() {
        return this.position;
    }

    public final void setPosition(int i) {
        this.position = i;
    }

    public final void addSpread(@NotNull T spreadArgument) {
        Intrinsics.checkNotNullParameter(spreadArgument, "spreadArgument");
        int i = this.position;
        this.position = i + 1;
        this.c[i] = spreadArgument;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int size() {
        int i = this.f5842a - 1;
        int size = 0;
        if (i >= 0) {
            int i2 = 0;
            while (true) {
                Object obj = this.c[i2];
                size += obj != null ? getSize(obj) : 1;
                if (i2 == i) {
                    break;
                }
                i2++;
            }
        }
        return size;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final T toArray(@NotNull T values, @NotNull T result) {
        int i;
        Intrinsics.checkNotNullParameter(values, "values");
        Intrinsics.checkNotNullParameter(result, "result");
        int i2 = this.f5842a;
        int i3 = i2 - 1;
        int i4 = 0;
        if (i3 >= 0) {
            int i5 = 0;
            int i6 = 0;
            i = 0;
            while (true) {
                Object obj = this.c[i5];
                if (obj != null) {
                    if (i6 < i5) {
                        int i7 = i5 - i6;
                        System.arraycopy(values, i6, result, i, i7);
                        i += i7;
                    }
                    int size = getSize(obj);
                    System.arraycopy(obj, 0, result, i, size);
                    i += size;
                    i6 = i5 + 1;
                }
                if (i5 == i3) {
                    break;
                }
                i5++;
            }
            i4 = i6;
        } else {
            i = 0;
        }
        if (i4 < i2) {
            System.arraycopy(values, i4, result, i, i2 - i4);
        }
        return result;
    }
}
