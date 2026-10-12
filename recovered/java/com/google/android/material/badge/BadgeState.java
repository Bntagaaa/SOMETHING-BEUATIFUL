package com.google.android.material.badge;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import com.google.android.material.R;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.resources.TextAppearance;
import java.util.Locale;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class BadgeState {

    /* renamed from: a, reason: collision with root package name */
    public final State f2782a;

    /* renamed from: b, reason: collision with root package name */
    public final State f2783b;
    public final float c;
    public final float d;
    public final float e;

    public BadgeState(Context context, int i, State state) {
        AttributeSet attributeSet;
        int styleAttribute;
        Locale locale;
        int i2 = BadgeDrawable.o;
        int i3 = BadgeDrawable.n;
        State state2 = new State();
        this.f2783b = state2;
        state = state == null ? new State() : state;
        if (i != 0) {
            state.f2784a = i;
        }
        int i4 = state.f2784a;
        if (i4 != 0) {
            AttributeSet drawableXml = DrawableUtils.parseDrawableXml(context, i4, "badge");
            attributeSet = drawableXml;
            styleAttribute = drawableXml.getStyleAttribute();
        } else {
            attributeSet = null;
            styleAttribute = 0;
        }
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context, attributeSet, R.styleable.Badge, i2, styleAttribute == 0 ? i3 : styleAttribute, new int[0]);
        Resources resources = context.getResources();
        this.c = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.Badge_badgeRadius, resources.getDimensionPixelSize(R.dimen.mtrl_badge_radius));
        this.e = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.Badge_badgeWidePadding, resources.getDimensionPixelSize(R.dimen.mtrl_badge_long_text_horizontal_padding));
        this.d = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.Badge_badgeWithTextRadius, resources.getDimensionPixelSize(R.dimen.mtrl_badge_with_text_radius));
        int i5 = state.d;
        state2.d = i5 == -2 ? 255 : i5;
        CharSequence charSequence = state.h;
        state2.h = charSequence == null ? context.getString(R.string.mtrl_badge_numberless_content_description) : charSequence;
        int i6 = state.i;
        state2.i = i6 == 0 ? R.plurals.mtrl_badge_content_description : i6;
        int i7 = state.j;
        state2.j = i7 == 0 ? R.string.mtrl_exceed_max_badge_number_content_description : i7;
        Boolean bool = state.l;
        state2.l = Boolean.valueOf(bool == null || bool.booleanValue());
        int i8 = state.f;
        state2.f = i8 == -2 ? typedArrayObtainStyledAttributes.getInt(R.styleable.Badge_maxCharacterCount, 4) : i8;
        int i9 = state.e;
        if (i9 != -2) {
            state2.e = i9;
        } else {
            int i10 = R.styleable.Badge_number;
            if (typedArrayObtainStyledAttributes.hasValue(i10)) {
                state2.e = typedArrayObtainStyledAttributes.getInt(i10, 0);
            } else {
                state2.e = -1;
            }
        }
        Integer num = state.f2785b;
        state2.f2785b = Integer.valueOf(num == null ? MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, R.styleable.Badge_backgroundColor).getDefaultColor() : num.intValue());
        Integer num2 = state.c;
        if (num2 != null) {
            state2.c = num2;
        } else {
            int i11 = R.styleable.Badge_badgeTextColor;
            if (typedArrayObtainStyledAttributes.hasValue(i11)) {
                state2.c = Integer.valueOf(MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, i11).getDefaultColor());
            } else {
                state2.c = Integer.valueOf(new TextAppearance(context, R.style.TextAppearance_MaterialComponents_Badge).getTextColor().getDefaultColor());
            }
        }
        Integer num3 = state.k;
        state2.k = Integer.valueOf(num3 == null ? typedArrayObtainStyledAttributes.getInt(R.styleable.Badge_badgeGravity, 8388661) : num3.intValue());
        Integer num4 = state.m;
        state2.m = Integer.valueOf(num4 == null ? typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.Badge_horizontalOffset, 0) : num4.intValue());
        state2.n = Integer.valueOf(state.m == null ? typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.Badge_verticalOffset, 0) : state.n.intValue());
        Integer num5 = state.o;
        state2.o = Integer.valueOf(num5 == null ? typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.Badge_horizontalOffsetWithText, state2.m.intValue()) : num5.intValue());
        Integer num6 = state.p;
        state2.p = Integer.valueOf(num6 == null ? typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.Badge_verticalOffsetWithText, state2.n.intValue()) : num6.intValue());
        Integer num7 = state.q;
        state2.q = Integer.valueOf(num7 == null ? 0 : num7.intValue());
        Integer num8 = state.r;
        state2.r = Integer.valueOf(num8 != null ? num8.intValue() : 0);
        typedArrayObtainStyledAttributes.recycle();
        Locale locale2 = state.f2786g;
        if (locale2 == null) {
            if (Build.VERSION.SDK_INT >= 24) {
                Locale.Category unused = Locale.Category.FORMAT;
                locale = Locale.getDefault(Locale.Category.FORMAT);
            } else {
                locale = Locale.getDefault();
            }
            state2.f2786g = locale;
        } else {
            state2.f2786g = locale2;
        }
        this.f2782a = state;
    }

    public static final class State implements Parcelable {
        public static final Parcelable.Creator<State> CREATOR = new a();

        /* renamed from: a, reason: collision with root package name */
        public int f2784a;

        /* renamed from: b, reason: collision with root package name */
        public Integer f2785b;
        public Integer c;

        /* renamed from: g, reason: collision with root package name */
        public Locale f2786g;
        public CharSequence h;
        public int i;
        public int j;
        public Integer k;
        public Integer m;
        public Integer n;
        public Integer o;
        public Integer p;
        public Integer q;
        public Integer r;
        public int d = 255;
        public int e = -2;
        public int f = -2;
        public Boolean l = Boolean.TRUE;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public class a implements Parcelable.Creator<State> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NonNull
            public State createFromParcel(@NonNull Parcel parcel) {
                State state = new State();
                state.d = 255;
                state.e = -2;
                state.f = -2;
                state.l = Boolean.TRUE;
                state.f2784a = parcel.readInt();
                state.f2785b = (Integer) parcel.readSerializable();
                state.c = (Integer) parcel.readSerializable();
                state.d = parcel.readInt();
                state.e = parcel.readInt();
                state.f = parcel.readInt();
                state.h = parcel.readString();
                state.i = parcel.readInt();
                state.k = (Integer) parcel.readSerializable();
                state.m = (Integer) parcel.readSerializable();
                state.n = (Integer) parcel.readSerializable();
                state.o = (Integer) parcel.readSerializable();
                state.p = (Integer) parcel.readSerializable();
                state.q = (Integer) parcel.readSerializable();
                state.r = (Integer) parcel.readSerializable();
                state.l = (Boolean) parcel.readSerializable();
                state.f2786g = (Locale) parcel.readSerializable();
                return state;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NonNull
            public State[] newArray(int i) {
                return new State[i];
            }
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            parcel.writeInt(this.f2784a);
            parcel.writeSerializable(this.f2785b);
            parcel.writeSerializable(this.c);
            parcel.writeInt(this.d);
            parcel.writeInt(this.e);
            parcel.writeInt(this.f);
            CharSequence charSequence = this.h;
            parcel.writeString(charSequence == null ? null : charSequence.toString());
            parcel.writeInt(this.i);
            parcel.writeSerializable(this.k);
            parcel.writeSerializable(this.m);
            parcel.writeSerializable(this.n);
            parcel.writeSerializable(this.o);
            parcel.writeSerializable(this.p);
            parcel.writeSerializable(this.q);
            parcel.writeSerializable(this.r);
            parcel.writeSerializable(this.l);
            parcel.writeSerializable(this.f2786g);
        }
    }
}
