package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.Cache;
import androidx.constraintlayout.solver.SolverVariable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public class ConstraintAnchor {
    public SolverVariable c;
    public final ConstraintWidget mOwner;
    public ConstraintAnchor mTarget;
    public final Type mType;

    /* renamed from: a, reason: collision with root package name */
    public HashSet f731a = null;
    public int mMargin = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f732b = -1;

    public boolean hasDependents() {
        HashSet hashSet = this.f731a;
        return hashSet != null && hashSet.size() > 0;
    }

    public boolean hasCenteredDependents() {
        HashSet hashSet = this.f731a;
        if (hashSet == null) {
            return false;
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            if (((ConstraintAnchor) it.next()).getOpposite().isConnected()) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Type {
        public static final Type BASELINE;
        public static final Type BOTTOM;
        public static final Type CENTER;
        public static final Type CENTER_X;
        public static final Type CENTER_Y;
        public static final Type LEFT;
        public static final Type NONE;
        public static final Type RIGHT;
        public static final Type TOP;

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Type[] f733a;

        static {
            Type type = new Type("NONE", 0);
            NONE = type;
            Type type2 = new Type("LEFT", 1);
            LEFT = type2;
            Type type3 = new Type("TOP", 2);
            TOP = type3;
            Type type4 = new Type("RIGHT", 3);
            RIGHT = type4;
            Type type5 = new Type("BOTTOM", 4);
            BOTTOM = type5;
            Type type6 = new Type("BASELINE", 5);
            BASELINE = type6;
            Type type7 = new Type("CENTER", 6);
            CENTER = type7;
            Type type8 = new Type("CENTER_X", 7);
            CENTER_X = type8;
            Type type9 = new Type("CENTER_Y", 8);
            CENTER_Y = type9;
            f733a = new Type[]{type, type2, type3, type4, type5, type6, type7, type8, type9};
        }

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) f733a.clone();
        }
    }

    public void copyFrom(ConstraintAnchor constraintAnchor, HashMap<ConstraintWidget, ConstraintWidget> map) {
        HashSet hashSet;
        ConstraintAnchor constraintAnchor2 = this.mTarget;
        if (constraintAnchor2 != null && (hashSet = constraintAnchor2.f731a) != null) {
            hashSet.remove(this);
        }
        ConstraintAnchor constraintAnchor3 = constraintAnchor.mTarget;
        if (constraintAnchor3 != null) {
            this.mTarget = map.get(constraintAnchor.mTarget.mOwner).getAnchor(constraintAnchor3.getType());
        } else {
            this.mTarget = null;
        }
        ConstraintAnchor constraintAnchor4 = this.mTarget;
        if (constraintAnchor4 != null) {
            if (constraintAnchor4.f731a == null) {
                constraintAnchor4.f731a = new HashSet();
            }
            this.mTarget.f731a.add(this);
        }
        this.mMargin = constraintAnchor.mMargin;
        this.f732b = constraintAnchor.f732b;
    }

    public ConstraintAnchor(ConstraintWidget constraintWidget, Type type) {
        this.mOwner = constraintWidget;
        this.mType = type;
    }

    public SolverVariable getSolverVariable() {
        return this.c;
    }

    public void resetSolverVariable(Cache cache) {
        SolverVariable solverVariable = this.c;
        if (solverVariable == null) {
            this.c = new SolverVariable(SolverVariable.Type.UNRESTRICTED, (String) null);
        } else {
            solverVariable.reset();
        }
    }

    public ConstraintWidget getOwner() {
        return this.mOwner;
    }

    public Type getType() {
        return this.mType;
    }

    public int getMargin() {
        ConstraintAnchor constraintAnchor;
        if (this.mOwner.getVisibility() == 8) {
            return 0;
        }
        if (this.f732b > -1 && (constraintAnchor = this.mTarget) != null && constraintAnchor.mOwner.getVisibility() == 8) {
            return this.f732b;
        }
        return this.mMargin;
    }

    public ConstraintAnchor getTarget() {
        return this.mTarget;
    }

    public void reset() {
        HashSet hashSet;
        ConstraintAnchor constraintAnchor = this.mTarget;
        if (constraintAnchor != null && (hashSet = constraintAnchor.f731a) != null) {
            hashSet.remove(this);
        }
        this.mTarget = null;
        this.mMargin = 0;
        this.f732b = -1;
    }

    public boolean connect(ConstraintAnchor constraintAnchor, int i, int i2, boolean z) {
        if (constraintAnchor == null) {
            reset();
            return true;
        }
        if (!z && !isValidConnection(constraintAnchor)) {
            return false;
        }
        this.mTarget = constraintAnchor;
        if (constraintAnchor.f731a == null) {
            constraintAnchor.f731a = new HashSet();
        }
        this.mTarget.f731a.add(this);
        if (i > 0) {
            this.mMargin = i;
        } else {
            this.mMargin = 0;
        }
        this.f732b = i2;
        return true;
    }

    public boolean connect(ConstraintAnchor constraintAnchor, int i) {
        return connect(constraintAnchor, i, -1, false);
    }

    public boolean isConnected() {
        return this.mTarget != null;
    }

    public boolean isValidConnection(ConstraintAnchor constraintAnchor) {
        if (constraintAnchor == null) {
            return false;
        }
        Type type = constraintAnchor.getType();
        Type type2 = this.mType;
        if (type == type2) {
            return type2 != Type.BASELINE || (constraintAnchor.getOwner().hasBaseline() && getOwner().hasBaseline());
        }
        switch (a.f734a[type2.ordinal()]) {
            case 1:
                return (type == Type.BASELINE || type == Type.CENTER_X || type == Type.CENTER_Y) ? false : true;
            case 2:
            case 3:
                boolean z = type == Type.LEFT || type == Type.RIGHT;
                return constraintAnchor.getOwner() instanceof Guideline ? z || type == Type.CENTER_X : z;
            case 4:
            case 5:
                boolean z2 = type == Type.TOP || type == Type.BOTTOM;
                return constraintAnchor.getOwner() instanceof Guideline ? z2 || type == Type.CENTER_Y : z2;
            case 6:
            case 7:
            case 8:
            case 9:
                return false;
            default:
                throw new AssertionError(this.mType.name());
        }
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f734a;

        static {
            int[] iArr = new int[Type.values().length];
            f734a = iArr;
            try {
                iArr[Type.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f734a[Type.LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f734a[Type.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f734a[Type.TOP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f734a[Type.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f734a[Type.BASELINE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f734a[Type.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f734a[Type.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f734a[Type.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public boolean isSideAnchor() {
        switch (a.f734a[this.mType.ordinal()]) {
            case 1:
            case 6:
            case 7:
            case 8:
            case 9:
                return false;
            case 2:
            case 3:
            case 4:
            case 5:
                return true;
            default:
                throw new AssertionError(this.mType.name());
        }
    }

    public boolean isSimilarDimensionConnection(ConstraintAnchor constraintAnchor) {
        Type type = constraintAnchor.getType();
        Type type2 = this.mType;
        if (type == type2) {
            return true;
        }
        switch (a.f734a[type2.ordinal()]) {
            case 1:
                return type != Type.BASELINE;
            case 2:
            case 3:
            case 7:
                return type == Type.LEFT || type == Type.RIGHT || type == Type.CENTER_X;
            case 4:
            case 5:
            case 6:
            case 8:
                return type == Type.TOP || type == Type.BOTTOM || type == Type.CENTER_Y || type == Type.BASELINE;
            case 9:
                return false;
            default:
                throw new AssertionError(this.mType.name());
        }
    }

    public void setMargin(int i) {
        if (isConnected()) {
            this.mMargin = i;
        }
    }

    public void setGoneMargin(int i) {
        if (isConnected()) {
            this.f732b = i;
        }
    }

    public boolean isVerticalAnchor() {
        switch (a.f734a[this.mType.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 7:
                return false;
            case 4:
            case 5:
            case 6:
            case 8:
            case 9:
                return true;
            default:
                throw new AssertionError(this.mType.name());
        }
    }

    public String toString() {
        return this.mOwner.getDebugName() + ":" + this.mType.toString();
    }

    public boolean isConnectionAllowed(ConstraintWidget constraintWidget, ConstraintAnchor constraintAnchor) {
        return isConnectionAllowed(constraintWidget);
    }

    public boolean isConnectionAllowed(ConstraintWidget constraintWidget) {
        if (a(constraintWidget, new HashSet())) {
            return false;
        }
        ConstraintWidget parent = getOwner().getParent();
        return parent == constraintWidget || constraintWidget.getParent() == parent;
    }

    public final boolean a(ConstraintWidget constraintWidget, HashSet hashSet) {
        if (!hashSet.contains(constraintWidget)) {
            hashSet.add(constraintWidget);
            if (constraintWidget == getOwner()) {
                return true;
            }
            ArrayList<ConstraintAnchor> anchors = constraintWidget.getAnchors();
            int size = anchors.size();
            for (int i = 0; i < size; i++) {
                ConstraintAnchor constraintAnchor = anchors.get(i);
                if (constraintAnchor.isSimilarDimensionConnection(this) && constraintAnchor.isConnected() && a(constraintAnchor.getTarget().getOwner(), hashSet)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final ConstraintAnchor getOpposite() {
        switch (a.f734a[this.mType.ordinal()]) {
            case 1:
            case 6:
            case 7:
            case 8:
            case 9:
                return null;
            case 2:
                return this.mOwner.mRight;
            case 3:
                return this.mOwner.mLeft;
            case 4:
                return this.mOwner.mBottom;
            case 5:
                return this.mOwner.mTop;
            default:
                throw new AssertionError(this.mType.name());
        }
    }
}
