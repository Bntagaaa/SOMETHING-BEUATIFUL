package androidx.constraintlayout.solver.state;

import androidx.constraintlayout.solver.state.State;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ConstraintReference implements Reference {
    public Dimension G;
    public Dimension H;
    public Object I;
    public ConstraintWidget J;

    /* renamed from: a, reason: collision with root package name */
    public Object f705a;

    /* renamed from: b, reason: collision with root package name */
    public final State f706b;
    public int c = 0;
    public int d = 0;
    public float e = 0.5f;
    public float f = 0.5f;

    /* renamed from: g, reason: collision with root package name */
    public int f707g = 0;
    public int h = 0;
    public int i = 0;
    public int j = 0;
    public int k = 0;
    public int l = 0;
    public int m = 0;
    public int n = 0;
    public int o = 0;
    public int p = 0;
    public int q = 0;
    public int r = 0;
    public Object s = null;
    public Object t = null;
    public Object u = null;
    public Object v = null;
    public Object w = null;
    public Object x = null;
    public Object y = null;
    public Object z = null;
    public Object A = null;
    public Object B = null;
    public Object C = null;
    public Object D = null;
    public Object E = null;
    public State.Constraint F = null;

    public interface ConstraintReferenceFactory {
        ConstraintReference create(State state);
    }

    @Override // androidx.constraintlayout.solver.state.Reference
    public void setKey(Object obj) {
        this.f705a = obj;
    }

    @Override // androidx.constraintlayout.solver.state.Reference
    public Object getKey() {
        return this.f705a;
    }

    public void setView(Object obj) {
        this.I = obj;
        ConstraintWidget constraintWidget = this.J;
        if (constraintWidget != null) {
            constraintWidget.setCompanionWidget(obj);
        }
    }

    public Object getView() {
        return this.I;
    }

    @Override // androidx.constraintlayout.solver.state.Reference
    public void setConstraintWidget(ConstraintWidget constraintWidget) {
        if (constraintWidget == null) {
            return;
        }
        this.J = constraintWidget;
        constraintWidget.setCompanionWidget(this.I);
    }

    @Override // androidx.constraintlayout.solver.state.Reference
    public ConstraintWidget getConstraintWidget() {
        if (this.J == null) {
            ConstraintWidget constraintWidgetCreateConstraintWidget = createConstraintWidget();
            this.J = constraintWidgetCreateConstraintWidget;
            constraintWidgetCreateConstraintWidget.setCompanionWidget(this.I);
        }
        return this.J;
    }

    public ConstraintWidget createConstraintWidget() {
        return new ConstraintWidget(getWidth().d, getHeight().d);
    }

    public class b extends Exception {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList f709a;

        public b(ConstraintReference constraintReference, ArrayList<String> arrayList) {
            this.f709a = arrayList;
        }

        @Override // java.lang.Throwable
        public String toString() {
            return "IncorrectConstraintException: " + this.f709a.toString();
        }
    }

    public void validate() throws b {
        ArrayList arrayList = new ArrayList();
        if (this.s != null && this.t != null) {
            arrayList.add("LeftToLeft and LeftToRight both defined");
        }
        if (this.u != null && this.v != null) {
            arrayList.add("RightToLeft and RightToRight both defined");
        }
        if (this.w != null && this.x != null) {
            arrayList.add("StartToStart and StartToEnd both defined");
        }
        if (this.y != null && this.z != null) {
            arrayList.add("EndToStart and EndToEnd both defined");
        }
        if ((this.s != null || this.t != null || this.u != null || this.v != null) && (this.w != null || this.x != null || this.y != null || this.z != null)) {
            arrayList.add("Both left/right and start/end constraints defined");
        }
        if (arrayList.size() > 0) {
            throw new b(this, arrayList);
        }
    }

    public final Object b(Object obj) {
        if (obj == null) {
            return null;
        }
        return !(obj instanceof ConstraintReference) ? this.f706b.mReferences.get(obj) : obj;
    }

    public ConstraintReference(State state) {
        Object obj = Dimension.WRAP_DIMENSION;
        this.G = Dimension.Fixed(obj);
        this.H = Dimension.Fixed(obj);
        this.f706b = state;
    }

    public void setHorizontalChainStyle(int i) {
        this.c = i;
    }

    public int getHorizontalChainStyle() {
        return this.c;
    }

    public void setVerticalChainStyle(int i) {
        this.d = i;
    }

    public int getVerticalChainStyle(int i) {
        return this.d;
    }

    public ConstraintReference clearVertical() {
        top().clear();
        baseline().clear();
        bottom().clear();
        return this;
    }

    public ConstraintReference clearHorizontal() {
        start().clear();
        end().clear();
        left().clear();
        right().clear();
        return this;
    }

    public ConstraintReference left() {
        if (this.s != null) {
            this.F = State.Constraint.LEFT_TO_LEFT;
            return this;
        }
        this.F = State.Constraint.LEFT_TO_RIGHT;
        return this;
    }

    public ConstraintReference right() {
        if (this.u != null) {
            this.F = State.Constraint.RIGHT_TO_LEFT;
            return this;
        }
        this.F = State.Constraint.RIGHT_TO_RIGHT;
        return this;
    }

    public ConstraintReference start() {
        if (this.w != null) {
            this.F = State.Constraint.START_TO_START;
            return this;
        }
        this.F = State.Constraint.START_TO_END;
        return this;
    }

    public ConstraintReference end() {
        if (this.y != null) {
            this.F = State.Constraint.END_TO_START;
            return this;
        }
        this.F = State.Constraint.END_TO_END;
        return this;
    }

    public ConstraintReference top() {
        if (this.A != null) {
            this.F = State.Constraint.TOP_TO_TOP;
            return this;
        }
        this.F = State.Constraint.TOP_TO_BOTTOM;
        return this;
    }

    public ConstraintReference bottom() {
        if (this.C != null) {
            this.F = State.Constraint.BOTTOM_TO_TOP;
            return this;
        }
        this.F = State.Constraint.BOTTOM_TO_BOTTOM;
        return this;
    }

    public ConstraintReference baseline() {
        this.F = State.Constraint.BASELINE_TO_BASELINE;
        return this;
    }

    public ConstraintReference leftToLeft(Object obj) {
        this.F = State.Constraint.LEFT_TO_LEFT;
        this.s = obj;
        return this;
    }

    public ConstraintReference leftToRight(Object obj) {
        this.F = State.Constraint.LEFT_TO_RIGHT;
        this.t = obj;
        return this;
    }

    public ConstraintReference rightToLeft(Object obj) {
        this.F = State.Constraint.RIGHT_TO_LEFT;
        this.u = obj;
        return this;
    }

    public ConstraintReference rightToRight(Object obj) {
        this.F = State.Constraint.RIGHT_TO_RIGHT;
        this.v = obj;
        return this;
    }

    public ConstraintReference startToStart(Object obj) {
        this.F = State.Constraint.START_TO_START;
        this.w = obj;
        return this;
    }

    public ConstraintReference startToEnd(Object obj) {
        this.F = State.Constraint.START_TO_END;
        this.x = obj;
        return this;
    }

    public ConstraintReference endToStart(Object obj) {
        this.F = State.Constraint.END_TO_START;
        this.y = obj;
        return this;
    }

    public ConstraintReference endToEnd(Object obj) {
        this.F = State.Constraint.END_TO_END;
        this.z = obj;
        return this;
    }

    public ConstraintReference topToTop(Object obj) {
        this.F = State.Constraint.TOP_TO_TOP;
        this.A = obj;
        return this;
    }

    public ConstraintReference topToBottom(Object obj) {
        this.F = State.Constraint.TOP_TO_BOTTOM;
        this.B = obj;
        return this;
    }

    public ConstraintReference bottomToTop(Object obj) {
        this.F = State.Constraint.BOTTOM_TO_TOP;
        this.C = obj;
        return this;
    }

    public ConstraintReference bottomToBottom(Object obj) {
        this.F = State.Constraint.BOTTOM_TO_BOTTOM;
        this.D = obj;
        return this;
    }

    public ConstraintReference baselineToBaseline(Object obj) {
        this.F = State.Constraint.BASELINE_TO_BASELINE;
        this.E = obj;
        return this;
    }

    public ConstraintReference centerHorizontally(Object obj) {
        Object objB = b(obj);
        this.w = objB;
        this.z = objB;
        this.F = State.Constraint.CENTER_HORIZONTALLY;
        this.e = 0.5f;
        return this;
    }

    public ConstraintReference centerVertically(Object obj) {
        Object objB = b(obj);
        this.A = objB;
        this.D = objB;
        this.F = State.Constraint.CENTER_VERTICALLY;
        this.f = 0.5f;
        return this;
    }

    public ConstraintReference width(Dimension dimension) {
        return setWidth(dimension);
    }

    public ConstraintReference height(Dimension dimension) {
        return setHeight(dimension);
    }

    public Dimension getWidth() {
        return this.G;
    }

    public ConstraintReference setWidth(Dimension dimension) {
        this.G = dimension;
        return this;
    }

    public Dimension getHeight() {
        return this.H;
    }

    public ConstraintReference setHeight(Dimension dimension) {
        this.H = dimension;
        return this;
    }

    public ConstraintReference margin(Object obj) {
        return margin(this.f706b.convertDimension(obj));
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f708a;

        static {
            int[] iArr = new int[State.Constraint.values().length];
            f708a = iArr;
            try {
                iArr[State.Constraint.LEFT_TO_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f708a[State.Constraint.LEFT_TO_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f708a[State.Constraint.RIGHT_TO_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f708a[State.Constraint.RIGHT_TO_RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f708a[State.Constraint.START_TO_START.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f708a[State.Constraint.START_TO_END.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f708a[State.Constraint.END_TO_START.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f708a[State.Constraint.END_TO_END.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f708a[State.Constraint.TOP_TO_TOP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f708a[State.Constraint.TOP_TO_BOTTOM.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f708a[State.Constraint.BOTTOM_TO_TOP.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f708a[State.Constraint.BOTTOM_TO_BOTTOM.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f708a[State.Constraint.BASELINE_TO_BASELINE.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f708a[State.Constraint.CENTER_HORIZONTALLY.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f708a[State.Constraint.CENTER_VERTICALLY.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
        }
    }

    public ConstraintReference margin(int i) {
        State.Constraint constraint = this.F;
        if (constraint != null) {
            switch (a.f708a[constraint.ordinal()]) {
                case 1:
                case 2:
                    this.f707g = i;
                    break;
                case 3:
                case 4:
                    this.h = i;
                    break;
                case 5:
                case 6:
                    this.i = i;
                    break;
                case 7:
                case 8:
                    this.j = i;
                    break;
                case 9:
                case 10:
                    this.k = i;
                    break;
                case 11:
                case 12:
                    this.l = i;
                    break;
            }
            return this;
        }
        this.f707g = i;
        this.h = i;
        this.i = i;
        this.j = i;
        this.k = i;
        this.l = i;
        return this;
    }

    public ConstraintReference marginGone(int i) {
        State.Constraint constraint = this.F;
        if (constraint != null) {
            switch (a.f708a[constraint.ordinal()]) {
                case 1:
                case 2:
                    this.m = i;
                    break;
                case 3:
                case 4:
                    this.n = i;
                    break;
                case 5:
                case 6:
                    this.o = i;
                    break;
                case 7:
                case 8:
                    this.p = i;
                    break;
                case 9:
                case 10:
                    this.q = i;
                    break;
                case 11:
                case 12:
                    this.r = i;
                    break;
            }
            return this;
        }
        this.m = i;
        this.n = i;
        this.o = i;
        this.p = i;
        this.q = i;
        this.r = i;
        return this;
    }

    public ConstraintReference horizontalBias(float f) {
        this.e = f;
        return this;
    }

    public ConstraintReference verticalBias(float f) {
        this.f = f;
        return this;
    }

    public ConstraintReference bias(float f) {
        State.Constraint constraint = this.F;
        if (constraint != null) {
            switch (a.f708a[constraint.ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 14:
                    this.e = f;
                    break;
                case 9:
                case 10:
                case 11:
                case 12:
                case 15:
                    this.f = f;
                    break;
            }
        }
        return this;
    }

    public ConstraintReference clear() {
        State.Constraint constraint = this.F;
        if (constraint != null) {
            switch (a.f708a[constraint.ordinal()]) {
                case 1:
                case 2:
                    this.s = null;
                    this.t = null;
                    this.f707g = 0;
                    this.m = 0;
                    break;
                case 3:
                case 4:
                    this.u = null;
                    this.v = null;
                    this.h = 0;
                    this.n = 0;
                    break;
                case 5:
                case 6:
                    this.w = null;
                    this.x = null;
                    this.i = 0;
                    this.o = 0;
                    break;
                case 7:
                case 8:
                    this.y = null;
                    this.z = null;
                    this.j = 0;
                    this.p = 0;
                    break;
                case 9:
                case 10:
                    this.A = null;
                    this.B = null;
                    this.k = 0;
                    this.q = 0;
                    break;
                case 11:
                case 12:
                    this.C = null;
                    this.D = null;
                    this.l = 0;
                    this.r = 0;
                    break;
                case 13:
                    this.E = null;
                    break;
            }
            return this;
        }
        this.s = null;
        this.t = null;
        this.f707g = 0;
        this.u = null;
        this.v = null;
        this.h = 0;
        this.w = null;
        this.x = null;
        this.i = 0;
        this.y = null;
        this.z = null;
        this.j = 0;
        this.A = null;
        this.B = null;
        this.k = 0;
        this.C = null;
        this.D = null;
        this.l = 0;
        this.E = null;
        this.e = 0.5f;
        this.f = 0.5f;
        this.m = 0;
        this.n = 0;
        this.o = 0;
        this.p = 0;
        this.q = 0;
        this.r = 0;
        return this;
    }

    public final void a(ConstraintWidget constraintWidget, Object obj, State.Constraint constraint) {
        ConstraintWidget constraintWidget2 = obj instanceof Reference ? ((Reference) obj).getConstraintWidget() : null;
        if (constraintWidget2 == null) {
            return;
        }
        int[] iArr = a.f708a;
        int i = iArr[constraint.ordinal()];
        switch (iArr[constraint.ordinal()]) {
            case 1:
                ConstraintAnchor.Type type = ConstraintAnchor.Type.LEFT;
                constraintWidget.getAnchor(type).connect(constraintWidget2.getAnchor(type), this.f707g, this.m, false);
                break;
            case 2:
                constraintWidget.getAnchor(ConstraintAnchor.Type.LEFT).connect(constraintWidget2.getAnchor(ConstraintAnchor.Type.RIGHT), this.f707g, this.m, false);
                break;
            case 3:
                constraintWidget.getAnchor(ConstraintAnchor.Type.RIGHT).connect(constraintWidget2.getAnchor(ConstraintAnchor.Type.LEFT), this.h, this.n, false);
                break;
            case 4:
                ConstraintAnchor.Type type2 = ConstraintAnchor.Type.RIGHT;
                constraintWidget.getAnchor(type2).connect(constraintWidget2.getAnchor(type2), this.h, this.n, false);
                break;
            case 5:
                ConstraintAnchor.Type type3 = ConstraintAnchor.Type.LEFT;
                constraintWidget.getAnchor(type3).connect(constraintWidget2.getAnchor(type3), this.i, this.o, false);
                break;
            case 6:
                constraintWidget.getAnchor(ConstraintAnchor.Type.LEFT).connect(constraintWidget2.getAnchor(ConstraintAnchor.Type.RIGHT), this.i, this.o, false);
                break;
            case 7:
                constraintWidget.getAnchor(ConstraintAnchor.Type.RIGHT).connect(constraintWidget2.getAnchor(ConstraintAnchor.Type.LEFT), this.j, this.p, false);
                break;
            case 8:
                ConstraintAnchor.Type type4 = ConstraintAnchor.Type.RIGHT;
                constraintWidget.getAnchor(type4).connect(constraintWidget2.getAnchor(type4), this.j, this.p, false);
                break;
            case 9:
                ConstraintAnchor.Type type5 = ConstraintAnchor.Type.TOP;
                constraintWidget.getAnchor(type5).connect(constraintWidget2.getAnchor(type5), this.k, this.q, false);
                break;
            case 10:
                constraintWidget.getAnchor(ConstraintAnchor.Type.TOP).connect(constraintWidget2.getAnchor(ConstraintAnchor.Type.BOTTOM), this.k, this.q, false);
                break;
            case 11:
                constraintWidget.getAnchor(ConstraintAnchor.Type.BOTTOM).connect(constraintWidget2.getAnchor(ConstraintAnchor.Type.TOP), this.l, this.r, false);
                break;
            case 12:
                ConstraintAnchor.Type type6 = ConstraintAnchor.Type.BOTTOM;
                constraintWidget.getAnchor(type6).connect(constraintWidget2.getAnchor(type6), this.l, this.r, false);
                break;
            case 13:
                ConstraintAnchor.Type type7 = ConstraintAnchor.Type.BASELINE;
                constraintWidget.immediateConnect(type7, constraintWidget2, type7, 0, 0);
                break;
        }
    }

    @Override // androidx.constraintlayout.solver.state.Reference
    public void apply() {
        ConstraintWidget constraintWidget = this.J;
        if (constraintWidget == null) {
            return;
        }
        Dimension dimension = this.G;
        State state = this.f706b;
        dimension.apply(state, constraintWidget, 0);
        this.H.apply(state, this.J, 1);
        this.s = b(this.s);
        this.t = b(this.t);
        this.u = b(this.u);
        this.v = b(this.v);
        this.w = b(this.w);
        this.x = b(this.x);
        this.y = b(this.y);
        this.z = b(this.z);
        this.A = b(this.A);
        this.B = b(this.B);
        this.C = b(this.C);
        this.D = b(this.D);
        this.E = b(this.E);
        a(this.J, this.s, State.Constraint.LEFT_TO_LEFT);
        a(this.J, this.t, State.Constraint.LEFT_TO_RIGHT);
        a(this.J, this.u, State.Constraint.RIGHT_TO_LEFT);
        a(this.J, this.v, State.Constraint.RIGHT_TO_RIGHT);
        a(this.J, this.w, State.Constraint.START_TO_START);
        a(this.J, this.x, State.Constraint.START_TO_END);
        a(this.J, this.y, State.Constraint.END_TO_START);
        a(this.J, this.z, State.Constraint.END_TO_END);
        a(this.J, this.A, State.Constraint.TOP_TO_TOP);
        a(this.J, this.B, State.Constraint.TOP_TO_BOTTOM);
        a(this.J, this.C, State.Constraint.BOTTOM_TO_TOP);
        a(this.J, this.D, State.Constraint.BOTTOM_TO_BOTTOM);
        a(this.J, this.E, State.Constraint.BASELINE_TO_BASELINE);
        int i = this.c;
        if (i != 0) {
            this.J.setHorizontalChainStyle(i);
        }
        int i2 = this.d;
        if (i2 != 0) {
            this.J.setVerticalChainStyle(i2);
        }
        this.J.setHorizontalBiasPercent(this.e);
        this.J.setVerticalBiasPercent(this.f);
    }
}
