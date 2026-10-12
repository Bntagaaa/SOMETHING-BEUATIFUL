package gnu.expr;

import gnu.bytecode.ClassType;
import gnu.bytecode.ObjectType;
import gnu.mapping.WrappedException;
import gnu.text.Path;
import gnu.text.URLPath;
import java.io.File;
import java.net.URL;

/* loaded from: classes2.dex */
public class ModuleManager {
    public static final long LAST_MODIFIED_CACHE_TIME = 1000;
    static ModuleManager instance = new ModuleManager();
    private String compilationDirectory = "";
    public long lastModifiedCacheTime = 1000;
    ModuleInfo[] modules;
    int numModules;
    ModuleSet packageInfoChain;

    public void setCompilationDirectory(String str) {
        char c;
        if (str == null) {
            str = "";
        }
        int length = str.length();
        if (length > 0 && str.charAt(length - 1) != (c = File.separatorChar)) {
            str = str + c;
        }
        this.compilationDirectory = str;
    }

    public String getCompilationDirectory() {
        return this.compilationDirectory;
    }

    public static ModuleManager getInstance() {
        return instance;
    }

    public synchronized ModuleInfo getModule(int i) {
        return i >= this.numModules ? null : this.modules[i];
    }

    public synchronized ModuleInfo find(Compilation compilation) {
        ModuleInfo moduleInfoFindWithSourcePath;
        ModuleExp module = compilation.getModule();
        ClassType classTypeClassFor = module.classFor(compilation);
        String fileName = module.getFileName();
        moduleInfoFindWithSourcePath = findWithSourcePath(ModuleInfo.absPath(fileName), fileName);
        moduleInfoFindWithSourcePath.setClassName(classTypeClassFor.getName());
        moduleInfoFindWithSourcePath.exp = module;
        compilation.minfo = moduleInfoFindWithSourcePath;
        moduleInfoFindWithSourcePath.comp = compilation;
        return moduleInfoFindWithSourcePath;
    }

    private synchronized void add(ModuleInfo moduleInfo) {
        try {
            ModuleInfo[] moduleInfoArr = this.modules;
            if (moduleInfoArr == null) {
                this.modules = new ModuleInfo[10];
            } else {
                int i = this.numModules;
                if (i == moduleInfoArr.length) {
                    ModuleInfo[] moduleInfoArr2 = new ModuleInfo[i * 2];
                    System.arraycopy(moduleInfoArr, 0, moduleInfoArr2, 0, i);
                    this.modules = moduleInfoArr2;
                }
            }
            ModuleInfo[] moduleInfoArr3 = this.modules;
            int i2 = this.numModules;
            this.numModules = i2 + 1;
            moduleInfoArr3[i2] = moduleInfo;
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized ModuleInfo searchWithClassName(String str) {
        ModuleInfo moduleInfo;
        int i = this.numModules;
        do {
            i--;
            if (i < 0) {
                return null;
            }
            moduleInfo = this.modules[i];
        } while (!str.equals(moduleInfo.getClassName()));
        return moduleInfo;
    }

    public static synchronized ModuleInfo findWithClass(Class cls) {
        ModuleInfo moduleInfo;
        moduleInfo = ModuleInfo.mapClassToInfo.get(cls);
        if (moduleInfo == null) {
            moduleInfo = new ModuleInfo();
            moduleInfo.setModuleClass(cls);
        }
        return moduleInfo;
    }

    public ModuleInfo findWithClassName(String str) {
        ModuleInfo moduleInfoSearchWithClassName = searchWithClassName(str);
        if (moduleInfoSearchWithClassName != null) {
            return moduleInfoSearchWithClassName;
        }
        try {
            return findWithClass(ObjectType.getContextClass(str));
        } catch (Throwable th) {
            throw WrappedException.wrapIfNeeded(th);
        }
    }

    private synchronized ModuleInfo searchWithAbsSourcePath(String str) {
        ModuleInfo moduleInfo;
        int i = this.numModules;
        do {
            i--;
            if (i < 0) {
                return null;
            }
            moduleInfo = this.modules[i];
        } while (!str.equals(moduleInfo.getSourceAbsPathname()));
        return moduleInfo;
    }

    public synchronized ModuleInfo findWithSourcePath(Path path, String str) {
        ModuleInfo moduleInfoSearchWithAbsSourcePath;
        String string = path.toString();
        moduleInfoSearchWithAbsSourcePath = searchWithAbsSourcePath(string);
        if (moduleInfoSearchWithAbsSourcePath == null) {
            moduleInfoSearchWithAbsSourcePath = new ModuleInfo();
            moduleInfoSearchWithAbsSourcePath.sourcePath = str;
            moduleInfoSearchWithAbsSourcePath.sourceAbsPath = path;
            moduleInfoSearchWithAbsSourcePath.sourceAbsPathname = string;
            add(moduleInfoSearchWithAbsSourcePath);
        }
        return moduleInfoSearchWithAbsSourcePath;
    }

    public synchronized ModuleInfo findWithSourcePath(String str) {
        return findWithSourcePath(ModuleInfo.absPath(str), str);
    }

    public synchronized ModuleInfo findWithURL(URL url) {
        return findWithSourcePath(URLPath.valueOf(url), url.toExternalForm());
    }

    public synchronized void register(String str, String str2, String str3) {
        if (searchWithClassName(str) != null) {
            return;
        }
        Path pathValueOf = Path.valueOf(str2);
        String string = pathValueOf.getCanonical().toString();
        if (searchWithAbsSourcePath(string) != null) {
            return;
        }
        ModuleInfo moduleInfo = new ModuleInfo();
        if (pathValueOf.isAbsolute()) {
            moduleInfo.sourceAbsPath = pathValueOf;
            moduleInfo.sourceAbsPathname = string;
        } else {
            try {
                Class<?> cls = this.packageInfoChain.getClass();
                Path pathResolve = URLPath.valueOf(cls.getClassLoader().getResource(cls.getName().replace('.', '/') + ".class")).resolve(str2);
                moduleInfo.sourceAbsPath = pathResolve;
                moduleInfo.sourceAbsPathname = pathResolve.toString();
            } catch (Throwable unused) {
                return;
            }
        }
        moduleInfo.setClassName(str);
        moduleInfo.sourcePath = str2;
        moduleInfo.uri = str3;
        add(moduleInfo);
    }

    public synchronized void loadPackageInfo(String str) throws IllegalAccessException, InstantiationException, ClassNotFoundException {
        try {
            String str2 = str + ".$ModulesMap$";
            for (ModuleSet moduleSet = this.packageInfoChain; moduleSet != null; moduleSet = moduleSet.next) {
                moduleSet.getClass().getName().equals(str2);
            }
            ModuleSet moduleSet2 = (ModuleSet) Class.forName(str2).newInstance();
            moduleSet2.next = this.packageInfoChain;
            this.packageInfoChain = moduleSet2;
            moduleSet2.register(this);
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void clear() {
        try {
            ModuleSet moduleSet = this.packageInfoChain;
            while (moduleSet != null) {
                ModuleSet moduleSet2 = moduleSet.next;
                moduleSet.next = null;
                moduleSet = moduleSet2;
            }
            this.packageInfoChain = null;
            this.modules = null;
            this.numModules = 0;
        } catch (Throwable th) {
            throw th;
        }
    }
}
