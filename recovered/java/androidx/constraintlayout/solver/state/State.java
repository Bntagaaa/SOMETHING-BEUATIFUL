package androidx.constraintlayout.solver.state;

import androidx.constraintlayout.solver.state.helpers.AlignHorizontallyReference;
import androidx.constraintlayout.solver.state.helpers.AlignVerticallyReference;
import androidx.constraintlayout.solver.state.helpers.BarrierReference;
import androidx.constraintlayout.solver.state.helpers.GuidelineReference;
import androidx.constraintlayout.solver.state.helpers.HorizontalChainReference;
import androidx.constraintlayout.solver.state.helpers.VerticalChainReference;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.solver.widgets.HelperWidget;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public class State {
    public static final Integer PARENT = 0;

    /* renamed from: a, reason: collision with root package name */
    public int f715a;
    public final ConstraintReference mParent;
    protected HashMap<Object, Reference> mReferences = new HashMap<>();
    protected HashMap<Object, HelperReference> mHelperReferences = new HashMap<>();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Constraint {
        public static final Constraint BASELINE_TO_BASELINE;
        public static final Constraint BOTTOM_TO_BOTTOM;
        public static final Constraint BOTTOM_TO_TOP;
        public static final Constraint CENTER_HORIZONTALLY;
        public static final Constraint CENTER_VERTICALLY;
        public static final Constraint END_TO_END;
        public static final Constraint END_TO_START;
        public static final Constraint LEFT_TO_LEFT;
        public static final Constraint LEFT_TO_RIGHT;
        public static final Constraint RIGHT_TO_LEFT;
        public static final Constraint RIGHT_TO_RIGHT;
        public static final Constraint START_TO_END;
        public static final Constraint START_TO_START;
        public static final Constraint TOP_TO_BOTTOM;
        public static final Constraint TOP_TO_TOP;

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Constraint[] f717a;

        public static Constraint valueOf(String str) {
            return (Constraint) Enum.valueOf(Constraint.class, str);
        }

        public static Constraint[] values() {
            return (Constraint[]) f717a.clone();
        }

        static {
            Constraint constraint = new Constraint("LEFT_TO_LEFT", 0);
            LEFT_TO_LEFT = constraint;
            Constraint constraint2 = new Constraint("LEFT_TO_RIGHT", 1);
            LEFT_TO_RIGHT = constraint2;
            Constraint constraint3 = new Constraint("RIGHT_TO_LEFT", 2);
            RIGHT_TO_LEFT = constraint3;
            Constraint constraint4 = new Constraint("RIGHT_TO_RIGHT", 3);
            RIGHT_TO_RIGHT = constraint4;
            Constraint constraint5 = new Constraint("START_TO_START", 4);
            START_TO_START = constraint5;
            Constraint constraint6 = new Constraint("START_TO_END", 5);
            START_TO_END = constraint6;
            Constraint constraint7 = new Constraint("END_TO_START", 6);
            END_TO_START = constraint7;
            Constraint constraint8 = new Constraint("END_TO_END", 7);
            END_TO_END = constraint8;
            Constraint constraint9 = new Constraint("TOP_TO_TOP", 8);
            TOP_TO_TOP = constraint9;
            Constraint constraint10 = new Constraint("TOP_TO_BOTTOM", 9);
            TOP_TO_BOTTOM = constraint10;
            Constraint constraint11 = new Constraint("BOTTOM_TO_TOP", 10);
            BOTTOM_TO_TOP = constraint11;
            Constraint constraint12 = new Constraint("BOTTOM_TO_BOTTOM", 11);
            BOTTOM_TO_BOTTOM = constraint12;
            Constraint constraint13 = new Constraint("BASELINE_TO_BASELINE", 12);
            BASELINE_TO_BASELINE = constraint13;
            Constraint constraint14 = new Constraint("CENTER_HORIZONTALLY", 13);
            CENTER_HORIZONTALLY = constraint14;
            Constraint constraint15 = new Constraint("CENTER_VERTICALLY", 14);
            CENTER_VERTICALLY = constraint15;
            f717a = new Constraint[]{constraint, constraint2, constraint3, constraint4, constraint5, constraint6, constraint7, constraint8, constraint9, constraint10, constraint11, constraint12, constraint13, constraint14, constraint15};
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Direction {
        public static final Direction BOTTOM;
        public static final Direction END;
        public static final Direction LEFT;
        public static final Direction RIGHT;
        public static final Direction START;
        public static final Direction TOP;

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Direction[] f718a;

        public static Direction valueOf(String str) {
            return (Direction) Enum.valueOf(Direction.class, str);
        }

        public static Direction[] values() {
            return (Direction[]) f718a.clone();
        }

        static {
            Direction direction = new Direction("LEFT", 0);
            LEFT = direction;
            Direction direction2 = new Direction("RIGHT", 1);
            RIGHT = direction2;
            Direction direction3 = new Direction("START", 2);
            START = direction3;
            Direction direction4 = new Direction("END", 3);
            END = direction4;
            Direction direction5 = new Direction("TOP", 4);
            TOP = direction5;
            Direction direction6 = new Direction("BOTTOM", 5);
            BOTTOM = direction6;
            f718a = new Direction[]{direction, direction2, direction3, direction4, direction5, direction6};
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Helper {
        public static final Helper ALIGN_HORIZONTALLY;
        public static final Helper ALIGN_VERTICALLY;
        public static final Helper BARRIER;
        public static final Helper FLOW;
        public static final Helper HORIZONTAL_CHAIN;
        public static final Helper LAYER;
        public static final Helper VERTICAL_CHAIN;

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Helper[] f719a;

        public static Helper valueOf(String str) {
            return (Helper) Enum.valueOf(Helper.class, str);
        }

        public static Helper[] values() {
            return (Helper[]) f719a.clone();
        }

        static {
            Helper helper = new Helper("HORIZONTAL_CHAIN", 0);
            HORIZONTAL_CHAIN = helper;
            Helper helper2 = new Helper("VERTICAL_CHAIN", 1);
            VERTICAL_CHAIN = helper2;
            Helper helper3 = new Helper("ALIGN_HORIZONTALLY", 2);
            ALIGN_HORIZONTALLY = helper3;
            Helper helper4 = new Helper("ALIGN_VERTICALLY", 3);
            ALIGN_VERTICALLY = helper4;
            Helper helper5 = new Helper("BARRIER", 4);
            BARRIER = helper5;
            Helper helper6 = new Helper("LAYER", 5);
            LAYER = helper6;
            Helper helper7 = new Helper("FLOW", 6);
            FLOW = helper7;
            f719a = new Helper[]{helper, helper2, helper3, helper4, helper5, helper6, helper7};
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Chain {
        public static final Chain PACKED;
        public static final Chain SPREAD;
        public static final Chain SPREAD_INSIDE;

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Chain[] f716a;

        public static Chain valueOf(String str) {
            return (Chain) Enum.valueOf(Chain.class, str);
        }

        public static Chain[] values() {
            return (Chain[]) f716a.clone();
        }

        static {
            Chain chain = new Chain("SPREAD", 0);
            SPREAD = chain;
            Chain chain2 = new Chain("SPREAD_INSIDE", 1);
            SPREAD_INSIDE = chain2;
            Chain chain3 = new Chain("PACKED", 2);
            PACKED = chain3;
            f716a = new Chain[]{chain, chain2, chain3};
        }
    }

    public State() {
        ConstraintReference constraintReference = new ConstraintReference(this);
        this.mParent = constraintReference;
        this.f715a = 0;
        this.mReferences.put(PARENT, constraintReference);
    }

    public void reset() {
        this.mHelperReferences.clear();
    }

    public int convertDimension(Object obj) {
        if (obj instanceof Float) {
            return ((Float) obj).intValue();
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        return 0;
    }

    public ConstraintReference createConstraintReference(Object obj) {
        return new ConstraintReference(this);
    }

    public State width(Dimension dimension) {
        return setWidth(dimension);
    }

    public State height(Dimension dimension) {
        return setHeight(dimension);
    }

    public State setWidth(Dimension dimension) {
        this.mParent.setWidth(dimension);
        return this;
    }

    public State setHeight(Dimension dimension) {
        this.mParent.setHeight(dimension);
        return this;
    }

    public ConstraintReference constraints(Object obj) {
        Reference referenceCreateConstraintReference = this.mReferences.get(obj);
        if (referenceCreateConstraintReference == null) {
            referenceCreateConstraintReference = createConstraintReference(obj);
            this.mReferences.put(obj, referenceCreateConstraintReference);
            referenceCreateConstraintReference.setKey(obj);
        }
        if (referenceCreateConstraintReference instanceof ConstraintReference) {
            return (ConstraintReference) referenceCreateConstraintReference;
        }
        return null;
    }

    public HelperReference helper(Object obj, Helper helper) {
        if (obj == null) {
            StringBuilder sb = new StringBuilder("__HELPER_KEY_");
            int i = this.f715a;
            this.f715a = i + 1;
            sb.append(i);
            sb.append("__");
            obj = sb.toString();
        }
        HelperReference horizontalChainReference = this.mHelperReferences.get(obj);
        if (horizontalChainReference == null) {
            int i2 = a.f720a[helper.ordinal()];
            if (i2 == 1) {
                horizontalChainReference = new HorizontalChainReference(this);
            } else if (i2 == 2) {
                horizontalChainReference = new VerticalChainReference(this);
            } else if (i2 == 3) {
                horizontalChainReference = new AlignHorizontallyReference(this);
            } else if (i2 == 4) {
                horizontalChainReference = new AlignVerticallyReference(this);
            } else if (i2 == 5) {
                horizontalChainReference = new BarrierReference(this);
            } else {
                horizontalChainReference = new HelperReference(this, helper);
            }
            this.mHelperReferences.put(obj, horizontalChainReference);
        }
        return horizontalChainReference;
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f720a;

        static {
            int[] iArr = new int[Helper.values().length];
            f720a = iArr;
            try {
                iArr[Helper.HORIZONTAL_CHAIN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f720a[Helper.VERTICAL_CHAIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f720a[Helper.ALIGN_HORIZONTALLY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f720a[Helper.ALIGN_VERTICALLY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f720a[Helper.BARRIER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public GuidelineReference horizontalGuideline(Object obj) {
        return guideline(obj, 0);
    }

    public GuidelineReference verticalGuideline(Object obj) {
        return guideline(obj, 1);
    }

    public GuidelineReference guideline(Object obj, int i) {
        Reference reference = this.mReferences.get(obj);
        Reference reference2 = reference;
        if (reference == null) {
            GuidelineReference guidelineReference = new GuidelineReference(this);
            guidelineReference.setOrientation(i);
            guidelineReference.setKey(obj);
            this.mReferences.put(obj, guidelineReference);
            reference2 = guidelineReference;
        }
        return (GuidelineReference) reference2;
    }

    public BarrierReference barrier(Object obj, Direction direction) {
        BarrierReference barrierReference = (BarrierReference) helper(obj, Helper.BARRIER);
        barrierReference.setBarrierDirection(direction);
        return barrierReference;
    }

    public VerticalChainReference verticalChain(Object... objArr) {
        VerticalChainReference verticalChainReference = (VerticalChainReference) helper(null, Helper.VERTICAL_CHAIN);
        verticalChainReference.add(objArr);
        return verticalChainReference;
    }

    public HorizontalChainReference horizontalChain(Object... objArr) {
        HorizontalChainReference horizontalChainReference = (HorizontalChainReference) helper(null, Helper.HORIZONTAL_CHAIN);
        horizontalChainReference.add(objArr);
        return horizontalChainReference;
    }

    public AlignHorizontallyReference centerHorizontally(Object... objArr) {
        AlignHorizontallyReference alignHorizontallyReference = (AlignHorizontallyReference) helper(null, Helper.ALIGN_HORIZONTALLY);
        alignHorizontallyReference.add(objArr);
        return alignHorizontallyReference;
    }

    public AlignVerticallyReference centerVertically(Object... objArr) {
        AlignVerticallyReference alignVerticallyReference = (AlignVerticallyReference) helper(null, Helper.ALIGN_VERTICALLY);
        alignVerticallyReference.add(objArr);
        return alignVerticallyReference;
    }

    public void directMapping() {
        for (Object obj : this.mReferences.keySet()) {
            constraints(obj).setView(obj);
        }
    }

    public void map(Object obj, Object obj2) {
        constraints(obj).setView(obj2);
    }

    public void apply(ConstraintWidgetContainer constraintWidgetContainer) {
        constraintWidgetContainer.removeAllChildren();
        this.mParent.getWidth().apply(this, constraintWidgetContainer, 0);
        this.mParent.getHeight().apply(this, constraintWidgetContainer, 1);
        for (Object obj : this.mHelperReferences.keySet()) {
            HelperWidget helperWidget = this.mHelperReferences.get(obj).getHelperWidget();
            if (helperWidget != null) {
                Reference referenceConstraints = this.mReferences.get(obj);
                if (referenceConstraints == null) {
                    referenceConstraints = constraints(obj);
                }
                referenceConstraints.setConstraintWidget(helperWidget);
            }
        }
        Iterator<Object> it = this.mReferences.keySet().iterator();
        while (it.hasNext()) {
            Reference reference = this.mReferences.get(it.next());
            if (reference != this.mParent) {
                ConstraintWidget constraintWidget = reference.getConstraintWidget();
                constraintWidget.setParent(null);
                if (reference instanceof GuidelineReference) {
                    reference.apply();
                }
                constraintWidgetContainer.add(constraintWidget);
            } else {
                reference.setConstraintWidget(constraintWidgetContainer);
            }
        }
        Iterator<Object> it2 = this.mHelperReferences.keySet().iterator();
        while (it2.hasNext()) {
            HelperReference helperReference = this.mHelperReferences.get(it2.next());
            if (helperReference.getHelperWidget() != null) {
                Iterator<Object> it3 = helperReference.mReferences.iterator();
                while (it3.hasNext()) {
                    helperReference.getHelperWidget().add(this.mReferences.get(it3.next()).getConstraintWidget());
                }
                helperReference.apply();
            }
        }
        Iterator<Object> it4 = this.mReferences.keySet().iterator();
        while (it4.hasNext()) {
            this.mReferences.get(it4.next()).apply();
        }
    }
}
