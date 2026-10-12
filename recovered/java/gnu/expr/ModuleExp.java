package gnu.expr;

import com.google.appinventor.components.runtime.repackaged.org.json.zip.JSONzip;
import gnu.bytecode.ArrayClassLoader;
import gnu.bytecode.ClassType;
import gnu.bytecode.Field;
import gnu.kawa.reflect.ClassMemberLocation;
import gnu.kawa.reflect.StaticFieldLocation;
import gnu.mapping.CallContext;
import gnu.mapping.Environment;
import gnu.mapping.Location;
import gnu.mapping.OutPort;
import gnu.mapping.Symbol;
import gnu.mapping.WrappedException;
import gnu.text.Path;
import gnu.text.SourceMessages;
import gnu.text.SyntaxException;
import java.io.Externalizable;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.net.URL;
import java.util.zip.CRC32;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/* loaded from: classes2.dex */
public class ModuleExp extends LambdaExp implements Externalizable {
    public static final int EXPORT_SPECIFIED = 16384;
    public static final int IMMEDIATE = 1048576;
    public static final int LAZY_DECLARATIONS = 524288;
    public static final int NONSTATIC_SPECIFIED = 65536;
    public static final int STATIC_RUN_SPECIFIED = 262144;
    public static final int STATIC_SPECIFIED = 32768;
    public static final int SUPERTYPE_SPECIFIED = 131072;
    public static boolean alwaysCompile = true;
    public static boolean compilerAvailable = true;
    public static String dumpZipPrefix = null;
    public static int interactiveCounter = 0;
    static int lastZipCounter = 0;
    public static boolean neverCompile = false;
    ModuleInfo info;
    ClassType[] interfaces;
    ClassType superType;

    public static Class evalToClass(Compilation compilation, URL url) throws SyntaxException {
        ZipOutputStream zipOutputStream;
        compilation.getModule();
        SourceMessages messages = compilation.getMessages();
        try {
            compilation.minfo.loadByStages(12);
            if (messages.seenErrors()) {
                return null;
            }
            ArrayClassLoader arrayClassLoader = compilation.loader;
            if (url == null) {
                url = Path.currentPath().toURL();
            }
            arrayClassLoader.setResourceContext(url);
            String str = dumpZipPrefix;
            if (str != null) {
                StringBuffer stringBuffer = new StringBuffer(str);
                int i = lastZipCounter + 1;
                lastZipCounter = i;
                int i2 = interactiveCounter;
                if (i2 > i) {
                    lastZipCounter = i2;
                }
                stringBuffer.append(lastZipCounter);
                stringBuffer.append(".zip");
                zipOutputStream = new ZipOutputStream(new FileOutputStream(stringBuffer.toString()));
            } else {
                zipOutputStream = null;
            }
            for (int i3 = 0; i3 < compilation.numClasses; i3++) {
                ClassType classType = compilation.classes[i3];
                String name = classType.getName();
                byte[] bArrWriteToArray = classType.writeToArray();
                arrayClassLoader.addClass(name, bArrWriteToArray);
                if (zipOutputStream != null) {
                    ZipEntry zipEntry = new ZipEntry(name.replace('.', '/') + ".class");
                    zipEntry.setSize((long) bArrWriteToArray.length);
                    CRC32 crc32 = new CRC32();
                    crc32.update(bArrWriteToArray);
                    zipEntry.setCrc(crc32.getValue());
                    zipEntry.setMethod(0);
                    zipOutputStream.putNextEntry(zipEntry);
                    zipOutputStream.write(bArrWriteToArray);
                }
            }
            if (zipOutputStream != null) {
                zipOutputStream.close();
            }
            ArrayClassLoader arrayClassLoader2 = arrayClassLoader;
            while (arrayClassLoader2.getParent() instanceof ArrayClassLoader) {
                arrayClassLoader2 = (ArrayClassLoader) arrayClassLoader2.getParent();
            }
            Class cls = null;
            for (int i4 = 0; i4 < compilation.numClasses; i4++) {
                ClassType classType2 = compilation.classes[i4];
                Class clsLoadClass = arrayClassLoader.loadClass(classType2.getName());
                classType2.setReflectClass(clsLoadClass);
                classType2.setExisting(true);
                if (i4 == 0) {
                    cls = clsLoadClass;
                } else if (arrayClassLoader2 != arrayClassLoader) {
                    arrayClassLoader2.addClass(clsLoadClass);
                }
            }
            ModuleInfo moduleInfo = compilation.minfo;
            moduleInfo.setModuleClass(cls);
            compilation.cleanupAfterCompilation();
            int i5 = moduleInfo.numDependencies;
            for (int i6 = 0; i6 < i5; i6++) {
                ModuleInfo moduleInfo2 = moduleInfo.dependencies[i6];
                Class moduleClassRaw = moduleInfo2.getModuleClassRaw();
                if (moduleClassRaw == null) {
                    moduleClassRaw = evalToClass(moduleInfo2.comp, null);
                }
                compilation.loader.addClass(moduleClassRaw);
            }
            return cls;
        } catch (IOException e) {
            throw new WrappedException("I/O error in lambda eval", e);
        } catch (ClassNotFoundException e2) {
            throw new WrappedException("class not found in lambda eval", e2);
        } catch (Throwable th) {
            compilation.getMessages().error('f', "internal compile error - caught " + th, th);
            throw new SyntaxException(messages);
        }
    }

    public static void mustNeverCompile() {
        alwaysCompile = false;
        neverCompile = true;
        compilerAvailable = false;
    }

    public static void mustAlwaysCompile() {
        alwaysCompile = true;
        neverCompile = false;
    }

    public static final boolean evalModule(Environment environment, CallContext callContext, Compilation compilation, URL url, OutPort outPort) throws Throwable {
        ModuleExp module = compilation.getModule();
        Language language = compilation.getLanguage();
        Object objEvalModule1 = evalModule1(environment, compilation, url, outPort);
        if (objEvalModule1 == null) {
            return false;
        }
        evalModule2(environment, callContext, language, module, objEvalModule1);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x00b9, code lost:
    
        if (r3.seenErrors() != false) goto L50;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0056 A[Catch: all -> 0x0045, TRY_ENTER, TryCatch #3 {all -> 0x0045, blocks: (B:13:0x0030, B:15:0x003e, B:24:0x0056, B:26:0x005a, B:29:0x0060, B:30:0x0083, B:33:0x008c, B:20:0x0049), top: B:70:0x0030 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00ab A[Catch: all -> 0x00b2, TryCatch #0 {all -> 0x00b2, blocks: (B:41:0x00a5, B:43:0x00ab, B:50:0x00bb, B:48:0x00b5), top: B:64:0x00a5 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00b5 A[Catch: all -> 0x00b2, TryCatch #0 {all -> 0x00b2, blocks: (B:41:0x00a5, B:43:0x00ab, B:50:0x00bb, B:48:0x00b5), top: B:64:0x00a5 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object evalModule1(gnu.mapping.Environment r7, gnu.expr.Compilation r8, java.net.URL r9, gnu.mapping.OutPort r10) throws java.lang.Throwable {
        /*
            java.lang.String r0 = "[Evaluating final module \""
            gnu.expr.ModuleExp r1 = r8.getModule()
            gnu.expr.ModuleInfo r2 = r8.minfo
            r1.info = r2
            gnu.mapping.Environment r7 = gnu.mapping.Environment.setSaveCurrent(r7)
            gnu.expr.Compilation r2 = gnu.expr.Compilation.setSaveCurrent(r8)
            gnu.text.SourceMessages r3 = r8.getMessages()
            boolean r4 = gnu.expr.ModuleExp.alwaysCompile
            if (r4 == 0) goto L27
            boolean r4 = gnu.expr.ModuleExp.neverCompile
            if (r4 != 0) goto L1f
            goto L27
        L1f:
            java.lang.RuntimeException r7 = new java.lang.RuntimeException
            java.lang.String r8 = "alwaysCompile and neverCompile are both true!"
            r7.<init>(r8)
            throw r7
        L27:
            boolean r4 = gnu.expr.ModuleExp.neverCompile
            if (r4 == 0) goto L2e
            r4 = 0
            r8.mustCompile = r4
        L2e:
            r4 = 6
            r5 = 0
            r8.process(r4)     // Catch: java.lang.Throwable -> L45
            gnu.expr.ModuleInfo r4 = r8.minfo     // Catch: java.lang.Throwable -> L45
            r6 = 8
            r4.loadByStages(r6)     // Catch: java.lang.Throwable -> L45
            r4 = 20
            if (r10 == 0) goto L49
            boolean r6 = r3.checkErrors(r10, r4)     // Catch: java.lang.Throwable -> L45
            if (r6 == 0) goto L56
            goto L4f
        L45:
            r8 = move-exception
            r0 = r5
            goto Ld5
        L49:
            boolean r6 = r3.seenErrors()     // Catch: java.lang.Throwable -> L45
            if (r6 == 0) goto L56
        L4f:
            gnu.mapping.Environment.restoreCurrent(r7)
            gnu.expr.Compilation.restoreCurrent(r2)
            return r5
        L56:
            boolean r6 = r8.mustCompile     // Catch: java.lang.Throwable -> L45
            if (r6 != 0) goto L8c
            boolean r8 = gnu.expr.Compilation.debugPrintFinalExpr     // Catch: java.lang.Throwable -> L45
            if (r8 == 0) goto L83
            if (r10 == 0) goto L83
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L45
            r8.<init>(r0)     // Catch: java.lang.Throwable -> L45
            java.lang.String r9 = r1.getName()     // Catch: java.lang.Throwable -> L45
            r8.append(r9)     // Catch: java.lang.Throwable -> L45
            java.lang.String r9 = "\":"
            r8.append(r9)     // Catch: java.lang.Throwable -> L45
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> L45
            r10.println(r8)     // Catch: java.lang.Throwable -> L45
            r1.print(r10)     // Catch: java.lang.Throwable -> L45
            r8 = 93
            r10.println(r8)     // Catch: java.lang.Throwable -> L45
            r10.flush()     // Catch: java.lang.Throwable -> L45
        L83:
            java.lang.Boolean r8 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> L45
            gnu.mapping.Environment.restoreCurrent(r7)
            gnu.expr.Compilation.restoreCurrent(r2)
            return r8
        L8c:
            java.lang.Class r8 = evalToClass(r8, r9)     // Catch: java.lang.Throwable -> L45
            if (r8 != 0) goto L93
            goto L4f
        L93:
            java.lang.Thread r9 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> La3
            java.lang.ClassLoader r0 = r9.getContextClassLoader()     // Catch: java.lang.Throwable -> La3
            java.lang.ClassLoader r6 = r8.getClassLoader()     // Catch: java.lang.Throwable -> La4
            r9.setContextClassLoader(r6)     // Catch: java.lang.Throwable -> La4
            goto La5
        La3:
            r0 = r5
        La4:
            r9 = r5
        La5:
            r1.body = r5     // Catch: java.lang.Throwable -> Lb2
            r1.thisVariable = r5     // Catch: java.lang.Throwable -> Lb2
            if (r10 == 0) goto Lb5
            boolean r10 = r3.checkErrors(r10, r4)     // Catch: java.lang.Throwable -> Lb2
            if (r10 == 0) goto Lc9
            goto Lbb
        Lb2:
            r8 = move-exception
            r5 = r9
            goto Ld5
        Lb5:
            boolean r10 = r3.seenErrors()     // Catch: java.lang.Throwable -> Lb2
            if (r10 == 0) goto Lc9
        Lbb:
            java.lang.Boolean r8 = java.lang.Boolean.FALSE     // Catch: java.lang.Throwable -> Lb2
            gnu.mapping.Environment.restoreCurrent(r7)
            gnu.expr.Compilation.restoreCurrent(r2)
            if (r9 == 0) goto Lc8
            r9.setContextClassLoader(r0)
        Lc8:
            return r8
        Lc9:
            gnu.mapping.Environment.restoreCurrent(r7)
            gnu.expr.Compilation.restoreCurrent(r2)
            if (r9 == 0) goto Ld4
            r9.setContextClassLoader(r0)
        Ld4:
            return r8
        Ld5:
            gnu.mapping.Environment.restoreCurrent(r7)
            gnu.expr.Compilation.restoreCurrent(r2)
            if (r5 == 0) goto Le0
            r5.setContextClassLoader(r0)
        Le0:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.expr.ModuleExp.evalModule1(gnu.mapping.Environment, gnu.expr.Compilation, java.net.URL, gnu.mapping.OutPort):java.lang.Object");
    }

    public static final void evalModule2(Environment environment, CallContext callContext, Language language, ModuleExp moduleExp, Object obj) throws Throwable {
        Object value;
        Environment saveCurrent = Environment.setSaveCurrent(environment);
        try {
            if (obj == Boolean.TRUE) {
                moduleExp.body.apply(callContext);
            } else {
                if (obj instanceof Class) {
                    obj = ModuleContext.getContext().findInstance((Class) obj);
                }
                if (obj instanceof Runnable) {
                    if (obj instanceof ModuleBody) {
                        ModuleBody moduleBody = (ModuleBody) obj;
                        if (!moduleBody.runDone) {
                            moduleBody.runDone = true;
                            moduleBody.run(callContext);
                        }
                    } else {
                        ((Runnable) obj).run();
                    }
                }
                if (moduleExp == null) {
                    ClassMemberLocation.defineAll(obj, language, environment);
                } else {
                    for (Declaration declarationFirstDecl = moduleExp.firstDecl(); declarationFirstDecl != null; declarationFirstDecl = declarationFirstDecl.nextDecl()) {
                        Object symbol = declarationFirstDecl.getSymbol();
                        if (!declarationFirstDecl.isPrivate() && symbol != null) {
                            Field field = declarationFirstDecl.field;
                            Symbol symbolMake = symbol instanceof Symbol ? (Symbol) symbol : Symbol.make("", symbol.toString().intern());
                            Object envPropertyFor = language.getEnvPropertyFor(declarationFirstDecl);
                            Expression value2 = declarationFirstDecl.getValue();
                            if ((declarationFirstDecl.field.getModifiers() & 16) != 0) {
                                if ((value2 instanceof QuoteExp) && value2 != QuoteExp.undefined_exp) {
                                    value = ((QuoteExp) value2).getValue();
                                } else {
                                    value = declarationFirstDecl.field.getReflectField().get(null);
                                    if (!declarationFirstDecl.isIndirectBinding()) {
                                        declarationFirstDecl.setValue(QuoteExp.getInstance(value));
                                    } else if (!declarationFirstDecl.isAlias() || !(value2 instanceof ReferenceExp)) {
                                        declarationFirstDecl.setValue(null);
                                    }
                                }
                                if (declarationFirstDecl.isIndirectBinding()) {
                                    environment.addLocation(symbolMake, envPropertyFor, (Location) value);
                                } else {
                                    environment.define(symbolMake, envPropertyFor, value);
                                }
                            } else {
                                StaticFieldLocation staticFieldLocation = new StaticFieldLocation(field.getDeclaringClass(), field.getName());
                                staticFieldLocation.setDeclaration(declarationFirstDecl);
                                environment.addLocation(symbolMake, envPropertyFor, staticFieldLocation);
                                declarationFirstDecl.setValue(null);
                            }
                        }
                    }
                }
            }
            callContext.runUntilDone();
            Environment.restoreCurrent(saveCurrent);
        } catch (Throwable th) {
            Environment.restoreCurrent(saveCurrent);
            throw th;
        }
    }

    public String getNamespaceUri() {
        return this.info.uri;
    }

    public final ClassType getSuperType() {
        return this.superType;
    }

    public final void setSuperType(ClassType classType) {
        this.superType = classType;
    }

    public final ClassType[] getInterfaces() {
        return this.interfaces;
    }

    public final void setInterfaces(ClassType[] classTypeArr) {
        this.interfaces = classTypeArr;
    }

    public final boolean isStatic() {
        if (getFlag(32768)) {
            return true;
        }
        return ((Compilation.moduleStatic < 0 && !getFlag(1048576)) || getFlag(131072) || getFlag(65536)) ? false : true;
    }

    public boolean staticInitRun() {
        if (isStatic()) {
            return getFlag(262144) || Compilation.moduleStatic == 2;
        }
        return false;
    }

    @Override // gnu.expr.LambdaExp
    public void allocChildClasses(Compilation compilation) {
        declareClosureEnv();
        if (compilation.usingCPStyle()) {
            allocFrame(compilation);
        }
    }

    public void allocFields(Compilation compilation) {
        for (Declaration declarationFirstDecl = firstDecl(); declarationFirstDecl != null; declarationFirstDecl = declarationFirstDecl.nextDecl()) {
            if ((!declarationFirstDecl.isSimple() || declarationFirstDecl.isPublic()) && declarationFirstDecl.field == null && declarationFirstDecl.getFlag(65536L) && declarationFirstDecl.getFlag(6L)) {
                declarationFirstDecl.makeField(compilation, null);
            }
        }
        for (Declaration declarationFirstDecl2 = firstDecl(); declarationFirstDecl2 != null; declarationFirstDecl2 = declarationFirstDecl2.nextDecl()) {
            if (declarationFirstDecl2.field == null) {
                Expression value = declarationFirstDecl2.getValue();
                if ((!declarationFirstDecl2.isSimple() || declarationFirstDecl2.isPublic() || declarationFirstDecl2.isNamespaceDecl() || (declarationFirstDecl2.getFlag(JSONzip.int14) && declarationFirstDecl2.getFlag(6L))) && !declarationFirstDecl2.getFlag(65536L)) {
                    if ((value instanceof LambdaExp) && !(value instanceof ModuleExp) && !(value instanceof ClassExp)) {
                        ((LambdaExp) value).allocFieldFor(compilation);
                    } else {
                        if (!declarationFirstDecl2.shouldEarlyInit() && !declarationFirstDecl2.isAlias()) {
                            value = null;
                        }
                        declarationFirstDecl2.makeField(compilation, value);
                    }
                }
            }
        }
    }

    @Override // gnu.expr.LambdaExp, gnu.expr.ScopeExp, gnu.expr.Expression
    public <R, D> R visit(ExpVisitor<R, D> expVisitor, D d) {
        return expVisitor.visitModuleExp(this, d);
    }

    @Override // gnu.expr.LambdaExp, gnu.expr.Expression
    public void print(OutPort outPort) {
        outPort.startLogicalBlock("(Module/", ")", 2);
        Object symbol = getSymbol();
        if (symbol != null) {
            outPort.print(symbol);
            outPort.print('/');
        }
        outPort.print(this.id);
        outPort.print('/');
        outPort.writeSpaceFill();
        outPort.startLogicalBlock("(", false, ")");
        Declaration declarationFirstDecl = firstDecl();
        if (declarationFirstDecl != null) {
            outPort.print("Declarations:");
            while (declarationFirstDecl != null) {
                outPort.writeSpaceFill();
                declarationFirstDecl.printInfo(outPort);
                declarationFirstDecl = declarationFirstDecl.nextDecl();
            }
        }
        outPort.endLogicalBlock(")");
        outPort.writeSpaceLinear();
        Expression expression = this.body;
        if (expression == null) {
            outPort.print("<null body>");
        } else {
            expression.print(outPort);
        }
        outPort.endLogicalBlock(")");
    }

    @Override // gnu.expr.ScopeExp
    public Declaration firstDecl() {
        synchronized (this) {
            try {
                if (getFlag(524288)) {
                    this.info.setupModuleExp();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return this.decls;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00c1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public gnu.bytecode.ClassType classFor(gnu.expr.Compilation r5) {
        /*
            r4 = this;
            gnu.bytecode.ClassType r0 = r4.type
            if (r0 == 0) goto L9
            gnu.bytecode.ClassType r1 = gnu.expr.Compilation.typeProcedure
            if (r0 == r1) goto L9
            return r0
        L9:
            java.lang.String r0 = r4.getFileName()
            java.lang.String r1 = r4.getName()
            r2 = 0
            if (r1 == 0) goto L15
            goto L53
        L15:
            if (r0 != 0) goto L20
            java.lang.String r1 = r4.getName()
            if (r1 != 0) goto L53
            java.lang.String r1 = "$unnamed_input_file$"
            goto L53
        L20:
            java.lang.String r1 = r4.filename
            java.lang.String r3 = "-"
            boolean r1 = r1.equals(r3)
            if (r1 != 0) goto L4b
            java.lang.String r1 = r4.filename
            java.lang.String r3 = "/dev/stdin"
            boolean r1 = r1.equals(r3)
            if (r1 == 0) goto L35
            goto L4b
        L35:
            gnu.text.Path r2 = gnu.text.Path.valueOf(r0)
            java.lang.String r1 = r2.getLast()
            r0 = 46
            int r0 = r1.lastIndexOf(r0)
            if (r0 <= 0) goto L53
            r3 = 0
            java.lang.String r1 = r1.substring(r3, r0)
            goto L53
        L4b:
            java.lang.String r1 = r4.getName()
            if (r1 != 0) goto L53
            java.lang.String r1 = "$stdin$"
        L53:
            java.lang.String r0 = r4.getName()
            if (r0 != 0) goto L5c
            r4.setName(r1)
        L5c:
            java.lang.String r0 = gnu.expr.Compilation.mangleNameIfNeeded(r1)
            java.lang.String r1 = r5.classPrefix
            int r1 = r1.length()
            if (r1 != 0) goto Lc1
            if (r2 == 0) goto Lc1
            boolean r1 = r2.isAbsolute()
            if (r1 != 0) goto Lc1
            gnu.text.Path r1 = r2.getParent()
            if (r1 == 0) goto Lc1
            java.lang.String r1 = r1.toString()
            int r2 = r1.length()
            if (r2 <= 0) goto Lc1
            java.lang.String r2 = ".."
            int r2 = r1.indexOf(r2)
            if (r2 >= 0) goto Lc1
            java.lang.String r2 = "file.separator"
            java.lang.String r2 = java.lang.System.getProperty(r2)
            java.lang.String r3 = "/"
            java.lang.String r1 = r1.replaceAll(r2, r3)
            java.lang.String r2 = "./"
            boolean r2 = r1.startsWith(r2)
            if (r2 == 0) goto La1
            r2 = 2
            java.lang.String r1 = r1.substring(r2)
        La1:
            java.lang.String r2 = "."
            boolean r3 = r1.equals(r2)
            if (r3 == 0) goto Laa
            goto Lcc
        Laa:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r1 = gnu.expr.Compilation.mangleURI(r1)
            r3.append(r1)
            r3.append(r2)
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            goto Lcc
        Lc1:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = r5.classPrefix
            java.lang.String r0 = _COROUTINE.a.m(r1, r2, r0)
        Lcc:
            gnu.bytecode.ClassType r1 = new gnu.bytecode.ClassType
            r1.<init>(r0)
            r4.setType(r1)
            gnu.expr.ModuleExp r2 = r5.mainLambda
            if (r2 != r4) goto L103
            gnu.bytecode.ClassType r2 = r5.mainClass
            if (r2 != 0) goto Ldf
            r5.mainClass = r1
            return r1
        Ldf:
            java.lang.String r2 = r2.getName()
            boolean r2 = r0.equals(r2)
            if (r2 != 0) goto L103
            java.lang.String r2 = "inconsistent main class name: "
            java.lang.String r3 = " - old name: "
            java.lang.StringBuilder r0 = _COROUTINE.a.r(r2, r0, r3)
            gnu.bytecode.ClassType r2 = r5.mainClass
            java.lang.String r2 = r2.getName()
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            r2 = 101(0x65, float:1.42E-43)
            r5.error(r2, r0)
        L103:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.expr.ModuleExp.classFor(gnu.expr.Compilation):gnu.bytecode.ClassType");
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        ClassType classType = this.type;
        if (classType != null && classType != Compilation.typeProcedure && !classType.isExisting()) {
            objectOutput.writeObject(this.type);
            return;
        }
        String name = getName();
        if (name == null) {
            name = getFileName();
        }
        objectOutput.writeObject(name);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws ClassNotFoundException, IOException {
        Object object = objectInput.readObject();
        if (object instanceof ClassType) {
            ClassType classType = (ClassType) object;
            this.type = classType;
            setName(classType.getName());
        } else {
            setName((String) object);
        }
        this.flags |= 524288;
    }
}
