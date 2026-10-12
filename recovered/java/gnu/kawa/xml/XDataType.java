package gnu.kawa.xml;

import _COROUTINE.a;
import com.google.appinventor.components.common.PropertyTypeConstants;
import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.Method;
import gnu.bytecode.Type;
import gnu.bytecode.Variable;
import gnu.expr.Compilation;
import gnu.expr.Declaration;
import gnu.expr.Expression;
import gnu.expr.Target;
import gnu.expr.TypeValue;
import gnu.kawa.reflect.InstanceOf;
import gnu.lists.Consumer;
import gnu.lists.SeqPosition;
import gnu.mapping.Procedure;
import gnu.mapping.Values;
import gnu.math.DateTime;
import gnu.math.Duration;
import gnu.math.IntNum;
import gnu.math.RealNum;
import gnu.math.Unit;
import gnu.text.Path;
import gnu.text.Printable;
import gnu.text.URIPath;
import gnu.xml.TextUtils;
import java.math.BigDecimal;

/* loaded from: classes2.dex */
public class XDataType extends Type implements TypeValue {
    public static final int ANY_ATOMIC_TYPE_CODE = 3;
    public static final int ANY_SIMPLE_TYPE_CODE = 2;
    public static final int ANY_URI_TYPE_CODE = 33;
    public static final int BASE64_BINARY_TYPE_CODE = 34;
    public static final int BOOLEAN_TYPE_CODE = 31;
    public static final int BYTE_TYPE_CODE = 11;
    public static final int DATE_TIME_TYPE_CODE = 20;
    public static final int DATE_TYPE_CODE = 21;
    public static final int DAY_TIME_DURATION_TYPE_CODE = 30;
    public static final BigDecimal DECIMAL_ONE;
    public static final int DECIMAL_TYPE_CODE = 4;
    public static final Double DOUBLE_ONE;
    public static final int DOUBLE_TYPE_CODE = 19;
    public static final Double DOUBLE_ZERO;
    public static final int DURATION_TYPE_CODE = 28;
    public static final int ENTITY_TYPE_CODE = 47;
    public static final Float FLOAT_ONE;
    public static final int FLOAT_TYPE_CODE = 18;
    public static final Float FLOAT_ZERO;
    public static final int G_DAY_TYPE_CODE = 26;
    public static final int G_MONTH_DAY_TYPE_CODE = 25;
    public static final int G_MONTH_TYPE_CODE = 27;
    public static final int G_YEAR_MONTH_TYPE_CODE = 23;
    public static final int G_YEAR_TYPE_CODE = 24;
    public static final int HEX_BINARY_TYPE_CODE = 35;
    public static final int IDREF_TYPE_CODE = 46;
    public static final int ID_TYPE_CODE = 45;
    public static final int INTEGER_TYPE_CODE = 5;
    public static final int INT_TYPE_CODE = 9;
    public static final int LANGUAGE_TYPE_CODE = 41;
    public static final int LONG_TYPE_CODE = 8;
    public static final int NAME_TYPE_CODE = 43;
    public static final int NCNAME_TYPE_CODE = 44;
    public static final int NEGATIVE_INTEGER_TYPE_CODE = 7;
    public static final int NMTOKEN_TYPE_CODE = 42;
    public static final int NONNEGATIVE_INTEGER_TYPE_CODE = 12;
    public static final int NON_POSITIVE_INTEGER_TYPE_CODE = 6;
    public static final int NORMALIZED_STRING_TYPE_CODE = 39;
    public static final int NOTATION_TYPE_CODE = 36;
    public static final XDataType NotationType;
    public static final int POSITIVE_INTEGER_TYPE_CODE = 17;
    public static final int QNAME_TYPE_CODE = 32;
    public static final int SHORT_TYPE_CODE = 10;
    public static final int STRING_TYPE_CODE = 38;
    public static final int TIME_TYPE_CODE = 22;
    public static final int TOKEN_TYPE_CODE = 40;
    public static final int UNSIGNED_BYTE_TYPE_CODE = 16;
    public static final int UNSIGNED_INT_TYPE_CODE = 14;
    public static final int UNSIGNED_LONG_TYPE_CODE = 13;
    public static final int UNSIGNED_SHORT_TYPE_CODE = 15;
    public static final int UNTYPED_ATOMIC_TYPE_CODE = 37;
    public static final int UNTYPED_TYPE_CODE = 48;
    public static final int YEAR_MONTH_DURATION_TYPE_CODE = 29;
    public static final XDataType anyAtomicType;
    public static final XDataType anySimpleType;
    public static final XDataType anyURIType;
    public static final XDataType base64BinaryType;
    public static final XDataType booleanType;
    public static final XDataType dayTimeDurationType;
    public static final XDataType decimalType;
    public static final XDataType doubleType;
    public static final XDataType durationType;
    public static final XDataType floatType;
    public static final XDataType hexBinaryType;
    public static final XDataType stringStringType;
    public static final XDataType stringType;
    public static final XDataType untypedAtomicType;
    public static final XDataType untypedType;
    public static final XDataType yearMonthDurationType;
    XDataType baseType;
    Type implementationType;
    Object name;
    int typeCode;

    @Override // gnu.expr.TypeValue
    public Expression convertValue(Expression expression) {
        return null;
    }

    @Override // gnu.expr.TypeValue
    public Procedure getConstructor() {
        return null;
    }

    public XDataType(Object obj, Type type, int i) {
        super(type);
        this.name = obj;
        if (obj != null) {
            setName(obj.toString());
        }
        this.implementationType = type;
        this.typeCode = i;
    }

    static {
        ClassType classType = Type.objectType;
        anySimpleType = new XDataType("anySimpleType", classType, 2);
        anyAtomicType = new XDataType("anyAtomicType", classType, 3);
        stringType = new XDataType(PropertyTypeConstants.PROPERTY_TYPE_STRING, ClassType.make("java.lang.CharSequence"), 38);
        stringStringType = new XDataType("String", ClassType.make("java.lang.String"), 38);
        untypedAtomicType = new XDataType(PropertyTypeConstants.PROPERTY_TYPE_STRING, ClassType.make("gnu.kawa.xml.UntypedAtomic"), 37);
        base64BinaryType = new XDataType("base64Binary", ClassType.make("gnu.kawa.xml.Base64Binary"), 34);
        hexBinaryType = new XDataType("hexBinary", ClassType.make("gnu.kawa.xml.HexBinary"), 35);
        booleanType = new XDataType(PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN, Type.booleanType, 31);
        anyURIType = new XDataType("anyURI", ClassType.make("gnu.text.Path"), 33);
        NotationType = new XDataType("NOTATION", ClassType.make("gnu.kawa.xml.Notation"), 36);
        decimalType = new XDataType("decimal", ClassType.make("java.lang.Number"), 4);
        floatType = new XDataType(PropertyTypeConstants.PROPERTY_TYPE_FLOAT, ClassType.make("java.lang.Float"), 18);
        doubleType = new XDataType("double", ClassType.make("java.lang.Double"), 19);
        durationType = new XDataType("duration", ClassType.make("gnu.math.Duration"), 28);
        yearMonthDurationType = new XDataType("yearMonthDuration", ClassType.make("gnu.math.Duration"), 29);
        dayTimeDurationType = new XDataType("dayTimeDuration", ClassType.make("gnu.math.Duration"), 30);
        untypedType = new XDataType("untyped", classType, 48);
        DOUBLE_ZERO = makeDouble(0.0d);
        DOUBLE_ONE = makeDouble(1.0d);
        FLOAT_ZERO = makeFloat(0.0f);
        FLOAT_ONE = makeFloat(1.0f);
        DECIMAL_ONE = BigDecimal.valueOf(1L);
    }

    @Override // gnu.bytecode.Type
    public Class getReflectClass() {
        return this.implementationType.getReflectClass();
    }

    @Override // gnu.bytecode.Type
    public Type getImplementationType() {
        return this.implementationType;
    }

    @Override // gnu.bytecode.Type
    public void emitCoerceFromObject(CodeAttr codeAttr) {
        Compilation.getCurrent().compileConstant(this, Target.pushObject);
        Method declaredMethod = ClassType.make("gnu.kawa.xml.XDataType").getDeclaredMethod("coerceFromObject", 1);
        codeAttr.emitSwap();
        codeAttr.emitInvokeVirtual(declaredMethod);
        this.implementationType.emitCoerceFromObject(codeAttr);
    }

    @Override // gnu.bytecode.Type
    public void emitCoerceToObject(CodeAttr codeAttr) {
        if (this.typeCode == 31) {
            this.implementationType.emitCoerceToObject(codeAttr);
        } else {
            super.emitCoerceToObject(codeAttr);
        }
    }

    @Override // gnu.expr.TypeValue
    public void emitTestIf(Variable variable, Declaration declaration, Compilation compilation) {
        CodeAttr code = compilation.getCode();
        if (this.typeCode == 31) {
            if (variable != null) {
                code.emitLoad(variable);
            }
            Type.javalangBooleanType.emitIsInstance(code);
            code.emitIfIntNotZero();
            if (declaration != null) {
                code.emitLoad(variable);
                Type.booleanType.emitCoerceFromObject(code);
                declaration.compileStore(compilation);
                return;
            }
            return;
        }
        compilation.compileConstant(this, Target.pushObject);
        if (variable == null) {
            code.emitSwap();
        } else {
            code.emitLoad(variable);
        }
        code.emitInvokeVirtual(Compilation.typeType.getDeclaredMethod("isInstance", 1));
        code.emitIfIntNotZero();
        if (declaration != null) {
            code.emitLoad(variable);
            emitCoerceFromObject(code);
            declaration.compileStore(compilation);
        }
    }

    @Override // gnu.bytecode.Type
    public boolean isInstance(Object obj) {
        int i = this.typeCode;
        if (i == 2) {
            return ((obj instanceof SeqPosition) || (obj instanceof Nodes)) ? false : true;
        }
        if (i == 3) {
            return ((obj instanceof Values) || (obj instanceof SeqPosition)) ? false : true;
        }
        if (i == 4) {
            return (obj instanceof BigDecimal) || (obj instanceof IntNum);
        }
        if (i == 18) {
            return obj instanceof Float;
        }
        if (i == 19) {
            return obj instanceof Double;
        }
        if (i == 33) {
            return obj instanceof Path;
        }
        if (i == 48) {
            return true;
        }
        if (i == 37) {
            return obj instanceof UntypedAtomic;
        }
        if (i == 38) {
            return obj instanceof CharSequence;
        }
        switch (i) {
            case 28:
                return obj instanceof Duration;
            case 29:
                return (obj instanceof Duration) && ((Duration) obj).unit() == Unit.month;
            case 30:
                return (obj instanceof Duration) && ((Duration) obj).unit() == Unit.second;
            case 31:
                return obj instanceof Boolean;
            default:
                return super.isInstance(obj);
        }
    }

    @Override // gnu.expr.TypeValue
    public void emitIsInstance(Variable variable, Compilation compilation, Target target) {
        InstanceOf.emitIsInstance(this, variable, compilation, target);
    }

    public String toString(Object obj) {
        return obj.toString();
    }

    public void print(Object obj, Consumer consumer) {
        if (obj instanceof Printable) {
            ((Printable) obj).print(consumer);
        } else {
            consumer.write(toString(obj));
        }
    }

    public boolean castable(Object obj) {
        try {
            cast(obj);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public Object cast(Object obj) {
        Object objAtomicValue = KNode.atomicValue(obj);
        if (objAtomicValue instanceof UntypedAtomic) {
            return this.typeCode == 37 ? objAtomicValue : valueOf(objAtomicValue.toString());
        }
        if (objAtomicValue instanceof String) {
            return valueOf(objAtomicValue.toString());
        }
        int i = this.typeCode;
        if (i != 4) {
            if (i == 37) {
                return new UntypedAtomic(TextUtils.stringValue(objAtomicValue));
            }
            if (i == 38) {
                return TextUtils.asString(objAtomicValue);
            }
            switch (i) {
                case 18:
                    if (objAtomicValue instanceof Float) {
                        return objAtomicValue;
                    }
                    if (objAtomicValue instanceof Number) {
                        return makeFloat(((Number) objAtomicValue).floatValue());
                    }
                    if (objAtomicValue instanceof Boolean) {
                        return ((Boolean) objAtomicValue).booleanValue() ? FLOAT_ONE : FLOAT_ZERO;
                    }
                case 19:
                    if (objAtomicValue instanceof Double) {
                        return objAtomicValue;
                    }
                    if (objAtomicValue instanceof Number) {
                        return makeDouble(((Number) objAtomicValue).doubleValue());
                    }
                    if (objAtomicValue instanceof Boolean) {
                        return ((Boolean) objAtomicValue).booleanValue() ? DOUBLE_ONE : DOUBLE_ZERO;
                    }
                case 20:
                case 21:
                case 22:
                    if (objAtomicValue instanceof DateTime) {
                        return ((DateTime) objAtomicValue).cast(XTimeType.components(((XTimeType) this).typeCode));
                    }
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                    if (objAtomicValue instanceof DateTime) {
                        int iComponents = XTimeType.components(((XTimeType) this).typeCode);
                        DateTime dateTime = (DateTime) objAtomicValue;
                        int iComponents2 = dateTime.components();
                        if (iComponents == iComponents2 || (iComponents2 & 14) == 14) {
                            return dateTime.cast(iComponents);
                        }
                        throw new ClassCastException();
                    }
                    break;
                case 28:
                    return castToDuration(objAtomicValue, Unit.duration);
                case 29:
                    return castToDuration(objAtomicValue, Unit.month);
                case 30:
                    return castToDuration(objAtomicValue, Unit.second);
                case 31:
                    if (objAtomicValue instanceof Boolean) {
                        return ((Boolean) objAtomicValue).booleanValue() ? Boolean.TRUE : Boolean.FALSE;
                    }
                    if (objAtomicValue instanceof Number) {
                        double dDoubleValue = ((Number) objAtomicValue).doubleValue();
                        return (dDoubleValue == 0.0d || Double.isNaN(dDoubleValue)) ? Boolean.FALSE : Boolean.TRUE;
                    }
                    break;
                default:
                    switch (i) {
                        case 33:
                            return URIPath.makeURI(objAtomicValue);
                        case 34:
                            if (objAtomicValue instanceof BinaryObject) {
                                return new Base64Binary(((BinaryObject) objAtomicValue).getBytes());
                            }
                        case 35:
                            if (objAtomicValue instanceof BinaryObject) {
                                return new HexBinary(((BinaryObject) objAtomicValue).getBytes());
                            }
                        default:
                            return coerceFromObject(objAtomicValue);
                    }
            }
        } else {
            if (objAtomicValue instanceof BigDecimal) {
                return objAtomicValue;
            }
            if (objAtomicValue instanceof RealNum) {
                return ((RealNum) objAtomicValue).asBigDecimal();
            }
            if ((objAtomicValue instanceof Float) || (objAtomicValue instanceof Double)) {
                return BigDecimal.valueOf(((Number) objAtomicValue).doubleValue());
            }
            if (objAtomicValue instanceof Boolean) {
                return cast(((Boolean) objAtomicValue).booleanValue() ? IntNum.one() : IntNum.zero());
            }
        }
        return coerceFromObject(objAtomicValue);
    }

    public Duration castToDuration(Object obj, Unit unit) {
        if (obj instanceof Duration) {
            Duration duration = (Duration) obj;
            if (duration.unit() == unit) {
                return duration;
            }
            int totalMonths = duration.getTotalMonths();
            long totalSeconds = duration.getTotalSeconds();
            int nanoSecondsOnly = duration.getNanoSecondsOnly();
            if (unit == Unit.second) {
                totalMonths = 0;
            }
            if (unit == Unit.month) {
                totalSeconds = 0;
                nanoSecondsOnly = 0;
            }
            return Duration.make(totalMonths, totalSeconds, nanoSecondsOnly, unit);
        }
        return (Duration) coerceFromObject(obj);
    }

    @Override // gnu.bytecode.Type
    public Object coerceFromObject(Object obj) {
        if (isInstance(obj)) {
            return obj;
        }
        throw new ClassCastException("cannot cast " + obj + " to " + this.name);
    }

    @Override // gnu.bytecode.Type
    public int compare(Type type) {
        if (this == type) {
            return 0;
        }
        XDataType xDataType = stringStringType;
        if (this == xDataType && type == stringType) {
            return 0;
        }
        if (this == stringType && type == xDataType) {
            return 0;
        }
        return this.implementationType.compare(type);
    }

    public Object valueOf(String str) {
        char cCharAt;
        int i = this.typeCode;
        if (i == 4) {
            String strTrim = str.trim();
            int length = strTrim.length();
            do {
                length--;
                if (length < 0) {
                    return new BigDecimal(strTrim);
                }
                cCharAt = strTrim.charAt(length);
                if (cCharAt == 'e') {
                    break;
                }
            } while (cCharAt != 'E');
            throw new IllegalArgumentException(a.A("not a valid decimal: '", strTrim, "'"));
        }
        if (i == 18 || i == 19) {
            String strTrim2 = str.trim();
            if ("INF".equals(strTrim2)) {
                strTrim2 = "Infinity";
            } else if ("-INF".equals(strTrim2)) {
                strTrim2 = "-Infinity";
            }
            return this.typeCode == 18 ? Float.valueOf(strTrim2) : Double.valueOf(strTrim2);
        }
        if (i == 37) {
            return new UntypedAtomic(str);
        }
        if (i == 38) {
            return str;
        }
        switch (i) {
            case 28:
                return Duration.parseDuration(str);
            case 29:
                return Duration.parseYearMonthDuration(str);
            case 30:
                return Duration.parseDayTimeDuration(str);
            case 31:
                String strTrim3 = str.trim();
                if (strTrim3.equals("true") || strTrim3.equals("1")) {
                    return Boolean.TRUE;
                }
                if (strTrim3.equals("false") || strTrim3.equals("0")) {
                    return Boolean.FALSE;
                }
                throw new IllegalArgumentException(a.A("not a valid boolean: '", strTrim3, "'"));
            default:
                switch (i) {
                    case 33:
                        return URIPath.makeURI(TextUtils.replaceWhitespace(str, true));
                    case 34:
                        return Base64Binary.valueOf(str);
                    case 35:
                        return HexBinary.valueOf(str);
                    default:
                        throw new RuntimeException("valueOf not implemented for " + this.name);
                }
        }
    }

    public static Float makeFloat(float f) {
        return Float.valueOf(f);
    }

    public static Double makeDouble(double d) {
        return Double.valueOf(d);
    }
}
