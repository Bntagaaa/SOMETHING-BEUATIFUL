package com.google.zxing.multi.qrcode.detector;

import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.detector.FinderPattern;
import com.google.zxing.qrcode.detector.FinderPatternFinder;
import com.google.zxing.qrcode.detector.FinderPatternInfo;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
final class a extends FinderPatternFinder {
    public static final FinderPatternInfo[] f = new FinderPatternInfo[0];

    public static final class b implements Comparator<FinderPattern>, Serializable {
        private b() {
        }

        public /* synthetic */ b(int i) {
            this();
        }

        @Override // java.util.Comparator
        public int compare(FinderPattern finderPattern, FinderPattern finderPattern2) {
            double estimatedModuleSize = finderPattern2.getEstimatedModuleSize() - finderPattern.getEstimatedModuleSize();
            if (estimatedModuleSize < 0.0d) {
                return -1;
            }
            return estimatedModuleSize > 0.0d ? 1 : 0;
        }
    }

    public FinderPatternInfo[] findMulti(Map<DecodeHintType, ?> map) throws NotFoundException {
        FinderPattern[][] finderPatternArr;
        int i = 3;
        int i2 = 0;
        char c = 1;
        boolean z = map != null && map.containsKey(DecodeHintType.TRY_HARDER);
        BitMatrix image = getImage();
        int height = image.getHeight();
        int width = image.getWidth();
        int i3 = (int) ((height / 228.0f) * 3.0f);
        if (i3 < 3 || z) {
            i3 = 3;
        }
        int[] iArr = new int[5];
        for (int i4 = i3 - 1; i4 < height; i4 += i3) {
            iArr[0] = 0;
            iArr[1] = 0;
            iArr[2] = 0;
            iArr[3] = 0;
            iArr[4] = 0;
            int i5 = 0;
            int i6 = 0;
            while (i5 < width) {
                if (image.get(i5, i4)) {
                    if ((i6 & 1) == 1) {
                        i6++;
                    }
                    iArr[i6] = iArr[i6] + 1;
                } else if ((i6 & 1) != 0) {
                    iArr[i6] = iArr[i6] + 1;
                } else if (i6 == 4) {
                    if (FinderPatternFinder.foundPatternCross(iArr)) {
                        if (!handlePossibleCenter(iArr, i4, i5)) {
                            while (true) {
                                int i7 = i5 + 1;
                                if (i7 >= width || image.get(i7, i4)) {
                                    break;
                                }
                                i5 = i7;
                            }
                        }
                        iArr[0] = 0;
                        iArr[1] = 0;
                        iArr[2] = 0;
                        iArr[3] = 0;
                        iArr[4] = 0;
                        i6 = 0;
                    } else {
                        iArr[0] = iArr[2];
                        iArr[1] = iArr[3];
                        iArr[2] = iArr[4];
                        iArr[3] = 1;
                        iArr[4] = 0;
                        i6 = 3;
                    }
                } else {
                    i6++;
                    iArr[i6] = iArr[i6] + 1;
                }
                i5++;
            }
            if (FinderPatternFinder.foundPatternCross(iArr)) {
                handlePossibleCenter(iArr, i4, width);
            }
        }
        List<FinderPattern> possibleCenters = getPossibleCenters();
        int size = possibleCenters.size();
        if (size < 3) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (size == 3) {
            finderPatternArr = new FinderPattern[][]{new FinderPattern[]{possibleCenters.get(0), possibleCenters.get(1), possibleCenters.get(2)}};
        } else {
            Collections.sort(possibleCenters, new b(i2));
            ArrayList arrayList = new ArrayList();
            int i8 = 0;
            while (i8 < size - 2) {
                FinderPattern finderPattern = possibleCenters.get(i8);
                if (finderPattern != null) {
                    int i9 = i8 + 1;
                    while (i9 < size - 1) {
                        FinderPattern finderPattern2 = possibleCenters.get(i9);
                        if (finderPattern2 != null) {
                            float estimatedModuleSize = (finderPattern.getEstimatedModuleSize() - finderPattern2.getEstimatedModuleSize()) / Math.min(finderPattern.getEstimatedModuleSize(), finderPattern2.getEstimatedModuleSize());
                            float f2 = 0.05f;
                            float f3 = 0.5f;
                            if (Math.abs(finderPattern.getEstimatedModuleSize() - finderPattern2.getEstimatedModuleSize()) > 0.5f && estimatedModuleSize >= 0.05f) {
                                break;
                            }
                            int i10 = i9 + 1;
                            while (i10 < size) {
                                FinderPattern finderPattern3 = possibleCenters.get(i10);
                                if (finderPattern3 != null) {
                                    float estimatedModuleSize2 = (finderPattern2.getEstimatedModuleSize() - finderPattern3.getEstimatedModuleSize()) / Math.min(finderPattern2.getEstimatedModuleSize(), finderPattern3.getEstimatedModuleSize());
                                    if (Math.abs(finderPattern2.getEstimatedModuleSize() - finderPattern3.getEstimatedModuleSize()) > f3 && estimatedModuleSize2 >= f2) {
                                        break;
                                    }
                                    FinderPattern[] finderPatternArr2 = new FinderPattern[i];
                                    finderPatternArr2[0] = finderPattern;
                                    finderPatternArr2[c] = finderPattern2;
                                    finderPatternArr2[2] = finderPattern3;
                                    ResultPoint.orderBestPatterns(finderPatternArr2);
                                    FinderPatternInfo finderPatternInfo = new FinderPatternInfo(finderPatternArr2);
                                    float fDistance = ResultPoint.distance(finderPatternInfo.getTopLeft(), finderPatternInfo.getBottomLeft());
                                    float fDistance2 = ResultPoint.distance(finderPatternInfo.getTopRight(), finderPatternInfo.getBottomLeft());
                                    float fDistance3 = ResultPoint.distance(finderPatternInfo.getTopLeft(), finderPatternInfo.getTopRight());
                                    float estimatedModuleSize3 = (fDistance + fDistance3) / (finderPattern.getEstimatedModuleSize() * 2.0f);
                                    if (estimatedModuleSize3 <= 180.0f && estimatedModuleSize3 >= 9.0f && Math.abs((fDistance - fDistance3) / Math.min(fDistance, fDistance3)) < 0.1f) {
                                        float fSqrt = (float) Math.sqrt((fDistance3 * fDistance3) + (fDistance * fDistance));
                                        if (Math.abs((fDistance2 - fSqrt) / Math.min(fDistance2, fSqrt)) < 0.1f) {
                                            arrayList.add(finderPatternArr2);
                                        }
                                    }
                                }
                                i10++;
                                i = 3;
                                c = 1;
                                f2 = 0.05f;
                                f3 = 0.5f;
                            }
                        }
                        i9++;
                        i = 3;
                        c = 1;
                    }
                }
                i8++;
                i = 3;
                c = 1;
            }
            if (!arrayList.isEmpty()) {
                finderPatternArr = (FinderPattern[][]) arrayList.toArray(new FinderPattern[arrayList.size()][]);
            } else {
                throw NotFoundException.getNotFoundInstance();
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (FinderPattern[] finderPatternArr3 : finderPatternArr) {
            ResultPoint.orderBestPatterns(finderPatternArr3);
            arrayList2.add(new FinderPatternInfo(finderPatternArr3));
        }
        if (arrayList2.isEmpty()) {
            return f;
        }
        return (FinderPatternInfo[]) arrayList2.toArray(new FinderPatternInfo[arrayList2.size()]);
    }
}
