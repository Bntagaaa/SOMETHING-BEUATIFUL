package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Pair;
import androidx.core.util.Preconditions;
import com.google.android.material.R;
import com.google.android.material.internal.ManufacturerUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.textfield.TextInputLayout;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Locale;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class RangeDateSelector implements DateSelector<Pair<Long, Long>> {
    public static final Parcelable.Creator<RangeDateSelector> CREATOR = new c();

    /* renamed from: a, reason: collision with root package name */
    public String f2950a;

    /* renamed from: b, reason: collision with root package name */
    public Long f2951b = null;
    public Long c = null;
    public Long d = null;
    public Long e = null;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public class a extends e {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ TextInputLayout f2952g;
        public final /* synthetic */ TextInputLayout h;
        public final /* synthetic */ OnSelectionChangedListener i;

        @Override // com.google.android.material.datepicker.e
        public final void a() {
            RangeDateSelector rangeDateSelector = RangeDateSelector.this;
            rangeDateSelector.d = null;
            RangeDateSelector.a(rangeDateSelector, this.f2952g, this.h, this.i);
        }

        @Override // com.google.android.material.datepicker.e
        public final void b(Long l) {
            RangeDateSelector rangeDateSelector = RangeDateSelector.this;
            rangeDateSelector.d = l;
            RangeDateSelector.a(rangeDateSelector, this.f2952g, this.h, this.i);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, SimpleDateFormat simpleDateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints, TextInputLayout textInputLayout2, TextInputLayout textInputLayout3, OnSelectionChangedListener onSelectionChangedListener) {
            super(str, simpleDateFormat, textInputLayout, calendarConstraints);
            this.f2952g = textInputLayout2;
            this.h = textInputLayout3;
            this.i = onSelectionChangedListener;
        }
    }

    public class b extends e {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ TextInputLayout f2953g;
        public final /* synthetic */ TextInputLayout h;
        public final /* synthetic */ OnSelectionChangedListener i;

        @Override // com.google.android.material.datepicker.e
        public final void a() {
            RangeDateSelector rangeDateSelector = RangeDateSelector.this;
            rangeDateSelector.e = null;
            RangeDateSelector.a(rangeDateSelector, this.f2953g, this.h, this.i);
        }

        @Override // com.google.android.material.datepicker.e
        public final void b(Long l) {
            RangeDateSelector rangeDateSelector = RangeDateSelector.this;
            rangeDateSelector.e = l;
            RangeDateSelector.a(rangeDateSelector, this.f2953g, this.h, this.i);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str, SimpleDateFormat simpleDateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints, TextInputLayout textInputLayout2, TextInputLayout textInputLayout3, OnSelectionChangedListener onSelectionChangedListener) {
            super(str, simpleDateFormat, textInputLayout, calendarConstraints);
            this.f2953g = textInputLayout2;
            this.h = textInputLayout3;
            this.i = onSelectionChangedListener;
        }
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public void select(long j) {
        Long l = this.f2951b;
        if (l == null) {
            this.f2951b = Long.valueOf(j);
        } else if (this.c == null && l.longValue() <= j) {
            this.c = Long.valueOf(j);
        } else {
            this.c = null;
            this.f2951b = Long.valueOf(j);
        }
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public boolean isSelectionComplete() {
        Long l = this.f2951b;
        return (l == null || this.c == null || l.longValue() > this.c.longValue()) ? false : true;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public void setSelection(@NonNull Pair<Long, Long> pair) {
        Long l = pair.first;
        if (l != null && pair.second != null) {
            Preconditions.checkArgument(l.longValue() <= pair.second.longValue());
        }
        Long l2 = pair.first;
        this.f2951b = l2 == null ? null : Long.valueOf(y.a(l2.longValue()));
        Long l3 = pair.second;
        this.c = l3 != null ? Long.valueOf(y.a(l3.longValue())) : null;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public Pair<Long, Long> getSelection() {
        return new Pair<>(this.f2951b, this.c);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public Collection<Pair<Long, Long>> getSelectedRanges() {
        if (this.f2951b == null || this.c == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Pair(this.f2951b, this.c));
        return arrayList;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public Collection<Long> getSelectedDays() {
        ArrayList arrayList = new ArrayList();
        Long l = this.f2951b;
        if (l != null) {
            arrayList.add(l);
        }
        Long l2 = this.c;
        if (l2 != null) {
            arrayList.add(l2);
        }
        return arrayList;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public int getDefaultThemeResId(@NonNull Context context) throws Resources.NotFoundException {
        int i;
        Resources resources = context.getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        if (Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels) > resources.getDimensionPixelSize(R.dimen.mtrl_calendar_maximum_default_fullscreen_minor_axis)) {
            i = R.attr.materialCalendarTheme;
        } else {
            i = R.attr.materialCalendarFullscreenTheme;
        }
        return MaterialAttributes.resolveOrThrow(context, i, MaterialDatePicker.class.getCanonicalName());
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public String getSelectionDisplayString(@NonNull Context context) {
        Pair pairCreate;
        Resources resources = context.getResources();
        Long l = this.f2951b;
        if (l == null && this.c == null) {
            return resources.getString(R.string.mtrl_picker_range_header_unselected);
        }
        Long l2 = this.c;
        if (l2 == null) {
            return resources.getString(R.string.mtrl_picker_range_header_only_start_selected, f.a(l.longValue()));
        }
        if (l == null) {
            return resources.getString(R.string.mtrl_picker_range_header_only_end_selected, f.a(l2.longValue()));
        }
        Calendar calendarG = y.g();
        Calendar calendarH = y.h(null);
        calendarH.setTimeInMillis(l.longValue());
        Calendar calendarH2 = y.h(null);
        calendarH2.setTimeInMillis(l2.longValue());
        if (calendarH.get(1) == calendarH2.get(1)) {
            if (calendarH.get(1) == calendarG.get(1)) {
                pairCreate = Pair.create(f.b(l.longValue(), Locale.getDefault()), f.b(l2.longValue(), Locale.getDefault()));
            } else {
                pairCreate = Pair.create(f.b(l.longValue(), Locale.getDefault()), f.c(l2.longValue(), Locale.getDefault()));
            }
        } else {
            pairCreate = Pair.create(f.c(l.longValue(), Locale.getDefault()), f.c(l2.longValue(), Locale.getDefault()));
        }
        return resources.getString(R.string.mtrl_picker_range_header_selected, pairCreate.first, pairCreate.second);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public int getDefaultTitleResId() {
        return R.string.mtrl_picker_range_header_title;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public View onCreateTextInputView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle, CalendarConstraints calendarConstraints, @NonNull OnSelectionChangedListener<Pair<Long, Long>> onSelectionChangedListener) throws Resources.NotFoundException {
        View viewInflate = layoutInflater.inflate(R.layout.mtrl_picker_text_input_date_range, viewGroup, false);
        TextInputLayout textInputLayout = (TextInputLayout) viewInflate.findViewById(R.id.mtrl_picker_text_input_range_start);
        TextInputLayout textInputLayout2 = (TextInputLayout) viewInflate.findViewById(R.id.mtrl_picker_text_input_range_end);
        EditText editText = textInputLayout.getEditText();
        EditText editText2 = textInputLayout2.getEditText();
        if (ManufacturerUtils.isDateInputKeyboardMissingSeparatorCharacters()) {
            editText.setInputType(17);
            editText2.setInputType(17);
        }
        this.f2950a = viewInflate.getResources().getString(R.string.mtrl_picker_invalid_range);
        SimpleDateFormat simpleDateFormatE = y.e();
        Long l = this.f2951b;
        if (l != null) {
            editText.setText(simpleDateFormatE.format(l));
            this.d = this.f2951b;
        }
        Long l2 = this.c;
        if (l2 != null) {
            editText2.setText(simpleDateFormatE.format(l2));
            this.e = this.c;
        }
        String strF = y.f(viewInflate.getResources(), simpleDateFormatE);
        textInputLayout.setPlaceholderText(strF);
        textInputLayout2.setPlaceholderText(strF);
        editText.addTextChangedListener(new a(strF, simpleDateFormatE, textInputLayout, calendarConstraints, textInputLayout, textInputLayout2, onSelectionChangedListener));
        editText2.addTextChangedListener(new b(strF, simpleDateFormatE, textInputLayout2, calendarConstraints, textInputLayout, textInputLayout2, onSelectionChangedListener));
        ViewUtils.requestFocusAndShowKeyboard(editText);
        return viewInflate;
    }

    public static void a(RangeDateSelector rangeDateSelector, TextInputLayout textInputLayout, TextInputLayout textInputLayout2, OnSelectionChangedListener onSelectionChangedListener) {
        Long l = rangeDateSelector.d;
        if (l == null || rangeDateSelector.e == null) {
            if (textInputLayout.getError() != null && rangeDateSelector.f2950a.contentEquals(textInputLayout.getError())) {
                textInputLayout.setError(null);
            }
            if (textInputLayout2.getError() != null && " ".contentEquals(textInputLayout2.getError())) {
                textInputLayout2.setError(null);
            }
            onSelectionChangedListener.onIncompleteSelectionChanged();
            return;
        }
        if (l.longValue() <= rangeDateSelector.e.longValue()) {
            rangeDateSelector.f2951b = rangeDateSelector.d;
            rangeDateSelector.c = rangeDateSelector.e;
            onSelectionChangedListener.onSelectionChanged(rangeDateSelector.getSelection());
        } else {
            textInputLayout.setError(rangeDateSelector.f2950a);
            textInputLayout2.setError(" ");
            onSelectionChangedListener.onIncompleteSelectionChanged();
        }
    }

    public class c implements Parcelable.Creator<RangeDateSelector> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NonNull
        public RangeDateSelector createFromParcel(@NonNull Parcel parcel) {
            RangeDateSelector rangeDateSelector = new RangeDateSelector();
            rangeDateSelector.f2951b = (Long) parcel.readValue(Long.class.getClassLoader());
            rangeDateSelector.c = (Long) parcel.readValue(Long.class.getClassLoader());
            return rangeDateSelector;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NonNull
        public RangeDateSelector[] newArray(int i) {
            return new RangeDateSelector[i];
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeValue(this.f2951b);
        parcel.writeValue(this.c);
    }
}
