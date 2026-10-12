package com.google.zxing.oned.rss;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitArray;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
public final class RSS14Reader extends AbstractRSSReader {
    public static final int[] i = {1, 10, 34, 70, 126};
    public static final int[] j = {4, 20, 48, 81};
    public static final int[] k = {0, 161, 961, 2015, 2715};
    public static final int[] l = {0, 336, 1036, 1516};
    public static final int[] m = {8, 6, 4, 3, 1};
    public static final int[] n = {2, 4, 6, 8};
    public static final int[][] o = {new int[]{3, 8, 2, 1}, new int[]{3, 5, 5, 1}, new int[]{3, 3, 7, 1}, new int[]{3, 1, 9, 1}, new int[]{2, 7, 4, 1}, new int[]{2, 5, 6, 1}, new int[]{2, 3, 8, 1}, new int[]{1, 5, 7, 1}, new int[]{1, 3, 9, 1}};

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f5258g = new ArrayList();
    public final ArrayList h = new ArrayList();

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i2, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException {
        a aVarD = d(bitArray, false, i2, map);
        ArrayList arrayList = this.f5258g;
        b(arrayList, aVarD);
        bitArray.reverse();
        a aVarD2 = d(bitArray, true, i2, map);
        ArrayList arrayList2 = this.h;
        b(arrayList2, aVarD2);
        bitArray.reverse();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (aVar.d > 1) {
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    a aVar2 = (a) it2.next();
                    if (aVar2.d > 1) {
                        FinderPattern finderPattern = aVar.c;
                        finderPattern.getValue();
                        FinderPattern finderPattern2 = aVar2.c;
                        finderPattern2.getValue();
                        int checksumPortion = ((aVar2.getChecksumPortion() * 16) + aVar.getChecksumPortion()) % 79;
                        int value = finderPattern2.getValue() + (finderPattern.getValue() * 9);
                        if (value > 72) {
                            value--;
                        }
                        if (value > 8) {
                            value--;
                        }
                        if (checksumPortion == value) {
                            String strValueOf = String.valueOf((aVar.getValue() * 4537077) + aVar2.getValue());
                            StringBuilder sb = new StringBuilder(14);
                            for (int length = 13 - strValueOf.length(); length > 0; length--) {
                                sb.append('0');
                            }
                            sb.append(strValueOf);
                            int i3 = 0;
                            for (int i4 = 0; i4 < 13; i4++) {
                                int iCharAt = sb.charAt(i4) - '0';
                                if ((i4 & 1) == 0) {
                                    iCharAt *= 3;
                                }
                                i3 += iCharAt;
                            }
                            int i5 = 10 - (i3 % 10);
                            if (i5 == 10) {
                                i5 = 0;
                            }
                            sb.append(i5);
                            ResultPoint[] resultPoints = finderPattern.getResultPoints();
                            ResultPoint[] resultPoints2 = finderPattern2.getResultPoints();
                            return new Result(String.valueOf(sb.toString()), null, new ResultPoint[]{resultPoints[0], resultPoints[1], resultPoints2[0], resultPoints2[1]}, BarcodeFormat.RSS_14);
                        }
                    }
                }
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public static void b(ArrayList arrayList, a aVar) {
        if (aVar == null) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            a aVar2 = (a) it.next();
            if (aVar2.getValue() == aVar.getValue()) {
                aVar2.d++;
                return;
            }
        }
        arrayList.add(aVar);
    }

    @Override // com.google.zxing.oned.OneDReader, com.google.zxing.Reader
    public void reset() {
        this.f5258g.clear();
        this.h.clear();
    }

    public final a d(BitArray bitArray, boolean z, int i2, Map map) {
        try {
            FinderPattern finderPatternF = f(bitArray, i2, z, e(bitArray, z));
            ResultPointCallback resultPointCallback = map == null ? null : (ResultPointCallback) map.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
            if (resultPointCallback != null) {
                float size = (r1[0] + r1[1]) / 2.0f;
                if (z) {
                    size = (bitArray.getSize() - 1) - size;
                }
                resultPointCallback.foundPossibleResultPoint(new ResultPoint(size, i2));
            }
            DataCharacter dataCharacterC = c(bitArray, finderPatternF, true);
            DataCharacter dataCharacterC2 = c(bitArray, finderPatternF, false);
            return new a((dataCharacterC.getValue() * 1597) + dataCharacterC2.getValue(), (dataCharacterC2.getChecksumPortion() * 4) + dataCharacterC.getChecksumPortion(), finderPatternF);
        } catch (NotFoundException unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00da A[PHI: r8 r14
      0x00da: PHI (r8v8 boolean) = (r8v4 boolean), (r8v21 boolean) binds: [B:56:0x00f1, B:43:0x00d8] A[DONT_GENERATE, DONT_INLINE]
      0x00da: PHI (r14v8 boolean) = (r14v4 boolean), (r14v16 boolean) binds: [B:56:0x00f1, B:43:0x00d8] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00de A[PHI: r8 r14
      0x00de: PHI (r8v6 boolean) = (r8v4 boolean), (r8v21 boolean) binds: [B:56:0x00f1, B:43:0x00d8] A[DONT_GENERATE, DONT_INLINE]
      0x00de: PHI (r14v6 boolean) = (r14v4 boolean), (r14v16 boolean) binds: [B:56:0x00f1, B:43:0x00d8] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.zxing.oned.rss.DataCharacter c(com.google.zxing.common.BitArray r20, com.google.zxing.oned.rss.FinderPattern r21, boolean r22) throws com.google.zxing.NotFoundException {
        /*
            Method dump skipped, instructions count: 521
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.rss.RSS14Reader.c(com.google.zxing.common.BitArray, com.google.zxing.oned.rss.FinderPattern, boolean):com.google.zxing.oned.rss.DataCharacter");
    }

    public final int[] e(BitArray bitArray, boolean z) throws NotFoundException {
        int[] decodeFinderCounters = getDecodeFinderCounters();
        decodeFinderCounters[0] = 0;
        decodeFinderCounters[1] = 0;
        decodeFinderCounters[2] = 0;
        decodeFinderCounters[3] = 0;
        int size = bitArray.getSize();
        int i2 = 0;
        boolean z2 = false;
        while (i2 < size) {
            z2 = !bitArray.get(i2);
            if (z == z2) {
                break;
            }
            i2++;
        }
        int i3 = i2;
        int i4 = 0;
        while (i2 < size) {
            if (bitArray.get(i2) ^ z2) {
                decodeFinderCounters[i4] = decodeFinderCounters[i4] + 1;
            } else {
                if (i4 != 3) {
                    i4++;
                } else {
                    if (AbstractRSSReader.isFinderPattern(decodeFinderCounters)) {
                        return new int[]{i3, i2};
                    }
                    i3 += decodeFinderCounters[0] + decodeFinderCounters[1];
                    decodeFinderCounters[0] = decodeFinderCounters[2];
                    decodeFinderCounters[1] = decodeFinderCounters[3];
                    decodeFinderCounters[2] = 0;
                    decodeFinderCounters[3] = 0;
                    i4--;
                }
                decodeFinderCounters[i4] = 1;
                z2 = !z2;
            }
            i2++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public final FinderPattern f(BitArray bitArray, int i2, boolean z, int[] iArr) throws NotFoundException {
        int i3;
        boolean z2 = bitArray.get(iArr[0]);
        int i4 = iArr[0] - 1;
        while (i4 >= 0 && (bitArray.get(i4) ^ z2)) {
            i4--;
        }
        int i5 = i4 + 1;
        int i6 = iArr[0] - i5;
        int[] decodeFinderCounters = getDecodeFinderCounters();
        System.arraycopy(decodeFinderCounters, 0, decodeFinderCounters, 1, decodeFinderCounters.length - 1);
        decodeFinderCounters[0] = i6;
        int finderValue = AbstractRSSReader.parseFinderValue(decodeFinderCounters, o);
        int size = iArr[1];
        if (z) {
            int size2 = (bitArray.getSize() - 1) - i5;
            size = (bitArray.getSize() - 1) - size;
            i3 = size2;
        } else {
            i3 = i5;
        }
        return new FinderPattern(finderValue, new int[]{i5, iArr[1]}, i3, size, i2);
    }
}
