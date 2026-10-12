package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class ActivityResult implements Parcelable {

    @NonNull
    public static final Parcelable.Creator<ActivityResult> CREATOR = new a();

    /* renamed from: a, reason: collision with root package name */
    public final int f53a;

    /* renamed from: b, reason: collision with root package name */
    public final Intent f54b;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ActivityResult(int i, @Nullable Intent intent) {
        this.f53a = i;
        this.f54b = intent;
    }

    public ActivityResult(Parcel parcel) {
        this.f53a = parcel.readInt();
        this.f54b = parcel.readInt() == 0 ? null : (Intent) Intent.CREATOR.createFromParcel(parcel);
    }

    public int getResultCode() {
        return this.f53a;
    }

    @Nullable
    public Intent getData() {
        return this.f54b;
    }

    public String toString() {
        return "ActivityResult{resultCode=" + resultCodeToString(this.f53a) + ", data=" + this.f54b + '}';
    }

    @NonNull
    public static String resultCodeToString(int i) {
        if (i == -1) {
            return "RESULT_OK";
        }
        if (i == 0) {
            return "RESULT_CANCELED";
        }
        return String.valueOf(i);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeInt(this.f53a);
        Intent intent = this.f54b;
        parcel.writeInt(intent == null ? 0 : 1);
        if (intent != null) {
            intent.writeToParcel(parcel, i);
        }
    }

    public class a implements Parcelable.Creator<ActivityResult> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ActivityResult createFromParcel(@NonNull Parcel parcel) {
            return new ActivityResult(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ActivityResult[] newArray(int i) {
            return new ActivityResult[i];
        }
    }
}
