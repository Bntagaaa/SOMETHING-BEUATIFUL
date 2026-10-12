package androidx.constraintlayout.solver;

import androidx.constraintlayout.solver.ArrayRow;
import java.util.Arrays;

/* loaded from: classes.dex */
public class PriorityGoalRow extends ArrayRow {
    public SolverVariable[] e;
    public SolverVariable[] f;

    /* renamed from: g, reason: collision with root package name */
    public int f692g;
    public final a h;

    public class a implements Comparable {

        /* renamed from: a, reason: collision with root package name */
        public SolverVariable f693a;

        public a(PriorityGoalRow priorityGoalRow) {
        }

        public void init(SolverVariable solverVariable) {
            this.f693a = solverVariable;
        }

        public boolean addToGoal(SolverVariable solverVariable, float f) {
            boolean z = true;
            if (!this.f693a.inGoal) {
                for (int i = 0; i < 9; i++) {
                    float f2 = solverVariable.d[i];
                    if (f2 != 0.0f) {
                        float f3 = f2 * f;
                        if (Math.abs(f3) < 1.0E-4f) {
                            f3 = 0.0f;
                        }
                        this.f693a.d[i] = f3;
                    } else {
                        this.f693a.d[i] = 0.0f;
                    }
                }
                return true;
            }
            for (int i2 = 0; i2 < 9; i2++) {
                float[] fArr = this.f693a.d;
                float f4 = (solverVariable.d[i2] * f) + fArr[i2];
                fArr[i2] = f4;
                if (Math.abs(f4) < 1.0E-4f) {
                    this.f693a.d[i2] = 0.0f;
                } else {
                    z = false;
                }
            }
            if (z) {
                PriorityGoalRow.this.e(this.f693a);
            }
            return false;
        }

        public final boolean isNegative() {
            for (int i = 8; i >= 0; i--) {
                float f = this.f693a.d[i];
                if (f > 0.0f) {
                    return false;
                }
                if (f < 0.0f) {
                    return true;
                }
            }
            return false;
        }

        public final boolean isSmallerThan(SolverVariable solverVariable) {
            int i = 8;
            while (true) {
                if (i < 0) {
                    break;
                }
                float f = solverVariable.d[i];
                float f2 = this.f693a.d[i];
                if (f2 == f) {
                    i--;
                } else if (f2 < f) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            return this.f693a.id - ((SolverVariable) obj).id;
        }

        public void reset() {
            Arrays.fill(this.f693a.d, 0.0f);
        }

        public String toString() {
            String string = "[ ";
            if (this.f693a != null) {
                for (int i = 0; i < 9; i++) {
                    StringBuilder sbP = _COROUTINE.a.p(string);
                    sbP.append(this.f693a.d[i]);
                    sbP.append(" ");
                    string = sbP.toString();
                }
            }
            StringBuilder sbQ = _COROUTINE.a.q(string, "] ");
            sbQ.append(this.f693a);
            return sbQ.toString();
        }
    }

    @Override // androidx.constraintlayout.solver.ArrayRow, androidx.constraintlayout.solver.LinearSystem.a
    public void clear() {
        this.f692g = 0;
        this.f686b = 0.0f;
    }

    public PriorityGoalRow(Cache cache) {
        super(cache);
        this.e = new SolverVariable[128];
        this.f = new SolverVariable[128];
        this.f692g = 0;
        this.h = new a(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002a  */
    @Override // androidx.constraintlayout.solver.ArrayRow, androidx.constraintlayout.solver.LinearSystem.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.constraintlayout.solver.SolverVariable getPivotCandidate(androidx.constraintlayout.solver.LinearSystem r5, boolean[] r6) {
        /*
            r4 = this;
            r5 = -1
            r0 = 0
            r1 = -1
        L3:
            int r2 = r4.f692g
            if (r0 >= r2) goto L2e
            androidx.constraintlayout.solver.SolverVariable[] r2 = r4.e
            r2 = r2[r0]
            int r3 = r2.id
            boolean r3 = r6[r3]
            if (r3 == 0) goto L12
            goto L2b
        L12:
            androidx.constraintlayout.solver.PriorityGoalRow$a r3 = r4.h
            r3.init(r2)
            if (r1 != r5) goto L20
            boolean r2 = r3.isNegative()
            if (r2 == 0) goto L2b
            goto L2a
        L20:
            androidx.constraintlayout.solver.SolverVariable[] r2 = r4.e
            r2 = r2[r1]
            boolean r2 = r3.isSmallerThan(r2)
            if (r2 == 0) goto L2b
        L2a:
            r1 = r0
        L2b:
            int r0 = r0 + 1
            goto L3
        L2e:
            if (r1 != r5) goto L32
            r5 = 0
            return r5
        L32:
            androidx.constraintlayout.solver.SolverVariable[] r5 = r4.e
            r5 = r5[r1]
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.PriorityGoalRow.getPivotCandidate(androidx.constraintlayout.solver.LinearSystem, boolean[]):androidx.constraintlayout.solver.SolverVariable");
    }

    @Override // androidx.constraintlayout.solver.ArrayRow, androidx.constraintlayout.solver.LinearSystem.a
    public void addError(SolverVariable solverVariable) {
        a aVar = this.h;
        aVar.init(solverVariable);
        aVar.reset();
        solverVariable.d[solverVariable.strength] = 1.0f;
        d(solverVariable);
    }

    public final void d(SolverVariable solverVariable) {
        int i;
        int i2 = this.f692g + 1;
        SolverVariable[] solverVariableArr = this.e;
        if (i2 > solverVariableArr.length) {
            SolverVariable[] solverVariableArr2 = (SolverVariable[]) Arrays.copyOf(solverVariableArr, solverVariableArr.length * 2);
            this.e = solverVariableArr2;
            this.f = (SolverVariable[]) Arrays.copyOf(solverVariableArr2, solverVariableArr2.length * 2);
        }
        SolverVariable[] solverVariableArr3 = this.e;
        int i3 = this.f692g;
        solverVariableArr3[i3] = solverVariable;
        int i4 = i3 + 1;
        this.f692g = i4;
        if (i4 > 1 && solverVariableArr3[i3].id > solverVariable.id) {
            int i5 = 0;
            while (true) {
                i = this.f692g;
                if (i5 >= i) {
                    break;
                }
                this.f[i5] = this.e[i5];
                i5++;
            }
            Arrays.sort(this.f, 0, i, new b());
            for (int i6 = 0; i6 < this.f692g; i6++) {
                this.e[i6] = this.f[i6];
            }
        }
        solverVariable.inGoal = true;
        solverVariable.addToRow(this);
    }

    public final void e(SolverVariable solverVariable) {
        int i = 0;
        while (i < this.f692g) {
            if (this.e[i] == solverVariable) {
                while (true) {
                    int i2 = this.f692g;
                    if (i < i2 - 1) {
                        SolverVariable[] solverVariableArr = this.e;
                        int i3 = i + 1;
                        solverVariableArr[i] = solverVariableArr[i3];
                        i = i3;
                    } else {
                        this.f692g = i2 - 1;
                        solverVariable.inGoal = false;
                        return;
                    }
                }
            } else {
                i++;
            }
        }
    }

    @Override // androidx.constraintlayout.solver.ArrayRow
    public void updateFromRow(ArrayRow arrayRow, boolean z) {
        SolverVariable solverVariable = arrayRow.f685a;
        if (solverVariable == null) {
            return;
        }
        ArrayRow.ArrayRowVariables arrayRowVariables = arrayRow.variables;
        int currentSize = arrayRowVariables.getCurrentSize();
        for (int i = 0; i < currentSize; i++) {
            SolverVariable variable = arrayRowVariables.getVariable(i);
            float variableValue = arrayRowVariables.getVariableValue(i);
            a aVar = this.h;
            aVar.init(variable);
            if (aVar.addToGoal(solverVariable, variableValue)) {
                d(variable);
            }
            this.f686b = (arrayRow.f686b * variableValue) + this.f686b;
        }
        e(solverVariable);
    }

    @Override // androidx.constraintlayout.solver.ArrayRow
    public String toString() {
        String str = " goal -> (" + this.f686b + ") : ";
        for (int i = 0; i < this.f692g; i++) {
            SolverVariable solverVariable = this.e[i];
            a aVar = this.h;
            aVar.init(solverVariable);
            str = str + aVar + " ";
        }
        return str;
    }
}
