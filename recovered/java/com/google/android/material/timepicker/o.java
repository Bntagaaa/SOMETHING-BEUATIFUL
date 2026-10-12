package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.Resources;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.internal.TextWatcherAdapter;
import com.google.android.material.timepicker.q;
import java.util.Locale;

/* loaded from: classes.dex */
class o implements q.d, m {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayout f3376a;

    /* renamed from: b, reason: collision with root package name */
    public final i f3377b;
    public final TextWatcher c = new a();
    public final TextWatcher d = new b();
    public final com.google.android.material.timepicker.a e;
    public final com.google.android.material.timepicker.a f;

    /* renamed from: g, reason: collision with root package name */
    public final n f3378g;
    public final EditText h;
    public final EditText i;
    public final MaterialButtonToggleGroup j;

    public class a extends TextWatcherAdapter {
        public a() {
        }

        @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
        public void afterTextChanged(Editable editable) throws NumberFormatException {
            try {
                boolean zIsEmpty = TextUtils.isEmpty(editable);
                o oVar = o.this;
                if (zIsEmpty) {
                    oVar.f3377b.setMinute(0);
                } else {
                    oVar.f3377b.setMinute(Integer.parseInt(editable.toString()));
                }
            } catch (NumberFormatException unused) {
            }
        }
    }

    public class b extends TextWatcherAdapter {
        public b() {
        }

        @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
        public void afterTextChanged(Editable editable) throws NumberFormatException {
            try {
                boolean zIsEmpty = TextUtils.isEmpty(editable);
                o oVar = o.this;
                if (zIsEmpty) {
                    oVar.f3377b.setHour(0);
                } else {
                    oVar.f3377b.setHour(Integer.parseInt(editable.toString()));
                }
            } catch (NumberFormatException unused) {
            }
        }
    }

    public o(LinearLayout linearLayout, i iVar) {
        this.f3376a = linearLayout;
        this.f3377b = iVar;
        Resources resources = linearLayout.getResources();
        com.google.android.material.timepicker.a aVar = (com.google.android.material.timepicker.a) linearLayout.findViewById(R.id.material_minute_text_input);
        this.e = aVar;
        com.google.android.material.timepicker.a aVar2 = (com.google.android.material.timepicker.a) linearLayout.findViewById(R.id.material_hour_text_input);
        this.f = aVar2;
        int i = R.id.material_label;
        TextView textView = (TextView) aVar.findViewById(i);
        TextView textView2 = (TextView) aVar2.findViewById(i);
        textView.setText(resources.getString(R.string.material_timepicker_minute));
        textView2.setText(resources.getString(R.string.material_timepicker_hour));
        int i2 = R.id.selection_type;
        aVar.setTag(i2, 12);
        aVar2.setTag(i2, 10);
        if (iVar.c == 0) {
            MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) linearLayout.findViewById(R.id.material_clock_period_toggle);
            this.j = materialButtonToggleGroup;
            materialButtonToggleGroup.addOnButtonCheckedListener(new p(this));
            this.j.setVisibility(0);
            b();
        }
        c cVar = new c();
        aVar2.setOnClickListener(cVar);
        aVar.setOnClickListener(cVar);
        aVar2.addInputFilter(iVar.getHourInputValidator());
        aVar.addInputFilter(iVar.getMinuteInputValidator());
        this.h = aVar2.getTextInput().getEditText();
        this.i = aVar.getTextInput().getEditText();
        this.f3378g = new n(aVar2, aVar, iVar);
        aVar2.setChipDelegate(new d(linearLayout.getContext(), R.string.material_hour_selection, iVar));
        aVar.setChipDelegate(new e(linearLayout.getContext(), R.string.material_minute_selection, iVar));
        initialize();
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o.this.onSelectionChanged(((Integer) view.getTag(R.id.selection_type)).intValue());
        }
    }

    public class d extends com.google.android.material.timepicker.b {
        public final /* synthetic */ i e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Context context, int i, i iVar) {
            super(context, i);
            this.e = iVar;
        }

        @Override // com.google.android.material.timepicker.b, androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setContentDescription(view.getResources().getString(R.string.material_hour_suffix, String.valueOf(this.e.getHourForDisplay())));
        }
    }

    public class e extends com.google.android.material.timepicker.b {
        public final /* synthetic */ i e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(Context context, int i, i iVar) {
            super(context, i);
            this.e = iVar;
        }

        @Override // com.google.android.material.timepicker.b, androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setContentDescription(view.getResources().getString(R.string.material_minute_suffix, String.valueOf(this.e.e)));
        }
    }

    public void initialize() {
        this.h.addTextChangedListener(this.d);
        this.i.addTextChangedListener(this.c);
        a(this.f3377b);
        this.f3378g.bind();
    }

    public final void a(i iVar) {
        TextWatcher textWatcher = this.d;
        EditText editText = this.h;
        editText.removeTextChangedListener(textWatcher);
        TextWatcher textWatcher2 = this.c;
        EditText editText2 = this.i;
        editText2.removeTextChangedListener(textWatcher2);
        Locale locale = this.f3376a.getResources().getConfiguration().locale;
        String str = String.format(locale, "%02d", Integer.valueOf(iVar.e));
        String str2 = String.format(locale, "%02d", Integer.valueOf(iVar.getHourForDisplay()));
        this.e.setText(str);
        this.f.setText(str2);
        editText.addTextChangedListener(textWatcher);
        editText2.addTextChangedListener(textWatcher2);
        b();
    }

    public final void b() {
        int i;
        MaterialButtonToggleGroup materialButtonToggleGroup = this.j;
        if (materialButtonToggleGroup == null) {
            return;
        }
        if (this.f3377b.f3370g == 0) {
            i = R.id.material_clock_period_am_button;
        } else {
            i = R.id.material_clock_period_pm_button;
        }
        materialButtonToggleGroup.check(i);
    }

    public void onSelectionChanged(int i) {
        this.f3377b.f = i;
        this.e.setChecked(i == 12);
        this.f.setChecked(i == 10);
        b();
    }

    @Override // com.google.android.material.timepicker.m
    public void show() {
        this.f3376a.setVisibility(0);
    }

    @Override // com.google.android.material.timepicker.m
    public void hide() {
        LinearLayout linearLayout = this.f3376a;
        View focusedChild = linearLayout.getFocusedChild();
        if (focusedChild == null) {
            linearLayout.setVisibility(8);
            return;
        }
        InputMethodManager inputMethodManager = (InputMethodManager) ContextCompat.getSystemService(linearLayout.getContext(), InputMethodManager.class);
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(focusedChild.getWindowToken(), 0);
        }
        linearLayout.setVisibility(8);
    }

    @Override // com.google.android.material.timepicker.m
    public void invalidate() {
        a(this.f3377b);
    }

    public void resetChecked() {
        i iVar = this.f3377b;
        this.e.setChecked(iVar.f == 12);
        this.f.setChecked(iVar.f == 10);
    }

    public void clearCheck() {
        this.e.setChecked(false);
        this.f.setChecked(false);
    }
}
