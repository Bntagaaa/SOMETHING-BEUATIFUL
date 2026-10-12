package gnu.xquery.util;

import gnu.kawa.functions.Arithmetic;
import gnu.kawa.xml.KNode;
import gnu.kawa.xml.UntypedAtomic;
import gnu.kawa.xml.XDataType;
import gnu.kawa.xml.XIntegerType;
import gnu.mapping.Procedure1;
import gnu.mapping.Values;
import gnu.math.DFloNum;
import gnu.math.IntNum;
import gnu.math.Numeric;
import gnu.math.RealNum;
import gnu.xml.TextUtils;
import java.math.BigDecimal;

/* loaded from: classes2.dex */
public class NumberValue extends Procedure1 {
    public static final NumberValue numberValue = new NumberValue();
    public static final Double NaN = new Double(Double.NaN);

    public static boolean isNaN(Object obj) {
        return ((obj instanceof Double) || (obj instanceof Float) || (obj instanceof DFloNum)) && Double.isNaN(((Number) obj).doubleValue());
    }

    @Override // gnu.mapping.Procedure1, gnu.mapping.Procedure
    public Object apply1(Object obj) {
        if (obj != Values.empty && obj != null) {
            try {
                return numberValue(obj);
            } catch (Throwable unused) {
            }
        }
        return NaN;
    }

    public static Number numberCast(Object obj) {
        if (obj == Values.empty || obj == null) {
            return null;
        }
        if (obj instanceof Values) {
            Values values = (Values) obj;
            int iStartPos = values.startPos();
            int i = 0;
            while (true) {
                iStartPos = values.nextPos(iStartPos);
                if (iStartPos == 0) {
                    break;
                }
                if (i > 0) {
                    throw new ClassCastException("non-singleton sequence cast to number");
                }
                obj = values.getPosPrevious(iStartPos);
                i++;
            }
        }
        if ((obj instanceof KNode) || (obj instanceof UntypedAtomic)) {
            return (Double) XDataType.doubleType.valueOf(TextUtils.stringValue(obj));
        }
        return (Number) obj;
    }

    public static Object numberValue(Object obj) {
        Object objAtomicValue = KNode.atomicValue(obj);
        double dDoubleValue = Double.NaN;
        if ((objAtomicValue instanceof UntypedAtomic) || (objAtomicValue instanceof String)) {
            try {
                return XDataType.doubleType.valueOf(TextUtils.stringValue(objAtomicValue));
            } catch (Throwable unused) {
            }
        } else if ((objAtomicValue instanceof Number) && ((objAtomicValue instanceof RealNum) || !(objAtomicValue instanceof Numeric))) {
            dDoubleValue = ((Number) objAtomicValue).doubleValue();
        }
        return XDataType.makeDouble(dDoubleValue);
    }

    public static Object abs(Object obj) {
        if (obj == null || obj == Values.empty) {
            return obj;
        }
        Number numberNumberCast = numberCast(obj);
        if (numberNumberCast instanceof Double) {
            Double d = (Double) numberNumberCast;
            long jDoubleToRawLongBits = Double.doubleToRawLongBits(d.doubleValue());
            return jDoubleToRawLongBits >= 0 ? d : Double.valueOf(Double.longBitsToDouble(jDoubleToRawLongBits & Long.MAX_VALUE));
        }
        if (numberNumberCast instanceof Float) {
            Float f = (Float) numberNumberCast;
            int iFloatToRawIntBits = Float.floatToRawIntBits(f.floatValue());
            return iFloatToRawIntBits >= 0 ? f : Float.valueOf(Float.intBitsToFloat(Integer.MAX_VALUE & iFloatToRawIntBits));
        }
        if (numberNumberCast instanceof BigDecimal) {
            BigDecimal bigDecimal = (BigDecimal) numberNumberCast;
            return bigDecimal.signum() < 0 ? bigDecimal.negate() : bigDecimal;
        }
        return ((Numeric) numberNumberCast).abs();
    }

    public static Object floor(Object obj) {
        Number numberNumberCast = numberCast(obj);
        if (numberNumberCast == null) {
            return obj;
        }
        if (numberNumberCast instanceof Double) {
            return XDataType.makeDouble(Math.floor(((Double) numberNumberCast).doubleValue()));
        }
        if (numberNumberCast instanceof Float) {
            return XDataType.makeFloat((float) Math.floor(((Float) numberNumberCast).floatValue()));
        }
        if (numberNumberCast instanceof BigDecimal) {
            return Arithmetic.asIntNum(((BigDecimal) numberNumberCast).divide(XDataType.DECIMAL_ONE, 0, 3).toBigInteger());
        }
        return ((RealNum) numberNumberCast).toInt(1);
    }

    public static Object ceiling(Object obj) {
        Number numberNumberCast = numberCast(obj);
        if (numberNumberCast == null) {
            return obj;
        }
        if (numberNumberCast instanceof Double) {
            return XDataType.makeDouble(Math.ceil(((Double) numberNumberCast).doubleValue()));
        }
        if (numberNumberCast instanceof Float) {
            return XDataType.makeFloat((float) Math.ceil(((Float) numberNumberCast).floatValue()));
        }
        if (numberNumberCast instanceof BigDecimal) {
            return Arithmetic.asIntNum(((BigDecimal) numberNumberCast).divide(XDataType.DECIMAL_ONE, 0, 2).toBigInteger());
        }
        return ((RealNum) numberNumberCast).toInt(2);
    }

    public static Object round(Object obj) {
        Number numberNumberCast = numberCast(obj);
        if (numberNumberCast == null) {
            return obj;
        }
        if (numberNumberCast instanceof Double) {
            double dDoubleValue = ((Double) numberNumberCast).doubleValue();
            return XDataType.makeDouble((dDoubleValue < -0.5d || dDoubleValue > 0.0d || (dDoubleValue >= 0.0d && Double.doubleToLongBits(dDoubleValue) >= 0)) ? Math.floor(dDoubleValue + 0.5d) : -0.0d);
        }
        if (numberNumberCast instanceof Float) {
            float fFloatValue = ((Float) numberNumberCast).floatValue();
            double d = fFloatValue;
            return XDataType.makeFloat((d < -0.5d || d > 0.0d || (d >= 0.0d && Float.floatToIntBits(fFloatValue) >= 0)) ? (float) Math.floor(d + 0.5d) : -0.0f);
        }
        if (numberNumberCast instanceof BigDecimal) {
            BigDecimal bigDecimal = (BigDecimal) numberNumberCast;
            return Arithmetic.asIntNum(bigDecimal.divide(XDataType.DECIMAL_ONE, 0, bigDecimal.signum() < 0 ? 5 : 4).toBigInteger());
        }
        return ((RealNum) numberNumberCast).toInt(4);
    }

    public static Object roundHalfToEven(Object obj, IntNum intNum) {
        Number numberNumberCast = numberCast(obj);
        if (numberNumberCast == null) {
            return obj;
        }
        if ((obj instanceof Double) || (obj instanceof Float)) {
            double dDoubleValue = ((Number) obj).doubleValue();
            if (dDoubleValue == 0.0d || Double.isInfinite(dDoubleValue) || Double.isNaN(dDoubleValue)) {
                return obj;
            }
        }
        BigDecimal scale = ((BigDecimal) XDataType.decimalType.cast(numberNumberCast)).setScale(intNum.intValue(), 6);
        if (numberNumberCast instanceof Double) {
            return XDataType.makeDouble(scale.doubleValue());
        }
        if (numberNumberCast instanceof Float) {
            return XDataType.makeFloat(scale.floatValue());
        }
        return numberNumberCast instanceof IntNum ? XIntegerType.integerType.cast(scale) : scale;
    }

    public static Object roundHalfToEven(Object obj) {
        return roundHalfToEven(obj, IntNum.zero());
    }
}
