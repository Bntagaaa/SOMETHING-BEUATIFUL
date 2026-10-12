package okio;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\t\u0010\nR\u001a\u0010\u0010\u001a\u00020\u000b8\u0006X\u0086D¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0012\u001a\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u000f¨\u0006\u0013"}, d2 = {"Lokio/SegmentPool;", "", "<init>", "()V", "Lokio/Segment;", "take", "()Lokio/Segment;", "segment", "", "recycle", "(Lokio/Segment;)V", "", "a", "I", "getMAX_SIZE", "()I", "MAX_SIZE", "getByteCount", "byteCount", "okio"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class SegmentPool {

    @NotNull
    public static final SegmentPool INSTANCE = new SegmentPool();

    /* renamed from: a, reason: collision with root package name and from kotlin metadata */
    public static final int MAX_SIZE = 65536;

    /* renamed from: b, reason: collision with root package name */
    public static final Segment f6811b = new Segment(new byte[0], 0, 0, false, false);
    public static final int c;
    public static final AtomicReference[] d;

    private SegmentPool() {
    }

    static {
        int iHighestOneBit = Integer.highestOneBit((Runtime.getRuntime().availableProcessors() * 2) - 1);
        c = iHighestOneBit;
        AtomicReference[] atomicReferenceArr = new AtomicReference[iHighestOneBit];
        for (int i = 0; i < iHighestOneBit; i++) {
            atomicReferenceArr[i] = new AtomicReference();
        }
        d = atomicReferenceArr;
    }

    public final int getMAX_SIZE() {
        return MAX_SIZE;
    }

    public final int getByteCount() {
        Segment segment = (Segment) a().get();
        if (segment == null) {
            return 0;
        }
        return segment.limit;
    }

    @JvmStatic
    @NotNull
    public static final Segment take() {
        INSTANCE.getClass();
        AtomicReference atomicReferenceA = a();
        Segment segment = f6811b;
        Segment segment2 = (Segment) atomicReferenceA.getAndSet(segment);
        if (segment2 == segment) {
            return new Segment();
        }
        if (segment2 == null) {
            atomicReferenceA.set(null);
            return new Segment();
        }
        atomicReferenceA.set(segment2.next);
        segment2.next = null;
        segment2.limit = 0;
        return segment2;
    }

    @JvmStatic
    public static final void recycle(@NotNull Segment segment) {
        Intrinsics.checkNotNullParameter(segment, "segment");
        if (segment.next != null || segment.prev != null) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (segment.shared) {
            return;
        }
        INSTANCE.getClass();
        AtomicReference atomicReferenceA = a();
        Segment segment2 = f6811b;
        Segment segment3 = (Segment) atomicReferenceA.getAndSet(segment2);
        if (segment3 == segment2) {
            return;
        }
        int i = segment3 != null ? segment3.limit : 0;
        if (i >= MAX_SIZE) {
            atomicReferenceA.set(segment3);
            return;
        }
        segment.next = segment3;
        segment.pos = 0;
        segment.limit = i + 8192;
        atomicReferenceA.set(segment);
    }

    public static AtomicReference a() {
        return d[(int) (Thread.currentThread().getId() & (c - 1))];
    }
}
