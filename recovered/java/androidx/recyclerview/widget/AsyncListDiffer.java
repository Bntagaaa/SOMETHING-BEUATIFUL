package androidx.recyclerview.widget;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.AsyncDifferConfig;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class AsyncListDiffer<T> {
    public static final Executor h = new b();

    /* renamed from: a, reason: collision with root package name */
    public final ListUpdateCallback f1982a;

    /* renamed from: b, reason: collision with root package name */
    public final AsyncDifferConfig f1983b;
    public final Executor c;
    public final CopyOnWriteArrayList d;
    public List e;
    public List f;

    /* renamed from: g, reason: collision with root package name */
    public int f1984g;

    public interface ListListener<T> {
        void onCurrentListChanged(@NonNull List<T> list, @NonNull List<T> list2);
    }

    public static class b implements Executor {

        /* renamed from: a, reason: collision with root package name */
        public final Handler f1990a = new Handler(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            this.f1990a.post(runnable);
        }
    }

    public AsyncListDiffer(@NonNull RecyclerView.Adapter adapter, @NonNull DiffUtil.ItemCallback<T> itemCallback) {
        this(new AdapterListUpdateCallback(adapter), new AsyncDifferConfig.Builder(itemCallback).build());
    }

    public AsyncListDiffer(@NonNull ListUpdateCallback listUpdateCallback, @NonNull AsyncDifferConfig<T> asyncDifferConfig) {
        this.d = new CopyOnWriteArrayList();
        this.f = Collections.EMPTY_LIST;
        this.f1982a = listUpdateCallback;
        this.f1983b = asyncDifferConfig;
        if (asyncDifferConfig.getMainThreadExecutor() != null) {
            this.c = asyncDifferConfig.getMainThreadExecutor();
        } else {
            this.c = h;
        }
    }

    @NonNull
    public List<T> getCurrentList() {
        return this.f;
    }

    public void submitList(@Nullable List<T> list) {
        submitList(list, null);
    }

    public void submitList(@Nullable List<T> list, @Nullable Runnable runnable) {
        int i = this.f1984g + 1;
        this.f1984g = i;
        List<T> list2 = this.e;
        if (list == list2) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        List list3 = this.f;
        ListUpdateCallback listUpdateCallback = this.f1982a;
        if (list == null) {
            int size = list2.size();
            this.e = null;
            this.f = Collections.EMPTY_LIST;
            listUpdateCallback.onRemoved(0, size);
            a(list3, runnable);
            return;
        }
        if (list2 == null) {
            this.e = list;
            this.f = Collections.unmodifiableList(list);
            listUpdateCallback.onInserted(0, list.size());
            a(list3, runnable);
            return;
        }
        this.f1983b.getBackgroundThreadExecutor().execute(new a(list2, list, i, runnable));
    }

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ List f1985a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ List f1986b;
        public final /* synthetic */ int c;
        public final /* synthetic */ Runnable d;

        public a(List list, List list2, int i, Runnable runnable) {
            this.f1985a = list;
            this.f1986b = list2;
            this.c = i;
            this.d = runnable;
        }

        /* renamed from: androidx.recyclerview.widget.AsyncListDiffer$a$a, reason: collision with other inner class name */
        public class C0029a extends DiffUtil.Callback {
            public C0029a() {
            }

            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public int getOldListSize() {
                return a.this.f1985a.size();
            }

            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public int getNewListSize() {
                return a.this.f1986b.size();
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public boolean areItemsTheSame(int i, int i2) {
                a aVar = a.this;
                Object obj = aVar.f1985a.get(i);
                Object obj2 = aVar.f1986b.get(i2);
                if (obj == null || obj2 == null) {
                    return obj == null && obj2 == null;
                }
                return AsyncListDiffer.this.f1983b.getDiffCallback().areItemsTheSame(obj, obj2);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public boolean areContentsTheSame(int i, int i2) {
                a aVar = a.this;
                Object obj = aVar.f1985a.get(i);
                Object obj2 = aVar.f1986b.get(i2);
                if (obj != null && obj2 != null) {
                    return AsyncListDiffer.this.f1983b.getDiffCallback().areContentsTheSame(obj, obj2);
                }
                if (obj == null && obj2 == null) {
                    return true;
                }
                throw new AssertionError();
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            @Nullable
            public Object getChangePayload(int i, int i2) {
                a aVar = a.this;
                Object obj = aVar.f1985a.get(i);
                Object obj2 = aVar.f1986b.get(i2);
                if (obj != null && obj2 != null) {
                    return AsyncListDiffer.this.f1983b.getDiffCallback().getChangePayload(obj, obj2);
                }
                throw new AssertionError();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            AsyncListDiffer.this.c.execute(new b(DiffUtil.calculateDiff(new C0029a())));
        }

        public class b implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ DiffUtil.DiffResult f1988a;

            public b(DiffUtil.DiffResult diffResult) {
                this.f1988a = diffResult;
            }

            @Override // java.lang.Runnable
            public void run() {
                a aVar = a.this;
                AsyncListDiffer asyncListDiffer = AsyncListDiffer.this;
                if (asyncListDiffer.f1984g == aVar.c) {
                    List list = aVar.f1986b;
                    Runnable runnable = aVar.d;
                    List list2 = asyncListDiffer.f;
                    asyncListDiffer.e = list;
                    asyncListDiffer.f = Collections.unmodifiableList(list);
                    this.f1988a.dispatchUpdatesTo(asyncListDiffer.f1982a);
                    asyncListDiffer.a(list2, runnable);
                }
            }
        }
    }

    public final void a(List list, Runnable runnable) {
        Iterator it = this.d.iterator();
        while (it.hasNext()) {
            ((ListListener) it.next()).onCurrentListChanged(list, this.f);
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    public void addListListener(@NonNull ListListener<T> listListener) {
        this.d.add(listListener);
    }

    public void removeListListener(@NonNull ListListener<T> listListener) {
        this.d.remove(listListener);
    }
}
