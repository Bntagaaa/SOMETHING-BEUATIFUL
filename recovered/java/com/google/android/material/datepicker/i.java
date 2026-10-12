package com.google.android.material.datepicker;

import android.graphics.Canvas;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.core.util.Pair;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Calendar;

/* loaded from: classes.dex */
class i extends RecyclerView.ItemDecoration {

    /* renamed from: a, reason: collision with root package name */
    public final Calendar f2973a = y.h(null);

    /* renamed from: b, reason: collision with root package name */
    public final Calendar f2974b = y.h(null);
    public final /* synthetic */ MaterialCalendar c;

    public i(MaterialCalendar materialCalendar) {
        this.c = materialCalendar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
        if ((recyclerView.getAdapter() instanceof YearGridAdapter) && (recyclerView.getLayoutManager() instanceof GridLayoutManager)) {
            YearGridAdapter yearGridAdapter = (YearGridAdapter) recyclerView.getAdapter();
            GridLayoutManager gridLayoutManager = (GridLayoutManager) recyclerView.getLayoutManager();
            MaterialCalendar materialCalendar = this.c;
            for (Pair<Long, Long> pair : materialCalendar.c0.getSelectedRanges()) {
                Long l = pair.first;
                if (l != null && pair.second != null) {
                    long jLongValue = l.longValue();
                    Calendar calendar = this.f2973a;
                    calendar.setTimeInMillis(jLongValue);
                    long jLongValue2 = pair.second.longValue();
                    Calendar calendar2 = this.f2974b;
                    calendar2.setTimeInMillis(jLongValue2);
                    int i = calendar.get(1) - yearGridAdapter.f2956a.d0.f2925a.c;
                    int i2 = calendar2.get(1) - yearGridAdapter.f2956a.d0.f2925a.c;
                    View viewFindViewByPosition = gridLayoutManager.findViewByPosition(i);
                    View viewFindViewByPosition2 = gridLayoutManager.findViewByPosition(i2);
                    int spanCount = i / gridLayoutManager.getSpanCount();
                    int spanCount2 = i2 / gridLayoutManager.getSpanCount();
                    for (int i3 = spanCount; i3 <= spanCount2; i3++) {
                        View viewFindViewByPosition3 = gridLayoutManager.findViewByPosition(gridLayoutManager.getSpanCount() * i3);
                        if (viewFindViewByPosition3 != null) {
                            int top = viewFindViewByPosition3.getTop() + materialCalendar.g0.d.f2958a.top;
                            int bottom = viewFindViewByPosition3.getBottom() - materialCalendar.g0.d.f2958a.bottom;
                            canvas.drawRect(i3 == spanCount ? (viewFindViewByPosition.getWidth() / 2) + viewFindViewByPosition.getLeft() : 0, top, i3 == spanCount2 ? (viewFindViewByPosition2.getWidth() / 2) + viewFindViewByPosition2.getLeft() : recyclerView.getWidth(), bottom, materialCalendar.g0.h);
                        }
                    }
                }
            }
        }
    }
}
