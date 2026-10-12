package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.AsyncDifferConfig;
import androidx.recyclerview.widget.AsyncListDiffer;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import java.util.List;

/* loaded from: classes.dex */
public abstract class ListAdapter<T, VH extends RecyclerView.ViewHolder> extends RecyclerView.Adapter<VH> {

    /* renamed from: a, reason: collision with root package name */
    public final AsyncListDiffer f2051a;

    /* renamed from: b, reason: collision with root package name */
    public final AsyncListDiffer.ListListener f2052b;

    public void onCurrentListChanged(@NonNull List<T> list, @NonNull List<T> list2) {
    }

    public class a implements AsyncListDiffer.ListListener<T> {
        public a() {
        }

        @Override // androidx.recyclerview.widget.AsyncListDiffer.ListListener
        public void onCurrentListChanged(@NonNull List<T> list, @NonNull List<T> list2) {
            ListAdapter.this.onCurrentListChanged(list, list2);
        }
    }

    public ListAdapter(@NonNull DiffUtil.ItemCallback<T> itemCallback) {
        a aVar = new a();
        this.f2052b = aVar;
        AsyncListDiffer asyncListDiffer = new AsyncListDiffer(new AdapterListUpdateCallback(this), new AsyncDifferConfig.Builder(itemCallback).build());
        this.f2051a = asyncListDiffer;
        asyncListDiffer.addListListener(aVar);
    }

    public ListAdapter(@NonNull AsyncDifferConfig<T> asyncDifferConfig) {
        a aVar = new a();
        this.f2052b = aVar;
        AsyncListDiffer asyncListDiffer = new AsyncListDiffer(new AdapterListUpdateCallback(this), asyncDifferConfig);
        this.f2051a = asyncListDiffer;
        asyncListDiffer.addListListener(aVar);
    }

    public void submitList(@Nullable List<T> list) {
        this.f2051a.submitList(list);
    }

    public void submitList(@Nullable List<T> list, @Nullable Runnable runnable) {
        this.f2051a.submitList(list, runnable);
    }

    public T getItem(int i) {
        return this.f2051a.getCurrentList().get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f2051a.getCurrentList().size();
    }

    @NonNull
    public List<T> getCurrentList() {
        return this.f2051a.getCurrentList();
    }
}
