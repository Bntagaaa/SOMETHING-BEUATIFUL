package com.google.zxing.oned;

import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.client.result.ExpandedProductParsedResult;
import com.google.zxing.common.BitArray;
import java.util.Arrays;
import java.util.Map;
import me.aemo.specialkeyboard.addon.KeyboardChangeListener;

/* loaded from: classes2.dex */
public abstract class UPCEANReader extends OneDReader {
    public static final int[] d = {1, 1, 1};
    public static final int[] e = {1, 1, 1, 1, 1};
    public static final int[][] f;

    /* renamed from: g, reason: collision with root package name */
    public static final int[][] f5241g;

    /* renamed from: a, reason: collision with root package name */
    public final StringBuilder f5242a = new StringBuilder(20);

    /* renamed from: b, reason: collision with root package name */
    public final d f5243b = new d();
    public final a c = new a();

    public abstract int decodeMiddle(BitArray bitArray, int[] iArr, StringBuilder sb) throws NotFoundException;

    public abstract BarcodeFormat f();

    static {
        int[][] iArr = {new int[]{3, 2, 1, 1}, new int[]{2, 2, 2, 1}, new int[]{2, 1, 2, 2}, new int[]{1, 4, 1, 1}, new int[]{1, 1, 3, 2}, new int[]{1, 2, 3, 1}, new int[]{1, 1, 1, 4}, new int[]{1, 3, 1, 2}, new int[]{1, 2, 1, 3}, new int[]{3, 1, 1, 2}};
        f = iArr;
        int[][] iArr2 = new int[20][];
        f5241g = iArr2;
        System.arraycopy(iArr, 0, iArr2, 0, 10);
        for (int i = 10; i < 20; i++) {
            int[] iArr3 = f[i - 10];
            int[] iArr4 = new int[iArr3.length];
            for (int i2 = 0; i2 < iArr3.length; i2++) {
                iArr4[i2] = iArr3[(iArr3.length - i2) - 1];
            }
            f5241g[i] = iArr4;
        }
    }

    public static int[] e(BitArray bitArray) {
        int[] iArr = new int[3];
        int[] iArrD = null;
        boolean zIsRange = false;
        int i = 0;
        while (!zIsRange) {
            Arrays.fill(iArr, 0, 3, 0);
            iArrD = d(bitArray, i, false, d, iArr);
            int i2 = iArrD[0];
            int i3 = iArrD[1];
            int i4 = i2 - (i3 - i2);
            if (i4 >= 0) {
                zIsRange = bitArray.isRange(i4, i2, false);
            }
            i = i3;
        }
        return iArrD;
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        return decodeRow(i, bitArray, e(bitArray), map);
    }

    public Result decodeRow(int i, BitArray bitArray, int[] iArr, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, NumberFormatException, FormatException {
        String str = null;
        ResultPointCallback resultPointCallback = map == null ? null : (ResultPointCallback) map.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
        if (resultPointCallback != null) {
            resultPointCallback.foundPossibleResultPoint(new ResultPoint((iArr[0] + iArr[1]) / 2.0f, i));
        }
        StringBuilder sb = this.f5242a;
        sb.setLength(0);
        int iDecodeMiddle = decodeMiddle(bitArray, iArr, sb);
        if (resultPointCallback != null) {
            resultPointCallback.foundPossibleResultPoint(new ResultPoint(iDecodeMiddle, i));
        }
        int[] iArrDecodeEnd = decodeEnd(bitArray, iDecodeMiddle);
        if (resultPointCallback != null) {
            resultPointCallback.foundPossibleResultPoint(new ResultPoint((iArrDecodeEnd[0] + iArrDecodeEnd[1]) / 2.0f, i));
        }
        int i2 = iArrDecodeEnd[1];
        int i3 = (i2 - iArrDecodeEnd[0]) + i2;
        if (i3 >= bitArray.getSize() || !bitArray.isRange(i2, i3, false)) {
            throw NotFoundException.getNotFoundInstance();
        }
        String string = sb.toString();
        if (!checkChecksum(string)) {
            throw ChecksumException.getChecksumInstance();
        }
        BarcodeFormat barcodeFormatF = f();
        float f2 = i;
        Result result = new Result(string, null, new ResultPoint[]{new ResultPoint((iArr[1] + iArr[0]) / 2.0f, f2), new ResultPoint((iArrDecodeEnd[1] + iArrDecodeEnd[0]) / 2.0f, f2)}, barcodeFormatF);
        try {
            Result resultA = this.f5243b.a(i, iArrDecodeEnd[1], bitArray);
            result.putMetadata(ResultMetadataType.UPC_EAN_EXTENSION, resultA.getText());
            result.putAllMetadata(resultA.getResultMetadata());
            result.addResultPoints(resultA.getResultPoints());
        } catch (ReaderException unused) {
        }
        if (barcodeFormatF == BarcodeFormat.EAN_13 || barcodeFormatF == BarcodeFormat.UPC_A) {
            a aVar = this.c;
            synchronized (aVar) {
                if (aVar.f5244a.isEmpty()) {
                    aVar.a("US/CA", new int[]{0, 19});
                    aVar.a("US", new int[]{30, 39});
                    aVar.a("US/CA", new int[]{60, 139});
                    aVar.a("FR", new int[]{KeyboardChangeListener.MIN_KEYBOARD_HEIGHT, 379});
                    aVar.a("BG", new int[]{380});
                    aVar.a("SI", new int[]{383});
                    aVar.a("HR", new int[]{385});
                    aVar.a("BA", new int[]{387});
                    aVar.a("DE", new int[]{400, 440});
                    aVar.a("JP", new int[]{450, 459});
                    aVar.a("RU", new int[]{460, 469});
                    aVar.a("TW", new int[]{471});
                    aVar.a("EE", new int[]{474});
                    aVar.a("LV", new int[]{475});
                    aVar.a("AZ", new int[]{476});
                    aVar.a("LT", new int[]{477});
                    aVar.a("UZ", new int[]{478});
                    aVar.a("LK", new int[]{479});
                    aVar.a("PH", new int[]{480});
                    aVar.a("BY", new int[]{481});
                    aVar.a("UA", new int[]{482});
                    aVar.a("MD", new int[]{484});
                    aVar.a("AM", new int[]{485});
                    aVar.a("GE", new int[]{486});
                    aVar.a("KZ", new int[]{487});
                    aVar.a("HK", new int[]{489});
                    aVar.a("JP", new int[]{490, 499});
                    aVar.a("GB", new int[]{500, ErrorMessages.ERROR_BLUETOOTH_UNABLE_TO_ACCEPT});
                    aVar.a("GR", new int[]{520});
                    aVar.a(ExpandedProductParsedResult.POUND, new int[]{528});
                    aVar.a("CY", new int[]{529});
                    aVar.a("MK", new int[]{531});
                    aVar.a("MT", new int[]{535});
                    aVar.a("IE", new int[]{539});
                    aVar.a("BE/LU", new int[]{540, 549});
                    aVar.a("PT", new int[]{560});
                    aVar.a("IS", new int[]{569});
                    aVar.a("DK", new int[]{570, 579});
                    aVar.a("PL", new int[]{590});
                    aVar.a("RO", new int[]{594});
                    aVar.a("HU", new int[]{599});
                    aVar.a("ZA", new int[]{600, ErrorMessages.ERROR_ACTIVITY_STARTER_NO_CORRESPONDING_ACTIVITY});
                    aVar.a("GH", new int[]{603});
                    aVar.a("BH", new int[]{608});
                    aVar.a("MU", new int[]{609});
                    aVar.a("MA", new int[]{611});
                    aVar.a("DZ", new int[]{613});
                    aVar.a("KE", new int[]{616});
                    aVar.a("CI", new int[]{618});
                    aVar.a("TN", new int[]{619});
                    aVar.a("SY", new int[]{621});
                    aVar.a("EG", new int[]{622});
                    aVar.a("LY", new int[]{624});
                    aVar.a("JO", new int[]{625});
                    aVar.a("IR", new int[]{626});
                    aVar.a("KW", new int[]{627});
                    aVar.a("SA", new int[]{628});
                    aVar.a("AE", new int[]{629});
                    aVar.a("FI", new int[]{640, 649});
                    aVar.a("CN", new int[]{690, 695});
                    aVar.a("NO", new int[]{700, ErrorMessages.ERROR_UNABLE_TO_FOCUS_MEDIA});
                    aVar.a("IL", new int[]{729});
                    aVar.a("SE", new int[]{730, 739});
                    aVar.a("GT", new int[]{740});
                    aVar.a("SV", new int[]{741});
                    aVar.a("HN", new int[]{742});
                    aVar.a("NI", new int[]{743});
                    aVar.a("CR", new int[]{744});
                    aVar.a("PA", new int[]{745});
                    aVar.a("DO", new int[]{746});
                    aVar.a("MX", new int[]{750});
                    aVar.a("CA", new int[]{754, 755});
                    aVar.a("VE", new int[]{759});
                    aVar.a("CH", new int[]{760, 769});
                    aVar.a("CO", new int[]{770});
                    aVar.a("UY", new int[]{773});
                    aVar.a("PE", new int[]{775});
                    aVar.a("BO", new int[]{777});
                    aVar.a("AR", new int[]{779});
                    aVar.a("CL", new int[]{780});
                    aVar.a("PY", new int[]{784});
                    aVar.a("PE", new int[]{785});
                    aVar.a("EC", new int[]{786});
                    aVar.a("BR", new int[]{789, 790});
                    aVar.a("IT", new int[]{800, 839});
                    aVar.a("ES", new int[]{840, 849});
                    aVar.a("CU", new int[]{850});
                    aVar.a("SK", new int[]{858});
                    aVar.a("CZ", new int[]{859});
                    aVar.a("YU", new int[]{860});
                    aVar.a("MN", new int[]{865});
                    aVar.a("KP", new int[]{867});
                    aVar.a("TR", new int[]{868, 869});
                    aVar.a("NL", new int[]{870, 879});
                    aVar.a("KR", new int[]{880});
                    aVar.a("TH", new int[]{885});
                    aVar.a("SG", new int[]{888});
                    aVar.a("IN", new int[]{890});
                    aVar.a("VN", new int[]{893});
                    aVar.a("PK", new int[]{896});
                    aVar.a("ID", new int[]{899});
                    aVar.a("AT", new int[]{900, 919});
                    aVar.a("AU", new int[]{930, 939});
                    aVar.a("AZ", new int[]{940, 949});
                    aVar.a("MY", new int[]{955});
                    aVar.a("MO", new int[]{958});
                }
            }
            int i4 = Integer.parseInt(string.substring(0, 3));
            int size = aVar.f5244a.size();
            int i5 = 0;
            while (true) {
                if (i5 < size) {
                    int[] iArr2 = (int[]) aVar.f5244a.get(i5);
                    int i6 = iArr2[0];
                    if (i4 < i6) {
                        break;
                    }
                    if (iArr2.length != 1) {
                        i6 = iArr2[1];
                    }
                    if (i4 <= i6) {
                        str = (String) aVar.f5245b.get(i5);
                        break;
                    }
                    i5++;
                } else {
                    break;
                }
            }
            if (str != null) {
                result.putMetadata(ResultMetadataType.POSSIBLE_COUNTRY, str);
            }
        }
        return result;
    }

    public boolean checkChecksum(String str) {
        return b(str);
    }

    public static boolean b(String str) throws FormatException {
        int length = str.length();
        if (length != 0) {
            int i = 0;
            for (int i2 = length - 2; i2 >= 0; i2 -= 2) {
                int iCharAt = str.charAt(i2) - '0';
                if (iCharAt < 0 || iCharAt > 9) {
                    throw FormatException.getFormatInstance();
                }
                i += iCharAt;
            }
            int i3 = i * 3;
            for (int i4 = length - 1; i4 >= 0; i4 -= 2) {
                int iCharAt2 = str.charAt(i4) - '0';
                if (iCharAt2 < 0 || iCharAt2 > 9) {
                    throw FormatException.getFormatInstance();
                }
                i3 += iCharAt2;
            }
            if (i3 % 10 == 0) {
                return true;
            }
        }
        return false;
    }

    public int[] decodeEnd(BitArray bitArray, int i) {
        return d(bitArray, i, false, d, new int[3]);
    }

    public static int[] d(BitArray bitArray, int i, boolean z, int[] iArr, int[] iArr2) {
        int length = iArr.length;
        int size = bitArray.getSize();
        int nextUnset = z ? bitArray.getNextUnset(i) : bitArray.getNextSet(i);
        boolean z2 = z;
        int i2 = 0;
        int i3 = nextUnset;
        while (nextUnset < size) {
            if (bitArray.get(nextUnset) ^ z2) {
                iArr2[i2] = iArr2[i2] + 1;
            } else {
                int i4 = length - 1;
                if (i2 != i4) {
                    i2++;
                } else {
                    if (OneDReader.patternMatchVariance(iArr2, iArr, 179) < 122) {
                        return new int[]{i3, nextUnset};
                    }
                    i3 += iArr2[0] + iArr2[1];
                    int i5 = length - 2;
                    System.arraycopy(iArr2, 2, iArr2, 0, i5);
                    iArr2[i5] = 0;
                    iArr2[i4] = 0;
                    i2--;
                }
                iArr2[i2] = 1;
                z2 = !z2;
            }
            nextUnset++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public static int c(BitArray bitArray, int[] iArr, int i, int[][] iArr2) {
        OneDReader.recordPattern(bitArray, i, iArr);
        int length = iArr2.length;
        int i2 = 122;
        int i3 = -1;
        for (int i4 = 0; i4 < length; i4++) {
            int iPatternMatchVariance = OneDReader.patternMatchVariance(iArr, iArr2[i4], 179);
            if (iPatternMatchVariance < i2) {
                i3 = i4;
                i2 = iPatternMatchVariance;
            }
        }
        if (i3 >= 0) {
            return i3;
        }
        throw NotFoundException.getNotFoundInstance();
    }
}
