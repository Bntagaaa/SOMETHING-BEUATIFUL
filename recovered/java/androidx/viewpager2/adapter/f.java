package androidx.viewpager2.adapter;

import androidx.viewpager2.adapter.FragmentStateAdapter;

/* loaded from: classes.dex */
class f extends FragmentStateAdapter.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FragmentStateAdapter.c f2393a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(FragmentStateAdapter.c cVar) {
        super(0);
        this.f2393a = cVar;
    }

    @Override // androidx.viewpager2.adapter.FragmentStateAdapter.a, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
    public void onChanged() {
        this.f2393a.b(true);
    }
}
