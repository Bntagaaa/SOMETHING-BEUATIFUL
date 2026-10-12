package androidx.vectordrawable.graphics.drawable;

import android.app.Notification;
import android.app.PendingIntent;
import android.graphics.drawable.Icon;

/* loaded from: classes.dex */
public abstract /* synthetic */ class c {
    public static /* synthetic */ Notification.Action.Builder b(Icon icon, PendingIntent pendingIntent) {
        return new Notification.Action.Builder(icon, "Reply", pendingIntent);
    }
}
