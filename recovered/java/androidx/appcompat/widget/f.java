package androidx.appcompat.widget;

import android.content.res.TypedArray;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.widget.EditText;
import androidx.appcompat.R;
import androidx.emoji2.viewsintegration.EmojiEditTextHelper;

/* loaded from: classes.dex */
class f {

    /* renamed from: a, reason: collision with root package name */
    public final EditText f478a;

    /* renamed from: b, reason: collision with root package name */
    public final EmojiEditTextHelper f479b;

    public f(EditText editText) {
        this.f478a = editText;
        this.f479b = new EmojiEditTextHelper(editText, false);
    }

    public final void b(AttributeSet attributeSet, int i) {
        TypedArray typedArrayObtainStyledAttributes = this.f478a.getContext().obtainStyledAttributes(attributeSet, R.styleable.AppCompatTextView, i, 0);
        try {
            int i2 = R.styleable.AppCompatTextView_emojiCompatEnabled;
            boolean z = typedArrayObtainStyledAttributes.hasValue(i2) ? typedArrayObtainStyledAttributes.getBoolean(i2, true) : true;
            typedArrayObtainStyledAttributes.recycle();
            this.f479b.setEnabled(z);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public final KeyListener a(KeyListener keyListener) {
        return !(keyListener instanceof NumberKeyListener) ? this.f479b.getKeyListener(keyListener) : keyListener;
    }
}
