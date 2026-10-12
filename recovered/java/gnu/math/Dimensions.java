package gnu.math;

/* loaded from: classes2.dex */
public class Dimensions {
    BaseUnit[] bases;
    private Dimensions chain;
    int hash_code;
    short[] powers;
    private static Dimensions[] hashTable = new Dimensions[100];
    public static Dimensions Empty = new Dimensions();

    public final int hashCode() {
        return this.hash_code;
    }

    private void enterHash(int i) {
        this.hash_code = i;
        Dimensions[] dimensionsArr = hashTable;
        int length = (i & Integer.MAX_VALUE) % dimensionsArr.length;
        this.chain = dimensionsArr[length];
        dimensionsArr[length] = this;
    }

    private Dimensions() {
        this.bases = new BaseUnit[]{Unit.Empty};
        enterHash(0);
    }

    public Dimensions(BaseUnit baseUnit) {
        this.bases = new BaseUnit[]{baseUnit, Unit.Empty};
        this.powers = new short[]{1};
        enterHash(baseUnit.index);
    }

    private Dimensions(Dimensions dimensions, int i, Dimensions dimensions2, int i2, int i3) {
        int i4;
        this.hash_code = i3;
        int i5 = 0;
        int i6 = 0;
        while (dimensions.bases[i6] != Unit.Empty) {
            i6++;
        }
        int i7 = 0;
        while (dimensions2.bases[i7] != Unit.Empty) {
            i7++;
        }
        int i8 = i6 + i7 + 1;
        this.bases = new BaseUnit[i8];
        this.powers = new short[i8];
        int i9 = 0;
        int i10 = 0;
        while (true) {
            BaseUnit baseUnit = dimensions.bases[i5];
            BaseUnit baseUnit2 = dimensions2.bases[i9];
            int i11 = baseUnit.index;
            int i12 = baseUnit2.index;
            if (i11 < i12) {
                i4 = dimensions.powers[i5] * i;
                i5++;
            } else if (i12 < i11) {
                int i13 = dimensions2.powers[i9] * i2;
                i9++;
                i4 = i13;
                baseUnit = baseUnit2;
            } else {
                BaseUnit baseUnit3 = Unit.Empty;
                if (baseUnit2 != baseUnit3) {
                    i4 = (dimensions.powers[i5] * i) + (dimensions2.powers[i9] * i2);
                    i5++;
                    i9++;
                    if (i4 == 0) {
                        continue;
                    }
                } else {
                    this.bases[i10] = baseUnit3;
                    enterHash(i3);
                    return;
                }
            }
            short s = (short) i4;
            if (s != i4) {
                throw new ArithmeticException("overflow in dimensions");
            }
            this.bases[i10] = baseUnit;
            this.powers[i10] = s;
            i10++;
        }
    }

    private boolean matchesProduct(Dimensions dimensions, int i, Dimensions dimensions2, int i2) {
        int i3;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            BaseUnit baseUnit = dimensions.bases[i4];
            BaseUnit baseUnit2 = dimensions2.bases[i5];
            int i7 = baseUnit.index;
            int i8 = baseUnit2.index;
            if (i7 < i8) {
                i3 = dimensions.powers[i4] * i;
                i4++;
            } else if (i8 < i7) {
                int i9 = dimensions2.powers[i5] * i2;
                i5++;
                i3 = i9;
                baseUnit = baseUnit2;
            } else {
                if (baseUnit2 == Unit.Empty) {
                    return this.bases[i6] == baseUnit2;
                }
                i3 = (dimensions.powers[i4] * i) + (dimensions2.powers[i5] * i2);
                i4++;
                i5++;
                if (i3 == 0) {
                    continue;
                }
            }
            if (this.bases[i6] != baseUnit || this.powers[i6] != i3) {
                break;
            }
            i6++;
        }
        return false;
    }

    public static Dimensions product(Dimensions dimensions, int i, Dimensions dimensions2, int i2) {
        int iHashCode = (dimensions2.hashCode() * i2) + (dimensions.hashCode() * i);
        Dimensions[] dimensionsArr = hashTable;
        for (Dimensions dimensions3 = dimensionsArr[(Integer.MAX_VALUE & iHashCode) % dimensionsArr.length]; dimensions3 != null; dimensions3 = dimensions3.chain) {
            if (dimensions3.hash_code == iHashCode && dimensions3.matchesProduct(dimensions, i, dimensions2, i2)) {
                return dimensions3;
            }
        }
        return new Dimensions(dimensions, i, dimensions2, i2, iHashCode);
    }

    public int getPower(BaseUnit baseUnit) {
        int i = 0;
        while (true) {
            BaseUnit baseUnit2 = this.bases[i];
            if (baseUnit2.index > baseUnit.index) {
                return 0;
            }
            if (baseUnit2 == baseUnit) {
                return this.powers[i];
            }
            i++;
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; this.bases[i] != Unit.Empty; i++) {
            if (i > 0) {
                stringBuffer.append('*');
            }
            stringBuffer.append(this.bases[i]);
            short s = this.powers[i];
            if (s != 1) {
                stringBuffer.append('^');
                stringBuffer.append((int) s);
            }
        }
        return stringBuffer.toString();
    }
}
