package androidx.emoji2.text;

import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import androidx.emoji2.text.FontRequestEmojiCompatConfig;

/* loaded from: classes.dex */
class k extends ContentObserver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FontRequestEmojiCompatConfig.a f1570a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(FontRequestEmojiCompatConfig.a aVar, Handler handler) {
        super(handler);
        this.f1570a = aVar;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z, Uri uri) {
        this.f1570a.b();
    }
}
