package androidx.customview.view;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public abstract class AbsSavedState implements Parcelable {

    /* renamed from: a, reason: collision with root package name */
    public final Parcelable f1454a;
    public static final AbsSavedState EMPTY_STATE = new a();
    public static final Parcelable.Creator<AbsSavedState> CREATOR = new b();

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public class a extends AbsSavedState {
        public a() {
            super(0);
        }
    }

    public /* synthetic */ AbsSavedState(int i) {
        this();
    }

    private AbsSavedState() {
        this.f1454a = null;
    }

    public AbsSavedState(@NonNull Parcelable parcelable) {
        if (parcelable == null) {
            throw new IllegalArgumentException("superState must not be null");
        }
        this.f1454a = parcelable == EMPTY_STATE ? null : parcelable;
    }

    public AbsSavedState(@NonNull Parcel parcel) {
        this(parcel, null);
    }

    public AbsSavedState(@NonNull Parcel parcel, @Nullable ClassLoader classLoader) {
        Parcelable parcelable = parcel.readParcelable(classLoader);
        this.f1454a = parcelable == null ? EMPTY_STATE : parcelable;
    }

    @Nullable
    public final Parcelable getSuperState() {
        return this.f1454a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f1454a, i);
    }

    public class b implements Parcelable.ClassLoaderCreator<AbsSavedState> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.ClassLoaderCreator
        public AbsSavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
            if (parcel.readParcelable(classLoader) != null) {
                throw new IllegalStateException("superState must be null");
            }
            return AbsSavedState.EMPTY_STATE;
        }

        @Override // android.os.Parcelable.Creator
        public AbsSavedState createFromParcel(Parcel parcel) {
            return createFromParcel(parcel, (ClassLoader) null);
        }

        @Override // android.os.Parcelable.Creator
        public AbsSavedState[] newArray(int i) {
            return new AbsSavedState[i];
        }
    }
}
