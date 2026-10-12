package androidx.emoji2.viewsintegration;

import android.text.InputFilter;
import android.text.Selection;
import android.text.Spannable;
import android.text.Spanned;
import android.widget.TextView;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.emoji2.text.EmojiCompat;
import java.lang.ref.WeakReference;

@RequiresApi(19)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
final class b implements InputFilter {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f1592a;

    /* renamed from: b, reason: collision with root package name */
    public EmojiCompat.InitCallback f1593b;

    public b(TextView textView) {
        this.f1592a = textView;
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        TextView textView = this.f1592a;
        if (textView.isInEditMode()) {
            return charSequence;
        }
        int loadState = EmojiCompat.get().getLoadState();
        if (loadState != 0) {
            if (loadState == 1) {
                if ((i4 == 0 && i3 == 0 && spanned.length() == 0 && charSequence == textView.getText()) || charSequence == null) {
                    return charSequence;
                }
                if (i != 0 || i2 != charSequence.length()) {
                    charSequence = charSequence.subSequence(i, i2);
                }
                return EmojiCompat.get().process(charSequence, 0, charSequence.length());
            }
            if (loadState != 3) {
                return charSequence;
            }
        }
        EmojiCompat emojiCompat = EmojiCompat.get();
        if (this.f1593b == null) {
            this.f1593b = new a(textView, this);
        }
        emojiCompat.registerInitCallback(this.f1593b);
        return charSequence;
    }

    @RequiresApi(19)
    public static class a extends EmojiCompat.InitCallback {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference f1594a;

        /* renamed from: b, reason: collision with root package name */
        public final WeakReference f1595b;

        public a(TextView textView, b bVar) {
            this.f1594a = new WeakReference(textView);
            this.f1595b = new WeakReference(bVar);
        }

        @Override // androidx.emoji2.text.EmojiCompat.InitCallback
        public void onInitialized() {
            InputFilter[] filters;
            CharSequence text;
            CharSequence charSequenceProcess;
            super.onInitialized();
            TextView textView = (TextView) this.f1594a.get();
            InputFilter inputFilter = (InputFilter) this.f1595b.get();
            if (inputFilter == null || textView == null || (filters = textView.getFilters()) == null) {
                return;
            }
            for (InputFilter inputFilter2 : filters) {
                if (inputFilter2 == inputFilter) {
                    if (!textView.isAttachedToWindow() || text == (charSequenceProcess = EmojiCompat.get().process((text = textView.getText())))) {
                        return;
                    }
                    int selectionStart = Selection.getSelectionStart(charSequenceProcess);
                    int selectionEnd = Selection.getSelectionEnd(charSequenceProcess);
                    textView.setText(charSequenceProcess);
                    if (charSequenceProcess instanceof Spannable) {
                        Spannable spannable = (Spannable) charSequenceProcess;
                        if (selectionStart >= 0 && selectionEnd >= 0) {
                            Selection.setSelection(spannable, selectionStart, selectionEnd);
                            return;
                        } else if (selectionStart >= 0) {
                            Selection.setSelection(spannable, selectionStart);
                            return;
                        } else {
                            if (selectionEnd >= 0) {
                                Selection.setSelection(spannable, selectionEnd);
                                return;
                            }
                            return;
                        }
                    }
                    return;
                }
            }
        }
    }
}
