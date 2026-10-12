package com.google.zxing.maxicode.decoder;

import com.google.appinventor.components.runtime.util.Ev3Constants;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonDecoder;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import java.text.DecimalFormat;
import java.util.Map;

/* loaded from: classes.dex */
public final class Decoder {

    /* renamed from: a, reason: collision with root package name */
    public final ReedSolomonDecoder f5219a = new ReedSolomonDecoder(GenericGF.MAXICODE_FIELD_64);

    public DecoderResult decode(BitMatrix bitMatrix) throws ChecksumException, FormatException {
        return decode(bitMatrix, null);
    }

    public DecoderResult decode(BitMatrix bitMatrix, Map<DecodeHintType, ?> map) throws ChecksumException, FormatException {
        byte[] bArr;
        String strValueOf;
        byte[] bArr2 = new byte[144];
        int height = bitMatrix.getHeight();
        int width = bitMatrix.getWidth();
        for (int i = 0; i < height; i++) {
            int[] iArr = a.f5220a[i];
            for (int i2 = 0; i2 < width; i2++) {
                int i3 = iArr[i2];
                if (i3 >= 0 && bitMatrix.get(i2, i)) {
                    int i4 = i3 / 6;
                    bArr2[i4] = (byte) (bArr2[i4] | ((byte) (1 << (5 - (i3 % 6)))));
                }
            }
        }
        a(bArr2, 0, 10, 10, 0);
        int i5 = bArr2[0] & 15;
        if (i5 == 2 || i5 == 3 || i5 == 4) {
            a(bArr2, 20, 84, 40, 1);
            a(bArr2, 20, 84, 40, 2);
            bArr = new byte[94];
        } else if (i5 == 5) {
            a(bArr2, 20, 68, 56, 1);
            a(bArr2, 20, 68, 56, 2);
            bArr = new byte[78];
        } else {
            throw FormatException.getFormatInstance();
        }
        System.arraycopy(bArr2, 0, bArr, 0, 10);
        System.arraycopy(bArr2, 20, bArr, 10, bArr.length - 10);
        DecimalFormat decimalFormat = b.f5221a;
        StringBuilder sb = new StringBuilder(144);
        if (i5 == 2 || i5 == 3) {
            if (i5 == 2) {
                strValueOf = new DecimalFormat("0000000000".substring(0, b.a(bArr, new byte[]{39, Ev3Constants.Opcode.XOR8, Ev3Constants.Opcode.XOR16, Ev3Constants.Opcode.XOR32, 31, 32}))).format(b.a(bArr, new byte[]{Ev3Constants.Opcode.OR16, Ev3Constants.Opcode.OR32, 35, Ev3Constants.Opcode.AND8, 25, 26, 27, 28, 29, 30, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18, 7, 8, 9, 10, 11, 12, 1, 2}));
            } else {
                String[] strArr = b.c;
                strValueOf = String.valueOf(new char[]{strArr[0].charAt(b.a(bArr, new byte[]{39, Ev3Constants.Opcode.XOR8, Ev3Constants.Opcode.XOR16, Ev3Constants.Opcode.XOR32, 31, 32})), strArr[0].charAt(b.a(bArr, new byte[]{Ev3Constants.Opcode.OR16, Ev3Constants.Opcode.OR32, 35, Ev3Constants.Opcode.AND8, 25, 26})), strArr[0].charAt(b.a(bArr, new byte[]{27, 28, 29, 30, 19, 20})), strArr[0].charAt(b.a(bArr, new byte[]{21, 22, 23, 24, 13, 14})), strArr[0].charAt(b.a(bArr, new byte[]{15, 16, 17, 18, 7, 8})), strArr[0].charAt(b.a(bArr, new byte[]{9, 10, 11, 12, 1, 2}))});
            }
            DecimalFormat decimalFormat2 = b.f5222b;
            String str = decimalFormat2.format(b.a(bArr, new byte[]{Ev3Constants.Opcode.MOVE16_16, Ev3Constants.Opcode.MOVE16_32, 43, Ev3Constants.Opcode.RL8, Ev3Constants.Opcode.RL16, Ev3Constants.Opcode.RL32, Ev3Constants.Opcode.INIT_BYTES, Ev3Constants.Opcode.MOVE8_8, Ev3Constants.Opcode.AND16, Ev3Constants.Opcode.AND32}));
            String str2 = decimalFormat2.format(b.a(bArr, new byte[]{Ev3Constants.Opcode.MOVE16_F, Ev3Constants.Opcode.MOVE32_8, Ev3Constants.Opcode.MOVE32_16, Ev3Constants.Opcode.MOVE32_32, Ev3Constants.Opcode.MOVE32_F, Ev3Constants.Opcode.MOVEF_8, Ev3Constants.Opcode.MOVE8_16, Ev3Constants.Opcode.MOVE8_32, Ev3Constants.Opcode.MOVE8_F, Ev3Constants.Opcode.MOVE16_8}));
            sb.append(b.b(bArr, 10, 84));
            if (sb.toString().startsWith("[)>\u001e01\u001d")) {
                sb.insert(9, strValueOf + (char) 29 + str + (char) 29 + str2 + (char) 29);
            } else {
                sb.insert(0, strValueOf + (char) 29 + str + (char) 29 + str2 + (char) 29);
            }
        } else if (i5 == 4) {
            sb.append(b.b(bArr, 1, 93));
        } else if (i5 == 5) {
            sb.append(b.b(bArr, 1, 77));
        }
        return new DecoderResult(bArr, sb.toString(), null, String.valueOf(i5));
    }

    public final void a(byte[] bArr, int i, int i2, int i3, int i4) throws ChecksumException {
        int i5 = i2 + i3;
        int i6 = i4 == 0 ? 1 : 2;
        int[] iArr = new int[i5 / i6];
        for (int i7 = 0; i7 < i5; i7++) {
            if (i4 == 0 || i7 % 2 == i4 - 1) {
                iArr[i7 / i6] = bArr[i7 + i] & 255;
            }
        }
        try {
            this.f5219a.decode(iArr, i3 / i6);
            for (int i8 = 0; i8 < i2; i8++) {
                if (i4 == 0 || i8 % 2 == i4 - 1) {
                    bArr[i8 + i] = (byte) iArr[i8 / i6];
                }
            }
        } catch (ReedSolomonException unused) {
            throw ChecksumException.getChecksumInstance();
        }
    }
}
