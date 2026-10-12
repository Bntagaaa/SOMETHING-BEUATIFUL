package com.google.android.material.internal;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;
import com.google.android.material.internal.MaterialCheckable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
@UiThread
/* loaded from: classes.dex */
public class CheckableGroup<T extends MaterialCheckable<T>> {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f3051a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final HashSet f3052b = new HashSet();
    public OnCheckedStateChangeListener c;
    public boolean d;
    public boolean e;

    public interface OnCheckedStateChangeListener {
        void onCheckedStateChanged(@NonNull Set<Integer> set);
    }

    public void setSingleSelection(boolean z) {
        if (this.d != z) {
            this.d = z;
            clearCheck();
        }
    }

    public boolean isSingleSelection() {
        return this.d;
    }

    public void setSelectionRequired(boolean z) {
        this.e = z;
    }

    public boolean isSelectionRequired() {
        return this.e;
    }

    public void setOnCheckedStateChangeListener(@Nullable OnCheckedStateChangeListener onCheckedStateChangeListener) {
        this.c = onCheckedStateChangeListener;
    }

    public void addCheckable(T t) {
        this.f3051a.put(Integer.valueOf(t.getId()), t);
        if (t.isChecked()) {
            a(t);
        }
        t.setInternalOnCheckedChangeListener(new a());
    }

    public class a implements MaterialCheckable.OnCheckedChangeListener<T> {
        public a() {
        }

        @Override // com.google.android.material.internal.MaterialCheckable.OnCheckedChangeListener
        public void onCheckedChanged(T t, boolean z) {
            CheckableGroup checkableGroup = CheckableGroup.this;
            if (z) {
                if (!checkableGroup.a(t)) {
                    return;
                }
            } else if (!checkableGroup.b(t, checkableGroup.e)) {
                return;
            }
            OnCheckedStateChangeListener onCheckedStateChangeListener = checkableGroup.c;
            if (onCheckedStateChangeListener != null) {
                onCheckedStateChangeListener.onCheckedStateChanged(checkableGroup.getCheckedIds());
            }
        }
    }

    public void removeCheckable(T t) {
        t.setInternalOnCheckedChangeListener(null);
        this.f3051a.remove(Integer.valueOf(t.getId()));
        this.f3052b.remove(Integer.valueOf(t.getId()));
    }

    public void check(@IdRes int i) {
        OnCheckedStateChangeListener onCheckedStateChangeListener;
        MaterialCheckable materialCheckable = (MaterialCheckable) this.f3051a.get(Integer.valueOf(i));
        if (materialCheckable == null || !a(materialCheckable) || (onCheckedStateChangeListener = this.c) == null) {
            return;
        }
        onCheckedStateChangeListener.onCheckedStateChanged(getCheckedIds());
    }

    public void uncheck(@IdRes int i) {
        OnCheckedStateChangeListener onCheckedStateChangeListener;
        MaterialCheckable materialCheckable = (MaterialCheckable) this.f3051a.get(Integer.valueOf(i));
        if (materialCheckable == null || !b(materialCheckable, this.e) || (onCheckedStateChangeListener = this.c) == null) {
            return;
        }
        onCheckedStateChangeListener.onCheckedStateChanged(getCheckedIds());
    }

    public void clearCheck() {
        OnCheckedStateChangeListener onCheckedStateChangeListener;
        boolean zIsEmpty = this.f3052b.isEmpty();
        Iterator it = this.f3051a.values().iterator();
        while (it.hasNext()) {
            b((MaterialCheckable) it.next(), false);
        }
        if (zIsEmpty || (onCheckedStateChangeListener = this.c) == null) {
            return;
        }
        onCheckedStateChangeListener.onCheckedStateChanged(getCheckedIds());
    }

    @IdRes
    public int getSingleCheckedId() {
        if (!this.d) {
            return -1;
        }
        HashSet hashSet = this.f3052b;
        if (hashSet.isEmpty()) {
            return -1;
        }
        return ((Integer) hashSet.iterator().next()).intValue();
    }

    @NonNull
    public Set<Integer> getCheckedIds() {
        return new HashSet(this.f3052b);
    }

    @NonNull
    public List<Integer> getCheckedIdsSortedByChildOrder(@NonNull ViewGroup viewGroup) {
        Set<Integer> checkedIds = getCheckedIds();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if ((childAt instanceof MaterialCheckable) && checkedIds.contains(Integer.valueOf(childAt.getId()))) {
                arrayList.add(Integer.valueOf(childAt.getId()));
            }
        }
        return arrayList;
    }

    public final boolean a(MaterialCheckable materialCheckable) {
        int id = materialCheckable.getId();
        HashSet hashSet = this.f3052b;
        if (hashSet.contains(Integer.valueOf(id))) {
            return false;
        }
        MaterialCheckable materialCheckable2 = (MaterialCheckable) this.f3051a.get(Integer.valueOf(getSingleCheckedId()));
        if (materialCheckable2 != null) {
            b(materialCheckable2, false);
        }
        boolean zAdd = hashSet.add(Integer.valueOf(id));
        if (!materialCheckable.isChecked()) {
            materialCheckable.setChecked(true);
        }
        return zAdd;
    }

    public final boolean b(MaterialCheckable materialCheckable, boolean z) {
        int id = materialCheckable.getId();
        HashSet hashSet = this.f3052b;
        if (!hashSet.contains(Integer.valueOf(id))) {
            return false;
        }
        if (z && hashSet.size() == 1 && hashSet.contains(Integer.valueOf(id))) {
            materialCheckable.setChecked(true);
            return false;
        }
        boolean zRemove = hashSet.remove(Integer.valueOf(id));
        if (materialCheckable.isChecked()) {
            materialCheckable.setChecked(false);
        }
        return zRemove;
    }
}
