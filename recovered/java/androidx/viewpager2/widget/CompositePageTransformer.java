package androidx.viewpager2.widget;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.viewpager2.widget.ViewPager2;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class CompositePageTransformer implements ViewPager2.PageTransformer {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f2395a = new ArrayList();

    public void addTransformer(@NonNull ViewPager2.PageTransformer pageTransformer) {
        this.f2395a.add(pageTransformer);
    }

    public void removeTransformer(@NonNull ViewPager2.PageTransformer pageTransformer) {
        this.f2395a.remove(pageTransformer);
    }

    @Override // androidx.viewpager2.widget.ViewPager2.PageTransformer
    public void transformPage(@NonNull View view, float f) {
        Iterator it = this.f2395a.iterator();
        while (it.hasNext()) {
            ((ViewPager2.PageTransformer) it.next()).transformPage(view, f);
        }
    }
}
