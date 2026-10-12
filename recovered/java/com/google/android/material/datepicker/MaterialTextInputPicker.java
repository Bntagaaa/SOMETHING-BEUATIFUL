package com.google.android.material.datepicker;

import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.Iterator;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class MaterialTextInputPicker<S> extends v<S> {
    public int b0;
    public DateSelector c0;
    public CalendarConstraints d0;

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.b0);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.c0);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.d0);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.b0 = bundle.getInt("THEME_RES_ID_KEY");
        this.c0 = (DateSelector) bundle.getParcelable("DATE_SELECTOR_KEY");
        this.d0 = (CalendarConstraints) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return this.c0.onCreateTextInputView(layoutInflater.cloneInContext(new ContextThemeWrapper(getContext(), this.b0)), viewGroup, bundle, this.d0, new a());
    }

    public class a extends OnSelectionChangedListener<S> {
        public a() {
        }

        @Override // com.google.android.material.datepicker.OnSelectionChangedListener
        public void onSelectionChanged(S s) {
            Iterator<OnSelectionChangedListener<S>> it = MaterialTextInputPicker.this.onSelectionChangedListeners.iterator();
            while (it.hasNext()) {
                it.next().onSelectionChanged(s);
            }
        }

        @Override // com.google.android.material.datepicker.OnSelectionChangedListener
        public void onIncompleteSelectionChanged() {
            Iterator<OnSelectionChangedListener<S>> it = MaterialTextInputPicker.this.onSelectionChangedListeners.iterator();
            while (it.hasNext()) {
                it.next().onIncompleteSelectionChanged();
            }
        }
    }

    @NonNull
    public DateSelector<S> getDateSelector() {
        DateSelector<S> dateSelector = this.c0;
        if (dateSelector != null) {
            return dateSelector;
        }
        throw new IllegalStateException("dateSelector should not be null. Use MaterialTextInputPicker#newInstance() to create this fragment with a DateSelector, and call this method after the fragment has been created.");
    }
}
