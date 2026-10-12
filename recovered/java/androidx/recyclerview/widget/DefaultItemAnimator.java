package androidx.recyclerview.widget;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class DefaultItemAnimator extends SimpleItemAnimator {
    public static TimeInterpolator s;
    public final ArrayList h = new ArrayList();
    public final ArrayList i = new ArrayList();
    public final ArrayList j = new ArrayList();
    public final ArrayList k = new ArrayList();
    public final ArrayList l = new ArrayList();
    public final ArrayList m = new ArrayList();
    public final ArrayList n = new ArrayList();
    public final ArrayList o = new ArrayList();
    public final ArrayList p = new ArrayList();
    public final ArrayList q = new ArrayList();
    public final ArrayList r = new ArrayList();

    public static class e {

        /* renamed from: a, reason: collision with root package name */
        public RecyclerView.ViewHolder f2012a;

        /* renamed from: b, reason: collision with root package name */
        public int f2013b;
        public int c;
        public int d;
        public int e;
    }

    public static class d {

        /* renamed from: a, reason: collision with root package name */
        public RecyclerView.ViewHolder f2010a;

        /* renamed from: b, reason: collision with root package name */
        public RecyclerView.ViewHolder f2011b;
        public int c;
        public int d;
        public int e;
        public int f;

        @SuppressLint({"UnknownNullness"})
        public String toString() {
            return "ChangeInfo{oldHolder=" + this.f2010a + ", newHolder=" + this.f2011b + ", fromX=" + this.c + ", fromY=" + this.d + ", toX=" + this.e + ", toY=" + this.f + '}';
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public void runPendingAnimations() {
        ArrayList arrayList = this.h;
        boolean zIsEmpty = arrayList.isEmpty();
        ArrayList arrayList2 = this.j;
        boolean zIsEmpty2 = arrayList2.isEmpty();
        ArrayList arrayList3 = this.k;
        boolean zIsEmpty3 = arrayList3.isEmpty();
        ArrayList arrayList4 = this.i;
        boolean zIsEmpty4 = arrayList4.isEmpty();
        if (zIsEmpty && zIsEmpty2 && zIsEmpty4 && zIsEmpty3) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            RecyclerView.ViewHolder viewHolder = (RecyclerView.ViewHolder) it.next();
            View view = viewHolder.itemView;
            ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
            this.q.add(viewHolder);
            viewPropertyAnimatorAnimate.setDuration(getRemoveDuration()).alpha(0.0f).setListener(new androidx.recyclerview.widget.d(view, viewPropertyAnimatorAnimate, this, viewHolder)).start();
        }
        arrayList.clear();
        if (!zIsEmpty2) {
            ArrayList arrayList5 = new ArrayList();
            arrayList5.addAll(arrayList2);
            this.m.add(arrayList5);
            arrayList2.clear();
            a aVar = new a(arrayList5);
            if (!zIsEmpty) {
                ViewCompat.postOnAnimationDelayed(((e) arrayList5.get(0)).f2012a.itemView, aVar, getRemoveDuration());
            } else {
                aVar.run();
            }
        }
        if (!zIsEmpty3) {
            ArrayList arrayList6 = new ArrayList();
            arrayList6.addAll(arrayList3);
            this.n.add(arrayList6);
            arrayList3.clear();
            b bVar = new b(arrayList6);
            if (!zIsEmpty) {
                ViewCompat.postOnAnimationDelayed(((d) arrayList6.get(0)).f2010a.itemView, bVar, getRemoveDuration());
            } else {
                bVar.run();
            }
        }
        if (zIsEmpty4) {
            return;
        }
        ArrayList arrayList7 = new ArrayList();
        arrayList7.addAll(arrayList4);
        this.l.add(arrayList7);
        arrayList4.clear();
        c cVar = new c(arrayList7);
        if (!zIsEmpty || !zIsEmpty2 || !zIsEmpty3) {
            ViewCompat.postOnAnimationDelayed(((RecyclerView.ViewHolder) arrayList7.get(0)).itemView, cVar, Math.max(!zIsEmpty2 ? getMoveDuration() : 0L, zIsEmpty3 ? 0L : getChangeDuration()) + (!zIsEmpty ? getRemoveDuration() : 0L));
        } else {
            cVar.run();
        }
    }

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ArrayList f2004a;

        public a(ArrayList arrayList) {
            this.f2004a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            ArrayList arrayList = this.f2004a;
            Iterator it = arrayList.iterator();
            while (true) {
                boolean zHasNext = it.hasNext();
                DefaultItemAnimator defaultItemAnimator = DefaultItemAnimator.this;
                if (zHasNext) {
                    e eVar = (e) it.next();
                    RecyclerView.ViewHolder viewHolder = eVar.f2012a;
                    View view = viewHolder.itemView;
                    int i = eVar.d - eVar.f2013b;
                    int i2 = eVar.e - eVar.c;
                    if (i != 0) {
                        view.animate().translationX(0.0f);
                    }
                    if (i2 != 0) {
                        view.animate().translationY(0.0f);
                    }
                    ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
                    defaultItemAnimator.p.add(viewHolder);
                    viewPropertyAnimatorAnimate.setDuration(defaultItemAnimator.getMoveDuration()).setListener(new f(defaultItemAnimator, viewHolder, i, view, i2, viewPropertyAnimatorAnimate)).start();
                } else {
                    arrayList.clear();
                    defaultItemAnimator.m.remove(arrayList);
                    return;
                }
            }
        }
    }

    public class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ArrayList f2006a;

        public b(ArrayList arrayList) {
            this.f2006a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            ArrayList arrayList = this.f2006a;
            Iterator it = arrayList.iterator();
            while (true) {
                boolean zHasNext = it.hasNext();
                DefaultItemAnimator defaultItemAnimator = DefaultItemAnimator.this;
                if (!zHasNext) {
                    arrayList.clear();
                    defaultItemAnimator.n.remove(arrayList);
                    return;
                }
                d dVar = (d) it.next();
                RecyclerView.ViewHolder viewHolder = dVar.f2010a;
                View view = viewHolder == null ? null : viewHolder.itemView;
                RecyclerView.ViewHolder viewHolder2 = dVar.f2011b;
                View view2 = viewHolder2 != null ? viewHolder2.itemView : null;
                ArrayList arrayList2 = defaultItemAnimator.r;
                if (view != null) {
                    ViewPropertyAnimator duration = view.animate().setDuration(defaultItemAnimator.getChangeDuration());
                    arrayList2.add(dVar.f2010a);
                    duration.translationX(dVar.e - dVar.c);
                    duration.translationY(dVar.f - dVar.d);
                    duration.alpha(0.0f).setListener(new g(defaultItemAnimator, dVar, duration, view)).start();
                }
                if (view2 != null) {
                    ViewPropertyAnimator viewPropertyAnimatorAnimate = view2.animate();
                    arrayList2.add(dVar.f2011b);
                    viewPropertyAnimatorAnimate.translationX(0.0f).translationY(0.0f).setDuration(defaultItemAnimator.getChangeDuration()).alpha(1.0f).setListener(new h(defaultItemAnimator, dVar, viewPropertyAnimatorAnimate, view2)).start();
                }
            }
        }
    }

    public class c implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ArrayList f2008a;

        public c(ArrayList arrayList) {
            this.f2008a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            ArrayList arrayList = this.f2008a;
            Iterator it = arrayList.iterator();
            while (true) {
                boolean zHasNext = it.hasNext();
                DefaultItemAnimator defaultItemAnimator = DefaultItemAnimator.this;
                if (!zHasNext) {
                    arrayList.clear();
                    defaultItemAnimator.l.remove(arrayList);
                    return;
                } else {
                    RecyclerView.ViewHolder viewHolder = (RecyclerView.ViewHolder) it.next();
                    View view = viewHolder.itemView;
                    ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
                    defaultItemAnimator.o.add(viewHolder);
                    viewPropertyAnimatorAnimate.alpha(1.0f).setDuration(defaultItemAnimator.getAddDuration()).setListener(new androidx.recyclerview.widget.e(view, viewPropertyAnimatorAnimate, defaultItemAnimator, viewHolder)).start();
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    @SuppressLint({"UnknownNullness"})
    public boolean animateRemove(RecyclerView.ViewHolder viewHolder) {
        f(viewHolder);
        this.h.add(viewHolder);
        return true;
    }

    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    @SuppressLint({"UnknownNullness"})
    public boolean animateAdd(RecyclerView.ViewHolder viewHolder) {
        f(viewHolder);
        viewHolder.itemView.setAlpha(0.0f);
        this.i.add(viewHolder);
        return true;
    }

    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    @SuppressLint({"UnknownNullness"})
    public boolean animateMove(RecyclerView.ViewHolder viewHolder, int i, int i2, int i3, int i4) {
        View view = viewHolder.itemView;
        int translationX = i + ((int) view.getTranslationX());
        int translationY = i2 + ((int) viewHolder.itemView.getTranslationY());
        f(viewHolder);
        int i5 = i3 - translationX;
        int i6 = i4 - translationY;
        if (i5 == 0 && i6 == 0) {
            dispatchMoveFinished(viewHolder);
            return false;
        }
        if (i5 != 0) {
            view.setTranslationX(-i5);
        }
        if (i6 != 0) {
            view.setTranslationY(-i6);
        }
        ArrayList arrayList = this.j;
        e eVar = new e();
        eVar.f2012a = viewHolder;
        eVar.f2013b = translationX;
        eVar.c = translationY;
        eVar.d = i3;
        eVar.e = i4;
        arrayList.add(eVar);
        return true;
    }

    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    @SuppressLint({"UnknownNullness"})
    public boolean animateChange(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2, int i, int i2, int i3, int i4) {
        if (viewHolder == viewHolder2) {
            return animateMove(viewHolder, i, i2, i3, i4);
        }
        float translationX = viewHolder.itemView.getTranslationX();
        float translationY = viewHolder.itemView.getTranslationY();
        float alpha = viewHolder.itemView.getAlpha();
        f(viewHolder);
        int i5 = (int) ((i3 - i) - translationX);
        int i6 = (int) ((i4 - i2) - translationY);
        viewHolder.itemView.setTranslationX(translationX);
        viewHolder.itemView.setTranslationY(translationY);
        viewHolder.itemView.setAlpha(alpha);
        if (viewHolder2 != null) {
            f(viewHolder2);
            viewHolder2.itemView.setTranslationX(-i5);
            viewHolder2.itemView.setTranslationY(-i6);
            viewHolder2.itemView.setAlpha(0.0f);
        }
        ArrayList arrayList = this.k;
        d dVar = new d();
        dVar.f2010a = viewHolder;
        dVar.f2011b = viewHolder2;
        dVar.c = i;
        dVar.d = i2;
        dVar.e = i3;
        dVar.f = i4;
        arrayList.add(dVar);
        return true;
    }

    public final void d(ArrayList arrayList, RecyclerView.ViewHolder viewHolder) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            d dVar = (d) arrayList.get(size);
            if (e(dVar, viewHolder) && dVar.f2010a == null && dVar.f2011b == null) {
                arrayList.remove(dVar);
            }
        }
    }

    public final boolean e(d dVar, RecyclerView.ViewHolder viewHolder) {
        boolean z = false;
        if (dVar.f2011b == viewHolder) {
            dVar.f2011b = null;
        } else {
            if (dVar.f2010a != viewHolder) {
                return false;
            }
            dVar.f2010a = null;
            z = true;
        }
        viewHolder.itemView.setAlpha(1.0f);
        viewHolder.itemView.setTranslationX(0.0f);
        viewHolder.itemView.setTranslationY(0.0f);
        dispatchChangeFinished(viewHolder, z);
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    @SuppressLint({"UnknownNullness"})
    public void endAnimation(RecyclerView.ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        view.animate().cancel();
        ArrayList arrayList = this.j;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (((e) arrayList.get(size)).f2012a == viewHolder) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                dispatchMoveFinished(viewHolder);
                arrayList.remove(size);
            }
        }
        d(this.k, viewHolder);
        if (this.h.remove(viewHolder)) {
            view.setAlpha(1.0f);
            dispatchRemoveFinished(viewHolder);
        }
        if (this.i.remove(viewHolder)) {
            view.setAlpha(1.0f);
            dispatchAddFinished(viewHolder);
        }
        ArrayList arrayList2 = this.n;
        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
            ArrayList arrayList3 = (ArrayList) arrayList2.get(size2);
            d(arrayList3, viewHolder);
            if (arrayList3.isEmpty()) {
                arrayList2.remove(size2);
            }
        }
        ArrayList arrayList4 = this.m;
        for (int size3 = arrayList4.size() - 1; size3 >= 0; size3--) {
            ArrayList arrayList5 = (ArrayList) arrayList4.get(size3);
            int size4 = arrayList5.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                }
                if (((e) arrayList5.get(size4)).f2012a == viewHolder) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    dispatchMoveFinished(viewHolder);
                    arrayList5.remove(size4);
                    if (arrayList5.isEmpty()) {
                        arrayList4.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        ArrayList arrayList6 = this.l;
        for (int size5 = arrayList6.size() - 1; size5 >= 0; size5--) {
            ArrayList arrayList7 = (ArrayList) arrayList6.get(size5);
            if (arrayList7.remove(viewHolder)) {
                view.setAlpha(1.0f);
                dispatchAddFinished(viewHolder);
                if (arrayList7.isEmpty()) {
                    arrayList6.remove(size5);
                }
            }
        }
        this.q.remove(viewHolder);
        this.o.remove(viewHolder);
        this.r.remove(viewHolder);
        this.p.remove(viewHolder);
        c();
    }

    public final void f(RecyclerView.ViewHolder viewHolder) {
        if (s == null) {
            s = new ValueAnimator().getInterpolator();
        }
        viewHolder.itemView.animate().setInterpolator(s);
        endAnimation(viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public boolean isRunning() {
        return (this.i.isEmpty() && this.k.isEmpty() && this.j.isEmpty() && this.h.isEmpty() && this.p.isEmpty() && this.q.isEmpty() && this.o.isEmpty() && this.r.isEmpty() && this.m.isEmpty() && this.l.isEmpty() && this.n.isEmpty()) ? false : true;
    }

    public final void c() {
        if (isRunning()) {
            return;
        }
        dispatchAnimationsFinished();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public void endAnimations() {
        ArrayList arrayList = this.j;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            e eVar = (e) arrayList.get(size);
            View view = eVar.f2012a.itemView;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            dispatchMoveFinished(eVar.f2012a);
            arrayList.remove(size);
        }
        ArrayList arrayList2 = this.h;
        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
            dispatchRemoveFinished((RecyclerView.ViewHolder) arrayList2.get(size2));
            arrayList2.remove(size2);
        }
        ArrayList arrayList3 = this.i;
        int size3 = arrayList3.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            RecyclerView.ViewHolder viewHolder = (RecyclerView.ViewHolder) arrayList3.get(size3);
            viewHolder.itemView.setAlpha(1.0f);
            dispatchAddFinished(viewHolder);
            arrayList3.remove(size3);
        }
        ArrayList arrayList4 = this.k;
        for (int size4 = arrayList4.size() - 1; size4 >= 0; size4--) {
            d dVar = (d) arrayList4.get(size4);
            RecyclerView.ViewHolder viewHolder2 = dVar.f2010a;
            if (viewHolder2 != null) {
                e(dVar, viewHolder2);
            }
            RecyclerView.ViewHolder viewHolder3 = dVar.f2011b;
            if (viewHolder3 != null) {
                e(dVar, viewHolder3);
            }
        }
        arrayList4.clear();
        if (isRunning()) {
            ArrayList arrayList5 = this.m;
            for (int size5 = arrayList5.size() - 1; size5 >= 0; size5--) {
                ArrayList arrayList6 = (ArrayList) arrayList5.get(size5);
                for (int size6 = arrayList6.size() - 1; size6 >= 0; size6--) {
                    e eVar2 = (e) arrayList6.get(size6);
                    View view2 = eVar2.f2012a.itemView;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    dispatchMoveFinished(eVar2.f2012a);
                    arrayList6.remove(size6);
                    if (arrayList6.isEmpty()) {
                        arrayList5.remove(arrayList6);
                    }
                }
            }
            ArrayList arrayList7 = this.l;
            for (int size7 = arrayList7.size() - 1; size7 >= 0; size7--) {
                ArrayList arrayList8 = (ArrayList) arrayList7.get(size7);
                for (int size8 = arrayList8.size() - 1; size8 >= 0; size8--) {
                    RecyclerView.ViewHolder viewHolder4 = (RecyclerView.ViewHolder) arrayList8.get(size8);
                    viewHolder4.itemView.setAlpha(1.0f);
                    dispatchAddFinished(viewHolder4);
                    arrayList8.remove(size8);
                    if (arrayList8.isEmpty()) {
                        arrayList7.remove(arrayList8);
                    }
                }
            }
            ArrayList arrayList9 = this.n;
            for (int size9 = arrayList9.size() - 1; size9 >= 0; size9--) {
                ArrayList arrayList10 = (ArrayList) arrayList9.get(size9);
                for (int size10 = arrayList10.size() - 1; size10 >= 0; size10--) {
                    d dVar2 = (d) arrayList10.get(size10);
                    RecyclerView.ViewHolder viewHolder5 = dVar2.f2010a;
                    if (viewHolder5 != null) {
                        e(dVar2, viewHolder5);
                    }
                    RecyclerView.ViewHolder viewHolder6 = dVar2.f2011b;
                    if (viewHolder6 != null) {
                        e(dVar2, viewHolder6);
                    }
                    if (arrayList10.isEmpty()) {
                        arrayList9.remove(arrayList10);
                    }
                }
            }
            b(this.q);
            b(this.p);
            b(this.o);
            b(this.r);
            dispatchAnimationsFinished();
        }
    }

    public static void b(ArrayList arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((RecyclerView.ViewHolder) arrayList.get(size)).itemView.animate().cancel();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public boolean canReuseUpdatedViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, @NonNull List<Object> list) {
        return !list.isEmpty() || super.canReuseUpdatedViewHolder(viewHolder, list);
    }
}
