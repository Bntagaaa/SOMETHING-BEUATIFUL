package gnu.expr;

import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.Field;
import gnu.bytecode.Method;
import gnu.bytecode.Type;
import gnu.mapping.OutPort;
import java.io.IOException;
import java.util.Hashtable;
import java.util.Vector;
import kotlin.text.Typography;

/* loaded from: classes2.dex */
public class ClassExp extends LambdaExp {
    public static final int CLASS_SPECIFIED = 65536;
    public static final int HAS_SUBCLASS = 131072;
    public static final int INTERFACE_SPECIFIED = 32768;
    public static final int IS_ABSTRACT = 16384;
    public String classNameSpecifier;
    public LambdaExp clinitMethod;
    boolean explicitInit;
    public LambdaExp initMethod;
    ClassType instanceType;
    boolean partsDeclared;
    boolean simple;
    public int superClassIndex = -1;
    public Expression[] supers;

    @Override // gnu.expr.LambdaExp, gnu.expr.Expression
    public boolean mustCompile() {
        return true;
    }

    public boolean isSimple() {
        return this.simple;
    }

    public void setSimple(boolean z) {
        this.simple = z;
    }

    @Override // gnu.expr.LambdaExp
    public final boolean isAbstract() {
        return getFlag(16384);
    }

    public boolean isMakingClassPair() {
        return this.type != this.instanceType;
    }

    @Override // gnu.expr.LambdaExp, gnu.expr.Expression
    public Type getType() {
        return this.simple ? Compilation.typeClass : Compilation.typeClassType;
    }

    @Override // gnu.expr.LambdaExp
    public ClassType getClassType() {
        return this.type;
    }

    public ClassExp() {
    }

    public ClassExp(boolean z) {
        this.simple = z;
        ClassType classType = new ClassType();
        this.type = classType;
        this.instanceType = classType;
    }

    @Override // gnu.expr.LambdaExp, gnu.expr.Expression
    public void compile(Compilation compilation, Target target) {
        if (target instanceof IgnoreTarget) {
            return;
        }
        compileMembers(compilation);
        compilePushClass(compilation, target);
    }

    public void compilePushClass(Compilation compilation, Target target) {
        int i;
        ClassType classTypeMake;
        ClassType classType = this.type;
        CodeAttr code = compilation.getCode();
        compilation.loadClassRef(classType);
        boolean needsClosureEnv = getNeedsClosureEnv();
        if (isSimple() && !needsClosureEnv) {
            return;
        }
        if (isMakingClassPair() || needsClosureEnv) {
            ClassType classType2 = this.instanceType;
            if (classType == classType2) {
                code.emitDup(classType2);
            } else {
                compilation.loadClassRef(classType2);
            }
            ClassType classTypeMake2 = ClassType.make("gnu.expr.PairClassType");
            if (needsClosureEnv) {
                i = 3;
                classTypeMake = classTypeMake2;
            } else {
                i = 2;
                classTypeMake = classTypeMake2;
            }
        } else {
            i = 1;
            classTypeMake = ClassType.make("gnu.bytecode.Type");
        }
        Type[] typeArr = new Type[i];
        if (needsClosureEnv) {
            getOwningLambda().loadHeapFrame(compilation);
            i--;
            typeArr[i] = Type.pointer_type;
        }
        Type typeMake = ClassType.make("java.lang.Class");
        while (true) {
            i--;
            if (i >= 0) {
                typeArr[i] = typeMake;
            } else {
                code.emitInvokeStatic(classTypeMake.addMethod("make", typeArr, classTypeMake, 9));
                target.compileFromStack(compilation, classTypeMake);
                return;
            }
        }
    }

    @Override // gnu.expr.LambdaExp
    public ClassType getCompiledClassType(Compilation compilation) {
        return this.type;
    }

    public void setTypes(Compilation compilation) {
        String strGenerateClassName;
        int length;
        Declaration declaration;
        int modifiers;
        Expression[] expressionArr = this.supers;
        int i = 0;
        int length2 = expressionArr == null ? 0 : expressionArr.length;
        ClassType[] classTypeArr = new ClassType[length2];
        ClassType classType = null;
        int i2 = 0;
        for (int i3 = 0; i3 < length2; i3++) {
            Type typeFor = Language.getDefaultLanguage().getTypeFor(this.supers[i3]);
            if (!(typeFor instanceof ClassType)) {
                compilation.setLine(this.supers[i3]);
                compilation.error('e', "invalid super type");
            } else {
                ClassType classType2 = (ClassType) typeFor;
                try {
                    modifiers = classType2.getModifiers();
                } catch (RuntimeException unused) {
                    if (compilation != null) {
                        compilation.error('e', "unknown super-type " + classType2.getName());
                    }
                    modifiers = 0;
                }
                if ((modifiers & 512) == 0) {
                    if (i2 < i3) {
                        compilation.error('e', "duplicate superclass for " + this);
                    }
                    this.superClassIndex = i3;
                    classType = classType2;
                } else {
                    classTypeArr[i2] = classType2;
                    i2++;
                }
            }
        }
        if (classType != null && (this.flags & 32768) != 0) {
            compilation.error('e', "cannot be interface since has superclass");
        }
        if (!this.simple && classType == null && (this.flags & 65536) == 0 && (getFlag(131072) || ((declaration = this.nameDecl) != null && declaration.isPublic()))) {
            PairClassType pairClassType = new PairClassType();
            this.type = pairClassType;
            pairClassType.setInterface(true);
            ClassType classType3 = this.instanceType;
            pairClassType.instanceType = classType3;
            ClassType[] classTypeArr2 = {this.type};
            classType3.setSuper(Type.pointer_type);
            this.instanceType.setInterfaces(classTypeArr2);
        } else if (getFlag(32768)) {
            this.instanceType.setInterface(true);
        }
        ClassType classType4 = this.type;
        if (classType == null) {
            classType = Type.pointer_type;
        }
        classType4.setSuper(classType);
        if (i2 != length2) {
            ClassType[] classTypeArr3 = new ClassType[i2];
            System.arraycopy(classTypeArr, 0, classTypeArr3, 0, i2);
            classTypeArr = classTypeArr3;
        }
        this.type.setInterfaces(classTypeArr);
        if (this.type.getName() == null) {
            String name = this.classNameSpecifier;
            if (name == null && (name = getName()) != null && (length = name.length()) > 2 && name.charAt(0) == '<') {
                int i4 = length - 1;
                if (name.charAt(i4) == '>') {
                    name = name.substring(1, i4);
                }
            }
            if (name == null) {
                StringBuffer stringBuffer = new StringBuffer(100);
                compilation.getModule().classFor(compilation);
                stringBuffer.append(compilation.mainClass.getName());
                stringBuffer.append(Typography.dollar);
                int length3 = stringBuffer.length();
                while (true) {
                    stringBuffer.append(i);
                    strGenerateClassName = stringBuffer.toString();
                    if (compilation.findNamedClass(strGenerateClassName) == null) {
                        break;
                    }
                    stringBuffer.setLength(length3);
                    i++;
                }
            } else if (!isSimple() || (this instanceof ObjectExp)) {
                strGenerateClassName = compilation.generateClassName(name);
            } else {
                StringBuffer stringBuffer2 = new StringBuffer(100);
                int i5 = 0;
                while (true) {
                    int iIndexOf = name.indexOf(46, i5);
                    if (iIndexOf < 0) {
                        break;
                    }
                    stringBuffer2.append(Compilation.mangleNameIfNeeded(name.substring(i5, iIndexOf)));
                    i5 = iIndexOf + 1;
                    if (i5 < name.length()) {
                        stringBuffer2.append('.');
                    }
                }
                if (i5 == 0) {
                    ClassType classType5 = compilation.mainClass;
                    String name2 = classType5 != null ? classType5.getName() : null;
                    int iLastIndexOf = name2 == null ? -1 : name2.lastIndexOf(46);
                    if (iLastIndexOf > 0) {
                        stringBuffer2.append(name2.substring(0, iLastIndexOf + 1));
                    } else {
                        String str = compilation.classPrefix;
                        if (str != null) {
                            stringBuffer2.append(str);
                        }
                    }
                } else if (i5 == 1 && i5 < name.length()) {
                    stringBuffer2.setLength(0);
                    stringBuffer2.append(compilation.mainClass.getName());
                    stringBuffer2.append(Typography.dollar);
                }
                if (i5 < name.length()) {
                    stringBuffer2.append(Compilation.mangleNameIfNeeded(name.substring(i5)));
                }
                strGenerateClassName = stringBuffer2.toString();
            }
            this.type.setName(strGenerateClassName);
            compilation.addClass(this.type);
            if (isMakingClassPair()) {
                this.instanceType.setName(this.type.getName() + "$class");
                compilation.addClass(this.instanceType);
            }
        }
    }

    public void declareParts(Compilation compilation) {
        Declaration declaration;
        if (this.partsDeclared) {
            return;
        }
        this.partsDeclared = true;
        Hashtable hashtable = new Hashtable();
        for (Declaration declarationFirstDecl = firstDecl(); declarationFirstDecl != null; declarationFirstDecl = declarationFirstDecl.nextDecl()) {
            if (declarationFirstDecl.getCanRead()) {
                int accessFlags = declarationFirstDecl.getAccessFlags((short) 1);
                if (declarationFirstDecl.getFlag(2048L)) {
                    accessFlags |= 8;
                }
                if (isMakingClassPair()) {
                    int i = accessFlags | 1024;
                    Type implementationType = declarationFirstDecl.getType().getImplementationType();
                    this.type.addMethod(slotToMethodName("get", declarationFirstDecl.getName()), i, Type.typeArray0, implementationType);
                    this.type.addMethod(slotToMethodName("set", declarationFirstDecl.getName()), i, new Type[]{implementationType}, Type.voidType);
                } else {
                    String strMangleNameIfNeeded = Compilation.mangleNameIfNeeded(declarationFirstDecl.getName());
                    declarationFirstDecl.field = this.instanceType.addField(strMangleNameIfNeeded, declarationFirstDecl.getType(), accessFlags);
                    declarationFirstDecl.setSimple(false);
                    Declaration declaration2 = (Declaration) hashtable.get(strMangleNameIfNeeded);
                    if (declaration2 != null) {
                        ScopeExp.duplicateDeclarationError(declaration2, declarationFirstDecl, compilation);
                    }
                    hashtable.put(strMangleNameIfNeeded, declarationFirstDecl);
                }
            }
        }
        for (LambdaExp lambdaExp = this.firstChild; lambdaExp != null; lambdaExp = lambdaExp.nextSibling) {
            if (lambdaExp.isAbstract()) {
                setFlag(16384);
            }
            if ("*init*".equals(lambdaExp.getName())) {
                this.explicitInit = true;
                if (lambdaExp.isAbstract()) {
                    compilation.error('e', "*init* method cannot be abstract", lambdaExp);
                }
                if (this.type instanceof PairClassType) {
                    compilation.error('e', "'*init*' methods only supported for simple classes");
                }
            }
            lambdaExp.outer = this;
            if ((lambdaExp != this.initMethod && lambdaExp != this.clinitMethod && (declaration = lambdaExp.nameDecl) != null && !declaration.getFlag(2048L)) || !isMakingClassPair()) {
                lambdaExp.addMethodFor(this.type, compilation, null);
            }
            if (isMakingClassPair()) {
                lambdaExp.addMethodFor(this.instanceType, compilation, this.type);
            }
        }
        if (!this.explicitInit && !this.instanceType.isInterface()) {
            Compilation.getConstructor(this.instanceType, this);
        }
        if (isAbstract()) {
            ClassType classType = this.instanceType;
            classType.setModifiers(classType.getModifiers() | 1024);
        }
        if (this.nameDecl != null) {
            ClassType classType2 = this.instanceType;
            classType2.setModifiers((classType2.getModifiers() & (-2)) | this.nameDecl.getAccessFlags((short) 1));
        }
    }

    public static void getImplMethods(ClassType classType, String str, Type[] typeArr, Vector vector) {
        ClassType classType2;
        if (classType instanceof PairClassType) {
            classType2 = ((PairClassType) classType).instanceType;
        } else {
            if (!classType.isInterface()) {
                return;
            }
            try {
                Class reflectClass = classType.getReflectClass();
                if (reflectClass == null) {
                    return;
                }
                classType2 = (ClassType) Type.make(Class.forName(classType.getName() + "$class", false, reflectClass.getClassLoader()));
            } catch (Throwable unused) {
                return;
            }
        }
        Type[] typeArr2 = new Type[typeArr.length + 1];
        typeArr2[0] = classType;
        System.arraycopy(typeArr, 0, typeArr2, 1, typeArr.length);
        Method declaredMethod = classType2.getDeclaredMethod(str, typeArr2);
        if (declaredMethod != null) {
            int size = vector.size();
            if (size == 0 || !vector.elementAt(size - 1).equals(declaredMethod)) {
                vector.addElement(declaredMethod);
                return;
            }
            return;
        }
        for (ClassType classType3 : classType.getInterfaces()) {
            getImplMethods(classType3, str, typeArr, vector);
        }
    }

    private static void usedSuperClasses(ClassType classType, Compilation compilation) {
        compilation.usedClass(classType.getSuperclass());
        ClassType[] interfaces = classType.getInterfaces();
        if (interfaces == null) {
            return;
        }
        int length = interfaces.length;
        while (true) {
            length--;
            if (length < 0) {
                return;
            } else {
                compilation.usedClass(interfaces[length]);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00cf A[Catch: all -> 0x0019, TryCatch #0 {all -> 0x0019, blocks: (B:3:0x0008, B:5:0x0016, B:19:0x003c, B:21:0x0043, B:22:0x0048, B:24:0x004c, B:25:0x0058, B:27:0x0063, B:28:0x0066, B:30:0x006c, B:31:0x006f, B:34:0x007b, B:84:0x0188, B:37:0x0083, B:39:0x00a0, B:43:0x00ad, B:44:0x00b2, B:46:0x00cf, B:48:0x00d7, B:49:0x00ea, B:50:0x00ec, B:52:0x00f0, B:55:0x00f8, B:56:0x00fd, B:58:0x0101, B:60:0x010a, B:62:0x0114, B:64:0x011c, B:66:0x012a, B:68:0x0132, B:70:0x013a, B:73:0x0145, B:76:0x0152, B:78:0x0159, B:80:0x0169, B:83:0x0179, B:81:0x016f, B:75:0x014f, B:82:0x0173, B:85:0x018c, B:87:0x0192, B:89:0x019a, B:93:0x01a9, B:99:0x01bc, B:101:0x01d2, B:146:0x02d7, B:105:0x01e0, B:107:0x01e7, B:109:0x01f0, B:111:0x01f8, B:117:0x020c, B:119:0x0212, B:121:0x0216, B:126:0x0221, B:128:0x0246, B:130:0x0253, B:132:0x0264, B:134:0x0273, B:133:0x0268, B:123:0x021d, B:135:0x0278, B:137:0x0289, B:141:0x0294, B:142:0x02ab, B:144:0x02c2, B:145:0x02ca, B:147:0x02e0, B:96:0x01b2, B:90:0x01a0, B:92:0x01a4, B:9:0x001e, B:12:0x0024, B:14:0x0028, B:16:0x0036), top: B:152:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0173 A[Catch: all -> 0x0019, TryCatch #0 {all -> 0x0019, blocks: (B:3:0x0008, B:5:0x0016, B:19:0x003c, B:21:0x0043, B:22:0x0048, B:24:0x004c, B:25:0x0058, B:27:0x0063, B:28:0x0066, B:30:0x006c, B:31:0x006f, B:34:0x007b, B:84:0x0188, B:37:0x0083, B:39:0x00a0, B:43:0x00ad, B:44:0x00b2, B:46:0x00cf, B:48:0x00d7, B:49:0x00ea, B:50:0x00ec, B:52:0x00f0, B:55:0x00f8, B:56:0x00fd, B:58:0x0101, B:60:0x010a, B:62:0x0114, B:64:0x011c, B:66:0x012a, B:68:0x0132, B:70:0x013a, B:73:0x0145, B:76:0x0152, B:78:0x0159, B:80:0x0169, B:83:0x0179, B:81:0x016f, B:75:0x014f, B:82:0x0173, B:85:0x018c, B:87:0x0192, B:89:0x019a, B:93:0x01a9, B:99:0x01bc, B:101:0x01d2, B:146:0x02d7, B:105:0x01e0, B:107:0x01e7, B:109:0x01f0, B:111:0x01f8, B:117:0x020c, B:119:0x0212, B:121:0x0216, B:126:0x0221, B:128:0x0246, B:130:0x0253, B:132:0x0264, B:134:0x0273, B:133:0x0268, B:123:0x021d, B:135:0x0278, B:137:0x0289, B:141:0x0294, B:142:0x02ab, B:144:0x02c2, B:145:0x02ca, B:147:0x02e0, B:96:0x01b2, B:90:0x01a0, B:92:0x01a4, B:9:0x001e, B:12:0x0024, B:14:0x0028, B:16:0x0036), top: B:152:0x0008 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public gnu.bytecode.ClassType compileMembers(gnu.expr.Compilation r19) {
        /*
            Method dump skipped, instructions count: 753
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.expr.ClassExp.compileMembers(gnu.expr.Compilation):gnu.bytecode.ClassType");
    }

    @Override // gnu.expr.LambdaExp, gnu.expr.ScopeExp, gnu.expr.Expression
    public <R, D> R visit(ExpVisitor<R, D> expVisitor, D d) {
        Compilation compilation = expVisitor.getCompilation();
        if (compilation == null) {
            return expVisitor.visitClassExp(this, d);
        }
        ClassType classType = compilation.curClass;
        try {
            compilation.curClass = this.type;
            return expVisitor.visitClassExp(this, d);
        } finally {
            compilation.curClass = classType;
        }
    }

    @Override // gnu.expr.LambdaExp, gnu.expr.Expression
    public <R, D> void visitChildren(ExpVisitor<R, D> expVisitor, D d) {
        Declaration declarationFirstDecl;
        LambdaExp lambdaExp = expVisitor.currentLambda;
        expVisitor.currentLambda = this;
        Expression[] expressionArr = this.supers;
        this.supers = expVisitor.visitExps(expressionArr, expressionArr.length, d);
        try {
            for (LambdaExp lambdaExp2 = this.firstChild; lambdaExp2 != null; lambdaExp2 = lambdaExp2.nextSibling) {
                if (expVisitor.exitValue != null) {
                    break;
                }
                if (this.instanceType != null && (declarationFirstDecl = lambdaExp2.firstDecl()) != null && declarationFirstDecl.isThisParameter()) {
                    declarationFirstDecl.setType(this.type);
                }
                expVisitor.visitLambdaExp(lambdaExp2, d);
            }
            expVisitor.currentLambda = lambdaExp;
        } catch (Throwable th) {
            expVisitor.currentLambda = lambdaExp;
            throw th;
        }
    }

    public static void loadSuperStaticLink(Expression expression, ClassType classType, Compilation compilation) {
        CodeAttr code = compilation.getCode();
        expression.compile(compilation, Target.pushValue(Compilation.typeClassType));
        code.emitInvokeStatic(ClassType.make("gnu.expr.PairClassType").getDeclaredMethod("extractStaticLink", 1));
        code.emitCheckcast(classType.getOuterLinkType());
    }

    public static void invokeDefaultSuperConstructor(ClassType classType, Compilation compilation, LambdaExp lambdaExp) {
        CodeAttr code = compilation.getCode();
        Method declaredMethod = classType.getDeclaredMethod("<init>", 0);
        if (declaredMethod == null) {
            compilation.error('e', "super class does not have a default constructor");
            return;
        }
        code.emitPushThis();
        if (classType.hasOuterLink() && (lambdaExp instanceof ClassExp)) {
            ClassExp classExp = (ClassExp) lambdaExp;
            loadSuperStaticLink(classExp.supers[classExp.superClassIndex], classType, compilation);
        }
        code.emitInvokeSpecial(declaredMethod);
    }

    @Override // gnu.expr.LambdaExp, gnu.expr.Expression
    public void print(OutPort outPort) throws IOException {
        outPort.startLogicalBlock("(" + getExpClassName() + "/", ")", 2);
        Object symbol = getSymbol();
        if (symbol != null) {
            outPort.print(symbol);
            outPort.print('/');
        }
        outPort.print(this.id);
        outPort.print("/fl:");
        outPort.print(Integer.toHexString(this.flags));
        int i = 0;
        if (this.supers.length > 0) {
            outPort.writeSpaceFill();
            outPort.startLogicalBlock("supers:", "", 2);
            int i2 = 0;
            while (true) {
                Expression[] expressionArr = this.supers;
                if (i2 >= expressionArr.length) {
                    break;
                }
                expressionArr[i2].print(outPort);
                outPort.writeSpaceFill();
                i2++;
            }
            outPort.endLogicalBlock("");
        }
        outPort.print('(');
        Keyword[] keywordArr = this.keywords;
        if (keywordArr != null) {
            int length = keywordArr.length;
        }
        for (Declaration declarationFirstDecl = firstDecl(); declarationFirstDecl != null; declarationFirstDecl = declarationFirstDecl.nextDecl()) {
            if (i > 0) {
                outPort.print(' ');
            }
            declarationFirstDecl.printInfo(outPort);
            i++;
        }
        outPort.print(") ");
        for (LambdaExp lambdaExp = this.firstChild; lambdaExp != null; lambdaExp = lambdaExp.nextSibling) {
            outPort.writeBreakLinear();
            lambdaExp.print(outPort);
        }
        if (this.body != null) {
            outPort.writeBreakLinear();
            this.body.print(outPort);
        }
        outPort.endLogicalBlock(")");
    }

    @Override // gnu.expr.LambdaExp
    public Field compileSetField(Compilation compilation) {
        return new ClassInitializer(this, compilation).field;
    }

    public static String slotToMethodName(String str, String str2) {
        if (!Compilation.isValidJavaName(str2)) {
            str2 = Compilation.mangleName(str2, false);
        }
        int length = str2.length();
        StringBuffer stringBuffer = new StringBuffer(length + 3);
        stringBuffer.append(str);
        if (length > 0) {
            stringBuffer.append(Character.toTitleCase(str2.charAt(0)));
            stringBuffer.append(str2.substring(1));
        }
        return stringBuffer.toString();
    }

    public Declaration addMethod(LambdaExp lambdaExp, Object obj) {
        Declaration declarationAddDeclaration = addDeclaration(obj, Compilation.typeProcedure);
        lambdaExp.outer = this;
        lambdaExp.setClassMethod(true);
        declarationAddDeclaration.noteValue(lambdaExp);
        declarationAddDeclaration.setFlag(1048576L);
        declarationAddDeclaration.setProcedureDecl(true);
        lambdaExp.setSymbol(obj);
        return declarationAddDeclaration;
    }
}
