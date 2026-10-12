package androidx.constraintlayout.solver;

import androidx.constraintlayout.solver.ArrayRow;
import java.util.Arrays;

/* loaded from: classes.dex */
public class ArrayLinkedVariables implements ArrayRow.ArrayRowVariables {

    /* renamed from: b, reason: collision with root package name */
    public final ArrayRow f683b;
    protected final Cache mCache;

    /* renamed from: a, reason: collision with root package name */
    public int f682a = 0;
    public int c = 8;
    public int[] d = new int[8];
    public int[] e = new int[8];
    public float[] f = new float[8];

    /* renamed from: g, reason: collision with root package name */
    public int f684g = -1;
    public int h = -1;
    public boolean i = false;

    public ArrayLinkedVariables(ArrayRow arrayRow, Cache cache) {
        this.f683b = arrayRow;
        this.mCache = cache;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public final void put(SolverVariable solverVariable, float f) {
        if (f == 0.0f) {
            remove(solverVariable, true);
            return;
        }
        int i = this.f684g;
        ArrayRow arrayRow = this.f683b;
        if (i == -1) {
            this.f684g = 0;
            this.f[0] = f;
            this.d[0] = solverVariable.id;
            this.e[0] = -1;
            solverVariable.usageInRowCount++;
            solverVariable.addToRow(arrayRow);
            this.f682a++;
            if (this.i) {
                return;
            }
            int i2 = this.h + 1;
            this.h = i2;
            int[] iArr = this.d;
            if (i2 >= iArr.length) {
                this.i = true;
                this.h = iArr.length - 1;
                return;
            }
            return;
        }
        int i3 = -1;
        for (int i4 = 0; i != -1 && i4 < this.f682a; i4++) {
            int i5 = this.d[i];
            int i6 = solverVariable.id;
            if (i5 == i6) {
                this.f[i] = f;
                return;
            }
            if (i5 < i6) {
                i3 = i;
            }
            i = this.e[i];
        }
        int length = this.h;
        int i7 = length + 1;
        if (this.i) {
            int[] iArr2 = this.d;
            if (iArr2[length] != -1) {
                length = iArr2.length;
            }
        } else {
            length = i7;
        }
        int[] iArr3 = this.d;
        if (length >= iArr3.length && this.f682a < iArr3.length) {
            int i8 = 0;
            while (true) {
                int[] iArr4 = this.d;
                if (i8 >= iArr4.length) {
                    break;
                }
                if (iArr4[i8] == -1) {
                    length = i8;
                    break;
                }
                i8++;
            }
        }
        int[] iArr5 = this.d;
        if (length >= iArr5.length) {
            length = iArr5.length;
            int i9 = this.c * 2;
            this.c = i9;
            this.i = false;
            this.h = length - 1;
            this.f = Arrays.copyOf(this.f, i9);
            this.d = Arrays.copyOf(this.d, this.c);
            this.e = Arrays.copyOf(this.e, this.c);
        }
        this.d[length] = solverVariable.id;
        this.f[length] = f;
        if (i3 != -1) {
            int[] iArr6 = this.e;
            iArr6[length] = iArr6[i3];
            iArr6[i3] = length;
        } else {
            this.e[length] = this.f684g;
            this.f684g = length;
        }
        solverVariable.usageInRowCount++;
        solverVariable.addToRow(arrayRow);
        int i10 = this.f682a + 1;
        this.f682a = i10;
        if (!this.i) {
            this.h++;
        }
        int[] iArr7 = this.d;
        if (i10 >= iArr7.length) {
            this.i = true;
        }
        if (this.h >= iArr7.length) {
            this.i = true;
            this.h = iArr7.length - 1;
        }
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public void add(SolverVariable solverVariable, float f, boolean z) {
        if (f <= -0.001f || f >= 0.001f) {
            int i = this.f684g;
            ArrayRow arrayRow = this.f683b;
            if (i == -1) {
                this.f684g = 0;
                this.f[0] = f;
                this.d[0] = solverVariable.id;
                this.e[0] = -1;
                solverVariable.usageInRowCount++;
                solverVariable.addToRow(arrayRow);
                this.f682a++;
                if (this.i) {
                    return;
                }
                int i2 = this.h + 1;
                this.h = i2;
                int[] iArr = this.d;
                if (i2 >= iArr.length) {
                    this.i = true;
                    this.h = iArr.length - 1;
                    return;
                }
                return;
            }
            int i3 = -1;
            for (int i4 = 0; i != -1 && i4 < this.f682a; i4++) {
                int i5 = this.d[i];
                int i6 = solverVariable.id;
                if (i5 == i6) {
                    float[] fArr = this.f;
                    float f2 = fArr[i] + f;
                    if (f2 > -0.001f && f2 < 0.001f) {
                        f2 = 0.0f;
                    }
                    fArr[i] = f2;
                    if (f2 == 0.0f) {
                        if (i == this.f684g) {
                            this.f684g = this.e[i];
                        } else {
                            int[] iArr2 = this.e;
                            iArr2[i3] = iArr2[i];
                        }
                        if (z) {
                            solverVariable.removeFromRow(arrayRow);
                        }
                        if (this.i) {
                            this.h = i;
                        }
                        solverVariable.usageInRowCount--;
                        this.f682a--;
                        return;
                    }
                    return;
                }
                if (i5 < i6) {
                    i3 = i;
                }
                i = this.e[i];
            }
            int length = this.h;
            int i7 = length + 1;
            if (this.i) {
                int[] iArr3 = this.d;
                if (iArr3[length] != -1) {
                    length = iArr3.length;
                }
            } else {
                length = i7;
            }
            int[] iArr4 = this.d;
            if (length >= iArr4.length && this.f682a < iArr4.length) {
                int i8 = 0;
                while (true) {
                    int[] iArr5 = this.d;
                    if (i8 >= iArr5.length) {
                        break;
                    }
                    if (iArr5[i8] == -1) {
                        length = i8;
                        break;
                    }
                    i8++;
                }
            }
            int[] iArr6 = this.d;
            if (length >= iArr6.length) {
                length = iArr6.length;
                int i9 = this.c * 2;
                this.c = i9;
                this.i = false;
                this.h = length - 1;
                this.f = Arrays.copyOf(this.f, i9);
                this.d = Arrays.copyOf(this.d, this.c);
                this.e = Arrays.copyOf(this.e, this.c);
            }
            this.d[length] = solverVariable.id;
            this.f[length] = f;
            if (i3 != -1) {
                int[] iArr7 = this.e;
                iArr7[length] = iArr7[i3];
                iArr7[i3] = length;
            } else {
                this.e[length] = this.f684g;
                this.f684g = length;
            }
            solverVariable.usageInRowCount++;
            solverVariable.addToRow(arrayRow);
            this.f682a++;
            if (!this.i) {
                this.h++;
            }
            int i10 = this.h;
            int[] iArr8 = this.d;
            if (i10 >= iArr8.length) {
                this.i = true;
                this.h = iArr8.length - 1;
            }
        }
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public float use(ArrayRow arrayRow, boolean z) {
        float f = get(arrayRow.f685a);
        remove(arrayRow.f685a, z);
        ArrayRow.ArrayRowVariables arrayRowVariables = arrayRow.variables;
        int currentSize = arrayRowVariables.getCurrentSize();
        for (int i = 0; i < currentSize; i++) {
            SolverVariable variable = arrayRowVariables.getVariable(i);
            add(variable, arrayRowVariables.get(variable) * f, z);
        }
        return f;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public final float remove(SolverVariable solverVariable, boolean z) {
        int i = this.f684g;
        if (i == -1) {
            return 0.0f;
        }
        int i2 = 0;
        int i3 = -1;
        while (i != -1 && i2 < this.f682a) {
            if (this.d[i] == solverVariable.id) {
                if (i == this.f684g) {
                    this.f684g = this.e[i];
                } else {
                    int[] iArr = this.e;
                    iArr[i3] = iArr[i];
                }
                if (z) {
                    solverVariable.removeFromRow(this.f683b);
                }
                solverVariable.usageInRowCount--;
                this.f682a--;
                this.d[i] = -1;
                if (this.i) {
                    this.h = i;
                }
                return this.f[i];
            }
            i2++;
            i3 = i;
            i = this.e[i];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public final void clear() {
        int i = this.f684g;
        for (int i2 = 0; i != -1 && i2 < this.f682a; i2++) {
            SolverVariable solverVariable = this.mCache.d[this.d[i]];
            if (solverVariable != null) {
                solverVariable.removeFromRow(this.f683b);
            }
            i = this.e[i];
        }
        this.f684g = -1;
        this.h = -1;
        this.i = false;
        this.f682a = 0;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public boolean contains(SolverVariable solverVariable) {
        int i = this.f684g;
        if (i == -1) {
            return false;
        }
        for (int i2 = 0; i != -1 && i2 < this.f682a; i2++) {
            if (this.d[i] == solverVariable.id) {
                return true;
            }
            i = this.e[i];
        }
        return false;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public int indexOf(SolverVariable solverVariable) {
        int i = this.f684g;
        if (i == -1) {
            return -1;
        }
        for (int i2 = 0; i != -1 && i2 < this.f682a; i2++) {
            if (this.d[i] == solverVariable.id) {
                return i;
            }
            i = this.e[i];
        }
        return -1;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public void invert() {
        int i = this.f684g;
        for (int i2 = 0; i != -1 && i2 < this.f682a; i2++) {
            float[] fArr = this.f;
            fArr[i] = fArr[i] * (-1.0f);
            i = this.e[i];
        }
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public void divideByAmount(float f) {
        int i = this.f684g;
        for (int i2 = 0; i != -1 && i2 < this.f682a; i2++) {
            float[] fArr = this.f;
            fArr[i] = fArr[i] / f;
            i = this.e[i];
        }
    }

    public int getHead() {
        return this.f684g;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public int getCurrentSize() {
        return this.f682a;
    }

    public final int getId(int i) {
        return this.d[i];
    }

    public final float getValue(int i) {
        return this.f[i];
    }

    public final int getNextIndice(int i) {
        return this.e[i];
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public SolverVariable getVariable(int i) {
        int i2 = this.f684g;
        for (int i3 = 0; i2 != -1 && i3 < this.f682a; i3++) {
            if (i3 == i) {
                return this.mCache.d[this.d[i2]];
            }
            i2 = this.e[i2];
        }
        return null;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public float getVariableValue(int i) {
        int i2 = this.f684g;
        for (int i3 = 0; i2 != -1 && i3 < this.f682a; i3++) {
            if (i3 == i) {
                return this.f[i2];
            }
            i2 = this.e[i2];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public final float get(SolverVariable solverVariable) {
        int i = this.f684g;
        for (int i2 = 0; i != -1 && i2 < this.f682a; i2++) {
            if (this.d[i] == solverVariable.id) {
                return this.f[i];
            }
            i = this.e[i];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public int sizeInBytes() {
        return (this.d.length * 12) + 36;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public void display() {
        int i = this.f682a;
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
        int i = this.f684g;
        String string = "";
        for (int i2 = 0; i != -1 && i2 < this.f682a; i2++) {
            StringBuilder sbP = _COROUTINE.a.p(_COROUTINE.a.z(string, " -> "));
            sbP.append(this.f[i]);
            sbP.append(" : ");
            StringBuilder sbP2 = _COROUTINE.a.p(sbP.toString());
            sbP2.append(this.mCache.d[this.d[i]]);
            string = sbP2.toString();
            i = this.e[i];
        }
        return string;
    }
}
