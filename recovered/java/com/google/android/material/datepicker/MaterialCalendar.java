package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButton;
import java.util.Iterator;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class MaterialCalendar<S> extends v<S> {
    public int b0;
    public DateSelector c0;
    public CalendarConstraints d0;
    public t e0;
    public d f0;
    public com.google.android.material.datepicker.b g0;
    public RecyclerView h0;
    public RecyclerView i0;
    public View j0;
    public View k0;

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class d {

        /* renamed from: a, reason: collision with root package name */
        public static final d f2934a = new d("DAY", 0);

        /* renamed from: b, reason: collision with root package name */
        public static final d f2935b = new d("YEAR", 1);
    }

    public interface e {
        void onDayClick(long j);
    }

    @Override // com.google.android.material.datepicker.v
    public boolean addOnSelectionChangedListener(@NonNull OnSelectionChangedListener<S> onSelectionChangedListener) {
        return this.onSelectionChangedListeners.add(onSelectionChangedListener);
    }

    public class c implements e {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.datepicker.MaterialCalendar.e
        public void onDayClick(long j) {
            MaterialCalendar materialCalendar = MaterialCalendar.this;
            if (materialCalendar.d0.getDateValidator().isValid(j)) {
                materialCalendar.c0.select(j);
                Iterator<OnSelectionChangedListener<S>> it = materialCalendar.onSelectionChangedListeners.iterator();
                while (it.hasNext()) {
                    it.next().onSelectionChanged(materialCalendar.c0.getSelection());
                }
                materialCalendar.i0.getAdapter().notifyDataSetChanged();
                RecyclerView recyclerView = materialCalendar.h0;
                if (recyclerView != null) {
                    recyclerView.getAdapter().notifyDataSetChanged();
                }
            }
        }

        public c() {
        }
    }

    @NonNull
    public static <T> MaterialCalendar<T> newInstance(@NonNull DateSelector<T> dateSelector, @StyleRes int i, @NonNull CalendarConstraints calendarConstraints) {
        MaterialCalendar<T> materialCalendar = new MaterialCalendar<>();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i);
        bundle.putParcelable("GRID_SELECTOR_KEY", dateSelector);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", calendarConstraints);
        bundle.putParcelable("CURRENT_MONTH_KEY", calendarConstraints.d);
        materialCalendar.setArguments(bundle);
        return materialCalendar;
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.b0);
        bundle.putParcelable("GRID_SELECTOR_KEY", this.c0);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.d0);
        bundle.putParcelable("CURRENT_MONTH_KEY", this.e0);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.b0 = bundle.getInt("THEME_RES_ID_KEY");
        this.c0 = (DateSelector) bundle.getParcelable("GRID_SELECTOR_KEY");
        this.d0 = (CalendarConstraints) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.e0 = (t) bundle.getParcelable("CURRENT_MONTH_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) throws IllegalStateException, Resources.NotFoundException {
        int i;
        int i2;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getContext(), this.b0);
        this.g0 = new com.google.android.material.datepicker.b(contextThemeWrapper);
        LayoutInflater layoutInflaterCloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        t tVar = this.d0.f2925a;
        if (MaterialDatePicker.t(contextThemeWrapper)) {
            i = R.layout.mtrl_calendar_vertical;
            i2 = 1;
        } else {
            i = R.layout.mtrl_calendar_horizontal;
            i2 = 0;
        }
        View viewInflate = layoutInflaterCloneInContext.inflate(i, viewGroup, false);
        Resources resources = requireContext().getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_navigation_bottom_padding) + resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_navigation_top_padding) + resources.getDimensionPixelSize(R.dimen.mtrl_calendar_navigation_height);
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.mtrl_calendar_days_of_week_height);
        int i3 = u.f;
        viewInflate.setMinimumHeight(dimensionPixelOffset + dimensionPixelSize + (resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_month_vertical_padding) * (i3 - 1)) + (resources.getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) * i3) + resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_bottom_padding));
        GridView gridView = (GridView) viewInflate.findViewById(R.id.mtrl_calendar_days_of_week);
        ViewCompat.setAccessibilityDelegate(gridView, new a());
        gridView.setAdapter((ListAdapter) new g());
        gridView.setNumColumns(tVar.d);
        gridView.setEnabled(false);
        this.i0 = (RecyclerView) viewInflate.findViewById(R.id.mtrl_calendar_months);
        this.i0.setLayoutManager(new b(getContext(), i2, i2));
        this.i0.setTag("MONTHS_VIEW_GROUP_TAG");
        MonthsPagerAdapter monthsPagerAdapter = new MonthsPagerAdapter(contextThemeWrapper, this.c0, this.d0, new c());
        this.i0.setAdapter(monthsPagerAdapter);
        int integer = contextThemeWrapper.getResources().getInteger(R.integer.mtrl_calendar_year_selector_span);
        int i4 = R.id.mtrl_calendar_year_selector_frame;
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(i4);
        this.h0 = recyclerView;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
            this.h0.setLayoutManager(new GridLayoutManager((Context) contextThemeWrapper, integer, 1, false));
            this.h0.setAdapter(new YearGridAdapter(this));
            this.h0.addItemDecoration(new i(this));
        }
        int i5 = R.id.month_navigation_fragment_toggle;
        if (viewInflate.findViewById(i5) != null) {
            MaterialButton materialButton = (MaterialButton) viewInflate.findViewById(i5);
            materialButton.setTag("SELECTOR_TOGGLE_TAG");
            ViewCompat.setAccessibilityDelegate(materialButton, new j(this));
            MaterialButton materialButton2 = (MaterialButton) viewInflate.findViewById(R.id.month_navigation_previous);
            materialButton2.setTag("NAVIGATION_PREV_TAG");
            MaterialButton materialButton3 = (MaterialButton) viewInflate.findViewById(R.id.month_navigation_next);
            materialButton3.setTag("NAVIGATION_NEXT_TAG");
            this.j0 = viewInflate.findViewById(i4);
            this.k0 = viewInflate.findViewById(R.id.mtrl_calendar_day_selector_frame);
            r(d.f2934a);
            materialButton.setText(this.e0.e());
            this.i0.addOnScrollListener(new k(this, monthsPagerAdapter, materialButton));
            materialButton.setOnClickListener(new l(this));
            materialButton3.setOnClickListener(new m(this, monthsPagerAdapter));
            materialButton2.setOnClickListener(new n(this, monthsPagerAdapter));
        }
        if (!MaterialDatePicker.t(contextThemeWrapper)) {
            new PagerSnapHelper().attachToRecyclerView(this.i0);
        }
        this.i0.scrollToPosition(monthsPagerAdapter.f2944a.f2925a.f(this.e0));
        return viewInflate;
    }

    public class a extends AccessibilityDelegateCompat {
        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCollectionInfo(null);
        }
    }

    public class b extends w {
        public final /* synthetic */ int G;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Context context, int i, int i2) {
            super(context, i, false);
            this.G = i2;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        public void calculateExtraLayoutSpace(@NonNull RecyclerView.State state, @NonNull int[] iArr) {
            int i = this.G;
            MaterialCalendar materialCalendar = MaterialCalendar.this;
            if (i == 0) {
                iArr[0] = materialCalendar.i0.getWidth();
                iArr[1] = materialCalendar.i0.getWidth();
            } else {
                iArr[0] = materialCalendar.i0.getHeight();
                iArr[1] = materialCalendar.i0.getHeight();
            }
        }
    }

    public final void q(t tVar) {
        MonthsPagerAdapter monthsPagerAdapter = (MonthsPagerAdapter) this.i0.getAdapter();
        int iF = monthsPagerAdapter.f2944a.f2925a.f(tVar);
        int iF2 = iF - monthsPagerAdapter.f2944a.f2925a.f(this.e0);
        boolean z = Math.abs(iF2) > 3;
        boolean z2 = iF2 > 0;
        this.e0 = tVar;
        if (z && z2) {
            this.i0.scrollToPosition(iF - 3);
            this.i0.post(new h(this, iF));
        } else if (z) {
            this.i0.scrollToPosition(iF + 3);
            this.i0.post(new h(this, iF));
        } else {
            this.i0.post(new h(this, iF));
        }
    }

    @Nullable
    public DateSelector<S> getDateSelector() {
        return this.c0;
    }

    public final void r(d dVar) {
        this.f0 = dVar;
        if (dVar == d.f2935b) {
            this.h0.getLayoutManager().scrollToPosition(this.e0.c - ((YearGridAdapter) this.h0.getAdapter()).f2956a.d0.f2925a.c);
            this.j0.setVisibility(0);
            this.k0.setVisibility(8);
            return;
        }
        if (dVar == d.f2934a) {
            this.j0.setVisibility(8);
            this.k0.setVisibility(0);
            q(this.e0);
        }
    }
}
