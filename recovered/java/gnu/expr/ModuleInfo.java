package gnu.expr;

import _COROUTINE.a;
import gnu.bytecode.ClassType;
import gnu.bytecode.Field;
import gnu.bytecode.ObjectType;
import gnu.bytecode.Type;
import gnu.kawa.reflect.FieldLocation;
import gnu.kawa.util.AbstractWeakHashTable;
import gnu.mapping.Location;
import gnu.mapping.WrappedException;
import gnu.text.Path;
import java.io.IOException;
import java.net.URL;

/* loaded from: classes2.dex */
public class ModuleInfo {
    static ClassToInfoMap mapClassToInfo = new ClassToInfoMap();
    private String className;
    Compilation comp;
    ModuleInfo[] dependencies;
    ModuleExp exp;
    public long lastCheckedTime;
    public long lastModifiedTime;
    Class moduleClass;
    int numDependencies;
    Path sourceAbsPath;
    String sourceAbsPathname;
    public String sourcePath;
    String uri;

    public String getNamespaceUri() {
        return this.uri;
    }

    public void setNamespaceUri(String str) {
        this.uri = str;
    }

    public Compilation getCompilation() {
        return this.comp;
    }

    public void setCompilation(Compilation compilation) {
        compilation.minfo = this;
        this.comp = compilation;
        ModuleExp moduleExp = compilation.mainLambda;
        this.exp = moduleExp;
        if (moduleExp != null) {
            String fileName = moduleExp.getFileName();
            this.sourcePath = fileName;
            this.sourceAbsPath = absPath(fileName);
        }
    }

    public void cleanupAfterCompilation() {
        Compilation compilation = this.comp;
        if (compilation != null) {
            compilation.cleanupAfterCompilation();
        }
    }

    public static Path absPath(String str) {
        return Path.valueOf(str).getCanonical();
    }

    public Path getSourceAbsPath() {
        return this.sourceAbsPath;
    }

    public void setSourceAbsPath(Path path) {
        this.sourceAbsPath = path;
        this.sourceAbsPathname = null;
    }

    public String getSourceAbsPathname() {
        Path path;
        String str = this.sourceAbsPathname;
        if (str != null || (path = this.sourceAbsPath) == null) {
            return str;
        }
        String string = path.toString();
        this.sourceAbsPathname = string;
        return string;
    }

    public synchronized void addDependency(ModuleInfo moduleInfo) {
        try {
            ModuleInfo[] moduleInfoArr = this.dependencies;
            if (moduleInfoArr == null) {
                this.dependencies = new ModuleInfo[8];
            } else {
                int i = this.numDependencies;
                if (i == moduleInfoArr.length) {
                    ModuleInfo[] moduleInfoArr2 = new ModuleInfo[i * 2];
                    System.arraycopy(moduleInfoArr, 0, moduleInfoArr2, 0, i);
                    this.dependencies = moduleInfoArr2;
                }
            }
            ModuleInfo[] moduleInfoArr3 = this.dependencies;
            int i2 = this.numDependencies;
            this.numDependencies = i2 + 1;
            moduleInfoArr3[i2] = moduleInfo;
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized ClassType getClassType() {
        ClassType classType;
        Class cls = this.moduleClass;
        if (cls != null) {
            return (ClassType) Type.make(cls);
        }
        Compilation compilation = this.comp;
        return (compilation == null || (classType = compilation.mainClass) == null) ? ClassType.make(this.className) : classType;
    }

    public synchronized String getClassName() {
        ClassType classType;
        try {
            if (this.className == null) {
                Class cls = this.moduleClass;
                if (cls != null) {
                    this.className = cls.getName();
                } else {
                    Compilation compilation = this.comp;
                    if (compilation != null && (classType = compilation.mainClass) != null) {
                        this.className = classType.getName();
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.className;
    }

    public void setClassName(String str) {
        this.className = str;
    }

    public synchronized ModuleExp getModuleExp() {
        ModuleExp moduleExp = this.exp;
        if (moduleExp == null) {
            Compilation compilation = this.comp;
            if (compilation != null) {
                return compilation.mainLambda;
            }
            ClassType classTypeMake = ClassType.make(this.className);
            ModuleExp moduleExp2 = new ModuleExp();
            moduleExp2.type = classTypeMake;
            moduleExp2.setName(classTypeMake.getName());
            moduleExp2.flags |= 524288;
            moduleExp2.info = this;
            this.exp = moduleExp2;
            moduleExp = moduleExp2;
        }
        return moduleExp;
    }

    public synchronized ModuleExp setupModuleExp() {
        ClassType classTypeMake;
        try {
            ModuleExp moduleExp = getModuleExp();
            if ((moduleExp.flags & 524288) == 0) {
                return moduleExp;
            }
            moduleExp.setFlag(false, 524288);
            Class reflectClass = this.moduleClass;
            if (reflectClass != null) {
                classTypeMake = (ClassType) Type.make(reflectClass);
            } else {
                classTypeMake = ClassType.make(this.className);
                reflectClass = classTypeMake.getReflectClass();
            }
            Language defaultLanguage = Language.getDefaultLanguage();
            Object moduleInfo = null;
            for (Field fields = classTypeMake.getFields(); fields != null; fields = fields.getNext()) {
                int flags = fields.getFlags();
                if ((flags & 1) != 0) {
                    if ((flags & 8) == 0 && moduleInfo == null) {
                        try {
                            moduleInfo = getInstance();
                        } catch (Exception e) {
                            throw new WrappedException(e);
                        }
                    }
                    Object obj = reflectClass.getField(fields.getName()).get(moduleInfo);
                    Declaration declarationDeclFromField = defaultLanguage.declFromField(moduleExp, obj, fields);
                    if ((flags & 16) != 0 && (!(obj instanceof Location) || (obj instanceof FieldLocation))) {
                        declarationDeclFromField.noteValue(new QuoteExp(obj));
                    } else {
                        declarationDeclFromField.noteValue(null);
                    }
                }
            }
            for (Declaration declarationFirstDecl = moduleExp.firstDecl(); declarationFirstDecl != null; declarationFirstDecl = declarationFirstDecl.nextDecl()) {
                makeDeclInModule2(moduleExp, declarationFirstDecl);
            }
            return moduleExp;
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized Class getModuleClass() throws ClassNotFoundException {
        Class cls = this.moduleClass;
        if (cls != null) {
            return cls;
        }
        Class contextClass = ObjectType.getContextClass(this.className);
        this.moduleClass = contextClass;
        return contextClass;
    }

    public Class getModuleClassRaw() {
        return this.moduleClass;
    }

    public void setModuleClass(Class cls) {
        this.moduleClass = cls;
        this.className = cls.getName();
        mapClassToInfo.put(cls, this);
    }

    public static ModuleInfo findFromInstance(Object obj) {
        return ModuleContext.getContext().findFromInstance(obj);
    }

    public static ModuleInfo find(ClassType classType) {
        if (classType.isExisting()) {
            try {
                return ModuleManager.findWithClass(classType.getReflectClass());
            } catch (Exception unused) {
            }
        }
        return ModuleManager.getInstance().findWithClassName(classType.getName());
    }

    public static void register(Object obj) {
        ModuleContext.getContext().setInstance(obj);
    }

    public Object getInstance() {
        return ModuleContext.getContext().findInstance(this);
    }

    public Object getRunInstance() {
        Object moduleInfo = getInstance();
        if (moduleInfo instanceof Runnable) {
            ((Runnable) moduleInfo).run();
        }
        return moduleInfo;
    }

    public static void makeDeclInModule2(ModuleExp moduleExp, Declaration declaration) {
        Object constantValue = declaration.getConstantValue();
        if (constantValue instanceof FieldLocation) {
            FieldLocation fieldLocation = (FieldLocation) constantValue;
            Declaration declaration2 = fieldLocation.getDeclaration();
            ReferenceExp referenceExp = new ReferenceExp(declaration2);
            declaration.setAlias(true);
            referenceExp.setDontDereference(true);
            declaration.setValue(referenceExp);
            if (declaration2.isProcedureDecl()) {
                declaration.setProcedureDecl(true);
            }
            if (declaration2.getFlag(32768L)) {
                declaration.setSyntax();
            }
            if (declaration.getFlag(2048L)) {
                return;
            }
            String name = fieldLocation.getDeclaringClass().getName();
            for (Declaration declarationFirstDecl = moduleExp.firstDecl(); declarationFirstDecl != null; declarationFirstDecl = declarationFirstDecl.nextDecl()) {
                if (name.equals(declarationFirstDecl.getType().getName()) && declarationFirstDecl.getFlag(1073741824L)) {
                    referenceExp.setContextDecl(declarationFirstDecl);
                    return;
                }
            }
        }
    }

    public int getState() {
        Compilation compilation = this.comp;
        if (compilation == null) {
            return 14;
        }
        return compilation.getState();
    }

    public void loadByStages(int i) {
        if (getState() + 1 >= i) {
            return;
        }
        loadByStages(i - 2);
        int state = getState();
        if (state >= i) {
            return;
        }
        this.comp.setState(state + 1);
        int i2 = this.numDependencies;
        for (int i3 = 0; i3 < i2; i3++) {
            this.dependencies[i3].loadByStages(i);
        }
        int state2 = getState();
        if (state2 >= i) {
            return;
        }
        this.comp.setState(state2 & (-2));
        this.comp.process(i);
    }

    public boolean loadEager(int i) {
        if (this.comp == null && this.className != null) {
            return false;
        }
        int state = getState();
        if (state >= i) {
            return true;
        }
        if ((state & 1) != 0) {
            return false;
        }
        int i2 = state + 1;
        this.comp.setState(i2);
        int i3 = this.numDependencies;
        for (int i4 = 0; i4 < i3; i4++) {
            if (!this.dependencies[i4].loadEager(i)) {
                if (getState() == i2) {
                    this.comp.setState(state);
                }
                return false;
            }
        }
        if (getState() == i2) {
            this.comp.setState(state);
        }
        this.comp.process(i);
        return getState() == i;
    }

    public void clearClass() {
        this.moduleClass = null;
        this.numDependencies = 0;
        this.dependencies = null;
    }

    public boolean checkCurrent(ModuleManager moduleManager, long j) {
        Path path = this.sourceAbsPath;
        if (path == null) {
            return true;
        }
        if (this.lastCheckedTime + moduleManager.lastModifiedCacheTime >= j) {
            return this.moduleClass != null;
        }
        long lastModified = path.getLastModified();
        long lastModified2 = this.lastModifiedTime;
        this.lastModifiedTime = lastModified;
        this.lastCheckedTime = j;
        String str = this.className;
        if (str == null) {
            return false;
        }
        if (this.moduleClass == null) {
            try {
                this.moduleClass = ObjectType.getContextClass(str);
            } catch (ClassNotFoundException unused) {
                return false;
            }
        }
        if (lastModified2 == 0 && this.moduleClass != null) {
            String strSubstring = this.className;
            int iLastIndexOf = strSubstring.lastIndexOf(46);
            if (iLastIndexOf >= 0) {
                strSubstring = strSubstring.substring(iLastIndexOf + 1);
            }
            URL resource = this.moduleClass.getResource(a.z(strSubstring, ".class"));
            if (resource != null) {
                try {
                    lastModified2 = resource.openConnection().getLastModified();
                } catch (IOException unused2) {
                    resource = null;
                }
            }
            if (resource == null) {
                return true;
            }
        }
        if (lastModified > lastModified2) {
            this.moduleClass = null;
            return false;
        }
        int i = this.numDependencies;
        while (true) {
            i--;
            if (i < 0) {
                return true;
            }
            ModuleInfo moduleInfo = this.dependencies[i];
            if (moduleInfo.comp == null && !moduleInfo.checkCurrent(moduleManager, j)) {
                this.moduleClass = null;
                return false;
            }
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("ModuleInfo[");
        if (this.moduleClass != null) {
            stringBuffer.append("class: ");
            stringBuffer.append(this.moduleClass);
        } else if (this.className != null) {
            stringBuffer.append("class-name: ");
            stringBuffer.append(this.className);
        }
        stringBuffer.append(']');
        return stringBuffer.toString();
    }

    public static class ClassToInfoMap extends AbstractWeakHashTable<Class, ModuleInfo> {
        public boolean matches(Class cls, Class cls2) {
            return cls == cls2;
        }

        @Override // gnu.kawa.util.AbstractWeakHashTable
        public Class getKeyFromValue(ModuleInfo moduleInfo) {
            return moduleInfo.moduleClass;
        }
    }
}
