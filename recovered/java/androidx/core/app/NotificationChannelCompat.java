package androidx.core.app;

import android.app.Notification;
import android.app.NotificationChannel;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.util.Preconditions;

/* loaded from: classes.dex */
public class NotificationChannelCompat {
    public static final String DEFAULT_CHANNEL_ID = "miscellaneous";

    /* renamed from: a, reason: collision with root package name */
    public final String f868a;

    /* renamed from: b, reason: collision with root package name */
    public CharSequence f869b;
    public int c;
    public String d;
    public String e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public Uri f870g;
    public AudioAttributes h;
    public boolean i;
    public int j;
    public boolean k;
    public long[] l;
    public String m;
    public String n;
    public final boolean o;
    public final int p;
    public final boolean q;
    public final boolean r;

    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final NotificationChannelCompat f871a;

        public Builder(@NonNull String str, int i) {
            this.f871a = new NotificationChannelCompat(str, i);
        }

        @NonNull
        public Builder setName(@Nullable CharSequence charSequence) {
            this.f871a.f869b = charSequence;
            return this;
        }

        @NonNull
        public Builder setImportance(int i) {
            this.f871a.c = i;
            return this;
        }

        @NonNull
        public Builder setDescription(@Nullable String str) {
            this.f871a.d = str;
            return this;
        }

        @NonNull
        public Builder setGroup(@Nullable String str) {
            this.f871a.e = str;
            return this;
        }

        @NonNull
        public Builder setShowBadge(boolean z) {
            this.f871a.f = z;
            return this;
        }

        @NonNull
        public Builder setSound(@Nullable Uri uri, @Nullable AudioAttributes audioAttributes) {
            NotificationChannelCompat notificationChannelCompat = this.f871a;
            notificationChannelCompat.f870g = uri;
            notificationChannelCompat.h = audioAttributes;
            return this;
        }

        @NonNull
        public Builder setLightsEnabled(boolean z) {
            this.f871a.i = z;
            return this;
        }

        @NonNull
        public Builder setLightColor(int i) {
            this.f871a.j = i;
            return this;
        }

        @NonNull
        public Builder setVibrationEnabled(boolean z) {
            this.f871a.k = z;
            return this;
        }

        @NonNull
        public Builder setVibrationPattern(@Nullable long[] jArr) {
            boolean z = jArr != null && jArr.length > 0;
            NotificationChannelCompat notificationChannelCompat = this.f871a;
            notificationChannelCompat.k = z;
            notificationChannelCompat.l = jArr;
            return this;
        }

        @NonNull
        public Builder setConversationId(@NonNull String str, @NonNull String str2) {
            if (Build.VERSION.SDK_INT >= 30) {
                NotificationChannelCompat notificationChannelCompat = this.f871a;
                notificationChannelCompat.m = str;
                notificationChannelCompat.n = str2;
            }
            return this;
        }

        @NonNull
        public NotificationChannelCompat build() {
            return this.f871a;
        }
    }

    public NotificationChannelCompat(String str, int i) {
        this.f = true;
        this.f870g = Settings.System.DEFAULT_NOTIFICATION_URI;
        this.j = 0;
        this.f868a = (String) Preconditions.checkNotNull(str);
        this.c = i;
        this.h = Notification.AUDIO_ATTRIBUTES_DEFAULT;
    }

    public NotificationChannelCompat(NotificationChannel notificationChannel) {
        this(a.i(notificationChannel), a.j(notificationChannel));
        this.f869b = a.m(notificationChannel);
        this.d = a.g(notificationChannel);
        this.e = a.h(notificationChannel);
        this.f = a.b(notificationChannel);
        this.f870g = a.n(notificationChannel);
        this.h = a.f(notificationChannel);
        this.i = a.v(notificationChannel);
        this.j = a.k(notificationChannel);
        this.k = a.w(notificationChannel);
        this.l = a.o(notificationChannel);
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            this.m = c.b(notificationChannel);
            this.n = c.a(notificationChannel);
        }
        this.o = a.a(notificationChannel);
        this.p = a.l(notificationChannel);
        if (i >= 29) {
            this.q = b.a(notificationChannel);
        }
        if (i >= 30) {
            this.r = c.c(notificationChannel);
        }
    }

    public final NotificationChannel a() {
        String str;
        String str2;
        int i = Build.VERSION.SDK_INT;
        if (i < 26) {
            return null;
        }
        NotificationChannel notificationChannelC = a.c(this.f868a, this.f869b, this.c);
        a.p(notificationChannelC, this.d);
        a.q(notificationChannelC, this.e);
        a.s(notificationChannelC, this.f);
        a.t(notificationChannelC, this.f870g, this.h);
        a.d(notificationChannelC, this.i);
        a.r(notificationChannelC, this.j);
        a.u(notificationChannelC, this.l);
        a.e(notificationChannelC, this.k);
        if (i >= 30 && (str = this.m) != null && (str2 = this.n) != null) {
            c.d(notificationChannelC, str, str2);
        }
        return notificationChannelC;
    }

    @NonNull
    public Builder toBuilder() {
        return new Builder(this.f868a, this.c).setName(this.f869b).setDescription(this.d).setGroup(this.e).setShowBadge(this.f).setSound(this.f870g, this.h).setLightsEnabled(this.i).setLightColor(this.j).setVibrationEnabled(this.k).setVibrationPattern(this.l).setConversationId(this.m, this.n);
    }

    @NonNull
    public String getId() {
        return this.f868a;
    }

    @Nullable
    public CharSequence getName() {
        return this.f869b;
    }

    @Nullable
    public String getDescription() {
        return this.d;
    }

    public int getImportance() {
        return this.c;
    }

    @Nullable
    public Uri getSound() {
        return this.f870g;
    }

    @Nullable
    public AudioAttributes getAudioAttributes() {
        return this.h;
    }

    public boolean shouldShowLights() {
        return this.i;
    }

    public int getLightColor() {
        return this.j;
    }

    public boolean shouldVibrate() {
        return this.k;
    }

    @Nullable
    public long[] getVibrationPattern() {
        return this.l;
    }

    public boolean canShowBadge() {
        return this.f;
    }

    @Nullable
    public String getGroup() {
        return this.e;
    }

    @Nullable
    public String getParentChannelId() {
        return this.m;
    }

    @Nullable
    public String getConversationId() {
        return this.n;
    }

    public boolean canBypassDnd() {
        return this.o;
    }

    public int getLockscreenVisibility() {
        return this.p;
    }

    public boolean canBubble() {
        return this.q;
    }

    public boolean isImportantConversation() {
        return this.r;
    }

    @RequiresApi(26)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static NotificationChannel c(String str, CharSequence charSequence, int i) {
            return new NotificationChannel(str, charSequence, i);
        }

        @DoNotInline
        public static String i(NotificationChannel notificationChannel) {
            return notificationChannel.getId();
        }

        @DoNotInline
        public static int j(NotificationChannel notificationChannel) {
            return notificationChannel.getImportance();
        }

        @DoNotInline
        public static CharSequence m(NotificationChannel notificationChannel) {
            return notificationChannel.getName();
        }

        @DoNotInline
        public static String g(NotificationChannel notificationChannel) {
            return notificationChannel.getDescription();
        }

        @DoNotInline
        public static void p(NotificationChannel notificationChannel, String str) {
            notificationChannel.setDescription(str);
        }

        @DoNotInline
        public static String h(NotificationChannel notificationChannel) {
            return notificationChannel.getGroup();
        }

        @DoNotInline
        public static void q(NotificationChannel notificationChannel, String str) {
            notificationChannel.setGroup(str);
        }

        @DoNotInline
        public static boolean b(NotificationChannel notificationChannel) {
            return notificationChannel.canShowBadge();
        }

        @DoNotInline
        public static void s(NotificationChannel notificationChannel, boolean z) {
            notificationChannel.setShowBadge(z);
        }

        @DoNotInline
        public static Uri n(NotificationChannel notificationChannel) {
            return notificationChannel.getSound();
        }

        @DoNotInline
        public static void t(NotificationChannel notificationChannel, Uri uri, AudioAttributes audioAttributes) {
            notificationChannel.setSound(uri, audioAttributes);
        }

        @DoNotInline
        public static AudioAttributes f(NotificationChannel notificationChannel) {
            return notificationChannel.getAudioAttributes();
        }

        @DoNotInline
        public static boolean v(NotificationChannel notificationChannel) {
            return notificationChannel.shouldShowLights();
        }

        @DoNotInline
        public static void d(NotificationChannel notificationChannel, boolean z) {
            notificationChannel.enableLights(z);
        }

        @DoNotInline
        public static int k(NotificationChannel notificationChannel) {
            return notificationChannel.getLightColor();
        }

        @DoNotInline
        public static void r(NotificationChannel notificationChannel, int i) {
            notificationChannel.setLightColor(i);
        }

        @DoNotInline
        public static boolean w(NotificationChannel notificationChannel) {
            return notificationChannel.shouldVibrate();
        }

        @DoNotInline
        public static void e(NotificationChannel notificationChannel, boolean z) {
            notificationChannel.enableVibration(z);
        }

        @DoNotInline
        public static long[] o(NotificationChannel notificationChannel) {
            return notificationChannel.getVibrationPattern();
        }

        @DoNotInline
        public static void u(NotificationChannel notificationChannel, long[] jArr) {
            notificationChannel.setVibrationPattern(jArr);
        }

        @DoNotInline
        public static boolean a(NotificationChannel notificationChannel) {
            return notificationChannel.canBypassDnd();
        }

        @DoNotInline
        public static int l(NotificationChannel notificationChannel) {
            return notificationChannel.getLockscreenVisibility();
        }
    }

    @RequiresApi(29)
    public static class b {
        private b() {
        }

        @DoNotInline
        public static boolean a(NotificationChannel notificationChannel) {
            return notificationChannel.canBubble();
        }
    }

    @RequiresApi(30)
    public static class c {
        private c() {
        }

        @DoNotInline
        public static String b(NotificationChannel notificationChannel) {
            return notificationChannel.getParentChannelId();
        }

        @DoNotInline
        public static String a(NotificationChannel notificationChannel) {
            return notificationChannel.getConversationId();
        }

        @DoNotInline
        public static void d(NotificationChannel notificationChannel, String str, String str2) {
            notificationChannel.setConversationId(str, str2);
        }

        @DoNotInline
        public static boolean c(NotificationChannel notificationChannel) {
            return notificationChannel.isImportantConversation();
        }
    }
}
