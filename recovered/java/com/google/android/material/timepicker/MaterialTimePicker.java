package com.google.android.material.timepicker;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.DialogFragment;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.timepicker.q;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* loaded from: classes.dex */
public final class MaterialTimePicker extends DialogFragment implements q.b {
    public static final int INPUT_MODE_CLOCK = 0;
    public static final int INPUT_MODE_KEYBOARD = 1;
    public int A0;
    public int B0;
    public CharSequence D0;
    public CharSequence F0;
    public CharSequence H0;
    public MaterialButton I0;
    public Button J0;
    public i L0;
    public q v0;
    public ViewStub w0;
    public l x0;
    public o y0;
    public Object z0;
    public final LinkedHashSet r0 = new LinkedHashSet();
    public final LinkedHashSet s0 = new LinkedHashSet();
    public final LinkedHashSet t0 = new LinkedHashSet();
    public final LinkedHashSet u0 = new LinkedHashSet();
    public int C0 = 0;
    public int E0 = 0;
    public int G0 = 0;
    public int K0 = 0;
    public int M0 = 0;

    public class a implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MaterialTimePicker materialTimePicker = MaterialTimePicker.this;
            Iterator it = materialTimePicker.r0.iterator();
            while (it.hasNext()) {
                ((View.OnClickListener) it.next()).onClick(view);
            }
            materialTimePicker.dismiss();
        }

        public a() {
        }
    }

    public class b implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MaterialTimePicker materialTimePicker = MaterialTimePicker.this;
            Iterator it = materialTimePicker.s0.iterator();
            while (it.hasNext()) {
                ((View.OnClickListener) it.next()).onClick(view);
            }
            materialTimePicker.dismiss();
        }

        public b() {
        }
    }

    public class c implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MaterialTimePicker materialTimePicker = MaterialTimePicker.this;
            materialTimePicker.K0 = materialTimePicker.K0 == 0 ? 1 : 0;
            materialTimePicker.r(materialTimePicker.I0);
        }

        public c() {
        }
    }

    public static final class Builder {

        /* renamed from: b, reason: collision with root package name */
        public int f3361b;
        public CharSequence d;
        public CharSequence f;
        public CharSequence h;

        /* renamed from: a, reason: collision with root package name */
        public i f3360a = new i();
        public int c = 0;
        public int e = 0;

        /* renamed from: g, reason: collision with root package name */
        public int f3362g = 0;
        public int i = 0;

        @NonNull
        public MaterialTimePicker build() {
            MaterialTimePicker materialTimePicker = new MaterialTimePicker();
            Bundle bundle = new Bundle();
            bundle.putParcelable("TIME_PICKER_TIME_MODEL", this.f3360a);
            bundle.putInt("TIME_PICKER_INPUT_MODE", this.f3361b);
            bundle.putInt("TIME_PICKER_TITLE_RES", this.c);
            CharSequence charSequence = this.d;
            if (charSequence != null) {
                bundle.putCharSequence("TIME_PICKER_TITLE_TEXT", charSequence);
            }
            bundle.putInt("TIME_PICKER_POSITIVE_BUTTON_TEXT_RES", this.e);
            CharSequence charSequence2 = this.f;
            if (charSequence2 != null) {
                bundle.putCharSequence("TIME_PICKER_POSITIVE_BUTTON_TEXT", charSequence2);
            }
            bundle.putInt("TIME_PICKER_NEGATIVE_BUTTON_TEXT_RES", this.f3362g);
            CharSequence charSequence3 = this.h;
            if (charSequence3 != null) {
                bundle.putCharSequence("TIME_PICKER_NEGATIVE_BUTTON_TEXT", charSequence3);
            }
            bundle.putInt("TIME_PICKER_OVERRIDE_THEME_RES_ID", this.i);
            materialTimePicker.setArguments(bundle);
            return materialTimePicker;
        }

        @NonNull
        public Builder setInputMode(int i) {
            this.f3361b = i;
            return this;
        }

        @NonNull
        public Builder setHour(@IntRange(from = 0, to = 23) int i) {
            this.f3360a.setHourOfDay(i);
            return this;
        }

        @NonNull
        public Builder setMinute(@IntRange(from = 0, to = 59) int i) {
            this.f3360a.setMinute(i);
            return this;
        }

        @NonNull
        public Builder setTimeFormat(int i) {
            i iVar = this.f3360a;
            int i2 = iVar.d;
            int i3 = iVar.e;
            i iVar2 = new i(i);
            this.f3360a = iVar2;
            iVar2.setMinute(i3);
            this.f3360a.setHourOfDay(i2);
            return this;
        }

        @NonNull
        public Builder setTitleText(@StringRes int i) {
            this.c = i;
            return this;
        }

        @NonNull
        public Builder setTitleText(@Nullable CharSequence charSequence) {
            this.d = charSequence;
            return this;
        }

        @NonNull
        public Builder setPositiveButtonText(@StringRes int i) {
            this.e = i;
            return this;
        }

        @NonNull
        public Builder setPositiveButtonText(@Nullable CharSequence charSequence) {
            this.f = charSequence;
            return this;
        }

        @NonNull
        public Builder setNegativeButtonText(@StringRes int i) {
            this.f3362g = i;
            return this;
        }

        @NonNull
        public Builder setNegativeButtonText(@Nullable CharSequence charSequence) {
            this.h = charSequence;
            return this;
        }

        @NonNull
        public Builder setTheme(@StyleRes int i) {
            this.i = i;
            return this;
        }
    }

    @IntRange(from = 0, to = 59)
    public int getMinute() {
        return this.L0.e;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [com.google.android.material.timepicker.m, java.lang.Object] */
    public void setMinute(@IntRange(from = 0, to = 59) int i) {
        this.L0.setMinute(i);
        ?? r2 = this.z0;
        if (r2 != 0) {
            r2.invalidate();
        }
    }

    @IntRange(from = 0, to = 23)
    public int getHour() {
        return this.L0.d % 24;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [com.google.android.material.timepicker.m, java.lang.Object] */
    public void setHour(@IntRange(from = 0, to = 23) int i) {
        this.L0.setHour(i);
        ?? r2 = this.z0;
        if (r2 != 0) {
            r2.invalidate();
        }
    }

    public int getInputMode() {
        return this.K0;
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public final Dialog onCreateDialog(@Nullable Bundle bundle) {
        Context contextRequireContext = requireContext();
        int i = this.M0;
        if (i == 0) {
            TypedValue typedValueResolve = MaterialAttributes.resolve(requireContext(), R.attr.materialTimePickerTheme);
            i = typedValueResolve == null ? 0 : typedValueResolve.data;
        }
        Dialog dialog = new Dialog(contextRequireContext, i);
        Context context = dialog.getContext();
        int iResolveOrThrow = MaterialAttributes.resolveOrThrow(context, R.attr.colorSurface, MaterialTimePicker.class.getCanonicalName());
        int i2 = R.attr.materialTimePickerStyle;
        int i3 = R.style.Widget_MaterialComponents_TimePicker;
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(context, null, i2, i3);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, R.styleable.MaterialTimePicker, i2, i3);
        this.B0 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialTimePicker_clockIcon, 0);
        this.A0 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialTimePicker_keyboardIcon, 0);
        typedArrayObtainStyledAttributes.recycle();
        materialShapeDrawable.initializeElevationOverlay(context);
        materialShapeDrawable.setFillColor(ColorStateList.valueOf(iResolveOrThrow));
        Window window = dialog.getWindow();
        window.setBackgroundDrawable(materialShapeDrawable);
        window.requestFeature(1);
        window.setLayout(-2, -2);
        materialShapeDrawable.setElevation(ViewCompat.getElevation(window.getDecorView()));
        return dialog;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        if (bundle == null) {
            return;
        }
        i iVar = (i) bundle.getParcelable("TIME_PICKER_TIME_MODEL");
        this.L0 = iVar;
        if (iVar == null) {
            this.L0 = new i();
        }
        this.K0 = bundle.getInt("TIME_PICKER_INPUT_MODE", 0);
        this.C0 = bundle.getInt("TIME_PICKER_TITLE_RES", 0);
        this.D0 = bundle.getCharSequence("TIME_PICKER_TITLE_TEXT");
        this.E0 = bundle.getInt("TIME_PICKER_POSITIVE_BUTTON_TEXT_RES", 0);
        this.F0 = bundle.getCharSequence("TIME_PICKER_POSITIVE_BUTTON_TEXT");
        this.G0 = bundle.getInt("TIME_PICKER_NEGATIVE_BUTTON_TEXT_RES", 0);
        this.H0 = bundle.getCharSequence("TIME_PICKER_NEGATIVE_BUTTON_TEXT");
        this.M0 = bundle.getInt("TIME_PICKER_OVERRIDE_THEME_RES_ID", 0);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("TIME_PICKER_TIME_MODEL", this.L0);
        bundle.putInt("TIME_PICKER_INPUT_MODE", this.K0);
        bundle.putInt("TIME_PICKER_TITLE_RES", this.C0);
        bundle.putCharSequence("TIME_PICKER_TITLE_TEXT", this.D0);
        bundle.putInt("TIME_PICKER_POSITIVE_BUTTON_TEXT_RES", this.E0);
        bundle.putCharSequence("TIME_PICKER_POSITIVE_BUTTON_TEXT", this.F0);
        bundle.putInt("TIME_PICKER_NEGATIVE_BUTTON_TEXT_RES", this.G0);
        bundle.putCharSequence("TIME_PICKER_NEGATIVE_BUTTON_TEXT", this.H0);
        bundle.putInt("TIME_PICKER_OVERRIDE_THEME_RES_ID", this.M0);
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public final View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        ViewGroup viewGroup2 = (ViewGroup) layoutInflater.inflate(R.layout.material_timepicker_dialog, viewGroup);
        q qVar = (q) viewGroup2.findViewById(R.id.material_timepicker_view);
        this.v0 = qVar;
        qVar.getClass();
        this.w0 = (ViewStub) viewGroup2.findViewById(R.id.material_textinput_timepicker);
        this.I0 = (MaterialButton) viewGroup2.findViewById(R.id.material_timepicker_mode_button);
        TextView textView = (TextView) viewGroup2.findViewById(R.id.header_title);
        int i = this.C0;
        if (i != 0) {
            textView.setText(i);
        } else if (!TextUtils.isEmpty(this.D0)) {
            textView.setText(this.D0);
        }
        r(this.I0);
        Button button = (Button) viewGroup2.findViewById(R.id.material_timepicker_ok_button);
        button.setOnClickListener(new a());
        int i2 = this.E0;
        if (i2 != 0) {
            button.setText(i2);
        } else if (!TextUtils.isEmpty(this.F0)) {
            button.setText(this.F0);
        }
        Button button2 = (Button) viewGroup2.findViewById(R.id.material_timepicker_cancel_button);
        this.J0 = button2;
        button2.setOnClickListener(new b());
        int i3 = this.G0;
        if (i3 != 0) {
            this.J0.setText(i3);
        } else if (!TextUtils.isEmpty(this.H0)) {
            this.J0.setText(this.H0);
        }
        Button button3 = this.J0;
        if (button3 != null) {
            button3.setVisibility(isCancelable() ? 0 : 8);
        }
        this.I0.setOnClickListener(new c());
        return viewGroup2;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.z0 = null;
        this.x0 = null;
        this.y0 = null;
        if (this.v0 != null) {
            this.v0 = null;
        }
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
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment
    public void setCancelable(boolean z) {
        super.setCancelable(z);
        Button button = this.J0;
        if (button != null) {
            button.setVisibility(isCancelable() ? 0 : 8);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void onDoubleTap() {
        this.K0 = 1;
        r(this.I0);
        this.y0.resetChecked();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [com.google.android.material.timepicker.m, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.android.material.timepicker.m, java.lang.Object] */
    public final void r(MaterialButton materialButton) {
        o oVar;
        Pair pair;
        if (materialButton == null || this.v0 == null || this.w0 == null) {
            return;
        }
        ?? r0 = this.z0;
        if (r0 != 0) {
            r0.hide();
        }
        int i = this.K0;
        q qVar = this.v0;
        ViewStub viewStub = this.w0;
        if (i == 0) {
            l lVar = this.x0;
            l lVar2 = lVar;
            if (lVar == null) {
                lVar2 = new l(qVar, this.L0);
            }
            this.x0 = lVar2;
            oVar = lVar2;
        } else {
            if (this.y0 == null) {
                this.y0 = new o((LinearLayout) viewStub.inflate(), this.L0);
            }
            this.y0.clearCheck();
            oVar = this.y0;
        }
        this.z0 = oVar;
        oVar.show();
        this.z0.invalidate();
        int i2 = this.K0;
        if (i2 == 0) {
            pair = new Pair(Integer.valueOf(this.A0), Integer.valueOf(R.string.material_timepicker_text_input_mode_description));
        } else {
            if (i2 != 1) {
                throw new IllegalArgumentException(_COROUTINE.a.d(i2, "no icon for mode: "));
            }
            pair = new Pair(Integer.valueOf(this.B0), Integer.valueOf(R.string.material_timepicker_clock_mode_description));
        }
        materialButton.setIconResource(((Integer) pair.first).intValue());
        materialButton.setContentDescription(getResources().getString(((Integer) pair.second).intValue()));
        materialButton.sendAccessibilityEvent(4);
    }

    public boolean addOnPositiveButtonClickListener(@NonNull View.OnClickListener onClickListener) {
        return this.r0.add(onClickListener);
    }

    public boolean removeOnPositiveButtonClickListener(@NonNull View.OnClickListener onClickListener) {
        return this.r0.remove(onClickListener);
    }

    public void clearOnPositiveButtonClickListeners() {
        this.r0.clear();
    }

    public boolean addOnNegativeButtonClickListener(@NonNull View.OnClickListener onClickListener) {
        return this.s0.add(onClickListener);
    }

    public boolean removeOnNegativeButtonClickListener(@NonNull View.OnClickListener onClickListener) {
        return this.s0.remove(onClickListener);
    }

    public void clearOnNegativeButtonClickListeners() {
        this.s0.clear();
    }

    public boolean addOnCancelListener(@NonNull DialogInterface.OnCancelListener onCancelListener) {
        return this.t0.add(onCancelListener);
    }

    public boolean removeOnCancelListener(@NonNull DialogInterface.OnCancelListener onCancelListener) {
        return this.t0.remove(onCancelListener);
    }

    public void clearOnCancelListeners() {
        this.t0.clear();
    }

    public boolean addOnDismissListener(@NonNull DialogInterface.OnDismissListener onDismissListener) {
        return this.u0.add(onDismissListener);
    }

    public boolean removeOnDismissListener(@NonNull DialogInterface.OnDismissListener onDismissListener) {
        return this.u0.remove(onDismissListener);
    }

    public void clearOnDismissListeners() {
        this.u0.clear();
    }
}
