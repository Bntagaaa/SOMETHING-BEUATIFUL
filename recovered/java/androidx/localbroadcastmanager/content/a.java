package androidx.localbroadcastmanager.content;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* loaded from: classes.dex */
class a extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ LocalBroadcastManager f1933a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(LocalBroadcastManager localBroadcastManager, Looper looper) {
        super(looper);
        this.f1933a = localBroadcastManager;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (message.what == 1) {
            this.f1933a.a();
        } else {
            super.handleMessage(message);
        }
    }
}
