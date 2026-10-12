package androidx.core.util;

import android.util.SizeF;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public final class SizeFCompat {

    /* renamed from: a, reason: collision with root package name */
    public final float f1244a;

    /* renamed from: b, reason: collision with root package name */
    public final float f1245b;

    public SizeFCompat(float f, float f2) {
        this.f1244a = Preconditions.checkArgumentFinite(f, "width");
        this.f1245b = Preconditions.checkArgumentFinite(f2, "height");
    }

    public float getWidth() {
        return this.f1244a;
    }

    public float getHeight() {
        return this.f1245b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SizeFCompat)) {
            return false;
        }
        SizeFCompat sizeFCompat = (SizeFCompat) obj;
        return sizeFCompat.f1244a == this.f1244a && sizeFCompat.f1245b == this.f1245b;
    }

    public int hashCode() {
        return Float.floatToIntBits(this.f1244a) ^ Float.floatToIntBits(this.f1245b);
    }

    @NonNull
    public String toString() {
        return this.f1244a + "x" + this.f1245b;
    }

    @NonNull
    @RequiresApi(21)
    public SizeF toSizeF() {
        return a.a(this);
    }

    @NonNull
    @RequiresApi(21)
    public static SizeFCompat toSizeFCompat(@NonNull SizeF sizeF) {
        return a.b(sizeF);
    }

    @RequiresApi(21)
    public static final class a {
        private a() {
        }

        @NonNull
        @DoNotInline
        public static SizeFCompat b(@NonNull SizeF sizeF) {
            Preconditions.checkNotNull(sizeF);
            return new SizeFCompat(sizeF.getWidth(), sizeF.getHeight());
        }

        @NonNull
        @DoNotInline
        public static SizeF a(@NonNull SizeFCompat sizeFCompat) {
            Preconditions.checkNotNull(sizeFCompat);
            return new SizeF(sizeFCompat.getWidth(), sizeFCompat.getHeight());
        }
    }
}
