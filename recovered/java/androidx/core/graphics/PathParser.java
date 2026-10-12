package androidx.core.graphics;

import android.graphics.Path;
import android.util.Log;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public class PathParser {

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public boolean f1033a;
    }

    public static float[] a(float[] fArr, int i) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        int length = fArr.length;
        if (length < 0) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int iMin = Math.min(i, length);
        float[] fArr2 = new float[i];
        System.arraycopy(fArr, 0, fArr2, 0, iMin);
        return fArr2;
    }

    public static Path createPathFromPathData(String str) {
        Path path = new Path();
        PathDataNode[] pathDataNodeArrCreateNodesFromPathData = createNodesFromPathData(str);
        if (pathDataNodeArrCreateNodesFromPathData == null) {
            return null;
        }
        try {
            PathDataNode.nodesToPath(pathDataNodeArrCreateNodesFromPathData, path);
            return path;
        } catch (RuntimeException e) {
            throw new RuntimeException(_COROUTINE.a.i("Error in parsing ", str), e);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00a5 A[Catch: NumberFormatException -> 0x00b8, LOOP:3: B:29:0x0075->B:49:0x00a5, LOOP_END, TryCatch #0 {NumberFormatException -> 0x00b8, blocks: (B:26:0x005b, B:28:0x006e, B:29:0x0075, B:31:0x007b, B:35:0x0087, B:49:0x00a5, B:39:0x0090, B:44:0x009c, B:51:0x00aa, B:54:0x00ba, B:58:0x00c1, B:59:0x00c4), top: B:73:0x005b }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00aa A[Catch: NumberFormatException -> 0x00b8, TryCatch #0 {NumberFormatException -> 0x00b8, blocks: (B:26:0x005b, B:28:0x006e, B:29:0x0075, B:31:0x007b, B:35:0x0087, B:49:0x00a5, B:39:0x0090, B:44:0x009c, B:51:0x00aa, B:54:0x00ba, B:58:0x00c1, B:59:0x00c4), top: B:73:0x005b }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00c1 A[Catch: NumberFormatException -> 0x00b8, TryCatch #0 {NumberFormatException -> 0x00b8, blocks: (B:26:0x005b, B:28:0x006e, B:29:0x0075, B:31:0x007b, B:35:0x0087, B:49:0x00a5, B:39:0x0090, B:44:0x009c, B:51:0x00aa, B:54:0x00ba, B:58:0x00c1, B:59:0x00c4), top: B:73:0x005b }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00eb A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x00a4 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.core.graphics.PathParser.PathDataNode[] createNodesFromPathData(java.lang.String r17) {
        /*
            Method dump skipped, instructions count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.PathParser.createNodesFromPathData(java.lang.String):androidx.core.graphics.PathParser$PathDataNode[]");
    }

    public static PathDataNode[] deepCopyNodes(PathDataNode[] pathDataNodeArr) {
        if (pathDataNodeArr == null) {
            return null;
        }
        PathDataNode[] pathDataNodeArr2 = new PathDataNode[pathDataNodeArr.length];
        for (int i = 0; i < pathDataNodeArr.length; i++) {
            PathDataNode pathDataNode = pathDataNodeArr[i];
            PathDataNode pathDataNode2 = new PathDataNode();
            pathDataNode2.mType = pathDataNode.mType;
            float[] fArr = pathDataNode.mParams;
            pathDataNode2.mParams = a(fArr, fArr.length);
            pathDataNodeArr2[i] = pathDataNode2;
        }
        return pathDataNodeArr2;
    }

    public static boolean canMorph(@Nullable PathDataNode[] pathDataNodeArr, @Nullable PathDataNode[] pathDataNodeArr2) {
        if (pathDataNodeArr == null || pathDataNodeArr2 == null || pathDataNodeArr.length != pathDataNodeArr2.length) {
            return false;
        }
        for (int i = 0; i < pathDataNodeArr.length; i++) {
            PathDataNode pathDataNode = pathDataNodeArr[i];
            char c = pathDataNode.mType;
            PathDataNode pathDataNode2 = pathDataNodeArr2[i];
            if (c != pathDataNode2.mType || pathDataNode.mParams.length != pathDataNode2.mParams.length) {
                return false;
            }
        }
        return true;
    }

    public static void updateNodes(PathDataNode[] pathDataNodeArr, PathDataNode[] pathDataNodeArr2) {
        for (int i = 0; i < pathDataNodeArr2.length; i++) {
            pathDataNodeArr[i].mType = pathDataNodeArr2[i].mType;
            int i2 = 0;
            while (true) {
                float[] fArr = pathDataNodeArr2[i].mParams;
                if (i2 < fArr.length) {
                    pathDataNodeArr[i].mParams[i2] = fArr[i2];
                    i2++;
                }
            }
        }
    }

    public static boolean interpolatePathDataNodes(PathDataNode[] pathDataNodeArr, PathDataNode[] pathDataNodeArr2, PathDataNode[] pathDataNodeArr3, float f) {
        if (pathDataNodeArr == null || pathDataNodeArr2 == null || pathDataNodeArr3 == null) {
            throw new IllegalArgumentException("The nodes to be interpolated and resulting nodes cannot be null");
        }
        if (pathDataNodeArr.length != pathDataNodeArr2.length || pathDataNodeArr2.length != pathDataNodeArr3.length) {
            throw new IllegalArgumentException("The nodes to be interpolated and resulting nodes must have the same length");
        }
        if (!canMorph(pathDataNodeArr2, pathDataNodeArr3)) {
            return false;
        }
        for (int i = 0; i < pathDataNodeArr.length; i++) {
            pathDataNodeArr[i].interpolatePathDataNode(pathDataNodeArr2[i], pathDataNodeArr3[i], f);
        }
        return true;
    }

    public static class PathDataNode {
        public float[] mParams;
        public char mType;

        public static void nodesToPath(PathDataNode[] pathDataNodeArr, Path path) {
            int i;
            int i2;
            float[] fArr;
            char c;
            float f;
            float f2;
            float[] fArr2;
            boolean z;
            float f3;
            float f4;
            float f5;
            float f6;
            float f7;
            float f8;
            float f9;
            float f10;
            float f11;
            Path path2 = path;
            float[] fArr3 = new float[6];
            char c2 = 0;
            char c3 = 'm';
            int i3 = 0;
            while (i3 < pathDataNodeArr.length) {
                PathDataNode pathDataNode = pathDataNodeArr[i3];
                char c4 = pathDataNode.mType;
                float[] fArr4 = pathDataNode.mParams;
                float f12 = fArr3[c2];
                float f13 = fArr3[1];
                float f14 = fArr3[2];
                float f15 = fArr3[3];
                float f16 = fArr3[4];
                float f17 = fArr3[5];
                switch (c4) {
                    case 'A':
                    case 'a':
                        i = 7;
                        break;
                    case 'C':
                    case 'c':
                        i = 6;
                        break;
                    case 'H':
                    case 'V':
                    case 'h':
                    case 'v':
                        i = 1;
                        break;
                    case 'Q':
                    case 'S':
                    case 'q':
                    case 's':
                        i = 4;
                        break;
                    case 'Z':
                    case 'z':
                        path2.close();
                        path2.moveTo(f16, f17);
                        f12 = f16;
                        f14 = f12;
                        f13 = f17;
                        f15 = f13;
                    default:
                        i = 2;
                        break;
                }
                float f18 = f13;
                float f19 = f16;
                float f20 = f17;
                float f21 = f12;
                int i4 = 0;
                while (i4 < fArr4.length) {
                    if (c4 == 'A') {
                        i2 = i4;
                        fArr = fArr4;
                        float f22 = f18;
                        c = c4;
                        int i5 = i2 + 5;
                        int i6 = i2 + 6;
                        a(path, f21, f22, fArr[i5], fArr[i6], fArr[i2], fArr[i2 + 1], fArr[i2 + 2], fArr[i2 + 3] != 0.0f, fArr[i2 + 4] != 0.0f);
                        f14 = fArr[i5];
                        f21 = f14;
                        f = fArr[i6];
                        f15 = f;
                    } else if (c4 == 'C') {
                        i2 = i4;
                        c = c4;
                        fArr = fArr4;
                        int i7 = i2 + 2;
                        int i8 = i2 + 3;
                        int i9 = i2 + 4;
                        int i10 = i2 + 5;
                        path2.cubicTo(fArr[i2], fArr[i2 + 1], fArr[i7], fArr[i8], fArr[i9], fArr[i10]);
                        float f23 = fArr[i9];
                        float f24 = fArr[i10];
                        f21 = f23;
                        f14 = fArr[i7];
                        f15 = fArr[i8];
                        f = f24;
                    } else if (c4 != 'H') {
                        if (c4 == 'Q') {
                            i2 = i4;
                            c = c4;
                            fArr = fArr4;
                            int i11 = i2 + 1;
                            int i12 = i2 + 2;
                            int i13 = i2 + 3;
                            path2.quadTo(fArr[i2], fArr[i11], fArr[i12], fArr[i13]);
                            f2 = fArr[i2];
                            f15 = fArr[i11];
                            f21 = fArr[i12];
                            f = fArr[i13];
                        } else if (c4 == 'V') {
                            i2 = i4;
                            c = c4;
                            fArr = fArr4;
                            path2.lineTo(f21, fArr[i2]);
                            f = fArr[i2];
                        } else if (c4 != 'a') {
                            if (c4 == 'c') {
                                i2 = i4;
                                int i14 = i2 + 2;
                                int i15 = i2 + 3;
                                int i16 = i2 + 4;
                                int i17 = i2 + 5;
                                path2.rCubicTo(fArr4[i2], fArr4[i2 + 1], fArr4[i14], fArr4[i15], fArr4[i16], fArr4[i17]);
                                float f25 = fArr4[i14] + f21;
                                float f26 = f18 + fArr4[i15];
                                f21 += fArr4[i16];
                                f18 += fArr4[i17];
                                f14 = f25;
                                f15 = f26;
                            } else if (c4 != 'h') {
                                if (c4 != 'q') {
                                    if (c4 != 'v') {
                                        if (c4 == 'L') {
                                            i2 = i4;
                                            int i18 = i2 + 1;
                                            path2.lineTo(fArr4[i2], fArr4[i18]);
                                            f7 = fArr4[i2];
                                            f = fArr4[i18];
                                        } else if (c4 == 'M') {
                                            i2 = i4;
                                            f7 = fArr4[i2];
                                            f = fArr4[i2 + 1];
                                            if (i2 > 0) {
                                                path2.lineTo(f7, f);
                                            } else {
                                                path2.moveTo(f7, f);
                                                f21 = f7;
                                                f19 = f21;
                                                f20 = f;
                                                c = c4;
                                                fArr = fArr4;
                                            }
                                        } else if (c4 == 'S') {
                                            i2 = i4;
                                            if (c3 == 'c' || c3 == 's' || c3 == 'C' || c3 == 'S') {
                                                f21 = (f21 * 2.0f) - f14;
                                                f18 = (f18 * 2.0f) - f15;
                                            }
                                            float f27 = f21;
                                            int i19 = i2 + 1;
                                            int i20 = i2 + 2;
                                            int i21 = i2 + 3;
                                            path2.cubicTo(f27, f18, fArr4[i2], fArr4[i19], fArr4[i20], fArr4[i21]);
                                            f2 = fArr4[i2];
                                            f15 = fArr4[i19];
                                            f21 = fArr4[i20];
                                            f = fArr4[i21];
                                            c = c4;
                                            fArr = fArr4;
                                        } else if (c4 == 'T') {
                                            i2 = i4;
                                            if (c3 == 'q' || c3 == 't' || c3 == 'Q' || c3 == 'T') {
                                                f21 = (f21 * 2.0f) - f14;
                                                f18 = (f18 * 2.0f) - f15;
                                            }
                                            float f28 = f18;
                                            int i22 = i2 + 1;
                                            path2.quadTo(f21, f28, fArr4[i2], fArr4[i22]);
                                            f15 = f28;
                                            c = c4;
                                            fArr = fArr4;
                                            f14 = f21;
                                            f21 = fArr4[i2];
                                            f = fArr4[i22];
                                        } else if (c4 == 'l') {
                                            i2 = i4;
                                            int i23 = i2 + 1;
                                            path2.rLineTo(fArr4[i2], fArr4[i23]);
                                            f21 += fArr4[i2];
                                            f6 = fArr4[i23];
                                        } else if (c4 == 'm') {
                                            i2 = i4;
                                            float f29 = fArr4[i2];
                                            f21 += f29;
                                            float f30 = fArr4[i2 + 1];
                                            f18 += f30;
                                            if (i2 > 0) {
                                                path2.rLineTo(f29, f30);
                                            } else {
                                                path2.rMoveTo(f29, f30);
                                                fArr = fArr4;
                                                f19 = f21;
                                                f = f18;
                                                f20 = f;
                                                c = c4;
                                            }
                                        } else if (c4 == 's') {
                                            if (c3 == 'c' || c3 == 's' || c3 == 'C' || c3 == 'S') {
                                                f8 = f18 - f15;
                                                f9 = f21 - f14;
                                            } else {
                                                f9 = 0.0f;
                                                f8 = 0.0f;
                                            }
                                            int i24 = i4 + 1;
                                            int i25 = i4 + 2;
                                            int i26 = i4 + 3;
                                            i2 = i4;
                                            path2.rCubicTo(f9, f8, fArr4[i4], fArr4[i24], fArr4[i25], fArr4[i26]);
                                            f3 = fArr4[i2] + f21;
                                            f4 = f18 + fArr4[i24];
                                            f21 += fArr4[i25];
                                            f5 = fArr4[i26];
                                        } else if (c4 != 't') {
                                            i2 = i4;
                                        } else {
                                            if (c3 == 'q' || c3 == 't' || c3 == 'Q' || c3 == 'T') {
                                                f10 = f21 - f14;
                                                f11 = f18 - f15;
                                            } else {
                                                f11 = 0.0f;
                                                f10 = 0.0f;
                                            }
                                            int i27 = i4 + 1;
                                            path2.rQuadTo(f10, f11, fArr4[i4], fArr4[i27]);
                                            float f31 = f10 + f21;
                                            float f32 = f18 + f11;
                                            f21 += fArr4[i4];
                                            f18 += fArr4[i27];
                                            f15 = f32;
                                            i2 = i4;
                                            f14 = f31;
                                        }
                                        f21 = f7;
                                        c = c4;
                                        fArr = fArr4;
                                    } else {
                                        i2 = i4;
                                        path2.rLineTo(0.0f, fArr4[i2]);
                                        f6 = fArr4[i2];
                                    }
                                    f18 += f6;
                                } else {
                                    i2 = i4;
                                    int i28 = i2 + 1;
                                    int i29 = i2 + 2;
                                    int i30 = i2 + 3;
                                    path2.rQuadTo(fArr4[i2], fArr4[i28], fArr4[i29], fArr4[i30]);
                                    f3 = fArr4[i2] + f21;
                                    f4 = f18 + fArr4[i28];
                                    f21 += fArr4[i29];
                                    f5 = fArr4[i30];
                                }
                                f18 += f5;
                                f14 = f3;
                                f15 = f4;
                            } else {
                                i2 = i4;
                                path2.rLineTo(fArr4[i2], 0.0f);
                                f21 += fArr4[i2];
                            }
                            fArr = fArr4;
                            f = f18;
                            c = c4;
                        } else {
                            i2 = i4;
                            int i31 = i2 + 5;
                            float f33 = fArr4[i31] + f21;
                            int i32 = i2 + 6;
                            float f34 = fArr4[i32] + f18;
                            float f35 = fArr4[i2];
                            float f36 = fArr4[i2 + 1];
                            float f37 = fArr4[i2 + 2];
                            if (fArr4[i2 + 3] != 0.0f) {
                                fArr2 = fArr4;
                                z = true;
                            } else {
                                fArr2 = fArr4;
                                z = false;
                            }
                            float f38 = fArr2[i2 + 4];
                            fArr = fArr2;
                            float f39 = f21;
                            boolean z2 = f38 != 0.0f;
                            float f40 = f18;
                            c = c4;
                            a(path, f39, f40, f33, f34, f35, f36, f37, z, z2);
                            f21 = f39 + fArr[i31];
                            f = fArr[i32] + f40;
                            f15 = f;
                            f14 = f21;
                        }
                        f14 = f2;
                    } else {
                        i2 = i4;
                        fArr = fArr4;
                        f = f18;
                        c = c4;
                        path2.lineTo(fArr[i2], f);
                        f21 = fArr[i2];
                    }
                    c3 = c;
                    c4 = c3;
                    fArr4 = fArr;
                    f18 = f;
                    i4 = i2 + i;
                    path2 = path;
                }
                fArr3[0] = f21;
                fArr3[1] = f18;
                fArr3[2] = f14;
                fArr3[3] = f15;
                fArr3[4] = f19;
                fArr3[5] = f20;
                c3 = pathDataNodeArr[i3].mType;
                i3++;
                path2 = path;
                c2 = 0;
            }
        }

        public void interpolatePathDataNode(PathDataNode pathDataNode, PathDataNode pathDataNode2, float f) {
            this.mType = pathDataNode.mType;
            int i = 0;
            while (true) {
                float[] fArr = pathDataNode.mParams;
                if (i >= fArr.length) {
                    return;
                }
                this.mParams[i] = (pathDataNode2.mParams[i] * f) + ((1.0f - f) * fArr[i]);
                i++;
            }
        }

        public static void a(Path path, float f, float f2, float f3, float f4, float f5, float f6, float f7, boolean z, boolean z2) {
            double d;
            double d2;
            double radians = Math.toRadians(f7);
            double dCos = Math.cos(radians);
            double dSin = Math.sin(radians);
            double d3 = f;
            double d4 = f2;
            double d5 = f5;
            double d6 = ((d4 * dSin) + (d3 * dCos)) / d5;
            double d7 = f6;
            double d8 = ((d4 * dCos) + ((-f) * dSin)) / d7;
            double d9 = f4;
            double d10 = ((d9 * dSin) + (f3 * dCos)) / d5;
            double d11 = ((d9 * dCos) + ((-f3) * dSin)) / d7;
            double d12 = d6 - d10;
            double d13 = d8 - d11;
            double d14 = (d6 + d10) / 2.0d;
            double d15 = (d8 + d11) / 2.0d;
            double d16 = (d13 * d13) + (d12 * d12);
            if (d16 == 0.0d) {
                Log.w("PathParser", " Points are coincident");
                return;
            }
            double d17 = (1.0d / d16) - 0.25d;
            if (d17 < 0.0d) {
                Log.w("PathParser", "Points are too far apart " + d16);
                float fSqrt = (float) (Math.sqrt(d16) / 1.99999d);
                a(path, f, f2, f3, f4, f5 * fSqrt, fSqrt * f6, f7, z, z2);
                return;
            }
            double dSqrt = Math.sqrt(d17);
            double d18 = dSqrt * d12;
            double d19 = dSqrt * d13;
            if (z == z2) {
                d = d14 - d19;
                d2 = d15 + d18;
            } else {
                d = d14 + d19;
                d2 = d15 - d18;
            }
            double dAtan2 = Math.atan2(d8 - d2, d6 - d);
            double dAtan22 = Math.atan2(d11 - d2, d10 - d) - dAtan2;
            if (z2 != (dAtan22 >= 0.0d)) {
                dAtan22 = dAtan22 > 0.0d ? dAtan22 - 6.283185307179586d : dAtan22 + 6.283185307179586d;
            }
            double d20 = d * d5;
            double d21 = d2 * d7;
            double d22 = (d20 * dCos) - (d21 * dSin);
            double d23 = (d21 * dCos) + (d20 * dSin);
            int iCeil = (int) Math.ceil(Math.abs((dAtan22 * 4.0d) / 3.141592653589793d));
            double dCos2 = Math.cos(radians);
            double dSin2 = Math.sin(radians);
            double dCos3 = Math.cos(dAtan2);
            double dSin3 = Math.sin(dAtan2);
            double d24 = d4;
            double d25 = -d5;
            double d26 = d25 * dCos2;
            double d27 = d7 * dSin2;
            double d28 = (d26 * dSin3) - (d27 * dCos3);
            double d29 = d25 * dSin2;
            double d30 = d7 * dCos2;
            double d31 = (dCos3 * d30) + (dSin3 * d29);
            double d32 = dAtan22 / iCeil;
            double d33 = dAtan2;
            int i = 0;
            while (i < iCeil) {
                double d34 = d33 + d32;
                double dSin4 = Math.sin(d34);
                double dCos4 = Math.cos(d34);
                int i2 = iCeil;
                double d35 = (((d5 * dCos2) * dCos4) + d22) - (d27 * dSin4);
                double d36 = d29;
                double d37 = (d30 * dSin4) + (d5 * dSin2 * dCos4) + d23;
                double d38 = (d26 * dSin4) - (d27 * dCos4);
                double d39 = (dCos4 * d30) + (dSin4 * d36);
                double d40 = d34 - d33;
                double dTan = Math.tan(d40 / 2.0d);
                double dSqrt2 = ((Math.sqrt(((dTan * 3.0d) * dTan) + 4.0d) - 1.0d) * Math.sin(d40)) / 3.0d;
                path.rLineTo(0.0f, 0.0f);
                path.cubicTo((float) ((d28 * dSqrt2) + d3), (float) ((d31 * dSqrt2) + d24), (float) (d35 - (dSqrt2 * d38)), (float) (d37 - (dSqrt2 * d39)), (float) d35, (float) d37);
                i++;
                d3 = d35;
                d24 = d37;
                d22 = d22;
                d33 = d34;
                dCos2 = dCos2;
                d31 = d39;
                d28 = d38;
                iCeil = i2;
                d32 = d32;
                d29 = d36;
            }
        }
    }

    private PathParser() {
    }
}
