package androidx.constraintlayout.solver;

import java.util.Comparator;

/* loaded from: classes.dex */
class b implements Comparator<SolverVariable> {
    @Override // java.util.Comparator
    public int compare(SolverVariable solverVariable, SolverVariable solverVariable2) {
        return solverVariable.id - solverVariable2.id;
    }
}
