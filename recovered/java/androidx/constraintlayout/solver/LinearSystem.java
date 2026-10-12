package androidx.constraintlayout.solver;

import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.Arrays;

/* loaded from: classes.dex */
public class LinearSystem {
    public static long ARRAY_ROW_CREATION = 0;
    public static final boolean DEBUG = false;
    public static final boolean FULL_DEBUG = false;
    public static final boolean MEASURE = false;
    public static long OPTIMIZED_ARRAY_ROW_CREATION = 0;
    public static boolean OPTIMIZED_ENGINE = true;
    public static int n = 1000;
    public static Metrics sMetrics;

    /* renamed from: b, reason: collision with root package name */
    public final PriorityGoalRow f690b;
    public ArrayRow[] e;
    public final Cache j;
    public ArrayRow m;

    /* renamed from: a, reason: collision with root package name */
    public int f689a = 0;
    public int c = 32;
    public int d = 32;
    public boolean graphOptimizer = false;
    public boolean newgraphOptimizer = false;
    public boolean[] f = new boolean[32];

    /* renamed from: g, reason: collision with root package name */
    public int f691g = 1;
    public int h = 0;
    public int i = 32;
    public SolverVariable[] k = new SolverVariable[n];
    public int l = 0;

    public interface a {
        void addError(SolverVariable solverVariable);

        void clear();

        SolverVariable getKey();

        SolverVariable getPivotCandidate(LinearSystem linearSystem, boolean[] zArr);

        void initFromRow(a aVar);
    }

    public class b extends ArrayRow {
        public b(LinearSystem linearSystem, Cache cache) {
            this.variables = new SolverVariableValues(this, cache);
        }
    }

    public LinearSystem() {
        this.e = null;
        this.e = new ArrayRow[32];
        g();
        Cache cache = new Cache();
        this.j = cache;
        this.f690b = new PriorityGoalRow(cache);
        if (OPTIMIZED_ENGINE) {
            this.m = new b(this, cache);
        } else {
            this.m = new ArrayRow(cache);
        }
    }

    public void fillMetrics(Metrics metrics) {
        sMetrics = metrics;
    }

    public static Metrics getMetrics() {
        return sMetrics;
    }

    public final void d() {
        int i = this.c * 2;
        this.c = i;
        this.e = (ArrayRow[]) Arrays.copyOf(this.e, i);
        Cache cache = this.j;
        cache.d = (SolverVariable[]) Arrays.copyOf(cache.d, this.c);
        int i2 = this.c;
        this.f = new boolean[i2];
        this.d = i2;
        this.i = i2;
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.tableSizeIncrease++;
            metrics.maxTableSize = Math.max(metrics.maxTableSize, i2);
            Metrics metrics2 = sMetrics;
            metrics2.lastTableSize = metrics2.maxTableSize;
        }
    }

    public final void g() {
        boolean z = OPTIMIZED_ENGINE;
        Cache cache = this.j;
        int i = 0;
        if (z) {
            while (true) {
                ArrayRow[] arrayRowArr = this.e;
                if (i >= arrayRowArr.length) {
                    return;
                }
                ArrayRow arrayRow = arrayRowArr[i];
                if (arrayRow != null) {
                    cache.f687a.release(arrayRow);
                }
                this.e[i] = null;
                i++;
            }
        } else {
            while (true) {
                ArrayRow[] arrayRowArr2 = this.e;
                if (i >= arrayRowArr2.length) {
                    return;
                }
                ArrayRow arrayRow2 = arrayRowArr2[i];
                if (arrayRow2 != null) {
                    cache.f688b.release(arrayRow2);
                }
                this.e[i] = null;
                i++;
            }
        }
    }

    public void reset() {
        Cache cache;
        int i = 0;
        while (true) {
            cache = this.j;
            SolverVariable[] solverVariableArr = cache.d;
            if (i >= solverVariableArr.length) {
                break;
            }
            SolverVariable solverVariable = solverVariableArr[i];
            if (solverVariable != null) {
                solverVariable.reset();
            }
            i++;
        }
        cache.c.releaseAll(this.k, this.l);
        this.l = 0;
        Arrays.fill(cache.d, (Object) null);
        this.f689a = 0;
        this.f690b.clear();
        this.f691g = 1;
        for (int i2 = 0; i2 < this.h; i2++) {
            this.e[i2].getClass();
        }
        g();
        this.h = 0;
        if (OPTIMIZED_ENGINE) {
            this.m = new b(this, cache);
        } else {
            this.m = new ArrayRow(cache);
        }
    }

    public SolverVariable createObjectVariable(Object obj) {
        SolverVariable solverVariable = null;
        if (obj == null) {
            return null;
        }
        if (this.f691g + 1 >= this.d) {
            d();
        }
        if (obj instanceof ConstraintAnchor) {
            ConstraintAnchor constraintAnchor = (ConstraintAnchor) obj;
            solverVariable = constraintAnchor.getSolverVariable();
            Cache cache = this.j;
            if (solverVariable == null) {
                constraintAnchor.resetSolverVariable(cache);
                solverVariable = constraintAnchor.getSolverVariable();
            }
            int i = solverVariable.id;
            if (i != -1 && i <= this.f689a && cache.d[i] != null) {
                return solverVariable;
            }
            if (i != -1) {
                solverVariable.reset();
            }
            int i2 = this.f689a + 1;
            this.f689a = i2;
            this.f691g++;
            solverVariable.id = i2;
            solverVariable.e = SolverVariable.Type.UNRESTRICTED;
            cache.d[i2] = solverVariable;
        }
        return solverVariable;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ArrayRow createRow() {
        boolean z = OPTIMIZED_ENGINE;
        Cache cache = this.j;
        if (z) {
            ArrayRow arrayRow = (ArrayRow) cache.f687a.acquire();
            if (arrayRow == null) {
                b bVar = new b(this, cache);
                OPTIMIZED_ARRAY_ROW_CREATION++;
                return bVar;
            }
            arrayRow.reset();
            return arrayRow;
        }
        ArrayRow arrayRow2 = (ArrayRow) cache.f688b.acquire();
        if (arrayRow2 == null) {
            ArrayRow arrayRow3 = new ArrayRow(cache);
            ARRAY_ROW_CREATION++;
            return arrayRow3;
        }
        arrayRow2.reset();
        return arrayRow2;
    }

    public SolverVariable createSlackVariable() {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.slackvariables++;
        }
        if (this.f691g + 1 >= this.d) {
            d();
        }
        SolverVariable solverVariableA = a(SolverVariable.Type.SLACK, null);
        int i = this.f689a + 1;
        this.f689a = i;
        this.f691g++;
        solverVariableA.id = i;
        this.j.d[i] = solverVariableA;
        return solverVariableA;
    }

    public SolverVariable createExtraVariable() {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.extravariables++;
        }
        if (this.f691g + 1 >= this.d) {
            d();
        }
        SolverVariable solverVariableA = a(SolverVariable.Type.SLACK, null);
        int i = this.f689a + 1;
        this.f689a = i;
        this.f691g++;
        solverVariableA.id = i;
        this.j.d[i] = solverVariableA;
        return solverVariableA;
    }

    public SolverVariable createErrorVariable(int i, String str) {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.errors++;
        }
        if (this.f691g + 1 >= this.d) {
            d();
        }
        SolverVariable solverVariableA = a(SolverVariable.Type.ERROR, str);
        int i2 = this.f689a + 1;
        this.f689a = i2;
        this.f691g++;
        solverVariableA.id = i2;
        solverVariableA.strength = i;
        this.j.d[i2] = solverVariableA;
        this.f690b.addError(solverVariableA);
        return solverVariableA;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final SolverVariable a(SolverVariable.Type type, String str) {
        SolverVariable solverVariable = (SolverVariable) this.j.c.acquire();
        if (solverVariable == null) {
            solverVariable = new SolverVariable(type, str);
            solverVariable.setType(type, str);
        } else {
            solverVariable.reset();
            solverVariable.setType(type, str);
        }
        int i = this.l;
        int i2 = n;
        if (i >= i2) {
            int i3 = i2 * 2;
            n = i3;
            this.k = (SolverVariable[]) Arrays.copyOf(this.k, i3);
        }
        SolverVariable[] solverVariableArr = this.k;
        int i4 = this.l;
        this.l = i4 + 1;
        solverVariableArr[i4] = solverVariable;
        return solverVariable;
    }

    public int getObjectVariableValue(Object obj) {
        SolverVariable solverVariable = ((ConstraintAnchor) obj).getSolverVariable();
        if (solverVariable != null) {
            return (int) (solverVariable.computedValue + 0.5f);
        }
        return 0;
    }

    public void minimize() throws Exception {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.minimize++;
        }
        boolean z = this.graphOptimizer;
        PriorityGoalRow priorityGoalRow = this.f690b;
        if (z || this.newgraphOptimizer) {
            if (metrics != null) {
                metrics.graphOptimizer++;
            }
            for (int i = 0; i < this.h; i++) {
                if (!this.e[i].d) {
                    e(priorityGoalRow);
                    return;
                }
            }
            Metrics metrics2 = sMetrics;
            if (metrics2 != null) {
                metrics2.fullySolved++;
            }
            for (int i2 = 0; i2 < this.h; i2++) {
                ArrayRow arrayRow = this.e[i2];
                arrayRow.f685a.computedValue = arrayRow.f686b;
            }
            return;
        }
        e(priorityGoalRow);
    }

    public final void e(PriorityGoalRow priorityGoalRow) {
        Cache cache;
        Metrics metrics = sMetrics;
        long j = 1;
        if (metrics != null) {
            metrics.minimizeGoal++;
            metrics.maxVariables = Math.max(metrics.maxVariables, this.f691g);
            Metrics metrics2 = sMetrics;
            metrics2.maxRows = Math.max(metrics2.maxRows, this.h);
        }
        int i = 0;
        while (true) {
            if (i >= this.h) {
                break;
            }
            ArrayRow arrayRow = this.e[i];
            if (arrayRow.f685a.e != SolverVariable.Type.UNRESTRICTED) {
                float f = 0.0f;
                if (arrayRow.f686b < 0.0f) {
                    boolean z = false;
                    int i2 = 0;
                    while (!z) {
                        Metrics metrics3 = sMetrics;
                        if (metrics3 != null) {
                            metrics3.bfs += j;
                        }
                        i2++;
                        float f2 = Float.MAX_VALUE;
                        int i3 = 0;
                        int i4 = -1;
                        int i5 = -1;
                        int i6 = 0;
                        while (true) {
                            int i7 = this.h;
                            cache = this.j;
                            if (i3 >= i7) {
                                break;
                            }
                            ArrayRow arrayRow2 = this.e[i3];
                            long j2 = j;
                            if (arrayRow2.f685a.e != SolverVariable.Type.UNRESTRICTED && !arrayRow2.d && arrayRow2.f686b < f) {
                                int i8 = 1;
                                while (i8 < this.f691g) {
                                    SolverVariable solverVariable = cache.d[i8];
                                    float f3 = arrayRow2.variables.get(solverVariable);
                                    if (f3 > f) {
                                        for (int i9 = 0; i9 < 9; i9++) {
                                            float f4 = solverVariable.c[i9] / f3;
                                            if ((f4 < f2 && i9 == i6) || i9 > i6) {
                                                i5 = i8;
                                                i6 = i9;
                                                f2 = f4;
                                                i4 = i3;
                                            }
                                        }
                                    }
                                    i8++;
                                    f = 0.0f;
                                }
                            }
                            i3++;
                            j = j2;
                            f = 0.0f;
                        }
                        long j3 = j;
                        if (i4 != -1) {
                            ArrayRow arrayRow3 = this.e[i4];
                            arrayRow3.f685a.f696b = -1;
                            Metrics metrics4 = sMetrics;
                            if (metrics4 != null) {
                                metrics4.pivots += j3;
                            }
                            arrayRow3.b(cache.d[i5]);
                            SolverVariable solverVariable2 = arrayRow3.f685a;
                            solverVariable2.f696b = i4;
                            solverVariable2.updateReferencesWithNewDefinition(arrayRow3);
                        } else {
                            z = true;
                        }
                        if (i2 > this.f691g / 2) {
                            z = true;
                        }
                        j = j3;
                        f = 0.0f;
                    }
                }
            }
            i++;
            j = j;
        }
        f(priorityGoalRow);
        for (int i10 = 0; i10 < this.h; i10++) {
            ArrayRow arrayRow4 = this.e[i10];
            arrayRow4.f685a.computedValue = arrayRow4.f686b;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addConstraint(androidx.constraintlayout.solver.ArrayRow r19) {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.LinearSystem.addConstraint(androidx.constraintlayout.solver.ArrayRow):void");
    }

    public final void b(ArrayRow arrayRow) {
        boolean z = OPTIMIZED_ENGINE;
        Cache cache = this.j;
        if (z) {
            ArrayRow arrayRow2 = this.e[this.h];
            if (arrayRow2 != null) {
                cache.f687a.release(arrayRow2);
            }
        } else {
            ArrayRow arrayRow3 = this.e[this.h];
            if (arrayRow3 != null) {
                cache.f688b.release(arrayRow3);
            }
        }
        ArrayRow[] arrayRowArr = this.e;
        int i = this.h;
        arrayRowArr[i] = arrayRow;
        SolverVariable solverVariable = arrayRow.f685a;
        solverVariable.f696b = i;
        this.h = i + 1;
        solverVariable.updateReferencesWithNewDefinition(arrayRow);
    }

    public void removeRow(ArrayRow arrayRow) {
        SolverVariable solverVariable;
        int i;
        if (!arrayRow.d || (solverVariable = arrayRow.f685a) == null) {
            return;
        }
        int i2 = solverVariable.f696b;
        if (i2 != -1) {
            while (true) {
                i = this.h - 1;
                if (i2 >= i) {
                    break;
                }
                ArrayRow[] arrayRowArr = this.e;
                int i3 = i2 + 1;
                arrayRowArr[i2] = arrayRowArr[i3];
                i2 = i3;
            }
            this.h = i;
        }
        arrayRow.f685a.setFinalValue(this, arrayRow.f686b);
    }

    public final void f(ArrayRow arrayRow) {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.optimize++;
        }
        for (int i = 0; i < this.f691g; i++) {
            this.f[i] = false;
        }
        boolean z = false;
        int i2 = 0;
        while (!z) {
            Metrics metrics2 = sMetrics;
            if (metrics2 != null) {
                metrics2.iterations++;
            }
            i2++;
            if (i2 >= this.f691g * 2) {
                return;
            }
            if (arrayRow.getKey() != null) {
                this.f[arrayRow.getKey().id] = true;
            }
            SolverVariable pivotCandidate = arrayRow.getPivotCandidate(this, this.f);
            if (pivotCandidate != null) {
                boolean[] zArr = this.f;
                int i3 = pivotCandidate.id;
                if (zArr[i3]) {
                    return;
                } else {
                    zArr[i3] = true;
                }
            }
            if (pivotCandidate != null) {
                float f = Float.MAX_VALUE;
                int i4 = -1;
                for (int i5 = 0; i5 < this.h; i5++) {
                    ArrayRow arrayRow2 = this.e[i5];
                    if (arrayRow2.f685a.e != SolverVariable.Type.UNRESTRICTED && !arrayRow2.d && arrayRow2.variables.contains(pivotCandidate)) {
                        float f2 = arrayRow2.variables.get(pivotCandidate);
                        if (f2 < 0.0f) {
                            float f3 = (-arrayRow2.f686b) / f2;
                            if (f3 < f) {
                                i4 = i5;
                                f = f3;
                            }
                        }
                    }
                }
                if (i4 > -1) {
                    ArrayRow arrayRow3 = this.e[i4];
                    arrayRow3.f685a.f696b = -1;
                    Metrics metrics3 = sMetrics;
                    if (metrics3 != null) {
                        metrics3.pivots++;
                    }
                    arrayRow3.b(pivotCandidate);
                    SolverVariable solverVariable = arrayRow3.f685a;
                    solverVariable.f696b = i4;
                    solverVariable.updateReferencesWithNewDefinition(arrayRow3);
                }
            } else {
                z = true;
            }
        }
    }

    public void displayReadableRows() {
        c();
        String str = "";
        for (int i = 0; i < this.f689a; i++) {
            SolverVariable solverVariable = this.j.d[i];
            if (solverVariable != null && solverVariable.isFinalValue) {
                str = str + " $[" + i + "] => " + solverVariable + " = " + solverVariable.computedValue + "\n";
            }
        }
        String strZ = _COROUTINE.a.z(str, "\n\n #  ");
        for (int i2 = 0; i2 < this.h; i2++) {
            StringBuilder sbP = _COROUTINE.a.p(strZ);
            sbP.append(this.e[i2].c());
            strZ = _COROUTINE.a.z(sbP.toString(), "\n #  ");
        }
        PriorityGoalRow priorityGoalRow = this.f690b;
        if (priorityGoalRow != null) {
            strZ = strZ + "Goal: " + priorityGoalRow + "\n";
        }
        System.out.println(strZ);
    }

    public void displayVariablesReadableRows() {
        c();
        String strZ = "";
        for (int i = 0; i < this.h; i++) {
            if (this.e[i].f685a.e == SolverVariable.Type.UNRESTRICTED) {
                StringBuilder sbP = _COROUTINE.a.p(strZ);
                sbP.append(this.e[i].c());
                strZ = _COROUTINE.a.z(sbP.toString(), "\n");
            }
        }
        StringBuilder sbP2 = _COROUTINE.a.p(strZ);
        sbP2.append(this.f690b);
        sbP2.append("\n");
        System.out.println(sbP2.toString());
    }

    public int getMemoryUsed() {
        int iSizeInBytes = 0;
        for (int i = 0; i < this.h; i++) {
            ArrayRow arrayRow = this.e[i];
            if (arrayRow != null) {
                iSizeInBytes += arrayRow.variables.sizeInBytes() + (arrayRow.f685a != null ? 4 : 0) + 8;
            }
        }
        return iSizeInBytes;
    }

    public int getNumEquations() {
        return this.h;
    }

    public int getNumVariables() {
        return this.f689a;
    }

    public final void c() {
        System.out.println("Display Rows (" + this.h + "x" + this.f691g + ")\n");
    }

    public Cache getCache() {
        return this.j;
    }

    public void addGreaterThan(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        ArrayRow arrayRowCreateRow = createRow();
        SolverVariable solverVariableCreateSlackVariable = createSlackVariable();
        solverVariableCreateSlackVariable.strength = 0;
        arrayRowCreateRow.createRowGreaterThan(solverVariable, solverVariable2, solverVariableCreateSlackVariable, i);
        if (i2 != 8) {
            arrayRowCreateRow.variables.put(createErrorVariable(i2, null), (int) (arrayRowCreateRow.variables.get(solverVariableCreateSlackVariable) * (-1.0f)));
        }
        addConstraint(arrayRowCreateRow);
    }

    public void addGreaterBarrier(SolverVariable solverVariable, SolverVariable solverVariable2, int i, boolean z) {
        ArrayRow arrayRowCreateRow = createRow();
        SolverVariable solverVariableCreateSlackVariable = createSlackVariable();
        solverVariableCreateSlackVariable.strength = 0;
        arrayRowCreateRow.createRowGreaterThan(solverVariable, solverVariable2, solverVariableCreateSlackVariable, i);
        addConstraint(arrayRowCreateRow);
    }

    public void addLowerThan(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        ArrayRow arrayRowCreateRow = createRow();
        SolverVariable solverVariableCreateSlackVariable = createSlackVariable();
        solverVariableCreateSlackVariable.strength = 0;
        arrayRowCreateRow.createRowLowerThan(solverVariable, solverVariable2, solverVariableCreateSlackVariable, i);
        if (i2 != 8) {
            arrayRowCreateRow.variables.put(createErrorVariable(i2, null), (int) (arrayRowCreateRow.variables.get(solverVariableCreateSlackVariable) * (-1.0f)));
        }
        addConstraint(arrayRowCreateRow);
    }

    public void addLowerBarrier(SolverVariable solverVariable, SolverVariable solverVariable2, int i, boolean z) {
        ArrayRow arrayRowCreateRow = createRow();
        SolverVariable solverVariableCreateSlackVariable = createSlackVariable();
        solverVariableCreateSlackVariable.strength = 0;
        arrayRowCreateRow.createRowLowerThan(solverVariable, solverVariable2, solverVariableCreateSlackVariable, i);
        addConstraint(arrayRowCreateRow);
    }

    public void addCentering(SolverVariable solverVariable, SolverVariable solverVariable2, int i, float f, SolverVariable solverVariable3, SolverVariable solverVariable4, int i2, int i3) {
        ArrayRow arrayRowCreateRow = createRow();
        if (solverVariable2 == solverVariable3) {
            arrayRowCreateRow.variables.put(solverVariable, 1.0f);
            arrayRowCreateRow.variables.put(solverVariable4, 1.0f);
            arrayRowCreateRow.variables.put(solverVariable2, -2.0f);
        } else if (f == 0.5f) {
            arrayRowCreateRow.variables.put(solverVariable, 1.0f);
            arrayRowCreateRow.variables.put(solverVariable2, -1.0f);
            arrayRowCreateRow.variables.put(solverVariable3, -1.0f);
            arrayRowCreateRow.variables.put(solverVariable4, 1.0f);
            if (i > 0 || i2 > 0) {
                arrayRowCreateRow.f686b = (-i) + i2;
            }
        } else if (f <= 0.0f) {
            arrayRowCreateRow.variables.put(solverVariable, -1.0f);
            arrayRowCreateRow.variables.put(solverVariable2, 1.0f);
            arrayRowCreateRow.f686b = i;
        } else if (f >= 1.0f) {
            arrayRowCreateRow.variables.put(solverVariable4, -1.0f);
            arrayRowCreateRow.variables.put(solverVariable3, 1.0f);
            arrayRowCreateRow.f686b = -i2;
        } else {
            float f2 = 1.0f - f;
            arrayRowCreateRow.variables.put(solverVariable, f2 * 1.0f);
            arrayRowCreateRow.variables.put(solverVariable2, f2 * (-1.0f));
            arrayRowCreateRow.variables.put(solverVariable3, (-1.0f) * f);
            arrayRowCreateRow.variables.put(solverVariable4, 1.0f * f);
            if (i > 0 || i2 > 0) {
                arrayRowCreateRow.f686b = (i2 * f) + ((-i) * f2);
            }
        }
        if (i3 != 8) {
            arrayRowCreateRow.addError(this, i3);
        }
        addConstraint(arrayRowCreateRow);
    }

    public void addRatio(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f, int i) {
        ArrayRow arrayRowCreateRow = createRow();
        arrayRowCreateRow.createRowDimensionRatio(solverVariable, solverVariable2, solverVariable3, solverVariable4, f);
        if (i != 8) {
            arrayRowCreateRow.addError(this, i);
        }
        addConstraint(arrayRowCreateRow);
    }

    public ArrayRow addEquality(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        if (i2 == 8 && solverVariable2.isFinalValue && solverVariable.f696b == -1) {
            solverVariable.setFinalValue(this, solverVariable2.computedValue + i);
            return null;
        }
        ArrayRow arrayRowCreateRow = createRow();
        arrayRowCreateRow.createRowEquals(solverVariable, solverVariable2, i);
        if (i2 != 8) {
            arrayRowCreateRow.addError(this, i2);
        }
        addConstraint(arrayRowCreateRow);
        return arrayRowCreateRow;
    }

    public void addEquality(SolverVariable solverVariable, int i) {
        int i2 = solverVariable.f696b;
        if (i2 == -1) {
            solverVariable.setFinalValue(this, i);
            return;
        }
        if (i2 != -1) {
            ArrayRow arrayRow = this.e[i2];
            if (arrayRow.d) {
                arrayRow.f686b = i;
                return;
            }
            if (arrayRow.variables.getCurrentSize() == 0) {
                arrayRow.d = true;
                arrayRow.f686b = i;
                return;
            } else {
                ArrayRow arrayRowCreateRow = createRow();
                arrayRowCreateRow.createRowEquals(solverVariable, i);
                addConstraint(arrayRowCreateRow);
                return;
            }
        }
        ArrayRow arrayRowCreateRow2 = createRow();
        arrayRowCreateRow2.f685a = solverVariable;
        float f = i;
        solverVariable.computedValue = f;
        arrayRowCreateRow2.f686b = f;
        arrayRowCreateRow2.d = true;
        addConstraint(arrayRowCreateRow2);
    }

    public static ArrayRow createRowDimensionPercent(LinearSystem linearSystem, SolverVariable solverVariable, SolverVariable solverVariable2, float f) {
        ArrayRow arrayRowCreateRow = linearSystem.createRow();
        arrayRowCreateRow.variables.put(solverVariable, -1.0f);
        arrayRowCreateRow.variables.put(solverVariable2, f);
        return arrayRowCreateRow;
    }

    public void addCenterPoint(ConstraintWidget constraintWidget, ConstraintWidget constraintWidget2, float f, int i) {
        ConstraintAnchor.Type type = ConstraintAnchor.Type.LEFT;
        SolverVariable solverVariableCreateObjectVariable = createObjectVariable(constraintWidget.getAnchor(type));
        ConstraintAnchor.Type type2 = ConstraintAnchor.Type.TOP;
        SolverVariable solverVariableCreateObjectVariable2 = createObjectVariable(constraintWidget.getAnchor(type2));
        ConstraintAnchor.Type type3 = ConstraintAnchor.Type.RIGHT;
        SolverVariable solverVariableCreateObjectVariable3 = createObjectVariable(constraintWidget.getAnchor(type3));
        ConstraintAnchor.Type type4 = ConstraintAnchor.Type.BOTTOM;
        SolverVariable solverVariableCreateObjectVariable4 = createObjectVariable(constraintWidget.getAnchor(type4));
        SolverVariable solverVariableCreateObjectVariable5 = createObjectVariable(constraintWidget2.getAnchor(type));
        SolverVariable solverVariableCreateObjectVariable6 = createObjectVariable(constraintWidget2.getAnchor(type2));
        SolverVariable solverVariableCreateObjectVariable7 = createObjectVariable(constraintWidget2.getAnchor(type3));
        SolverVariable solverVariableCreateObjectVariable8 = createObjectVariable(constraintWidget2.getAnchor(type4));
        ArrayRow arrayRowCreateRow = createRow();
        double d = f;
        double d2 = i;
        arrayRowCreateRow.createRowWithAngle(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable6, solverVariableCreateObjectVariable8, (float) (Math.sin(d) * d2));
        addConstraint(arrayRowCreateRow);
        ArrayRow arrayRowCreateRow2 = createRow();
        arrayRowCreateRow2.createRowWithAngle(solverVariableCreateObjectVariable, solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable5, solverVariableCreateObjectVariable7, (float) (Math.cos(d) * d2));
        addConstraint(arrayRowCreateRow2);
    }
}
