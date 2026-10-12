package androidx.core.os;

import android.os.Parcel;
import android.os.Parcelable;

@Deprecated
/* loaded from: classes.dex */
public final class ParcelableCompat {
    @Deprecated
    public static <T> Parcelable.Creator<T> newCreator(ParcelableCompatCreatorCallbacks<T> parcelableCompatCreatorCallbacks) {
        return new a(parcelableCompatCreatorCallbacks);
    }

    public static class a<T> implements Parcelable.ClassLoaderCreator<T> {

        /* renamed from: a, reason: collision with root package name */
        public final ParcelableCompatCreatorCallbacks f1137a;

        public a(ParcelableCompatCreatorCallbacks parcelableCompatCreatorCallbacks) {
            this.f1137a = parcelableCompatCreatorCallbacks;
        }

        @Override // android.os.Parcelable.Creator
        public T createFromParcel(Parcel parcel) {
            return (T) this.f1137a.createFromParcel(parcel, null);
        }

        @Override // android.os.Parcelable.ClassLoaderCreator
        public T createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return (T) this.f1137a.createFromParcel(parcel, classLoader);
        }

        @Override // android.os.Parcelable.Creator
        public T[] newArray(int i) {
            return (T[]) this.f1137a.newArray(i);
        }
    }

    private ParcelableCompat() {
    }
}
