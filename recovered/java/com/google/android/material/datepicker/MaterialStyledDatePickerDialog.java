package com.google.android.material.datepicker;

import android.app.DatePickerDialog;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.InsetDrawable;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.google.android.material.R;
import com.google.android.material.dialog.InsetDialogOnTouchListener;
import com.google.android.material.dialog.MaterialDialogs;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.shape.MaterialShapeDrawable;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP, RestrictTo.Scope.TESTS})
/* loaded from: classes.dex */
public class MaterialStyledDatePickerDialog extends DatePickerDialog {
    public static final int c = R.style.MaterialAlertDialog_MaterialComponents_Picker_Date_Spinner;

    /* renamed from: a, reason: collision with root package name */
    public final InsetDrawable f2941a;

    /* renamed from: b, reason: collision with root package name */
    public final Rect f2942b;

    public MaterialStyledDatePickerDialog(@NonNull Context context) {
        this(context, 0);
    }

    public MaterialStyledDatePickerDialog(@NonNull Context context, int i) {
        this(context, i, null, -1, -1, -1);
    }

    public MaterialStyledDatePickerDialog(@NonNull Context context, @Nullable DatePickerDialog.OnDateSetListener onDateSetListener, int i, int i2, int i3) {
        this(context, 0, onDateSetListener, i, i2, i3);
    }

    public MaterialStyledDatePickerDialog(@NonNull Context context, int i, @Nullable DatePickerDialog.OnDateSetListener onDateSetListener, int i2, int i3, int i4) {
        super(context, i, onDateSetListener, i2, i3, i4);
        Context context2 = getContext();
        int iResolveOrThrow = MaterialAttributes.resolveOrThrow(getContext(), R.attr.colorSurface, getClass().getCanonicalName());
        int i5 = c;
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(context2, null, android.R.attr.datePickerStyle, i5);
        materialShapeDrawable.setFillColor(ColorStateList.valueOf(iResolveOrThrow));
        Rect dialogBackgroundInsets = MaterialDialogs.getDialogBackgroundInsets(context2, android.R.attr.datePickerStyle, i5);
        this.f2942b = dialogBackgroundInsets;
        this.f2941a = MaterialDialogs.insetDrawable(materialShapeDrawable, dialogBackgroundInsets);
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setBackgroundDrawable(this.f2941a);
        getWindow().getDecorView().setOnTouchListener(new InsetDialogOnTouchListener(this, this.f2942b));
    }
}
