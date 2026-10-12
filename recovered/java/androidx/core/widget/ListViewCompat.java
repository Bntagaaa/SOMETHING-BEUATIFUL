package androidx.core.widget;

import android.widget.ListView;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public final class ListViewCompat {
    public static void scrollListBy(@NonNull ListView listView, int i) {
        a.b(listView, i);
    }

    public static boolean canScrollList(@NonNull ListView listView, int i) {
        return a.a(listView, i);
    }

    private ListViewCompat() {
    }

    @RequiresApi(19)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static void b(ListView listView, int i) {
            listView.scrollListBy(i);
        }

        @DoNotInline
        public static boolean a(ListView listView, int i) {
            return listView.canScrollList(i);
        }
    }
}
