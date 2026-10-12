package androidx.core.graphics;

import android.graphics.PointF;
import androidx.annotation.NonNull;
import androidx.core.util.Preconditions;

/* loaded from: classes.dex */
public final class PathSegment {

    /* renamed from: a, reason: collision with root package name */
    public final PointF f1034a;

    /* renamed from: b, reason: collision with root package name */
    public final float f1035b;
    public final PointF c;
    public final float d;

    public PathSegment(@NonNull PointF pointF, float f, @NonNull PointF pointF2, float f2) {
        this.f1034a = (PointF) Preconditions.checkNotNull(pointF, "start == null");
        this.f1035b = f;
        this.c = (PointF) Preconditions.checkNotNull(pointF2, "end == null");
        this.d = f2;
    }

    @NonNull
    public PointF getStart() {
        return this.f1034a;
    }

    public float getStartFraction() {
        return this.f1035b;
    }

    @NonNull
    public PointF getEnd() {
        return this.c;
    }

    public float getEndFraction() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PathSegment)) {
            return false;
        }
        PathSegment pathSegment = (PathSegment) obj;
        return Float.compare(this.f1035b, pathSegment.f1035b) == 0 && Float.compare(this.d, pathSegment.d) == 0 && this.f1034a.equals(pathSegment.f1034a) && this.c.equals(pathSegment.c);
    }

    public int hashCode() {
        int iHashCode = this.f1034a.hashCode() * 31;
        float f = this.f1035b;
        int iHashCode2 = (this.c.hashCode() + ((iHashCode + (f != 0.0f ? Float.floatToIntBits(f) : 0)) * 31)) * 31;
        float f2 = this.d;
        return iHashCode2 + (f2 != 0.0f ? Float.floatToIntBits(f2) : 0);
    }

    public String toString() {
        return "PathSegment{start=" + this.f1034a + ", startFraction=" + this.f1035b + ", end=" + this.c + ", endFraction=" + this.d + '}';
    }
}
