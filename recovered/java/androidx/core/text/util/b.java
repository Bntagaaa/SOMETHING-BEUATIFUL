package androidx.core.text.util;

import androidx.core.text.util.LinkifyCompat;
import java.util.Comparator;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        LinkifyCompat.b bVar = (LinkifyCompat.b) obj;
        LinkifyCompat.b bVar2 = (LinkifyCompat.b) obj2;
        int i = bVar.c;
        int i2 = bVar2.c;
        if (i < i2) {
            return -1;
        }
        if (i > i2) {
            return 1;
        }
        return Integer.compare(bVar2.d, bVar.d);
    }
}
