package gnu.expr;

import com.google.appinventor.components.runtime.repackaged.org.json.zip.JSONzip;
import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.Field;
import gnu.bytecode.Method;
import gnu.bytecode.Type;
import gnu.bytecode.Variable;
import gnu.mapping.Location;
import gnu.mapping.Named;
import gnu.mapping.Namespace;
import gnu.mapping.OutPort;
import gnu.mapping.Symbol;
import gnu.mapping.WrappedException;
import gnu.text.SourceLocator;
import java.io.IOException;

/* loaded from: classes2.dex */
public class Declaration implements SourceLocator {
    static final int CAN_CALL = 4;
    static final int CAN_READ = 2;
    static final int CAN_WRITE = 8;
    public static final long CLASS_ACCESS_FLAGS = 25820135424L;
    public static final int EARLY_INIT = 536870912;
    public static final long ENUM_ACCESS = 8589934592L;
    public static final int EXPORT_SPECIFIED = 1024;
    public static final int EXTERNAL_ACCESS = 524288;
    public static final long FIELD_ACCESS_FLAGS = 32463912960L;
    public static final int FIELD_OR_METHOD = 1048576;
    public static final long FINAL_ACCESS = 17179869184L;
    static final int INDIRECT_BINDING = 1;
    public static final int IS_ALIAS = 256;
    public static final int IS_CONSTANT = 16384;
    public static final int IS_DYNAMIC = 268435456;
    static final int IS_FLUID = 16;
    public static final int IS_IMPORTED = 131072;
    public static final int IS_NAMESPACE_PREFIX = 2097152;
    static final int IS_SIMPLE = 64;
    public static final int IS_SINGLE_VALUE = 262144;
    public static final int IS_SYNTAX = 32768;
    public static final int IS_UNKNOWN = 65536;
    public static final long METHOD_ACCESS_FLAGS = 17431527424L;
    public static final int MODULE_REFERENCE = 1073741824;
    public static final int NONSTATIC_SPECIFIED = 4096;
    public static final int NOT_DEFINING = 512;
    public static final int PACKAGE_ACCESS = 134217728;
    static final int PRIVATE = 32;
    public static final int PRIVATE_ACCESS = 16777216;
    public static final String PRIVATE_PREFIX = "$Prvt$";
    public static final int PRIVATE_SPECIFIED = 16777216;
    static final int PROCEDURE = 128;
    public static final int PROTECTED_ACCESS = 33554432;
    public static final int PUBLIC_ACCESS = 67108864;
    public static final int STATIC_SPECIFIED = 2048;
    public static final long TRANSIENT_ACCESS = 4294967296L;
    public static final int TYPE_SPECIFIED = 8192;
    static final String UNKNOWN_PREFIX = "loc$";
    public static final long VOLATILE_ACCESS = 2147483648L;
    static int counter;
    public Declaration base;
    public ScopeExp context;
    int evalIndex;
    public Field field;
    String filename;
    public ApplyExp firstCall;
    protected long flags;
    protected int id;
    Method makeLocationMethod;
    Declaration next;
    Declaration nextCapturedVar;
    int position;
    Object symbol;
    protected Type type;
    protected Expression typeExp;
    protected Expression value;
    Variable var;

    @Override // gnu.text.SourceLocator, org.xml.sax.Locator
    public String getPublicId() {
        return null;
    }

    @Override // gnu.text.SourceLocator
    public boolean isStableSourceLocation() {
        return true;
    }

    public void setCode(int i) {
        if (i >= 0) {
            throw new Error("code must be negative");
        }
        this.id = i;
    }

    public int getCode() {
        return this.id;
    }

    public final Expression getTypeExp() {
        if (this.typeExp == null) {
            setType(Type.objectType);
        }
        return this.typeExp;
    }

    public final Type getType() {
        if (this.type == null) {
            setType(Type.objectType);
        }
        return this.type;
    }

    public final void setType(Type type) {
        this.type = type;
        Variable variable = this.var;
        if (variable != null) {
            variable.setType(type);
        }
        this.typeExp = QuoteExp.getInstance(type);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void setTypeExp(Expression expression) {
        Type typeFor;
        this.typeExp = expression;
        if (expression instanceof TypeValue) {
            typeFor = ((TypeValue) expression).getImplementationType();
        } else {
            typeFor = Language.getDefaultLanguage().getTypeFor(expression, false);
        }
        if (typeFor == null) {
            typeFor = Type.pointer_type;
        }
        this.type = typeFor;
        Variable variable = this.var;
        if (variable != null) {
            variable.setType(typeFor);
        }
    }

    public final String getName() {
        Object obj = this.symbol;
        if (obj == null) {
            return null;
        }
        return obj instanceof Symbol ? ((Symbol) obj).getName() : obj.toString();
    }

    public final void setName(Object obj) {
        this.symbol = obj;
    }

    public final Object getSymbol() {
        return this.symbol;
    }

    public final void setSymbol(Object obj) {
        this.symbol = obj;
    }

    public final Declaration nextDecl() {
        return this.next;
    }

    public final void setNext(Declaration declaration) {
        this.next = declaration;
    }

    public Variable getVariable() {
        return this.var;
    }

    public final boolean isSimple() {
        return (this.flags & 64) != 0;
    }

    public final void setSimple(boolean z) {
        setFlag(z, 64L);
        Variable variable = this.var;
        if (variable == null || variable.isParameter()) {
            return;
        }
        this.var.setSimple(z);
    }

    public final void setSyntax() {
        setSimple(false);
        setFlag(536920064L);
    }

    public final ScopeExp getContext() {
        return this.context;
    }

    public void loadOwningObject(Declaration declaration, Compilation compilation) {
        if (declaration == null) {
            declaration = this.base;
        }
        if (declaration != null) {
            declaration.load(null, 0, compilation, Target.pushObject);
        } else {
            getContext().currentLambda().loadHeapFrame(compilation);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:99:0x0194  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void load(gnu.expr.AccessExp r11, int r12, gnu.expr.Compilation r13, gnu.expr.Target r14) {
        /*
            Method dump skipped, instructions count: 542
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.expr.Declaration.load(gnu.expr.AccessExp, int, gnu.expr.Compilation, gnu.expr.Target):void");
    }

    public void compileStore(Compilation compilation) {
        CodeAttr code = compilation.getCode();
        if (isSimple()) {
            code.emitStore(getVariable());
        } else {
            if (!this.field.getStaticFlag()) {
                loadOwningObject(null, compilation);
                code.emitSwap();
                code.emitPutField(this.field);
                return;
            }
            code.emitPutStatic(this.field);
        }
    }

    public final Expression getValue() {
        Expression expression = this.value;
        try {
            if (expression == QuoteExp.undefined_exp) {
                Field field = this.field;
                if (field != null && (field.getModifiers() & 24) == 24 && !isIndirectBinding()) {
                    this.value = new QuoteExp(this.field.getReflectField().get(null));
                }
            } else if ((expression instanceof QuoteExp) && getFlag(8192L) && this.value.getType() != this.type) {
                Object value = ((QuoteExp) this.value).getValue();
                Type type = getType();
                this.value = new QuoteExp(type.coerceFromObject(value), type);
            }
        } catch (Throwable unused) {
        }
        return this.value;
    }

    public final void setValue(Expression expression) {
        this.value = expression;
    }

    public final Object getConstantValue() {
        Expression value = getValue();
        if (!(value instanceof QuoteExp) || value == QuoteExp.undefined_exp) {
            return null;
        }
        return ((QuoteExp) value).getValue();
    }

    public final boolean hasConstantValue() {
        Expression value = getValue();
        return (value instanceof QuoteExp) && value != QuoteExp.undefined_exp;
    }

    public boolean shouldEarlyInit() {
        return getFlag(536870912L) || isCompiletimeConstant();
    }

    public boolean isCompiletimeConstant() {
        return getFlag(JSONzip.int14) && hasConstantValue();
    }

    public final boolean needsExternalAccess() {
        long j = this.flags;
        return (j & 524320) == 524320 || (j & 2097184) == 2097184;
    }

    public final boolean needsContext() {
        Field field;
        return (this.base != null || (field = this.field) == null || field.getStaticFlag()) ? false : true;
    }

    public final boolean getFlag(long j) {
        return (j & this.flags) != 0;
    }

    public final void setFlag(boolean z, long j) {
        if (z) {
            this.flags = j | this.flags;
        } else {
            this.flags = (~j) & this.flags;
        }
    }

    public final void setFlag(long j) {
        this.flags = j | this.flags;
    }

    public final boolean isPublic() {
        return (this.context instanceof ModuleExp) && (this.flags & 32) == 0;
    }

    public final boolean isPrivate() {
        return (this.flags & 32) != 0;
    }

    public final void setPrivate(boolean z) {
        setFlag(z, 32L);
    }

    public short getAccessFlags(short s) {
        if (getFlag(251658240L)) {
            s = getFlag(16777216L) ? (short) 2 : (short) 0;
            if (getFlag(33554432L)) {
                s = (short) (s | 4);
            }
            if (getFlag(67108864L)) {
                s = (short) (s | 1);
            }
        }
        if (getFlag(VOLATILE_ACCESS)) {
            s = (short) (s | 64);
        }
        if (getFlag(TRANSIENT_ACCESS)) {
            s = (short) (s | 128);
        }
        if (getFlag(ENUM_ACCESS)) {
            s = (short) (s | 16384);
        }
        return getFlag(FINAL_ACCESS) ? (short) (s | 16) : s;
    }

    public final boolean isAlias() {
        return (this.flags & 256) != 0;
    }

    public final void setAlias(boolean z) {
        setFlag(z, 256L);
    }

    public final boolean isFluid() {
        return (this.flags & 16) != 0;
    }

    public final void setFluid(boolean z) {
        setFlag(z, 16L);
    }

    public final boolean isProcedureDecl() {
        return (this.flags & 128) != 0;
    }

    public final void setProcedureDecl(boolean z) {
        setFlag(z, 128L);
    }

    public final boolean isNamespaceDecl() {
        return (this.flags & 2097152) != 0;
    }

    public final boolean isIndirectBinding() {
        return (this.flags & 1) != 0;
    }

    public final void setIndirectBinding(boolean z) {
        setFlag(z, 1L);
    }

    public void maybeIndirectBinding(Compilation compilation) {
        if ((!isLexical() || (this.context instanceof ModuleExp)) && this.context != compilation.mainLambda) {
            return;
        }
        setIndirectBinding(true);
    }

    public final boolean getCanRead() {
        return (this.flags & 2) != 0;
    }

    public final void setCanRead(boolean z) {
        setFlag(z, 2L);
    }

    public final void setCanRead() {
        setFlag(true, 2L);
        Declaration declaration = this.base;
        if (declaration != null) {
            declaration.setCanRead();
        }
    }

    public final boolean getCanCall() {
        return (this.flags & 4) != 0;
    }

    public final void setCanCall(boolean z) {
        setFlag(z, 4L);
    }

    public final void setCanCall() {
        setFlag(true, 4L);
        Declaration declaration = this.base;
        if (declaration != null) {
            declaration.setCanRead();
        }
    }

    public final boolean getCanWrite() {
        return (this.flags & 8) != 0;
    }

    public final void setCanWrite(boolean z) {
        if (z) {
            this.flags |= 8;
        } else {
            this.flags &= -9;
        }
    }

    public final void setCanWrite() {
        this.flags |= 8;
        Declaration declaration = this.base;
        if (declaration != null) {
            declaration.setCanRead();
        }
    }

    public final boolean isThisParameter() {
        return this.symbol == ThisExp.THIS_NAME;
    }

    public boolean ignorable() {
        if (getCanRead() || isPublic() || (getCanWrite() && getFlag(65536L))) {
            return false;
        }
        if (!getCanCall()) {
            return true;
        }
        Expression value = getValue();
        if (value != null && (value instanceof LambdaExp)) {
            LambdaExp lambdaExp = (LambdaExp) value;
            return !lambdaExp.isHandlingTailCalls() || lambdaExp.getInlineOnly();
        }
        return false;
    }

    public boolean needsInit() {
        if (ignorable()) {
            return false;
        }
        return this.value != QuoteExp.nullExp || this.base == null;
    }

    public boolean isStatic() {
        Field field = this.field;
        if (field != null) {
            return field.getStaticFlag();
        }
        if (getFlag(2048L) || isCompiletimeConstant()) {
            return true;
        }
        if (getFlag(4096L)) {
            return false;
        }
        LambdaExp lambdaExpCurrentLambda = this.context.currentLambda();
        return (lambdaExpCurrentLambda instanceof ModuleExp) && ((ModuleExp) lambdaExpCurrentLambda).isStatic();
    }

    public final boolean isLexical() {
        return (this.flags & 268501008) == 0;
    }

    public static final boolean isUnknown(Declaration declaration) {
        return declaration == null || declaration.getFlag(65536L);
    }

    public void noteValue(Expression expression) {
        Expression expression2 = this.value;
        if (expression2 == QuoteExp.undefined_exp) {
            if (expression instanceof LambdaExp) {
                ((LambdaExp) expression).nameDecl = this;
            }
            this.value = expression;
        } else if (expression2 != expression) {
            if (expression2 instanceof LambdaExp) {
                ((LambdaExp) expression2).nameDecl = null;
            }
            this.value = null;
        }
    }

    public Declaration() {
        int i = counter + 1;
        counter = i;
        this.id = i;
        this.value = QuoteExp.undefined_exp;
        this.flags = 64L;
        this.makeLocationMethod = null;
    }

    public Declaration(Variable variable) {
        this(variable.getName(), variable.getType());
        this.var = variable;
    }

    public Declaration(Object obj) {
        int i = counter + 1;
        counter = i;
        this.id = i;
        this.value = QuoteExp.undefined_exp;
        this.flags = 64L;
        this.makeLocationMethod = null;
        setName(obj);
    }

    public Declaration(Object obj, Type type) {
        int i = counter + 1;
        counter = i;
        this.id = i;
        this.value = QuoteExp.undefined_exp;
        this.flags = 64L;
        this.makeLocationMethod = null;
        setName(obj);
        setType(type);
    }

    public Declaration(Object obj, Field field) {
        this(obj, field.getType());
        this.field = field;
        setSimple(false);
    }

    public void pushIndirectBinding(Compilation compilation) {
        CodeAttr code = compilation.getCode();
        code.emitPushString(getName());
        if (this.makeLocationMethod == null) {
            Type[] typeArr = {Type.pointer_type, Type.string_type};
            ClassType classType = Compilation.typeLocation;
            this.makeLocationMethod = classType.addMethod("make", typeArr, classType, 9);
        }
        code.emitInvokeStatic(this.makeLocationMethod);
    }

    public final Variable allocateVariable(CodeAttr codeAttr) {
        if (!isSimple() || this.var == null) {
            String strMangleNameIfNeeded = this.symbol != null ? Compilation.mangleNameIfNeeded(getName()) : null;
            if (isAlias() && (getValue() instanceof ReferenceExp)) {
                Declaration declarationFollowAliases = followAliases(this);
                this.var = declarationFollowAliases != null ? declarationFollowAliases.var : null;
            } else {
                this.var = this.context.getVarScope().addVariable(codeAttr, isIndirectBinding() ? Compilation.typeLocation : getType().getImplementationType(), strMangleNameIfNeeded);
            }
        }
        return this.var;
    }

    public final void setLocation(SourceLocator sourceLocator) {
        this.filename = sourceLocator.getFileName();
        setLine(sourceLocator.getLineNumber(), sourceLocator.getColumnNumber());
    }

    public final void setFile(String str) {
        this.filename = str;
    }

    public final void setLine(int i, int i2) {
        if (i < 0) {
            i = 0;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        this.position = (i << 12) + i2;
    }

    public final void setLine(int i) {
        setLine(i, 0);
    }

    @Override // gnu.text.SourceLocator
    public final String getFileName() {
        return this.filename;
    }

    @Override // gnu.text.SourceLocator, org.xml.sax.Locator
    public String getSystemId() {
        return this.filename;
    }

    @Override // gnu.text.SourceLocator, org.xml.sax.Locator
    public final int getLineNumber() {
        int i = this.position >> 12;
        if (i == 0) {
            return -1;
        }
        return i;
    }

    @Override // gnu.text.SourceLocator, org.xml.sax.Locator
    public final int getColumnNumber() {
        int i = this.position & 4095;
        if (i == 0) {
            return -1;
        }
        return i;
    }

    public void printInfo(OutPort outPort) throws IOException {
        StringBuffer stringBuffer = new StringBuffer();
        printInfo(stringBuffer);
        outPort.print(stringBuffer.toString());
    }

    public void printInfo(StringBuffer stringBuffer) {
        stringBuffer.append(this.symbol);
        stringBuffer.append('/');
        stringBuffer.append(this.id);
        stringBuffer.append("/fl:");
        stringBuffer.append(Long.toHexString(this.flags));
        if (ignorable()) {
            stringBuffer.append("(ignorable)");
        }
        Expression expression = this.typeExp;
        Type type = getType();
        if (expression != null && !(expression instanceof QuoteExp)) {
            stringBuffer.append("::");
            stringBuffer.append(expression);
        } else if (this.type != null && type != Type.pointer_type) {
            stringBuffer.append("::");
            stringBuffer.append(type.getName());
        }
        if (this.base != null) {
            stringBuffer.append("(base:#");
            stringBuffer.append(this.base.id);
            stringBuffer.append(')');
        }
    }

    public String toString() {
        return "Declaration[" + this.symbol + '/' + this.id + ']';
    }

    public static Declaration followAliases(Declaration declaration) {
        Declaration declaration2;
        while (declaration != null && declaration.isAlias()) {
            Expression value = declaration.getValue();
            if (!(value instanceof ReferenceExp) || (declaration2 = ((ReferenceExp) value).binding) == null) {
                break;
            }
            declaration = declaration2;
        }
        return declaration;
    }

    public void makeField(Compilation compilation, Expression expression) {
        setSimple(false);
        makeField(compilation.mainClass, compilation, expression);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0079  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void makeField(gnu.bytecode.ClassType r9, gnu.expr.Compilation r10, gnu.expr.Expression r11) {
        /*
            Method dump skipped, instructions count: 369
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.expr.Declaration.makeField(gnu.bytecode.ClassType, gnu.expr.Compilation, gnu.expr.Expression):void");
    }

    public Location makeIndirectLocationFor() {
        Object obj = this.symbol;
        return Location.make(obj instanceof Symbol ? (Symbol) obj : Namespace.EmptyNamespace.getSymbol(obj.toString().intern()));
    }

    public static Declaration getDeclarationFromStatic(String str, String str2) {
        Declaration declaration = new Declaration(str2, ClassType.make(str).getDeclaredField(str2));
        declaration.setFlag(18432L);
        return declaration;
    }

    public static Declaration getDeclarationValueFromStatic(String str, String str2, String str3) throws IllegalAccessException, IllegalArgumentException {
        try {
            Object obj = Class.forName(str).getDeclaredField(str2).get(null);
            Declaration declaration = new Declaration(str3, ClassType.make(str).getDeclaredField(str2));
            declaration.noteValue(new QuoteExp(obj));
            declaration.setFlag(18432L);
            return declaration;
        } catch (Exception e) {
            throw new WrappedException(e);
        }
    }

    public static Declaration getDeclaration(Named named) {
        return getDeclaration(named, named.getName());
    }

    public static Declaration getDeclaration(Object obj, String str) {
        Class procedureClass;
        Declaration declaration = null;
        Field declaredField = (str == null || (procedureClass = PrimProcedure.getProcedureClass(obj)) == null) ? null : ((ClassType) Type.make(procedureClass)).getDeclaredField(Compilation.mangleNameIfNeeded(str));
        if (declaredField != null) {
            int modifiers = declaredField.getModifiers();
            if ((modifiers & 8) != 0) {
                declaration = new Declaration(str, declaredField);
                declaration.noteValue(new QuoteExp(obj));
                if ((modifiers & 16) != 0) {
                    declaration.setFlag(JSONzip.int14);
                }
            }
        }
        return declaration;
    }
}
