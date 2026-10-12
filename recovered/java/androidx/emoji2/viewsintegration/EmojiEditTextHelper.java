package androidx.emoji2.viewsintegration;

import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;

/* loaded from: classes.dex */
public final class EmojiEditTextHelper {

    /* renamed from: a, reason: collision with root package name */
    public final a f1578a;

    /* renamed from: b, reason: collision with root package name */
    public int f1579b;
    public int c;

    public static class b {
    }

    public EmojiEditTextHelper(@NonNull EditText editText) {
        this(editText, true);
    }

    public EmojiEditTextHelper(@NonNull EditText editText, boolean z) {
        this.f1579b = Integer.MAX_VALUE;
        this.c = 0;
        Preconditions.checkNotNull(editText, "editText cannot be null");
        this.f1578a = new a(editText, z);
    }

    public void setMaxEmojiCount(@IntRange(from = 0) int i) {
        Preconditions.checkArgumentNonnegative(i, "maxEmojiCount should be greater than 0");
        this.f1579b = i;
        this.f1578a.f1581b.d = i;
    }

    public int getMaxEmojiCount() {
        return this.f1579b;
    }

    @Nullable
    public KeyListener getKeyListener(@Nullable KeyListener keyListener) {
        this.f1578a.getClass();
        if (keyListener instanceof EmojiKeyListener) {
            return keyListener;
        }
        if (keyListener == null) {
            return null;
        }
        return keyListener instanceof NumberKeyListener ? keyListener : new EmojiKeyListener(keyListener);
    }

    @Nullable
    public InputConnection onCreateInputConnection(@Nullable InputConnection inputConnection, @NonNull EditorInfo editorInfo) {
        if (inputConnection == null) {
            return null;
        }
        a aVar = this.f1578a;
        aVar.getClass();
        return inputConnection instanceof EmojiInputConnection ? inputConnection : new EmojiInputConnection(aVar.f1580a, inputConnection, editorInfo);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setEmojiReplaceStrategy(int i) {
        this.c = i;
        this.f1578a.f1581b.e = i;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getEmojiReplaceStrategy() {
        return this.c;
    }

    public boolean isEnabled() {
        return this.f1578a.f1581b.isEnabled();
    }

    public void setEnabled(boolean z) {
        this.f1578a.f1581b.setEnabled(z);
    }

    @RequiresApi(19)
    public static class a extends b {

        /* renamed from: a, reason: collision with root package name */
        public final EditText f1580a;

        /* renamed from: b, reason: collision with root package name */
        public final c f1581b;

        public a(EditText editText, boolean z) {
            this.f1580a = editText;
            c cVar = new c(editText, z);
            this.f1581b = cVar;
            editText.addTextChangedListener(cVar);
            editText.setEditableFactory(androidx.emoji2.viewsintegration.a.getInstance());
        }
    }
}
