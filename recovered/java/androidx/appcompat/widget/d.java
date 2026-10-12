package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.widget.CheckedTextViewCompat;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
class d {

    /* renamed from: a, reason: collision with root package name */
    public final AppCompatCheckedTextView f469a;

    /* renamed from: b, reason: collision with root package name */
    public ColorStateList f470b = null;
    public PorterDuff.Mode c = null;
    public boolean d = false;
    public boolean e = false;
    public boolean f;

    public d(AppCompatCheckedTextView appCompatCheckedTextView) {
        this.f469a = appCompatCheckedTextView;
    }

    public final void a() {
        AppCompatCheckedTextView appCompatCheckedTextView = this.f469a;
        Drawable checkMarkDrawable = CheckedTextViewCompat.getCheckMarkDrawable(appCompatCheckedTextView);
        if (checkMarkDrawable != null) {
            if (this.d || this.e) {
                Drawable drawableMutate = DrawableCompat.wrap(checkMarkDrawable).mutate();
                if (this.d) {
                    DrawableCompat.setTintList(drawableMutate, this.f470b);
                }
                if (this.e) {
                    DrawableCompat.setTintMode(drawableMutate, this.c);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(appCompatCheckedTextView.getDrawableState());
                }
                appCompatCheckedTextView.setCheckMarkDrawable(drawableMutate);
            }
        }
    }
}
