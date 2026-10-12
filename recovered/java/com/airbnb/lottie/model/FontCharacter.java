package com.airbnb.lottie.model;

import androidx.annotation.RestrictTo;
import com.airbnb.lottie.model.content.ShapeGroup;
import java.util.List;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class FontCharacter {

    /* renamed from: a, reason: collision with root package name */
    public final List f2581a;

    /* renamed from: b, reason: collision with root package name */
    public final char f2582b;
    public final double c;
    public final String d;
    public final String e;

    public static int hashFor(char c, String str, String str2) {
        return str2.hashCode() + ((str.hashCode() + (c * 31)) * 31);
    }

    public FontCharacter(List<ShapeGroup> list, char c, double d, double d2, String str, String str2) {
        this.f2581a = list;
        this.f2582b = c;
        this.c = d2;
        this.d = str;
        this.e = str2;
    }

    public List<ShapeGroup> getShapes() {
        return this.f2581a;
    }

    public double getWidth() {
        return this.c;
    }

    public int hashCode() {
        return hashFor(this.f2582b, this.e, this.d);
    }
}
