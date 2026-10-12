package androidx.emoji2.viewsintegration;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextWatcher;
import android.widget.EditText;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.emoji2.text.EmojiCompat;
import java.lang.ref.WeakReference;

@RequiresApi(19)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
final class c implements TextWatcher {

    /* renamed from: a, reason: collision with root package name */
    public final EditText f1596a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f1597b;
    public EmojiCompat.InitCallback c;
    public int d = Integer.MAX_VALUE;
    public int e = 0;
    public boolean f = true;

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public c(EditText editText, boolean z) {
        this.f1596a = editText;
        this.f1597b = z;
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        EditText editText = this.f1596a;
        if (editText.isInEditMode() || !this.f) {
            return;
        }
        if ((this.f1597b || EmojiCompat.isConfigured()) && i2 <= i3 && (charSequence instanceof Spannable)) {
            int loadState = EmojiCompat.get().getLoadState();
            if (loadState != 0) {
                if (loadState == 1) {
                    EmojiCompat.get().process((Spannable) charSequence, i, i + i3, this.d, this.e);
                    return;
                } else if (loadState != 3) {
                    return;
                }
            }
            EmojiCompat emojiCompat = EmojiCompat.get();
            if (this.c == null) {
                this.c = new a(editText);
            }
            emojiCompat.registerInitCallback(this.c);
        }
    }

    public boolean isEnabled() {
        return this.f;
    }

    public void setEnabled(boolean z) {
        if (this.f != z) {
            if (this.c != null) {
                EmojiCompat.get().unregisterInitCallback(this.c);
            }
            this.f = z;
            if (z) {
                a(this.f1596a, EmojiCompat.get().getLoadState());
            }
        }
    }

    @RequiresApi(19)
    public static class a extends EmojiCompat.InitCallback {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference f1598a;

        public a(EditText editText) {
            this.f1598a = new WeakReference(editText);
        }

        @Override // androidx.emoji2.text.EmojiCompat.InitCallback
        public void onInitialized() {
            super.onInitialized();
            c.a((EditText) this.f1598a.get(), 1);
        }
    }

    public static void a(EditText editText, int i) {
        if (i == 1 && editText != null && editText.isAttachedToWindow()) {
            Editable editableText = editText.getEditableText();
            int selectionStart = Selection.getSelectionStart(editableText);
            int selectionEnd = Selection.getSelectionEnd(editableText);
            EmojiCompat.get().process(editableText);
            if (selectionStart >= 0 && selectionEnd >= 0) {
                Selection.setSelection(editableText, selectionStart, selectionEnd);
            } else if (selectionStart >= 0) {
                Selection.setSelection(editableText, selectionStart);
            } else if (selectionEnd >= 0) {
                Selection.setSelection(editableText, selectionEnd);
            }
        }
    }
}
