package androidx.core.provider;

import java.util.Comparator;
import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public final /* synthetic */ class e implements Comparator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1171a;

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f1171a) {
            case 0:
                byte[] bArr = (byte[]) obj;
                byte[] bArr2 = (byte[]) obj2;
                if (bArr.length != bArr2.length) {
                    return bArr.length - bArr2.length;
                }
                for (int i = 0; i < bArr.length; i++) {
                    byte b2 = bArr[i];
                    byte b3 = bArr2[i];
                    if (b2 != b3) {
                        return b2 - b3;
                    }
                }
                return 0;
            default:
                Uuid a2 = (Uuid) obj;
                Uuid b4 = (Uuid) obj2;
                Uuid.Companion companion = Uuid.Companion;
                Intrinsics.checkNotNullParameter(a2, "a");
                Intrinsics.checkNotNullParameter(b4, "b");
                long j = a2.f6100a;
                if (j != b4.f6100a) {
                    return Long.compare(ULong.m625constructorimpl(j) ^ Long.MIN_VALUE, ULong.m625constructorimpl(b4.f6100a) ^ Long.MIN_VALUE);
                }
                return Long.compare(ULong.m625constructorimpl(a2.f6101b) ^ Long.MIN_VALUE, ULong.m625constructorimpl(b4.f6101b) ^ Long.MIN_VALUE);
        }
    }
}
