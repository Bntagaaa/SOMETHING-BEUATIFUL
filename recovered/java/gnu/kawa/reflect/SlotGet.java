package gnu.kawa.reflect;

import com.google.appinventor.components.common.PropertyTypeConstants;
import gnu.bytecode.ArrayType;
import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.Field;
import gnu.bytecode.Member;
import gnu.bytecode.Method;
import gnu.bytecode.ObjectType;
import gnu.bytecode.Type;
import gnu.expr.ApplyExp;
import gnu.expr.ClassExp;
import gnu.expr.Compilation;
import gnu.expr.Expression;
import gnu.expr.Inlineable;
import gnu.expr.Language;
import gnu.expr.QuoteExp;
import gnu.expr.Target;
import gnu.kawa.lispexpr.LangPrimType;
import gnu.mapping.HasSetter;
import gnu.mapping.Procedure;
import gnu.mapping.Procedure2;
import gnu.mapping.WrongArguments;

/* loaded from: classes2.dex */
public class SlotGet extends Procedure2 implements HasSetter, Inlineable {
    public static final SlotGet field;
    static Class[] noClasses = new Class[0];
    public static final SlotGet slotRef;
    public static final SlotGet staticField;
    boolean isStatic;
    Procedure setter;

    static {
        SlotSet slotSet = SlotSet.set$Mnfield$Ex;
        field = new SlotGet("field", false, slotSet);
        slotRef = new SlotGet("slot-ref", false, slotSet);
        staticField = new SlotGet("static-field", true, SlotSet.set$Mnstatic$Mnfield$Ex);
    }

    public SlotGet(String str, boolean z) {
        super(str);
        this.isStatic = z;
        setProperty(Procedure.validateApplyKey, "gnu.kawa.reflect.CompileReflect:validateApplySlotGet");
    }

    public SlotGet(String str, boolean z, Procedure procedure) {
        this(str, z);
        this.setter = procedure;
    }

    public static Object field(Object obj, String str) {
        return field.apply2(obj, str);
    }

    public static Object staticField(Object obj, String str) {
        return staticField.apply2(obj, str);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0062 A[PHI: r11
      0x0062: PHI (r11v9 java.lang.String) = (r11v7 java.lang.String), (r11v8 java.lang.String) binds: [B:25:0x0060, B:28:0x006a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0064  */
    @Override // gnu.mapping.Procedure2, gnu.mapping.Procedure
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object apply2(java.lang.Object r10, java.lang.Object r11) {
        /*
            r9 = this;
            boolean r0 = r11 instanceof gnu.bytecode.Field
            r1 = 0
            if (r0 == 0) goto L15
            gnu.bytecode.Field r11 = (gnu.bytecode.Field) r11
            java.lang.String r11 = r11.getName()
            r0 = 1
            java.lang.String r0 = gnu.expr.Compilation.demangleName(r11, r0)
        L10:
            r4 = r0
            r6 = r1
            r7 = r6
            r1 = r11
            goto L5a
        L15:
            boolean r0 = r11 instanceof gnu.bytecode.Method
            if (r0 == 0) goto L3f
            gnu.bytecode.Method r11 = (gnu.bytecode.Method) r11
            java.lang.String r11 = r11.getName()
            r0 = 0
            java.lang.String r0 = gnu.expr.Compilation.demangleName(r11, r0)
            java.lang.String r2 = "get"
            boolean r2 = r11.startsWith(r2)
            if (r2 == 0) goto L2e
            r2 = r1
            goto L3b
        L2e:
            java.lang.String r2 = "is"
            boolean r2 = r11.startsWith(r2)
            if (r2 == 0) goto L39
            r2 = r11
            r11 = r1
            goto L3b
        L39:
            r11 = r1
            r2 = r11
        L3b:
            r6 = r11
            r4 = r0
            r7 = r2
            goto L5a
        L3f:
            boolean r0 = r11 instanceof gnu.mapping.SimpleSymbol
            if (r0 != 0) goto L51
            boolean r0 = r11 instanceof java.lang.CharSequence
            if (r0 == 0) goto L48
            goto L51
        L48:
            gnu.mapping.WrongType r10 = new gnu.mapping.WrongType
            r0 = 2
            java.lang.String r1 = "string"
            r10.<init>(r9, r0, r11, r1)
            throw r10
        L51:
            java.lang.String r0 = r11.toString()
            java.lang.String r11 = gnu.expr.Compilation.mangleNameIfNeeded(r0)
            goto L10
        L5a:
            java.lang.String r11 = "class"
            boolean r0 = r11.equals(r1)
            if (r0 == 0) goto L64
        L62:
            r5 = r11
            goto L6e
        L64:
            java.lang.String r11 = "length"
            boolean r0 = r11.equals(r1)
            if (r0 == 0) goto L6d
            goto L62
        L6d:
            r5 = r1
        L6e:
            boolean r2 = r9.isStatic
            gnu.expr.Language r8 = gnu.expr.Language.getDefaultLanguage()
            r3 = r10
            java.lang.Object r10 = getSlotValue(r2, r3, r4, r5, r6, r7, r8)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.reflect.SlotGet.apply2(java.lang.Object, java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00cf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object getSlotValue(boolean r6, java.lang.Object r7, java.lang.String r8, java.lang.String r9, java.lang.String r10, java.lang.String r11, gnu.expr.Language r12) throws java.lang.NoSuchFieldException, java.lang.NoSuchMethodException, java.lang.SecurityException {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.reflect.SlotGet.getSlotValue(boolean, java.lang.Object, java.lang.String, java.lang.String, java.lang.String, java.lang.String, gnu.expr.Language):java.lang.Object");
    }

    public static Class coerceToClass(Object obj) {
        if (obj instanceof Class) {
            return (Class) obj;
        }
        if (obj instanceof Type) {
            return ((Type) obj).getReflectClass();
        }
        throw new RuntimeException("argument is neither Class nor Type");
    }

    @Override // gnu.mapping.Procedure
    public void setN(Object[] objArr) {
        int length = objArr.length;
        if (length != 3) {
            throw new WrongArguments(getSetter(), length);
        }
        set2(objArr[0], objArr[1], objArr[2]);
    }

    public void set2(Object obj, Object obj2, Object obj3) {
        SlotSet.apply(this.isStatic, obj, (String) obj2, obj3);
    }

    public static Member lookupMember(ObjectType objectType, String str, ClassType classType) {
        Field field2 = objectType.getField(Compilation.mangleNameIfNeeded(str), -1);
        if (field2 != null) {
            if (classType == null) {
                classType = Type.pointer_type;
            }
            if (classType.isAccessible(field2, objectType)) {
                return field2;
            }
        }
        Method method = objectType.getMethod(ClassExp.slotToMethodName("get", str), Type.typeArray0);
        return method == null ? field2 : method;
    }

    @Override // gnu.expr.Inlineable
    public void compile(ApplyExp applyExp, Compilation compilation, Target target) {
        Expression[] args = applyExp.getArgs();
        Expression expression = args[0];
        Expression expression2 = args[1];
        Language language = compilation.getLanguage();
        Type typeFor = this.isStatic ? language.getTypeFor(expression) : expression.getType();
        CodeAttr code = compilation.getCode();
        if ((typeFor instanceof ObjectType) && (expression2 instanceof QuoteExp)) {
            ObjectType objectType = (ObjectType) typeFor;
            Object value = ((QuoteExp) expression2).getValue();
            if (value instanceof Field) {
                Field field2 = (Field) value;
                boolean z = (field2.getModifiers() & 8) != 0;
                args[0].compile(compilation, z ? Target.Ignore : Target.pushValue(objectType));
                if (z) {
                    code.emitGetStatic(field2);
                } else {
                    code.emitGetField(field2);
                }
                target.compileFromStack(compilation, language.getLangTypeFor(field2.getType()));
                return;
            }
            if (value instanceof Method) {
                Method method = (Method) value;
                method.getModifiers();
                boolean staticFlag = method.getStaticFlag();
                args[0].compile(compilation, staticFlag ? Target.Ignore : Target.pushValue(objectType));
                if (staticFlag) {
                    code.emitInvokeStatic(method);
                } else {
                    code.emitInvoke(method);
                }
                target.compileFromStack(compilation, method.getReturnType());
                return;
            }
        }
        String strCheckName = ClassMethods.checkName(expression2);
        if ((typeFor instanceof ArrayType) && PropertyTypeConstants.PROPERTY_TYPE_LENGTH.equals(strCheckName) && !this.isStatic) {
            args[0].compile(compilation, Target.pushValue(typeFor));
            code.emitArrayLength();
            target.compileFromStack(compilation, LangPrimType.intType);
            return;
        }
        ApplyExp.compile(applyExp, compilation, target);
    }

    @Override // gnu.mapping.Procedure
    public Type getReturnType(Expression[] expressionArr) {
        if (expressionArr.length == 2) {
            Expression expression = expressionArr[0];
            Expression expression2 = expressionArr[1];
            if (expression2 instanceof QuoteExp) {
                Object value = ((QuoteExp) expression2).getValue();
                if (value instanceof Field) {
                    return ((Field) value).getType();
                }
                if (value instanceof Method) {
                    return ((Method) value).getReturnType();
                }
                if (!this.isStatic && (expression.getType() instanceof ArrayType) && PropertyTypeConstants.PROPERTY_TYPE_LENGTH.equals(ClassMethods.checkName(expression2, true))) {
                    return LangPrimType.intType;
                }
            }
        }
        return Type.pointer_type;
    }

    @Override // gnu.mapping.Procedure, gnu.mapping.HasSetter
    public Procedure getSetter() {
        Procedure procedure = this.setter;
        return procedure == null ? super.getSetter() : procedure;
    }

    public static ApplyExp makeGetField(Expression expression, String str) {
        return new ApplyExp(field, expression, new QuoteExp(str));
    }
}
