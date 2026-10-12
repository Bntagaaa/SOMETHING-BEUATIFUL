package gnu.kawa.lispexpr;

import com.google.appinventor.components.common.PropertyTypeConstants;
import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.Field;
import gnu.bytecode.Filter;
import gnu.bytecode.Method;
import gnu.bytecode.ObjectType;
import gnu.bytecode.PrimType;
import gnu.bytecode.Type;
import gnu.bytecode.Variable;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.Declaration;
import gnu.expr.Expression;
import gnu.expr.Language;
import gnu.expr.PairClassType;
import gnu.expr.PrimProcedure;
import gnu.expr.Target;
import gnu.expr.TypeValue;
import gnu.kawa.functions.MakeList;
import gnu.kawa.reflect.InstanceOf;
import gnu.mapping.Procedure;
import gnu.mapping.WrongType;
import gnu.math.DFloNum;
import gnu.math.IntNum;
import gnu.math.Numeric;
import gnu.math.RatNum;
import gnu.math.RealNum;
import gnu.text.FilePath;
import gnu.text.Path;
import gnu.text.URIPath;
import java.util.List;

/* loaded from: classes2.dex */
public class LangObjType extends ObjectType implements TypeValue {
    private static final int CLASSTYPE_TYPE_CODE = 6;
    private static final int CLASS_TYPE_CODE = 4;
    private static final int DFLONUM_TYPE_CODE = 15;
    private static final int FILEPATH_TYPE_CODE = 2;
    private static final int INTEGER_TYPE_CODE = 7;
    private static final int LIST_TYPE_CODE = 11;
    private static final int NUMERIC_TYPE_CODE = 10;
    private static final int PATH_TYPE_CODE = 1;
    private static final int RATIONAL_TYPE_CODE = 8;
    private static final int REAL_TYPE_CODE = 9;
    private static final int REGEX_TYPE_CODE = 14;
    private static final int STRING_TYPE_CODE = 13;
    private static final int TYPE_TYPE_CODE = 5;
    private static final int URI_TYPE_CODE = 3;
    static final String VARARGS_SUFFIX = "";
    private static final int VECTOR_TYPE_CODE = 12;
    ClassType implementationType;
    final int typeCode;
    public static final LangObjType pathType = new LangObjType("path", "gnu.text.Path", 1);
    public static final LangObjType filepathType = new LangObjType("filepath", "gnu.text.FilePath", 2);
    public static final LangObjType URIType = new LangObjType("URI", "gnu.text.URIPath", 3);
    public static final LangObjType typeClass = new LangObjType("class", "java.lang.Class", 4);
    public static final LangObjType typeType = new LangObjType("type", "gnu.bytecode.Type", 5);
    public static final LangObjType typeClassType = new LangObjType("class-type", "gnu.bytecode.ClassType", 6);
    public static final LangObjType numericType = new LangObjType("number", "gnu.math.Numeric", 10);
    public static final LangObjType realType = new LangObjType("real", "gnu.math.RealNum", 9);
    public static final LangObjType rationalType = new LangObjType("rational", "gnu.math.RatNum", 8);
    public static final LangObjType integerType = new LangObjType(PropertyTypeConstants.PROPERTY_TYPE_INTEGER, "gnu.math.IntNum", 7);
    public static final LangObjType dflonumType = new LangObjType("DFloNum", "gnu.math.DFloNum", 15);
    public static final LangObjType vectorType = new LangObjType("vector", "gnu.lists.FVector", 12);
    public static final LangObjType regexType = new LangObjType("regex", "java.util.regex.Pattern", 14);
    public static final LangObjType stringType = new LangObjType(PropertyTypeConstants.PROPERTY_TYPE_STRING, "java.lang.CharSequence", 13);
    public static final LangObjType listType = new LangObjType("list", "gnu.lists.LList", 11);
    static final ClassType typeArithmetic = ClassType.make("gnu.kawa.functions.Arithmetic");
    static PrimProcedure makePathProc = new PrimProcedure("gnu.text.Path", "valueOf", 1);
    static PrimProcedure makeFilepathProc = new PrimProcedure("gnu.text.FilePath", "makeFilePath", 1);
    static PrimProcedure makeURIProc = new PrimProcedure("gnu.text.URIPath", "makeURI", 1);
    public static final ClassType typeLangObjType = ClassType.make("gnu.kawa.lispexpr.LangObjType");

    public LangObjType(String str, String str2, int i) {
        super(str);
        ClassType classTypeMake = ClassType.make(str2);
        this.implementationType = classTypeMake;
        this.typeCode = i;
        setSignature(classTypeMake.getSignature());
    }

    @Override // gnu.bytecode.ObjectType, gnu.bytecode.Type
    public int compare(Type type) {
        LangObjType langObjType;
        LangObjType langObjType2;
        ClassType classType;
        char cCharAt;
        char cCharAt2;
        int i = this.typeCode;
        if (i == 4) {
            LangObjType langObjType3 = typeType;
            if (type == langObjType3 || type == (langObjType = typeClassType) || type == langObjType3.implementationType || type == langObjType.implementationType) {
                return -1;
            }
        } else {
            if (i == 5) {
                LangObjType langObjType4 = typeClass;
                if (type != langObjType4 && type != (langObjType2 = typeClassType) && type != langObjType4.implementationType && type != langObjType2.implementationType) {
                }
                return 1;
            }
            if (i != 6) {
                if (i != 7) {
                    if (i == 9 || i == 15) {
                    }
                } else if ((type instanceof PrimType) && ((cCharAt = type.getSignature().charAt(0)) == 'B' || cCharAt == 'S' || cCharAt == 'I' || cCharAt == 'J')) {
                    return 1;
                }
                if ((type instanceof PrimType) && ((cCharAt2 = type.getSignature().charAt(0)) == 'D' || cCharAt2 == 'F')) {
                    return 1;
                }
            }
            LangObjType langObjType5 = typeClass;
            if (type != langObjType5 && type != (classType = langObjType5.implementationType)) {
                if (type == typeType || type == classType) {
                    return -1;
                }
            }
            return 1;
        }
        return getImplementationType().compare(type.getImplementationType());
    }

    @Override // gnu.bytecode.ObjectType
    public Field getField(String str, int i) {
        return this.implementationType.getField(str, i);
    }

    @Override // gnu.bytecode.ObjectType
    public Method getMethod(String str, Type[] typeArr) {
        return this.implementationType.getMethod(str, typeArr);
    }

    public Method getDeclaredMethod(String str, int i) {
        return this.implementationType.getDeclaredMethod(str, i);
    }

    @Override // gnu.bytecode.ObjectType
    public int getMethods(Filter filter, int i, List<Method> list) {
        return this.implementationType.getMethods(filter, i, list);
    }

    @Override // gnu.bytecode.ObjectType, gnu.bytecode.Type
    public Class getReflectClass() {
        return this.implementationType.getReflectClass();
    }

    @Override // gnu.bytecode.Type
    public Type getRealType() {
        return this.implementationType;
    }

    @Override // gnu.bytecode.ObjectType, gnu.bytecode.Type
    public Type getImplementationType() {
        return this.implementationType;
    }

    @Override // gnu.expr.TypeValue
    public void emitIsInstance(Variable variable, Compilation compilation, Target target) {
        switch (this.typeCode) {
            case 11:
            case 12:
            case 13:
            case 14:
                this.implementationType.emitIsInstance(compilation.getCode());
                target.compileFromStack(compilation, compilation.getLanguage().getTypeFor(Boolean.TYPE));
                break;
            default:
                InstanceOf.emitIsInstance(this, variable, compilation, target);
                break;
        }
    }

    public static Numeric coerceNumeric(Object obj) {
        Numeric numericAsNumericOrNull = Numeric.asNumericOrNull(obj);
        if (numericAsNumericOrNull != null || obj == null) {
            return numericAsNumericOrNull;
        }
        throw new WrongType(-4, obj, numericType);
    }

    public static RealNum coerceRealNum(Object obj) {
        RealNum realNumAsRealNumOrNull = RealNum.asRealNumOrNull(obj);
        if (realNumAsRealNumOrNull != null || obj == null) {
            return realNumAsRealNumOrNull;
        }
        throw new WrongType(-4, obj, realType);
    }

    public static DFloNum coerceDFloNum(Object obj) {
        DFloNum dFloNumAsDFloNumOrNull = DFloNum.asDFloNumOrNull(obj);
        if (dFloNumAsDFloNumOrNull != null || obj == null) {
            return dFloNumAsDFloNumOrNull;
        }
        throw new WrongType(-4, obj, dflonumType);
    }

    public static RatNum coerceRatNum(Object obj) {
        RatNum ratNumAsRatNumOrNull = RatNum.asRatNumOrNull(obj);
        if (ratNumAsRatNumOrNull != null || obj == null) {
            return ratNumAsRatNumOrNull;
        }
        throw new WrongType(-4, obj, rationalType);
    }

    public static IntNum coerceIntNum(Object obj) {
        IntNum intNumAsIntNumOrNull = IntNum.asIntNumOrNull(obj);
        if (intNumAsIntNumOrNull != null || obj == null) {
            return intNumAsIntNumOrNull;
        }
        throw new WrongType(-4, obj, integerType);
    }

    public static Class coerceToClassOrNull(Object obj) {
        if (obj instanceof Class) {
            return (Class) obj;
        }
        if ((obj instanceof Type) && (obj instanceof ClassType) && !(obj instanceof PairClassType)) {
            return ((ClassType) obj).getReflectClass();
        }
        return null;
    }

    public static Class coerceToClass(Object obj) {
        Class clsCoerceToClassOrNull = coerceToClassOrNull(obj);
        if (clsCoerceToClassOrNull != null || obj == null) {
            return clsCoerceToClassOrNull;
        }
        throw new ClassCastException("cannot cast " + obj + " to type");
    }

    public static ClassType coerceToClassTypeOrNull(Object obj) {
        if (obj instanceof ClassType) {
            return (ClassType) obj;
        }
        if (!(obj instanceof Class)) {
            return null;
        }
        Type typeFor = Language.getDefaultLanguage().getTypeFor((Class) obj);
        if (typeFor instanceof ClassType) {
            return (ClassType) typeFor;
        }
        return null;
    }

    public static ClassType coerceToClassType(Object obj) {
        ClassType classTypeCoerceToClassTypeOrNull = coerceToClassTypeOrNull(obj);
        if (classTypeCoerceToClassTypeOrNull != null || obj == null) {
            return classTypeCoerceToClassTypeOrNull;
        }
        throw new ClassCastException("cannot cast " + obj + " to class-type");
    }

    public static Type coerceToTypeOrNull(Object obj) {
        if (obj instanceof Type) {
            return (Type) obj;
        }
        if (obj instanceof Class) {
            return Language.getDefaultLanguage().getTypeFor((Class) obj);
        }
        return null;
    }

    public static Type coerceToType(Object obj) {
        Type typeCoerceToTypeOrNull = coerceToTypeOrNull(obj);
        if (typeCoerceToTypeOrNull != null || obj == null) {
            return typeCoerceToTypeOrNull;
        }
        throw new ClassCastException("cannot cast " + obj + " to type");
    }

    public Method coercionMethod() {
        switch (this.typeCode) {
            case 4:
                return typeLangObjType.getDeclaredMethod("coerceToClass", 1);
            case 5:
                return typeLangObjType.getDeclaredMethod("coerceToType", 1);
            case 6:
                return typeLangObjType.getDeclaredMethod("coerceToClassType", 1);
            case 7:
                return typeLangObjType.getDeclaredMethod("coerceIntNum", 1);
            case 8:
                return typeLangObjType.getDeclaredMethod("coerceRatNum", 1);
            case 9:
                return typeLangObjType.getDeclaredMethod("coerceRealNum", 1);
            case 10:
                return typeLangObjType.getDeclaredMethod("coerceNumeric", 1);
            case 11:
            case 12:
            case 13:
            case 14:
                return null;
            case 15:
                return typeLangObjType.getDeclaredMethod("coerceDFloNum", 1);
            default:
                return ((PrimProcedure) getConstructor()).getMethod();
        }
    }

    public Method coercionOrNullMethod() {
        String str;
        ClassType classType = this.implementationType;
        int i = this.typeCode;
        if (i != 15) {
            switch (i) {
                case 1:
                    str = "coerceToPathOrNull";
                    break;
                case 2:
                    str = "coerceToFilePathOrNull";
                    break;
                case 3:
                    str = "coerceToURIPathOrNull";
                    break;
                case 4:
                    classType = typeLangObjType;
                    str = "coerceToClassOrNull";
                    break;
                case 5:
                    classType = typeLangObjType;
                    str = "coerceToTypeOrNull";
                    break;
                case 6:
                    classType = typeLangObjType;
                    str = "coerceToClassTypeOrNull";
                    break;
                case 7:
                    str = "asIntNumOrNull";
                    break;
                case 8:
                    str = "asRatNumOrNull";
                    break;
                case 9:
                    str = "asRealNumOrNull";
                    break;
                case 10:
                    str = "asNumericOrNull";
                    break;
                default:
                    return null;
            }
        } else {
            str = "asDFloNumOrNull";
        }
        return classType.getDeclaredMethod(str, 1);
    }

    @Override // gnu.expr.TypeValue
    public void emitTestIf(Variable variable, Declaration declaration, Compilation compilation) {
        CodeAttr code = compilation.getCode();
        if (variable != null) {
            code.emitLoad(variable);
        }
        Method methodCoercionOrNullMethod = coercionOrNullMethod();
        if (methodCoercionOrNullMethod != null) {
            code.emitInvokeStatic(methodCoercionOrNullMethod);
        }
        if (declaration != null) {
            code.emitDup();
            declaration.compileStore(compilation);
        }
        if (methodCoercionOrNullMethod != null) {
            code.emitIfNotNull();
        } else {
            this.implementationType.emitIsInstance(code);
            code.emitIfIntNotZero();
        }
    }

    @Override // gnu.bytecode.ObjectType, gnu.bytecode.Type
    public Object coerceFromObject(Object obj) {
        int i = this.typeCode;
        if (i != 15) {
            switch (i) {
                case 1:
                    return Path.valueOf(obj);
                case 2:
                    return FilePath.makeFilePath(obj);
                case 3:
                    return URIPath.makeURI(obj);
                case 4:
                    return coerceToClass(obj);
                case 5:
                    return coerceToType(obj);
                case 6:
                    return coerceToClassType(obj);
                case 7:
                    return coerceIntNum(obj);
                case 8:
                    return coerceRatNum(obj);
                case 9:
                    return coerceRealNum(obj);
                case 10:
                    return coerceNumeric(obj);
                default:
                    return super.coerceFromObject(obj);
            }
        }
        return coerceDFloNum(obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0043 A[FALL_THROUGH, PHI: r6
      0x0043: PHI (r6v3 gnu.bytecode.Type) = 
      (r6v0 gnu.bytecode.Type)
      (r6v2 gnu.bytecode.Type)
      (r6v0 gnu.bytecode.Type)
      (r6v0 gnu.bytecode.Type)
      (r6v7 gnu.bytecode.Type)
      (r6v0 gnu.bytecode.Type)
     binds: [B:32:0x004a, B:45:0x0068, B:4:0x0009, B:7:0x000f, B:27:0x003f, B:22:0x002e] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // gnu.bytecode.Type
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void emitConvertFromPrimitive(gnu.bytecode.Type r6, gnu.bytecode.CodeAttr r7) {
        /*
            r5 = this;
            int r0 = r5.typeCode
            r1 = 15
            java.lang.String r2 = "gnu.math.DFloNum"
            r3 = 0
            if (r0 == r1) goto L48
            switch(r0) {
                case 7: goto Ld;
                case 8: goto Ld;
                case 9: goto Ld;
                case 10: goto Ld;
                default: goto Lc;
            }
        Lc:
            goto L43
        Ld:
            boolean r1 = r6 instanceof gnu.bytecode.PrimType
            if (r1 == 0) goto L43
            gnu.bytecode.PrimType r1 = gnu.bytecode.Type.intType
            java.lang.String r4 = "gnu.math.IntNum"
            if (r6 == r1) goto L45
            gnu.bytecode.PrimType r1 = gnu.bytecode.Type.byteType
            if (r6 == r1) goto L45
            gnu.bytecode.PrimType r1 = gnu.bytecode.Type.shortType
            if (r6 != r1) goto L20
            goto L45
        L20:
            gnu.bytecode.PrimType r1 = gnu.bytecode.Type.longType
            if (r6 != r1) goto L28
            gnu.bytecode.PrimType r3 = gnu.bytecode.Type.long_type
        L26:
            r2 = r4
            goto L6b
        L28:
            r1 = 9
            if (r0 == r1) goto L30
            r1 = 10
            if (r0 != r1) goto L43
        L30:
            gnu.bytecode.PrimType r0 = gnu.bytecode.Type.floatType
            if (r6 != r0) goto L3d
            gnu.bytecode.PrimType r6 = gnu.bytecode.Type.float_type
            gnu.bytecode.PrimType r0 = gnu.bytecode.Type.double_type
            r7.emitConvert(r6, r0)
            gnu.bytecode.PrimType r6 = gnu.bytecode.Type.doubleType
        L3d:
            gnu.bytecode.PrimType r0 = gnu.bytecode.Type.doubleType
            if (r6 != r0) goto L43
            r3 = r0
            goto L6b
        L43:
            r2 = r3
            goto L6b
        L45:
            gnu.bytecode.PrimType r3 = gnu.bytecode.Type.int_type
            goto L26
        L48:
            boolean r0 = r6 instanceof gnu.bytecode.PrimType
            if (r0 == 0) goto L43
            gnu.bytecode.PrimType r0 = gnu.bytecode.Type.intType
            if (r6 == r0) goto L60
            gnu.bytecode.PrimType r0 = gnu.bytecode.Type.byteType
            if (r6 == r0) goto L60
            gnu.bytecode.PrimType r0 = gnu.bytecode.Type.shortType
            if (r6 == r0) goto L60
            gnu.bytecode.PrimType r0 = gnu.bytecode.Type.longType
            if (r6 == r0) goto L60
            gnu.bytecode.PrimType r0 = gnu.bytecode.Type.floatType
            if (r6 != r0) goto L66
        L60:
            gnu.bytecode.PrimType r0 = gnu.bytecode.Type.doubleType
            r7.emitConvert(r6, r0)
            r6 = r0
        L66:
            gnu.bytecode.PrimType r0 = gnu.bytecode.Type.doubleType
            if (r6 != r0) goto L43
            r3 = r6
        L6b:
            if (r2 == 0) goto L81
            gnu.bytecode.ClassType r6 = gnu.bytecode.ClassType.make(r2)
            r0 = 1
            gnu.bytecode.Type[] r0 = new gnu.bytecode.Type[r0]
            r1 = 0
            r0[r1] = r3
            java.lang.String r1 = "make"
            gnu.bytecode.Method r6 = r6.getDeclaredMethod(r1, r0)
            r7.emitInvokeStatic(r6)
            return
        L81:
            super.emitConvertFromPrimitive(r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.lispexpr.LangObjType.emitConvertFromPrimitive(gnu.bytecode.Type, gnu.bytecode.CodeAttr):void");
    }

    @Override // gnu.expr.TypeValue
    public Expression convertValue(Expression expression) {
        Method methodCoercionMethod;
        int i = this.typeCode;
        if (i == 7 || i == 10 || i == 9 || i == 8 || i == 15 || (methodCoercionMethod = coercionMethod()) == null) {
            return null;
        }
        ApplyExp applyExp = new ApplyExp(methodCoercionMethod, expression);
        applyExp.setType(this);
        return applyExp;
    }

    @Override // gnu.bytecode.ObjectType, gnu.bytecode.Type
    public void emitCoerceFromObject(CodeAttr codeAttr) {
        switch (this.typeCode) {
            case 11:
            case 12:
            case 13:
            case 14:
                codeAttr.emitCheckcast(this.implementationType);
                break;
            default:
                codeAttr.emitInvoke(coercionMethod());
                break;
        }
    }

    @Override // gnu.expr.TypeValue
    public Procedure getConstructor() {
        int i = this.typeCode;
        if (i == 1) {
            return makePathProc;
        }
        if (i == 2) {
            return makeFilepathProc;
        }
        if (i == 3) {
            return makeURIProc;
        }
        switch (i) {
            case 11:
                return MakeList.list;
            case 12:
                return new PrimProcedure("gnu.lists.FVector", "make", 1);
            case 13:
                return new PrimProcedure("kawa.lib.strings", "$make$string$", 1);
            case 14:
                return new PrimProcedure("java.util.regex.Pattern", "compile", 1);
            default:
                return null;
        }
    }
}
