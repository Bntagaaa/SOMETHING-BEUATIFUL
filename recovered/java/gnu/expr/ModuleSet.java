package gnu.expr;

/* loaded from: classes2.dex */
public abstract class ModuleSet {
    public static final String MODULES_MAP = "$ModulesMap$";
    ModuleSet next;

    public abstract void register(ModuleManager moduleManager);
}
