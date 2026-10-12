package androidx.recyclerview.widget;

import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* loaded from: classes.dex */
class l implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ k f2174a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2175b;
    public final /* synthetic */ ItemTouchHelper c;

    public l(ItemTouchHelper itemTouchHelper, k kVar, int i) {
        this.c = itemTouchHelper;
        this.f2174a = kVar;
        this.f2175b = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        ItemTouchHelper itemTouchHelper = this.c;
        RecyclerView recyclerView = itemTouchHelper.r;
        if (recyclerView == null || !recyclerView.isAttachedToWindow()) {
            return;
        }
        k kVar = this.f2174a;
        if (kVar.k) {
            return;
        }
        RecyclerView.ViewHolder viewHolder = kVar.e;
        if (viewHolder.getAbsoluteAdapterPosition() != -1) {
            RecyclerView.ItemAnimator itemAnimator = itemTouchHelper.r.getItemAnimator();
            if (itemAnimator == null || !itemAnimator.isRunning(null)) {
                ArrayList arrayList = itemTouchHelper.p;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    if (((ItemTouchHelper.d) arrayList.get(i)).l) {
                    }
                }
                itemTouchHelper.m.onSwiped(viewHolder, this.f2175b);
                return;
            }
            itemTouchHelper.r.post(this);
        }
    }
}
