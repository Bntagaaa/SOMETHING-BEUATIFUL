package gnu.expr;

import gnu.kawa.util.AbstractWeakHashTable;
import gnu.mapping.WrappedException;

/* loaded from: classes2.dex */
public class ModuleContext {
    int flags;
    ModuleManager manager;
    private ClassToInstanceMap table = new ClassToInstanceMap();
    static ModuleContext global = new ModuleContext(ModuleManager.instance);
    public static int IN_HTTP_SERVER = 1;
    public static int IN_SERVLET = 2;

    public int getFlags() {
        return this.flags;
    }

    public void setFlags(int i) {
        this.flags = i;
    }

    public void addFlags(int i) {
        this.flags = i | this.flags;
    }

    public ModuleContext(ModuleManager moduleManager) {
        this.manager = moduleManager;
    }

    public static ModuleContext getContext() {
        return global;
    }

    public ModuleManager getManager() {
        return this.manager;
    }

    public synchronized Object findInstance(ModuleInfo moduleInfo) {
        try {
        } catch (ClassNotFoundException e) {
            throw new WrappedException("cannot find module " + moduleInfo.getClassName(), e);
        }
        return findInstance(moduleInfo.getModuleClass());
    }

    public synchronized Object searchInstance(Class cls) {
        return this.table.get(cls);
    }

    public synchronized Object findInstance(Class cls) {
        Object obj;
        Object objNewInstance;
        try {
            obj = this.table.get(cls);
            if (obj == null) {
                try {
                    try {
                        objNewInstance = cls.getDeclaredField("$instance").get(null);
                    } catch (NoSuchFieldException unused) {
                        objNewInstance = cls.newInstance();
                    }
                    obj = objNewInstance;
                    setInstance(obj);
                } catch (Throwable th) {
                    throw new WrappedException("exception while initializing module ".concat(cls.getName()), th);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return obj;
    }

    public synchronized void setInstance(Object obj) {
        this.table.put(obj.getClass(), obj);
    }

    public ModuleInfo findFromInstance(Object obj) {
        ModuleInfo moduleInfoFindWithClass;
        Class<?> cls = obj.getClass();
        synchronized (this) {
            moduleInfoFindWithClass = ModuleManager.findWithClass(cls);
            setInstance(obj);
        }
        return moduleInfoFindWithClass;
    }

    public synchronized void clear() {
        this.table.clear();
    }

    public static class ClassToInstanceMap extends AbstractWeakHashTable<Class, Object> {
        public boolean matches(Class cls, Class cls2) {
            return cls == cls2;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // gnu.kawa.util.AbstractWeakHashTable
        public Class getKeyFromValue(Object obj) {
            return obj.getClass();
        }
    }
}
