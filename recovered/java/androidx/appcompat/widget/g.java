package androidx.appcompat.widget;

import android.content.res.TypedArray;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.R;
import androidx.emoji2.viewsintegration.EmojiTextViewHelper;

/* loaded from: classes.dex */
class g {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f483a;

    /* renamed from: b, reason: collision with root package name */
    public final EmojiTextViewHelper f484b;

    public g(TextView textView) {
        this.f483a = textView;
        this.f484b = new EmojiTextViewHelper(textView, false);
    }

    public final void a(AttributeSet attributeSet, int i) {
        TypedArray typedArrayObtainStyledAttributes = this.f483a.getContext().obtainStyledAttributes(attributeSet, R.styleable.AppCompatTextView, i, 0);
        try {
            int i2 = R.styleable.AppCompatTextView_emojiCompatEnabled;
            boolean z = typedArrayObtainStyledAttributes.hasValue(i2) ? typedArrayObtainStyledAttributes.getBoolean(i2, true) : true;
            typedArrayObtainStyledAttributes.recycle();
            c(z);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public final void c(boolean z) {
        this.f484b.setEnabled(z);
    }

    public boolean isEnabled() {
        return this.f484b.isEnabled();
    }

    public final void b(boolean z) {
        this.f484b.setAllCaps(z);
    }

    @Nullable
    public TransformationMethod wrapTransformationMethod(@Nullable TransformationMethod transformationMethod) {
        return this.f484b.wrapTransformationMethod(transformationMethod);
    }
}
