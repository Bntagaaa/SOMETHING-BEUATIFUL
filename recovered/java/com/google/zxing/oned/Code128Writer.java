package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import gnu.kawa.functions.LispEscapeFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
public final class Code128Writer extends OneDimensionalCodeWriter {
    @Override // com.google.zxing.oned.OneDimensionalCodeWriter, com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat != BarcodeFormat.CODE_128) {
            throw new IllegalArgumentException("Can only encode CODE_128, but got " + barcodeFormat);
        }
        return super.encode(str, barcodeFormat, i, i2, map);
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str) throws NumberFormatException {
        int iCharAt;
        int length = str.length();
        if (length < 1 || length > 80) {
            throw new IllegalArgumentException(_COROUTINE.a.d(length, "Contents length should be between 1 and 80 characters, but got "));
        }
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt < ' ' || cCharAt > '~') {
                switch (cCharAt) {
                    case LispEscapeFormat.ESCAPE_NORMAL /* 241 */:
                    case LispEscapeFormat.ESCAPE_ALL /* 242 */:
                    case 243:
                    case 244:
                        break;
                    default:
                        throw new IllegalArgumentException("Bad character in input: " + cCharAt);
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 1;
        while (true) {
            int[][] iArr = Code128Reader.f5229a;
            if (i2 >= length) {
                arrayList.add(iArr[i3 % 103]);
                arrayList.add(iArr[106]);
                Iterator it = arrayList.iterator();
                int i6 = 0;
                while (it.hasNext()) {
                    for (int i7 : (int[]) it.next()) {
                        i6 += i7;
                    }
                }
                boolean[] zArr = new boolean[i6];
                Iterator it2 = arrayList.iterator();
                int iAppendPattern = 0;
                while (it2.hasNext()) {
                    iAppendPattern += OneDimensionalCodeWriter.appendPattern(zArr, iAppendPattern, (int[]) it2.next(), true);
                }
                return zArr;
            }
            int i8 = (i4 == 99 ? 2 : 4) + i2;
            int length2 = str.length();
            int i9 = i2;
            while (true) {
                iCharAt = 100;
                if (i9 < i8 && i9 < length2) {
                    char cCharAt2 = str.charAt(i9);
                    if (cCharAt2 < '0' || cCharAt2 > '9') {
                        if (cCharAt2 == 241) {
                            i8++;
                        }
                    }
                    i9++;
                }
            }
            int i10 = i8 > length2 ? 100 : 99;
            if (i10 == i4) {
                if (i4 != 100) {
                    switch (str.charAt(i2)) {
                        case LispEscapeFormat.ESCAPE_NORMAL /* 241 */:
                            i2++;
                            iCharAt = 102;
                            break;
                        case LispEscapeFormat.ESCAPE_ALL /* 242 */:
                            i2++;
                            iCharAt = 97;
                            break;
                        case 243:
                            i2++;
                            iCharAt = 96;
                            break;
                        case 244:
                            break;
                        default:
                            int i11 = i2 + 2;
                            iCharAt = Integer.parseInt(str.substring(i2, i11));
                            i2 = i11;
                            break;
                    }
                } else {
                    iCharAt = str.charAt(i2) - ' ';
                }
                i2++;
            } else {
                iCharAt = i4 == 0 ? i10 == 100 ? 104 : 105 : i10;
                i4 = i10;
            }
            arrayList.add(iArr[iCharAt]);
            i3 += iCharAt * i5;
            if (i2 != 0) {
                i5++;
            }
        }
    }
}
