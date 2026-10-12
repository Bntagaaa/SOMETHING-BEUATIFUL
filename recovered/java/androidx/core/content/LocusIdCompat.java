package androidx.core.content;

import android.content.LocusId;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.util.Preconditions;

/* loaded from: classes.dex */
public final class LocusIdCompat {

    /* renamed from: a, reason: collision with root package name */
    public final String f972a;

    /* renamed from: b, reason: collision with root package name */
    public final LocusId f973b;

    public LocusIdCompat(@NonNull String str) {
        this.f972a = (String) Preconditions.checkStringNotEmpty(str, "id cannot be empty");
        if (Build.VERSION.SDK_INT >= 29) {
            this.f973b = a.a(str);
        } else {
            this.f973b = null;
        }
    }

    @NonNull
    public String getId() {
        return this.f972a;
    }

    public int hashCode() {
        String str = this.f972a;
        return 31 + (str == null ? 0 : str.hashCode());
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || LocusIdCompat.class != obj.getClass()) {
            return false;
        }
        String str = ((LocusIdCompat) obj).f972a;
        String str2 = this.f972a;
        if (str2 == null) {
            return str == null;
        }
        return str2.equals(str);
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder("LocusIdCompat[");
        sb.append(this.f972a.length() + "_chars");
        sb.append("]");
        return sb.toString();
    }

    @NonNull
    @RequiresApi(29)
    public LocusId toLocusId() {
        return this.f973b;
    }

    @NonNull
    @RequiresApi(29)
    public static LocusIdCompat toLocusIdCompat(@NonNull LocusId locusId) {
        Preconditions.checkNotNull(locusId, "locusId cannot be null");
        return new LocusIdCompat((String) Preconditions.checkStringNotEmpty(a.b(locusId), "id cannot be empty"));
    }

    @RequiresApi(29)
    public static class a {
        private a() {
        }

        public static LocusId a(String str) {
            return new LocusId(str);
        }

        public static String b(LocusId locusId) {
            return locusId.getId();
        }
    }
}
