package gnu.kawa.xml;

import androidx.core.internal.view.SupportMenu;
import com.google.appinventor.components.common.PropertyTypeConstants;
import gnu.bytecode.ClassType;
import gnu.kawa.functions.Arithmetic;
import gnu.math.IntNum;
import gnu.math.RealNum;
import java.math.BigDecimal;
import kotlinx.coroutines.scheduling.WorkQueueKt;

/* loaded from: classes2.dex */
public class XIntegerType extends XDataType {
    public static final XIntegerType byteType;
    public static final XIntegerType intType;
    public static final XIntegerType integerType;
    public static final XIntegerType longType;
    public static final XIntegerType negativeIntegerType;
    public static final XIntegerType nonNegativeIntegerType;
    public static final XIntegerType nonPositiveIntegerType;
    public static final XIntegerType positiveIntegerType;
    public static final XIntegerType shortType;
    static ClassType typeIntNum = ClassType.make("gnu.math.IntNum");
    public static final XIntegerType unsignedByteType;
    public static final XIntegerType unsignedIntType;
    public static final XIntegerType unsignedLongType;
    public static final XIntegerType unsignedShortType;
    boolean isUnsignedType;
    public final IntNum maxValue;
    public final IntNum minValue;

    static {
        XIntegerType xIntegerType = new XIntegerType(PropertyTypeConstants.PROPERTY_TYPE_INTEGER, XDataType.decimalType, 5, (IntNum) null, (IntNum) null);
        integerType = xIntegerType;
        XIntegerType xIntegerType2 = new XIntegerType("long", (XDataType) xIntegerType, 8, IntNum.make(Long.MIN_VALUE), IntNum.make(Long.MAX_VALUE));
        longType = xIntegerType2;
        XIntegerType xIntegerType3 = new XIntegerType("int", (XDataType) xIntegerType2, 9, IntNum.make(Integer.MIN_VALUE), IntNum.make(Integer.MAX_VALUE));
        intType = xIntegerType3;
        XIntegerType xIntegerType4 = new XIntegerType("short", (XDataType) xIntegerType3, 10, IntNum.make(-32768), IntNum.make(32767));
        shortType = xIntegerType4;
        byteType = new XIntegerType("byte", (XDataType) xIntegerType4, 11, IntNum.make(-128), IntNum.make(WorkQueueKt.MASK));
        XIntegerType xIntegerType5 = new XIntegerType("nonPositiveInteger", (XDataType) xIntegerType, 6, (IntNum) null, IntNum.zero());
        nonPositiveIntegerType = xIntegerType5;
        negativeIntegerType = new XIntegerType("negativeInteger", (XDataType) xIntegerType5, 7, (IntNum) null, IntNum.minusOne());
        XIntegerType xIntegerType6 = new XIntegerType("nonNegativeInteger", (XDataType) xIntegerType, 12, IntNum.zero(), (IntNum) null);
        nonNegativeIntegerType = xIntegerType6;
        XIntegerType xIntegerType7 = new XIntegerType("unsignedLong", (XDataType) xIntegerType6, 13, IntNum.zero(), IntNum.valueOf("18446744073709551615"));
        unsignedLongType = xIntegerType7;
        XIntegerType xIntegerType8 = new XIntegerType("unsignedInt", (XDataType) xIntegerType7, 14, IntNum.zero(), IntNum.make(4294967295L));
        unsignedIntType = xIntegerType8;
        XIntegerType xIntegerType9 = new XIntegerType("unsignedShort", (XDataType) xIntegerType8, 15, IntNum.zero(), IntNum.make(SupportMenu.USER_MASK));
        unsignedShortType = xIntegerType9;
        unsignedByteType = new XIntegerType("unsignedByte", (XDataType) xIntegerType9, 16, IntNum.zero(), IntNum.make(255));
        positiveIntegerType = new XIntegerType("positiveInteger", (XDataType) xIntegerType6, 17, IntNum.one(), (IntNum) null);
    }

    public boolean isUnsignedType() {
        return this.isUnsignedType;
    }

    public XIntegerType(String str, XDataType xDataType, int i, IntNum intNum, IntNum intNum2) {
        this((Object) str, xDataType, i, intNum, intNum2);
        this.isUnsignedType = str.startsWith("unsigned");
    }

    public XIntegerType(Object obj, XDataType xDataType, int i, IntNum intNum, IntNum intNum2) {
        super(obj, typeIntNum, i);
        this.minValue = intNum;
        this.maxValue = intNum2;
        this.baseType = xDataType;
    }

    @Override // gnu.kawa.xml.XDataType, gnu.bytecode.Type
    public boolean isInstance(Object obj) {
        if (!(obj instanceof IntNum)) {
            return false;
        }
        XDataType integerType2 = integerType;
        if (this == integerType2) {
            return true;
        }
        if (obj instanceof XInteger) {
            integerType2 = ((XInteger) obj).getIntegerType();
        }
        while (integerType2 != null) {
            if (integerType2 == this) {
                return true;
            }
            integerType2 = integerType2.baseType;
        }
        return false;
    }

    @Override // gnu.kawa.xml.XDataType, gnu.bytecode.Type
    public Object coerceFromObject(Object obj) {
        return valueOf((IntNum) obj);
    }

    public IntNum valueOf(IntNum intNum) {
        IntNum intNum2;
        if (this == integerType) {
            return intNum;
        }
        IntNum intNum3 = this.minValue;
        if ((intNum3 != null && IntNum.compare(intNum, intNum3) < 0) || ((intNum2 = this.maxValue) != null && IntNum.compare(intNum, intNum2) > 0)) {
            throw new ClassCastException("cannot cast " + intNum + " to " + this.name);
        }
        return new XInteger(intNum, this);
    }

    @Override // gnu.kawa.xml.XDataType
    public Object cast(Object obj) {
        if (obj instanceof Boolean) {
            return valueOf(((Boolean) obj).booleanValue() ? IntNum.one() : IntNum.zero());
        }
        if (obj instanceof IntNum) {
            return valueOf((IntNum) obj);
        }
        if (obj instanceof BigDecimal) {
            return valueOf(Arithmetic.asIntNum((BigDecimal) obj));
        }
        if (obj instanceof RealNum) {
            return valueOf(((RealNum) obj).toExactInt(3));
        }
        if (obj instanceof Number) {
            return valueOf(RealNum.toExactInt(((Number) obj).doubleValue(), 3));
        }
        return super.cast(obj);
    }

    @Override // gnu.kawa.xml.XDataType
    public Object valueOf(String str) {
        return valueOf(IntNum.valueOf(str.trim(), 10));
    }

    public IntNum valueOf(String str, int i) {
        return valueOf(IntNum.valueOf(str.trim(), i));
    }
}
