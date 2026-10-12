package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Pair;
import com.google.android.material.R;
import com.google.android.material.internal.ManufacturerUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.textfield.TextInputLayout;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Locale;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class SingleDateSelector implements DateSelector<Long> {
    public static final Parcelable.Creator<SingleDateSelector> CREATOR = new b();

    /* renamed from: a, reason: collision with root package name */
    public Long f2954a;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public void select(long j) {
        this.f2954a = Long.valueOf(j);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public void setSelection(@Nullable Long l) {
        this.f2954a = l == null ? null : Long.valueOf(y.a(l.longValue()));
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public boolean isSelectionComplete() {
        return this.f2954a != null;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public Collection<Pair<Long, Long>> getSelectedRanges() {
        return new ArrayList();
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public Collection<Long> getSelectedDays() {
        ArrayList arrayList = new ArrayList();
        Long l = this.f2954a;
        if (l != null) {
            arrayList.add(l);
        }
        return arrayList;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.material.datepicker.DateSelector
    @Nullable
    public Long getSelection() {
        return this.f2954a;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public View onCreateTextInputView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle, CalendarConstraints calendarConstraints, @NonNull OnSelectionChangedListener<Long> onSelectionChangedListener) throws Resources.NotFoundException {
        View viewInflate = layoutInflater.inflate(R.layout.mtrl_picker_text_input_date, viewGroup, false);
        TextInputLayout textInputLayout = (TextInputLayout) viewInflate.findViewById(R.id.mtrl_picker_text_input_date);
        EditText editText = textInputLayout.getEditText();
        if (ManufacturerUtils.isDateInputKeyboardMissingSeparatorCharacters()) {
            editText.setInputType(17);
        }
        SimpleDateFormat simpleDateFormatE = y.e();
        String strF = y.f(viewInflate.getResources(), simpleDateFormatE);
        textInputLayout.setPlaceholderText(strF);
        Long l = this.f2954a;
        if (l != null) {
            editText.setText(simpleDateFormatE.format(l));
        }
        editText.addTextChangedListener(new a(strF, simpleDateFormatE, textInputLayout, calendarConstraints, onSelectionChangedListener));
        ViewUtils.requestFocusAndShowKeyboard(editText);
        return viewInflate;
    }

    public class a extends e {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ OnSelectionChangedListener f2955g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, SimpleDateFormat simpleDateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints, OnSelectionChangedListener onSelectionChangedListener) {
            super(str, simpleDateFormat, textInputLayout, calendarConstraints);
            this.f2955g = onSelectionChangedListener;
        }

        @Override // com.google.android.material.datepicker.e
        public final void b(Long l) {
            SingleDateSelector singleDateSelector = SingleDateSelector.this;
            if (l == null) {
                singleDateSelector.f2954a = null;
            } else {
                singleDateSelector.select(l.longValue());
            }
            this.f2955g.onSelectionChanged(singleDateSelector.getSelection());
        }

        @Override // com.google.android.material.datepicker.e
        public final void a() {
            this.f2955g.onIncompleteSelectionChanged();
        }
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public int getDefaultThemeResId(Context context) {
        return MaterialAttributes.resolveOrThrow(context, R.attr.materialCalendarTheme, MaterialDatePicker.class.getCanonicalName());
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public String getSelectionDisplayString(@NonNull Context context) {
        Resources resources = context.getResources();
        Long l = this.f2954a;
        if (l != null) {
            return resources.getString(R.string.mtrl_picker_date_header_selected, f.c(l.longValue(), Locale.getDefault()));
        }
        return resources.getString(R.string.mtrl_picker_date_header_unselected);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public int getDefaultTitleResId() {
        return R.string.mtrl_picker_date_header_title;
    }

    public class b implements Parcelable.Creator<SingleDateSelector> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NonNull
        public SingleDateSelector createFromParcel(@NonNull Parcel parcel) {
            SingleDateSelector singleDateSelector = new SingleDateSelector();
            singleDateSelector.f2954a = (Long) parcel.readValue(Long.class.getClassLoader());
            return singleDateSelector;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NonNull
        public SingleDateSelector[] newArray(int i) {
            return new SingleDateSelector[i];
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeValue(this.f2954a);
    }
}
