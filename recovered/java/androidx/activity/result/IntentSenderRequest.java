package androidx.activity.result;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class IntentSenderRequest implements Parcelable {

    @NonNull
    public static final Parcelable.Creator<IntentSenderRequest> CREATOR = new a();

    /* renamed from: a, reason: collision with root package name */
    public final IntentSender f68a;

    /* renamed from: b, reason: collision with root package name */
    public final Intent f69b;
    public final int c;
    public final int d;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public IntentSenderRequest(IntentSender intentSender, Intent intent, int i, int i2) {
        this.f68a = intentSender;
        this.f69b = intent;
        this.c = i;
        this.d = i2;
    }

    @NonNull
    public IntentSender getIntentSender() {
        return this.f68a;
    }

    @Nullable
    public Intent getFillInIntent() {
        return this.f69b;
    }

    public int getFlagsMask() {
        return this.c;
    }

    public int getFlagsValues() {
        return this.d;
    }

    public IntentSenderRequest(Parcel parcel) {
        this.f68a = (IntentSender) parcel.readParcelable(IntentSender.class.getClassLoader());
        this.f69b = (Intent) parcel.readParcelable(Intent.class.getClassLoader());
        this.c = parcel.readInt();
        this.d = parcel.readInt();
    }

    public class a implements Parcelable.Creator<IntentSenderRequest> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IntentSenderRequest createFromParcel(Parcel parcel) {
            return new IntentSenderRequest(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IntentSenderRequest[] newArray(int i) {
            return new IntentSenderRequest[i];
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeParcelable(this.f68a, i);
        parcel.writeParcelable(this.f69b, i);
        parcel.writeInt(this.c);
        parcel.writeInt(this.d);
    }

    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final IntentSender f70a;

        /* renamed from: b, reason: collision with root package name */
        public Intent f71b;
        public int c;
        public int d;

        public Builder(@NonNull IntentSender intentSender) {
            this.f70a = intentSender;
        }

        public Builder(@NonNull PendingIntent pendingIntent) {
            this(pendingIntent.getIntentSender());
        }

        @NonNull
        public Builder setFillInIntent(@Nullable Intent intent) {
            this.f71b = intent;
            return this;
        }

        @NonNull
        public Builder setFlags(int i, int i2) {
            this.d = i;
            this.c = i2;
            return this;
        }

        @NonNull
        public IntentSenderRequest build() {
            return new IntentSenderRequest(this.f70a, this.f71b, this.c, this.d);
        }
    }
}
