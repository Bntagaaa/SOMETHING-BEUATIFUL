package kotlin.time;

import java.math.RoundingMode;
import java.text.DecimalFormat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\u001a\u001f\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u0005\u0010\u0006\"\u001a\u0010\b\u001a\u00020\u00078\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"", "value", "", "decimals", "", "formatToExactDecimals", "(DI)Ljava/lang/String;", "", "durationAssertionsEnabled", "Z", "getDurationAssertionsEnabled", "()Z", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDurationJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DurationJvm.kt\nkotlin/time/DurationJvmKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,28:1\n1#2:29\n*E\n"})
/* loaded from: classes2.dex */
public final class DurationJvmKt {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadLocal[] f6090a;

    public static final boolean getDurationAssertionsEnabled() {
        return false;
    }

    static {
        ThreadLocal[] threadLocalArr = new ThreadLocal[4];
        for (int i = 0; i < 4; i++) {
            threadLocalArr[i] = new ThreadLocal();
        }
        f6090a = threadLocalArr;
    }

    @NotNull
    public static final String formatToExactDecimals(double d, int i) {
        DecimalFormat decimalFormat;
        ThreadLocal[] threadLocalArr = f6090a;
        if (i >= threadLocalArr.length) {
            decimalFormat = new DecimalFormat("0");
            if (i > 0) {
                decimalFormat.setMinimumFractionDigits(i);
            }
            decimalFormat.setRoundingMode(RoundingMode.HALF_UP);
        } else {
            ThreadLocal threadLocal = threadLocalArr[i];
            Object obj = threadLocal.get();
            Object obj2 = obj;
            if (obj == null) {
                DecimalFormat decimalFormat2 = new DecimalFormat("0");
                if (i > 0) {
                    decimalFormat2.setMinimumFractionDigits(i);
                }
                decimalFormat2.setRoundingMode(RoundingMode.HALF_UP);
                threadLocal.set(decimalFormat2);
                obj2 = decimalFormat2;
            }
            decimalFormat = (DecimalFormat) obj2;
        }
        String str = decimalFormat.format(d);
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }
}
