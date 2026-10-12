package androidx.core.app;

import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.os.Build;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.appcompat.app.r;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class NotificationChannelGroupCompat {

    /* renamed from: a, reason: collision with root package name */
    public final String f872a;

    /* renamed from: b, reason: collision with root package name */
    public CharSequence f873b;
    public String c;
    public final boolean d;
    public final List e;

    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final NotificationChannelGroupCompat f874a;

        public Builder(@NonNull String str) {
            this.f874a = new NotificationChannelGroupCompat(str);
        }

        @NonNull
        public Builder setName(@Nullable CharSequence charSequence) {
            this.f874a.f873b = charSequence;
            return this;
        }

        @NonNull
        public Builder setDescription(@Nullable String str) {
            this.f874a.c = str;
            return this;
        }

        @NonNull
        public NotificationChannelGroupCompat build() {
            return this.f874a;
        }
    }

    public NotificationChannelGroupCompat(String str) {
        this.e = Collections.EMPTY_LIST;
        this.f872a = (String) Preconditions.checkNotNull(str);
    }

    public NotificationChannelGroupCompat(NotificationChannelGroup notificationChannelGroup) {
        this(notificationChannelGroup, Collections.EMPTY_LIST);
    }

    public NotificationChannelGroupCompat(NotificationChannelGroup notificationChannelGroup, List list) {
        this(a.d(notificationChannelGroup));
        this.f873b = a.e(notificationChannelGroup);
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            this.c = b.a(notificationChannelGroup);
        }
        if (i >= 28) {
            this.d = b.b(notificationChannelGroup);
            this.e = a(a.b(notificationChannelGroup));
        } else {
            this.e = a(list);
        }
    }

    public final ArrayList a(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            NotificationChannel notificationChannelG = r.g(it.next());
            if (this.f872a.equals(a.c(notificationChannelG))) {
                arrayList.add(new NotificationChannelCompat(notificationChannelG));
            }
        }
        return arrayList;
    }

    @NonNull
    public Builder toBuilder() {
        return new Builder(this.f872a).setName(this.f873b).setDescription(this.c);
    }

    @NonNull
    public String getId() {
        return this.f872a;
    }

    @Nullable
    public CharSequence getName() {
        return this.f873b;
    }

    @Nullable
    public String getDescription() {
        return this.c;
    }

    public boolean isBlocked() {
        return this.d;
    }

    @NonNull
    public List<NotificationChannelCompat> getChannels() {
        return this.e;
    }

    @RequiresApi(26)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static NotificationChannelGroup a(String str, CharSequence charSequence) {
            return new NotificationChannelGroup(str, charSequence);
        }

        @DoNotInline
        public static String d(NotificationChannelGroup notificationChannelGroup) {
            return notificationChannelGroup.getId();
        }

        @DoNotInline
        public static CharSequence e(NotificationChannelGroup notificationChannelGroup) {
            return notificationChannelGroup.getName();
        }

        @DoNotInline
        public static List<NotificationChannel> b(NotificationChannelGroup notificationChannelGroup) {
            return notificationChannelGroup.getChannels();
        }

        @DoNotInline
        public static String c(NotificationChannel notificationChannel) {
            return notificationChannel.getGroup();
        }
    }

    @RequiresApi(28)
    public static class b {
        private b() {
        }

        @DoNotInline
        public static boolean b(NotificationChannelGroup notificationChannelGroup) {
            return notificationChannelGroup.isBlocked();
        }

        @DoNotInline
        public static String a(NotificationChannelGroup notificationChannelGroup) {
            return notificationChannelGroup.getDescription();
        }

        @DoNotInline
        public static void c(NotificationChannelGroup notificationChannelGroup, String str) {
            notificationChannelGroup.setDescription(str);
        }
    }
}
