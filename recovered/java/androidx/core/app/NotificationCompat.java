package androidx.core.app;

import android.annotation.SuppressLint;
import android.app.Notification;
import android.app.PendingIntent;
import android.app.RemoteInput;
import android.content.Context;
import android.content.LocusId;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.TextAppearanceSpan;
import android.util.Log;
import android.widget.RemoteViews;
import androidx.annotation.ColorInt;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.app.q;
import androidx.appcompat.widget.m;
import androidx.core.R;
import androidx.core.app.Person;
import androidx.core.app.RemoteInput;
import androidx.core.content.ContextCompat;
import androidx.core.content.LocusIdCompat;
import androidx.core.content.pm.ShortcutInfoCompat;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.text.BidiFormatter;
import androidx.core.view.GravityCompat;
import com.google.appinventor.components.common.PropertyTypeConstants;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public class NotificationCompat {
    public static final int BADGE_ICON_LARGE = 2;
    public static final int BADGE_ICON_NONE = 0;
    public static final int BADGE_ICON_SMALL = 1;
    public static final String CATEGORY_ALARM = "alarm";
    public static final String CATEGORY_CALL = "call";
    public static final String CATEGORY_EMAIL = "email";
    public static final String CATEGORY_ERROR = "err";
    public static final String CATEGORY_EVENT = "event";
    public static final String CATEGORY_LOCATION_SHARING = "location_sharing";
    public static final String CATEGORY_MESSAGE = "msg";
    public static final String CATEGORY_MISSED_CALL = "missed_call";
    public static final String CATEGORY_NAVIGATION = "navigation";
    public static final String CATEGORY_PROGRESS = "progress";
    public static final String CATEGORY_PROMO = "promo";
    public static final String CATEGORY_RECOMMENDATION = "recommendation";
    public static final String CATEGORY_REMINDER = "reminder";
    public static final String CATEGORY_SERVICE = "service";
    public static final String CATEGORY_SOCIAL = "social";
    public static final String CATEGORY_STATUS = "status";
    public static final String CATEGORY_STOPWATCH = "stopwatch";
    public static final String CATEGORY_SYSTEM = "sys";
    public static final String CATEGORY_TRANSPORT = "transport";
    public static final String CATEGORY_WORKOUT = "workout";

    @ColorInt
    public static final int COLOR_DEFAULT = 0;
    public static final int DEFAULT_ALL = -1;
    public static final int DEFAULT_LIGHTS = 4;
    public static final int DEFAULT_SOUND = 1;
    public static final int DEFAULT_VIBRATE = 2;

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_ANSWER_COLOR = "android.answerColor";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_ANSWER_INTENT = "android.answerIntent";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_AUDIO_CONTENTS_URI = "android.audioContents";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_BACKGROUND_IMAGE_URI = "android.backgroundImageUri";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_BIG_TEXT = "android.bigText";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_CALL_IS_VIDEO = "android.callIsVideo";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_CALL_PERSON = "android.callPerson";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_CALL_PERSON_COMPAT = "android.callPersonCompat";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_CALL_TYPE = "android.callType";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_CHANNEL_GROUP_ID = "android.intent.extra.CHANNEL_GROUP_ID";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_CHANNEL_ID = "android.intent.extra.CHANNEL_ID";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_CHRONOMETER_COUNT_DOWN = "android.chronometerCountDown";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_COLORIZED = "android.colorized";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_COMPACT_ACTIONS = "android.compactActions";
    public static final String EXTRA_COMPAT_TEMPLATE = "androidx.core.app.extra.COMPAT_TEMPLATE";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_CONVERSATION_TITLE = "android.conversationTitle";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_DECLINE_COLOR = "android.declineColor";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_DECLINE_INTENT = "android.declineIntent";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_HANG_UP_INTENT = "android.hangUpIntent";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_HIDDEN_CONVERSATION_TITLE = "android.hiddenConversationTitle";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_HISTORIC_MESSAGES = "android.messages.historic";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_INFO_TEXT = "android.infoText";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_IS_GROUP_CONVERSATION = "android.isGroupConversation";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_LARGE_ICON = "android.largeIcon";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_LARGE_ICON_BIG = "android.largeIcon.big";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_MEDIA_SESSION = "android.mediaSession";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_MESSAGES = "android.messages";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_MESSAGING_STYLE_USER = "android.messagingStyleUser";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_NOTIFICATION_ID = "android.intent.extra.NOTIFICATION_ID";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_NOTIFICATION_TAG = "android.intent.extra.NOTIFICATION_TAG";

    @SuppressLint({"ActionValue"})
    @Deprecated
    public static final String EXTRA_PEOPLE = "android.people";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_PEOPLE_LIST = "android.people.list";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_PICTURE = "android.picture";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_PICTURE_CONTENT_DESCRIPTION = "android.pictureContentDescription";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_PICTURE_ICON = "android.pictureIcon";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_PROGRESS = "android.progress";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_PROGRESS_INDETERMINATE = "android.progressIndeterminate";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_PROGRESS_MAX = "android.progressMax";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_REMOTE_INPUT_HISTORY = "android.remoteInputHistory";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SELF_DISPLAY_NAME = "android.selfDisplayName";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SHOW_BIG_PICTURE_WHEN_COLLAPSED = "android.showBigPictureWhenCollapsed";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SHOW_CHRONOMETER = "android.showChronometer";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SHOW_WHEN = "android.showWhen";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SMALL_ICON = "android.icon";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SUB_TEXT = "android.subText";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SUMMARY_TEXT = "android.summaryText";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_TEMPLATE = "android.template";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_TEXT = "android.text";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_TEXT_LINES = "android.textLines";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_TITLE = "android.title";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_TITLE_BIG = "android.title.big";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_VERIFICATION_ICON = "android.verificationIcon";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_VERIFICATION_ICON_COMPAT = "android.verificationIconCompat";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_VERIFICATION_TEXT = "android.verificationText";
    public static final int FLAG_AUTO_CANCEL = 16;
    public static final int FLAG_BUBBLE = 4096;
    public static final int FLAG_FOREGROUND_SERVICE = 64;
    public static final int FLAG_GROUP_SUMMARY = 512;

    @Deprecated
    public static final int FLAG_HIGH_PRIORITY = 128;
    public static final int FLAG_INSISTENT = 4;
    public static final int FLAG_LOCAL_ONLY = 256;
    public static final int FLAG_NO_CLEAR = 32;
    public static final int FLAG_ONGOING_EVENT = 2;
    public static final int FLAG_ONLY_ALERT_ONCE = 8;
    public static final int FLAG_SHOW_LIGHTS = 1;
    public static final int FOREGROUND_SERVICE_DEFAULT = 0;
    public static final int FOREGROUND_SERVICE_DEFERRED = 2;
    public static final int FOREGROUND_SERVICE_IMMEDIATE = 1;
    public static final int GROUP_ALERT_ALL = 0;
    public static final int GROUP_ALERT_CHILDREN = 2;
    public static final int GROUP_ALERT_SUMMARY = 1;
    public static final String GROUP_KEY_SILENT = "silent";

    @SuppressLint({"ActionValue"})
    public static final String INTENT_CATEGORY_NOTIFICATION_PREFERENCES = "android.intent.category.NOTIFICATION_PREFERENCES";

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final int MAX_ACTION_BUTTONS = 3;
    public static final int PRIORITY_DEFAULT = 0;
    public static final int PRIORITY_HIGH = 1;
    public static final int PRIORITY_LOW = -1;
    public static final int PRIORITY_MAX = 2;
    public static final int PRIORITY_MIN = -2;
    public static final int STREAM_DEFAULT = -1;
    public static final int VISIBILITY_PRIVATE = 0;
    public static final int VISIBILITY_PUBLIC = 1;
    public static final int VISIBILITY_SECRET = -1;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public @interface BadgeIconType {
    }

    public interface Extender {
        @NonNull
        Builder extend(@NonNull Builder builder);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public @interface GroupAlertBehavior {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public @interface NotificationVisibility {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public @interface ServiceNotificationBehavior {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public @interface StreamType {
    }

    public static class Builder {
        public String A;
        public Bundle B;
        public int C;
        public int D;
        public Notification E;
        public RemoteViews F;
        public RemoteViews G;
        public RemoteViews H;
        public String I;
        public int J;
        public String K;
        public LocusIdCompat L;
        public long M;
        public int N;
        public int O;
        public boolean P;
        public BubbleMetadata Q;
        public final Notification R;
        public boolean S;
        public Object T;

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList f890a;

        /* renamed from: b, reason: collision with root package name */
        public CharSequence f891b;
        public CharSequence c;
        public PendingIntent d;
        public PendingIntent e;
        public RemoteViews f;

        /* renamed from: g, reason: collision with root package name */
        public Bitmap f892g;
        public CharSequence h;
        public int i;
        public int j;
        public boolean k;
        public boolean l;
        public boolean m;

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public ArrayList<Action> mActions;

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public Context mContext;

        @Deprecated
        public ArrayList<String> mPeople;

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public ArrayList<Person> mPersonList;
        public Style n;
        public CharSequence o;
        public CharSequence p;
        public CharSequence[] q;
        public int r;
        public int s;
        public boolean t;
        public String u;
        public boolean v;
        public String w;
        public boolean x;
        public boolean y;
        public boolean z;

        @RequiresApi(19)
        public Builder(@NonNull Context context, @NonNull Notification notification) {
            Bundle bundle;
            ArrayList parcelableArrayList;
            this(context, NotificationCompat.getChannelId(notification));
            Bundle bundle2 = notification.extras;
            Style styleExtractStyleFromNotification = Style.extractStyleFromNotification(notification);
            Builder smallIcon = setContentTitle(NotificationCompat.getContentTitle(notification)).setContentText(NotificationCompat.getContentText(notification)).setContentInfo(NotificationCompat.getContentInfo(notification)).setSubText(NotificationCompat.getSubText(notification)).setSettingsText(NotificationCompat.getSettingsText(notification)).setStyle(styleExtractStyleFromNotification).setContentIntent(notification.contentIntent).setGroup(NotificationCompat.getGroup(notification)).setGroupSummary(NotificationCompat.isGroupSummary(notification)).setLocusId(NotificationCompat.getLocusId(notification)).setWhen(notification.when).setShowWhen(NotificationCompat.getShowWhen(notification)).setUsesChronometer(NotificationCompat.getUsesChronometer(notification)).setAutoCancel(NotificationCompat.getAutoCancel(notification)).setOnlyAlertOnce(NotificationCompat.getOnlyAlertOnce(notification)).setOngoing(NotificationCompat.getOngoing(notification)).setLocalOnly(NotificationCompat.getLocalOnly(notification)).setLargeIcon(notification.largeIcon).setBadgeIconType(NotificationCompat.getBadgeIconType(notification)).setCategory(NotificationCompat.getCategory(notification)).setBubbleMetadata(NotificationCompat.getBubbleMetadata(notification)).setNumber(notification.number).setTicker(notification.tickerText).setContentIntent(notification.contentIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(notification.fullScreenIntent, (notification.flags & 128) != 0).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setDefaults(notification.defaults).setPriority(notification.priority).setColor(NotificationCompat.getColor(notification)).setVisibility(NotificationCompat.getVisibility(notification)).setPublicVersion(NotificationCompat.getPublicVersion(notification)).setSortKey(NotificationCompat.getSortKey(notification)).setTimeoutAfter(NotificationCompat.getTimeoutAfter(notification)).setShortcutId(NotificationCompat.getShortcutId(notification)).setProgress(bundle2.getInt(NotificationCompat.EXTRA_PROGRESS_MAX), bundle2.getInt(NotificationCompat.EXTRA_PROGRESS), bundle2.getBoolean(NotificationCompat.EXTRA_PROGRESS_INDETERMINATE)).setAllowSystemGeneratedContextualActions(NotificationCompat.getAllowSystemGeneratedContextualActions(notification)).setSmallIcon(notification.icon, notification.iconLevel);
            if (notification.extras == null) {
                bundle = null;
            } else {
                Bundle bundle3 = new Bundle(notification.extras);
                bundle3.remove(NotificationCompat.EXTRA_TITLE);
                bundle3.remove(NotificationCompat.EXTRA_TEXT);
                bundle3.remove(NotificationCompat.EXTRA_INFO_TEXT);
                bundle3.remove(NotificationCompat.EXTRA_SUB_TEXT);
                bundle3.remove(NotificationCompat.EXTRA_CHANNEL_ID);
                bundle3.remove(NotificationCompat.EXTRA_CHANNEL_GROUP_ID);
                bundle3.remove(NotificationCompat.EXTRA_SHOW_WHEN);
                bundle3.remove(NotificationCompat.EXTRA_PROGRESS);
                bundle3.remove(NotificationCompat.EXTRA_PROGRESS_MAX);
                bundle3.remove(NotificationCompat.EXTRA_PROGRESS_INDETERMINATE);
                bundle3.remove(NotificationCompat.EXTRA_CHRONOMETER_COUNT_DOWN);
                bundle3.remove(NotificationCompat.EXTRA_COLORIZED);
                bundle3.remove(NotificationCompat.EXTRA_PEOPLE_LIST);
                bundle3.remove(NotificationCompat.EXTRA_PEOPLE);
                bundle3.remove(NotificationCompatExtras.EXTRA_SORT_KEY);
                bundle3.remove(NotificationCompatExtras.EXTRA_GROUP_KEY);
                bundle3.remove(NotificationCompatExtras.EXTRA_GROUP_SUMMARY);
                bundle3.remove(NotificationCompatExtras.EXTRA_LOCAL_ONLY);
                bundle3.remove(NotificationCompatExtras.EXTRA_ACTION_EXTRAS);
                Bundle bundle4 = bundle3.getBundle("android.car.EXTENSIONS");
                if (bundle4 != null) {
                    Bundle bundle5 = new Bundle(bundle4);
                    bundle5.remove("invisible_actions");
                    bundle3.putBundle("android.car.EXTENSIONS", bundle5);
                }
                if (styleExtractStyleFromNotification != null) {
                    styleExtractStyleFromNotification.clearCompatExtraKeys(bundle3);
                }
                bundle = bundle3;
            }
            smallIcon.addExtras(bundle);
            if (Build.VERSION.SDK_INT >= 23) {
                this.T = b.a(notification);
            }
            Notification.Action[] actionArr = notification.actions;
            if (actionArr != null && actionArr.length != 0) {
                for (Notification.Action action : actionArr) {
                    addAction(Action.Builder.fromAndroidAction(action).build());
                }
            }
            List<Action> invisibleActions = NotificationCompat.getInvisibleActions(notification);
            if (!invisibleActions.isEmpty()) {
                Iterator<Action> it = invisibleActions.iterator();
                while (it.hasNext()) {
                    addInvisibleAction(it.next());
                }
            }
            String[] stringArray = notification.extras.getStringArray(NotificationCompat.EXTRA_PEOPLE);
            if (stringArray != null && stringArray.length != 0) {
                for (String str : stringArray) {
                    addPerson(str);
                }
            }
            if (Build.VERSION.SDK_INT >= 28 && (parcelableArrayList = notification.extras.getParcelableArrayList(NotificationCompat.EXTRA_PEOPLE_LIST)) != null && !parcelableArrayList.isEmpty()) {
                Iterator it2 = parcelableArrayList.iterator();
                while (it2.hasNext()) {
                    addPerson(Person.fromAndroidPerson(androidx.core.app.f.g(it2.next())));
                }
            }
            int i = Build.VERSION.SDK_INT;
            if (i >= 24 && bundle2.containsKey(NotificationCompat.EXTRA_CHRONOMETER_COUNT_DOWN)) {
                setChronometerCountDown(bundle2.getBoolean(NotificationCompat.EXTRA_CHRONOMETER_COUNT_DOWN));
            }
            if (i < 26 || !bundle2.containsKey(NotificationCompat.EXTRA_COLORIZED)) {
                return;
            }
            setColorized(bundle2.getBoolean(NotificationCompat.EXTRA_COLORIZED));
        }

        public Builder(@NonNull Context context, @NonNull String str) {
            this.mActions = new ArrayList<>();
            this.mPersonList = new ArrayList<>();
            this.f890a = new ArrayList();
            this.k = true;
            this.x = false;
            this.C = 0;
            this.D = 0;
            this.J = 0;
            this.N = 0;
            this.O = 0;
            Notification notification = new Notification();
            this.R = notification;
            this.mContext = context;
            this.I = str;
            notification.when = System.currentTimeMillis();
            notification.audioStreamType = -1;
            this.j = 0;
            this.mPeople = new ArrayList<>();
            this.P = true;
        }

        @Deprecated
        public Builder(@NonNull Context context) {
            this(context, (String) null);
        }

        @NonNull
        public Builder setWhen(long j) {
            this.R.when = j;
            return this;
        }

        @NonNull
        public Builder setShowWhen(boolean z) {
            this.k = z;
            return this;
        }

        @NonNull
        @RequiresApi(23)
        public Builder setSmallIcon(@NonNull IconCompat iconCompat) {
            this.T = iconCompat.toIcon(this.mContext);
            return this;
        }

        @NonNull
        public Builder setUsesChronometer(boolean z) {
            this.l = z;
            return this;
        }

        @NonNull
        @RequiresApi(24)
        public Builder setChronometerCountDown(boolean z) {
            this.m = z;
            getExtras().putBoolean(NotificationCompat.EXTRA_CHRONOMETER_COUNT_DOWN, z);
            return this;
        }

        @NonNull
        public Builder setSmallIcon(int i) {
            this.R.icon = i;
            return this;
        }

        @NonNull
        public Builder setSmallIcon(int i, int i2) {
            Notification notification = this.R;
            notification.icon = i;
            notification.iconLevel = i2;
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setNotificationSilent() {
            this.S = true;
            return this;
        }

        @NonNull
        public Builder setSilent(boolean z) {
            this.S = z;
            return this;
        }

        @NonNull
        public Builder setContentTitle(@Nullable CharSequence charSequence) {
            this.f891b = limitCharSequenceLength(charSequence);
            return this;
        }

        @NonNull
        public Builder setContentText(@Nullable CharSequence charSequence) {
            this.c = limitCharSequenceLength(charSequence);
            return this;
        }

        @NonNull
        public Builder setSubText(@Nullable CharSequence charSequence) {
            this.o = limitCharSequenceLength(charSequence);
            return this;
        }

        @NonNull
        public Builder setSettingsText(@Nullable CharSequence charSequence) {
            this.p = limitCharSequenceLength(charSequence);
            return this;
        }

        @NonNull
        public Builder setRemoteInputHistory(@Nullable CharSequence[] charSequenceArr) {
            this.q = charSequenceArr;
            return this;
        }

        @NonNull
        public Builder setNumber(int i) {
            this.i = i;
            return this;
        }

        @NonNull
        public Builder setContentInfo(@Nullable CharSequence charSequence) {
            this.h = limitCharSequenceLength(charSequence);
            return this;
        }

        @NonNull
        public Builder setProgress(int i, int i2, boolean z) {
            this.r = i;
            this.s = i2;
            this.t = z;
            return this;
        }

        @NonNull
        public Builder setContent(@Nullable RemoteViews remoteViews) {
            this.R.contentView = remoteViews;
            return this;
        }

        @NonNull
        public Builder setContentIntent(@Nullable PendingIntent pendingIntent) {
            this.d = pendingIntent;
            return this;
        }

        @NonNull
        public Builder setDeleteIntent(@Nullable PendingIntent pendingIntent) {
            this.R.deleteIntent = pendingIntent;
            return this;
        }

        @NonNull
        public Builder setFullScreenIntent(@Nullable PendingIntent pendingIntent, boolean z) {
            this.e = pendingIntent;
            a(128, z);
            return this;
        }

        @NonNull
        public Builder setTicker(@Nullable CharSequence charSequence) {
            this.R.tickerText = limitCharSequenceLength(charSequence);
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setTicker(@Nullable CharSequence charSequence, @Nullable RemoteViews remoteViews) {
            this.R.tickerText = limitCharSequenceLength(charSequence);
            this.f = remoteViews;
            return this;
        }

        @NonNull
        public Builder setLargeIcon(@Nullable Bitmap bitmap) throws Resources.NotFoundException {
            if (bitmap != null && Build.VERSION.SDK_INT < 27) {
                Resources resources = this.mContext.getResources();
                int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.compat_notification_large_icon_max_width);
                int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.compat_notification_large_icon_max_height);
                if (bitmap.getWidth() > dimensionPixelSize || bitmap.getHeight() > dimensionPixelSize2) {
                    double dMin = Math.min(dimensionPixelSize / Math.max(1, bitmap.getWidth()), dimensionPixelSize2 / Math.max(1, bitmap.getHeight()));
                    bitmap = Bitmap.createScaledBitmap(bitmap, (int) Math.ceil(bitmap.getWidth() * dMin), (int) Math.ceil(bitmap.getHeight() * dMin), true);
                }
            }
            this.f892g = bitmap;
            return this;
        }

        @NonNull
        public Builder setSound(@Nullable Uri uri) {
            Notification notification = this.R;
            notification.sound = uri;
            notification.audioStreamType = -1;
            notification.audioAttributes = a.a(a.e(a.c(a.b(), 4), 5));
            return this;
        }

        @NonNull
        public Builder setSound(@Nullable Uri uri, int i) {
            Notification notification = this.R;
            notification.sound = uri;
            notification.audioStreamType = i;
            notification.audioAttributes = a.a(a.d(a.c(a.b(), 4), i));
            return this;
        }

        @NonNull
        public Builder setVibrate(@Nullable long[] jArr) {
            this.R.vibrate = jArr;
            return this;
        }

        @NonNull
        public Builder setLights(@ColorInt int i, int i2, int i3) {
            Notification notification = this.R;
            notification.ledARGB = i;
            notification.ledOnMS = i2;
            notification.ledOffMS = i3;
            notification.flags = ((i2 == 0 || i3 == 0) ? 0 : 1) | (notification.flags & (-2));
            return this;
        }

        @NonNull
        public Builder setOngoing(boolean z) {
            a(2, z);
            return this;
        }

        @NonNull
        public Builder setColorized(boolean z) {
            this.y = z;
            this.z = true;
            return this;
        }

        @NonNull
        public Builder setOnlyAlertOnce(boolean z) {
            a(8, z);
            return this;
        }

        @NonNull
        public Builder setAutoCancel(boolean z) {
            a(16, z);
            return this;
        }

        @NonNull
        public Builder setLocalOnly(boolean z) {
            this.x = z;
            return this;
        }

        @NonNull
        public Builder setCategory(@Nullable String str) {
            this.A = str;
            return this;
        }

        @NonNull
        public Builder setDefaults(int i) {
            Notification notification = this.R;
            notification.defaults = i;
            if ((i & 4) != 0) {
                notification.flags |= 1;
            }
            return this;
        }

        public final void a(int i, boolean z) {
            Notification notification = this.R;
            if (z) {
                notification.flags = i | notification.flags;
            } else {
                notification.flags = (~i) & notification.flags;
            }
        }

        @NonNull
        public Builder setPriority(int i) {
            this.j = i;
            return this;
        }

        @NonNull
        @Deprecated
        public Builder addPerson(@Nullable String str) {
            if (str != null && !str.isEmpty()) {
                this.mPeople.add(str);
            }
            return this;
        }

        @NonNull
        public Builder addPerson(@Nullable Person person) {
            if (person != null) {
                this.mPersonList.add(person);
            }
            return this;
        }

        @NonNull
        public Builder clearPeople() {
            this.mPersonList.clear();
            this.mPeople.clear();
            return this;
        }

        @NonNull
        public Builder setGroup(@Nullable String str) {
            this.u = str;
            return this;
        }

        @NonNull
        public Builder setGroupSummary(boolean z) {
            this.v = z;
            return this;
        }

        @NonNull
        public Builder setSortKey(@Nullable String str) {
            this.w = str;
            return this;
        }

        @NonNull
        public Builder addExtras(@Nullable Bundle bundle) {
            if (bundle != null) {
                Bundle bundle2 = this.B;
                if (bundle2 == null) {
                    this.B = new Bundle(bundle);
                    return this;
                }
                bundle2.putAll(bundle);
            }
            return this;
        }

        @NonNull
        public Builder setExtras(@Nullable Bundle bundle) {
            this.B = bundle;
            return this;
        }

        @NonNull
        public Bundle getExtras() {
            if (this.B == null) {
                this.B = new Bundle();
            }
            return this.B;
        }

        @NonNull
        public Builder addAction(int i, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent) {
            this.mActions.add(new Action(i, charSequence, pendingIntent));
            return this;
        }

        @NonNull
        public Builder addAction(@Nullable Action action) {
            if (action != null) {
                this.mActions.add(action);
            }
            return this;
        }

        @NonNull
        public Builder clearActions() {
            this.mActions.clear();
            return this;
        }

        @NonNull
        @RequiresApi(21)
        public Builder addInvisibleAction(int i, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent) {
            this.f890a.add(new Action(i, charSequence, pendingIntent));
            return this;
        }

        @NonNull
        @RequiresApi(21)
        public Builder addInvisibleAction(@Nullable Action action) {
            if (action != null) {
                this.f890a.add(action);
            }
            return this;
        }

        @NonNull
        public Builder clearInvisibleActions() {
            this.f890a.clear();
            Bundle bundle = this.B.getBundle("android.car.EXTENSIONS");
            if (bundle != null) {
                Bundle bundle2 = new Bundle(bundle);
                bundle2.remove("invisible_actions");
                this.B.putBundle("android.car.EXTENSIONS", bundle2);
            }
            return this;
        }

        @NonNull
        public Builder setStyle(@Nullable Style style) {
            if (this.n != style) {
                this.n = style;
                if (style != null) {
                    style.setBuilder(this);
                }
            }
            return this;
        }

        @NonNull
        public Builder setColor(@ColorInt int i) {
            this.C = i;
            return this;
        }

        @NonNull
        public Builder setVisibility(int i) {
            this.D = i;
            return this;
        }

        @NonNull
        public Builder setPublicVersion(@Nullable Notification notification) {
            this.E = notification;
            return this;
        }

        @Nullable
        @SuppressLint({"BuilderSetStyle"})
        public RemoteViews createContentView() {
            RemoteViews remoteViewsMakeContentView;
            Style style;
            if (this.F != null && ((style = this.n) == null || !style.displayCustomViewInline())) {
                return this.F;
            }
            androidx.core.app.h hVar = new androidx.core.app.h(this);
            Style style2 = this.n;
            if (style2 != null && (remoteViewsMakeContentView = style2.makeContentView(hVar)) != null) {
                return remoteViewsMakeContentView;
            }
            Notification notificationBuild = hVar.build();
            if (Build.VERSION.SDK_INT >= 24) {
                return c.b(c.d(this.mContext, notificationBuild));
            }
            return notificationBuild.contentView;
        }

        @Nullable
        @SuppressLint({"BuilderSetStyle"})
        public RemoteViews createBigContentView() {
            RemoteViews remoteViewsMakeBigContentView;
            Style style;
            int i = Build.VERSION.SDK_INT;
            if (this.G != null && ((style = this.n) == null || !style.displayCustomViewInline())) {
                return this.G;
            }
            androidx.core.app.h hVar = new androidx.core.app.h(this);
            Style style2 = this.n;
            if (style2 != null && (remoteViewsMakeBigContentView = style2.makeBigContentView(hVar)) != null) {
                return remoteViewsMakeBigContentView;
            }
            Notification notificationBuild = hVar.build();
            if (i >= 24) {
                return c.a(c.d(this.mContext, notificationBuild));
            }
            return notificationBuild.bigContentView;
        }

        @Nullable
        @SuppressLint({"BuilderSetStyle"})
        public RemoteViews createHeadsUpContentView() {
            RemoteViews remoteViewsMakeHeadsUpContentView;
            Style style;
            int i = Build.VERSION.SDK_INT;
            if (this.H != null && ((style = this.n) == null || !style.displayCustomViewInline())) {
                return this.H;
            }
            androidx.core.app.h hVar = new androidx.core.app.h(this);
            Style style2 = this.n;
            if (style2 != null && (remoteViewsMakeHeadsUpContentView = style2.makeHeadsUpContentView(hVar)) != null) {
                return remoteViewsMakeHeadsUpContentView;
            }
            Notification notificationBuild = hVar.build();
            if (i >= 24) {
                return c.c(c.d(this.mContext, notificationBuild));
            }
            return notificationBuild.headsUpContentView;
        }

        @NonNull
        public Builder setCustomContentView(@Nullable RemoteViews remoteViews) {
            this.F = remoteViews;
            return this;
        }

        @NonNull
        public Builder setCustomBigContentView(@Nullable RemoteViews remoteViews) {
            this.G = remoteViews;
            return this;
        }

        @NonNull
        public Builder setCustomHeadsUpContentView(@Nullable RemoteViews remoteViews) {
            this.H = remoteViews;
            return this;
        }

        @NonNull
        public Builder setChannelId(@NonNull String str) {
            this.I = str;
            return this;
        }

        @NonNull
        public Builder setTimeoutAfter(long j) {
            this.M = j;
            return this;
        }

        @NonNull
        public Builder setShortcutId(@Nullable String str) {
            this.K = str;
            return this;
        }

        @NonNull
        public Builder setShortcutInfo(@Nullable ShortcutInfoCompat shortcutInfoCompat) {
            if (shortcutInfoCompat != null) {
                this.K = shortcutInfoCompat.getId();
                if (this.L == null) {
                    if (shortcutInfoCompat.getLocusId() != null) {
                        this.L = shortcutInfoCompat.getLocusId();
                    } else if (shortcutInfoCompat.getId() != null) {
                        this.L = new LocusIdCompat(shortcutInfoCompat.getId());
                    }
                }
                if (this.f891b == null) {
                    setContentTitle(shortcutInfoCompat.getShortLabel());
                }
            }
            return this;
        }

        @NonNull
        public Builder setLocusId(@Nullable LocusIdCompat locusIdCompat) {
            this.L = locusIdCompat;
            return this;
        }

        @NonNull
        public Builder setBadgeIconType(int i) {
            this.J = i;
            return this;
        }

        @NonNull
        public Builder setGroupAlertBehavior(int i) {
            this.N = i;
            return this;
        }

        @NonNull
        public Builder setForegroundServiceBehavior(int i) {
            this.O = i;
            return this;
        }

        @NonNull
        public Builder setBubbleMetadata(@Nullable BubbleMetadata bubbleMetadata) {
            this.Q = bubbleMetadata;
            return this;
        }

        @NonNull
        public Builder extend(@NonNull Extender extender) {
            extender.extend(this);
            return this;
        }

        @NonNull
        public Builder setAllowSystemGeneratedContextualActions(boolean z) {
            this.P = z;
            return this;
        }

        @NonNull
        @Deprecated
        public Notification getNotification() {
            return build();
        }

        @NonNull
        public Notification build() {
            return new androidx.core.app.h(this).build();
        }

        @Nullable
        public static CharSequence limitCharSequenceLength(@Nullable CharSequence charSequence) {
            return (charSequence != null && charSequence.length() > 5120) ? charSequence.subSequence(0, 5120) : charSequence;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public RemoteViews getContentView() {
            return this.F;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public RemoteViews getBigContentView() {
            return this.G;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public RemoteViews getHeadsUpContentView() {
            return this.H;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public long getWhenIfShowing() {
            if (this.k) {
                return this.R.when;
            }
            return 0L;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public int getPriority() {
            return this.j;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public int getForegroundServiceBehavior() {
            return this.O;
        }

        @ColorInt
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public int getColor() {
            return this.C;
        }

        @Nullable
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public BubbleMetadata getBubbleMetadata() {
            return this.Q;
        }

        @RequiresApi(21)
        public static class a {
            private a() {
            }

            @DoNotInline
            public static AudioAttributes.Builder b() {
                return new AudioAttributes.Builder();
            }

            @DoNotInline
            public static AudioAttributes.Builder c(AudioAttributes.Builder builder, int i) {
                return builder.setContentType(i);
            }

            @DoNotInline
            public static AudioAttributes.Builder e(AudioAttributes.Builder builder, int i) {
                return builder.setUsage(i);
            }

            @DoNotInline
            public static AudioAttributes.Builder d(AudioAttributes.Builder builder, int i) {
                return builder.setLegacyStreamType(i);
            }

            @DoNotInline
            public static AudioAttributes a(AudioAttributes.Builder builder) {
                return builder.build();
            }
        }

        @RequiresApi(23)
        public static class b {
            private b() {
            }

            @DoNotInline
            public static Icon a(Notification notification) {
                return notification.getSmallIcon();
            }
        }

        @RequiresApi(24)
        public static class c {
            private c() {
            }

            @DoNotInline
            public static Notification.Builder d(Context context, Notification notification) {
                return Notification.Builder.recoverBuilder(context, notification);
            }

            @DoNotInline
            public static RemoteViews b(Notification.Builder builder) {
                return builder.createContentView();
            }

            @DoNotInline
            public static RemoteViews c(Notification.Builder builder) {
                return builder.createHeadsUpContentView();
            }

            @DoNotInline
            public static RemoteViews a(Notification.Builder builder) {
                return builder.createHeadsUpContentView();
            }
        }
    }

    public static abstract class Style {

        /* renamed from: a, reason: collision with root package name */
        public CharSequence f903a;

        /* renamed from: b, reason: collision with root package name */
        public CharSequence f904b;
        public boolean c = false;

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        protected Builder mBuilder;

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public boolean displayCustomViewInline() {
            return false;
        }

        @Nullable
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public String getClassName() {
            return null;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public RemoteViews makeBigContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return null;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public RemoteViews makeContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return null;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public RemoteViews makeHeadsUpContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return null;
        }

        public void setBuilder(@Nullable Builder builder) {
            if (this.mBuilder != builder) {
                this.mBuilder = builder;
                if (builder != null) {
                    builder.setStyle(this);
                }
            }
        }

        @Nullable
        public Notification build() {
            Builder builder = this.mBuilder;
            if (builder != null) {
                return builder.build();
            }
            return null;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void addCompatExtras(@NonNull Bundle bundle) {
            if (this.c) {
                bundle.putCharSequence(NotificationCompat.EXTRA_SUMMARY_TEXT, this.f904b);
            }
            CharSequence charSequence = this.f903a;
            if (charSequence != null) {
                bundle.putCharSequence(NotificationCompat.EXTRA_TITLE_BIG, charSequence);
            }
            String className = getClassName();
            if (className != null) {
                bundle.putString(NotificationCompat.EXTRA_COMPAT_TEMPLATE, className);
            }
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void restoreFromCompatExtras(@NonNull Bundle bundle) {
            if (bundle.containsKey(NotificationCompat.EXTRA_SUMMARY_TEXT)) {
                this.f904b = bundle.getCharSequence(NotificationCompat.EXTRA_SUMMARY_TEXT);
                this.c = true;
            }
            this.f903a = bundle.getCharSequence(NotificationCompat.EXTRA_TITLE_BIG);
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void clearCompatExtraKeys(@NonNull Bundle bundle) {
            bundle.remove(NotificationCompat.EXTRA_SUMMARY_TEXT);
            bundle.remove(NotificationCompat.EXTRA_TITLE_BIG);
            bundle.remove(NotificationCompat.EXTRA_COMPAT_TEMPLATE);
        }

        /* JADX WARN: Removed duplicated region for block: B:42:0x0083  */
        /* JADX WARN: Removed duplicated region for block: B:84:0x0146  */
        @androidx.annotation.Nullable
        @androidx.annotation.RestrictTo({androidx.annotation.RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static androidx.core.app.NotificationCompat.Style extractStyleFromNotification(@androidx.annotation.NonNull android.app.Notification r4) {
            /*
                Method dump skipped, instructions count: 390
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.app.NotificationCompat.Style.extractStyleFromNotification(android.app.Notification):androidx.core.app.NotificationCompat$Style");
        }

        /* JADX WARN: Removed duplicated region for block: B:34:0x00fe  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0138  */
        /* JADX WARN: Removed duplicated region for block: B:51:0x017c  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x0181  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x0183  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x018d  */
        @androidx.annotation.NonNull
        @androidx.annotation.RestrictTo({androidx.annotation.RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public android.widget.RemoteViews applyStandardTemplate(boolean r13, int r14, boolean r15) throws android.content.res.Resources.NotFoundException {
            /*
                Method dump skipped, instructions count: 403
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.app.NotificationCompat.Style.applyStandardTemplate(boolean, int, boolean):android.widget.RemoteViews");
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public Bitmap createColoredBitmap(int i, int i2) {
            return a(IconCompat.createWithResource(this.mBuilder.mContext, i), i2, 0);
        }

        public final Bitmap a(IconCompat iconCompat, int i, int i2) {
            Drawable drawableLoadDrawable = iconCompat.loadDrawable(this.mBuilder.mContext);
            int intrinsicWidth = i2 == 0 ? drawableLoadDrawable.getIntrinsicWidth() : i2;
            if (i2 == 0) {
                i2 = drawableLoadDrawable.getIntrinsicHeight();
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(intrinsicWidth, i2, Bitmap.Config.ARGB_8888);
            drawableLoadDrawable.setBounds(0, 0, intrinsicWidth, i2);
            if (i != 0) {
                drawableLoadDrawable.mutate().setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN));
            }
            drawableLoadDrawable.draw(new Canvas(bitmapCreateBitmap));
            return bitmapCreateBitmap;
        }

        public final Bitmap b(int i, int i2, int i3, int i4) {
            int i5 = R.drawable.notification_icon_background;
            if (i4 == 0) {
                i4 = 0;
            }
            Bitmap bitmapA = a(IconCompat.createWithResource(this.mBuilder.mContext, i5), i4, i2);
            Canvas canvas = new Canvas(bitmapA);
            Drawable drawableMutate = this.mBuilder.mContext.getResources().getDrawable(i).mutate();
            drawableMutate.setFilterBitmap(true);
            int i6 = (i2 - i3) / 2;
            int i7 = i3 + i6;
            drawableMutate.setBounds(i6, i6, i7, i7);
            drawableMutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_ATOP));
            drawableMutate.draw(canvas);
            return bitmapA;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void buildIntoRemoteViews(RemoteViews remoteViews, RemoteViews remoteViews2) throws Resources.NotFoundException {
            remoteViews.setViewVisibility(R.id.title, 8);
            remoteViews.setViewVisibility(R.id.text2, 8);
            remoteViews.setViewVisibility(R.id.text, 8);
            int i = R.id.notification_main_column;
            remoteViews.removeAllViews(i);
            remoteViews.addView(i, remoteViews2.clone());
            remoteViews.setViewVisibility(i, 0);
            int i2 = R.id.notification_main_column_container;
            Resources resources = this.mBuilder.mContext.getResources();
            int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.notification_top_pad);
            int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.notification_top_pad_large_text);
            float f = resources.getConfiguration().fontScale;
            if (f < 1.0f) {
                f = 1.0f;
            } else if (f > 1.3f) {
                f = 1.3f;
            }
            float f2 = (f - 1.0f) / 0.29999995f;
            a.b(remoteViews, i2, 0, Math.round((f2 * dimensionPixelSize2) + ((1.0f - f2) * dimensionPixelSize)), 0, 0);
        }

        @RequiresApi(16)
        public static class a {
            private a() {
            }

            @DoNotInline
            public static void a(RemoteViews remoteViews, int i, int i2, float f) {
                remoteViews.setTextViewTextSize(i, i2, f);
            }

            @DoNotInline
            public static void b(RemoteViews remoteViews, int i, int i2, int i3, int i4, int i5) {
                remoteViews.setViewPadding(i, i2, i3, i4, i5);
            }
        }

        @RequiresApi(24)
        public static class b {
            private b() {
            }

            @DoNotInline
            public static void a(RemoteViews remoteViews, int i, boolean z) {
                remoteViews.setChronometerCountDown(i, z);
            }
        }
    }

    public static class BigPictureStyle extends Style {
        public IconCompat d;
        public IconCompat e;
        public boolean f;

        /* renamed from: g, reason: collision with root package name */
        public CharSequence f883g;
        public boolean h;

        public BigPictureStyle() {
        }

        public BigPictureStyle(@Nullable Builder builder) {
            setBuilder(builder);
        }

        @NonNull
        public BigPictureStyle setBigContentTitle(@Nullable CharSequence charSequence) {
            this.f903a = Builder.limitCharSequenceLength(charSequence);
            return this;
        }

        @NonNull
        public BigPictureStyle setSummaryText(@Nullable CharSequence charSequence) {
            this.f904b = Builder.limitCharSequenceLength(charSequence);
            this.c = true;
            return this;
        }

        @NonNull
        @RequiresApi(31)
        public BigPictureStyle setContentDescription(@Nullable CharSequence charSequence) {
            this.f883g = charSequence;
            return this;
        }

        @NonNull
        public BigPictureStyle bigPicture(@Nullable Bitmap bitmap) {
            this.d = bitmap == null ? null : IconCompat.createWithBitmap(bitmap);
            return this;
        }

        @NonNull
        @RequiresApi(31)
        public BigPictureStyle bigPicture(@Nullable Icon icon) {
            this.d = IconCompat.createFromIcon(icon);
            return this;
        }

        @NonNull
        @RequiresApi(31)
        public BigPictureStyle showBigPictureWhenCollapsed(boolean z) {
            this.h = z;
            return this;
        }

        @NonNull
        public BigPictureStyle bigLargeIcon(@Nullable Bitmap bitmap) {
            this.e = bitmap == null ? null : IconCompat.createWithBitmap(bitmap);
            this.f = true;
            return this;
        }

        @NonNull
        @RequiresApi(23)
        public BigPictureStyle bigLargeIcon(@Nullable Icon icon) {
            this.e = icon == null ? null : IconCompat.createFromIcon(icon);
            this.f = true;
            return this;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public String getClassName() {
            return "androidx.core.app.NotificationCompat$BigPictureStyle";
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            int i = Build.VERSION.SDK_INT;
            Notification.BigPictureStyle bigPictureStyleC = a.c(a.b(notificationBuilderWithBuilderAccessor.getBuilder()), this.f903a);
            IconCompat iconCompat = this.d;
            if (iconCompat != null) {
                if (i >= 31) {
                    c.a(bigPictureStyleC, iconCompat.toIcon(notificationBuilderWithBuilderAccessor instanceof androidx.core.app.h ? ((androidx.core.app.h) notificationBuilderWithBuilderAccessor).f952a : null));
                } else if (iconCompat.getType() == 1) {
                    bigPictureStyleC = a.a(bigPictureStyleC, this.d.getBitmap());
                }
            }
            if (this.f) {
                IconCompat iconCompat2 = this.e;
                if (iconCompat2 == null) {
                    a.d(bigPictureStyleC, null);
                } else if (i >= 23) {
                    b.a(bigPictureStyleC, iconCompat2.toIcon(notificationBuilderWithBuilderAccessor instanceof androidx.core.app.h ? ((androidx.core.app.h) notificationBuilderWithBuilderAccessor).f952a : null));
                } else if (iconCompat2.getType() == 1) {
                    a.d(bigPictureStyleC, this.e.getBitmap());
                } else {
                    a.d(bigPictureStyleC, null);
                }
            }
            if (this.c) {
                a.e(bigPictureStyleC, this.f904b);
            }
            if (i >= 31) {
                c.c(bigPictureStyleC, this.h);
                c.b(bigPictureStyleC, this.f883g);
            }
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void restoreFromCompatExtras(@NonNull Bundle bundle) {
            super.restoreFromCompatExtras(bundle);
            if (bundle.containsKey(NotificationCompat.EXTRA_LARGE_ICON_BIG)) {
                this.e = c(bundle.getParcelable(NotificationCompat.EXTRA_LARGE_ICON_BIG));
                this.f = true;
            }
            this.d = getPictureIcon(bundle);
            this.h = bundle.getBoolean(NotificationCompat.EXTRA_SHOW_BIG_PICTURE_WHEN_COLLAPSED);
        }

        @Nullable
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public static IconCompat getPictureIcon(@Nullable Bundle bundle) {
            if (bundle == null) {
                return null;
            }
            Parcelable parcelable = bundle.getParcelable(NotificationCompat.EXTRA_PICTURE);
            if (parcelable != null) {
                return c(parcelable);
            }
            return c(bundle.getParcelable(NotificationCompat.EXTRA_PICTURE_ICON));
        }

        public static IconCompat c(Parcelable parcelable) {
            if (parcelable == null) {
                return null;
            }
            if (Build.VERSION.SDK_INT >= 23 && m.u(parcelable)) {
                return IconCompat.createFromIcon(m.f(parcelable));
            }
            if (parcelable instanceof Bitmap) {
                return IconCompat.createWithBitmap((Bitmap) parcelable);
            }
            return null;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void clearCompatExtraKeys(@NonNull Bundle bundle) {
            super.clearCompatExtraKeys(bundle);
            bundle.remove(NotificationCompat.EXTRA_LARGE_ICON_BIG);
            bundle.remove(NotificationCompat.EXTRA_PICTURE);
            bundle.remove(NotificationCompat.EXTRA_PICTURE_ICON);
            bundle.remove(NotificationCompat.EXTRA_SHOW_BIG_PICTURE_WHEN_COLLAPSED);
        }

        @RequiresApi(16)
        public static class a {
            private a() {
            }

            @DoNotInline
            public static Notification.BigPictureStyle a(Notification.BigPictureStyle bigPictureStyle, Bitmap bitmap) {
                return bigPictureStyle.bigPicture(bitmap);
            }

            @DoNotInline
            public static Notification.BigPictureStyle b(Notification.Builder builder) {
                return new Notification.BigPictureStyle(builder);
            }

            @RequiresApi(16)
            public static void d(Notification.BigPictureStyle bigPictureStyle, Bitmap bitmap) {
                bigPictureStyle.bigLargeIcon(bitmap);
            }

            @RequiresApi(16)
            public static void e(Notification.BigPictureStyle bigPictureStyle, CharSequence charSequence) {
                bigPictureStyle.setSummaryText(charSequence);
            }

            @DoNotInline
            public static Notification.BigPictureStyle c(Notification.BigPictureStyle bigPictureStyle, CharSequence charSequence) {
                return bigPictureStyle.setBigContentTitle(charSequence);
            }
        }

        @RequiresApi(23)
        public static class b {
            private b() {
            }

            @RequiresApi(23)
            public static void a(Notification.BigPictureStyle bigPictureStyle, Icon icon) {
                bigPictureStyle.bigLargeIcon(icon);
            }
        }

        @RequiresApi(31)
        public static class c {
            private c() {
            }

            @RequiresApi(31)
            public static void c(Notification.BigPictureStyle bigPictureStyle, boolean z) {
                bigPictureStyle.showBigPictureWhenCollapsed(z);
            }

            @RequiresApi(31)
            public static void b(Notification.BigPictureStyle bigPictureStyle, CharSequence charSequence) {
                bigPictureStyle.setContentDescription(charSequence);
            }

            @RequiresApi(31)
            public static void a(Notification.BigPictureStyle bigPictureStyle, Icon icon) {
                bigPictureStyle.bigPicture(icon);
            }
        }
    }

    public static class BigTextStyle extends Style {
        public CharSequence d;

        public BigTextStyle() {
        }

        public BigTextStyle(@Nullable Builder builder) {
            setBuilder(builder);
        }

        @NonNull
        public BigTextStyle setBigContentTitle(@Nullable CharSequence charSequence) {
            this.f903a = Builder.limitCharSequenceLength(charSequence);
            return this;
        }

        @NonNull
        public BigTextStyle setSummaryText(@Nullable CharSequence charSequence) {
            this.f904b = Builder.limitCharSequenceLength(charSequence);
            this.c = true;
            return this;
        }

        @NonNull
        public BigTextStyle bigText(@Nullable CharSequence charSequence) {
            this.d = Builder.limitCharSequenceLength(charSequence);
            return this;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public String getClassName() {
            return "androidx.core.app.NotificationCompat$BigTextStyle";
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            Notification.BigTextStyle bigTextStyleA = a.a(a.c(a.b(notificationBuilderWithBuilderAccessor.getBuilder()), this.f903a), this.d);
            if (this.c) {
                a.d(bigTextStyleA, this.f904b);
            }
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void restoreFromCompatExtras(@NonNull Bundle bundle) {
            super.restoreFromCompatExtras(bundle);
            this.d = bundle.getCharSequence(NotificationCompat.EXTRA_BIG_TEXT);
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void addCompatExtras(@NonNull Bundle bundle) {
            super.addCompatExtras(bundle);
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void clearCompatExtraKeys(@NonNull Bundle bundle) {
            super.clearCompatExtraKeys(bundle);
            bundle.remove(NotificationCompat.EXTRA_BIG_TEXT);
        }

        @RequiresApi(16)
        public static class a {
            private a() {
            }

            @DoNotInline
            public static Notification.BigTextStyle b(Notification.Builder builder) {
                return new Notification.BigTextStyle(builder);
            }

            @DoNotInline
            public static Notification.BigTextStyle c(Notification.BigTextStyle bigTextStyle, CharSequence charSequence) {
                return bigTextStyle.setBigContentTitle(charSequence);
            }

            @DoNotInline
            public static Notification.BigTextStyle a(Notification.BigTextStyle bigTextStyle, CharSequence charSequence) {
                return bigTextStyle.bigText(charSequence);
            }

            @DoNotInline
            public static Notification.BigTextStyle d(Notification.BigTextStyle bigTextStyle, CharSequence charSequence) {
                return bigTextStyle.setSummaryText(charSequence);
            }
        }
    }

    public static class MessagingStyle extends Style {
        public static final int MAXIMUM_RETAINED_MESSAGES = 25;
        public final ArrayList d = new ArrayList();
        public final ArrayList e = new ArrayList();
        public Person f;

        /* renamed from: g, reason: collision with root package name */
        public CharSequence f900g;
        public Boolean h;

        public MessagingStyle() {
        }

        @Deprecated
        public MessagingStyle(@NonNull CharSequence charSequence) {
            this.f = new Person.Builder().setName(charSequence).build();
        }

        public MessagingStyle(@NonNull Person person) {
            if (TextUtils.isEmpty(person.getName())) {
                throw new IllegalArgumentException("User's name must not be empty.");
            }
            this.f = person;
        }

        @Nullable
        @Deprecated
        public CharSequence getUserDisplayName() {
            return this.f.getName();
        }

        @NonNull
        public Person getUser() {
            return this.f;
        }

        @NonNull
        public MessagingStyle setConversationTitle(@Nullable CharSequence charSequence) {
            this.f900g = charSequence;
            return this;
        }

        @Nullable
        public CharSequence getConversationTitle() {
            return this.f900g;
        }

        @NonNull
        @Deprecated
        public MessagingStyle addMessage(@Nullable CharSequence charSequence, long j, @Nullable CharSequence charSequence2) {
            Message message = new Message(charSequence, j, new Person.Builder().setName(charSequence2).build());
            ArrayList arrayList = this.d;
            arrayList.add(message);
            if (arrayList.size() > 25) {
                arrayList.remove(0);
            }
            return this;
        }

        @NonNull
        public MessagingStyle addMessage(@Nullable CharSequence charSequence, long j, @Nullable Person person) {
            addMessage(new Message(charSequence, j, person));
            return this;
        }

        @NonNull
        public MessagingStyle addMessage(@Nullable Message message) {
            if (message != null) {
                ArrayList arrayList = this.d;
                arrayList.add(message);
                if (arrayList.size() > 25) {
                    arrayList.remove(0);
                }
            }
            return this;
        }

        @NonNull
        public MessagingStyle addHistoricMessage(@Nullable Message message) {
            if (message != null) {
                ArrayList arrayList = this.e;
                arrayList.add(message);
                if (arrayList.size() > 25) {
                    arrayList.remove(0);
                }
            }
            return this;
        }

        @NonNull
        public List<Message> getMessages() {
            return this.d;
        }

        @NonNull
        public List<Message> getHistoricMessages() {
            return this.e;
        }

        @NonNull
        public MessagingStyle setGroupConversation(boolean z) {
            this.h = Boolean.valueOf(z);
            return this;
        }

        public boolean isGroupConversation() {
            Builder builder = this.mBuilder;
            if (builder != null && builder.mContext.getApplicationInfo().targetSdkVersion < 28 && this.h == null) {
                return this.f900g != null;
            }
            Boolean bool = this.h;
            if (bool != null) {
                return bool.booleanValue();
            }
            return false;
        }

        @Nullable
        public static MessagingStyle extractMessagingStyleFromNotification(@NonNull Notification notification) {
            Style styleExtractStyleFromNotification = Style.extractStyleFromNotification(notification);
            if (styleExtractStyleFromNotification instanceof MessagingStyle) {
                return (MessagingStyle) styleExtractStyleFromNotification;
            }
            return null;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public String getClassName() {
            return "androidx.core.app.NotificationCompat$MessagingStyle";
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            Message message;
            boolean z;
            CharSequence text;
            Notification.MessagingStyle messagingStyleB;
            setGroupConversation(isGroupConversation());
            int i = Build.VERSION.SDK_INT;
            ArrayList arrayList = this.d;
            if (i >= 24) {
                if (i >= 28) {
                    messagingStyleB = d.a(this.f.toAndroidPerson());
                } else {
                    messagingStyleB = b.b(this.f.getName());
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    b.a(q.f(messagingStyleB), ((Message) it.next()).c());
                }
                if (Build.VERSION.SDK_INT >= 26) {
                    Iterator it2 = this.e.iterator();
                    while (it2.hasNext()) {
                        c.a(q.f(messagingStyleB), ((Message) it2.next()).c());
                    }
                }
                if (this.h.booleanValue() || Build.VERSION.SDK_INT >= 28) {
                    b.c(q.f(messagingStyleB), this.f900g);
                }
                if (Build.VERSION.SDK_INT >= 28) {
                    d.b(q.f(messagingStyleB), this.h.booleanValue());
                }
                a.d(messagingStyleB, notificationBuilderWithBuilderAccessor.getBuilder());
                return;
            }
            int size = arrayList.size() - 1;
            while (true) {
                if (size >= 0) {
                    message = (Message) arrayList.get(size);
                    if (message.getPerson() != null && !TextUtils.isEmpty(message.getPerson().getName())) {
                        break;
                    } else {
                        size--;
                    }
                } else {
                    message = !arrayList.isEmpty() ? (Message) arrayList.get(arrayList.size() - 1) : null;
                }
            }
            if (this.f900g != null && this.h.booleanValue()) {
                notificationBuilderWithBuilderAccessor.getBuilder().setContentTitle(this.f900g);
            } else if (message != null) {
                notificationBuilderWithBuilderAccessor.getBuilder().setContentTitle("");
                if (message.getPerson() != null) {
                    notificationBuilderWithBuilderAccessor.getBuilder().setContentTitle(message.getPerson().getName());
                }
            }
            if (message != null) {
                Notification.Builder builder = notificationBuilderWithBuilderAccessor.getBuilder();
                if (this.f900g != null) {
                    text = c(message);
                } else {
                    text = message.getText();
                }
                builder.setContentText(text);
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            if (this.f900g != null) {
                z = true;
                break;
            }
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                Message message2 = (Message) arrayList.get(size2);
                if (message2.getPerson() != null && message2.getPerson().getName() == null) {
                    z = true;
                    break;
                }
            }
            z = false;
            for (int size3 = arrayList.size() - 1; size3 >= 0; size3--) {
                Message message3 = (Message) arrayList.get(size3);
                CharSequence charSequenceC = z ? c(message3) : message3.getText();
                if (size3 != arrayList.size() - 1) {
                    spannableStringBuilder.insert(0, (CharSequence) "\n");
                }
                spannableStringBuilder.insert(0, charSequenceC);
            }
            a.a(a.c(a.b(notificationBuilderWithBuilderAccessor.getBuilder()), null), spannableStringBuilder);
        }

        public final SpannableStringBuilder c(Message message) {
            BidiFormatter bidiFormatter = BidiFormatter.getInstance();
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            CharSequence name = message.getPerson() == null ? "" : message.getPerson().getName();
            int color = -16777216;
            if (TextUtils.isEmpty(name)) {
                name = this.f.getName();
                if (this.mBuilder.getColor() != 0) {
                    color = this.mBuilder.getColor();
                }
            }
            CharSequence charSequenceUnicodeWrap = bidiFormatter.unicodeWrap(name);
            spannableStringBuilder.append(charSequenceUnicodeWrap);
            spannableStringBuilder.setSpan(new TextAppearanceSpan(null, 0, 0, ColorStateList.valueOf(color), null), spannableStringBuilder.length() - charSequenceUnicodeWrap.length(), spannableStringBuilder.length(), 33);
            spannableStringBuilder.append((CharSequence) "  ").append(bidiFormatter.unicodeWrap(message.getText() != null ? message.getText() : ""));
            return spannableStringBuilder;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public void addCompatExtras(@NonNull Bundle bundle) {
            super.addCompatExtras(bundle);
            bundle.putCharSequence(NotificationCompat.EXTRA_SELF_DISPLAY_NAME, this.f.getName());
            bundle.putBundle(NotificationCompat.EXTRA_MESSAGING_STYLE_USER, this.f.toBundle());
            bundle.putCharSequence(NotificationCompat.EXTRA_HIDDEN_CONVERSATION_TITLE, this.f900g);
            if (this.f900g != null && this.h.booleanValue()) {
                bundle.putCharSequence(NotificationCompat.EXTRA_CONVERSATION_TITLE, this.f900g);
            }
            ArrayList arrayList = this.d;
            if (!arrayList.isEmpty()) {
                bundle.putParcelableArray(NotificationCompat.EXTRA_MESSAGES, Message.a(arrayList));
            }
            ArrayList arrayList2 = this.e;
            if (!arrayList2.isEmpty()) {
                bundle.putParcelableArray(NotificationCompat.EXTRA_HISTORIC_MESSAGES, Message.a(arrayList2));
            }
            Boolean bool = this.h;
            if (bool != null) {
                bundle.putBoolean(NotificationCompat.EXTRA_IS_GROUP_CONVERSATION, bool.booleanValue());
            }
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void restoreFromCompatExtras(@NonNull Bundle bundle) {
            super.restoreFromCompatExtras(bundle);
            ArrayList arrayList = this.d;
            arrayList.clear();
            if (bundle.containsKey(NotificationCompat.EXTRA_MESSAGING_STYLE_USER)) {
                this.f = Person.fromBundle(bundle.getBundle(NotificationCompat.EXTRA_MESSAGING_STYLE_USER));
            } else {
                this.f = new Person.Builder().setName(bundle.getString(NotificationCompat.EXTRA_SELF_DISPLAY_NAME)).build();
            }
            CharSequence charSequence = bundle.getCharSequence(NotificationCompat.EXTRA_CONVERSATION_TITLE);
            this.f900g = charSequence;
            if (charSequence == null) {
                this.f900g = bundle.getCharSequence(NotificationCompat.EXTRA_HIDDEN_CONVERSATION_TITLE);
            }
            Parcelable[] parcelableArray = bundle.getParcelableArray(NotificationCompat.EXTRA_MESSAGES);
            if (parcelableArray != null) {
                arrayList.addAll(Message.b(parcelableArray));
            }
            Parcelable[] parcelableArray2 = bundle.getParcelableArray(NotificationCompat.EXTRA_HISTORIC_MESSAGES);
            if (parcelableArray2 != null) {
                this.e.addAll(Message.b(parcelableArray2));
            }
            if (bundle.containsKey(NotificationCompat.EXTRA_IS_GROUP_CONVERSATION)) {
                this.h = Boolean.valueOf(bundle.getBoolean(NotificationCompat.EXTRA_IS_GROUP_CONVERSATION));
            }
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void clearCompatExtraKeys(@NonNull Bundle bundle) {
            super.clearCompatExtraKeys(bundle);
            bundle.remove(NotificationCompat.EXTRA_MESSAGING_STYLE_USER);
            bundle.remove(NotificationCompat.EXTRA_SELF_DISPLAY_NAME);
            bundle.remove(NotificationCompat.EXTRA_CONVERSATION_TITLE);
            bundle.remove(NotificationCompat.EXTRA_HIDDEN_CONVERSATION_TITLE);
            bundle.remove(NotificationCompat.EXTRA_MESSAGES);
            bundle.remove(NotificationCompat.EXTRA_HISTORIC_MESSAGES);
            bundle.remove(NotificationCompat.EXTRA_IS_GROUP_CONVERSATION);
        }

        public static final class Message {

            /* renamed from: a, reason: collision with root package name */
            public final CharSequence f901a;

            /* renamed from: b, reason: collision with root package name */
            public final long f902b;
            public final Person c;
            public final Bundle d;
            public String e;
            public Uri f;

            public Message(@Nullable CharSequence charSequence, long j, @Nullable Person person) {
                this.d = new Bundle();
                this.f901a = charSequence;
                this.f902b = j;
                this.c = person;
            }

            @Deprecated
            public Message(@Nullable CharSequence charSequence, long j, @Nullable CharSequence charSequence2) {
                this(charSequence, j, new Person.Builder().setName(charSequence2).build());
            }

            @NonNull
            public Message setData(@Nullable String str, @Nullable Uri uri) {
                this.e = str;
                this.f = uri;
                return this;
            }

            @Nullable
            public CharSequence getText() {
                return this.f901a;
            }

            public long getTimestamp() {
                return this.f902b;
            }

            @NonNull
            public Bundle getExtras() {
                return this.d;
            }

            @Nullable
            @Deprecated
            public CharSequence getSender() {
                Person person = this.c;
                if (person == null) {
                    return null;
                }
                return person.getName();
            }

            @Nullable
            public Person getPerson() {
                return this.c;
            }

            @Nullable
            public String getDataMimeType() {
                return this.e;
            }

            @Nullable
            public Uri getDataUri() {
                return this.f;
            }

            public static Bundle[] a(ArrayList arrayList) {
                Bundle[] bundleArr = new Bundle[arrayList.size()];
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    Message message = (Message) arrayList.get(i);
                    message.getClass();
                    Bundle bundle = new Bundle();
                    CharSequence charSequence = message.f901a;
                    if (charSequence != null) {
                        bundle.putCharSequence(PropertyTypeConstants.PROPERTY_TYPE_TEXT, charSequence);
                    }
                    bundle.putLong("time", message.f902b);
                    Person person = message.c;
                    if (person != null) {
                        bundle.putCharSequence("sender", person.getName());
                        if (Build.VERSION.SDK_INT >= 28) {
                            bundle.putParcelable("sender_person", person.toAndroidPerson());
                        } else {
                            bundle.putBundle("person", person.toBundle());
                        }
                    }
                    String str = message.e;
                    if (str != null) {
                        bundle.putString("type", str);
                    }
                    Uri uri = message.f;
                    if (uri != null) {
                        bundle.putParcelable("uri", uri);
                    }
                    Bundle bundle2 = message.d;
                    if (bundle2 != null) {
                        bundle.putBundle("extras", bundle2);
                    }
                    bundleArr[i] = bundle;
                }
                return bundleArr;
            }

            public static ArrayList b(Parcelable[] parcelableArr) {
                Person personBuild;
                ArrayList arrayList = new ArrayList(parcelableArr.length);
                for (Parcelable parcelable : parcelableArr) {
                    if (parcelable instanceof Bundle) {
                        Bundle bundle = (Bundle) parcelable;
                        Message message = null;
                        try {
                            if (bundle.containsKey(PropertyTypeConstants.PROPERTY_TYPE_TEXT) && bundle.containsKey("time")) {
                                if (bundle.containsKey("person")) {
                                    personBuild = Person.fromBundle(bundle.getBundle("person"));
                                } else if (bundle.containsKey("sender_person") && Build.VERSION.SDK_INT >= 28) {
                                    personBuild = Person.fromAndroidPerson(androidx.core.app.f.f(bundle.getParcelable("sender_person")));
                                } else {
                                    personBuild = bundle.containsKey("sender") ? new Person.Builder().setName(bundle.getCharSequence("sender")).build() : null;
                                }
                                Message message2 = new Message(bundle.getCharSequence(PropertyTypeConstants.PROPERTY_TYPE_TEXT), bundle.getLong("time"), personBuild);
                                if (bundle.containsKey("type") && bundle.containsKey("uri")) {
                                    message2.setData(bundle.getString("type"), (Uri) bundle.getParcelable("uri"));
                                }
                                if (bundle.containsKey("extras")) {
                                    message2.getExtras().putAll(bundle.getBundle("extras"));
                                }
                                message = message2;
                            }
                        } catch (ClassCastException unused) {
                        }
                        if (message != null) {
                            arrayList.add(message);
                        }
                    }
                }
                return arrayList;
            }

            public final Notification.MessagingStyle.Message c() {
                Notification.MessagingStyle.Message messageA;
                Person person = getPerson();
                if (Build.VERSION.SDK_INT >= 28) {
                    messageA = b.a(getText(), getTimestamp(), person != null ? person.toAndroidPerson() : null);
                } else {
                    messageA = a.a(getText(), getTimestamp(), person != null ? person.getName() : null);
                }
                if (getDataMimeType() != null) {
                    a.b(messageA, getDataMimeType(), getDataUri());
                }
                return messageA;
            }

            @RequiresApi(24)
            public static class a {
                private a() {
                }

                @DoNotInline
                public static Notification.MessagingStyle.Message a(CharSequence charSequence, long j, CharSequence charSequence2) {
                    return new Notification.MessagingStyle.Message(charSequence, j, charSequence2);
                }

                @DoNotInline
                public static Notification.MessagingStyle.Message b(Notification.MessagingStyle.Message message, String str, Uri uri) {
                    return message.setData(str, uri);
                }
            }

            @RequiresApi(28)
            public static class b {
                private b() {
                }

                @DoNotInline
                public static Notification.MessagingStyle.Message a(CharSequence charSequence, long j, android.app.Person person) {
                    return new Notification.MessagingStyle.Message(charSequence, j, person);
                }
            }
        }

        @RequiresApi(16)
        public static class a {
            private a() {
            }

            @DoNotInline
            public static void d(Notification.Style style, Notification.Builder builder) {
                style.setBuilder(builder);
            }

            @DoNotInline
            public static Notification.BigTextStyle b(Notification.Builder builder) {
                return new Notification.BigTextStyle(builder);
            }

            @DoNotInline
            public static Notification.BigTextStyle c(Notification.BigTextStyle bigTextStyle, CharSequence charSequence) {
                return bigTextStyle.setBigContentTitle(charSequence);
            }

            @DoNotInline
            public static Notification.BigTextStyle a(Notification.BigTextStyle bigTextStyle, CharSequence charSequence) {
                return bigTextStyle.bigText(charSequence);
            }
        }

        @RequiresApi(24)
        public static class b {
            private b() {
            }

            @DoNotInline
            public static Notification.MessagingStyle b(CharSequence charSequence) {
                return new Notification.MessagingStyle(charSequence);
            }

            @DoNotInline
            public static Notification.MessagingStyle a(Notification.MessagingStyle messagingStyle, Notification.MessagingStyle.Message message) {
                return messagingStyle.addMessage(message);
            }

            @DoNotInline
            public static Notification.MessagingStyle c(Notification.MessagingStyle messagingStyle, CharSequence charSequence) {
                return messagingStyle.setConversationTitle(charSequence);
            }
        }

        @RequiresApi(26)
        public static class c {
            private c() {
            }

            @DoNotInline
            public static Notification.MessagingStyle a(Notification.MessagingStyle messagingStyle, Notification.MessagingStyle.Message message) {
                return messagingStyle.addHistoricMessage(message);
            }
        }

        @RequiresApi(28)
        public static class d {
            private d() {
            }

            @DoNotInline
            public static Notification.MessagingStyle a(android.app.Person person) {
                return new Notification.MessagingStyle(person);
            }

            @DoNotInline
            public static Notification.MessagingStyle b(Notification.MessagingStyle messagingStyle, boolean z) {
                return messagingStyle.setGroupConversation(z);
            }
        }
    }

    public static class CallStyle extends Style {
        public static final int CALL_TYPE_INCOMING = 1;
        public static final int CALL_TYPE_ONGOING = 2;
        public static final int CALL_TYPE_SCREENING = 3;
        public static final int CALL_TYPE_UNKNOWN = 0;
        public int d;
        public Person e;
        public PendingIntent f;

        /* renamed from: g, reason: collision with root package name */
        public PendingIntent f893g;
        public PendingIntent h;
        public boolean i;
        public Integer j;
        public Integer k;
        public IconCompat l;
        public CharSequence m;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public @interface CallType {
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public boolean displayCustomViewInline() {
            return true;
        }

        public CallStyle() {
        }

        public CallStyle(@Nullable Builder builder) {
            setBuilder(builder);
        }

        @NonNull
        public static CallStyle forIncomingCall(@NonNull Person person, @NonNull PendingIntent pendingIntent, @NonNull PendingIntent pendingIntent2) {
            Objects.requireNonNull(pendingIntent, "declineIntent is required");
            Objects.requireNonNull(pendingIntent2, "answerIntent is required");
            return new CallStyle(1, person, null, pendingIntent, pendingIntent2);
        }

        @NonNull
        public static CallStyle forOngoingCall(@NonNull Person person, @NonNull PendingIntent pendingIntent) {
            Objects.requireNonNull(pendingIntent, "hangUpIntent is required");
            return new CallStyle(2, person, pendingIntent, null, null);
        }

        @NonNull
        public static CallStyle forScreeningCall(@NonNull Person person, @NonNull PendingIntent pendingIntent, @NonNull PendingIntent pendingIntent2) {
            Objects.requireNonNull(pendingIntent, "hangUpIntent is required");
            Objects.requireNonNull(pendingIntent2, "answerIntent is required");
            return new CallStyle(3, person, pendingIntent, null, pendingIntent2);
        }

        public CallStyle(int i, Person person, PendingIntent pendingIntent, PendingIntent pendingIntent2, PendingIntent pendingIntent3) {
            if (person == null || TextUtils.isEmpty(person.getName())) {
                throw new IllegalArgumentException("person must have a non-empty a name");
            }
            this.d = i;
            this.e = person;
            this.f = pendingIntent3;
            this.f893g = pendingIntent2;
            this.h = pendingIntent;
        }

        @NonNull
        public CallStyle setIsVideo(boolean z) {
            this.i = z;
            return this;
        }

        @NonNull
        @RequiresApi(23)
        public CallStyle setVerificationIcon(@Nullable Icon icon) {
            this.l = icon == null ? null : IconCompat.createFromIcon(icon);
            return this;
        }

        @NonNull
        public CallStyle setVerificationIcon(@Nullable Bitmap bitmap) {
            this.l = IconCompat.createWithBitmap(bitmap);
            return this;
        }

        @NonNull
        public CallStyle setVerificationText(@Nullable CharSequence charSequence) {
            this.m = charSequence;
            return this;
        }

        @NonNull
        public CallStyle setAnswerButtonColorHint(@ColorInt int i) {
            this.j = Integer.valueOf(i);
            return this;
        }

        @NonNull
        public CallStyle setDeclineButtonColorHint(@ColorInt int i) {
            this.k = Integer.valueOf(i);
            return this;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void restoreFromCompatExtras(@NonNull Bundle bundle) {
            super.restoreFromCompatExtras(bundle);
            this.d = bundle.getInt(NotificationCompat.EXTRA_CALL_TYPE);
            this.i = bundle.getBoolean(NotificationCompat.EXTRA_CALL_IS_VIDEO);
            int i = Build.VERSION.SDK_INT;
            if (i >= 28 && bundle.containsKey(NotificationCompat.EXTRA_CALL_PERSON)) {
                this.e = Person.fromAndroidPerson(androidx.core.app.f.f(bundle.getParcelable(NotificationCompat.EXTRA_CALL_PERSON)));
            } else if (bundle.containsKey(NotificationCompat.EXTRA_CALL_PERSON_COMPAT)) {
                this.e = Person.fromBundle(bundle.getBundle(NotificationCompat.EXTRA_CALL_PERSON_COMPAT));
            }
            if (i >= 23 && bundle.containsKey(NotificationCompat.EXTRA_VERIFICATION_ICON)) {
                this.l = IconCompat.createFromIcon(m.f(bundle.getParcelable(NotificationCompat.EXTRA_VERIFICATION_ICON)));
            } else if (bundle.containsKey(NotificationCompat.EXTRA_VERIFICATION_ICON_COMPAT)) {
                this.l = IconCompat.createFromBundle(bundle.getBundle(NotificationCompat.EXTRA_VERIFICATION_ICON_COMPAT));
            }
            this.m = bundle.getCharSequence(NotificationCompat.EXTRA_VERIFICATION_TEXT);
            this.f = (PendingIntent) bundle.getParcelable(NotificationCompat.EXTRA_ANSWER_INTENT);
            this.f893g = (PendingIntent) bundle.getParcelable(NotificationCompat.EXTRA_DECLINE_INTENT);
            this.h = (PendingIntent) bundle.getParcelable(NotificationCompat.EXTRA_HANG_UP_INTENT);
            this.j = bundle.containsKey(NotificationCompat.EXTRA_ANSWER_COLOR) ? Integer.valueOf(bundle.getInt(NotificationCompat.EXTRA_ANSWER_COLOR)) : null;
            this.k = bundle.containsKey(NotificationCompat.EXTRA_DECLINE_COLOR) ? Integer.valueOf(bundle.getInt(NotificationCompat.EXTRA_DECLINE_COLOR)) : null;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void addCompatExtras(@NonNull Bundle bundle) {
            super.addCompatExtras(bundle);
            bundle.putInt(NotificationCompat.EXTRA_CALL_TYPE, this.d);
            bundle.putBoolean(NotificationCompat.EXTRA_CALL_IS_VIDEO, this.i);
            Person person = this.e;
            if (person != null) {
                if (Build.VERSION.SDK_INT >= 28) {
                    bundle.putParcelable(NotificationCompat.EXTRA_CALL_PERSON, person.toAndroidPerson());
                } else {
                    bundle.putParcelable(NotificationCompat.EXTRA_CALL_PERSON_COMPAT, person.toBundle());
                }
            }
            IconCompat iconCompat = this.l;
            if (iconCompat != null) {
                if (Build.VERSION.SDK_INT >= 23) {
                    bundle.putParcelable(NotificationCompat.EXTRA_VERIFICATION_ICON, iconCompat.toIcon(this.mBuilder.mContext));
                } else {
                    bundle.putParcelable(NotificationCompat.EXTRA_VERIFICATION_ICON_COMPAT, iconCompat.toBundle());
                }
            }
            bundle.putCharSequence(NotificationCompat.EXTRA_VERIFICATION_TEXT, this.m);
            bundle.putParcelable(NotificationCompat.EXTRA_ANSWER_INTENT, this.f);
            bundle.putParcelable(NotificationCompat.EXTRA_DECLINE_INTENT, this.f893g);
            bundle.putParcelable(NotificationCompat.EXTRA_HANG_UP_INTENT, this.h);
            Integer num = this.j;
            if (num != null) {
                bundle.putInt(NotificationCompat.EXTRA_ANSWER_COLOR, num.intValue());
            }
            Integer num2 = this.k;
            if (num2 != null) {
                bundle.putInt(NotificationCompat.EXTRA_DECLINE_COLOR, num2.intValue());
            }
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public String getClassName() {
            return "androidx.core.app.NotificationCompat$CallStyle";
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) throws Resources.NotFoundException {
            Notification.Action.Builder builderE;
            Bundle bundle;
            String string;
            int i = Build.VERSION.SDK_INT;
            Notification.CallStyle callStyleA = null;
            if (i >= 31) {
                int i2 = this.d;
                if (i2 == 1) {
                    callStyleA = g.a(this.e.toAndroidPerson(), this.f893g, this.f);
                } else if (i2 == 2) {
                    callStyleA = g.b(this.e.toAndroidPerson(), this.h);
                } else if (i2 == 3) {
                    callStyleA = g.c(this.e.toAndroidPerson(), this.h, this.f);
                } else if (Log.isLoggable("NotifCompat", 3)) {
                    Log.d("NotifCompat", "Unrecognized call type in CallStyle: " + String.valueOf(this.d));
                }
                if (callStyleA != null) {
                    e.a(notificationBuilderWithBuilderAccessor.getBuilder());
                    a.a(callStyleA, notificationBuilderWithBuilderAccessor.getBuilder());
                    Integer num = this.j;
                    if (num != null) {
                        g.d(callStyleA, num.intValue());
                    }
                    Integer num2 = this.k;
                    if (num2 != null) {
                        g.f(callStyleA, num2.intValue());
                    }
                    g.i(callStyleA, this.m);
                    IconCompat iconCompat = this.l;
                    if (iconCompat != null) {
                        g.h(callStyleA, iconCompat.toIcon(this.mBuilder.mContext));
                    }
                    g.g(callStyleA, this.i);
                    return;
                }
                return;
            }
            Notification.Builder builder = notificationBuilderWithBuilderAccessor.getBuilder();
            Person person = this.e;
            builder.setContentTitle(person != null ? person.getName() : null);
            Bundle bundle2 = this.mBuilder.B;
            CharSequence charSequence = (bundle2 == null || !bundle2.containsKey(NotificationCompat.EXTRA_TEXT)) ? null : this.mBuilder.B.getCharSequence(NotificationCompat.EXTRA_TEXT);
            if (charSequence == null) {
                int i3 = this.d;
                if (i3 == 1) {
                    string = this.mBuilder.mContext.getResources().getString(R.string.call_notification_incoming_text);
                } else if (i3 == 2) {
                    string = this.mBuilder.mContext.getResources().getString(R.string.call_notification_ongoing_text);
                } else if (i3 != 3) {
                    charSequence = null;
                } else {
                    string = this.mBuilder.mContext.getResources().getString(R.string.call_notification_screening_text);
                }
                charSequence = string;
            }
            builder.setContentText(charSequence);
            Person person2 = this.e;
            if (person2 != null) {
                if (i >= 23 && person2.getIcon() != null) {
                    d.b(builder, this.e.getIcon().toIcon(this.mBuilder.mContext));
                }
                if (i >= 28) {
                    f.a(builder, this.e.toAndroidPerson());
                } else {
                    c.a(builder, this.e.getUri());
                }
            }
            ArrayList<Action> actionsListWithSystemActions = getActionsListWithSystemActions();
            if (i >= 24) {
                e.a(builder);
            }
            for (Action action : actionsListWithSystemActions) {
                int i4 = Build.VERSION.SDK_INT;
                if (i4 >= 23) {
                    IconCompat iconCompat2 = action.getIconCompat();
                    builderE = d.a(iconCompat2 == null ? null : iconCompat2.toIcon(), action.getTitle(), action.getActionIntent());
                } else {
                    IconCompat iconCompat3 = action.getIconCompat();
                    builderE = b.e((iconCompat3 == null || iconCompat3.getType() != 2) ? 0 : iconCompat3.getResId(), action.getTitle(), action.getActionIntent());
                }
                if (action.getExtras() != null) {
                    bundle = new Bundle(action.getExtras());
                } else {
                    bundle = new Bundle();
                }
                bundle.putBoolean("android.support.allowGeneratedReplies", action.getAllowGeneratedReplies());
                if (i4 >= 24) {
                    e.b(builderE, action.getAllowGeneratedReplies());
                }
                if (i4 >= 31) {
                    g.e(builderE, action.isAuthenticationRequired());
                }
                b.b(builderE, bundle);
                RemoteInput[] remoteInputs = action.getRemoteInputs();
                if (remoteInputs != null) {
                    for (android.app.RemoteInput remoteInput : RemoteInput.a(remoteInputs)) {
                        b.c(builderE, remoteInput);
                    }
                }
                b.a(builder, b.d(builderE));
            }
            c.b(builder, NotificationCompat.CATEGORY_CALL);
        }

        @NonNull
        @RequiresApi(20)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public ArrayList<Action> getActionsListWithSystemActions() {
            CallStyle callStyle;
            Action actionC;
            int i;
            CallStyle callStyle2;
            Action actionC2;
            int i2 = R.drawable.ic_call_decline;
            PendingIntent pendingIntent = this.f893g;
            if (pendingIntent == null) {
                callStyle = this;
                actionC = callStyle.c(i2, R.string.call_notification_hang_up_action, this.k, R.color.call_notification_decline_color, this.h);
            } else {
                callStyle = this;
                actionC = callStyle.c(i2, R.string.call_notification_decline_action, callStyle.k, R.color.call_notification_decline_color, pendingIntent);
            }
            int i3 = R.drawable.ic_call_answer_video;
            int i4 = R.drawable.ic_call_answer;
            PendingIntent pendingIntent2 = callStyle.f;
            if (pendingIntent2 == null) {
                callStyle2 = callStyle;
                actionC2 = null;
            } else {
                boolean z = callStyle.i;
                if (z) {
                    i4 = i3;
                }
                if (z) {
                    i = R.string.call_notification_answer_video_action;
                } else {
                    i = R.string.call_notification_answer_action;
                }
                int i5 = i;
                callStyle2 = callStyle;
                actionC2 = callStyle2.c(i4, i5, callStyle.j, R.color.call_notification_answer_color, pendingIntent2);
            }
            ArrayList<Action> arrayList = new ArrayList<>(3);
            arrayList.add(actionC);
            ArrayList<Action> arrayList2 = callStyle2.mBuilder.mActions;
            int i6 = 2;
            if (arrayList2 != null) {
                for (Action action : arrayList2) {
                    if (!action.isContextual()) {
                        if (!action.getExtras().getBoolean("key_action_priority") && i6 > 1) {
                            arrayList.add(action);
                            i6--;
                        }
                    } else {
                        arrayList.add(action);
                    }
                    if (actionC2 != null && i6 == 1) {
                        arrayList.add(actionC2);
                        i6--;
                    }
                }
            }
            if (actionC2 != null && i6 >= 1) {
                arrayList.add(actionC2);
            }
            return arrayList;
        }

        public final Action c(int i, int i2, Integer num, int i3, PendingIntent pendingIntent) {
            if (num == null) {
                num = Integer.valueOf(ContextCompat.getColor(this.mBuilder.mContext, i3));
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) this.mBuilder.mContext.getResources().getString(i2));
            spannableStringBuilder.setSpan(new ForegroundColorSpan(num.intValue()), 0, spannableStringBuilder.length(), 18);
            Action actionBuild = new Action.Builder(IconCompat.createWithResource(this.mBuilder.mContext, i), spannableStringBuilder, pendingIntent).build();
            actionBuild.getExtras().putBoolean("key_action_priority", true);
            return actionBuild;
        }

        @RequiresApi(16)
        public static class a {
            private a() {
            }

            @DoNotInline
            public static void a(Notification.CallStyle callStyle, Notification.Builder builder) {
                callStyle.setBuilder(builder);
            }
        }

        @RequiresApi(20)
        public static class b {
            private b() {
            }

            @DoNotInline
            public static Notification.Builder a(Notification.Builder builder, Notification.Action action) {
                return builder.addAction(action);
            }

            @DoNotInline
            public static Notification.Action d(Notification.Action.Builder builder) {
                return builder.build();
            }

            @DoNotInline
            public static Notification.Action.Builder e(int i, CharSequence charSequence, PendingIntent pendingIntent) {
                return new Notification.Action.Builder(i, charSequence, pendingIntent);
            }

            @DoNotInline
            public static Notification.Action.Builder b(Notification.Action.Builder builder, Bundle bundle) {
                return builder.addExtras(bundle);
            }

            @DoNotInline
            public static Notification.Action.Builder c(Notification.Action.Builder builder, android.app.RemoteInput remoteInput) {
                return builder.addRemoteInput(remoteInput);
            }
        }

        @RequiresApi(21)
        public static class c {
            private c() {
            }

            @DoNotInline
            public static Notification.Builder a(Notification.Builder builder, String str) {
                return builder.addPerson(str);
            }

            @DoNotInline
            public static Notification.Builder b(Notification.Builder builder, String str) {
                return builder.setCategory(str);
            }
        }

        @RequiresApi(23)
        public static class d {
            private d() {
            }

            @DoNotInline
            public static void b(Notification.Builder builder, Icon icon) {
                builder.setLargeIcon(icon);
            }

            @DoNotInline
            public static Notification.Action.Builder a(Icon icon, CharSequence charSequence, PendingIntent pendingIntent) {
                return new Notification.Action.Builder(icon, charSequence, pendingIntent);
            }
        }

        @RequiresApi(24)
        public static class e {
            private e() {
            }

            @DoNotInline
            public static Notification.Builder a(Notification.Builder builder) {
                return builder.setActions(new Notification.Action[0]);
            }

            @DoNotInline
            public static Notification.Action.Builder b(Notification.Action.Builder builder, boolean z) {
                return builder.setAllowGeneratedReplies(z);
            }
        }

        @RequiresApi(28)
        public static class f {
            private f() {
            }

            @DoNotInline
            public static Notification.Builder a(Notification.Builder builder, android.app.Person person) {
                return builder.addPerson(person);
            }
        }

        @RequiresApi(31)
        public static class g {
            private g() {
            }

            @DoNotInline
            public static Notification.CallStyle a(@NonNull android.app.Person person, @NonNull PendingIntent pendingIntent, @NonNull PendingIntent pendingIntent2) {
                return Notification.CallStyle.forIncomingCall(person, pendingIntent, pendingIntent2);
            }

            @DoNotInline
            public static Notification.CallStyle b(@NonNull android.app.Person person, @NonNull PendingIntent pendingIntent) {
                return Notification.CallStyle.forOngoingCall(person, pendingIntent);
            }

            @DoNotInline
            public static Notification.CallStyle c(@NonNull android.app.Person person, @NonNull PendingIntent pendingIntent, @NonNull PendingIntent pendingIntent2) {
                return Notification.CallStyle.forScreeningCall(person, pendingIntent, pendingIntent2);
            }

            @DoNotInline
            public static Notification.CallStyle g(Notification.CallStyle callStyle, boolean z) {
                return callStyle.setIsVideo(z);
            }

            @DoNotInline
            public static Notification.CallStyle h(Notification.CallStyle callStyle, @Nullable Icon icon) {
                return callStyle.setVerificationIcon(icon);
            }

            @DoNotInline
            public static Notification.CallStyle i(Notification.CallStyle callStyle, @Nullable CharSequence charSequence) {
                return callStyle.setVerificationText(charSequence);
            }

            @DoNotInline
            public static Notification.CallStyle d(Notification.CallStyle callStyle, @ColorInt int i) {
                return callStyle.setAnswerButtonColorHint(i);
            }

            @DoNotInline
            public static Notification.CallStyle f(Notification.CallStyle callStyle, @ColorInt int i) {
                return callStyle.setDeclineButtonColorHint(i);
            }

            @DoNotInline
            public static Notification.Action.Builder e(Notification.Action.Builder builder, boolean z) {
                return builder.setAuthenticationRequired(z);
            }
        }
    }

    public static class InboxStyle extends Style {
        public final ArrayList d = new ArrayList();

        public InboxStyle() {
        }

        public InboxStyle(@Nullable Builder builder) {
            setBuilder(builder);
        }

        @NonNull
        public InboxStyle setBigContentTitle(@Nullable CharSequence charSequence) {
            this.f903a = Builder.limitCharSequenceLength(charSequence);
            return this;
        }

        @NonNull
        public InboxStyle setSummaryText(@Nullable CharSequence charSequence) {
            this.f904b = Builder.limitCharSequenceLength(charSequence);
            this.c = true;
            return this;
        }

        @NonNull
        public InboxStyle addLine(@Nullable CharSequence charSequence) {
            if (charSequence != null) {
                this.d.add(Builder.limitCharSequenceLength(charSequence));
            }
            return this;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public String getClassName() {
            return "androidx.core.app.NotificationCompat$InboxStyle";
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            Notification.InboxStyle inboxStyleC = a.c(a.b(notificationBuilderWithBuilderAccessor.getBuilder()), this.f903a);
            if (this.c) {
                a.d(inboxStyleC, this.f904b);
            }
            Iterator it = this.d.iterator();
            while (it.hasNext()) {
                a.a(inboxStyleC, (CharSequence) it.next());
            }
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void restoreFromCompatExtras(@NonNull Bundle bundle) {
            super.restoreFromCompatExtras(bundle);
            ArrayList arrayList = this.d;
            arrayList.clear();
            if (bundle.containsKey(NotificationCompat.EXTRA_TEXT_LINES)) {
                Collections.addAll(arrayList, bundle.getCharSequenceArray(NotificationCompat.EXTRA_TEXT_LINES));
            }
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void clearCompatExtraKeys(@NonNull Bundle bundle) {
            super.clearCompatExtraKeys(bundle);
            bundle.remove(NotificationCompat.EXTRA_TEXT_LINES);
        }

        @RequiresApi(16)
        public static class a {
            private a() {
            }

            @DoNotInline
            public static Notification.InboxStyle b(Notification.Builder builder) {
                return new Notification.InboxStyle(builder);
            }

            @DoNotInline
            public static Notification.InboxStyle c(Notification.InboxStyle inboxStyle, CharSequence charSequence) {
                return inboxStyle.setBigContentTitle(charSequence);
            }

            @DoNotInline
            public static Notification.InboxStyle d(Notification.InboxStyle inboxStyle, CharSequence charSequence) {
                return inboxStyle.setSummaryText(charSequence);
            }

            @DoNotInline
            public static Notification.InboxStyle a(Notification.InboxStyle inboxStyle, CharSequence charSequence) {
                return inboxStyle.addLine(charSequence);
            }
        }
    }

    public static class DecoratedCustomViewStyle extends Style {
        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public boolean displayCustomViewInline() {
            return true;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public String getClassName() {
            return "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle";
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 24) {
                b.a(notificationBuilderWithBuilderAccessor.getBuilder(), c.a());
            }
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public RemoteViews makeContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT < 24 && this.mBuilder.getContentView() != null) {
                return c(this.mBuilder.getContentView(), false);
            }
            return null;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public RemoteViews makeBigContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 24) {
                return null;
            }
            RemoteViews bigContentView = this.mBuilder.getBigContentView();
            if (bigContentView == null) {
                bigContentView = this.mBuilder.getContentView();
            }
            if (bigContentView == null) {
                return null;
            }
            return c(bigContentView, true);
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public RemoteViews makeHeadsUpContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 24) {
                return null;
            }
            RemoteViews headsUpContentView = this.mBuilder.getHeadsUpContentView();
            RemoteViews contentView = headsUpContentView != null ? headsUpContentView : this.mBuilder.getContentView();
            if (headsUpContentView == null) {
                return null;
            }
            return c(contentView, true);
        }

        public final RemoteViews c(RemoteViews remoteViews, boolean z) throws Resources.NotFoundException {
            ArrayList arrayList;
            int iMin;
            int i;
            int i2 = 0;
            RemoteViews remoteViewsApplyStandardTemplate = applyStandardTemplate(true, R.layout.notification_template_custom_big, false);
            remoteViewsApplyStandardTemplate.removeAllViews(R.id.actions);
            ArrayList<Action> arrayList2 = this.mBuilder.mActions;
            if (arrayList2 == null) {
                arrayList = null;
            } else {
                ArrayList arrayList3 = new ArrayList();
                for (Action action : arrayList2) {
                    if (!action.isContextual()) {
                        arrayList3.add(action);
                    }
                }
                arrayList = arrayList3;
            }
            if (!z || arrayList == null || (iMin = Math.min(arrayList.size(), 3)) <= 0) {
                i2 = 8;
            } else {
                for (int i3 = 0; i3 < iMin; i3++) {
                    Action action2 = (Action) arrayList.get(i3);
                    boolean z2 = action2.actionIntent == null;
                    String packageName = this.mBuilder.mContext.getPackageName();
                    if (z2) {
                        i = R.layout.notification_action_tombstone;
                    } else {
                        i = R.layout.notification_action;
                    }
                    RemoteViews remoteViews2 = new RemoteViews(packageName, i);
                    IconCompat iconCompat = action2.getIconCompat();
                    if (iconCompat != null) {
                        remoteViews2.setImageViewBitmap(R.id.action_image, a(iconCompat, R.color.notification_action_color_filter, 0));
                    }
                    remoteViews2.setTextViewText(R.id.action_text, action2.title);
                    if (!z2) {
                        remoteViews2.setOnClickPendingIntent(R.id.action_container, action2.actionIntent);
                    }
                    a.a(remoteViews2, R.id.action_container, action2.title);
                    remoteViewsApplyStandardTemplate.addView(R.id.actions, remoteViews2);
                }
            }
            remoteViewsApplyStandardTemplate.setViewVisibility(R.id.actions, i2);
            remoteViewsApplyStandardTemplate.setViewVisibility(R.id.action_divider, i2);
            buildIntoRemoteViews(remoteViewsApplyStandardTemplate, remoteViews);
            return remoteViewsApplyStandardTemplate;
        }

        @RequiresApi(15)
        public static class a {
            private a() {
            }

            @DoNotInline
            public static void a(RemoteViews remoteViews, int i, CharSequence charSequence) {
                remoteViews.setContentDescription(i, charSequence);
            }
        }

        @RequiresApi(16)
        public static class b {
            private b() {
            }

            @DoNotInline
            public static Notification.Builder a(Notification.Builder builder, Object obj) {
                return builder.setStyle((Notification.Style) obj);
            }
        }

        @RequiresApi(24)
        public static class c {
            private c() {
            }

            @DoNotInline
            public static Notification.DecoratedCustomViewStyle a() {
                return new Notification.DecoratedCustomViewStyle();
            }
        }
    }

    public static class Action {
        public static final int SEMANTIC_ACTION_ARCHIVE = 5;
        public static final int SEMANTIC_ACTION_CALL = 10;
        public static final int SEMANTIC_ACTION_DELETE = 4;
        public static final int SEMANTIC_ACTION_MARK_AS_READ = 2;
        public static final int SEMANTIC_ACTION_MARK_AS_UNREAD = 3;
        public static final int SEMANTIC_ACTION_MUTE = 6;
        public static final int SEMANTIC_ACTION_NONE = 0;
        public static final int SEMANTIC_ACTION_REPLY = 1;
        public static final int SEMANTIC_ACTION_THUMBS_DOWN = 9;
        public static final int SEMANTIC_ACTION_THUMBS_UP = 8;
        public static final int SEMANTIC_ACTION_UNMUTE = 7;

        /* renamed from: a, reason: collision with root package name */
        public final Bundle f875a;

        @Nullable
        public PendingIntent actionIntent;

        /* renamed from: b, reason: collision with root package name */
        public IconCompat f876b;
        public final RemoteInput[] c;
        public final RemoteInput[] d;
        public final boolean e;
        public final boolean f;

        /* renamed from: g, reason: collision with root package name */
        public final int f877g;
        public final boolean h;
        public final boolean i;

        @Deprecated
        public int icon;
        public CharSequence title;

        public interface Extender {
            @NonNull
            Builder extend(@NonNull Builder builder);
        }

        @Retention(RetentionPolicy.SOURCE)
        public @interface SemanticAction {
        }

        public Action(int i, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent) {
            this(i != 0 ? IconCompat.createWithResource(null, "", i) : null, charSequence, pendingIntent);
        }

        public Action(@Nullable IconCompat iconCompat, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent) {
            this(iconCompat, charSequence, pendingIntent, new Bundle(), (RemoteInput[]) null, (RemoteInput[]) null, true, 0, true, false, false);
        }

        public Action(int i, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, RemoteInput[] remoteInputArr, RemoteInput[] remoteInputArr2, boolean z, int i2, boolean z2, boolean z3, boolean z4) {
            this(i != 0 ? IconCompat.createWithResource(null, "", i) : null, charSequence, pendingIntent, bundle, remoteInputArr, remoteInputArr2, z, i2, z2, z3, z4);
        }

        public Action(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, RemoteInput[] remoteInputArr, RemoteInput[] remoteInputArr2, boolean z, int i, boolean z2, boolean z3, boolean z4) {
            this.f = true;
            this.f876b = iconCompat;
            if (iconCompat != null && iconCompat.getType() == 2) {
                this.icon = iconCompat.getResId();
            }
            this.title = Builder.limitCharSequenceLength(charSequence);
            this.actionIntent = pendingIntent;
            this.f875a = bundle == null ? new Bundle() : bundle;
            this.c = remoteInputArr;
            this.d = remoteInputArr2;
            this.e = z;
            this.f877g = i;
            this.f = z2;
            this.h = z3;
            this.i = z4;
        }

        @Deprecated
        public int getIcon() {
            return this.icon;
        }

        @Nullable
        public IconCompat getIconCompat() {
            int i;
            if (this.f876b == null && (i = this.icon) != 0) {
                this.f876b = IconCompat.createWithResource(null, "", i);
            }
            return this.f876b;
        }

        @Nullable
        public CharSequence getTitle() {
            return this.title;
        }

        @Nullable
        public PendingIntent getActionIntent() {
            return this.actionIntent;
        }

        @NonNull
        public Bundle getExtras() {
            return this.f875a;
        }

        public boolean getAllowGeneratedReplies() {
            return this.e;
        }

        public boolean isAuthenticationRequired() {
            return this.i;
        }

        @Nullable
        public RemoteInput[] getRemoteInputs() {
            return this.c;
        }

        public int getSemanticAction() {
            return this.f877g;
        }

        public boolean isContextual() {
            return this.h;
        }

        @Nullable
        public RemoteInput[] getDataOnlyRemoteInputs() {
            return this.d;
        }

        public boolean getShowsUserInterface() {
            return this.f;
        }

        public static final class Builder {

            /* renamed from: a, reason: collision with root package name */
            public final IconCompat f878a;

            /* renamed from: b, reason: collision with root package name */
            public final CharSequence f879b;
            public final PendingIntent c;
            public boolean d;
            public final Bundle e;
            public ArrayList f;

            /* renamed from: g, reason: collision with root package name */
            public int f880g;
            public boolean h;
            public boolean i;
            public boolean j;

            @NonNull
            @RequiresApi(19)
            @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
            public static Builder fromAndroidAction(@NonNull Notification.Action action) {
                Builder builder;
                Set<String> setB;
                if (Build.VERSION.SDK_INT >= 23 && b.a(action) != null) {
                    builder = new Builder(IconCompat.createFromIconOrNullIfZeroResId(b.a(action)), action.title, action.actionIntent);
                } else {
                    builder = new Builder(action.icon, action.title, action.actionIntent);
                }
                android.app.RemoteInput[] remoteInputArrA = a.a(action);
                if (remoteInputArrA != null && remoteInputArrA.length != 0) {
                    for (android.app.RemoteInput remoteInput : remoteInputArrA) {
                        RemoteInput.Builder builderAddExtras = new RemoteInput.Builder(remoteInput.getResultKey()).setLabel(remoteInput.getLabel()).setChoices(remoteInput.getChoices()).setAllowFreeFormInput(remoteInput.getAllowFreeFormInput()).addExtras(remoteInput.getExtras());
                        if (Build.VERSION.SDK_INT >= 26 && (setB = RemoteInput.c.b(remoteInput)) != null) {
                            Iterator<String> it = setB.iterator();
                            while (it.hasNext()) {
                                builderAddExtras.setAllowDataType(it.next(), true);
                            }
                        }
                        if (Build.VERSION.SDK_INT >= 29) {
                            builderAddExtras.setEditChoicesBeforeSending(RemoteInput.e.a(remoteInput));
                        }
                        builder.addRemoteInput(builderAddExtras.build());
                    }
                }
                int i = Build.VERSION.SDK_INT;
                if (i >= 24) {
                    builder.d = c.a(action);
                }
                if (i >= 28) {
                    builder.setSemanticAction(d.a(action));
                }
                if (i >= 29) {
                    builder.setContextual(e.a(action));
                }
                if (i >= 31) {
                    builder.setAuthenticationRequired(f.a(action));
                }
                return builder;
            }

            public Builder(@Nullable IconCompat iconCompat, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent) {
                this(iconCompat, charSequence, pendingIntent, new Bundle(), null, true, 0, true, false, false);
            }

            public Builder(int i, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent) {
                this(i != 0 ? IconCompat.createWithResource(null, "", i) : null, charSequence, pendingIntent, new Bundle(), null, true, 0, true, false, false);
            }

            public Builder(@NonNull Action action) {
                this(action.getIconCompat(), action.title, action.actionIntent, new Bundle(action.f875a), action.getRemoteInputs(), action.getAllowGeneratedReplies(), action.getSemanticAction(), action.f, action.isContextual(), action.isAuthenticationRequired());
            }

            public Builder(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, RemoteInput[] remoteInputArr, boolean z, int i, boolean z2, boolean z3, boolean z4) {
                this.d = true;
                this.h = true;
                this.f878a = iconCompat;
                this.f879b = Builder.limitCharSequenceLength(charSequence);
                this.c = pendingIntent;
                this.e = bundle;
                this.f = remoteInputArr == null ? null : new ArrayList(Arrays.asList(remoteInputArr));
                this.d = z;
                this.f880g = i;
                this.h = z2;
                this.i = z3;
                this.j = z4;
            }

            @NonNull
            public Builder addExtras(@Nullable Bundle bundle) {
                if (bundle != null) {
                    this.e.putAll(bundle);
                }
                return this;
            }

            @NonNull
            public Bundle getExtras() {
                return this.e;
            }

            @NonNull
            public Builder addRemoteInput(@Nullable RemoteInput remoteInput) {
                if (this.f == null) {
                    this.f = new ArrayList();
                }
                if (remoteInput != null) {
                    this.f.add(remoteInput);
                }
                return this;
            }

            @NonNull
            public Builder setAllowGeneratedReplies(boolean z) {
                this.d = z;
                return this;
            }

            @NonNull
            public Builder setSemanticAction(int i) {
                this.f880g = i;
                return this;
            }

            @NonNull
            public Builder setContextual(boolean z) {
                this.i = z;
                return this;
            }

            @NonNull
            public Builder setAuthenticationRequired(boolean z) {
                this.j = z;
                return this;
            }

            @NonNull
            public Builder setShowsUserInterface(boolean z) {
                this.h = z;
                return this;
            }

            @NonNull
            public Builder extend(@NonNull Extender extender) {
                extender.extend(this);
                return this;
            }

            @NonNull
            public Action build() {
                if (this.i && this.c == null) {
                    throw new NullPointerException("Contextual Actions must contain a valid PendingIntent");
                }
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = this.f;
                if (arrayList3 != null) {
                    Iterator it = arrayList3.iterator();
                    while (it.hasNext()) {
                        RemoteInput remoteInput = (RemoteInput) it.next();
                        if (remoteInput.isDataOnly()) {
                            arrayList.add(remoteInput);
                        } else {
                            arrayList2.add(remoteInput);
                        }
                    }
                }
                return new Action(this.f878a, this.f879b, this.c, this.e, arrayList2.isEmpty() ? null : (RemoteInput[]) arrayList2.toArray(new RemoteInput[arrayList2.size()]), arrayList.isEmpty() ? null : (RemoteInput[]) arrayList.toArray(new RemoteInput[arrayList.size()]), this.d, this.f880g, this.h, this.i, this.j);
            }

            @RequiresApi(20)
            public static class a {
                private a() {
                }

                @DoNotInline
                public static android.app.RemoteInput[] a(Notification.Action action) {
                    return action.getRemoteInputs();
                }
            }

            @RequiresApi(23)
            public static class b {
                private b() {
                }

                @DoNotInline
                public static Icon a(Notification.Action action) {
                    return action.getIcon();
                }
            }

            @RequiresApi(24)
            public static class c {
                private c() {
                }

                @DoNotInline
                public static boolean a(Notification.Action action) {
                    return action.getAllowGeneratedReplies();
                }
            }

            @RequiresApi(28)
            public static class d {
                private d() {
                }

                @DoNotInline
                public static int a(Notification.Action action) {
                    return action.getSemanticAction();
                }
            }

            @RequiresApi(29)
            public static class e {
                private e() {
                }

                @DoNotInline
                public static boolean a(Notification.Action action) {
                    return action.isContextual();
                }
            }

            @RequiresApi(31)
            public static class f {
                private f() {
                }

                @DoNotInline
                public static boolean a(Notification.Action action) {
                    return action.isAuthenticationRequired();
                }
            }
        }

        public static final class WearableExtender implements Extender {

            /* renamed from: a, reason: collision with root package name */
            public int f881a;

            /* renamed from: b, reason: collision with root package name */
            public CharSequence f882b;
            public CharSequence c;
            public CharSequence d;

            public WearableExtender() {
                this.f881a = 1;
            }

            public WearableExtender(@NonNull Action action) {
                this.f881a = 1;
                Bundle bundle = action.getExtras().getBundle("android.wearable.EXTENSIONS");
                if (bundle != null) {
                    this.f881a = bundle.getInt("flags", 1);
                    this.f882b = bundle.getCharSequence("inProgressLabel");
                    this.c = bundle.getCharSequence("confirmLabel");
                    this.d = bundle.getCharSequence("cancelLabel");
                }
            }

            @Override // androidx.core.app.NotificationCompat.Action.Extender
            @NonNull
            public Builder extend(@NonNull Builder builder) {
                Bundle bundle = new Bundle();
                int i = this.f881a;
                if (i != 1) {
                    bundle.putInt("flags", i);
                }
                CharSequence charSequence = this.f882b;
                if (charSequence != null) {
                    bundle.putCharSequence("inProgressLabel", charSequence);
                }
                CharSequence charSequence2 = this.c;
                if (charSequence2 != null) {
                    bundle.putCharSequence("confirmLabel", charSequence2);
                }
                CharSequence charSequence3 = this.d;
                if (charSequence3 != null) {
                    bundle.putCharSequence("cancelLabel", charSequence3);
                }
                builder.getExtras().putBundle("android.wearable.EXTENSIONS", bundle);
                return builder;
            }

            @NonNull
            /* renamed from: clone, reason: merged with bridge method [inline-methods] */
            public WearableExtender m3clone() {
                WearableExtender wearableExtender = new WearableExtender();
                wearableExtender.f881a = this.f881a;
                wearableExtender.f882b = this.f882b;
                wearableExtender.c = this.c;
                wearableExtender.d = this.d;
                return wearableExtender;
            }

            @NonNull
            public WearableExtender setAvailableOffline(boolean z) {
                a(1, z);
                return this;
            }

            public boolean isAvailableOffline() {
                return (this.f881a & 1) != 0;
            }

            public final void a(int i, boolean z) {
                if (z) {
                    this.f881a = i | this.f881a;
                } else {
                    this.f881a = (~i) & this.f881a;
                }
            }

            @NonNull
            @Deprecated
            public WearableExtender setInProgressLabel(@Nullable CharSequence charSequence) {
                this.f882b = charSequence;
                return this;
            }

            @Nullable
            @Deprecated
            public CharSequence getInProgressLabel() {
                return this.f882b;
            }

            @NonNull
            @Deprecated
            public WearableExtender setConfirmLabel(@Nullable CharSequence charSequence) {
                this.c = charSequence;
                return this;
            }

            @Nullable
            @Deprecated
            public CharSequence getConfirmLabel() {
                return this.c;
            }

            @NonNull
            @Deprecated
            public WearableExtender setCancelLabel(@Nullable CharSequence charSequence) {
                this.d = charSequence;
                return this;
            }

            @Nullable
            @Deprecated
            public CharSequence getCancelLabel() {
                return this.d;
            }

            @NonNull
            public WearableExtender setHintLaunchesActivity(boolean z) {
                a(2, z);
                return this;
            }

            public boolean getHintLaunchesActivity() {
                return (this.f881a & 2) != 0;
            }

            @NonNull
            public WearableExtender setHintDisplayActionInline(boolean z) {
                a(4, z);
                return this;
            }

            public boolean getHintDisplayActionInline() {
                return (this.f881a & 4) != 0;
            }
        }
    }

    public static final class WearableExtender implements Extender {

        @Deprecated
        public static final int SCREEN_TIMEOUT_LONG = -1;

        @Deprecated
        public static final int SCREEN_TIMEOUT_SHORT = 0;

        @Deprecated
        public static final int SIZE_DEFAULT = 0;

        @Deprecated
        public static final int SIZE_FULL_SCREEN = 5;

        @Deprecated
        public static final int SIZE_LARGE = 4;

        @Deprecated
        public static final int SIZE_MEDIUM = 3;

        @Deprecated
        public static final int SIZE_SMALL = 2;

        @Deprecated
        public static final int SIZE_XSMALL = 1;
        public static final int UNSET_ACTION_INDEX = -1;

        /* renamed from: a, reason: collision with root package name */
        public ArrayList f905a;

        /* renamed from: b, reason: collision with root package name */
        public int f906b;
        public PendingIntent c;
        public ArrayList d;
        public Bitmap e;
        public int f;

        /* renamed from: g, reason: collision with root package name */
        public int f907g;
        public int h;
        public int i;
        public int j;
        public int k;
        public int l;
        public String m;
        public String n;

        public WearableExtender() {
            this.f905a = new ArrayList();
            this.f906b = 1;
            this.d = new ArrayList();
            this.f907g = GravityCompat.END;
            this.h = -1;
            this.i = 0;
            this.k = 80;
        }

        public WearableExtender(@NonNull Notification notification) {
            Notification[] notificationArr;
            this.f905a = new ArrayList();
            this.f906b = 1;
            this.d = new ArrayList();
            this.f907g = GravityCompat.END;
            this.h = -1;
            this.i = 0;
            this.k = 80;
            Bundle extras = NotificationCompat.getExtras(notification);
            Bundle bundle = extras != null ? extras.getBundle("android.wearable.EXTENSIONS") : null;
            if (bundle != null) {
                ArrayList parcelableArrayList = bundle.getParcelableArrayList("actions");
                if (parcelableArrayList != null) {
                    int size = parcelableArrayList.size();
                    Action[] actionArr = new Action[size];
                    for (int i = 0; i < size; i++) {
                        actionArr[i] = a.getActionCompatFromAction(parcelableArrayList, i);
                    }
                    Collections.addAll(this.f905a, actionArr);
                }
                this.f906b = bundle.getInt("flags", 1);
                this.c = (PendingIntent) bundle.getParcelable("displayIntent");
                Parcelable[] parcelableArray = bundle.getParcelableArray("pages");
                if ((parcelableArray instanceof Notification[]) || parcelableArray == null) {
                    notificationArr = (Notification[]) parcelableArray;
                } else {
                    notificationArr = new Notification[parcelableArray.length];
                    for (int i2 = 0; i2 < parcelableArray.length; i2++) {
                        notificationArr[i2] = (Notification) parcelableArray[i2];
                    }
                    bundle.putParcelableArray("pages", notificationArr);
                }
                if (notificationArr != null) {
                    Collections.addAll(this.d, notificationArr);
                }
                this.e = (Bitmap) bundle.getParcelable("background");
                this.f = bundle.getInt("contentIcon");
                this.f907g = bundle.getInt("contentIconGravity", GravityCompat.END);
                this.h = bundle.getInt("contentActionIndex", -1);
                this.i = bundle.getInt("customSizePreset", 0);
                this.j = bundle.getInt("customContentHeight");
                this.k = bundle.getInt("gravity", 80);
                this.l = bundle.getInt("hintScreenTimeout");
                this.m = bundle.getString("dismissalId");
                this.n = bundle.getString("bridgeTag");
            }
        }

        @Override // androidx.core.app.NotificationCompat.Extender
        @NonNull
        public Builder extend(@NonNull Builder builder) {
            Notification.Action.Builder builderD;
            Bundle bundle;
            Bundle bundle2 = new Bundle();
            if (!this.f905a.isEmpty()) {
                ArrayList<? extends Parcelable> arrayList = new ArrayList<>(this.f905a.size());
                Iterator it = this.f905a.iterator();
                while (it.hasNext()) {
                    Action action = (Action) it.next();
                    int i = Build.VERSION.SDK_INT;
                    if (i >= 23) {
                        IconCompat iconCompat = action.getIconCompat();
                        builderD = b.a(iconCompat == null ? null : iconCompat.toIcon(), action.getTitle(), action.getActionIntent());
                    } else {
                        IconCompat iconCompat2 = action.getIconCompat();
                        builderD = a.d((iconCompat2 == null || iconCompat2.getType() != 2) ? 0 : iconCompat2.getResId(), action.getTitle(), action.getActionIntent());
                    }
                    if (action.getExtras() != null) {
                        bundle = new Bundle(action.getExtras());
                    } else {
                        bundle = new Bundle();
                    }
                    bundle.putBoolean("android.support.allowGeneratedReplies", action.getAllowGeneratedReplies());
                    if (i >= 24) {
                        c.a(builderD, action.getAllowGeneratedReplies());
                    }
                    if (i >= 31) {
                        d.a(builderD, action.isAuthenticationRequired());
                    }
                    a.a(builderD, bundle);
                    RemoteInput[] remoteInputs = action.getRemoteInputs();
                    if (remoteInputs != null) {
                        for (android.app.RemoteInput remoteInput : RemoteInput.a(remoteInputs)) {
                            a.b(builderD, remoteInput);
                        }
                    }
                    arrayList.add(a.c(builderD));
                }
                bundle2.putParcelableArrayList("actions", arrayList);
            }
            int i2 = this.f906b;
            if (i2 != 1) {
                bundle2.putInt("flags", i2);
            }
            PendingIntent pendingIntent = this.c;
            if (pendingIntent != null) {
                bundle2.putParcelable("displayIntent", pendingIntent);
            }
            if (!this.d.isEmpty()) {
                ArrayList arrayList2 = this.d;
                bundle2.putParcelableArray("pages", (Parcelable[]) arrayList2.toArray(new Notification[arrayList2.size()]));
            }
            Bitmap bitmap = this.e;
            if (bitmap != null) {
                bundle2.putParcelable("background", bitmap);
            }
            int i3 = this.f;
            if (i3 != 0) {
                bundle2.putInt("contentIcon", i3);
            }
            int i4 = this.f907g;
            if (i4 != 8388613) {
                bundle2.putInt("contentIconGravity", i4);
            }
            int i5 = this.h;
            if (i5 != -1) {
                bundle2.putInt("contentActionIndex", i5);
            }
            int i6 = this.i;
            if (i6 != 0) {
                bundle2.putInt("customSizePreset", i6);
            }
            int i7 = this.j;
            if (i7 != 0) {
                bundle2.putInt("customContentHeight", i7);
            }
            int i8 = this.k;
            if (i8 != 80) {
                bundle2.putInt("gravity", i8);
            }
            int i9 = this.l;
            if (i9 != 0) {
                bundle2.putInt("hintScreenTimeout", i9);
            }
            String str = this.m;
            if (str != null) {
                bundle2.putString("dismissalId", str);
            }
            String str2 = this.n;
            if (str2 != null) {
                bundle2.putString("bridgeTag", str2);
            }
            builder.getExtras().putBundle("android.wearable.EXTENSIONS", bundle2);
            return builder;
        }

        @NonNull
        /* renamed from: clone, reason: merged with bridge method [inline-methods] */
        public WearableExtender m4clone() {
            WearableExtender wearableExtender = new WearableExtender();
            wearableExtender.f905a = new ArrayList(this.f905a);
            wearableExtender.f906b = this.f906b;
            wearableExtender.c = this.c;
            wearableExtender.d = new ArrayList(this.d);
            wearableExtender.e = this.e;
            wearableExtender.f = this.f;
            wearableExtender.f907g = this.f907g;
            wearableExtender.h = this.h;
            wearableExtender.i = this.i;
            wearableExtender.j = this.j;
            wearableExtender.k = this.k;
            wearableExtender.l = this.l;
            wearableExtender.m = this.m;
            wearableExtender.n = this.n;
            return wearableExtender;
        }

        @NonNull
        public WearableExtender addAction(@NonNull Action action) {
            this.f905a.add(action);
            return this;
        }

        @NonNull
        public WearableExtender addActions(@NonNull List<Action> list) {
            this.f905a.addAll(list);
            return this;
        }

        @NonNull
        public WearableExtender clearActions() {
            this.f905a.clear();
            return this;
        }

        @NonNull
        public List<Action> getActions() {
            return this.f905a;
        }

        @NonNull
        @Deprecated
        public WearableExtender setDisplayIntent(@Nullable PendingIntent pendingIntent) {
            this.c = pendingIntent;
            return this;
        }

        @Nullable
        @Deprecated
        public PendingIntent getDisplayIntent() {
            return this.c;
        }

        @NonNull
        @Deprecated
        public WearableExtender addPage(@NonNull Notification notification) {
            this.d.add(notification);
            return this;
        }

        @NonNull
        @Deprecated
        public WearableExtender addPages(@NonNull List<Notification> list) {
            this.d.addAll(list);
            return this;
        }

        @NonNull
        @Deprecated
        public WearableExtender clearPages() {
            this.d.clear();
            return this;
        }

        @NonNull
        @Deprecated
        public List<Notification> getPages() {
            return this.d;
        }

        @NonNull
        @Deprecated
        public WearableExtender setBackground(@Nullable Bitmap bitmap) {
            this.e = bitmap;
            return this;
        }

        @Nullable
        @Deprecated
        public Bitmap getBackground() {
            return this.e;
        }

        @NonNull
        @Deprecated
        public WearableExtender setContentIcon(int i) {
            this.f = i;
            return this;
        }

        @Deprecated
        public int getContentIcon() {
            return this.f;
        }

        @NonNull
        @Deprecated
        public WearableExtender setContentIconGravity(int i) {
            this.f907g = i;
            return this;
        }

        @Deprecated
        public int getContentIconGravity() {
            return this.f907g;
        }

        @NonNull
        public WearableExtender setContentAction(int i) {
            this.h = i;
            return this;
        }

        public int getContentAction() {
            return this.h;
        }

        @NonNull
        @Deprecated
        public WearableExtender setGravity(int i) {
            this.k = i;
            return this;
        }

        @Deprecated
        public int getGravity() {
            return this.k;
        }

        @NonNull
        @Deprecated
        public WearableExtender setCustomSizePreset(int i) {
            this.i = i;
            return this;
        }

        @Deprecated
        public int getCustomSizePreset() {
            return this.i;
        }

        @NonNull
        @Deprecated
        public WearableExtender setCustomContentHeight(int i) {
            this.j = i;
            return this;
        }

        @Deprecated
        public int getCustomContentHeight() {
            return this.j;
        }

        @NonNull
        public WearableExtender setStartScrollBottom(boolean z) {
            a(8, z);
            return this;
        }

        public boolean getStartScrollBottom() {
            return (this.f906b & 8) != 0;
        }

        @NonNull
        public WearableExtender setContentIntentAvailableOffline(boolean z) {
            a(1, z);
            return this;
        }

        public boolean getContentIntentAvailableOffline() {
            return (this.f906b & 1) != 0;
        }

        @NonNull
        @Deprecated
        public WearableExtender setHintHideIcon(boolean z) {
            a(2, z);
            return this;
        }

        @Deprecated
        public boolean getHintHideIcon() {
            return (this.f906b & 2) != 0;
        }

        @NonNull
        @Deprecated
        public WearableExtender setHintShowBackgroundOnly(boolean z) {
            a(4, z);
            return this;
        }

        @Deprecated
        public boolean getHintShowBackgroundOnly() {
            return (this.f906b & 4) != 0;
        }

        @NonNull
        @Deprecated
        public WearableExtender setHintAvoidBackgroundClipping(boolean z) {
            a(16, z);
            return this;
        }

        @Deprecated
        public boolean getHintAvoidBackgroundClipping() {
            return (this.f906b & 16) != 0;
        }

        @NonNull
        @Deprecated
        public WearableExtender setHintScreenTimeout(int i) {
            this.l = i;
            return this;
        }

        @Deprecated
        public int getHintScreenTimeout() {
            return this.l;
        }

        @NonNull
        @Deprecated
        public WearableExtender setHintAmbientBigPicture(boolean z) {
            a(32, z);
            return this;
        }

        @Deprecated
        public boolean getHintAmbientBigPicture() {
            return (this.f906b & 32) != 0;
        }

        @NonNull
        public WearableExtender setHintContentIntentLaunchesActivity(boolean z) {
            a(64, z);
            return this;
        }

        public boolean getHintContentIntentLaunchesActivity() {
            return (this.f906b & 64) != 0;
        }

        @NonNull
        public WearableExtender setDismissalId(@Nullable String str) {
            this.m = str;
            return this;
        }

        @Nullable
        public String getDismissalId() {
            return this.m;
        }

        @NonNull
        public WearableExtender setBridgeTag(@Nullable String str) {
            this.n = str;
            return this;
        }

        @Nullable
        public String getBridgeTag() {
            return this.n;
        }

        public final void a(int i, boolean z) {
            if (z) {
                this.f906b = i | this.f906b;
            } else {
                this.f906b = (~i) & this.f906b;
            }
        }

        @RequiresApi(20)
        public static class a {
            private a() {
            }

            @DoNotInline
            public static Notification.Action.Builder d(int i, CharSequence charSequence, PendingIntent pendingIntent) {
                return new Notification.Action.Builder(i, charSequence, pendingIntent);
            }

            @DoNotInline
            public static Notification.Action.Builder a(Notification.Action.Builder builder, Bundle bundle) {
                return builder.addExtras(bundle);
            }

            @DoNotInline
            public static Notification.Action.Builder b(Notification.Action.Builder builder, android.app.RemoteInput remoteInput) {
                return builder.addRemoteInput(remoteInput);
            }

            @DoNotInline
            public static Notification.Action c(Notification.Action.Builder builder) {
                return builder.build();
            }

            @DoNotInline
            public static Action getActionCompatFromAction(ArrayList<Parcelable> arrayList, int i) {
                return NotificationCompat.a((Notification.Action) arrayList.get(i));
            }
        }

        @RequiresApi(23)
        public static class b {
            private b() {
            }

            @DoNotInline
            public static Notification.Action.Builder a(Icon icon, CharSequence charSequence, PendingIntent pendingIntent) {
                return new Notification.Action.Builder(icon, charSequence, pendingIntent);
            }
        }

        @RequiresApi(24)
        public static class c {
            private c() {
            }

            @DoNotInline
            public static Notification.Action.Builder a(Notification.Action.Builder builder, boolean z) {
                return builder.setAllowGeneratedReplies(z);
            }
        }

        @RequiresApi(31)
        public static class d {
            private d() {
            }

            @DoNotInline
            public static Notification.Action.Builder a(Notification.Action.Builder builder, boolean z) {
                return builder.setAuthenticationRequired(z);
            }
        }
    }

    public static final class CarExtender implements Extender {

        /* renamed from: a, reason: collision with root package name */
        public Bitmap f894a;

        /* renamed from: b, reason: collision with root package name */
        public UnreadConversation f895b;
        public int c;

        public CarExtender() {
            this.c = 0;
        }

        public CarExtender(@NonNull Notification notification) {
            String[] strArr;
            RemoteInput remoteInput;
            this.c = 0;
            UnreadConversation unreadConversation = null;
            Bundle bundle = NotificationCompat.getExtras(notification) == null ? null : NotificationCompat.getExtras(notification).getBundle("android.car.EXTENSIONS");
            if (bundle != null) {
                this.f894a = (Bitmap) bundle.getParcelable("large_icon");
                this.c = bundle.getInt("app_color", 0);
                Bundle bundle2 = bundle.getBundle("car_conversation");
                if (bundle2 != null) {
                    Parcelable[] parcelableArray = bundle2.getParcelableArray("messages");
                    if (parcelableArray != null) {
                        int length = parcelableArray.length;
                        String[] strArr2 = new String[length];
                        for (int i = 0; i < length; i++) {
                            Parcelable parcelable = parcelableArray[i];
                            if (!(parcelable instanceof Bundle)) {
                                break;
                            }
                            String string = ((Bundle) parcelable).getString(PropertyTypeConstants.PROPERTY_TYPE_TEXT);
                            strArr2[i] = string;
                            if (string == null) {
                                break;
                            }
                        }
                        strArr = strArr2;
                    } else {
                        strArr = null;
                    }
                    PendingIntent pendingIntent = (PendingIntent) bundle2.getParcelable("on_read");
                    PendingIntent pendingIntent2 = (PendingIntent) bundle2.getParcelable("on_reply");
                    android.app.RemoteInput remoteInput2 = (android.app.RemoteInput) bundle2.getParcelable("remote_input");
                    String[] stringArray = bundle2.getStringArray("participants");
                    if (stringArray != null && stringArray.length == 1) {
                        if (remoteInput2 != null) {
                            remoteInput = new RemoteInput(a.h(remoteInput2), a.g(remoteInput2), a.e(remoteInput2), a.d(remoteInput2), Build.VERSION.SDK_INT >= 29 ? b.a(remoteInput2) : 0, a.f(remoteInput2), null);
                        } else {
                            remoteInput = null;
                        }
                        unreadConversation = new UnreadConversation(strArr, remoteInput, pendingIntent2, pendingIntent, stringArray, bundle2.getLong("timestamp"));
                    }
                }
                this.f895b = unreadConversation;
            }
        }

        @Override // androidx.core.app.NotificationCompat.Extender
        @NonNull
        public Builder extend(@NonNull Builder builder) {
            Bundle bundle = new Bundle();
            Bitmap bitmap = this.f894a;
            if (bitmap != null) {
                bundle.putParcelable("large_icon", bitmap);
            }
            int i = this.c;
            if (i != 0) {
                bundle.putInt("app_color", i);
            }
            UnreadConversation unreadConversation = this.f895b;
            if (unreadConversation != null) {
                Bundle bundle2 = new Bundle();
                String str = (unreadConversation.getParticipants() == null || unreadConversation.getParticipants().length <= 1) ? null : unreadConversation.getParticipants()[0];
                int length = unreadConversation.getMessages().length;
                Parcelable[] parcelableArr = new Parcelable[length];
                for (int i2 = 0; i2 < length; i2++) {
                    Bundle bundle3 = new Bundle();
                    bundle3.putString(PropertyTypeConstants.PROPERTY_TYPE_TEXT, unreadConversation.getMessages()[i2]);
                    bundle3.putString("author", str);
                    parcelableArr[i2] = bundle3;
                }
                bundle2.putParcelableArray("messages", parcelableArr);
                RemoteInput remoteInput = unreadConversation.getRemoteInput();
                if (remoteInput != null) {
                    RemoteInput.Builder builderC = a.c(remoteInput.getResultKey());
                    a.k(builderC, remoteInput.getLabel());
                    a.j(builderC, remoteInput.getChoices());
                    a.i(builderC, remoteInput.getAllowFreeFormInput());
                    a.a(builderC, remoteInput.getExtras());
                    bundle2.putParcelable("remote_input", a.b(builderC));
                }
                bundle2.putParcelable("on_reply", unreadConversation.getReplyPendingIntent());
                bundle2.putParcelable("on_read", unreadConversation.getReadPendingIntent());
                bundle2.putStringArray("participants", unreadConversation.getParticipants());
                bundle2.putLong("timestamp", unreadConversation.getLatestTimestamp());
                bundle.putBundle("car_conversation", bundle2);
            }
            builder.getExtras().putBundle("android.car.EXTENSIONS", bundle);
            return builder;
        }

        @NonNull
        public CarExtender setColor(@ColorInt int i) {
            this.c = i;
            return this;
        }

        @ColorInt
        public int getColor() {
            return this.c;
        }

        @NonNull
        public CarExtender setLargeIcon(@Nullable Bitmap bitmap) {
            this.f894a = bitmap;
            return this;
        }

        @Nullable
        public Bitmap getLargeIcon() {
            return this.f894a;
        }

        @NonNull
        @Deprecated
        public CarExtender setUnreadConversation(@Nullable UnreadConversation unreadConversation) {
            this.f895b = unreadConversation;
            return this;
        }

        @Nullable
        @Deprecated
        public UnreadConversation getUnreadConversation() {
            return this.f895b;
        }

        @Deprecated
        public static class UnreadConversation {

            /* renamed from: a, reason: collision with root package name */
            public final String[] f896a;

            /* renamed from: b, reason: collision with root package name */
            public final RemoteInput f897b;
            public final PendingIntent c;
            public final PendingIntent d;
            public final String[] e;
            public final long f;

            public UnreadConversation(String[] strArr, RemoteInput remoteInput, PendingIntent pendingIntent, PendingIntent pendingIntent2, String[] strArr2, long j) {
                this.f896a = strArr;
                this.f897b = remoteInput;
                this.d = pendingIntent2;
                this.c = pendingIntent;
                this.e = strArr2;
                this.f = j;
            }

            @Nullable
            public String[] getMessages() {
                return this.f896a;
            }

            @Nullable
            public RemoteInput getRemoteInput() {
                return this.f897b;
            }

            @Nullable
            public PendingIntent getReplyPendingIntent() {
                return this.c;
            }

            @Nullable
            public PendingIntent getReadPendingIntent() {
                return this.d;
            }

            @Nullable
            public String[] getParticipants() {
                return this.e;
            }

            @Nullable
            public String getParticipant() {
                String[] strArr = this.e;
                if (strArr.length > 0) {
                    return strArr[0];
                }
                return null;
            }

            public long getLatestTimestamp() {
                return this.f;
            }

            public static class Builder {

                /* renamed from: a, reason: collision with root package name */
                public final ArrayList f898a = new ArrayList();

                /* renamed from: b, reason: collision with root package name */
                public final String f899b;
                public RemoteInput c;
                public PendingIntent d;
                public PendingIntent e;
                public long f;

                public Builder(@NonNull String str) {
                    this.f899b = str;
                }

                @NonNull
                public Builder addMessage(@Nullable String str) {
                    if (str != null) {
                        this.f898a.add(str);
                    }
                    return this;
                }

                @NonNull
                public Builder setReplyAction(@Nullable PendingIntent pendingIntent, @Nullable RemoteInput remoteInput) {
                    this.c = remoteInput;
                    this.e = pendingIntent;
                    return this;
                }

                @NonNull
                public Builder setReadPendingIntent(@Nullable PendingIntent pendingIntent) {
                    this.d = pendingIntent;
                    return this;
                }

                @NonNull
                public Builder setLatestTimestamp(long j) {
                    this.f = j;
                    return this;
                }

                @NonNull
                public UnreadConversation build() {
                    ArrayList arrayList = this.f898a;
                    return new UnreadConversation((String[]) arrayList.toArray(new String[arrayList.size()]), this.c, this.e, this.d, new String[]{this.f899b}, this.f);
                }
            }
        }

        @RequiresApi(20)
        public static class a {
            private a() {
            }

            @DoNotInline
            public static RemoteInput.Builder c(String str) {
                return new RemoteInput.Builder(str);
            }

            @DoNotInline
            public static android.app.RemoteInput b(RemoteInput.Builder builder) {
                return builder.build();
            }

            @DoNotInline
            public static String h(android.app.RemoteInput remoteInput) {
                return remoteInput.getResultKey();
            }

            @DoNotInline
            public static CharSequence[] e(android.app.RemoteInput remoteInput) {
                return remoteInput.getChoices();
            }

            @DoNotInline
            public static RemoteInput.Builder j(RemoteInput.Builder builder, CharSequence[] charSequenceArr) {
                return builder.setChoices(charSequenceArr);
            }

            @DoNotInline
            public static CharSequence g(android.app.RemoteInput remoteInput) {
                return remoteInput.getLabel();
            }

            @DoNotInline
            public static RemoteInput.Builder k(RemoteInput.Builder builder, CharSequence charSequence) {
                return builder.setLabel(charSequence);
            }

            @DoNotInline
            public static boolean d(android.app.RemoteInput remoteInput) {
                return remoteInput.getAllowFreeFormInput();
            }

            @DoNotInline
            public static RemoteInput.Builder i(RemoteInput.Builder builder, boolean z) {
                return builder.setAllowFreeFormInput(z);
            }

            @DoNotInline
            public static Bundle f(android.app.RemoteInput remoteInput) {
                return remoteInput.getExtras();
            }

            @DoNotInline
            public static RemoteInput.Builder a(RemoteInput.Builder builder, Bundle bundle) {
                return builder.addExtras(bundle);
            }
        }

        @RequiresApi(29)
        public static class b {
            private b() {
            }

            @DoNotInline
            public static int a(android.app.RemoteInput remoteInput) {
                return remoteInput.getEditChoicesBeforeSending();
            }
        }
    }

    public static final class BubbleMetadata {

        /* renamed from: a, reason: collision with root package name */
        public PendingIntent f884a;

        /* renamed from: b, reason: collision with root package name */
        public PendingIntent f885b;
        public IconCompat c;
        public int d;
        public int e;
        public int f;

        /* renamed from: g, reason: collision with root package name */
        public String f886g;

        @Nullable
        @SuppressLint({"InvalidNullConversion"})
        public PendingIntent getIntent() {
            return this.f884a;
        }

        @Nullable
        public String getShortcutId() {
            return this.f886g;
        }

        @Nullable
        public PendingIntent getDeleteIntent() {
            return this.f885b;
        }

        @Nullable
        @SuppressLint({"InvalidNullConversion"})
        public IconCompat getIcon() {
            return this.c;
        }

        @Dimension(unit = 0)
        public int getDesiredHeight() {
            return this.d;
        }

        @DimenRes
        public int getDesiredHeightResId() {
            return this.e;
        }

        public boolean getAutoExpandBubble() {
            return (this.f & 1) != 0;
        }

        public boolean isNotificationSuppressed() {
            return (this.f & 2) != 0;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void setFlags(int i) {
            this.f = i;
        }

        @Nullable
        public static Notification.BubbleMetadata toPlatform(@Nullable BubbleMetadata bubbleMetadata) {
            if (bubbleMetadata == null) {
                return null;
            }
            int i = Build.VERSION.SDK_INT;
            if (i >= 30) {
                return b.b(bubbleMetadata);
            }
            if (i == 29) {
                return a.b(bubbleMetadata);
            }
            return null;
        }

        @Nullable
        public static BubbleMetadata fromPlatform(@Nullable Notification.BubbleMetadata bubbleMetadata) {
            if (bubbleMetadata == null) {
                return null;
            }
            int i = Build.VERSION.SDK_INT;
            if (i >= 30) {
                return b.a(bubbleMetadata);
            }
            if (i == 29) {
                return a.a(bubbleMetadata);
            }
            return null;
        }

        public static final class Builder {

            /* renamed from: a, reason: collision with root package name */
            public PendingIntent f887a;

            /* renamed from: b, reason: collision with root package name */
            public IconCompat f888b;
            public int c;
            public int d;
            public int e;
            public PendingIntent f;

            /* renamed from: g, reason: collision with root package name */
            public final String f889g;

            @Deprecated
            public Builder() {
            }

            @RequiresApi(30)
            public Builder(@NonNull String str) {
                if (TextUtils.isEmpty(str)) {
                    throw new NullPointerException("Bubble requires a non-null shortcut id");
                }
                this.f889g = str;
            }

            public Builder(@NonNull PendingIntent pendingIntent, @NonNull IconCompat iconCompat) {
                if (pendingIntent == null) {
                    throw new NullPointerException("Bubble requires non-null pending intent");
                }
                if (iconCompat == null) {
                    throw new NullPointerException("Bubbles require non-null icon");
                }
                this.f887a = pendingIntent;
                this.f888b = iconCompat;
            }

            @NonNull
            public Builder setIntent(@NonNull PendingIntent pendingIntent) {
                if (this.f889g != null) {
                    throw new IllegalStateException("Created as a shortcut bubble, cannot set a PendingIntent. Consider using BubbleMetadata.Builder(PendingIntent,Icon) instead.");
                }
                if (pendingIntent == null) {
                    throw new NullPointerException("Bubble requires non-null pending intent");
                }
                this.f887a = pendingIntent;
                return this;
            }

            @NonNull
            public Builder setIcon(@NonNull IconCompat iconCompat) {
                if (this.f889g != null) {
                    throw new IllegalStateException("Created as a shortcut bubble, cannot set an Icon. Consider using BubbleMetadata.Builder(PendingIntent,Icon) instead.");
                }
                if (iconCompat == null) {
                    throw new NullPointerException("Bubbles require non-null icon");
                }
                this.f888b = iconCompat;
                return this;
            }

            @NonNull
            public Builder setDesiredHeight(@Dimension(unit = 0) int i) {
                this.c = Math.max(i, 0);
                this.d = 0;
                return this;
            }

            @NonNull
            public Builder setDesiredHeightResId(@DimenRes int i) {
                this.d = i;
                this.c = 0;
                return this;
            }

            @NonNull
            public Builder setDeleteIntent(@Nullable PendingIntent pendingIntent) {
                this.f = pendingIntent;
                return this;
            }

            @NonNull
            @SuppressLint({"SyntheticAccessor"})
            public BubbleMetadata build() {
                String str = this.f889g;
                if (str == null && this.f887a == null) {
                    throw new NullPointerException("Must supply pending intent or shortcut to bubble");
                }
                if (str != null || this.f888b != null) {
                    PendingIntent pendingIntent = this.f887a;
                    PendingIntent pendingIntent2 = this.f;
                    IconCompat iconCompat = this.f888b;
                    int i = this.c;
                    int i2 = this.d;
                    int i3 = this.e;
                    BubbleMetadata bubbleMetadata = new BubbleMetadata();
                    bubbleMetadata.f884a = pendingIntent;
                    bubbleMetadata.c = iconCompat;
                    bubbleMetadata.d = i;
                    bubbleMetadata.e = i2;
                    bubbleMetadata.f885b = pendingIntent2;
                    bubbleMetadata.f = i3;
                    bubbleMetadata.f886g = str;
                    bubbleMetadata.setFlags(i3);
                    return bubbleMetadata;
                }
                throw new NullPointerException("Must supply an icon or shortcut for the bubble");
            }

            @NonNull
            public Builder setAutoExpandBubble(boolean z) {
                if (z) {
                    this.e |= 1;
                    return this;
                }
                this.e &= -2;
                return this;
            }

            @NonNull
            public Builder setSuppressNotification(boolean z) {
                if (z) {
                    this.e |= 2;
                    return this;
                }
                this.e &= -3;
                return this;
            }
        }

        @RequiresApi(29)
        public static class a {
            private a() {
            }

            @Nullable
            @RequiresApi(29)
            public static Notification.BubbleMetadata b(@Nullable BubbleMetadata bubbleMetadata) {
                if (bubbleMetadata == null || bubbleMetadata.getIntent() == null) {
                    return null;
                }
                Notification.BubbleMetadata.Builder suppressNotification = new Notification.BubbleMetadata.Builder().setIcon(bubbleMetadata.getIcon().toIcon()).setIntent(bubbleMetadata.getIntent()).setDeleteIntent(bubbleMetadata.getDeleteIntent()).setAutoExpandBubble(bubbleMetadata.getAutoExpandBubble()).setSuppressNotification(bubbleMetadata.isNotificationSuppressed());
                if (bubbleMetadata.getDesiredHeight() != 0) {
                    suppressNotification.setDesiredHeight(bubbleMetadata.getDesiredHeight());
                }
                if (bubbleMetadata.getDesiredHeightResId() != 0) {
                    suppressNotification.setDesiredHeightResId(bubbleMetadata.getDesiredHeightResId());
                }
                return suppressNotification.build();
            }

            @Nullable
            @RequiresApi(29)
            public static BubbleMetadata a(@Nullable Notification.BubbleMetadata bubbleMetadata) {
                if (bubbleMetadata == null || bubbleMetadata.getIntent() == null) {
                    return null;
                }
                Builder suppressNotification = new Builder(bubbleMetadata.getIntent(), IconCompat.createFromIcon(bubbleMetadata.getIcon())).setAutoExpandBubble(bubbleMetadata.getAutoExpandBubble()).setDeleteIntent(bubbleMetadata.getDeleteIntent()).setSuppressNotification(bubbleMetadata.isNotificationSuppressed());
                if (bubbleMetadata.getDesiredHeight() != 0) {
                    suppressNotification.setDesiredHeight(bubbleMetadata.getDesiredHeight());
                }
                if (bubbleMetadata.getDesiredHeightResId() != 0) {
                    suppressNotification.setDesiredHeightResId(bubbleMetadata.getDesiredHeightResId());
                }
                return suppressNotification.build();
            }
        }

        @RequiresApi(30)
        public static class b {
            private b() {
            }

            @Nullable
            @RequiresApi(30)
            public static Notification.BubbleMetadata b(@Nullable BubbleMetadata bubbleMetadata) {
                Notification.BubbleMetadata.Builder builder;
                if (bubbleMetadata == null) {
                    return null;
                }
                if (bubbleMetadata.getShortcutId() != null) {
                    builder = new Notification.BubbleMetadata.Builder(bubbleMetadata.getShortcutId());
                } else {
                    builder = new Notification.BubbleMetadata.Builder(bubbleMetadata.getIntent(), bubbleMetadata.getIcon().toIcon());
                }
                builder.setDeleteIntent(bubbleMetadata.getDeleteIntent()).setAutoExpandBubble(bubbleMetadata.getAutoExpandBubble()).setSuppressNotification(bubbleMetadata.isNotificationSuppressed());
                if (bubbleMetadata.getDesiredHeight() != 0) {
                    builder.setDesiredHeight(bubbleMetadata.getDesiredHeight());
                }
                if (bubbleMetadata.getDesiredHeightResId() != 0) {
                    builder.setDesiredHeightResId(bubbleMetadata.getDesiredHeightResId());
                }
                return builder.build();
            }

            @Nullable
            @RequiresApi(30)
            public static BubbleMetadata a(@Nullable Notification.BubbleMetadata bubbleMetadata) {
                Builder builder;
                if (bubbleMetadata == null) {
                    return null;
                }
                if (bubbleMetadata.getShortcutId() != null) {
                    builder = new Builder(bubbleMetadata.getShortcutId());
                } else {
                    builder = new Builder(bubbleMetadata.getIntent(), IconCompat.createFromIcon(bubbleMetadata.getIcon()));
                }
                builder.setAutoExpandBubble(bubbleMetadata.getAutoExpandBubble()).setDeleteIntent(bubbleMetadata.getDeleteIntent()).setSuppressNotification(bubbleMetadata.isNotificationSuppressed());
                if (bubbleMetadata.getDesiredHeight() != 0) {
                    builder.setDesiredHeight(bubbleMetadata.getDesiredHeight());
                }
                if (bubbleMetadata.getDesiredHeightResId() != 0) {
                    builder.setDesiredHeightResId(bubbleMetadata.getDesiredHeightResId());
                }
                return builder.build();
            }
        }
    }

    @Nullable
    public static Bundle getExtras(@NonNull Notification notification) {
        return notification.extras;
    }

    public static int getActionCount(@NonNull Notification notification) {
        Notification.Action[] actionArr = notification.actions;
        if (actionArr != null) {
            return actionArr.length;
        }
        return 0;
    }

    @Nullable
    public static Action getAction(@NonNull Notification notification, int i) {
        return a(notification.actions[i]);
    }

    @Nullable
    public static BubbleMetadata getBubbleMetadata(@NonNull Notification notification) {
        if (Build.VERSION.SDK_INT >= 29) {
            return BubbleMetadata.fromPlatform(g.b(notification));
        }
        return null;
    }

    public static Action a(Notification.Action action) {
        RemoteInput[] remoteInputArr;
        boolean z;
        int iA;
        int i;
        android.app.RemoteInput[] remoteInputArrG = b.g(action);
        if (remoteInputArrG == null) {
            remoteInputArr = null;
        } else {
            RemoteInput[] remoteInputArr2 = new RemoteInput[remoteInputArrG.length];
            for (int i2 = 0; i2 < remoteInputArrG.length; i2++) {
                android.app.RemoteInput remoteInput = remoteInputArrG[i2];
                remoteInputArr2[i2] = new RemoteInput(b.h(remoteInput), b.f(remoteInput), b.b(remoteInput), b.a(remoteInput), Build.VERSION.SDK_INT >= 29 ? g.c(remoteInput) : 0, b.d(remoteInput), null);
            }
            remoteInputArr = remoteInputArr2;
        }
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 24) {
            z = b.c(action).getBoolean("android.support.allowGeneratedReplies") || d.a(action);
        } else {
            z = b.c(action).getBoolean("android.support.allowGeneratedReplies");
        }
        boolean z2 = z;
        boolean z3 = b.c(action).getBoolean("android.support.action.showsUserInterface", true);
        if (i3 >= 28) {
            iA = f.a(action);
        } else {
            iA = b.c(action).getInt("android.support.action.semanticAction", 0);
        }
        int i4 = iA;
        boolean zE = i3 >= 29 ? g.e(action) : false;
        boolean zA = i3 >= 31 ? h.a(action) : false;
        if (i3 >= 23) {
            if (c.a(action) == null && (i = action.icon) != 0) {
                return new Action(i, action.title, action.actionIntent, b.c(action), remoteInputArr, (RemoteInput[]) null, z2, i4, z3, zE, zA);
            }
            return new Action(c.a(action) != null ? IconCompat.createFromIconOrNullIfZeroResId(c.a(action)) : null, action.title, action.actionIntent, b.c(action), remoteInputArr, (RemoteInput[]) null, z2, i4, z3, zE, zA);
        }
        return new Action(action.icon, action.title, action.actionIntent, b.c(action), remoteInputArr, (RemoteInput[]) null, z2, i4, z3, zE, zA);
    }

    @NonNull
    @RequiresApi(21)
    public static List<Action> getInvisibleActions(@NonNull Notification notification) {
        Bundle bundle;
        ArrayList arrayList = new ArrayList();
        Bundle bundle2 = notification.extras.getBundle("android.car.EXTENSIONS");
        if (bundle2 != null && (bundle = bundle2.getBundle("invisible_actions")) != null) {
            for (int i = 0; i < bundle.size(); i++) {
                Bundle bundle3 = bundle.getBundle(Integer.toString(i));
                Bundle bundle4 = bundle3.getBundle("extras");
                arrayList.add(new Action(bundle3.getInt("icon"), bundle3.getCharSequence("title"), (PendingIntent) bundle3.getParcelable("actionIntent"), bundle3.getBundle("extras"), i.a(i.b(bundle3, "remoteInputs")), i.a(i.b(bundle3, "dataOnlyRemoteInputs")), bundle4 != null ? bundle4.getBoolean("android.support.allowGeneratedReplies", false) : false, bundle3.getInt("semanticAction"), bundle3.getBoolean("showsUserInterface"), false, false));
            }
        }
        return arrayList;
    }

    @NonNull
    public static List<Person> getPeople(@NonNull Notification notification) {
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 28) {
            ArrayList parcelableArrayList = notification.extras.getParcelableArrayList(EXTRA_PEOPLE_LIST);
            if (parcelableArrayList != null && !parcelableArrayList.isEmpty()) {
                Iterator it = parcelableArrayList.iterator();
                while (it.hasNext()) {
                    arrayList.add(Person.fromAndroidPerson(androidx.core.app.f.g(it.next())));
                }
            }
        } else {
            String[] stringArray = notification.extras.getStringArray(EXTRA_PEOPLE);
            if (stringArray != null && stringArray.length != 0) {
                for (String str : stringArray) {
                    arrayList.add(new Person.Builder().setUri(str).build());
                }
            }
        }
        return arrayList;
    }

    @Nullable
    @RequiresApi(19)
    public static CharSequence getContentTitle(@NonNull Notification notification) {
        return notification.extras.getCharSequence(EXTRA_TITLE);
    }

    @Nullable
    @RequiresApi(19)
    public static CharSequence getContentText(@NonNull Notification notification) {
        return notification.extras.getCharSequence(EXTRA_TEXT);
    }

    @Nullable
    @RequiresApi(19)
    public static CharSequence getContentInfo(@NonNull Notification notification) {
        return notification.extras.getCharSequence(EXTRA_INFO_TEXT);
    }

    @Nullable
    @RequiresApi(19)
    public static CharSequence getSubText(@NonNull Notification notification) {
        return notification.extras.getCharSequence(EXTRA_SUB_TEXT);
    }

    @Nullable
    public static String getCategory(@NonNull Notification notification) {
        return notification.category;
    }

    public static boolean getLocalOnly(@NonNull Notification notification) {
        return (notification.flags & 256) != 0;
    }

    @Nullable
    public static String getGroup(@NonNull Notification notification) {
        return b.e(notification);
    }

    @RequiresApi(19)
    public static boolean getShowWhen(@NonNull Notification notification) {
        return notification.extras.getBoolean(EXTRA_SHOW_WHEN);
    }

    @RequiresApi(19)
    public static boolean getUsesChronometer(@NonNull Notification notification) {
        return notification.extras.getBoolean(EXTRA_SHOW_CHRONOMETER);
    }

    public static boolean getOnlyAlertOnce(@NonNull Notification notification) {
        return (notification.flags & 8) != 0;
    }

    public static boolean getAutoCancel(@NonNull Notification notification) {
        return (notification.flags & 16) != 0;
    }

    public static boolean getOngoing(@NonNull Notification notification) {
        return (notification.flags & 2) != 0;
    }

    public static int getColor(@NonNull Notification notification) {
        return notification.color;
    }

    public static int getVisibility(@NonNull Notification notification) {
        return notification.visibility;
    }

    @Nullable
    public static Notification getPublicVersion(@NonNull Notification notification) {
        return notification.publicVersion;
    }

    public static boolean isGroupSummary(@NonNull Notification notification) {
        return (notification.flags & 512) != 0;
    }

    @Nullable
    public static String getSortKey(@NonNull Notification notification) {
        return b.i(notification);
    }

    @Nullable
    public static String getChannelId(@NonNull Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return e.b(notification);
        }
        return null;
    }

    public static long getTimeoutAfter(@NonNull Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return e.f(notification);
        }
        return 0L;
    }

    public static int getBadgeIconType(@NonNull Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return e.a(notification);
        }
        return 0;
    }

    @Nullable
    public static String getShortcutId(@NonNull Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return e.e(notification);
        }
        return null;
    }

    @Nullable
    public static CharSequence getSettingsText(@NonNull Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return e.d(notification);
        }
        return null;
    }

    @Nullable
    public static LocusIdCompat getLocusId(@NonNull Notification notification) {
        LocusId locusIdD;
        if (Build.VERSION.SDK_INT < 29 || (locusIdD = g.d(notification)) == null) {
            return null;
        }
        return LocusIdCompat.toLocusIdCompat(locusIdD);
    }

    public static int getGroupAlertBehavior(@NonNull Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return e.c(notification);
        }
        return 0;
    }

    public static boolean getAllowSystemGeneratedContextualActions(@NonNull Notification notification) {
        if (Build.VERSION.SDK_INT >= 29) {
            return g.a(notification);
        }
        return false;
    }

    @Deprecated
    public NotificationCompat() {
    }

    @RequiresApi(20)
    public static class b {
        private b() {
        }

        @DoNotInline
        public static boolean a(android.app.RemoteInput remoteInput) {
            return remoteInput.getAllowFreeFormInput();
        }

        @DoNotInline
        public static CharSequence[] b(android.app.RemoteInput remoteInput) {
            return remoteInput.getChoices();
        }

        @DoNotInline
        public static CharSequence f(android.app.RemoteInput remoteInput) {
            return remoteInput.getLabel();
        }

        @DoNotInline
        public static String h(android.app.RemoteInput remoteInput) {
            return remoteInput.getResultKey();
        }

        @DoNotInline
        public static android.app.RemoteInput[] g(Notification.Action action) {
            return action.getRemoteInputs();
        }

        @DoNotInline
        public static String i(Notification notification) {
            return notification.getSortKey();
        }

        @DoNotInline
        public static String e(Notification notification) {
            return notification.getGroup();
        }

        @DoNotInline
        public static Bundle c(Notification.Action action) {
            return action.getExtras();
        }

        @DoNotInline
        public static Bundle d(android.app.RemoteInput remoteInput) {
            return remoteInput.getExtras();
        }
    }

    @RequiresApi(23)
    public static class c {
        private c() {
        }

        @DoNotInline
        public static Icon a(Notification.Action action) {
            return action.getIcon();
        }
    }

    @RequiresApi(24)
    public static class d {
        private d() {
        }

        @DoNotInline
        public static boolean a(Notification.Action action) {
            return action.getAllowGeneratedReplies();
        }
    }

    @RequiresApi(26)
    public static class e {
        private e() {
        }

        @DoNotInline
        public static int c(Notification notification) {
            return notification.getGroupAlertBehavior();
        }

        @DoNotInline
        public static CharSequence d(Notification notification) {
            return notification.getSettingsText();
        }

        @DoNotInline
        public static String e(Notification notification) {
            return notification.getShortcutId();
        }

        @DoNotInline
        public static int a(Notification notification) {
            return notification.getBadgeIconType();
        }

        @DoNotInline
        public static long f(Notification notification) {
            return notification.getTimeoutAfter();
        }

        @DoNotInline
        public static String b(Notification notification) {
            return notification.getChannelId();
        }
    }

    @RequiresApi(28)
    public static class f {
        private f() {
        }

        @DoNotInline
        public static int a(Notification.Action action) {
            return action.getSemanticAction();
        }
    }

    @RequiresApi(29)
    public static class g {
        private g() {
        }

        @DoNotInline
        public static boolean a(Notification notification) {
            return notification.getAllowSystemGeneratedContextualActions();
        }

        @DoNotInline
        public static LocusId d(Notification notification) {
            return notification.getLocusId();
        }

        @DoNotInline
        public static boolean e(Notification.Action action) {
            return action.isContextual();
        }

        @DoNotInline
        public static int c(android.app.RemoteInput remoteInput) {
            return remoteInput.getEditChoicesBeforeSending();
        }

        @DoNotInline
        public static Notification.BubbleMetadata b(Notification notification) {
            return notification.getBubbleMetadata();
        }
    }

    @RequiresApi(31)
    public static class h {
        private h() {
        }

        @DoNotInline
        public static boolean a(Notification.Action action) {
            return action.isAuthenticationRequired();
        }
    }
}
