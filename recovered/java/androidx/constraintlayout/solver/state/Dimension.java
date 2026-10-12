package androidx.constraintlayout.solver.state;

import androidx.constraintlayout.solver.widgets.ConstraintWidget;

/* loaded from: classes.dex */
public class Dimension {

    /* renamed from: a, reason: collision with root package name */
    public int f710a;

    /* renamed from: b, reason: collision with root package name */
    public int f711b;
    public float c;
    public int d;
    public Object e;
    public boolean f;
    public static final Object FIXED_DIMENSION = new Object();
    public static final Object WRAP_DIMENSION = new Object();
    public static final Object SPREAD_DIMENSION = new Object();
    public static final Object PARENT_DIMENSION = new Object();
    public static final Object PERCENT_DIMENSION = new Object();

    public Dimension ratio(float f) {
        return this;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Type {
        public static final Type FIXED;
        public static final Type MATCH_CONSTRAINT;
        public static final Type MATCH_PARENT;
        public static final Type WRAP;

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Type[] f712a;

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) f712a.clone();
        }

        static {
            Type type = new Type("FIXED", 0);
            FIXED = type;
            Type type2 = new Type("WRAP", 1);
            WRAP = type2;
            Type type3 = new Type("MATCH_PARENT", 2);
            MATCH_PARENT = type3;
            Type type4 = new Type("MATCH_CONSTRAINT", 3);
            MATCH_CONSTRAINT = type4;
            f712a = new Type[]{type, type2, type3, type4};
        }
    }

    private Dimension() {
        this.f710a = 0;
        this.f711b = Integer.MAX_VALUE;
        this.c = 1.0f;
        this.d = 0;
        this.e = WRAP_DIMENSION;
        this.f = false;
    }

    public Dimension(Object obj) {
        this.f710a = 0;
        this.f711b = Integer.MAX_VALUE;
        this.c = 1.0f;
        this.d = 0;
        this.f = false;
        this.e = obj;
    }

    public static Dimension Suggested(int i) {
        Dimension dimension = new Dimension();
        dimension.suggested(i);
        return dimension;
    }

    public static Dimension Suggested(Object obj) {
        Dimension dimension = new Dimension();
        dimension.suggested(obj);
        return dimension;
    }

    public static Dimension Fixed(int i) {
        Dimension dimension = new Dimension(FIXED_DIMENSION);
        dimension.fixed(i);
        return dimension;
    }

    public static Dimension Fixed(Object obj) {
        Dimension dimension = new Dimension(FIXED_DIMENSION);
        dimension.fixed(obj);
        return dimension;
    }

    public static Dimension Percent(Object obj, float f) {
        Dimension dimension = new Dimension(PERCENT_DIMENSION);
        dimension.percent(obj, f);
        return dimension;
    }

    public static Dimension Parent() {
        return new Dimension(PARENT_DIMENSION);
    }

    public static Dimension Wrap() {
        return new Dimension(WRAP_DIMENSION);
    }

    public static Dimension Spread() {
        return new Dimension(SPREAD_DIMENSION);
    }

    public Dimension percent(Object obj, float f) {
        this.c = f;
        return this;
    }

    public Dimension min(int i) {
        if (i >= 0) {
            this.f710a = i;
        }
        return this;
    }

    public Dimension min(Object obj) {
        if (obj == WRAP_DIMENSION) {
            this.f710a = -2;
        }
        return this;
    }

    public Dimension max(int i) {
        if (this.f711b >= 0) {
            this.f711b = i;
        }
        return this;
    }

    public Dimension max(Object obj) {
        Object obj2 = WRAP_DIMENSION;
        if (obj == obj2 && this.f) {
            this.e = obj2;
            this.f711b = Integer.MAX_VALUE;
        }
        return this;
    }

    public Dimension suggested(int i) {
        this.f = true;
        return this;
    }

    public Dimension suggested(Object obj) {
        this.e = obj;
        this.f = true;
        return this;
    }

    public Dimension fixed(Object obj) {
        this.e = obj;
        if (obj instanceof Integer) {
            this.d = ((Integer) obj).intValue();
            this.e = null;
        }
        return this;
    }

    public Dimension fixed(int i) {
        this.e = null;
        this.d = i;
        return this;
    }

    public void apply(State state, ConstraintWidget constraintWidget, int i) {
        int i2 = 2;
        if (i == 0) {
            if (this.f) {
                constraintWidget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
                Object obj = this.e;
                if (obj == WRAP_DIMENSION) {
                    i2 = 1;
                } else if (obj != PERCENT_DIMENSION) {
                    i2 = 0;
                }
                constraintWidget.setHorizontalMatchStyle(i2, this.f710a, this.f711b, this.c);
                return;
            }
            int i3 = this.f710a;
            if (i3 > 0) {
                constraintWidget.setMinWidth(i3);
            }
            int i4 = this.f711b;
            if (i4 < Integer.MAX_VALUE) {
                constraintWidget.setMaxWidth(i4);
            }
            Object obj2 = this.e;
            if (obj2 == WRAP_DIMENSION) {
                constraintWidget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
                return;
            }
            if (obj2 == PARENT_DIMENSION) {
                constraintWidget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_PARENT);
                return;
            } else {
                if (obj2 == null) {
                    constraintWidget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                    constraintWidget.setWidth(this.d);
                    return;
                }
                return;
            }
        }
        if (this.f) {
            constraintWidget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
            Object obj3 = this.e;
            if (obj3 == WRAP_DIMENSION) {
                i2 = 1;
            } else if (obj3 != PERCENT_DIMENSION) {
                i2 = 0;
            }
            constraintWidget.setVerticalMatchStyle(i2, this.f710a, this.f711b, this.c);
            return;
        }
        int i5 = this.f710a;
        if (i5 > 0) {
            constraintWidget.setMinHeight(i5);
        }
        int i6 = this.f711b;
        if (i6 < Integer.MAX_VALUE) {
            constraintWidget.setMaxHeight(i6);
        }
        Object obj4 = this.e;
        if (obj4 == WRAP_DIMENSION) {
            constraintWidget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
            return;
        }
        if (obj4 == PARENT_DIMENSION) {
            constraintWidget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_PARENT);
        } else if (obj4 == null) {
            constraintWidget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
            constraintWidget.setHeight(this.d);
        }
    }
}
