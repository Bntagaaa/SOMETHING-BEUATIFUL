package com.google.zxing.qrcode.encoder;

import com.google.appinventor.components.runtime.util.FullScreenVideoUtil;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitArray;
import com.google.zxing.common.CharacterSetECI;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonEncoder;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Mode;
import com.google.zxing.qrcode.decoder.Version;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
public final class Encoder {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f5344a = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 36, -1, -1, -1, 37, 38, -1, -1, -1, -1, 39, 40, -1, 41, 42, 43, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 44, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, -1, -1, -1, -1, -1};

    private Encoder() {
    }

    public static QRCode encode(String str, ErrorCorrectionLevel errorCorrectionLevel) throws WriterException {
        return encode(str, errorCorrectionLevel, null);
    }

    public static QRCode encode(String str, ErrorCorrectionLevel errorCorrectionLevel, Map<EncodeHintType, ?> map) throws WriterException, UnsupportedEncodingException {
        int i;
        byte[][] bArr;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        CharacterSetECI characterSetECIByName;
        String str2 = map == null ? null : (String) map.get(EncodeHintType.CHARACTER_SET);
        if (str2 == null) {
            str2 = "ISO-8859-1";
        }
        Mode modeA = a(str, str2);
        BitArray bitArray = new BitArray();
        if (modeA == Mode.BYTE && !"ISO-8859-1".equals(str2) && (characterSetECIByName = CharacterSetECI.getCharacterSetECIByName(str2)) != null) {
            bitArray.appendBits(Mode.ECI.getBits(), 4);
            bitArray.appendBits(characterSetECIByName.getValue(), 8);
        }
        bitArray.appendBits(modeA.getBits(), 4);
        BitArray bitArray2 = new BitArray();
        int i7 = a.f5345a[modeA.ordinal()];
        if (i7 == 1) {
            i = 1;
            int length = str.length();
            int i8 = 0;
            while (i8 < length) {
                int iCharAt = str.charAt(i8) - '0';
                int i9 = i8 + 2;
                if (i9 < length) {
                    bitArray2.appendBits(((str.charAt(i8 + 1) - '0') * 10) + (iCharAt * 100) + (str.charAt(i9) - '0'), 10);
                    i8 += 3;
                } else {
                    i8++;
                    if (i8 < length) {
                        bitArray2.appendBits((iCharAt * 10) + (str.charAt(i8) - '0'), 7);
                        i8 = i9;
                    } else {
                        bitArray2.appendBits(iCharAt, 4);
                    }
                }
            }
        } else if (i7 == 2) {
            i = 1;
            int length2 = str.length();
            int i10 = 0;
            while (i10 < length2) {
                char cCharAt = str.charAt(i10);
                int[] iArr = f5344a;
                int i11 = cCharAt < '`' ? iArr[cCharAt] : -1;
                if (i11 == -1) {
                    throw new WriterException();
                }
                int i12 = i10 + 1;
                if (i12 < length2) {
                    char cCharAt2 = str.charAt(i12);
                    int i13 = cCharAt2 < '`' ? iArr[cCharAt2] : -1;
                    if (i13 == -1) {
                        throw new WriterException();
                    }
                    bitArray2.appendBits((i11 * 45) + i13, 11);
                    i10 += 2;
                } else {
                    bitArray2.appendBits(i11, 6);
                    i10 = i12;
                }
            }
        } else if (i7 == 3) {
            i = 1;
            try {
                for (byte b2 : str.getBytes(str2)) {
                    bitArray2.appendBits(b2, 8);
                }
            } catch (UnsupportedEncodingException e) {
                throw new WriterException(e);
            }
        } else {
            if (i7 != 4) {
                throw new WriterException("Invalid mode: " + modeA);
            }
            try {
                byte[] bytes = str.getBytes("Shift_JIS");
                int length3 = bytes.length;
                for (int i14 = 0; i14 < length3; i14 += 2) {
                    int i15 = (bytes[i14 + 1] & 255) | ((bytes[i14] & 255) << 8);
                    int i16 = (i15 < 33088 || i15 > 40956) ? (i15 < 57408 || i15 > 60351) ? -1 : i15 - 49472 : i15 - 33088;
                    if (i16 == -1) {
                        throw new WriterException("Invalid byte sequence");
                    }
                    bitArray2.appendBits(((i16 >> 8) * FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_PAUSE) + (i16 & 255), 13);
                }
                i = 1;
            } catch (UnsupportedEncodingException e2) {
                throw new WriterException(e2);
            }
        }
        Version versionB = b(bitArray2.getSize() + modeA.getCharacterCountBits(b(bitArray2.getSize() + modeA.getCharacterCountBits(Version.getVersionForNumber(i)) + bitArray.getSize(), errorCorrectionLevel)) + bitArray.getSize(), errorCorrectionLevel);
        BitArray bitArray3 = new BitArray();
        bitArray3.appendBitArray(bitArray);
        int sizeInBytes = modeA == Mode.BYTE ? bitArray2.getSizeInBytes() : str.length();
        int characterCountBits = modeA.getCharacterCountBits(versionB);
        int i17 = i << characterCountBits;
        if (sizeInBytes >= i17) {
            throw new WriterException(sizeInBytes + " is bigger than " + (i17 - 1));
        }
        bitArray3.appendBits(sizeInBytes, characterCountBits);
        bitArray3.appendBitArray(bitArray2);
        Version.ECBlocks eCBlocksForLevel = versionB.getECBlocksForLevel(errorCorrectionLevel);
        int totalCodewords = versionB.getTotalCodewords() - eCBlocksForLevel.getTotalECCodewords();
        int i18 = totalCodewords << 3;
        if (bitArray3.getSize() > i18) {
            throw new WriterException("data bits cannot fit in the QR Code" + bitArray3.getSize() + " > " + i18);
        }
        for (int i19 = 0; i19 < 4 && bitArray3.getSize() < i18; i19++) {
            bitArray3.appendBit(false);
        }
        int size = bitArray3.getSize() & 7;
        if (size > 0) {
            while (size < 8) {
                bitArray3.appendBit(false);
                size++;
            }
        }
        int sizeInBytes2 = totalCodewords - bitArray3.getSizeInBytes();
        for (int i20 = 0; i20 < sizeInBytes2; i20++) {
            bitArray3.appendBits((i20 & 1) == 0 ? 236 : 17, 8);
        }
        if (bitArray3.getSize() != i18) {
            throw new WriterException("Bits size does not equal capacity");
        }
        int totalCodewords2 = versionB.getTotalCodewords();
        int numBlocks = eCBlocksForLevel.getNumBlocks();
        if (bitArray3.getSizeInBytes() != totalCodewords) {
            throw new WriterException("Number of bits and data bytes does not match");
        }
        ArrayList arrayList = new ArrayList(numBlocks);
        int i21 = 0;
        int i22 = 0;
        int iMax = 0;
        int iMax2 = 0;
        while (i21 < numBlocks) {
            int[] iArr2 = new int[1];
            int[] iArr3 = new int[1];
            if (i21 >= numBlocks) {
                throw new WriterException("Block ID too large");
            }
            int i23 = totalCodewords2 % numBlocks;
            int i24 = numBlocks - i23;
            int i25 = totalCodewords2 / numBlocks;
            int i26 = totalCodewords / numBlocks;
            int i27 = i26 + 1;
            int i28 = i25 - i26;
            int i29 = (i25 + 1) - i27;
            if (i28 != i29) {
                throw new WriterException("EC bytes mismatch");
            }
            if (numBlocks != i24 + i23) {
                throw new WriterException("RS blocks mismatch");
            }
            if (totalCodewords2 != ((i27 + i29) * i23) + ((i26 + i28) * i24)) {
                throw new WriterException("Total bytes mismatch");
            }
            if (i21 < i24) {
                iArr2[0] = i26;
                iArr3[0] = i28;
            } else {
                iArr2[0] = i27;
                iArr3[0] = i29;
            }
            int i30 = iArr2[0];
            byte[] bArr2 = new byte[i30];
            bitArray3.toBytes(i22 * 8, bArr2, 0, i30);
            int i31 = iArr3[0];
            int[] iArr4 = new int[i30 + i31];
            int i32 = numBlocks;
            int i33 = 0;
            while (i33 < i30) {
                int i34 = i33;
                iArr4[i34] = bArr2[i34] & 255;
                i33 = i34 + 1;
            }
            BitArray bitArray4 = bitArray3;
            new ReedSolomonEncoder(GenericGF.QR_CODE_FIELD_256).encode(iArr4, i31);
            byte[] bArr3 = new byte[i31];
            int i35 = 0;
            while (i35 < i31) {
                int i36 = i35;
                bArr3[i36] = (byte) iArr4[i30 + i35];
                i35 = i36 + 1;
            }
            arrayList.add(new com.google.zxing.qrcode.encoder.a(bArr2, bArr3));
            iMax = Math.max(iMax, i30);
            iMax2 = Math.max(iMax2, i31);
            i22 += iArr2[0];
            i21++;
            numBlocks = i32;
            bitArray3 = bitArray4;
        }
        if (totalCodewords != i22) {
            throw new WriterException("Data bytes does not match offset");
        }
        BitArray bitArray5 = new BitArray();
        for (int i37 = 0; i37 < iMax; i37++) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                byte[] dataBytes = ((com.google.zxing.qrcode.encoder.a) it.next()).getDataBytes();
                if (i37 < dataBytes.length) {
                    bitArray5.appendBits(dataBytes[i37], 8);
                }
            }
        }
        for (int i38 = 0; i38 < iMax2; i38++) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                byte[] errorCorrectionBytes = ((com.google.zxing.qrcode.encoder.a) it2.next()).getErrorCorrectionBytes();
                if (i38 < errorCorrectionBytes.length) {
                    bitArray5.appendBits(errorCorrectionBytes[i38], 8);
                }
            }
        }
        if (totalCodewords2 != bitArray5.getSizeInBytes()) {
            StringBuilder sbO = _COROUTINE.a.o(totalCodewords2, "Interleaving error: ", " and ");
            sbO.append(bitArray5.getSizeInBytes());
            sbO.append(" differ.");
            throw new WriterException(sbO.toString());
        }
        QRCode qRCode = new QRCode();
        qRCode.setECLevel(errorCorrectionLevel);
        qRCode.setMode(modeA);
        qRCode.setVersion(versionB);
        int dimensionForVersion = versionB.getDimensionForVersion();
        ByteMatrix byteMatrix = new ByteMatrix(dimensionForVersion, dimensionForVersion);
        int i39 = Integer.MAX_VALUE;
        int i40 = -1;
        for (int i41 = 0; i41 < 8; i41++) {
            c.a(bitArray5, errorCorrectionLevel, versionB, i41, byteMatrix);
            int iA = b.a(byteMatrix, true) + b.a(byteMatrix, false);
            byte[][] array = byteMatrix.getArray();
            int width = byteMatrix.getWidth();
            int height = byteMatrix.getHeight();
            int i42 = 0;
            for (int i43 = 0; i43 < height - 1; i43++) {
                int i44 = 0;
                while (i44 < width - 1) {
                    byte[] bArr4 = array[i43];
                    byte b3 = bArr4[i44];
                    int i45 = i44 + 1;
                    if (b3 == bArr4[i45]) {
                        byte[] bArr5 = array[i43 + 1];
                        if (b3 == bArr5[i44] && b3 == bArr5[i45]) {
                            i42++;
                        }
                    }
                    i44 = i45;
                }
            }
            int i46 = (i42 * 3) + iA;
            byte[][] array2 = byteMatrix.getArray();
            int width2 = byteMatrix.getWidth();
            int height2 = byteMatrix.getHeight();
            int i47 = 0;
            int i48 = 0;
            while (i47 < height2) {
                int i49 = 0;
                while (i49 < width2) {
                    int i50 = i49 + 6;
                    if (i50 < width2) {
                        byte[] bArr6 = array2[i47];
                        bArr = array2;
                        i2 = i47;
                        if (bArr6[i49] == 1 && bArr6[i49 + 1] == 0 && bArr6[i49 + 2] == 1 && bArr6[i49 + 3] == 1 && bArr6[i49 + 4] == 1 && bArr6[i49 + 5] == 0 && bArr6[i50] == 1 && (((i5 = i49 + 10) < width2 && bArr6[i49 + 7] == 0 && bArr6[i49 + 8] == 0 && bArr6[i49 + 9] == 0 && bArr6[i5] == 0) || (i49 - 4 >= 0 && bArr6[i49 - 1] == 0 && bArr6[i49 - 2] == 0 && bArr6[i49 - 3] == 0 && bArr6[i6] == 0))) {
                            i48 += 40;
                        }
                    } else {
                        bArr = array2;
                        i2 = i47;
                    }
                    int i51 = i2 + 6;
                    if (i51 < height2 && bArr[i2][i49] == 1 && bArr[i2 + 1][i49] == 0 && bArr[i2 + 2][i49] == 1 && bArr[i2 + 3][i49] == 1 && bArr[i2 + 4][i49] == 1 && bArr[i2 + 5][i49] == 0 && bArr[i51][i49] == 1 && (((i3 = i2 + 10) < height2 && bArr[i2 + 7][i49] == 0 && bArr[i2 + 8][i49] == 0 && bArr[i2 + 9][i49] == 0 && bArr[i3][i49] == 0) || (i2 - 4 >= 0 && bArr[i2 - 1][i49] == 0 && bArr[i2 - 2][i49] == 0 && bArr[i2 - 3][i49] == 0 && bArr[i4][i49] == 0))) {
                        i48 += 40;
                    }
                    i49++;
                    array2 = bArr;
                    i47 = i2;
                }
                i47++;
            }
            int i52 = i46 + i48;
            byte[][] array3 = byteMatrix.getArray();
            int width3 = byteMatrix.getWidth();
            int height3 = byteMatrix.getHeight();
            int i53 = 0;
            for (int i54 = 0; i54 < height3; i54++) {
                byte[] bArr7 = array3[i54];
                int i55 = 0;
                while (i55 < width3) {
                    byte[][] bArr8 = array3;
                    if (bArr7[i55] == 1) {
                        i53++;
                    }
                    i55++;
                    array3 = bArr8;
                }
            }
            int iAbs = (((int) (Math.abs((i53 / (byteMatrix.getWidth() * byteMatrix.getHeight())) - 0.5d) * 20.0d)) * 10) + i52;
            if (iAbs < i39) {
                i39 = iAbs;
                i40 = i41;
            }
        }
        qRCode.setMaskPattern(i40);
        c.a(bitArray5, errorCorrectionLevel, versionB, i40, byteMatrix);
        qRCode.setMatrix(byteMatrix);
        return qRCode;
    }

    public static Mode chooseMode(String str) {
        return a(str, null);
    }

    public static Mode a(String str, String str2) throws UnsupportedEncodingException {
        int i = 0;
        if (!"Shift_JIS".equals(str2)) {
            boolean z = false;
            boolean z2 = false;
            while (i < str.length()) {
                char cCharAt = str.charAt(i);
                if (cCharAt < '0' || cCharAt > '9') {
                    if ((cCharAt < '`' ? f5344a[cCharAt] : -1) == -1) {
                        return Mode.BYTE;
                    }
                    z = true;
                } else {
                    z2 = true;
                }
                i++;
            }
            if (z) {
                return Mode.ALPHANUMERIC;
            }
            if (z2) {
                return Mode.NUMERIC;
            }
            return Mode.BYTE;
        }
        try {
            byte[] bytes = str.getBytes("Shift_JIS");
            int length = bytes.length;
            if (length % 2 == 0) {
                while (i < length) {
                    int i2 = bytes[i] & 255;
                    if ((i2 >= 129 && i2 <= 159) || (i2 >= 224 && i2 <= 235)) {
                        i += 2;
                    }
                }
                return Mode.KANJI;
            }
        } catch (UnsupportedEncodingException unused) {
        }
        return Mode.BYTE;
    }

    public static Version b(int i, ErrorCorrectionLevel errorCorrectionLevel) throws WriterException {
        for (int i2 = 1; i2 <= 40; i2++) {
            Version versionForNumber = Version.getVersionForNumber(i2);
            if (versionForNumber.getTotalCodewords() - versionForNumber.getECBlocksForLevel(errorCorrectionLevel).getTotalECCodewords() >= (i + 7) / 8) {
                return versionForNumber;
            }
        }
        throw new WriterException("Data too big");
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f5345a;

        static {
            int[] iArr = new int[Mode.values().length];
            f5345a = iArr;
            try {
                iArr[Mode.NUMERIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5345a[Mode.ALPHANUMERIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f5345a[Mode.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f5345a[Mode.KANJI.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }
}
