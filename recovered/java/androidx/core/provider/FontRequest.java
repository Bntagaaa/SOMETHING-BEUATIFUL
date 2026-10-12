package androidx.core.provider;

import android.util.Base64;
import androidx.annotation.ArrayRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import java.util.List;

/* loaded from: classes.dex */
public final class FontRequest {

    /* renamed from: a, reason: collision with root package name */
    public final String f1149a;

    /* renamed from: b, reason: collision with root package name */
    public final String f1150b;
    public final String c;
    public final List d;
    public final int e;
    public final String f;

    public FontRequest(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull List<List<byte[]>> list) {
        this.f1149a = (String) Preconditions.checkNotNull(str);
        this.f1150b = (String) Preconditions.checkNotNull(str2);
        this.c = (String) Preconditions.checkNotNull(str3);
        this.d = (List) Preconditions.checkNotNull(list);
        this.e = 0;
        this.f = _COROUTINE.a.k(str, "-", str2, "-", str3);
    }

    public FontRequest(@NonNull String str, @NonNull String str2, @NonNull String str3, @ArrayRes int i) {
        this.f1149a = (String) Preconditions.checkNotNull(str);
        this.f1150b = (String) Preconditions.checkNotNull(str2);
        this.c = (String) Preconditions.checkNotNull(str3);
        this.d = null;
        Preconditions.checkArgument(i != 0);
        this.e = i;
        this.f = _COROUTINE.a.k(str, "-", str2, "-", str3);
    }

    @NonNull
    public String getProviderAuthority() {
        return this.f1149a;
    }

    @NonNull
    public String getProviderPackage() {
        return this.f1150b;
    }

    @NonNull
    public String getQuery() {
        return this.c;
    }

    @Nullable
    public List<List<byte[]>> getCertificates() {
        return this.d;
    }

    @ArrayRes
    public int getCertificatesArrayResId() {
        return this.e;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public String getIdentifier() {
        return this.f;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.f1149a + ", mProviderPackage: " + this.f1150b + ", mQuery: " + this.c + ", mCertificates:");
        int i = 0;
        while (true) {
            List list = this.d;
            if (i < list.size()) {
                sb.append(" [");
                List list2 = (List) list.get(i);
                for (int i2 = 0; i2 < list2.size(); i2++) {
                    sb.append(" \"");
                    sb.append(Base64.encodeToString((byte[]) list2.get(i2), 0));
                    sb.append("\"");
                }
                sb.append(" ]");
                i++;
            } else {
                sb.append("}");
                sb.append("mCertificatesArray: " + this.e);
                return sb.toString();
            }
        }
    }
}
