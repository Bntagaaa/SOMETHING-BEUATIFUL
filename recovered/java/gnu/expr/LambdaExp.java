package gnu.expr;

import _COROUTINE.a;
import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.Field;
import gnu.bytecode.Method;
import gnu.bytecode.ObjectType;
import gnu.bytecode.Type;
import gnu.bytecode.Variable;
import gnu.lists.LList;
import gnu.mapping.CallContext;
import gnu.mapping.OutPort;
import gnu.mapping.Procedure;
import gnu.mapping.PropertySet;
import gnu.mapping.Values;
import gnu.mapping.WrappedException;
import gnu.mapping.WrongArguments;
import java.io.IOException;
import java.util.Set;
import java.util.Vector;
import kotlin.text.Typography;

/* loaded from: classes2.dex */
public class LambdaExp extends ScopeExp {
    public static final int ATTEMPT_INLINE = 4096;
    static final int CANNOT_INLINE = 32;
    static final int CAN_CALL = 4;
    static final int CAN_READ = 2;
    static final int CLASS_METHOD = 64;
    static final int DEFAULT_CAPTURES_ARG = 512;
    static final int IMPORTS_LEX_VARS = 8;
    static final int INLINE_ONLY = 8192;
    static final int METHODS_COMPILED = 128;
    static final int NEEDS_STATIC_LINK = 16;
    protected static final int NEXT_AVAIL_FLAG = 16384;
    public static final int NO_FIELD = 256;
    public static final int OVERLOADABLE_FIELD = 2048;
    public static final int SEQUENCE_RESULT = 1024;
    static Method searchForKeywordMethod3;
    static Method searchForKeywordMethod4;
    static final ApplyExp unknownContinuation = new ApplyExp((Expression) null, (Expression[]) null);
    Vector applyMethods;
    Variable argsArray;
    public Expression body;
    Declaration capturedVars;
    Variable closureEnv;
    public Field closureEnvField;
    public Expression[] defaultArgs;
    private Declaration firstArgsArrayArg;
    public LambdaExp firstChild;
    Variable heapFrame;
    Initializer initChain;
    public LambdaExp inlineHome;
    public Keyword[] keywords;
    public int max_args;
    public int min_args;
    public Declaration nameDecl;
    public LambdaExp nextSibling;
    Method[] primBodyMethods;
    Method[] primMethods;
    Object[] properties;
    public Expression returnContinuation;
    public Type returnType;
    int selectorValue;
    public Field staticLinkField;
    Set<LambdaExp> tailCallers;
    Procedure thisValue;
    Variable thisVariable;
    Expression[] throwsSpecification;
    ClassType type = Compilation.typeProcedure;

    @Override // gnu.expr.Expression
    public boolean side_effects() {
        return false;
    }

    public void capture(Declaration declaration) {
        if (declaration.isSimple()) {
            if (this.capturedVars == null && !declaration.isStatic() && !(this instanceof ModuleExp) && !(this instanceof ClassExp)) {
                this.heapFrame = new Variable("heapFrame");
            }
            declaration.setSimple(false);
            if (declaration.isPublic()) {
                return;
            }
            declaration.nextCapturedVar = this.capturedVars;
            this.capturedVars = declaration;
        }
    }

    public void setExceptions(Expression[] expressionArr) {
        this.throwsSpecification = expressionArr;
    }

    public final boolean getInlineOnly() {
        return (this.flags & 8192) != 0;
    }

    public final void setInlineOnly(boolean z) {
        setFlag(z, 8192);
    }

    public final boolean getNeedsClosureEnv() {
        return (this.flags & 24) != 0;
    }

    public final boolean getNeedsStaticLink() {
        return (this.flags & 16) != 0;
    }

    public final void setNeedsStaticLink(boolean z) {
        if (z) {
            this.flags |= 16;
        } else {
            this.flags &= -17;
        }
    }

    public final boolean getImportsLexVars() {
        return (this.flags & 8) != 0;
    }

    public final void setImportsLexVars(boolean z) {
        if (z) {
            this.flags |= 8;
        } else {
            this.flags &= -9;
        }
    }

    public final void setImportsLexVars() {
        int i = this.flags;
        this.flags = i | 8;
        if ((i & 8) != 0 || this.nameDecl == null) {
            return;
        }
        setCallersNeedStaticLink();
    }

    public final void setNeedsStaticLink() {
        int i = this.flags;
        this.flags = i | 16;
        if ((i & 16) != 0 || this.nameDecl == null) {
            return;
        }
        setCallersNeedStaticLink();
    }

    public void setCallersNeedStaticLink() {
        LambdaExp lambdaExpOuterLambda = outerLambda();
        for (ApplyExp applyExp = this.nameDecl.firstCall; applyExp != null; applyExp = applyExp.nextCall) {
            for (LambdaExp lambdaExpOuterLambda2 = applyExp.context; lambdaExpOuterLambda2 != lambdaExpOuterLambda && !(lambdaExpOuterLambda2 instanceof ModuleExp); lambdaExpOuterLambda2 = lambdaExpOuterLambda2.outerLambda()) {
                lambdaExpOuterLambda2.setNeedsStaticLink();
            }
        }
    }

    public final boolean getCanRead() {
        return (this.flags & 2) != 0;
    }

    public final void setCanRead(boolean z) {
        if (z) {
            this.flags |= 2;
        } else {
            this.flags &= -3;
        }
    }

    public final boolean getCanCall() {
        return (this.flags & 4) != 0;
    }

    public final void setCanCall(boolean z) {
        if (z) {
            this.flags |= 4;
        } else {
            this.flags &= -5;
        }
    }

    public final boolean isClassMethod() {
        return (this.flags & 64) != 0;
    }

    public final void setClassMethod(boolean z) {
        if (z) {
            this.flags |= 64;
        } else {
            this.flags &= -65;
        }
    }

    public final boolean isModuleBody() {
        return this instanceof ModuleExp;
    }

    public final boolean isClassGenerated() {
        return isModuleBody() || (this instanceof ClassExp);
    }

    public boolean isAbstract() {
        return this.body == QuoteExp.abstractExp;
    }

    public int getCallConvention() {
        int i;
        if (isModuleBody()) {
            int i2 = Compilation.defaultCallConvention;
            if (i2 >= 2) {
                return i2;
            }
            return 2;
        }
        if (isClassMethod() || (i = Compilation.defaultCallConvention) == 0) {
            return 1;
        }
        return i;
    }

    public final boolean isHandlingTailCalls() {
        if (isModuleBody()) {
            return true;
        }
        return Compilation.defaultCallConvention >= 3 && !isClassMethod();
    }

    public final boolean variable_args() {
        return this.max_args < 0;
    }

    public ClassType getCompiledClassType(Compilation compilation) {
        ClassType classType = this.type;
        if (classType != Compilation.typeProcedure) {
            return classType;
        }
        throw new Error("internal error: getCompiledClassType");
    }

    @Override // gnu.expr.Expression
    public Type getType() {
        return this.type;
    }

    public ClassType getClassType() {
        return this.type;
    }

    public void setType(ClassType classType) {
        this.type = classType;
    }

    public int incomingArgs() {
        int i = this.min_args;
        int i2 = this.max_args;
        if (i != i2 || i2 > 4 || i2 <= 0) {
            return 1;
        }
        return i2;
    }

    public int getSelectorValue(Compilation compilation) {
        int i = this.selectorValue;
        if (i != 0) {
            return i;
        }
        int i2 = compilation.maxSelectorValue;
        compilation.maxSelectorValue = this.primMethods.length + i2;
        int i3 = i2 + 1;
        this.selectorValue = i3;
        return i3;
    }

    public final Method getMethod(int i) {
        int i2;
        int i3;
        Method[] methodArr = this.primMethods;
        if (methodArr == null || (((i2 = this.max_args) >= 0 && i > i2) || (i3 = i - this.min_args) < 0)) {
            return null;
        }
        int length = methodArr.length;
        if (i3 >= length) {
            i3 = length - 1;
        }
        return methodArr[i3];
    }

    public final Method getMainMethod() {
        Method[] methodArr = this.primBodyMethods;
        if (methodArr == null) {
            return null;
        }
        return methodArr[methodArr.length - 1];
    }

    public final Type restArgType() {
        int i = this.min_args;
        int i2 = this.max_args;
        if (i == i2) {
            return null;
        }
        Method[] methodArr = this.primMethods;
        if (methodArr == null) {
            throw new Error("internal error - restArgType");
        }
        if (i2 >= 0 && methodArr.length > i2 - i) {
            return null;
        }
        Method method = methodArr[methodArr.length - 1];
        Type[] parameterTypes = method.getParameterTypes();
        int length = parameterTypes.length;
        int i3 = length - 1;
        if (method.getName().endsWith("$X")) {
            i3 = length - 2;
        }
        return parameterTypes[i3];
    }

    public LambdaExp outerLambda() {
        ScopeExp scopeExp = this.outer;
        if (scopeExp == null) {
            return null;
        }
        return scopeExp.currentLambda();
    }

    public LambdaExp outerLambdaNotInline() {
        ScopeExp scopeExp = this;
        while (true) {
            scopeExp = scopeExp.outer;
            if (scopeExp == null) {
                return null;
            }
            if (scopeExp instanceof LambdaExp) {
                LambdaExp lambdaExp = (LambdaExp) scopeExp;
                if (!lambdaExp.getInlineOnly()) {
                    return lambdaExp;
                }
            }
        }
    }

    public boolean inlinedIn(LambdaExp lambdaExp) {
        for (LambdaExp caller = this; caller.getInlineOnly(); caller = caller.getCaller()) {
            if (caller == lambdaExp) {
                return true;
            }
        }
        return false;
    }

    public LambdaExp getCaller() {
        return this.inlineHome;
    }

    public Variable declareThis(ClassType classType) {
        if (this.thisVariable == null) {
            this.thisVariable = new Variable("this");
            getVarScope().addVariableAfter(null, this.thisVariable);
            this.thisVariable.setParameter(true);
        }
        if (this.thisVariable.getType() == null) {
            this.thisVariable.setType(classType);
        }
        Declaration declaration = this.decls;
        if (declaration != null && declaration.isThisParameter()) {
            this.decls.var = this.thisVariable;
        }
        return this.thisVariable;
    }

    public Variable declareClosureEnv() {
        if (this.closureEnv == null && getNeedsClosureEnv()) {
            LambdaExp lambdaExpOuterLambda = outerLambda();
            if (lambdaExpOuterLambda instanceof ClassExp) {
                lambdaExpOuterLambda = lambdaExpOuterLambda.outerLambda();
            }
            Variable variable = lambdaExpOuterLambda.heapFrame;
            if (variable == null) {
                variable = lambdaExpOuterLambda.closureEnv;
            }
            if (isClassMethod() && !"*init*".equals(getName())) {
                this.closureEnv = declareThis(this.type);
            } else {
                if (lambdaExpOuterLambda.heapFrame == null && !lambdaExpOuterLambda.getNeedsStaticLink() && !(lambdaExpOuterLambda instanceof ModuleExp)) {
                    this.closureEnv = null;
                } else if (!isClassGenerated() && !getInlineOnly()) {
                    Method mainMethod = getMainMethod();
                    boolean zEquals = "*init*".equals(getName());
                    if (!mainMethod.getStaticFlag() && !zEquals) {
                        this.closureEnv = declareThis(mainMethod.getDeclaringClass());
                    } else {
                        this.closureEnv = new Variable("closureEnv", mainMethod.getParameterTypes()[0]);
                        getVarScope().addVariableAfter(zEquals ? declareThis(mainMethod.getDeclaringClass()) : null, this.closureEnv);
                        this.closureEnv.setParameter(true);
                    }
                } else if (inlinedIn(lambdaExpOuterLambda)) {
                    this.closureEnv = variable;
                } else {
                    this.closureEnv = new Variable("closureEnv", variable.getType());
                    getVarScope().addVariable(this.closureEnv);
                }
            }
        }
        return this.closureEnv;
    }

    public LambdaExp() {
    }

    public LambdaExp(int i) {
        this.min_args = i;
        this.max_args = i;
    }

    public LambdaExp(Expression expression) {
        this.body = expression;
    }

    public void loadHeapFrame(Compilation compilation) {
        ClassType classType;
        LambdaExp lambdaExpOuterLambda = compilation.curLambda;
        while (lambdaExpOuterLambda != this && lambdaExpOuterLambda.getInlineOnly()) {
            lambdaExpOuterLambda = lambdaExpOuterLambda.getCaller();
        }
        CodeAttr code = compilation.getCode();
        Variable variable = lambdaExpOuterLambda.heapFrame;
        if (variable != null && this == lambdaExpOuterLambda) {
            code.emitLoad(variable);
            return;
        }
        Variable variable2 = lambdaExpOuterLambda.closureEnv;
        if (variable2 != null) {
            code.emitLoad(variable2);
            classType = (ClassType) lambdaExpOuterLambda.closureEnv.getType();
        } else {
            code.emitPushThis();
            classType = compilation.curClass;
        }
        while (lambdaExpOuterLambda != this) {
            Field field = lambdaExpOuterLambda.staticLinkField;
            if (field != null && field.getDeclaringClass() == classType) {
                code.emitGetField(field);
                classType = (ClassType) field.getType();
            }
            lambdaExpOuterLambda = lambdaExpOuterLambda.outerLambda();
        }
    }

    public Declaration getArg(int i) {
        for (Declaration declarationFirstDecl = firstDecl(); declarationFirstDecl != null; declarationFirstDecl = declarationFirstDecl.nextDecl()) {
            if (i == 0) {
                return declarationFirstDecl;
            }
            i--;
        }
        throw new Error("internal error - getArg");
    }

    public void compileEnd(Compilation compilation) {
        CodeAttr code = compilation.getCode();
        if (!getInlineOnly()) {
            if (compilation.method.reachableHere() && (Compilation.defaultCallConvention < 3 || isModuleBody() || isClassMethod() || isHandlingTailCalls())) {
                code.emitReturn();
            }
            popScope(code);
            code.popScope();
        }
        for (LambdaExp lambdaExp = this.firstChild; lambdaExp != null; lambdaExp = lambdaExp.nextSibling) {
            if (!lambdaExp.getCanRead() && !lambdaExp.getInlineOnly()) {
                lambdaExp.compileAsMethod(compilation);
            }
        }
        if (this.heapFrame != null) {
            compilation.generateConstructor(this);
        }
    }

    public void generateApplyMethods(Compilation compilation) {
        compilation.generateMatchMethods(this);
        if (Compilation.defaultCallConvention >= 2) {
            compilation.generateApplyMethodsWithContext(this);
        } else {
            compilation.generateApplyMethodsWithoutContext(this);
        }
    }

    public Field allocFieldFor(Compilation compilation) {
        String string;
        Field field;
        Declaration declaration = this.nameDecl;
        if (declaration != null && (field = declaration.field) != null) {
            return field;
        }
        boolean needsClosureEnv = getNeedsClosureEnv();
        ClassType heapFrameType = needsClosureEnv ? getOwningLambda().getHeapFrameType() : compilation.mainClass;
        String name = getName();
        String strMangleNameIfNeeded = name == null ? "lambda" : Compilation.mangleNameIfNeeded(name);
        Declaration declaration2 = this.nameDecl;
        int i = 24;
        if (declaration2 == null || !(declaration2.context instanceof ModuleExp)) {
            StringBuilder sbQ = a.q(strMangleNameIfNeeded, "$Fn");
            int i2 = compilation.localFieldIndex + 1;
            compilation.localFieldIndex = i2;
            sbQ.append(i2);
            strMangleNameIfNeeded = sbQ.toString();
            if (needsClosureEnv) {
                i = 16;
            }
        } else {
            boolean zNeedsExternalAccess = declaration2.needsExternalAccess();
            if (zNeedsExternalAccess) {
                strMangleNameIfNeeded = a.i(Declaration.PRIVATE_PREFIX, strMangleNameIfNeeded);
            }
            if (!this.nameDecl.getFlag(2048L)) {
                i = 16;
            } else if (!((ModuleExp) this.nameDecl.context).isStatic()) {
                i = 8;
            }
            if (!this.nameDecl.isPrivate() || zNeedsExternalAccess || compilation.immediate) {
                i |= 1;
            }
            if ((this.flags & 2048) != 0) {
                int i3 = this.min_args;
                int i4 = i3 == this.max_args ? i3 : 1;
                while (true) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(strMangleNameIfNeeded);
                    sb.append(Typography.dollar);
                    int i5 = i4 + 1;
                    sb.append(i4);
                    string = sb.toString();
                    if (heapFrameType.getDeclaredField(string) == null) {
                        break;
                    }
                    i4 = i5;
                }
                strMangleNameIfNeeded = string;
            }
        }
        Field fieldAddField = heapFrameType.addField(strMangleNameIfNeeded, Compilation.typeModuleMethod, i);
        Declaration declaration3 = this.nameDecl;
        if (declaration3 != null) {
            declaration3.field = fieldAddField;
        }
        return fieldAddField;
    }

    public final void addApplyMethod(Compilation compilation, Field field) {
        LambdaExp module;
        if (field != null && field.getStaticFlag()) {
            module = compilation.getModule();
        } else {
            LambdaExp lambdaExpOuterLambda = this;
            do {
                lambdaExpOuterLambda = lambdaExpOuterLambda.outerLambda();
                if (lambdaExpOuterLambda instanceof ModuleExp) {
                    break;
                }
            } while (lambdaExpOuterLambda.heapFrame == null);
            module = !lambdaExpOuterLambda.getHeapFrameType().getSuperclass().isSubtype(Compilation.typeModuleBody) ? compilation.getModule() : lambdaExpOuterLambda;
        }
        if (module.applyMethods == null) {
            module.applyMethods = new Vector();
        }
        module.applyMethods.addElement(this);
    }

    public Field compileSetField(Compilation compilation) {
        if (this.primMethods == null) {
            allocMethod(outerLambda(), compilation);
        }
        Field fieldAllocFieldFor = allocFieldFor(compilation);
        if (compilation.usingCPStyle()) {
            compile(compilation, Type.objectType);
        } else {
            compileAsMethod(compilation);
            addApplyMethod(compilation, fieldAllocFieldFor);
        }
        return new ProcInitializer(this, compilation, fieldAllocFieldFor).field;
    }

    @Override // gnu.expr.Expression
    public void compile(Compilation compilation, Target target) {
        if (target instanceof IgnoreTarget) {
            return;
        }
        CodeAttr code = compilation.getCode();
        LambdaExp lambdaExpOuterLambda = outerLambda();
        ClassType classType = Compilation.typeModuleMethod;
        if ((this.flags & 256) != 0 || (compilation.immediate && (lambdaExpOuterLambda instanceof ModuleExp))) {
            if (this.primMethods == null) {
                allocMethod(outerLambda(), compilation);
            }
            compileAsMethod(compilation);
            addApplyMethod(compilation, null);
            ProcInitializer.emitLoadModuleMethod(this, compilation);
        } else {
            Field fieldCompileSetField = compileSetField(compilation);
            if (fieldCompileSetField.getStaticFlag()) {
                code.emitGetStatic(fieldCompileSetField);
            } else {
                LambdaExp lambdaExp = compilation.curLambda;
                Variable variable = lambdaExp.heapFrame;
                if (variable == null) {
                    variable = lambdaExp.closureEnv;
                }
                code.emitLoad(variable);
                code.emitGetField(fieldCompileSetField);
            }
        }
        target.compileFromStack(compilation, classType);
    }

    public ClassType getHeapFrameType() {
        if ((this instanceof ModuleExp) || (this instanceof ClassExp)) {
            return (ClassType) getType();
        }
        return (ClassType) this.heapFrame.getType();
    }

    public LambdaExp getOwningLambda() {
        for (ScopeExp scopeExp = this.outer; scopeExp != null; scopeExp = scopeExp.outer) {
            if ((scopeExp instanceof ModuleExp) || (((scopeExp instanceof ClassExp) && getNeedsClosureEnv()) || ((scopeExp instanceof LambdaExp) && ((LambdaExp) scopeExp).heapFrame != null))) {
                return (LambdaExp) scopeExp;
            }
        }
        return null;
    }

    public void addMethodFor(Compilation compilation, ObjectType objectType) {
        ClassType heapFrameType;
        ScopeExp scopeExp = this;
        while (scopeExp != null && !(scopeExp instanceof ClassExp)) {
            scopeExp = scopeExp.outer;
        }
        if (scopeExp != null) {
            heapFrameType = ((ClassExp) scopeExp).instanceType;
        } else {
            heapFrameType = getOwningLambda().getHeapFrameType();
        }
        addMethodFor(heapFrameType, compilation, objectType);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0050  */
    /* JADX WARN: Type inference failed for: r15v28, types: [short] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addMethodFor(gnu.bytecode.ClassType r31, gnu.expr.Compilation r32, gnu.bytecode.ObjectType r33) {
        /*
            Method dump skipped, instructions count: 1024
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.expr.LambdaExp.addMethodFor(gnu.bytecode.ClassType, gnu.expr.Compilation, gnu.bytecode.ObjectType):void");
    }

    public void allocChildClasses(Compilation compilation) {
        Declaration declaration;
        Method mainMethod = getMainMethod();
        if (mainMethod != null && !mainMethod.getStaticFlag()) {
            declareThis(mainMethod.getDeclaringClass());
        }
        Declaration declarationFirstDecl = firstDecl();
        while (true) {
            if (declarationFirstDecl == this.firstArgsArrayArg && this.argsArray != null) {
                getVarScope().addVariable(this.argsArray);
            }
            if (!getInlineOnly() && getCallConvention() >= 2 && ((declaration = this.firstArgsArrayArg) != null ? !(this.argsArray == null ? declarationFirstDecl != declaration.nextDecl() : declarationFirstDecl != declaration) : declarationFirstDecl == null)) {
                getVarScope().addVariable(null, Compilation.typeCallContext, "$ctx").setParameter(true);
            }
            if (declarationFirstDecl != null) {
                if (declarationFirstDecl.var == null && (!getInlineOnly() || !declarationFirstDecl.ignorable())) {
                    if (declarationFirstDecl.isSimple() && !declarationFirstDecl.isIndirectBinding()) {
                        declarationFirstDecl.allocateVariable(null);
                    } else {
                        Variable variableAddVariable = getVarScope().addVariable(null, declarationFirstDecl.getType().getImplementationType(), Compilation.mangleName(declarationFirstDecl.getName()).intern());
                        declarationFirstDecl.var = variableAddVariable;
                        variableAddVariable.setParameter(true);
                    }
                }
                declarationFirstDecl = declarationFirstDecl.nextDecl();
            } else {
                declareClosureEnv();
                allocFrame(compilation);
                allocChildMethods(compilation);
                return;
            }
        }
    }

    public void allocMethod(LambdaExp lambdaExp, Compilation compilation) {
        ClassType compiledClassType;
        Variable variable;
        if (!getNeedsClosureEnv()) {
            compiledClassType = null;
        } else if ((lambdaExp instanceof ClassExp) || (lambdaExp instanceof ModuleExp)) {
            compiledClassType = lambdaExp.getCompiledClassType(compilation);
        } else {
            while (true) {
                variable = lambdaExp.heapFrame;
                if (variable != null) {
                    break;
                } else {
                    lambdaExp = lambdaExp.outerLambda();
                }
            }
            compiledClassType = (ClassType) variable.getType();
        }
        addMethodFor(compilation, compiledClassType);
    }

    public void allocChildMethods(Compilation compilation) {
        ClassType classType;
        for (LambdaExp lambdaExp = this.firstChild; lambdaExp != null; lambdaExp = lambdaExp.nextSibling) {
            if (!lambdaExp.isClassGenerated() && !lambdaExp.getInlineOnly() && lambdaExp.nameDecl != null) {
                lambdaExp.allocMethod(this, compilation);
            }
            if (lambdaExp instanceof ClassExp) {
                ClassExp classExp = (ClassExp) lambdaExp;
                if (classExp.getNeedsClosureEnv()) {
                    if ((this instanceof ModuleExp) || (this instanceof ClassExp)) {
                        classType = (ClassType) getType();
                    } else {
                        Variable variable = this.heapFrame;
                        if (variable == null) {
                            variable = this.closureEnv;
                        }
                        classType = (ClassType) variable.getType();
                    }
                    Field outerLink = classExp.instanceType.setOuterLink(classType);
                    classExp.staticLinkField = outerLink;
                    classExp.closureEnvField = outerLink;
                }
            }
        }
    }

    public void allocFrame(Compilation compilation) {
        ClassType compiledClassType;
        if (this.heapFrame != null) {
            if ((this instanceof ModuleExp) || (this instanceof ClassExp)) {
                compiledClassType = getCompiledClassType(compilation);
            } else {
                compiledClassType = new ClassType(compilation.generateClassName("frame"));
                compiledClassType.setSuper(compilation.getModuleType());
                compilation.addClass(compiledClassType);
            }
            this.heapFrame.setType(compiledClassType);
        }
    }

    public void allocParameters(Compilation compilation) {
        CodeAttr code = compilation.getCode();
        code.locals.enterScope(getVarScope());
        int lineNumber = getLineNumber();
        if (lineNumber > 0) {
            code.putLineNumber(getFileName(), lineNumber);
        }
        Variable variable = this.heapFrame;
        if (variable != null) {
            variable.allocateLocal(code);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:121:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x026b  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0288  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void enterFunction(gnu.expr.Compilation r26) {
        /*
            Method dump skipped, instructions count: 670
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.expr.LambdaExp.enterFunction(gnu.expr.Compilation):void");
    }

    public void compileAsMethod(Compilation compilation) {
        long[] jArr;
        boolean z;
        int i;
        long[] jArr2;
        boolean z2;
        QuoteExp quoteExp;
        if ((this.flags & 128) != 0 || isAbstract()) {
            return;
        }
        this.flags |= 128;
        Method[] methodArr = this.primMethods;
        if (methodArr == null) {
            return;
        }
        Method method = compilation.method;
        LambdaExp lambdaExp = compilation.curLambda;
        compilation.curLambda = this;
        int i2 = 0;
        boolean staticFlag = methodArr[0].getStaticFlag();
        int length = this.primMethods.length - 1;
        Type typeRestArgType = restArgType();
        if (length > 0) {
            jArr = new long[this.min_args + length];
            Declaration declarationFirstDecl = firstDecl();
            for (int i3 = 0; i3 < this.min_args + length; i3++) {
                jArr[i3] = declarationFirstDecl.flags;
                declarationFirstDecl = declarationFirstDecl.nextDecl();
            }
        } else {
            jArr = null;
        }
        boolean z3 = getCallConvention() >= 2;
        int i4 = 0;
        while (i4 <= length) {
            Method method2 = this.primMethods[i4];
            compilation.method = method2;
            if (i4 < length) {
                CodeAttr codeAttrStartCode = method2.startCode();
                int i5 = i4 + 1;
                while (i5 < length && (this.defaultArgs[i5] instanceof QuoteExp)) {
                    i5++;
                }
                boolean z4 = i5 == length && typeRestArgType != null;
                Variable variable = compilation.callContextVar;
                Variable arg = codeAttrStartCode.getArg(i2);
                if (!staticFlag) {
                    codeAttrStartCode.emitPushThis();
                    if (getNeedsClosureEnv()) {
                        this.closureEnv = arg;
                    }
                    arg = codeAttrStartCode.getArg(1);
                }
                z = staticFlag;
                i = length;
                Declaration declarationFirstDecl2 = firstDecl();
                int i6 = 0;
                while (i6 < this.min_args + i4) {
                    declarationFirstDecl2.flags |= 64;
                    declarationFirstDecl2.var = arg;
                    codeAttrStartCode.emitLoad(arg);
                    arg = arg.nextVar();
                    i6++;
                    declarationFirstDecl2 = declarationFirstDecl2.nextDecl();
                    jArr = jArr;
                    z3 = z3;
                }
                jArr2 = jArr;
                z2 = z3;
                compilation.callContextVar = z2 ? arg : null;
                int i7 = i4;
                while (i7 < i5) {
                    this.defaultArgs[i7].compile(compilation, StackTarget.getInstance(declarationFirstDecl2.getType()));
                    i7++;
                    declarationFirstDecl2 = declarationFirstDecl2.nextDecl();
                }
                if (z4) {
                    String name = typeRestArgType.getName();
                    if ("gnu.lists.LList".equals(name)) {
                        quoteExp = new QuoteExp(LList.Empty);
                    } else {
                        if (!"java.lang.Object[]".equals(name)) {
                            throw new Error(a.i("unimplemented #!rest type ", name));
                        }
                        quoteExp = new QuoteExp(Values.noArgs);
                    }
                    quoteExp.compile(compilation, typeRestArgType);
                }
                if (z2) {
                    codeAttrStartCode.emitLoad(arg);
                }
                if (z) {
                    codeAttrStartCode.emitInvokeStatic(this.primMethods[i5]);
                } else {
                    codeAttrStartCode.emitInvokeVirtual(this.primMethods[i5]);
                }
                codeAttrStartCode.emitReturn();
                this.closureEnv = null;
                compilation.callContextVar = variable;
            } else {
                z = staticFlag;
                i = length;
                jArr2 = jArr;
                z2 = z3;
                if (jArr2 != null) {
                    Declaration declarationFirstDecl3 = firstDecl();
                    for (int i8 = 0; i8 < this.min_args + i; i8++) {
                        declarationFirstDecl3.flags = jArr2[i8];
                        declarationFirstDecl3.var = null;
                        declarationFirstDecl3 = declarationFirstDecl3.nextDecl();
                    }
                }
                compilation.method.initCode();
                allocChildClasses(compilation);
                allocParameters(compilation);
                enterFunction(compilation);
                compileBody(compilation);
                compileEnd(compilation);
                generateApplyMethods(compilation);
            }
            i4++;
            jArr = jArr2;
            staticFlag = z;
            length = i;
            z3 = z2;
            i2 = 0;
        }
        compilation.method = method;
        compilation.curLambda = lambdaExp;
    }

    public void compileBody(Compilation compilation) {
        Target targetPushValue;
        Variable variable = compilation.callContextVar;
        compilation.callContextVar = null;
        if (getCallConvention() >= 2) {
            Variable variableLookup = getVarScope().lookup("$ctx");
            if (variableLookup != null && variableLookup.getType() == Compilation.typeCallContext) {
                compilation.callContextVar = variableLookup;
            }
            targetPushValue = ConsumerTarget.makeContextTarget(compilation);
        } else {
            targetPushValue = Target.pushValue(getReturnType());
        }
        Expression expression = this.body;
        expression.compileWithPosition(compilation, targetPushValue, expression.getLineNumber() > 0 ? this.body : this);
        compilation.callContextVar = variable;
    }

    @Override // gnu.expr.ScopeExp, gnu.expr.Expression
    public <R, D> R visit(ExpVisitor<R, D> expVisitor, D d) {
        LambdaExp lambdaExp;
        Compilation compilation = expVisitor.getCompilation();
        if (compilation == null) {
            lambdaExp = null;
        } else {
            lambdaExp = compilation.curLambda;
            compilation.curLambda = this;
        }
        try {
            return expVisitor.visitLambdaExp(this, d);
        } finally {
            if (compilation != null) {
                compilation.curLambda = lambdaExp;
            }
        }
    }

    @Override // gnu.expr.Expression
    public <R, D> void visitChildren(ExpVisitor<R, D> expVisitor, D d) {
        visitChildrenOnly(expVisitor, d);
        visitProperties(expVisitor, d);
    }

    public final <R, D> void visitChildrenOnly(ExpVisitor<R, D> expVisitor, D d) {
        Expression expression;
        LambdaExp lambdaExp = expVisitor.currentLambda;
        expVisitor.currentLambda = this;
        try {
            this.throwsSpecification = expVisitor.visitExps(this.throwsSpecification, d);
            expVisitor.visitDefaultArgs(this, d);
            if (expVisitor.exitValue == null && (expression = this.body) != null) {
                this.body = expVisitor.update(expression, expVisitor.visit(expression, d));
            }
        } finally {
            expVisitor.currentLambda = lambdaExp;
        }
    }

    public final <R, D> void visitProperties(ExpVisitor<R, D> expVisitor, D d) {
        Object[] objArr = this.properties;
        if (objArr != null) {
            int length = objArr.length;
            for (int i = 1; i < length; i += 2) {
                Object[] objArr2 = this.properties;
                Object obj = objArr2[i];
                if (obj instanceof Expression) {
                    objArr2[i] = expVisitor.visitAndUpdate((Expression) obj, d);
                }
            }
        }
    }

    @Override // gnu.expr.Expression
    public boolean mustCompile() {
        Keyword[] keywordArr = this.keywords;
        if (keywordArr != null && keywordArr.length > 0) {
            return true;
        }
        Expression[] expressionArr = this.defaultArgs;
        if (expressionArr == null) {
            return false;
        }
        int length = expressionArr.length;
        while (true) {
            length--;
            if (length < 0) {
                return false;
            }
            Expression expression = this.defaultArgs[length];
            if (expression != null && !(expression instanceof QuoteExp)) {
                return true;
            }
        }
    }

    @Override // gnu.expr.Expression, gnu.mapping.Procedure
    public void apply(CallContext callContext) throws Throwable {
        setIndexes();
        callContext.writeValue(new Closure(this, callContext));
    }

    public Object evalDefaultArg(int i, CallContext callContext) {
        try {
            return this.defaultArgs[i].eval(callContext);
        } catch (Throwable th) {
            throw new WrappedException("error evaluating default argument", th);
        }
    }

    @Override // gnu.expr.Expression
    public Expression validateApply(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Declaration declaration) {
        Method method;
        Expression[] expressionArr;
        Expression expressionInlineCall;
        Expression[] args = applyExp.getArgs();
        if ((this.flags & 4096) != 0 && (expressionInlineCall = InlineCalls.inlineCall(this, args, true)) != null) {
            return inlineCalls.visit(expressionInlineCall, type);
        }
        applyExp.visitArgs(inlineCalls);
        int length = applyExp.args.length;
        String strCheckArgCount = WrongArguments.checkArgCount(getName(), this.min_args, this.max_args, length);
        if (strCheckArgCount != null) {
            return inlineCalls.noteError(strCheckArgCount);
        }
        int callConvention = getCallConvention();
        if (!inlineCalls.getCompilation().inlineOk((Expression) this) || !isClassMethod() || ((callConvention > 2 && callConvention != 3) || (method = getMethod(length)) == null)) {
            return applyExp;
        }
        boolean zIsStatic = this.nameDecl.isStatic();
        if (!zIsStatic) {
            ScopeExp scopeExp = this.outer;
            if (scopeExp instanceof ClassExp) {
                ((ClassExp) scopeExp).isMakingClassPair();
            }
        }
        PrimProcedure primProcedure = new PrimProcedure(method, this);
        if (zIsStatic) {
            expressionArr = applyExp.args;
        } else {
            for (LambdaExp currentLambda = inlineCalls.getCurrentLambda(); currentLambda != null; currentLambda = currentLambda.outerLambda()) {
                if (currentLambda.outer == this.outer) {
                    Declaration declarationFirstDecl = currentLambda.firstDecl();
                    if (declarationFirstDecl == null || !declarationFirstDecl.isThisParameter()) {
                        return inlineCalls.noteError("calling non-static method " + getName() + " from static method " + currentLambda.getName());
                    }
                    int argCount = applyExp.getArgCount();
                    Expression[] expressionArr2 = new Expression[argCount + 1];
                    System.arraycopy(applyExp.getArgs(), 0, expressionArr2, 1, argCount);
                    expressionArr2[0] = new ThisExp(declarationFirstDecl);
                    expressionArr = expressionArr2;
                }
            }
            return inlineCalls.noteError("internal error: missing " + this);
        }
        return new ApplyExp(primProcedure, expressionArr).setLine(applyExp);
    }

    @Override // gnu.expr.Expression
    public void print(OutPort outPort) throws IOException {
        Special special;
        Special special2;
        int i;
        Expression expression;
        outPort.startLogicalBlock("(Lambda/", ")", 2);
        Object symbol = getSymbol();
        if (symbol != null) {
            outPort.print(symbol);
            outPort.print('/');
        }
        outPort.print(this.id);
        outPort.print('/');
        outPort.print("fl:");
        outPort.print(Integer.toHexString(this.flags));
        outPort.writeSpaceFill();
        printLineColumn(outPort);
        int i2 = 0;
        outPort.startLogicalBlock("(", false, ")");
        Keyword[] keywordArr = this.keywords;
        int length = keywordArr == null ? 0 : keywordArr.length;
        Expression[] expressionArr = this.defaultArgs;
        int length2 = expressionArr == null ? 0 : expressionArr.length - length;
        Declaration declarationFirstDecl = firstDecl();
        if (declarationFirstDecl == null || !declarationFirstDecl.isThisParameter()) {
            special = null;
        } else {
            special = null;
            i2 = -1;
        }
        int i3 = 0;
        while (declarationFirstDecl != null) {
            int i4 = this.min_args;
            if (i2 < i4) {
                special2 = null;
            } else if (i2 < i4 + length2) {
                special2 = Special.optional;
            } else if (this.max_args < 0 && i2 == i4 + length2) {
                special2 = Special.rest;
            } else {
                special2 = Special.key;
            }
            if (declarationFirstDecl != firstDecl()) {
                outPort.writeSpaceFill();
            }
            if (special2 != special) {
                outPort.print(special2);
                outPort.writeSpaceFill();
            }
            if (special2 == Special.optional || special2 == Special.key) {
                i = i3 + 1;
                expression = this.defaultArgs[i3];
            } else {
                i = i3;
                expression = null;
            }
            if (expression != null) {
                outPort.print('(');
            }
            declarationFirstDecl.printInfo(outPort);
            if (expression != null && expression != QuoteExp.falseExp) {
                outPort.print(' ');
                expression.print(outPort);
                outPort.print(')');
            }
            i2++;
            declarationFirstDecl = declarationFirstDecl.nextDecl();
            special = special2;
            i3 = i;
        }
        outPort.endLogicalBlock(")");
        outPort.writeSpaceLinear();
        Expression expression2 = this.body;
        if (expression2 == null) {
            outPort.print("<null body>");
        } else {
            expression2.print(outPort);
        }
        outPort.endLogicalBlock(")");
    }

    public final String getExpClassName() {
        String name = getClass().getName();
        int iLastIndexOf = name.lastIndexOf(46);
        return iLastIndexOf >= 0 ? name.substring(iLastIndexOf + 1) : name;
    }

    @Override // gnu.expr.ScopeExp, gnu.expr.Expression, gnu.mapping.Procedure
    public String toString() {
        Expression expression;
        String str = getExpClassName() + ':' + getSymbol() + '/' + this.id + '/';
        int lineNumber = getLineNumber();
        if (lineNumber <= 0 && (expression = this.body) != null) {
            lineNumber = expression.getLineNumber();
        }
        if (lineNumber <= 0) {
            return str;
        }
        return str + "l:" + lineNumber;
    }

    @Override // gnu.mapping.PropertySet
    public Object getProperty(Object obj, Object obj2) {
        Object[] objArr = this.properties;
        if (objArr != null) {
            int length = objArr.length;
            while (true) {
                int i = length - 2;
                if (i < 0) {
                    break;
                }
                Object[] objArr2 = this.properties;
                if (objArr2[i] == obj) {
                    return objArr2[length - 1];
                }
                length = i;
            }
        }
        return obj2;
    }

    @Override // gnu.mapping.PropertySet
    public synchronized void setProperty(Object obj, Object obj2) {
        this.properties = PropertySet.setProperty(this.properties, obj, obj2);
    }

    public final Type getReturnType() {
        if (this.returnType == null) {
            this.returnType = Type.objectType;
            if (this.body != null && !isAbstract()) {
                this.returnType = this.body.getType();
            }
        }
        return this.returnType;
    }

    public final void setReturnType(Type type) {
        this.returnType = type;
    }

    public final void setCoercedReturnType(Type type) {
        Expression expression;
        this.returnType = type;
        if (type == null || type == Type.objectType || type == Type.voidType || (expression = this.body) == QuoteExp.abstractExp) {
            return;
        }
        Expression expressionMakeCoercion = Compilation.makeCoercion(expression, type);
        this.body = expressionMakeCoercion;
        expressionMakeCoercion.setLine(expression);
    }

    public final void setCoercedReturnValue(Expression expression, Language language) {
        if (!isAbstract()) {
            Expression expression2 = this.body;
            ApplyExp applyExpMakeCoercion = Compilation.makeCoercion(expression2, expression);
            this.body = applyExpMakeCoercion;
            applyExpMakeCoercion.setLine(expression2);
        }
        Type typeFor = language.getTypeFor(expression);
        if (typeFor != null) {
            setReturnType(typeFor);
        }
    }
}
