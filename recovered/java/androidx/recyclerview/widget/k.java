package androidx.recyclerview.widget;

import android.animation.Animator;
import android.view.View;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
class k extends ItemTouchHelper.d {
    public final /* synthetic */ int n;
    public final /* synthetic */ RecyclerView.ViewHolder o;
    public final /* synthetic */ ItemTouchHelper p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(ItemTouchHelper itemTouchHelper, RecyclerView.ViewHolder viewHolder, int i, float f, float f2, float f3, float f4, int i2, RecyclerView.ViewHolder viewHolder2) {
        super(viewHolder, i, f, f2, f3, f4);
        this.p = itemTouchHelper;
        this.n = i2;
        this.o = viewHolder2;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.d, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        if (this.k) {
            return;
        }
        int i = this.n;
        RecyclerView.ViewHolder viewHolder = this.o;
        ItemTouchHelper itemTouchHelper = this.p;
        if (i <= 0) {
            itemTouchHelper.m.clearView(itemTouchHelper.r, viewHolder);
        } else {
            itemTouchHelper.f2032a.add(viewHolder.itemView);
            this.h = true;
            if (i > 0) {
                itemTouchHelper.r.post(new l(itemTouchHelper, this, i));
            }
        }
        View view = itemTouchHelper.w;
        View view2 = viewHolder.itemView;
        if (view == view2) {
            itemTouchHelper.i(view2);
        }
    }
}
