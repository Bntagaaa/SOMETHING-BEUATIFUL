package androidx.core.content.res;

import androidx.annotation.RestrictTo;
import java.util.ArrayList;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
final class c {
    private c() {
    }

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final int[] f1019a;

        /* renamed from: b, reason: collision with root package name */
        public final float[] f1020b;

        public a(ArrayList arrayList, ArrayList arrayList2) {
            int size = arrayList.size();
            this.f1019a = new int[size];
            this.f1020b = new float[size];
            for (int i = 0; i < size; i++) {
                this.f1019a[i] = ((Integer) arrayList.get(i)).intValue();
                this.f1020b[i] = ((Float) arrayList2.get(i)).floatValue();
            }
        }

        public a(int i, int i2) {
            this.f1019a = new int[]{i, i2};
            this.f1020b = new float[]{0.0f, 1.0f};
        }

        public a(int i, int i2, int i3) {
            this.f1019a = new int[]{i, i2, i3};
            this.f1020b = new float[]{0.0f, 0.5f, 1.0f};
        }
    }
}
