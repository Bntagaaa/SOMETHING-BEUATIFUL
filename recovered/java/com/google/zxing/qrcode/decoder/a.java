package com.google.zxing.qrcode.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;

/* loaded from: classes2.dex */
final class a {

    /* renamed from: a, reason: collision with root package name */
    public final BitMatrix f5323a;

    /* renamed from: b, reason: collision with root package name */
    public Version f5324b;
    public e c;

    public a(BitMatrix bitMatrix) throws FormatException {
        int height = bitMatrix.getHeight();
        if (height < 21 || (height & 3) != 1) {
            throw FormatException.getFormatInstance();
        }
        this.f5323a = bitMatrix;
    }

    public final e b() throws FormatException {
        e eVar = this.c;
        if (eVar != null) {
            return eVar;
        }
        int iA = 0;
        int iA2 = 0;
        for (int i = 0; i < 6; i++) {
            iA2 = a(i, 8, iA2);
        }
        int iA3 = a(8, 7, a(8, 8, a(7, 8, iA2)));
        for (int i2 = 5; i2 >= 0; i2--) {
            iA3 = a(8, i2, iA3);
        }
        int height = this.f5323a.getHeight();
        int i3 = height - 7;
        for (int i4 = height - 1; i4 >= i3; i4--) {
            iA = a(8, i4, iA);
        }
        for (int i5 = height - 8; i5 < height; i5++) {
            iA = a(i5, 8, iA);
        }
        e eVarA = e.a(iA3, iA);
        if (eVarA == null) {
            eVarA = e.a(iA3 ^ 21522, iA ^ 21522);
        }
        this.c = eVarA;
        if (eVarA != null) {
            return eVarA;
        }
        throw FormatException.getFormatInstance();
    }

    public final Version c() throws FormatException {
        Version version = this.f5324b;
        if (version != null) {
            return version;
        }
        int height = this.f5323a.getHeight();
        int i = (height - 17) >> 2;
        if (i <= 6) {
            return Version.getVersionForNumber(i);
        }
        int i2 = height - 11;
        int iA = 0;
        int iA2 = 0;
        for (int i3 = 5; i3 >= 0; i3--) {
            for (int i4 = height - 9; i4 >= i2; i4--) {
                iA2 = a(i4, i3, iA2);
            }
        }
        Version versionB = Version.b(iA2);
        if (versionB != null && versionB.getDimensionForVersion() == height) {
            this.f5324b = versionB;
            return versionB;
        }
        for (int i5 = 5; i5 >= 0; i5--) {
            for (int i6 = height - 9; i6 >= i2; i6--) {
                iA = a(i5, i6, iA);
            }
        }
        Version versionB2 = Version.b(iA);
        if (versionB2 != null && versionB2.getDimensionForVersion() == height) {
            this.f5324b = versionB2;
            return versionB2;
        }
        throw FormatException.getFormatInstance();
    }

    public final int a(int i, int i2, int i3) {
        return this.f5323a.get(i, i2) ? (i3 << 1) | 1 : i3 << 1;
    }
}
