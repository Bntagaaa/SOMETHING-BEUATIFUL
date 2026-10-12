package gnu.expr;

import _COROUTINE.a;
import gnu.bytecode.ArrayType;
import gnu.bytecode.ClassFileInput;
import gnu.bytecode.ClassType;
import gnu.bytecode.ClassTypeWriter;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.Field;
import gnu.bytecode.Method;
import gnu.bytecode.Type;
import gnu.bytecode.Variable;
import gnu.kawa.lispexpr.LangObjType;
import gnu.lists.Consumer;
import gnu.lists.ConsumerWriter;
import gnu.lists.LList;
import gnu.mapping.CallContext;
import gnu.mapping.MethodProc;
import gnu.mapping.Procedure;
import gnu.mapping.ProcedureN;
import gnu.mapping.WrongArguments;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.Writer;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.net.URL;
import kotlin.text.Typography;

/* loaded from: classes2.dex */
public class PrimProcedure extends MethodProc implements Inlineable {
    private static ClassLoader systemClassLoader = PrimProcedure.class.getClassLoader();
    Type[] argTypes;
    Member member;
    Method method;
    char mode;
    int op_code;
    Type retType;
    boolean sideEffectFree;
    LambdaExp source;

    public final int opcode() {
        return this.op_code;
    }

    public Type getReturnType() {
        return this.retType;
    }

    public void setReturnType(Type type) {
        this.retType = type;
    }

    public boolean isSpecial() {
        return this.mode == 'P';
    }

    @Override // gnu.mapping.Procedure
    public Type getReturnType(Expression[] expressionArr) {
        return this.retType;
    }

    public Method getMethod() {
        return this.method;
    }

    @Override // gnu.mapping.Procedure
    public boolean isSideEffectFree() {
        return this.sideEffectFree;
    }

    public void setSideEffectFree() {
        this.sideEffectFree = true;
    }

    public boolean takesVarArgs() {
        Method method = this.method;
        if (method == null) {
            return false;
        }
        if ((method.getModifiers() & 128) != 0) {
            return true;
        }
        String name = this.method.getName();
        return name.endsWith("$V") || name.endsWith("$V$X");
    }

    public boolean takesContext() {
        Method method = this.method;
        return method != null && takesContext(method);
    }

    public static boolean takesContext(Method method) {
        return method.getName().endsWith("$X");
    }

    @Override // gnu.mapping.MethodProc
    public int isApplicable(Type[] typeArr) {
        Method method;
        int iIsApplicable = super.isApplicable(typeArr);
        int length = typeArr.length;
        if (iIsApplicable == -1 && (method = this.method) != null && (method.getModifiers() & 128) != 0 && length > 0) {
            int i = length - 1;
            if (typeArr[i] instanceof ArrayType) {
                Type[] typeArr2 = new Type[length];
                System.arraycopy(typeArr, 0, typeArr2, 0, i);
                typeArr2[i] = ((ArrayType) typeArr[i]).getComponentType();
                return super.isApplicable(typeArr2);
            }
        }
        return iIsApplicable;
    }

    public final boolean isConstructor() {
        return opcode() == 183 && this.mode != 'P';
    }

    public boolean takesTarget() {
        return this.mode != 0;
    }

    @Override // gnu.mapping.Procedure
    public int numArgs() {
        int length = this.argTypes.length;
        if (takesTarget()) {
            length++;
        }
        if (takesContext()) {
            length--;
        }
        return takesVarArgs() ? length - 4097 : length + (length << 12);
    }

    @Override // gnu.mapping.Procedure
    public int match0(CallContext callContext) {
        return matchN(ProcedureN.noArgs, callContext);
    }

    @Override // gnu.mapping.Procedure
    public int match1(Object obj, CallContext callContext) {
        return matchN(new Object[]{obj}, callContext);
    }

    @Override // gnu.mapping.Procedure
    public int match2(Object obj, Object obj2, CallContext callContext) {
        return matchN(new Object[]{obj, obj2}, callContext);
    }

    @Override // gnu.mapping.Procedure
    public int match3(Object obj, Object obj2, Object obj3, CallContext callContext) {
        return matchN(new Object[]{obj, obj2, obj3}, callContext);
    }

    @Override // gnu.mapping.Procedure
    public int match4(Object obj, Object obj2, Object obj3, Object obj4, CallContext callContext) {
        return matchN(new Object[]{obj, obj2, obj3, obj4}, callContext);
    }

    @Override // gnu.mapping.Procedure
    public int matchN(Object[] objArr, CallContext callContext) {
        Object[] objArr2;
        Type componentType;
        int length = objArr.length;
        boolean zTakesVarArgs = takesVarArgs();
        int iMinArgs = minArgs();
        if (length < iMinArgs) {
            return (-983040) | iMinArgs;
        }
        if (!zTakesVarArgs && length > iMinArgs) {
            return (-917504) | iMinArgs;
        }
        int length2 = this.argTypes.length;
        int i = (takesTarget() || isConstructor()) ? 1 : 0;
        Object[] objArr3 = new Object[length2];
        if (takesContext()) {
            length2--;
            objArr3[length2] = callContext;
        }
        Object objCoerceFromObject = null;
        if (zTakesVarArgs) {
            int i2 = length2 - 1;
            Type type = this.argTypes[i2];
            if (type == Compilation.scmListType || type == LangObjType.listType) {
                objArr3[i2] = LList.makeList(objArr, iMinArgs);
                componentType = Type.objectType;
                objArr2 = null;
            } else {
                componentType = ((ArrayType) type).getComponentType();
                objArr2 = (Object[]) Array.newInstance((Class<?>) componentType.getReflectClass(), length - iMinArgs);
                objArr3[i2] = objArr2;
            }
        } else {
            objArr2 = null;
            componentType = null;
        }
        if (isConstructor()) {
            objCoerceFromObject = objArr[0];
        } else if (i != 0) {
            try {
                objCoerceFromObject = this.method.getDeclaringClass().coerceFromObject(objArr[0]);
            } catch (ClassCastException unused) {
                return -786431;
            }
        }
        int i3 = i;
        while (i3 < objArr.length) {
            Object objCoerceFromObject2 = objArr[i3];
            Type type2 = i3 < iMinArgs ? this.argTypes[i3 - i] : componentType;
            if (type2 != Type.objectType) {
                try {
                    objCoerceFromObject2 = type2.coerceFromObject(objCoerceFromObject2);
                } catch (ClassCastException unused2) {
                    return (-786432) | (i3 + 1);
                }
            }
            if (i3 < iMinArgs) {
                objArr3[i3 - i] = objCoerceFromObject2;
            } else if (objArr2 != null) {
                objArr2[i3 - iMinArgs] = objCoerceFromObject2;
            }
            i3++;
        }
        callContext.value1 = objCoerceFromObject;
        callContext.values = objArr3;
        callContext.proc = this;
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // gnu.mapping.Procedure
    public void apply(CallContext callContext) throws Throwable {
        Object objCoerceToObject;
        int length = this.argTypes.length;
        boolean zIsConstructor = isConstructor();
        int i = (zIsConstructor && this.method.getDeclaringClass().hasOuterLink()) ? 1 : 0;
        try {
            if (this.member == null) {
                Class reflectClass = this.method.getDeclaringClass().getReflectClass();
                Class<?>[] clsArr = new Class[length + i];
                while (true) {
                    length--;
                    if (length < 0) {
                        break;
                    } else {
                        clsArr[length + i] = this.argTypes[length].getReflectClass();
                    }
                }
                if (i != 0) {
                    clsArr[0] = this.method.getDeclaringClass().getOuterLinkType().getReflectClass();
                }
                if (zIsConstructor) {
                    this.member = reflectClass.getConstructor(clsArr);
                } else {
                    Method method = this.method;
                    if (method != Type.clone_method) {
                        this.member = reflectClass.getMethod(method.getName(), clsArr);
                    }
                }
            }
            if (zIsConstructor) {
                Object[] objArr = callContext.values;
                if (i != 0) {
                    int length2 = objArr.length;
                    Object[] objArr2 = new Object[length2 + 1];
                    System.arraycopy(objArr, 0, objArr2, 1, length2);
                    objArr2[0] = ((PairClassType) callContext.value1).staticLink;
                    objArr = objArr2;
                }
                objCoerceToObject = ((Constructor) this.member).newInstance(objArr);
            } else if (this.method == Type.clone_method) {
                Object obj = callContext.value1;
                Class<?> componentType = obj.getClass().getComponentType();
                int length3 = Array.getLength(obj);
                Object objNewInstance = Array.newInstance(componentType, length3);
                System.arraycopy(obj, 0, objNewInstance, 0, length3);
                objCoerceToObject = objNewInstance;
            } else {
                objCoerceToObject = this.retType.coerceToObject(((java.lang.reflect.Method) this.member).invoke(callContext.value1, callContext.values));
            }
            if (takesContext()) {
                return;
            }
            callContext.consumer.writeObject(objCoerceToObject);
        } catch (InvocationTargetException e) {
            throw e.getTargetException();
        }
    }

    public PrimProcedure(String str, String str2, int i) {
        this(ClassType.make(str).getDeclaredMethod(str2, i));
    }

    public PrimProcedure(java.lang.reflect.Method method, Language language) {
        this(((ClassType) language.getTypeFor(method.getDeclaringClass())).getMethod(method), language);
    }

    public PrimProcedure(Method method) {
        init(method);
        this.retType = method.getName().endsWith("$X") ? Type.objectType : method.getReturnType();
    }

    public PrimProcedure(Method method, Language language) {
        this(method, (char) 0, language);
    }

    public PrimProcedure(Method method, char c, Language language) {
        this.mode = c;
        init(method);
        Type[] typeArr = this.argTypes;
        int length = typeArr.length;
        this.argTypes = null;
        int i = length;
        while (true) {
            i--;
            if (i < 0) {
                break;
            }
            Type type = typeArr[i];
            Type langTypeFor = language.getLangTypeFor(type);
            if (type != langTypeFor) {
                if (this.argTypes == null) {
                    Type[] typeArr2 = new Type[length];
                    this.argTypes = typeArr2;
                    System.arraycopy(typeArr, 0, typeArr2, 0, length);
                }
                this.argTypes[i] = langTypeFor;
            }
        }
        if (this.argTypes == null) {
            this.argTypes = typeArr;
        }
        if (isConstructor()) {
            this.retType = method.getDeclaringClass();
            return;
        }
        if (method.getName().endsWith("$X")) {
            this.retType = Type.objectType;
            return;
        }
        Type langTypeFor2 = language.getLangTypeFor(method.getReturnType());
        this.retType = langTypeFor2;
        if (langTypeFor2 == Type.toStringType) {
            this.retType = Type.javalangStringType;
        }
    }

    private void init(Method method) {
        this.method = method;
        if ((method.getModifiers() & 8) != 0) {
            this.op_code = 184;
        } else {
            ClassType declaringClass = method.getDeclaringClass();
            if (this.mode == 'P') {
                this.op_code = 183;
            } else {
                this.mode = 'V';
                if ("<init>".equals(method.getName())) {
                    this.op_code = 183;
                } else if ((declaringClass.getModifiers() & 512) != 0) {
                    this.op_code = 185;
                } else {
                    this.op_code = 182;
                }
            }
        }
        Type[] parameterTypes = method.getParameterTypes();
        if (isConstructor() && method.getDeclaringClass().hasOuterLink()) {
            int length = parameterTypes.length - 1;
            Type[] typeArr = new Type[length];
            System.arraycopy(parameterTypes, 1, typeArr, 0, length);
            parameterTypes = typeArr;
        }
        this.argTypes = parameterTypes;
    }

    public PrimProcedure(Method method, LambdaExp lambdaExp) {
        this(method);
        this.retType = lambdaExp.getReturnType();
        this.source = lambdaExp;
    }

    public PrimProcedure(int i, Type type, Type[] typeArr) {
        this.op_code = i;
        this.retType = type;
        this.argTypes = typeArr;
    }

    public static PrimProcedure makeBuiltinUnary(int i, Type type) {
        return new PrimProcedure(i, type, new Type[]{type});
    }

    public static PrimProcedure makeBuiltinBinary(int i, Type type) {
        return new PrimProcedure(i, type, new Type[]{type, type});
    }

    public PrimProcedure(int i, ClassType classType, String str, Type type, Type[] typeArr) {
        this.op_code = i;
        this.method = classType.addMethod(str, i == 184 ? 8 : 0, typeArr, type);
        this.retType = type;
        this.argTypes = typeArr;
        this.mode = i != 184 ? 'V' : (char) 0;
    }

    public final boolean getStaticFlag() {
        Method method = this.method;
        return method == null || method.getStaticFlag() || isConstructor();
    }

    public final Type[] getParameterTypes() {
        return this.argTypes;
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x00be, code lost:
    
        gnu.kawa.functions.MakeList.compile(r1, r21 + r8, r23);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00c3, code lost:
    
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0071  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void compileArgs(gnu.expr.Expression[] r20, int r21, gnu.bytecode.Type r22, gnu.expr.Compilation r23) {
        /*
            Method dump skipped, instructions count: 373
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.expr.PrimProcedure.compileArgs(gnu.expr.Expression[], int, gnu.bytecode.Type, gnu.expr.Compilation):void");
    }

    @Override // gnu.expr.Inlineable
    public void compile(ApplyExp applyExp, Compilation compilation, Target target) {
        CodeAttr code = compilation.getCode();
        Method method = this.method;
        ClassType declaringClass = method == null ? null : method.getDeclaringClass();
        Expression[] args = applyExp.getArgs();
        if (isConstructor()) {
            if (applyExp.getFlag(8)) {
                int length = args.length;
                compilation.letStart();
                Expression[] expressionArr = new Expression[length];
                expressionArr[0] = args[0];
                for (int i = 1; i < length; i++) {
                    Expression expression = args[i];
                    Declaration declarationLetVariable = compilation.letVariable(null, expression.getType(), expression);
                    declarationLetVariable.setCanRead(true);
                    expressionArr[i] = new ReferenceExp(declarationLetVariable);
                }
                compilation.letEnter();
                compilation.letDone(new ApplyExp(applyExp.func, expressionArr)).compile(compilation, target);
                return;
            }
            code.emitNew(declaringClass);
            code.emitDup(declaringClass);
        }
        String strCheckArgCount = WrongArguments.checkArgCount(this, args.length);
        if (strCheckArgCount != null) {
            compilation.error('e', strCheckArgCount);
        }
        compile(getStaticFlag() ? null : declaringClass, applyExp, compilation, target);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void compile(gnu.bytecode.Type r9, gnu.expr.ApplyExp r10, gnu.expr.Compilation r11, gnu.expr.Target r12) {
        /*
            r8 = this;
            gnu.expr.Expression[] r0 = r10.getArgs()
            gnu.bytecode.CodeAttr r1 = r11.getCode()
            gnu.bytecode.Type r7 = r8.retType
            boolean r2 = r8.isConstructor()
            r3 = 1
            r4 = 0
            r5 = 0
            if (r2 == 0) goto L2a
            gnu.bytecode.Method r9 = r8.method
            if (r9 != 0) goto L19
            r9 = r4
            goto L1d
        L19:
            gnu.bytecode.ClassType r9 = r9.getDeclaringClass()
        L1d:
            boolean r2 = r9.hasOuterLink()
            if (r2 == 0) goto L28
            r2 = r0[r5]
            gnu.expr.ClassExp.loadSuperStaticLink(r2, r9, r11)
        L28:
            r9 = r4
            goto L75
        L2a:
            int r2 = r8.opcode()
            r6 = 183(0xb7, float:2.56E-43)
            if (r2 != r6) goto L65
            char r2 = r8.mode
            r6 = 80
            if (r2 != r6) goto L65
            gnu.bytecode.Method r2 = r8.method
            java.lang.String r2 = r2.getName()
            java.lang.String r6 = "<init>"
            boolean r2 = r6.equals(r2)
            if (r2 == 0) goto L65
            gnu.bytecode.Method r2 = r8.method
            if (r2 != 0) goto L4c
            r2 = r4
            goto L50
        L4c:
            gnu.bytecode.ClassType r2 = r2.getDeclaringClass()
        L50:
            boolean r2 = r2.hasOuterLink()
            if (r2 == 0) goto L74
            r1.emitPushThis()
            gnu.bytecode.Scope r9 = r1.getCurrentScope()
            gnu.bytecode.Variable r9 = r9.getVariable(r3)
            r1.emitLoad(r9)
            goto L28
        L65:
            boolean r2 = r8.takesTarget()
            if (r2 == 0) goto L74
            gnu.bytecode.Method r2 = r8.method
            boolean r2 = r2.getStaticFlag()
            if (r2 == 0) goto L74
            goto L75
        L74:
            r3 = 0
        L75:
            r8.compileArgs(r0, r3, r9, r11)
            gnu.bytecode.Method r3 = r8.method
            if (r3 != 0) goto L8a
            int r9 = r8.opcode()
            int r10 = r0.length
            gnu.bytecode.Type r0 = r8.retType
            r1.emitPrimop(r9, r10, r0)
            r12.compileFromStack(r11, r7)
            return
        L8a:
            boolean r5 = r10.isTailCall()
            int r6 = r8.op_code
            r2 = r11
            r4 = r12
            compileInvoke(r2, r3, r4, r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.expr.PrimProcedure.compile(gnu.bytecode.Type, gnu.expr.ApplyExp, gnu.expr.Compilation, gnu.expr.Target):void");
    }

    public static void compileInvoke(Compilation compilation, Method method, Target target, boolean z, int i, Type type) {
        Field field;
        CodeAttr code = compilation.getCode();
        compilation.usedClass(method.getDeclaringClass());
        compilation.usedClass(method.getReturnType());
        if (!takesContext(method)) {
            code.emitInvokeMethod(method, i);
        } else {
            boolean z2 = target instanceof IgnoreTarget;
            Variable variable = null;
            if (z2 || ((target instanceof ConsumerTarget) && ((ConsumerTarget) target).isContextTarget())) {
                compilation.loadCallContext();
                if (z2) {
                    ClassType classType = Compilation.typeCallContext;
                    Field declaredField = classType.getDeclaredField("consumer");
                    code.pushScope();
                    Variable variableAddLocal = code.addLocal(classType);
                    code.emitDup();
                    code.emitGetField(declaredField);
                    code.emitStore(variableAddLocal);
                    code.emitDup();
                    code.emitGetStatic(ClassType.make("gnu.lists.VoidConsumer").getDeclaredField("instance"));
                    code.emitPutField(declaredField);
                    variable = variableAddLocal;
                    field = declaredField;
                } else {
                    field = null;
                }
                code.emitInvokeMethod(method, i);
                if (z) {
                    compilation.loadCallContext();
                    code.emitInvoke(Compilation.typeCallContext.getDeclaredMethod("runUntilDone", 0));
                }
                if (z2) {
                    compilation.loadCallContext();
                    code.emitLoad(variable);
                    code.emitPutField(field);
                    code.popScope();
                    return;
                }
                return;
            }
            compilation.loadCallContext();
            type = Type.objectType;
            code.pushScope();
            Variable variableAddLocal2 = code.addLocal(Type.intType);
            compilation.loadCallContext();
            code.emitInvokeVirtual(Compilation.typeCallContext.getDeclaredMethod("startFromContext", 0));
            code.emitStore(variableAddLocal2);
            code.emitWithCleanupStart();
            code.emitInvokeMethod(method, i);
            code.emitWithCleanupCatch(null);
            compilation.loadCallContext();
            code.emitLoad(variableAddLocal2);
            code.emitInvokeVirtual(Compilation.typeCallContext.getDeclaredMethod("cleanupFromContext", 1));
            code.emitWithCleanupDone();
            compilation.loadCallContext();
            code.emitLoad(variableAddLocal2);
            code.emitInvokeVirtual(Compilation.typeCallContext.getDeclaredMethod("getFromContext", 1));
            code.popScope();
        }
        target.compileFromStack(compilation, type);
    }

    @Override // gnu.mapping.MethodProc
    public Type getParameterType(int i) {
        if (takesTarget()) {
            if (i == 0) {
                return isConstructor() ? Type.objectType : this.method.getDeclaringClass();
            }
            i--;
        }
        Type[] typeArr = this.argTypes;
        int length = typeArr.length;
        int i2 = length - 1;
        if (i < i2) {
            return typeArr[i];
        }
        boolean zTakesVarArgs = takesVarArgs();
        if (i < length && !zTakesVarArgs) {
            return this.argTypes[i];
        }
        Type type = this.argTypes[i2];
        if (type instanceof ArrayType) {
            return ((ArrayType) type).getComponentType();
        }
        return Type.objectType;
    }

    public static PrimProcedure getMethodFor(Procedure procedure, Expression[] expressionArr) {
        return getMethodFor(procedure, (Declaration) null, expressionArr, Language.getDefaultLanguage());
    }

    public static PrimProcedure getMethodFor(Procedure procedure, Declaration declaration, Expression[] expressionArr, Language language) {
        int length = expressionArr.length;
        Type[] typeArr = new Type[length];
        while (true) {
            length--;
            if (length >= 0) {
                typeArr[length] = expressionArr[length].getType();
            } else {
                return getMethodFor(procedure, declaration, typeArr, language);
            }
        }
    }

    public static PrimProcedure getMethodFor(Procedure procedure, Declaration declaration, Type[] typeArr, Language language) {
        if (procedure instanceof GenericProc) {
            GenericProc genericProc = (GenericProc) procedure;
            MethodProc[] methodProcArr = genericProc.methods;
            int i = genericProc.count;
            MethodProc methodProc = null;
            while (true) {
                i--;
                if (i >= 0) {
                    if (methodProcArr[i].isApplicable(typeArr) >= 0) {
                        if (methodProc != null) {
                            return null;
                        }
                        methodProc = methodProcArr[i];
                    }
                } else {
                    if (methodProc == null) {
                        return null;
                    }
                    procedure = methodProc;
                }
            }
        }
        if (procedure instanceof PrimProcedure) {
            PrimProcedure primProcedure = (PrimProcedure) procedure;
            if (primProcedure.isApplicable(typeArr) >= 0) {
                return primProcedure;
            }
        }
        Class procedureClass = getProcedureClass(procedure);
        if (procedureClass == null) {
            return null;
        }
        return getMethodFor((ClassType) Type.make(procedureClass), procedure.getName(), declaration, typeArr, language);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void disassemble$X(Procedure procedure, CallContext callContext) throws Exception {
        Consumer consumer = callContext.consumer;
        disassemble(procedure, consumer instanceof Writer ? (Writer) consumer : new ConsumerWriter(consumer));
    }

    public static void disassemble(Procedure procedure, Writer writer) throws Exception {
        disassemble(procedure, new ClassTypeWriter((ClassType) null, writer, 0));
    }

    public static void disassemble(Procedure procedure, ClassTypeWriter classTypeWriter) throws Exception {
        Method method;
        if (procedure instanceof GenericProc) {
            GenericProc genericProc = (GenericProc) procedure;
            int methodCount = genericProc.getMethodCount();
            classTypeWriter.print("Generic procedure with ");
            classTypeWriter.print(methodCount);
            classTypeWriter.println(methodCount == 1 ? " method." : "methods.");
            for (int i = 0; i < methodCount; i++) {
                MethodProc method2 = genericProc.getMethod(i);
                if (method2 != null) {
                    classTypeWriter.println();
                    disassemble((Procedure) method2, classTypeWriter);
                }
            }
            return;
        }
        Class reflectClass = procedure.getClass();
        String name = null;
        if (procedure instanceof ModuleMethod) {
            reflectClass = ((ModuleMethod) procedure).module.getClass();
        } else if ((procedure instanceof PrimProcedure) && (method = ((PrimProcedure) procedure).method) != null) {
            reflectClass = method.getDeclaringClass().getReflectClass();
            name = method.getName();
        }
        ClassLoader classLoader = reflectClass.getClassLoader();
        String name2 = reflectClass.getName();
        String str = name2.replace('.', '/') + ".class";
        ClassType classType = new ClassType();
        InputStream resourceAsStream = classLoader.getResourceAsStream(str);
        if (resourceAsStream == null) {
            throw new RuntimeException(a.i("missing resource ", str));
        }
        new ClassFileInput(classType, resourceAsStream);
        classTypeWriter.setClass(classType);
        URL resource = classLoader.getResource(str);
        classTypeWriter.print("In class ");
        classTypeWriter.print(name2);
        if (resource != null) {
            classTypeWriter.print(" at ");
            classTypeWriter.print(resource);
        }
        classTypeWriter.println();
        if (name == null) {
            String name3 = procedure.getName();
            if (name3 == null) {
                classTypeWriter.println("Anonymous function - unknown method.");
                return;
            }
            name = Compilation.mangleName(name3);
        }
        for (Method methods = classType.getMethods(); methods != null; methods = methods.getNext()) {
            if (methods.getName().equals(name)) {
                classTypeWriter.printMethod(methods);
            }
        }
        classTypeWriter.flush();
    }

    public static Class getProcedureClass(Object obj) {
        Class<?> cls;
        if (obj instanceof ModuleMethod) {
            cls = ((ModuleMethod) obj).module.getClass();
        } else {
            cls = obj.getClass();
        }
        try {
            if (cls.getClassLoader() == systemClassLoader) {
                return cls;
            }
            return null;
        } catch (SecurityException unused) {
            return null;
        }
    }

    public static PrimProcedure getMethodFor(Class cls, String str, Declaration declaration, Expression[] expressionArr, Language language) {
        return getMethodFor((ClassType) Type.make(cls), str, declaration, expressionArr, language);
    }

    public static PrimProcedure getMethodFor(ClassType classType, String str, Declaration declaration, Expression[] expressionArr, Language language) {
        int length = expressionArr.length;
        Type[] typeArr = new Type[length];
        while (true) {
            length--;
            if (length >= 0) {
                typeArr[length] = expressionArr[length].getType();
            } else {
                return getMethodFor(classType, str, declaration, typeArr, language);
            }
        }
    }

    public static PrimProcedure getMethodFor(ClassType classType, String str, Declaration declaration, Type[] typeArr, Language language) {
        boolean z;
        PrimProcedure primProcedure = null;
        if (str == null) {
            return null;
        }
        try {
            String strMangleName = Compilation.mangleName(str);
            String str2 = strMangleName + "$V";
            String str3 = strMangleName + "$V$X";
            String str4 = strMangleName + "$X";
            Method declaredMethods = classType.getDeclaredMethods();
            PrimProcedure primProcedure2 = null;
            boolean z2 = true;
            int i = -1;
            boolean z3 = false;
            while (declaredMethods != null) {
                try {
                    PrimProcedure primProcedure3 = primProcedure;
                    if ((declaredMethods.getModifiers() & 9) == 9 || (declaration != null && declaration.base != null)) {
                        String name = declaredMethods.getName();
                        if (!name.equals(strMangleName) && !name.equals(str2) && !name.equals(str4) && !name.equals(str3)) {
                            z = z2 && (name.equals("apply") || name.equals("apply$V"));
                        }
                        if (!z) {
                            if (z3) {
                                primProcedure2 = primProcedure3;
                                z2 = false;
                                i = -1;
                                z3 = false;
                            } else {
                                z2 = false;
                            }
                        }
                        PrimProcedure primProcedure4 = new PrimProcedure(declaredMethods, language);
                        primProcedure4.setName(str);
                        int iIsApplicable = primProcedure4.isApplicable(typeArr);
                        if (iIsApplicable >= 0 && iIsApplicable >= i) {
                            if (iIsApplicable > i) {
                                primProcedure2 = primProcedure4;
                            } else if (primProcedure2 != null) {
                                PrimProcedure primProcedure5 = (PrimProcedure) MethodProc.mostSpecific(primProcedure2, primProcedure4);
                                if (primProcedure5 == null && i > 0) {
                                    return primProcedure3;
                                }
                                primProcedure2 = primProcedure5;
                            }
                            z3 = z;
                            i = iIsApplicable;
                        }
                    }
                    declaredMethods = declaredMethods.getNext();
                    primProcedure = primProcedure3;
                } catch (SecurityException unused) {
                    return primProcedure2;
                }
            }
            return primProcedure2;
        } catch (SecurityException unused2) {
            return null;
        }
    }

    @Override // gnu.mapping.PropertySet, gnu.mapping.Named
    public String getName() {
        String name = super.getName();
        if (name != null) {
            return name;
        }
        String verboseName = getVerboseName();
        setName(verboseName);
        return verboseName;
    }

    public String getVerboseName() {
        StringBuffer stringBuffer = new StringBuffer(100);
        Method method = this.method;
        if (method == null) {
            stringBuffer.append("<op ");
            stringBuffer.append(this.op_code);
            stringBuffer.append(Typography.greater);
        } else {
            stringBuffer.append(method.getDeclaringClass().getName());
            stringBuffer.append('.');
            stringBuffer.append(this.method.getName());
        }
        stringBuffer.append('(');
        for (int i = 0; i < this.argTypes.length; i++) {
            if (i > 0) {
                stringBuffer.append(',');
            }
            stringBuffer.append(this.argTypes[i].getName());
        }
        stringBuffer.append(')');
        return stringBuffer.toString();
    }

    @Override // gnu.mapping.Procedure
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(100);
        Type type = this.retType;
        stringBuffer.append(type == null ? "<unknown>" : type.getName());
        stringBuffer.append(' ');
        stringBuffer.append(getVerboseName());
        return stringBuffer.toString();
    }

    public void print(PrintWriter printWriter) {
        printWriter.print("#<primitive procedure ");
        printWriter.print(toString());
        printWriter.print(Typography.greater);
    }
}
