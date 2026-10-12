package com.google.android.material.datepicker;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.util.Pair;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentTransaction;
import com.google.android.material.R;
import com.google.android.material.datepicker.CalendarConstraints;
import com.google.android.material.dialog.InsetDialogOnTouchListener;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.EdgeToEdgeUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* loaded from: classes.dex */
public final class MaterialDatePicker<S> extends DialogFragment {
    public static final int INPUT_MODE_CALENDAR = 0;
    public static final int INPUT_MODE_TEXT = 1;
    public int A0;
    public CharSequence B0;
    public boolean C0;
    public int D0;
    public int E0;
    public CharSequence F0;
    public int G0;
    public CharSequence H0;
    public TextView I0;
    public CheckableImageButton J0;
    public MaterialShapeDrawable K0;
    public Button L0;
    public boolean M0;
    public final LinkedHashSet r0 = new LinkedHashSet();
    public final LinkedHashSet s0 = new LinkedHashSet();
    public final LinkedHashSet t0 = new LinkedHashSet();
    public final LinkedHashSet u0 = new LinkedHashSet();
    public int v0;
    public DateSelector w0;
    public v x0;
    public CalendarConstraints y0;
    public MaterialCalendar z0;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface InputMode {
    }

    public class a implements View.OnClickListener {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MaterialDatePicker materialDatePicker = MaterialDatePicker.this;
            Iterator it = materialDatePicker.r0.iterator();
            while (it.hasNext()) {
                ((MaterialPickerOnPositiveButtonClickListener) it.next()).onPositiveButtonClick(materialDatePicker.getSelection());
            }
            materialDatePicker.dismiss();
        }

        public a() {
        }
    }

    public class b implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MaterialDatePicker materialDatePicker = MaterialDatePicker.this;
            Iterator it = materialDatePicker.s0.iterator();
            while (it.hasNext()) {
                ((View.OnClickListener) it.next()).onClick(view);
            }
            materialDatePicker.dismiss();
        }

        public b() {
        }
    }

    public static long todayInUtcMilliseconds() {
        return y.g().getTimeInMillis();
    }

    public static long thisMonthInUtcMilliseconds() {
        return new t(y.g()).f;
    }

    public String getHeaderText() {
        return r().getSelectionDisplayString(getContext());
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("OVERRIDE_THEME_RES_ID", this.v0);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.w0);
        CalendarConstraints calendarConstraints = this.y0;
        CalendarConstraints.Builder builder = new CalendarConstraints.Builder();
        builder.f2927a = CalendarConstraints.Builder.e;
        builder.f2928b = CalendarConstraints.Builder.f;
        builder.d = DateValidatorPointForward.from(Long.MIN_VALUE);
        builder.f2927a = calendarConstraints.f2925a.f;
        builder.f2928b = calendarConstraints.f2926b.f;
        builder.c = Long.valueOf(calendarConstraints.d.f);
        builder.d = calendarConstraints.c;
        t tVar = this.z0.e0;
        if (tVar != null) {
            builder.setOpenAt(tVar.f);
        }
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", builder.build());
        bundle.putInt("TITLE_TEXT_RES_ID_KEY", this.A0);
        bundle.putCharSequence("TITLE_TEXT_KEY", this.B0);
        bundle.putInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY", this.E0);
        bundle.putCharSequence("POSITIVE_BUTTON_TEXT_KEY", this.F0);
        bundle.putInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY", this.G0);
        bundle.putCharSequence("NEGATIVE_BUTTON_TEXT_KEY", this.H0);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.v0 = bundle.getInt("OVERRIDE_THEME_RES_ID");
        this.w0 = (DateSelector) bundle.getParcelable("DATE_SELECTOR_KEY");
        this.y0 = (CalendarConstraints) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.A0 = bundle.getInt("TITLE_TEXT_RES_ID_KEY");
        this.B0 = bundle.getCharSequence("TITLE_TEXT_KEY");
        this.D0 = bundle.getInt("INPUT_MODE_KEY");
        this.E0 = bundle.getInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY");
        this.F0 = bundle.getCharSequence("POSITIVE_BUTTON_TEXT_KEY");
        this.G0 = bundle.getInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY");
        this.H0 = bundle.getCharSequence("NEGATIVE_BUTTON_TEXT_KEY");
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public final Dialog onCreateDialog(@Nullable Bundle bundle) {
        Context contextRequireContext = requireContext();
        Context contextRequireContext2 = requireContext();
        int defaultThemeResId = this.v0;
        if (defaultThemeResId == 0) {
            defaultThemeResId = r().getDefaultThemeResId(contextRequireContext2);
        }
        Dialog dialog = new Dialog(contextRequireContext, defaultThemeResId);
        Context context = dialog.getContext();
        this.C0 = t(context);
        int iResolveOrThrow = MaterialAttributes.resolveOrThrow(context, R.attr.colorSurface, MaterialDatePicker.class.getCanonicalName());
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(context, null, R.attr.materialCalendarStyle, R.style.Widget_MaterialComponents_MaterialCalendar);
        this.K0 = materialShapeDrawable;
        materialShapeDrawable.initializeElevationOverlay(context);
        this.K0.setFillColor(ColorStateList.valueOf(iResolveOrThrow));
        this.K0.setElevation(ViewCompat.getElevation(dialog.getWindow().getDecorView()));
        return dialog;
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public final View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View viewInflate = layoutInflater.inflate(this.C0 ? R.layout.mtrl_picker_fullscreen : R.layout.mtrl_picker_dialog, viewGroup);
        Context context = viewInflate.getContext();
        if (this.C0) {
            viewInflate.findViewById(R.id.mtrl_calendar_frame).setLayoutParams(new LinearLayout.LayoutParams(s(context), -2));
        } else {
            viewInflate.findViewById(R.id.mtrl_calendar_main_pane).setLayoutParams(new LinearLayout.LayoutParams(s(context), -1));
        }
        TextView textView = (TextView) viewInflate.findViewById(R.id.mtrl_picker_header_selection_text);
        this.I0 = textView;
        ViewCompat.setAccessibilityLiveRegion(textView, 1);
        this.J0 = (CheckableImageButton) viewInflate.findViewById(R.id.mtrl_picker_header_toggle);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.mtrl_picker_title_text);
        CharSequence charSequence = this.B0;
        if (charSequence != null) {
            textView2.setText(charSequence);
        } else {
            textView2.setText(this.A0);
        }
        this.J0.setTag("TOGGLE_BUTTON_TAG");
        CheckableImageButton checkableImageButton = this.J0;
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{android.R.attr.state_checked}, AppCompatResources.getDrawable(context, R.drawable.material_ic_calendar_black_24dp));
        stateListDrawable.addState(new int[0], AppCompatResources.getDrawable(context, R.drawable.material_ic_edit_black_24dp));
        checkableImageButton.setImageDrawable(stateListDrawable);
        this.J0.setChecked(this.D0 != 0);
        ViewCompat.setAccessibilityDelegate(this.J0, null);
        v(this.J0);
        this.J0.setOnClickListener(new s(this));
        this.L0 = (Button) viewInflate.findViewById(R.id.confirm_button);
        if (r().isSelectionComplete()) {
            this.L0.setEnabled(true);
        } else {
            this.L0.setEnabled(false);
        }
        this.L0.setTag("CONFIRM_BUTTON_TAG");
        CharSequence charSequence2 = this.F0;
        if (charSequence2 != null) {
            this.L0.setText(charSequence2);
        } else {
            int i = this.E0;
            if (i != 0) {
                this.L0.setText(i);
            }
        }
        this.L0.setOnClickListener(new a());
        Button button = (Button) viewInflate.findViewById(R.id.cancel_button);
        button.setTag("CANCEL_BUTTON_TAG");
        CharSequence charSequence3 = this.H0;
        if (charSequence3 != null) {
            button.setText(charSequence3);
        } else {
            int i2 = this.G0;
            if (i2 != 0) {
                button.setText(i2);
            }
        }
        button.setOnClickListener(new b());
        return viewInflate;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() throws Resources.NotFoundException {
        super.onStart();
        Window window = requireDialog().getWindow();
        if (this.C0) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.K0);
            if (!this.M0) {
                View viewFindViewById = requireView().findViewById(R.id.fullscreen_header);
                EdgeToEdgeUtils.applyEdgeToEdge(window, true, ViewUtils.getBackgroundColor(viewFindViewById), null);
                ViewCompat.setOnApplyWindowInsetsListener(viewFindViewById, new q(viewFindViewById, viewFindViewById.getLayoutParams().height, viewFindViewById.getPaddingTop()));
                this.M0 = true;
            }
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.mtrl_calendar_dialog_background_inset);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.K0, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            window.getDecorView().setOnTouchListener(new InsetDialogOnTouchListener(requireDialog(), rect));
        }
        u();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStop() {
        this.x0.onSelectionChangedListeners.clear();
        super.onStop();
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(@NonNull DialogInterface dialogInterface) {
        Iterator it = this.t0.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnCancelListener) it.next()).onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(@NonNull DialogInterface dialogInterface) {
        Iterator it = this.u0.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnDismissListener) it.next()).onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) getView();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    @Nullable
    public final S getSelection() {
        return (S) r().getSelection();
    }

    public final void u() {
        v materialTextInputPicker;
        Context contextRequireContext = requireContext();
        int defaultThemeResId = this.v0;
        if (defaultThemeResId == 0) {
            defaultThemeResId = r().getDefaultThemeResId(contextRequireContext);
        }
        this.z0 = MaterialCalendar.newInstance(r(), defaultThemeResId, this.y0);
        if (this.J0.isChecked()) {
            DateSelector dateSelectorR = r();
            CalendarConstraints calendarConstraints = this.y0;
            materialTextInputPicker = new MaterialTextInputPicker();
            Bundle bundle = new Bundle();
            bundle.putInt("THEME_RES_ID_KEY", defaultThemeResId);
            bundle.putParcelable("DATE_SELECTOR_KEY", dateSelectorR);
            bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", calendarConstraints);
            materialTextInputPicker.setArguments(bundle);
        } else {
            materialTextInputPicker = this.z0;
        }
        this.x0 = materialTextInputPicker;
        String headerText = getHeaderText();
        this.I0.setContentDescription(String.format(getString(R.string.mtrl_picker_announce_current_selection), headerText));
        this.I0.setText(headerText);
        FragmentTransaction fragmentTransactionBeginTransaction = getChildFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.replace(R.id.mtrl_calendar_frame, this.x0);
        fragmentTransactionBeginTransaction.commitNow();
        this.x0.addOnSelectionChangedListener(new r(this));
    }

    public final void v(CheckableImageButton checkableImageButton) {
        String string;
        if (this.J0.isChecked()) {
            string = checkableImageButton.getContext().getString(R.string.mtrl_picker_toggle_to_calendar_input_mode);
        } else {
            string = checkableImageButton.getContext().getString(R.string.mtrl_picker_toggle_to_text_input_mode);
        }
        this.J0.setContentDescription(string);
    }

    public final DateSelector r() {
        if (this.w0 == null) {
            this.w0 = (DateSelector) getArguments().getParcelable("DATE_SELECTOR_KEY");
        }
        return this.w0;
    }

    public static boolean t(Context context) throws Resources.NotFoundException {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(MaterialAttributes.resolveOrThrow(context, R.attr.materialCalendarStyle, MaterialCalendar.class.getCanonicalName()), new int[]{android.R.attr.windowFullscreen});
        boolean z = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        return z;
    }

    public static int s(Context context) throws Resources.NotFoundException {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_content_padding);
        t tVar = new t(y.g());
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.mtrl_calendar_day_width);
        int dimensionPixelOffset2 = resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_month_horizontal_padding);
        int i = tVar.d;
        return ((i - 1) * dimensionPixelOffset2) + (dimensionPixelSize * i) + (dimensionPixelOffset * 2);
    }

    public boolean addOnPositiveButtonClickListener(MaterialPickerOnPositiveButtonClickListener<? super S> materialPickerOnPositiveButtonClickListener) {
        return this.r0.add(materialPickerOnPositiveButtonClickListener);
    }

    public boolean removeOnPositiveButtonClickListener(MaterialPickerOnPositiveButtonClickListener<? super S> materialPickerOnPositiveButtonClickListener) {
        return this.r0.remove(materialPickerOnPositiveButtonClickListener);
    }

    public void clearOnPositiveButtonClickListeners() {
        this.r0.clear();
    }

    public boolean addOnNegativeButtonClickListener(View.OnClickListener onClickListener) {
        return this.s0.add(onClickListener);
    }

    public boolean removeOnNegativeButtonClickListener(View.OnClickListener onClickListener) {
        return this.s0.remove(onClickListener);
    }

    public void clearOnNegativeButtonClickListeners() {
        this.s0.clear();
    }

    public boolean addOnCancelListener(DialogInterface.OnCancelListener onCancelListener) {
        return this.t0.add(onCancelListener);
    }

    public boolean removeOnCancelListener(DialogInterface.OnCancelListener onCancelListener) {
        return this.t0.remove(onCancelListener);
    }

    public void clearOnCancelListeners() {
        this.t0.clear();
    }

    public boolean addOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        return this.u0.add(onDismissListener);
    }

    public boolean removeOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        return this.u0.remove(onDismissListener);
    }

    public void clearOnDismissListeners() {
        this.u0.clear();
    }

    public static final class Builder<S> {

        /* renamed from: a, reason: collision with root package name */
        public final DateSelector f2936a;
        public CalendarConstraints c;

        /* renamed from: b, reason: collision with root package name */
        public int f2937b = 0;
        public int d = 0;
        public CharSequence e = null;
        public int f = 0;

        /* renamed from: g, reason: collision with root package name */
        public CharSequence f2938g = null;
        public int h = 0;
        public CharSequence i = null;
        public Object j = null;
        public int k = 0;

        public Builder(DateSelector dateSelector) {
            this.f2936a = dateSelector;
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public static <S> Builder<S> customDatePicker(@NonNull DateSelector<S> dateSelector) {
            return new Builder<>(dateSelector);
        }

        @NonNull
        public static Builder<Long> datePicker() {
            return new Builder<>(new SingleDateSelector());
        }

        @NonNull
        public static Builder<Pair<Long, Long>> dateRangePicker() {
            return new Builder<>(new RangeDateSelector());
        }

        @NonNull
        public Builder<S> setSelection(S s) {
            this.j = s;
            return this;
        }

        @NonNull
        public Builder<S> setTheme(@StyleRes int i) {
            this.f2937b = i;
            return this;
        }

        @NonNull
        public Builder<S> setCalendarConstraints(CalendarConstraints calendarConstraints) {
            this.c = calendarConstraints;
            return this;
        }

        @NonNull
        public Builder<S> setTitleText(@StringRes int i) {
            this.d = i;
            this.e = null;
            return this;
        }

        @NonNull
        public Builder<S> setTitleText(@Nullable CharSequence charSequence) {
            this.e = charSequence;
            this.d = 0;
            return this;
        }

        @NonNull
        public Builder<S> setPositiveButtonText(@StringRes int i) {
            this.f = i;
            this.f2938g = null;
            return this;
        }

        @NonNull
        public Builder<S> setPositiveButtonText(@Nullable CharSequence charSequence) {
            this.f2938g = charSequence;
            this.f = 0;
            return this;
        }

        @NonNull
        public Builder<S> setNegativeButtonText(@StringRes int i) {
            this.h = i;
            this.i = null;
            return this;
        }

        @NonNull
        public Builder<S> setNegativeButtonText(@Nullable CharSequence charSequence) {
            this.i = charSequence;
            this.h = 0;
            return this;
        }

        @NonNull
        public Builder<S> setInputMode(int i) {
            this.k = i;
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:20:0x005b  */
        @androidx.annotation.NonNull
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.android.material.datepicker.MaterialDatePicker<S> build() {
            /*
                r5 = this;
                com.google.android.material.datepicker.CalendarConstraints r0 = r5.c
                if (r0 != 0) goto Lf
                com.google.android.material.datepicker.CalendarConstraints$Builder r0 = new com.google.android.material.datepicker.CalendarConstraints$Builder
                r0.<init>()
                com.google.android.material.datepicker.CalendarConstraints r0 = r0.build()
                r5.c = r0
            Lf:
                int r0 = r5.d
                com.google.android.material.datepicker.DateSelector r1 = r5.f2936a
                if (r0 != 0) goto L1b
                int r0 = r1.getDefaultTitleResId()
                r5.d = r0
            L1b:
                java.lang.Object r0 = r5.j
                if (r0 == 0) goto L22
                r1.setSelection(r0)
            L22:
                com.google.android.material.datepicker.CalendarConstraints r0 = r5.c
                com.google.android.material.datepicker.t r2 = r0.d
                if (r2 != 0) goto L7d
                java.util.Collection r2 = r1.getSelectedDays()
                boolean r2 = r2.isEmpty()
                if (r2 != 0) goto L5b
                java.util.Collection r2 = r1.getSelectedDays()
                java.util.Iterator r2 = r2.iterator()
                java.lang.Object r2 = r2.next()
                java.lang.Long r2 = (java.lang.Long) r2
                long r2 = r2.longValue()
                com.google.android.material.datepicker.t r2 = com.google.android.material.datepicker.t.b(r2)
                com.google.android.material.datepicker.CalendarConstraints r3 = r5.c
                com.google.android.material.datepicker.t r4 = r3.f2925a
                int r4 = r2.compareTo(r4)
                if (r4 < 0) goto L5b
                com.google.android.material.datepicker.t r3 = r3.f2926b
                int r3 = r2.compareTo(r3)
                if (r3 > 0) goto L5b
                goto L7b
            L5b:
                com.google.android.material.datepicker.t r2 = new com.google.android.material.datepicker.t
                java.util.Calendar r3 = com.google.android.material.datepicker.y.g()
                r2.<init>(r3)
                com.google.android.material.datepicker.CalendarConstraints r3 = r5.c
                com.google.android.material.datepicker.t r4 = r3.f2925a
                int r4 = r2.compareTo(r4)
                if (r4 < 0) goto L77
                com.google.android.material.datepicker.t r3 = r3.f2926b
                int r3 = r2.compareTo(r3)
                if (r3 > 0) goto L77
                goto L7b
            L77:
                com.google.android.material.datepicker.CalendarConstraints r2 = r5.c
                com.google.android.material.datepicker.t r2 = r2.f2925a
            L7b:
                r0.d = r2
            L7d:
                com.google.android.material.datepicker.MaterialDatePicker r0 = new com.google.android.material.datepicker.MaterialDatePicker
                r0.<init>()
                android.os.Bundle r2 = new android.os.Bundle
                r2.<init>()
                int r3 = r5.f2937b
                java.lang.String r4 = "OVERRIDE_THEME_RES_ID"
                r2.putInt(r4, r3)
                java.lang.String r3 = "DATE_SELECTOR_KEY"
                r2.putParcelable(r3, r1)
                java.lang.String r1 = "CALENDAR_CONSTRAINTS_KEY"
                com.google.android.material.datepicker.CalendarConstraints r3 = r5.c
                r2.putParcelable(r1, r3)
                java.lang.String r1 = "TITLE_TEXT_RES_ID_KEY"
                int r3 = r5.d
                r2.putInt(r1, r3)
                java.lang.String r1 = "TITLE_TEXT_KEY"
                java.lang.CharSequence r3 = r5.e
                r2.putCharSequence(r1, r3)
                java.lang.String r1 = "INPUT_MODE_KEY"
                int r3 = r5.k
                r2.putInt(r1, r3)
                java.lang.String r1 = "POSITIVE_BUTTON_TEXT_RES_ID_KEY"
                int r3 = r5.f
                r2.putInt(r1, r3)
                java.lang.String r1 = "POSITIVE_BUTTON_TEXT_KEY"
                java.lang.CharSequence r3 = r5.f2938g
                r2.putCharSequence(r1, r3)
                java.lang.String r1 = "NEGATIVE_BUTTON_TEXT_RES_ID_KEY"
                int r3 = r5.h
                r2.putInt(r1, r3)
                java.lang.String r1 = "NEGATIVE_BUTTON_TEXT_KEY"
                java.lang.CharSequence r3 = r5.i
                r2.putCharSequence(r1, r3)
                r0.setArguments(r2)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.datepicker.MaterialDatePicker.Builder.build():com.google.android.material.datepicker.MaterialDatePicker");
        }
    }
}
