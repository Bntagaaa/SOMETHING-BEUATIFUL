package androidx.emoji2.viewsintegration;

import android.text.Editable;
import android.text.method.KeyListener;
import android.view.KeyEvent;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.emoji2.text.EmojiCompat;

@RequiresApi(19)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
final class EmojiKeyListener implements KeyListener {

    /* renamed from: a, reason: collision with root package name */
    public final KeyListener f1584a;

    /* renamed from: b, reason: collision with root package name */
    public final EmojiCompatHandleKeyDownHelper f1585b;

    public EmojiKeyListener(KeyListener keyListener) {
        EmojiCompatHandleKeyDownHelper emojiCompatHandleKeyDownHelper = new EmojiCompatHandleKeyDownHelper();
        this.f1584a = keyListener;
        this.f1585b = emojiCompatHandleKeyDownHelper;
    }

    @Override // android.text.method.KeyListener
    public int getInputType() {
        return this.f1584a.getInputType();
    }

    @Override // android.text.method.KeyListener
    public boolean onKeyDown(View view, Editable editable, int i, KeyEvent keyEvent) {
        return this.f1585b.handleKeyDown(editable, i, keyEvent) || this.f1584a.onKeyDown(view, editable, i, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public boolean onKeyUp(View view, Editable editable, int i, KeyEvent keyEvent) {
        return this.f1584a.onKeyUp(view, editable, i, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public boolean onKeyOther(View view, Editable editable, KeyEvent keyEvent) {
        return this.f1584a.onKeyOther(view, editable, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public void clearMetaKeyState(View view, Editable editable, int i) {
        this.f1584a.clearMetaKeyState(view, editable, i);
    }

    public static class EmojiCompatHandleKeyDownHelper {
        public boolean handleKeyDown(@NonNull Editable editable, int i, @NonNull KeyEvent keyEvent) {
            return EmojiCompat.handleOnKeyDown(editable, i, keyEvent);
        }
    }
}
