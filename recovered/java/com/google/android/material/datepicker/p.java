package com.google.android.material.datepicker;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.KeyEvent;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.annotation.NonNull;
import androidx.core.util.Pair;
import com.google.android.material.internal.ViewUtils;

/* loaded from: classes.dex */
final class p extends GridView {
    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getAdapter().notifyDataSetChanged();
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public void setSelection(int i) {
        if (i < getAdapter().f2989a.c()) {
            super.setSelection(getAdapter().f2989a.c());
        } else {
            super.setSelection(i);
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!super.onKeyDown(i, keyEvent)) {
            return false;
        }
        if (getSelectedItemPosition() == -1 || getSelectedItemPosition() >= getAdapter().f2989a.c()) {
            return true;
        }
        if (19 != i) {
            return false;
        }
        setSelection(getAdapter().f2989a.c());
        return true;
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    @NonNull
    public u getAdapter() {
        return (u) super.getAdapter();
    }

    @Override // android.widget.AdapterView
    public final void setAdapter(ListAdapter listAdapter) {
        if (!(listAdapter instanceof u)) {
            throw new IllegalArgumentException(String.format("%1$s must have its Adapter set to a %2$s", p.class.getCanonicalName(), u.class.getCanonicalName()));
        }
        super.setAdapter(listAdapter);
    }

    @Override // android.view.View
    public final void onDraw(@NonNull Canvas canvas) {
        int width;
        int i;
        p pVar = this;
        super.onDraw(canvas);
        u adapter = pVar.getAdapter();
        DateSelector dateSelector = adapter.f2990b;
        b bVar = adapter.d;
        t tVar = adapter.f2989a;
        int iMax = Math.max(tVar.c(), pVar.getFirstVisiblePosition());
        int iMin = Math.min(adapter.a(), pVar.getLastVisiblePosition());
        Long item = adapter.getItem(iMax);
        Long item2 = adapter.getItem(iMin);
        for (Pair<Long, Long> pair : dateSelector.getSelectedRanges()) {
            Long l = pair.first;
            if (l != null) {
                if (pair.second == null) {
                    continue;
                } else {
                    Long l2 = l;
                    long jLongValue = l2.longValue();
                    Long l3 = pair.second;
                    long jLongValue2 = l3.longValue();
                    if (item == null || item2 == null || l2.longValue() > item2.longValue() || l3.longValue() < item.longValue()) {
                        pVar = this;
                        adapter = adapter;
                    } else {
                        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(pVar);
                        if (jLongValue >= item.longValue()) {
                            throw null;
                        }
                        int i2 = tVar.d;
                        int right = iMax % i2 == 0 ? 0 : !zIsLayoutRtl ? pVar.getChildAt((iMax - 1) - pVar.getFirstVisiblePosition()).getRight() : pVar.getChildAt((iMax - 1) - pVar.getFirstVisiblePosition()).getLeft();
                        if (jLongValue2 <= item2.longValue()) {
                            throw null;
                        }
                        int width2 = (iMin + 1) % i2 == 0 ? pVar.getWidth() : !zIsLayoutRtl ? pVar.getChildAt(iMin - pVar.getFirstVisiblePosition()).getRight() : pVar.getChildAt(iMin - pVar.getFirstVisiblePosition()).getLeft();
                        int itemId = (int) adapter.getItemId(iMax);
                        int itemId2 = (int) adapter.getItemId(iMin);
                        while (itemId <= itemId2) {
                            int numColumns = pVar.getNumColumns() * itemId;
                            int numColumns2 = (pVar.getNumColumns() + numColumns) - 1;
                            u uVar = adapter;
                            View childAt = pVar.getChildAt(numColumns - pVar.getFirstVisiblePosition());
                            int top = childAt.getTop() + bVar.f2960a.f2958a.top;
                            int bottom = childAt.getBottom() - bVar.f2960a.f2958a.bottom;
                            if (zIsLayoutRtl) {
                                int i3 = iMin > numColumns2 ? 0 : width2;
                                width = numColumns > iMax ? getWidth() : right;
                                i = i3;
                            } else {
                                i = numColumns > iMax ? 0 : right;
                                width = iMin > numColumns2 ? getWidth() : width2;
                            }
                            canvas.drawRect(i, top, width, bottom, bVar.h);
                            itemId++;
                            pVar = this;
                            adapter = uVar;
                        }
                    }
                }
            }
            pVar = this;
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        if (!z) {
            super.onFocusChanged(false, i, rect);
            return;
        }
        if (i == 33) {
            setSelection(getAdapter().a());
        } else if (i == 130) {
            setSelection(getAdapter().f2989a.c());
        } else {
            super.onFocusChanged(true, i, rect);
        }
    }
}
