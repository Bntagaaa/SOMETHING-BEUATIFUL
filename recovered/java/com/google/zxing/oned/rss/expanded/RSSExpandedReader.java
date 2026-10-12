package com.google.zxing.oned.rss.expanded;

import com.google.appinventor.components.common.ComponentConstants;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.FullScreenVideoUtil;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;
import com.google.zxing.oned.OneDReader;
import com.google.zxing.oned.rss.AbstractRSSReader;
import com.google.zxing.oned.rss.DataCharacter;
import com.google.zxing.oned.rss.FinderPattern;
import com.google.zxing.oned.rss.RSSUtils;
import java.util.ArrayList;
import kotlinx.coroutines.scheduling.WorkQueueKt;

/* loaded from: classes2.dex */
public final class RSSExpandedReader extends AbstractRSSReader {
    public static final int[] j = {7, 5, 4, 3, 1};
    public static final int[] k = {4, 20, 52, 104, 204};
    public static final int[] l = {0, 348, 1388, 2948, 3988};
    public static final int[][] m = {new int[]{1, 8, 4, 1}, new int[]{3, 6, 4, 1}, new int[]{3, 4, 6, 1}, new int[]{3, 2, 8, 1}, new int[]{2, 6, 5, 1}, new int[]{2, 2, 9, 1}};
    public static final int[][] n = {new int[]{1, 3, 9, 27, 81, 32, 96, 77}, new int[]{20, 60, 180, 118, 143, 7, 21, 63}, new int[]{FullScreenVideoUtil.FULLSCREEN_VIDEO_DIALOG_FLAG, 145, 13, 39, 117, 140, 209, 205}, new int[]{FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_STOP, 157, 49, 147, 19, 57, 171, 91}, new int[]{62, 186, 136, 197, 169, 85, 44, 132}, new int[]{185, 133, 188, 142, 4, 12, 36, 108}, new int[]{113, 128, 173, 97, 80, 29, 87, 50}, new int[]{150, 28, 84, 41, 123, 158, 52, 156}, new int[]{46, 138, 203, 187, 139, 206, FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_DURATION, 166}, new int[]{76, 17, 51, 153, 37, 111, 122, 155}, new int[]{43, 129, 176, 106, 107, 110, 119, 146}, new int[]{16, 48, 144, 10, 30, 90, 59, 177}, new int[]{109, 116, 137, 200, 178, 112, 125, 164}, new int[]{70, 210, 208, ErrorMessages.ERROR_NO_CAMERA_PERMISSION, 184, 130, 179, 115}, new int[]{134, FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_PLAY, 151, 31, 93, 68, 204, FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_SEEK}, new int[]{148, 22, 66, 198, 172, 94, 71, 2}, new int[]{6, 18, 54, 162, 64, FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_PAUSE, 154, 40}, new int[]{120, 149, 25, 75, 14, 42, 126, 167}, new int[]{79, 26, 78, 23, 69, 207, 199, 175}, new int[]{103, 98, 83, 38, 114, 131, 182, 124}, new int[]{161, 61, 183, WorkQueueKt.MASK, 170, 88, 53, 159}, new int[]{55, 165, 73, 8, 24, 72, 5, 15}, new int[]{45, 135, FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_SOURCE, ComponentConstants.TEXTBOX_PREFERRED_WIDTH, 58, 174, 100, 89}};
    public static final int[][] o;
    public static final int p;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f5259g = new ArrayList(11);
    public final int[] h = new int[2];
    public final int[] i = new int[p];

    static {
        int[][] iArr = {new int[]{0, 0}, new int[]{0, 1, 1}, new int[]{0, 2, 1, 3}, new int[]{0, 4, 1, 3, 2}, new int[]{0, 4, 1, 3, 3, 5}, new int[]{0, 4, 1, 3, 4, 5, 5}, new int[]{0, 0, 1, 1, 2, 2, 3, 3}, new int[]{0, 0, 1, 1, 2, 2, 3, 4, 4}, new int[]{0, 0, 1, 1, 2, 2, 3, 4, 5, 5}, new int[]{0, 0, 1, 1, 2, 3, 3, 4, 4, 5, 5}};
        o = iArr;
        p = iArr[iArr.length - 1].length;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01b9, code lost:
    
        if ((((r10 - 4) * 211) + (r0 % 211)) != r3.getValue()) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x01bb, code lost:
    
        r0 = r9.size() << 1;
        r2 = r0 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01cf, code lost:
    
        if (((com.google.zxing.oned.rss.expanded.b) r9.get(r9.size() - 1)).f5261b != null) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01d1, code lost:
    
        r2 = r0 - 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01d3, code lost:
    
        r0 = new com.google.zxing.common.BitArray(r2 * 12);
        r2 = ((com.google.zxing.oned.rss.expanded.b) r9.get(0)).f5261b.getValue();
        r6 = 11;
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01eb, code lost:
    
        if (r6 < 0) goto L183;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x01f0, code lost:
    
        if (((1 << r6) & r2) == 0) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x01f2, code lost:
    
        r0.set(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x01f5, code lost:
    
        r7 = r7 + 1;
        r6 = r6 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x01f9, code lost:
    
        r2 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x01fe, code lost:
    
        if (r2 >= r9.size()) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0200, code lost:
    
        r6 = (com.google.zxing.oned.rss.expanded.b) r9.get(r2);
        r10 = r6.f5260a.getValue();
        r11 = 11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x020e, code lost:
    
        if (r11 < 0) goto L189;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0213, code lost:
    
        if (((1 << r11) & r10) == 0) goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0215, code lost:
    
        r0.set(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0218, code lost:
    
        r7 = r7 + 1;
        r11 = r11 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x021c, code lost:
    
        r6 = r6.f5261b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x021e, code lost:
    
        if (r6 == null) goto L187;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0220, code lost:
    
        r6 = r6.getValue();
        r10 = 11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0226, code lost:
    
        if (r10 < 0) goto L188;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x022b, code lost:
    
        if (((1 << r10) & r6) == 0) goto L193;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x022d, code lost:
    
        r0.set(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0230, code lost:
    
        r7 = r7 + 1;
        r10 = r10 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0234, code lost:
    
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0236, code lost:
    
        r0 = com.google.zxing.oned.rss.expanded.decoders.AbstractExpandedDecoder.createDecoder(r0).parseInformation();
        r2 = ((com.google.zxing.oned.rss.expanded.b) r9.get(0)).c.getResultPoints();
        r3 = ((com.google.zxing.oned.rss.expanded.b) r9.get(r9.size() - 1)).c.getResultPoints();
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0275, code lost:
    
        return new com.google.zxing.Result(r0, null, new com.google.zxing.ResultPoint[]{r2[0], r2[1], r3[0], r3[1]}, com.google.zxing.BarcodeFormat.RSS_EXPANDED);
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x027b, code lost:
    
        if (r7.mustBeLast() != false) goto L164;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0282, code lost:
    
        throw com.google.zxing.NotFoundException.getNotFoundInstance();
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0288, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0289, code lost:
    
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0292, code lost:
    
        throw com.google.zxing.NotFoundException.getNotFoundInstance();
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0297, code lost:
    
        throw com.google.zxing.NotFoundException.getNotFoundInstance();
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x011a, code lost:
    
        r3 = r9.size();
        r6 = r3 + 1;
        r7 = r23.i;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0123, code lost:
    
        if (r6 > r7.length) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0125, code lost:
    
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x012a, code lost:
    
        if (r10 >= r9.size()) goto L177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x012c, code lost:
    
        r7[r10] = ((com.google.zxing.oned.rss.expanded.b) r9.get(r10)).c.getValue();
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x013c, code lost:
    
        r7[r3] = r12.getValue();
        r3 = com.google.zxing.oned.rss.expanded.RSSExpandedReader.o;
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0147, code lost:
    
        if (r10 >= 10) goto L161;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0149, code lost:
    
        r11 = r3[r10];
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x014c, code lost:
    
        if (r11.length < r6) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x014e, code lost:
    
        r13 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x014f, code lost:
    
        if (r13 >= r6) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0155, code lost:
    
        if (r7[r13] == r11[r13]) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x015a, code lost:
    
        r13 = r13 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x015d, code lost:
    
        if (r6 != r11.length) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x015f, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0161, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0162, code lost:
    
        r6 = b(r25, r12, r0, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0166, code lost:
    
        r0 = b(r25, r12, r0, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x016b, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x016c, code lost:
    
        if (r3 != false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x016e, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x016f, code lost:
    
        r7 = new com.google.zxing.oned.rss.expanded.b(r6, r0, r12, r3);
        r9.add(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0177, code lost:
    
        if (r3 == false) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0179, code lost:
    
        r0 = (com.google.zxing.oned.rss.expanded.b) r9.get(0);
        r3 = r0.f5260a;
        r0 = r0.f5261b.getChecksumPortion();
        r6 = 1;
        r10 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x018d, code lost:
    
        if (r6 >= r9.size()) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x018f, code lost:
    
        r11 = (com.google.zxing.oned.rss.expanded.b) r9.get(r6);
        r12 = r11.f5260a.getChecksumPortion() + r0;
        r0 = r10 + 1;
        r11 = r11.f5261b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01a0, code lost:
    
        if (r11 == null) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01a2, code lost:
    
        r0 = r11.getChecksumPortion() + r12;
        r10 = r10 + 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01aa, code lost:
    
        r10 = r0;
        r0 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01ac, code lost:
    
        r6 = r6 + 1;
     */
    @Override // com.google.zxing.oned.OneDReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.zxing.Result decodeRow(int r24, com.google.zxing.common.BitArray r25, java.util.Map<com.google.zxing.DecodeHintType, ?> r26) throws com.google.zxing.NotFoundException {
        /*
            Method dump skipped, instructions count: 734
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.rss.expanded.RSSExpandedReader.decodeRow(int, com.google.zxing.common.BitArray, java.util.Map):com.google.zxing.Result");
    }

    @Override // com.google.zxing.oned.OneDReader, com.google.zxing.Reader
    public void reset() {
        this.f5259g.clear();
    }

    public final DataCharacter b(BitArray bitArray, FinderPattern finderPattern, boolean z, boolean z2) throws NotFoundException {
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        int[][] iArr;
        int[] dataCharacterCounters = getDataCharacterCounters();
        dataCharacterCounters[0] = 0;
        dataCharacterCounters[1] = 0;
        dataCharacterCounters[2] = 0;
        dataCharacterCounters[3] = 0;
        dataCharacterCounters[4] = 0;
        dataCharacterCounters[5] = 0;
        dataCharacterCounters[6] = 0;
        dataCharacterCounters[7] = 0;
        if (z2) {
            OneDReader.recordPatternInReverse(bitArray, finderPattern.getStartEnd()[0], dataCharacterCounters);
        } else {
            OneDReader.recordPattern(bitArray, finderPattern.getStartEnd()[1] + 1, dataCharacterCounters);
            int i = 0;
            for (int length = dataCharacterCounters.length - 1; i < length; length--) {
                int i2 = dataCharacterCounters[i];
                dataCharacterCounters[i] = dataCharacterCounters[length];
                dataCharacterCounters[length] = i2;
                i++;
            }
        }
        float fCount = AbstractRSSReader.count(dataCharacterCounters) / 17;
        int[] oddCounts = getOddCounts();
        int[] evenCounts = getEvenCounts();
        float[] oddRoundingErrors = getOddRoundingErrors();
        float[] evenRoundingErrors = getEvenRoundingErrors();
        for (int i3 = 0; i3 < dataCharacterCounters.length; i3++) {
            float f = (dataCharacterCounters[i3] * 1.0f) / fCount;
            int i4 = (int) (0.5f + f);
            if (i4 < 1) {
                i4 = 1;
            } else if (i4 > 8) {
                i4 = 8;
            }
            int i5 = i3 >> 1;
            if ((i3 & 1) == 0) {
                oddCounts[i5] = i4;
                oddRoundingErrors[i5] = f - i4;
            } else {
                evenCounts[i5] = i4;
                evenRoundingErrors[i5] = f - i4;
            }
        }
        int iCount = AbstractRSSReader.count(getOddCounts());
        int iCount2 = AbstractRSSReader.count(getEvenCounts());
        int i6 = (iCount + iCount2) - 17;
        boolean z7 = (iCount & 1) == 1;
        boolean z8 = (iCount2 & 1) == 0;
        if (iCount > 13) {
            z3 = false;
            z4 = true;
        } else {
            z3 = iCount < 4;
            z4 = false;
        }
        if (iCount2 > 13) {
            z5 = false;
            z6 = true;
        } else {
            z5 = iCount2 < 4;
            z6 = false;
        }
        if (i6 == 1) {
            if (z7) {
                if (z8) {
                    throw NotFoundException.getNotFoundInstance();
                }
                z4 = true;
            } else {
                if (!z8) {
                    throw NotFoundException.getNotFoundInstance();
                }
                z6 = true;
            }
        } else if (i6 != -1) {
            if (i6 != 0) {
                throw NotFoundException.getNotFoundInstance();
            }
            if (z7) {
                if (!z8) {
                    throw NotFoundException.getNotFoundInstance();
                }
                if (iCount < iCount2) {
                    z3 = true;
                    z6 = true;
                } else {
                    z4 = true;
                    z5 = true;
                }
            } else if (z8) {
                throw NotFoundException.getNotFoundInstance();
            }
        } else if (!z7) {
            if (!z8) {
                throw NotFoundException.getNotFoundInstance();
            }
            z5 = true;
        } else {
            if (z8) {
                throw NotFoundException.getNotFoundInstance();
            }
            z3 = true;
        }
        if (z3) {
            if (z4) {
                throw NotFoundException.getNotFoundInstance();
            }
            AbstractRSSReader.increment(getOddCounts(), getOddRoundingErrors());
        }
        if (z4) {
            AbstractRSSReader.decrement(getOddCounts(), getOddRoundingErrors());
        }
        if (z5) {
            if (z6) {
                throw NotFoundException.getNotFoundInstance();
            }
            AbstractRSSReader.increment(getEvenCounts(), getOddRoundingErrors());
        }
        if (z6) {
            AbstractRSSReader.decrement(getEvenCounts(), getEvenRoundingErrors());
        }
        int value = (((finderPattern.getValue() * 4) + (z ? 0 : 2)) + (!z2 ? 1 : 0)) - 1;
        int length2 = oddCounts.length - 1;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            iArr = n;
            if (length2 < 0) {
                break;
            }
            if (finderPattern.getValue() != 0 || !z || !z2) {
                i7 += oddCounts[length2] * iArr[value][length2 * 2];
            }
            i8 += oddCounts[length2];
            length2--;
        }
        int i9 = 0;
        for (int length3 = evenCounts.length - 1; length3 >= 0; length3--) {
            if (finderPattern.getValue() != 0 || !z || !z2) {
                i9 += evenCounts[length3] * iArr[value][(length3 * 2) + 1];
            }
            int i10 = evenCounts[length3];
        }
        int i11 = i7 + i9;
        if ((i8 & 1) != 0 || i8 > 13 || i8 < 4) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i12 = (13 - i8) / 2;
        int i13 = j[i12];
        return new DataCharacter((RSSUtils.getRSSvalue(oddCounts, i13, true) * k[i12]) + RSSUtils.getRSSvalue(evenCounts, 9 - i13, false) + l[i12], i11);
    }
}
