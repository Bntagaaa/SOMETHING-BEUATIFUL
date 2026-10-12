package androidx.constraintlayout.solver;

import java.util.Arrays;

/* loaded from: classes.dex */
public class SolverVariable {
    public static final int STRENGTH_BARRIER = 6;
    public static final int STRENGTH_CENTERING = 7;
    public static final int STRENGTH_EQUALITY = 5;
    public static final int STRENGTH_FIXED = 8;
    public static final int STRENGTH_HIGH = 3;
    public static final int STRENGTH_HIGHEST = 4;
    public static final int STRENGTH_LOW = 1;
    public static final int STRENGTH_MEDIUM = 2;
    public static final int STRENGTH_NONE = 0;

    /* renamed from: a, reason: collision with root package name */
    public String f695a;

    /* renamed from: b, reason: collision with root package name */
    public int f696b;
    public final float[] c;
    public float computedValue;
    public final float[] d;
    public Type e;
    public ArrayRow[] f;

    /* renamed from: g, reason: collision with root package name */
    public int f697g;
    public int id;
    public boolean inGoal;
    public boolean isFinalValue;
    public int strength;
    public int usageInRowCount;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Type {
        public static final Type CONSTANT;
        public static final Type ERROR;
        public static final Type SLACK;
        public static final Type UNKNOWN;
        public static final Type UNRESTRICTED;

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Type[] f698a;

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) f698a.clone();
        }

        static {
            Type type = new Type("UNRESTRICTED", 0);
            UNRESTRICTED = type;
            Type type2 = new Type("CONSTANT", 1);
            CONSTANT = type2;
            Type type3 = new Type("SLACK", 2);
            SLACK = type3;
            Type type4 = new Type("ERROR", 3);
            ERROR = type4;
            Type type5 = new Type("UNKNOWN", 4);
            UNKNOWN = type5;
            f698a = new Type[]{type, type2, type3, type4, type5};
        }
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f699a;

        static {
            int[] iArr = new int[Type.values().length];
            f699a = iArr;
            try {
                iArr[Type.UNRESTRICTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f699a[Type.CONSTANT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f699a[Type.SLACK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f699a[Type.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f699a[Type.UNKNOWN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public SolverVariable(String str, Type type) {
        this.id = -1;
        this.f696b = -1;
        this.strength = 0;
        this.isFinalValue = false;
        this.c = new float[9];
        this.d = new float[9];
        this.f = new ArrayRow[16];
        this.f697g = 0;
        this.usageInRowCount = 0;
        this.f695a = str;
        this.e = type;
    }

    public SolverVariable(Type type, String str) {
        this.id = -1;
        this.f696b = -1;
        this.strength = 0;
        this.isFinalValue = false;
        this.c = new float[9];
        this.d = new float[9];
        this.f = new ArrayRow[16];
        this.f697g = 0;
        this.usageInRowCount = 0;
        this.e = type;
    }

    public final void addToRow(ArrayRow arrayRow) {
        int i = 0;
        while (true) {
            int i2 = this.f697g;
            if (i < i2) {
                if (this.f[i] == arrayRow) {
                    return;
                } else {
                    i++;
                }
            } else {
                ArrayRow[] arrayRowArr = this.f;
                if (i2 >= arrayRowArr.length) {
                    this.f = (ArrayRow[]) Arrays.copyOf(arrayRowArr, arrayRowArr.length * 2);
                }
                ArrayRow[] arrayRowArr2 = this.f;
                int i3 = this.f697g;
                arrayRowArr2[i3] = arrayRow;
                this.f697g = i3 + 1;
                return;
            }
        }
    }

    public final void removeFromRow(ArrayRow arrayRow) {
        int i = this.f697g;
        int i2 = 0;
        while (i2 < i) {
            if (this.f[i2] == arrayRow) {
                while (i2 < i - 1) {
                    ArrayRow[] arrayRowArr = this.f;
                    int i3 = i2 + 1;
                    arrayRowArr[i2] = arrayRowArr[i3];
                    i2 = i3;
                }
                this.f697g--;
                return;
            }
            i2++;
        }
    }

    public final void updateReferencesWithNewDefinition(ArrayRow arrayRow) {
        int i = this.f697g;
        for (int i2 = 0; i2 < i; i2++) {
            this.f[i2].updateFromRow(arrayRow, false);
        }
        this.f697g = 0;
    }

    public void setFinalValue(LinearSystem linearSystem, float f) {
        this.computedValue = f;
        this.isFinalValue = true;
        int i = this.f697g;
        for (int i2 = 0; i2 < i; i2++) {
            this.f[i2].updateFromFinalVariable(linearSystem, this, false);
        }
        this.f697g = 0;
    }

    public void reset() {
        this.f695a = null;
        this.e = Type.UNKNOWN;
        this.strength = 0;
        this.id = -1;
        this.f696b = -1;
        this.computedValue = 0.0f;
        this.isFinalValue = false;
        int i = this.f697g;
        for (int i2 = 0; i2 < i; i2++) {
            this.f[i2] = null;
        }
        this.f697g = 0;
        this.usageInRowCount = 0;
        this.inGoal = false;
        Arrays.fill(this.d, 0.0f);
    }

    public String getName() {
        return this.f695a;
    }

    public void setName(String str) {
        this.f695a = str;
    }

    public void setType(Type type, String str) {
        this.e = type;
    }

    public String toString() {
        if (this.f695a != null) {
            return "" + this.f695a;
        }
        return "" + this.id;
    }
}
