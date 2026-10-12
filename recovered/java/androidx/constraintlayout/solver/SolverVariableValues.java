package androidx.constraintlayout.solver;

import androidx.constraintlayout.solver.ArrayRow;
import java.util.Arrays;

/* loaded from: classes.dex */
public class SolverVariableValues implements ArrayRow.ArrayRowVariables {

    /* renamed from: a, reason: collision with root package name */
    public int f700a = 16;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f701b = new int[16];
    public int[] c = new int[16];
    public int[] d = new int[16];
    public float[] e = new float[16];
    public int[] f = new int[16];

    /* renamed from: g, reason: collision with root package name */
    public int[] f702g = new int[16];
    public int h = 0;
    public int i = -1;
    public final ArrayRow j;
    protected final Cache mCache;

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public int sizeInBytes() {
        return 0;
    }

    public SolverVariableValues(ArrayRow arrayRow, Cache cache) {
        this.j = arrayRow;
        this.mCache = cache;
        clear();
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public int getCurrentSize() {
        return this.h;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public SolverVariable getVariable(int i) {
        int i2 = this.h;
        if (i2 == 0) {
            return null;
        }
        int i3 = this.i;
        for (int i4 = 0; i4 < i2; i4++) {
            if (i4 == i && i3 != -1) {
                return this.mCache.d[this.d[i3]];
            }
            i3 = this.f702g[i3];
            if (i3 == -1) {
                break;
            }
        }
        return null;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public float getVariableValue(int i) {
        int i2 = this.h;
        int i3 = this.i;
        for (int i4 = 0; i4 < i2; i4++) {
            if (i4 == i) {
                return this.e[i3];
            }
            i3 = this.f702g[i3];
            if (i3 == -1) {
                return 0.0f;
            }
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public boolean contains(SolverVariable solverVariable) {
        return indexOf(solverVariable) != -1;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public int indexOf(SolverVariable solverVariable) {
        if (this.h == 0) {
            return -1;
        }
        int i = solverVariable.id;
        int i2 = this.f701b[i % 16];
        if (i2 == -1) {
            return -1;
        }
        if (this.d[i2] == i) {
            return i2;
        }
        do {
            i2 = this.c[i2];
            if (i2 == -1) {
                break;
            }
        } while (this.d[i2] != i);
        if (i2 != -1 && this.d[i2] == i) {
            return i2;
        }
        return -1;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public float get(SolverVariable solverVariable) {
        int iIndexOf = indexOf(solverVariable);
        if (iIndexOf != -1) {
            return this.e[iIndexOf];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public void display() {
        int i = this.h;
        System.out.print("{ ");
        for (int i2 = 0; i2 < i; i2++) {
            SolverVariable variable = getVariable(i2);
            if (variable != null) {
                System.out.print(variable + " = " + getVariableValue(i2) + " ");
            }
        }
        System.out.println(" }");
    }

    public String toString() {
        String strZ;
        String strZ2;
        String strZ3 = hashCode() + " { ";
        int i = this.h;
        for (int i2 = 0; i2 < i; i2++) {
            SolverVariable variable = getVariable(i2);
            if (variable != null) {
                String str = strZ3 + variable + " = " + getVariableValue(i2) + " ";
                int iIndexOf = indexOf(variable);
                String strZ4 = _COROUTINE.a.z(str, "[p: ");
                if (this.f[iIndexOf] != -1) {
                    StringBuilder sbP = _COROUTINE.a.p(strZ4);
                    sbP.append(this.mCache.d[this.d[this.f[iIndexOf]]]);
                    strZ = sbP.toString();
                } else {
                    strZ = _COROUTINE.a.z(strZ4, "none");
                }
                String strZ5 = _COROUTINE.a.z(strZ, ", n: ");
                if (this.f702g[iIndexOf] != -1) {
                    StringBuilder sbP2 = _COROUTINE.a.p(strZ5);
                    sbP2.append(this.mCache.d[this.d[this.f702g[iIndexOf]]]);
                    strZ2 = sbP2.toString();
                } else {
                    strZ2 = _COROUTINE.a.z(strZ5, "none");
                }
                strZ3 = _COROUTINE.a.z(strZ2, "]");
            }
        }
        return _COROUTINE.a.z(strZ3, " }");
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public void clear() {
        int i = this.h;
        for (int i2 = 0; i2 < i; i2++) {
            SolverVariable variable = getVariable(i2);
            if (variable != null) {
                variable.removeFromRow(this.j);
            }
        }
        for (int i3 = 0; i3 < this.f700a; i3++) {
            this.d[i3] = -1;
            this.c[i3] = -1;
        }
        for (int i4 = 0; i4 < 16; i4++) {
            this.f701b[i4] = -1;
        }
        this.h = 0;
        this.i = -1;
    }

    public final void a(SolverVariable solverVariable, int i) {
        int[] iArr;
        int i2 = solverVariable.id % 16;
        int[] iArr2 = this.f701b;
        int i3 = iArr2[i2];
        if (i3 == -1) {
            iArr2[i2] = i;
        } else {
            while (true) {
                iArr = this.c;
                int i4 = iArr[i3];
                if (i4 == -1) {
                    break;
                } else {
                    i3 = i4;
                }
            }
            iArr[i3] = i;
        }
        this.c[i] = -1;
    }

    public final void b(int i, SolverVariable solverVariable, float f) {
        this.d[i] = solverVariable.id;
        this.e[i] = f;
        this.f[i] = -1;
        this.f702g[i] = -1;
        solverVariable.addToRow(this.j);
        solverVariable.usageInRowCount++;
        this.h++;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public void put(SolverVariable solverVariable, float f) {
        if (f > -0.001f && f < 0.001f) {
            remove(solverVariable, true);
            return;
        }
        int i = 0;
        if (this.h == 0) {
            b(0, solverVariable, f);
            a(solverVariable, 0);
            this.i = 0;
            return;
        }
        int iIndexOf = indexOf(solverVariable);
        if (iIndexOf != -1) {
            this.e[iIndexOf] = f;
            return;
        }
        int i2 = this.h + 1;
        int i3 = this.f700a;
        if (i2 >= i3) {
            int i4 = i3 * 2;
            this.d = Arrays.copyOf(this.d, i4);
            this.e = Arrays.copyOf(this.e, i4);
            this.f = Arrays.copyOf(this.f, i4);
            this.f702g = Arrays.copyOf(this.f702g, i4);
            this.c = Arrays.copyOf(this.c, i4);
            for (int i5 = this.f700a; i5 < i4; i5++) {
                this.d[i5] = -1;
                this.c[i5] = -1;
            }
            this.f700a = i4;
        }
        int i6 = this.h;
        int i7 = this.i;
        int i8 = -1;
        for (int i9 = 0; i9 < i6; i9++) {
            int i10 = this.d[i7];
            int i11 = solverVariable.id;
            if (i10 == i11) {
                this.e[i7] = f;
                return;
            }
            if (i10 < i11) {
                i8 = i7;
            }
            i7 = this.f702g[i7];
            if (i7 == -1) {
                break;
            }
        }
        while (true) {
            if (i >= this.f700a) {
                i = -1;
                break;
            } else if (this.d[i] == -1) {
                break;
            } else {
                i++;
            }
        }
        b(i, solverVariable, f);
        if (i8 != -1) {
            this.f[i] = i8;
            int[] iArr = this.f702g;
            iArr[i] = iArr[i8];
            iArr[i8] = i;
        } else {
            this.f[i] = -1;
            if (this.h > 0) {
                this.f702g[i] = this.i;
                this.i = i;
            } else {
                this.f702g[i] = -1;
            }
        }
        int i12 = this.f702g[i];
        if (i12 != -1) {
            this.f[i12] = i;
        }
        a(solverVariable, i);
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public float remove(SolverVariable solverVariable, boolean z) {
        int[] iArr;
        int i;
        int iIndexOf = indexOf(solverVariable);
        if (iIndexOf == -1) {
            return 0.0f;
        }
        int i2 = solverVariable.id;
        int i3 = i2 % 16;
        int[] iArr2 = this.f701b;
        int i4 = iArr2[i3];
        if (i4 != -1) {
            if (this.d[i4] == i2) {
                int[] iArr3 = this.c;
                iArr2[i3] = iArr3[i4];
                iArr3[i4] = -1;
            } else {
                while (true) {
                    iArr = this.c;
                    i = iArr[i4];
                    if (i == -1 || this.d[i] == i2) {
                        break;
                    }
                    i4 = i;
                }
                if (i != -1 && this.d[i] == i2) {
                    iArr[i4] = iArr[i];
                    iArr[i] = -1;
                }
            }
        }
        float f = this.e[iIndexOf];
        if (this.i == iIndexOf) {
            this.i = this.f702g[iIndexOf];
        }
        this.d[iIndexOf] = -1;
        int[] iArr4 = this.f;
        int i5 = iArr4[iIndexOf];
        if (i5 != -1) {
            int[] iArr5 = this.f702g;
            iArr5[i5] = iArr5[iIndexOf];
        }
        int i6 = this.f702g[iIndexOf];
        if (i6 != -1) {
            iArr4[i6] = iArr4[iIndexOf];
        }
        this.h--;
        solverVariable.usageInRowCount--;
        if (z) {
            solverVariable.removeFromRow(this.j);
        }
        return f;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public void add(SolverVariable solverVariable, float f, boolean z) {
        if (f <= -0.001f || f >= 0.001f) {
            int iIndexOf = indexOf(solverVariable);
            if (iIndexOf == -1) {
                put(solverVariable, f);
                return;
            }
            float[] fArr = this.e;
            float f2 = fArr[iIndexOf] + f;
            fArr[iIndexOf] = f2;
            if (f2 <= -0.001f || f2 >= 0.001f) {
                return;
            }
            fArr[iIndexOf] = 0.0f;
            remove(solverVariable, z);
        }
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public float use(ArrayRow arrayRow, boolean z) {
        float f = get(arrayRow.f685a);
        remove(arrayRow.f685a, z);
        SolverVariableValues solverVariableValues = (SolverVariableValues) arrayRow.variables;
        int currentSize = solverVariableValues.getCurrentSize();
        int i = 0;
        int i2 = 0;
        while (i < currentSize) {
            int i3 = solverVariableValues.d[i2];
            if (i3 != -1) {
                add(this.mCache.d[i3], solverVariableValues.e[i2] * f, z);
                i++;
            }
            i2++;
        }
        return f;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public void invert() {
        int i = this.h;
        int i2 = this.i;
        for (int i3 = 0; i3 < i; i3++) {
            float[] fArr = this.e;
            fArr[i2] = fArr[i2] * (-1.0f);
            i2 = this.f702g[i2];
            if (i2 == -1) {
                return;
            }
        }
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public void divideByAmount(float f) {
        int i = this.h;
        int i2 = this.i;
        for (int i3 = 0; i3 < i; i3++) {
            float[] fArr = this.e;
            fArr[i2] = fArr[i2] / f;
            i2 = this.f702g[i2];
            if (i2 == -1) {
                return;
            }
        }
    }
}
