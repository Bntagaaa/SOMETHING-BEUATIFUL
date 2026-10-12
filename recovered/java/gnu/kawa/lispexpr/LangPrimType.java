package gnu.kawa.lispexpr;

import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.Method;
import gnu.bytecode.PrimType;
import gnu.bytecode.Type;
import gnu.bytecode.Variable;
import gnu.expr.Compilation;
import gnu.expr.Declaration;
import gnu.expr.Expression;
import gnu.expr.Language;
import gnu.expr.Target;
import gnu.expr.TypeValue;
import gnu.kawa.reflect.InstanceOf;
import gnu.mapping.Procedure;
import gnu.mapping.Values;
import gnu.text.Char;

/* loaded from: classes2.dex */
public class LangPrimType extends PrimType implements TypeValue {
    PrimType implementationType;
    Language language;
    public static final PrimType byteType = Type.byteType;
    public static final PrimType shortType = Type.shortType;
    public static final PrimType intType = Type.intType;
    public static final PrimType longType = Type.longType;
    public static final PrimType floatType = Type.floatType;
    public static final PrimType doubleType = Type.doubleType;
    public static final LangPrimType charType = new LangPrimType(Type.charType);
    public static final LangPrimType voidType = new LangPrimType(Type.voidType);

    @Override // gnu.expr.TypeValue
    public Expression convertValue(Expression expression) {
        return null;
    }

    @Override // gnu.expr.TypeValue
    public Procedure getConstructor() {
        return null;
    }

    public LangPrimType(PrimType primType) {
        super(primType);
        this.implementationType = primType;
    }

    public LangPrimType(PrimType primType, Language language) {
        super(primType);
        this.language = language;
        this.implementationType = primType;
    }

    public LangPrimType(String str, String str2, int i, Class cls) {
        super(str, str2, i, cls);
    }

    public LangPrimType(String str, String str2, int i, Class cls, Language language) {
        this(str, str2, i, cls);
        this.implementationType = Type.signatureToPrimitive(str2.charAt(0));
        this.language = language;
    }

    @Override // gnu.bytecode.Type
    public Type getImplementationType() {
        return this.implementationType;
    }

    @Override // gnu.bytecode.PrimType, gnu.bytecode.Type
    public Object coerceFromObject(Object obj) {
        if (obj.getClass() == this.reflectClass) {
            return obj;
        }
        char cCharAt = getSignature().charAt(0);
        if (cCharAt == 'C') {
            return new Character(((Char) obj).charValue());
        }
        if (cCharAt == 'V') {
            return Values.empty;
        }
        if (cCharAt != 'Z') {
            return super.coerceFromObject(obj);
        }
        return this.language.isTrue(obj) ? Boolean.TRUE : Boolean.FALSE;
    }

    @Override // gnu.bytecode.PrimType
    public char charValue(Object obj) {
        if (obj instanceof Character) {
            return ((Character) obj).charValue();
        }
        return ((Char) obj).charValue();
    }

    @Override // gnu.bytecode.PrimType, gnu.bytecode.Type
    public void emitIsInstance(CodeAttr codeAttr) {
        char cCharAt = getSignature().charAt(0);
        if (cCharAt == 'C') {
            codeAttr.emitInstanceof(ClassType.make("gnu.text.Char"));
        } else if (cCharAt == 'Z') {
            codeAttr.emitPop(1);
            codeAttr.emitPushInt(1);
        } else {
            super.emitIsInstance(codeAttr);
        }
    }

    @Override // gnu.bytecode.PrimType, gnu.bytecode.Type
    public void emitCoerceFromObject(CodeAttr codeAttr) {
        char cCharAt = getSignature().charAt(0);
        if (cCharAt != 'C') {
            if (cCharAt == 'Z') {
                this.language.emitCoerceToBoolean(codeAttr);
                return;
            } else {
                super.emitCoerceFromObject(codeAttr);
                return;
            }
        }
        ClassType classTypeMake = ClassType.make("gnu.text.Char");
        Method declaredMethod = classTypeMake.getDeclaredMethod("charValue", 0);
        codeAttr.emitCheckcast(classTypeMake);
        codeAttr.emitInvokeVirtual(declaredMethod);
    }

    @Override // gnu.bytecode.Type
    public Object coerceToObject(Object obj) {
        char cCharAt = getSignature().charAt(0);
        if (cCharAt == 'C') {
            return obj instanceof Char ? obj : Char.make(((Character) obj).charValue());
        }
        if (cCharAt == 'V') {
            return Values.empty;
        }
        if (cCharAt == 'Z') {
            return this.language.booleanObject(((Boolean) obj).booleanValue());
        }
        return super.coerceToObject(obj);
    }

    @Override // gnu.bytecode.PrimType, gnu.bytecode.Type
    public void emitCoerceToObject(CodeAttr codeAttr) {
        char cCharAt = getSignature().charAt(0);
        if (cCharAt == 'C') {
            codeAttr.emitInvokeStatic(ClassType.make("gnu.text.Char").getDeclaredMethod("make", 1));
            return;
        }
        if (cCharAt == 'Z') {
            codeAttr.emitIfIntNotZero();
            this.language.emitPushBoolean(true, codeAttr);
            codeAttr.emitElse();
            this.language.emitPushBoolean(false, codeAttr);
            codeAttr.emitFi();
            return;
        }
        super.emitCoerceToObject(codeAttr);
    }

    @Override // gnu.bytecode.PrimType, gnu.bytecode.Type
    public int compare(Type type) {
        char cCharAt = getSignature().charAt(0);
        if (type instanceof PrimType) {
            char cCharAt2 = type.getSignature().charAt(0);
            if (cCharAt == cCharAt2) {
                return 0;
            }
            if (cCharAt == 'V') {
                return 1;
            }
            if (cCharAt2 == 'V' || cCharAt2 == 'Z') {
                return -1;
            }
        }
        if (cCharAt == 'V' || cCharAt == 'Z') {
            return 1;
        }
        if (cCharAt == 'C' && type.getName().equals("gnu.text.Char")) {
            return -1;
        }
        if (type instanceof LangObjType) {
            return Type.swappedCompareResult(type.compare(this));
        }
        return super.compare(type);
    }

    @Override // gnu.expr.TypeValue
    public void emitTestIf(Variable variable, Declaration declaration, Compilation compilation) {
        getSignature().charAt(0);
        CodeAttr code = compilation.getCode();
        if (variable != null) {
            code.emitLoad(variable);
        }
        if (declaration != null) {
            code.emitDup();
            declaration.compileStore(compilation);
        }
        emitIsInstance(code);
        code.emitIfIntNotZero();
    }

    @Override // gnu.expr.TypeValue
    public void emitIsInstance(Variable variable, Compilation compilation, Target target) {
        InstanceOf.emitIsInstance(this, variable, compilation, target);
    }
}
