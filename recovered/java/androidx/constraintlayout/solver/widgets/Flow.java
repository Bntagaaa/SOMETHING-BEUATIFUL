package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes.dex */
public class Flow extends VirtualLayout {
    public static final int HORIZONTAL_ALIGN_CENTER = 2;
    public static final int HORIZONTAL_ALIGN_END = 1;
    public static final int HORIZONTAL_ALIGN_START = 0;
    public static final int VERTICAL_ALIGN_BASELINE = 3;
    public static final int VERTICAL_ALIGN_BOTTOM = 1;
    public static final int VERTICAL_ALIGN_CENTER = 2;
    public static final int VERTICAL_ALIGN_TOP = 0;
    public static final int WRAP_ALIGNED = 2;
    public static final int WRAP_CHAIN = 1;
    public static final int WRAP_NONE = 0;
    public ConstraintWidget[] h0;
    public int K = -1;
    public int L = -1;
    public int M = -1;
    public int N = -1;
    public int O = -1;
    public int P = -1;
    public float Q = 0.5f;
    public float R = 0.5f;
    public float S = 0.5f;
    public float T = 0.5f;
    public float U = 0.5f;
    public float V = 0.5f;
    public int W = 0;
    public int X = 0;
    public int Y = 2;
    public int Z = 2;
    public int a0 = 0;
    public int b0 = -1;
    public int c0 = 0;
    public final ArrayList d0 = new ArrayList();
    public ConstraintWidget[] e0 = null;
    public ConstraintWidget[] f0 = null;
    public int[] g0 = null;
    public int i0 = 0;

    @Override // androidx.constraintlayout.solver.widgets.HelperWidget, androidx.constraintlayout.solver.widgets.ConstraintWidget
    public void copy(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> map) {
        super.copy(constraintWidget, map);
        Flow flow = (Flow) constraintWidget;
        this.K = flow.K;
        this.L = flow.L;
        this.M = flow.M;
        this.N = flow.N;
        this.O = flow.O;
        this.P = flow.P;
        this.Q = flow.Q;
        this.R = flow.R;
        this.S = flow.S;
        this.T = flow.T;
        this.U = flow.U;
        this.V = flow.V;
        this.W = flow.W;
        this.X = flow.X;
        this.Y = flow.Y;
        this.Z = flow.Z;
        this.a0 = flow.a0;
        this.b0 = flow.b0;
        this.c0 = flow.c0;
    }

    public void setOrientation(int i) {
        this.c0 = i;
    }

    public void setFirstHorizontalStyle(int i) {
        this.M = i;
    }

    public void setFirstVerticalStyle(int i) {
        this.N = i;
    }

    public void setLastHorizontalStyle(int i) {
        this.O = i;
    }

    public void setLastVerticalStyle(int i) {
        this.P = i;
    }

    public void setHorizontalStyle(int i) {
        this.K = i;
    }

    public void setVerticalStyle(int i) {
        this.L = i;
    }

    public void setHorizontalBias(float f) {
        this.Q = f;
    }

    public void setVerticalBias(float f) {
        this.R = f;
    }

    public void setFirstHorizontalBias(float f) {
        this.S = f;
    }

    public void setFirstVerticalBias(float f) {
        this.T = f;
    }

    public void setLastHorizontalBias(float f) {
        this.U = f;
    }

    public void setLastVerticalBias(float f) {
        this.V = f;
    }

    public void setHorizontalAlign(int i) {
        this.Y = i;
    }

    public void setVerticalAlign(int i) {
        this.Z = i;
    }

    public void setWrapMode(int i) {
        this.a0 = i;
    }

    public void setHorizontalGap(int i) {
        this.W = i;
    }

    public void setVerticalGap(int i) {
        this.X = i;
    }

    public void setMaxElementsWrap(int i) {
        this.b0 = i;
    }

    public final int e(ConstraintWidget constraintWidget, int i) {
        ConstraintWidget constraintWidget2;
        if (constraintWidget == null) {
            return 0;
        }
        if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int i2 = constraintWidget.mMatchConstraintDefaultWidth;
            if (i2 == 0) {
                return 0;
            }
            if (i2 == 2) {
                int i3 = (int) (constraintWidget.mMatchConstraintPercentWidth * i);
                if (i3 != constraintWidget.getWidth()) {
                    measure(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, i3, constraintWidget.getVerticalDimensionBehaviour(), constraintWidget.getHeight());
                }
                return i3;
            }
            constraintWidget2 = constraintWidget;
            if (i2 == 1) {
                return constraintWidget2.getWidth();
            }
            if (i2 == 3) {
                return (int) ((constraintWidget2.getHeight() * constraintWidget2.mDimensionRatio) + 0.5f);
            }
        } else {
            constraintWidget2 = constraintWidget;
        }
        return constraintWidget2.getWidth();
    }

    public final int d(ConstraintWidget constraintWidget, int i) {
        ConstraintWidget constraintWidget2;
        if (constraintWidget == null) {
            return 0;
        }
        if (constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int i2 = constraintWidget.mMatchConstraintDefaultHeight;
            if (i2 == 0) {
                return 0;
            }
            if (i2 == 2) {
                int i3 = (int) (constraintWidget.mMatchConstraintPercentHeight * i);
                if (i3 != constraintWidget.getHeight()) {
                    measure(constraintWidget, constraintWidget.getHorizontalDimensionBehaviour(), constraintWidget.getWidth(), ConstraintWidget.DimensionBehaviour.FIXED, i3);
                }
                return i3;
            }
            constraintWidget2 = constraintWidget;
            if (i2 == 1) {
                return constraintWidget2.getHeight();
            }
            if (i2 == 3) {
                return (int) ((constraintWidget2.getWidth() * constraintWidget2.mDimensionRatio) + 0.5f);
            }
        } else {
            constraintWidget2 = constraintWidget;
        }
        return constraintWidget2.getHeight();
    }

    @Override // androidx.constraintlayout.solver.widgets.VirtualLayout
    public void measure(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int[] iArr;
        int i7;
        int i8;
        int i9;
        char c;
        a aVar;
        int[] iArr2;
        int i10;
        int i11;
        int i12;
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        int i13;
        int i14;
        int i15;
        ConstraintWidget constraintWidget;
        int i16;
        int iCeil;
        int iCeil2;
        boolean z;
        ConstraintWidget constraintWidget2;
        int i17;
        if (this.mWidgetsCount > 0 && !measureChildren()) {
            setMeasure(0, 0);
            needsCallbackFromSolver(false);
            return;
        }
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int[] iArr3 = new int[2];
        int i18 = (i2 - paddingLeft) - paddingRight;
        int i19 = this.c0;
        if (i19 == 1) {
            i18 = (i4 - paddingTop) - paddingBottom;
        }
        int i20 = i18;
        if (i19 == 0) {
            if (this.K == -1) {
                this.K = 0;
            }
            if (this.L == -1) {
                this.L = 0;
            }
        } else {
            if (this.K == -1) {
                this.K = 0;
            }
            if (this.L == -1) {
                this.L = 0;
            }
        }
        ConstraintWidget[] constraintWidgetArr = this.mWidgets;
        int i21 = 0;
        int i22 = 0;
        char c2 = 0;
        while (true) {
            i5 = this.mWidgetsCount;
            if (i21 >= i5) {
                break;
            }
            if (this.mWidgets[i21].getVisibility() == 8) {
                i22++;
            }
            i21++;
        }
        if (i22 > 0) {
            constraintWidgetArr = new ConstraintWidget[i5 - i22];
            int i23 = 0;
            for (int i24 = 0; i24 < this.mWidgetsCount; i24++) {
                ConstraintWidget constraintWidget3 = this.mWidgets[i24];
                if (constraintWidget3.getVisibility() != 8) {
                    constraintWidgetArr[i23] = constraintWidget3;
                    i23++;
                }
            }
            i6 = i23;
        } else {
            i6 = i5;
        }
        ConstraintWidget[] constraintWidgetArr2 = constraintWidgetArr;
        this.h0 = constraintWidgetArr2;
        this.i0 = i6;
        int i25 = this.a0;
        ArrayList arrayList = this.d0;
        if (i25 != 0) {
            if (i25 == 1) {
                int i26 = i6;
                iArr2 = iArr3;
                int i27 = this.c0;
                if (i26 != 0) {
                    arrayList.clear();
                    i7 = paddingLeft;
                    iArr = iArr2;
                    c = 1;
                    a aVar2 = new a(i27, this.mLeft, this.mTop, this.mRight, this.mBottom, i20);
                    arrayList.add(aVar2);
                    if (i27 == 0) {
                        int i28 = 0;
                        i10 = 0;
                        int i29 = 0;
                        while (i28 < i26) {
                            ConstraintWidget constraintWidget4 = constraintWidgetArr2[i28];
                            int iE = e(constraintWidget4, i20);
                            int i30 = i27;
                            int i31 = i28;
                            if (constraintWidget4.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                                i10++;
                            }
                            int i32 = i10;
                            boolean z2 = (i29 == i20 || (this.W + i29) + iE > i20) && aVar2.f742b != null;
                            if (!z2 && i31 > 0 && (i16 = this.b0) > 0 && i31 % i16 == 0) {
                                z2 = true;
                            }
                            if (z2) {
                                i13 = paddingRight;
                                i14 = paddingTop;
                                i15 = i31;
                                constraintWidget = constraintWidget4;
                                i27 = i30;
                                aVar2 = new a(i27, this.mLeft, this.mTop, this.mRight, this.mBottom, i20);
                                aVar2.setStartIndex(i15);
                                arrayList.add(aVar2);
                            } else {
                                i13 = paddingRight;
                                i14 = paddingTop;
                                i27 = i30;
                                i15 = i31;
                                constraintWidget = constraintWidget4;
                                if (i15 > 0) {
                                    i29 = this.W + iE + i29;
                                }
                                aVar2.add(constraintWidget);
                                i28 = i15 + 1;
                                i10 = i32;
                                paddingRight = i13;
                                paddingTop = i14;
                            }
                            i29 = iE;
                            aVar2.add(constraintWidget);
                            i28 = i15 + 1;
                            i10 = i32;
                            paddingRight = i13;
                            paddingTop = i14;
                        }
                        i8 = paddingRight;
                        i9 = paddingTop;
                    } else {
                        i8 = paddingRight;
                        i9 = paddingTop;
                        int i33 = 0;
                        int i34 = 0;
                        int i35 = 0;
                        while (i35 < i26) {
                            ConstraintWidget constraintWidget5 = constraintWidgetArr2[i35];
                            int iD = d(constraintWidget5, i20);
                            if (constraintWidget5.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                                i33++;
                            }
                            int i36 = i33;
                            boolean z3 = (i34 == i20 || (this.X + i34) + iD > i20) && aVar2.f742b != null;
                            if (!z3 && i35 > 0 && (i11 = this.b0) > 0 && i35 % i11 == 0) {
                                z3 = true;
                            }
                            if (z3) {
                                aVar2 = new a(i27, this.mLeft, this.mTop, this.mRight, this.mBottom, i20);
                                aVar2.setStartIndex(i35);
                                arrayList.add(aVar2);
                            } else {
                                if (i35 > 0) {
                                    i34 = this.X + iD + i34;
                                }
                                aVar2.add(constraintWidget5);
                                i35++;
                                i33 = i36;
                            }
                            i34 = iD;
                            aVar2.add(constraintWidget5);
                            i35++;
                            i33 = i36;
                        }
                        i10 = i33;
                    }
                    int size = arrayList.size();
                    ConstraintAnchor constraintAnchor3 = this.mLeft;
                    ConstraintAnchor constraintAnchor4 = this.mTop;
                    ConstraintAnchor constraintAnchor5 = this.mRight;
                    ConstraintAnchor constraintAnchor6 = this.mBottom;
                    int paddingLeft2 = getPaddingLeft();
                    int paddingTop2 = getPaddingTop();
                    int paddingRight2 = getPaddingRight();
                    int paddingBottom2 = getPaddingBottom();
                    int i37 = i27;
                    ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = getHorizontalDimensionBehaviour();
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    boolean z4 = horizontalDimensionBehaviour == dimensionBehaviour || getVerticalDimensionBehaviour() == dimensionBehaviour;
                    if (i10 > 0 && z4) {
                        for (int i38 = 0; i38 < size; i38++) {
                            a aVar3 = (a) arrayList.get(i38);
                            if (i37 == 0) {
                                aVar3.measureMatchConstraints(i20 - aVar3.getWidth());
                            } else {
                                aVar3.measureMatchConstraints(i20 - aVar3.getHeight());
                            }
                        }
                    }
                    ConstraintAnchor constraintAnchor7 = constraintAnchor5;
                    ConstraintAnchor constraintAnchor8 = constraintAnchor6;
                    int i39 = paddingLeft2;
                    int i40 = paddingTop2;
                    int paddingRight3 = paddingRight2;
                    int paddingBottom3 = paddingBottom2;
                    ConstraintAnchor constraintAnchor9 = constraintAnchor3;
                    int i41 = 0;
                    int width = 0;
                    ConstraintAnchor constraintAnchor10 = constraintAnchor4;
                    int iMax = 0;
                    while (i41 < size) {
                        a aVar4 = (a) arrayList.get(i41);
                        if (i37 == 0) {
                            if (i41 < size - 1) {
                                constraintAnchor2 = ((a) arrayList.get(i41 + 1)).f742b.mTop;
                                paddingBottom3 = 0;
                            } else {
                                constraintAnchor2 = this.mBottom;
                                paddingBottom3 = getPaddingBottom();
                            }
                            constraintAnchor8 = constraintAnchor2;
                            ConstraintAnchor constraintAnchor11 = aVar4.f742b.mBottom;
                            i12 = i37;
                            ConstraintAnchor constraintAnchor12 = constraintAnchor9;
                            aVar4.setup(i12, constraintAnchor12, constraintAnchor10, constraintAnchor7, constraintAnchor8, i39, i40, paddingRight3, paddingBottom3, i20);
                            int iMax2 = Math.max(width, aVar4.getWidth());
                            iMax += aVar4.getHeight();
                            if (i41 > 0) {
                                iMax += this.X;
                            }
                            width = iMax2;
                            constraintAnchor10 = constraintAnchor11;
                            constraintAnchor9 = constraintAnchor12;
                            i40 = 0;
                        } else {
                            i12 = i37;
                            ConstraintAnchor constraintAnchor13 = constraintAnchor9;
                            if (i41 < size - 1) {
                                constraintAnchor = ((a) arrayList.get(i41 + 1)).f742b.mLeft;
                                paddingRight3 = 0;
                            } else {
                                constraintAnchor = this.mRight;
                                paddingRight3 = getPaddingRight();
                            }
                            constraintAnchor7 = constraintAnchor;
                            constraintAnchor9 = aVar4.f742b.mRight;
                            aVar4.setup(i12, constraintAnchor13, constraintAnchor10, constraintAnchor7, constraintAnchor8, i39, i40, paddingRight3, paddingBottom3, i20);
                            width += aVar4.getWidth();
                            iMax = Math.max(iMax, aVar4.getHeight());
                            if (i41 > 0) {
                                width += this.W;
                            }
                            i39 = 0;
                        }
                        i41++;
                        i37 = i12;
                    }
                    iArr[0] = width;
                    iArr[1] = iMax;
                }
            } else if (i25 != 2) {
                iArr = iArr3;
                i7 = paddingLeft;
                i8 = paddingRight;
                i9 = paddingTop;
                c = 1;
            } else {
                int i42 = this.c0;
                if (i42 == 0) {
                    iCeil2 = this.b0;
                    if (iCeil2 <= 0) {
                        int i43 = 0;
                        int i44 = 0;
                        int i45 = 0;
                        while (true) {
                            iArr2 = iArr3;
                            if (i43 >= i6) {
                                break;
                            }
                            if (i43 > 0) {
                                i44 += this.W;
                            }
                            ConstraintWidget constraintWidget6 = constraintWidgetArr2[i43];
                            if (constraintWidget6 != null) {
                                int iE2 = e(constraintWidget6, i20) + i44;
                                if (iE2 > i20) {
                                    break;
                                }
                                i45++;
                                i44 = iE2;
                            }
                            i43++;
                            iArr3 = iArr2;
                        }
                        iCeil2 = i45;
                    } else {
                        iArr2 = iArr3;
                    }
                    iCeil = 0;
                } else {
                    iArr2 = iArr3;
                    iCeil = this.b0;
                    if (iCeil <= 0) {
                        int i46 = 0;
                        int i47 = 0;
                        for (int i48 = 0; i48 < i6; i48++) {
                            if (i48 > 0) {
                                i46 += this.X;
                            }
                            ConstraintWidget constraintWidget7 = constraintWidgetArr2[i48];
                            if (constraintWidget7 != null) {
                                int iD2 = d(constraintWidget7, i20) + i46;
                                if (iD2 > i20) {
                                    break;
                                }
                                i47++;
                                i46 = iD2;
                            }
                        }
                        iCeil = i47;
                    }
                    iCeil2 = 0;
                }
                if (this.g0 == null) {
                    this.g0 = new int[2];
                }
                boolean z5 = (iCeil == 0 && i42 == 1) || (iCeil2 == 0 && i42 == 0);
                while (!z5) {
                    if (i42 == 0) {
                        z = z5;
                        iCeil = (int) Math.ceil(i6 / iCeil2);
                        iCeil2 = iCeil2;
                    } else {
                        z = z5;
                        iCeil2 = (int) Math.ceil(i6 / iCeil);
                    }
                    ConstraintWidget[] constraintWidgetArr3 = this.f0;
                    if (constraintWidgetArr3 == null || constraintWidgetArr3.length < iCeil2) {
                        this.f0 = new ConstraintWidget[iCeil2];
                    } else {
                        Arrays.fill(constraintWidgetArr3, (Object) null);
                    }
                    ConstraintWidget[] constraintWidgetArr4 = this.e0;
                    if (constraintWidgetArr4 == null || constraintWidgetArr4.length < iCeil) {
                        this.e0 = new ConstraintWidget[iCeil];
                    } else {
                        Arrays.fill(constraintWidgetArr4, (Object) null);
                    }
                    int i49 = 0;
                    while (i49 < iCeil2) {
                        int i50 = 0;
                        while (i50 < iCeil) {
                            int i51 = (i50 * iCeil2) + i49;
                            int i52 = i6;
                            if (i42 == 1) {
                                i51 = (i49 * iCeil) + i50;
                            }
                            int i53 = i51;
                            int i54 = i42;
                            if (i53 < constraintWidgetArr2.length && (constraintWidget2 = constraintWidgetArr2[i53]) != null) {
                                int iE3 = e(constraintWidget2, i20);
                                i17 = i49;
                                ConstraintWidget constraintWidget8 = this.f0[i17];
                                if (constraintWidget8 == null || constraintWidget8.getWidth() < iE3) {
                                    this.f0[i17] = constraintWidget2;
                                }
                                int iD3 = d(constraintWidget2, i20);
                                ConstraintWidget constraintWidget9 = this.e0[i50];
                                if (constraintWidget9 == null || constraintWidget9.getHeight() < iD3) {
                                    this.e0[i50] = constraintWidget2;
                                }
                            } else {
                                i17 = i49;
                            }
                            i50++;
                            i42 = i54;
                            i6 = i52;
                            i49 = i17;
                        }
                        i49++;
                    }
                    int i55 = i6;
                    int i56 = i42;
                    int iE4 = 0;
                    for (int i57 = 0; i57 < iCeil2; i57++) {
                        ConstraintWidget constraintWidget10 = this.f0[i57];
                        if (constraintWidget10 != null) {
                            if (i57 > 0) {
                                iE4 += this.W;
                            }
                            iE4 = e(constraintWidget10, i20) + iE4;
                        }
                    }
                    int i58 = 0;
                    int iD4 = 0;
                    while (i58 < iCeil) {
                        ConstraintWidget constraintWidget11 = this.e0[i58];
                        int i59 = i58;
                        if (constraintWidget11 != null) {
                            if (i58 > 0) {
                                iD4 += this.X;
                            }
                            iD4 = d(constraintWidget11, i20) + iD4;
                        }
                        i58 = i59 + 1;
                    }
                    iArr2[0] = iE4;
                    iArr2[1] = iD4;
                    if (i56 == 0) {
                        if (iE4 > i20 && iCeil2 > 1) {
                            iCeil2--;
                            z5 = z;
                        }
                        z5 = true;
                    } else {
                        if (iD4 > i20 && iCeil > 1) {
                            iCeil--;
                            z5 = z;
                        }
                        z5 = true;
                    }
                    i42 = i56;
                    i6 = i55;
                }
                int[] iArr4 = this.g0;
                iArr4[0] = iCeil2;
                iArr4[1] = iCeil;
            }
            i7 = paddingLeft;
            i8 = paddingRight;
            i9 = paddingTop;
            iArr = iArr2;
            c = 1;
        } else {
            iArr = iArr3;
            i7 = paddingLeft;
            i8 = paddingRight;
            i9 = paddingTop;
            c = 1;
            int i60 = i6;
            int i61 = this.c0;
            if (i60 != 0) {
                if (arrayList.size() == 0) {
                    aVar = new a(i61, this.mLeft, this.mTop, this.mRight, this.mBottom, i20);
                    arrayList.add(aVar);
                } else {
                    a aVar5 = (a) arrayList.get(0);
                    aVar5.clear();
                    aVar5.setup(i61, this.mLeft, this.mTop, this.mRight, this.mBottom, getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom(), i20);
                    aVar = aVar5;
                }
                for (int i62 = 0; i62 < i60; i62++) {
                    aVar.add(constraintWidgetArr2[i62]);
                }
                c2 = 0;
                iArr[0] = aVar.getWidth();
                iArr[1] = aVar.getHeight();
            }
        }
        int iMin = iArr[c2] + i7 + i8;
        int iMin2 = iArr[c] + i9 + paddingBottom;
        if (i == 1073741824) {
            iMin = i2;
        } else if (i == Integer.MIN_VALUE) {
            iMin = Math.min(iMin, i2);
        } else if (i != 0) {
            iMin = 0;
        }
        if (i3 == 1073741824) {
            iMin2 = i4;
        } else if (i3 == Integer.MIN_VALUE) {
            iMin2 = Math.min(iMin2, i4);
        } else if (i3 != 0) {
            iMin2 = 0;
        }
        setMeasure(iMin, iMin2);
        setWidth(iMin);
        setHeight(iMin2);
        needsCallbackFromSolver(this.mWidgetsCount > 0);
    }

    public class a {

        /* renamed from: a, reason: collision with root package name */
        public int f741a;
        public ConstraintAnchor d;
        public ConstraintAnchor e;
        public ConstraintAnchor f;

        /* renamed from: g, reason: collision with root package name */
        public ConstraintAnchor f743g;
        public int h;
        public int i;
        public int j;
        public int k;
        public int q;

        /* renamed from: b, reason: collision with root package name */
        public ConstraintWidget f742b = null;
        public int c = 0;
        public int l = 0;
        public int m = 0;
        public int n = 0;
        public int o = 0;
        public int p = 0;

        public a(int i, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i2) {
            this.h = 0;
            this.i = 0;
            this.j = 0;
            this.k = 0;
            this.q = 0;
            this.f741a = i;
            this.d = constraintAnchor;
            this.e = constraintAnchor2;
            this.f = constraintAnchor3;
            this.f743g = constraintAnchor4;
            this.h = Flow.this.getPaddingLeft();
            this.i = Flow.this.getPaddingTop();
            this.j = Flow.this.getPaddingRight();
            this.k = Flow.this.getPaddingBottom();
            this.q = i2;
        }

        public void setup(int i, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i2, int i3, int i4, int i5, int i6) {
            this.f741a = i;
            this.d = constraintAnchor;
            this.e = constraintAnchor2;
            this.f = constraintAnchor3;
            this.f743g = constraintAnchor4;
            this.h = i2;
            this.i = i3;
            this.j = i4;
            this.k = i5;
            this.q = i6;
        }

        public void clear() {
            this.c = 0;
            this.f742b = null;
            this.l = 0;
            this.m = 0;
            this.n = 0;
            this.o = 0;
            this.p = 0;
        }

        public void setStartIndex(int i) {
            this.n = i;
        }

        public int getWidth() {
            if (this.f741a == 0) {
                return this.l - Flow.this.W;
            }
            return this.l;
        }

        public int getHeight() {
            if (this.f741a == 1) {
                return this.m - Flow.this.X;
            }
            return this.m;
        }

        public void add(ConstraintWidget constraintWidget) {
            int i = this.f741a;
            Flow flow = Flow.this;
            if (i == 0) {
                int iE = flow.e(constraintWidget, this.q);
                if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    this.p++;
                    iE = 0;
                }
                this.l = iE + (constraintWidget.getVisibility() != 8 ? flow.W : 0) + this.l;
                int iD = flow.d(constraintWidget, this.q);
                if (this.f742b == null || this.c < iD) {
                    this.f742b = constraintWidget;
                    this.c = iD;
                    this.m = iD;
                }
            } else {
                int iE2 = flow.e(constraintWidget, this.q);
                int iD2 = flow.d(constraintWidget, this.q);
                if (constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    this.p++;
                    iD2 = 0;
                }
                this.m = iD2 + (constraintWidget.getVisibility() != 8 ? flow.X : 0) + this.m;
                if (this.f742b == null || this.c < iE2) {
                    this.f742b = constraintWidget;
                    this.c = iE2;
                    this.l = iE2;
                }
            }
            this.o++;
        }

        public void createConstraints(boolean z, int i, boolean z2) {
            Flow flow;
            int i2;
            ConstraintWidget constraintWidget;
            int i3;
            int i4 = this.o;
            int i5 = 0;
            while (true) {
                flow = Flow.this;
                if (i5 >= i4) {
                    break;
                }
                int i6 = this.n;
                if (i6 + i5 >= flow.i0) {
                    break;
                }
                ConstraintWidget constraintWidget2 = flow.h0[i6 + i5];
                if (constraintWidget2 != null) {
                    constraintWidget2.resetAnchors();
                }
                i5++;
            }
            if (i4 == 0 || this.f742b == null) {
                return;
            }
            boolean z3 = z2 && i == 0;
            int i7 = -1;
            int i8 = -1;
            for (int i9 = 0; i9 < i4; i9++) {
                int i10 = z ? (i4 - 1) - i9 : i9;
                int i11 = this.n;
                if (i11 + i10 >= flow.i0) {
                    break;
                }
                if (flow.h0[i11 + i10].getVisibility() == 0) {
                    if (i7 == -1) {
                        i7 = i9;
                    }
                    i8 = i9;
                }
            }
            if (this.f741a != 0) {
                ConstraintWidget constraintWidget3 = this.f742b;
                constraintWidget3.setHorizontalChainStyle(flow.K);
                int i12 = this.h;
                if (i > 0) {
                    i12 += flow.W;
                }
                if (z) {
                    constraintWidget3.mRight.connect(this.f, i12);
                    if (z2) {
                        constraintWidget3.mLeft.connect(this.d, this.j);
                    }
                    if (i > 0) {
                        this.f.mOwner.mLeft.connect(constraintWidget3.mRight, 0);
                    }
                } else {
                    constraintWidget3.mLeft.connect(this.d, i12);
                    if (z2) {
                        constraintWidget3.mRight.connect(this.f, this.j);
                    }
                    if (i > 0) {
                        this.d.mOwner.mRight.connect(constraintWidget3.mLeft, 0);
                    }
                }
                ConstraintWidget constraintWidget4 = null;
                int i13 = 0;
                while (i13 < i4) {
                    int i14 = this.n;
                    if (i14 + i13 >= flow.i0) {
                        return;
                    }
                    ConstraintWidget constraintWidget5 = flow.h0[i14 + i13];
                    if (i13 == 0) {
                        constraintWidget5.connect(constraintWidget5.mTop, this.e, this.i);
                        int i15 = flow.L;
                        float f = flow.R;
                        if (this.n != 0 || (i2 = flow.N) == -1) {
                            if (z2 && (i2 = flow.P) != -1) {
                                f = flow.V;
                            }
                            constraintWidget5.setVerticalChainStyle(i15);
                            constraintWidget5.setVerticalBiasPercent(f);
                        } else {
                            f = flow.T;
                        }
                        i15 = i2;
                        constraintWidget5.setVerticalChainStyle(i15);
                        constraintWidget5.setVerticalBiasPercent(f);
                    }
                    if (i13 == i4 - 1) {
                        constraintWidget5.connect(constraintWidget5.mBottom, this.f743g, this.k);
                    }
                    if (constraintWidget4 != null) {
                        constraintWidget5.mTop.connect(constraintWidget4.mBottom, flow.X);
                        if (i13 == i7) {
                            constraintWidget5.mTop.setGoneMargin(this.i);
                        }
                        constraintWidget4.mBottom.connect(constraintWidget5.mTop, 0);
                        if (i13 == i8 + 1) {
                            constraintWidget4.mBottom.setGoneMargin(this.k);
                        }
                    }
                    if (constraintWidget5 != constraintWidget3) {
                        if (z) {
                            int i16 = flow.Y;
                            if (i16 == 0) {
                                constraintWidget5.mRight.connect(constraintWidget3.mRight, 0);
                            } else if (i16 == 1) {
                                constraintWidget5.mLeft.connect(constraintWidget3.mLeft, 0);
                            } else if (i16 == 2) {
                                constraintWidget5.mLeft.connect(constraintWidget3.mLeft, 0);
                                constraintWidget5.mRight.connect(constraintWidget3.mRight, 0);
                            }
                        } else {
                            int i17 = flow.Y;
                            if (i17 == 0) {
                                constraintWidget5.mLeft.connect(constraintWidget3.mLeft, 0);
                            } else if (i17 == 1) {
                                constraintWidget5.mRight.connect(constraintWidget3.mRight, 0);
                            } else if (i17 == 2) {
                                if (z3) {
                                    constraintWidget5.mLeft.connect(this.d, this.h);
                                    constraintWidget5.mRight.connect(this.f, this.j);
                                } else {
                                    constraintWidget5.mLeft.connect(constraintWidget3.mLeft, 0);
                                    constraintWidget5.mRight.connect(constraintWidget3.mRight, 0);
                                }
                            }
                        }
                    }
                    i13++;
                    constraintWidget4 = constraintWidget5;
                }
                return;
            }
            ConstraintWidget constraintWidget6 = this.f742b;
            constraintWidget6.setVerticalChainStyle(flow.L);
            int i18 = this.i;
            if (i > 0) {
                i18 += flow.X;
            }
            constraintWidget6.mTop.connect(this.e, i18);
            if (z2) {
                constraintWidget6.mBottom.connect(this.f743g, this.k);
            }
            if (i > 0) {
                this.e.mOwner.mBottom.connect(constraintWidget6.mTop, 0);
            }
            if (flow.Z != 3 || constraintWidget6.hasBaseline()) {
                constraintWidget = constraintWidget6;
            } else {
                for (int i19 = 0; i19 < i4; i19++) {
                    int i20 = z ? (i4 - 1) - i19 : i19;
                    int i21 = this.n;
                    if (i21 + i20 >= flow.i0) {
                        break;
                    }
                    constraintWidget = flow.h0[i21 + i20];
                    if (constraintWidget.hasBaseline()) {
                        break;
                    }
                }
                constraintWidget = constraintWidget6;
            }
            ConstraintWidget constraintWidget7 = null;
            int i22 = 0;
            while (i22 < i4) {
                int i23 = z ? (i4 - 1) - i22 : i22;
                int i24 = this.n;
                if (i24 + i23 >= flow.i0) {
                    return;
                }
                ConstraintWidget constraintWidget8 = flow.h0[i24 + i23];
                if (i22 == 0) {
                    constraintWidget8.connect(constraintWidget8.mLeft, this.d, this.h);
                }
                if (i23 == 0) {
                    int i25 = flow.K;
                    float f2 = flow.Q;
                    if (this.n != 0 || (i3 = flow.M) == -1) {
                        if (z2 && (i3 = flow.O) != -1) {
                            f2 = flow.U;
                        }
                        constraintWidget8.setHorizontalChainStyle(i25);
                        constraintWidget8.setHorizontalBiasPercent(f2);
                    } else {
                        f2 = flow.S;
                    }
                    i25 = i3;
                    constraintWidget8.setHorizontalChainStyle(i25);
                    constraintWidget8.setHorizontalBiasPercent(f2);
                }
                if (i22 == i4 - 1) {
                    constraintWidget8.connect(constraintWidget8.mRight, this.f, this.j);
                }
                if (constraintWidget7 != null) {
                    constraintWidget8.mLeft.connect(constraintWidget7.mRight, flow.W);
                    if (i22 == i7) {
                        constraintWidget8.mLeft.setGoneMargin(this.h);
                    }
                    constraintWidget7.mRight.connect(constraintWidget8.mLeft, 0);
                    if (i22 == i8 + 1) {
                        constraintWidget7.mRight.setGoneMargin(this.j);
                    }
                }
                if (constraintWidget8 != constraintWidget6) {
                    if (flow.Z == 3 && constraintWidget.hasBaseline() && constraintWidget8 != constraintWidget && constraintWidget8.hasBaseline()) {
                        constraintWidget8.h.connect(constraintWidget.h, 0);
                    } else {
                        int i26 = flow.Z;
                        if (i26 == 0) {
                            constraintWidget8.mTop.connect(constraintWidget6.mTop, 0);
                        } else if (i26 == 1) {
                            constraintWidget8.mBottom.connect(constraintWidget6.mBottom, 0);
                        } else if (z3) {
                            constraintWidget8.mTop.connect(this.e, this.i);
                            constraintWidget8.mBottom.connect(this.f743g, this.k);
                        } else {
                            constraintWidget8.mTop.connect(constraintWidget6.mTop, 0);
                            constraintWidget8.mBottom.connect(constraintWidget6.mBottom, 0);
                        }
                    }
                }
                i22++;
                constraintWidget7 = constraintWidget8;
            }
        }

        public void measureMatchConstraints(int i) {
            Flow flow;
            int i2 = this.p;
            if (i2 == 0) {
                return;
            }
            int i3 = this.o;
            int i4 = i / i2;
            int i5 = 0;
            while (true) {
                flow = Flow.this;
                if (i5 >= i3) {
                    break;
                }
                int i6 = this.n;
                if (i6 + i5 >= flow.i0) {
                    break;
                }
                ConstraintWidget constraintWidget = flow.h0[i6 + i5];
                if (this.f741a == 0) {
                    if (constraintWidget != null && constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mMatchConstraintDefaultWidth == 0) {
                        Flow.this.measure(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, i4, constraintWidget.getVerticalDimensionBehaviour(), constraintWidget.getHeight());
                    }
                } else if (constraintWidget != null && constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mMatchConstraintDefaultHeight == 0) {
                    int i7 = i4;
                    Flow.this.measure(constraintWidget, constraintWidget.getHorizontalDimensionBehaviour(), constraintWidget.getWidth(), ConstraintWidget.DimensionBehaviour.FIXED, i7);
                    i4 = i7;
                }
                i5++;
            }
            this.l = 0;
            this.m = 0;
            this.f742b = null;
            this.c = 0;
            int i8 = this.o;
            for (int i9 = 0; i9 < i8; i9++) {
                int i10 = this.n + i9;
                if (i10 >= flow.i0) {
                    return;
                }
                ConstraintWidget constraintWidget2 = flow.h0[i10];
                if (this.f741a == 0) {
                    int width = constraintWidget2.getWidth();
                    int i11 = flow.W;
                    if (constraintWidget2.getVisibility() == 8) {
                        i11 = 0;
                    }
                    this.l = width + i11 + this.l;
                    int iD = flow.d(constraintWidget2, this.q);
                    if (this.f742b == null || this.c < iD) {
                        this.f742b = constraintWidget2;
                        this.c = iD;
                        this.m = iD;
                    }
                } else {
                    int iE = flow.e(constraintWidget2, this.q);
                    int iD2 = flow.d(constraintWidget2, this.q);
                    int i12 = flow.X;
                    if (constraintWidget2.getVisibility() == 8) {
                        i12 = 0;
                    }
                    this.m = iD2 + i12 + this.m;
                    if (this.f742b == null || this.c < iE) {
                        this.f742b = constraintWidget2;
                        this.c = iE;
                        this.l = iE;
                    }
                }
            }
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public void addToSolver(LinearSystem linearSystem) {
        ConstraintWidget constraintWidget;
        super.addToSolver(linearSystem);
        boolean zIsRtl = getParent() != null ? ((ConstraintWidgetContainer) getParent()).isRtl() : false;
        int i = this.a0;
        ArrayList arrayList = this.d0;
        if (i != 0) {
            if (i != 1) {
                if (i == 2 && this.g0 != null && this.f0 != null && this.e0 != null) {
                    for (int i2 = 0; i2 < this.i0; i2++) {
                        this.h0[i2].resetAnchors();
                    }
                    int[] iArr = this.g0;
                    int i3 = iArr[0];
                    int i4 = iArr[1];
                    ConstraintWidget constraintWidget2 = null;
                    for (int i5 = 0; i5 < i3; i5++) {
                        ConstraintWidget constraintWidget3 = this.f0[zIsRtl ? (i3 - i5) - 1 : i5];
                        if (constraintWidget3 != null && constraintWidget3.getVisibility() != 8) {
                            if (i5 == 0) {
                                constraintWidget3.connect(constraintWidget3.mLeft, this.mLeft, getPaddingLeft());
                                constraintWidget3.setHorizontalChainStyle(this.K);
                                constraintWidget3.setHorizontalBiasPercent(this.Q);
                            }
                            if (i5 == i3 - 1) {
                                constraintWidget3.connect(constraintWidget3.mRight, this.mRight, getPaddingRight());
                            }
                            if (i5 > 0) {
                                constraintWidget3.connect(constraintWidget3.mLeft, constraintWidget2.mRight, this.W);
                                constraintWidget2.connect(constraintWidget2.mRight, constraintWidget3.mLeft, 0);
                            }
                            constraintWidget2 = constraintWidget3;
                        }
                    }
                    for (int i6 = 0; i6 < i4; i6++) {
                        ConstraintWidget constraintWidget4 = this.e0[i6];
                        if (constraintWidget4 != null && constraintWidget4.getVisibility() != 8) {
                            if (i6 == 0) {
                                constraintWidget4.connect(constraintWidget4.mTop, this.mTop, getPaddingTop());
                                constraintWidget4.setVerticalChainStyle(this.L);
                                constraintWidget4.setVerticalBiasPercent(this.R);
                            }
                            if (i6 == i4 - 1) {
                                constraintWidget4.connect(constraintWidget4.mBottom, this.mBottom, getPaddingBottom());
                            }
                            if (i6 > 0) {
                                constraintWidget4.connect(constraintWidget4.mTop, constraintWidget2.mBottom, this.X);
                                constraintWidget2.connect(constraintWidget2.mBottom, constraintWidget4.mTop, 0);
                            }
                            constraintWidget2 = constraintWidget4;
                        }
                    }
                    for (int i7 = 0; i7 < i3; i7++) {
                        for (int i8 = 0; i8 < i4; i8++) {
                            int i9 = (i8 * i3) + i7;
                            if (this.c0 == 1) {
                                i9 = (i7 * i4) + i8;
                            }
                            ConstraintWidget[] constraintWidgetArr = this.h0;
                            if (i9 < constraintWidgetArr.length && (constraintWidget = constraintWidgetArr[i9]) != null && constraintWidget.getVisibility() != 8) {
                                ConstraintWidget constraintWidget5 = this.f0[i7];
                                ConstraintWidget constraintWidget6 = this.e0[i8];
                                if (constraintWidget != constraintWidget5) {
                                    constraintWidget.connect(constraintWidget.mLeft, constraintWidget5.mLeft, 0);
                                    constraintWidget.connect(constraintWidget.mRight, constraintWidget5.mRight, 0);
                                }
                                if (constraintWidget != constraintWidget6) {
                                    constraintWidget.connect(constraintWidget.mTop, constraintWidget6.mTop, 0);
                                    constraintWidget.connect(constraintWidget.mBottom, constraintWidget6.mBottom, 0);
                                }
                            }
                        }
                    }
                }
            } else {
                int size = arrayList.size();
                int i10 = 0;
                while (i10 < size) {
                    ((a) arrayList.get(i10)).createConstraints(zIsRtl, i10, i10 == size + (-1));
                    i10++;
                }
            }
        } else if (arrayList.size() > 0) {
            ((a) arrayList.get(0)).createConstraints(zIsRtl, 0, true);
        }
        needsCallbackFromSolver(false);
    }
}
