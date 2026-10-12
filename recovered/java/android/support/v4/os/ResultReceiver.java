package android.support.v4.os;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.v4.os.IResultReceiver;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

@SuppressLint({"BanParcelableUsage"})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ResultReceiver implements Parcelable {
    public static final Parcelable.Creator<ResultReceiver> CREATOR = new a();

    /* renamed from: a, reason: collision with root package name */
    public final boolean f15a;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f16b;
    public IResultReceiver c;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void onReceiveResult(int i, Bundle bundle) {
    }

    public class c implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final int f18a;

        /* renamed from: b, reason: collision with root package name */
        public final Bundle f19b;

        public c(int i, Bundle bundle) {
            this.f18a = i;
            this.f19b = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            ResultReceiver.this.onReceiveResult(this.f18a, this.f19b);
        }
    }

    public class b extends IResultReceiver.Stub {
        public b() {
        }

        @Override // android.support.v4.os.IResultReceiver
        public void send(int i, Bundle bundle) {
            ResultReceiver resultReceiver = ResultReceiver.this;
            Handler handler = resultReceiver.f16b;
            if (handler != null) {
                handler.post(resultReceiver.new c(i, bundle));
            } else {
                resultReceiver.onReceiveResult(i, bundle);
            }
        }
    }

    public ResultReceiver(Handler handler) {
        this.f15a = true;
        this.f16b = handler;
    }

    public void send(int i, Bundle bundle) {
        if (this.f15a) {
            Handler handler = this.f16b;
            if (handler != null) {
                handler.post(new c(i, bundle));
                return;
            } else {
                onReceiveResult(i, bundle);
                return;
            }
        }
        IResultReceiver iResultReceiver = this.c;
        if (iResultReceiver != null) {
            try {
                iResultReceiver.send(i, bundle);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        synchronized (this) {
            try {
                if (this.c == null) {
                    this.c = new b();
                }
                parcel.writeStrongBinder(this.c.asBinder());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public ResultReceiver(Parcel parcel) {
        this.f15a = false;
        this.f16b = null;
        this.c = IResultReceiver.Stub.asInterface(parcel.readStrongBinder());
    }

    public class a implements Parcelable.Creator<ResultReceiver> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResultReceiver createFromParcel(Parcel parcel) {
            return new ResultReceiver(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResultReceiver[] newArray(int i) {
            return new ResultReceiver[i];
        }
    }
}
