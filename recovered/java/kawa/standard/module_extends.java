package kawa.standard;

import gnu.bytecode.ClassType;
import gnu.bytecode.Type;
import gnu.expr.ModuleExp;
import gnu.expr.ScopeExp;
import gnu.lists.Pair;
import kawa.lang.Syntax;
import kawa.lang.Translator;

/* loaded from: classes2.dex */
public class module_extends extends Syntax {
    public static final module_extends module_extends;

    static {
        module_extends module_extendsVar = new module_extends();
        module_extends = module_extendsVar;
        module_extendsVar.setName("module-extends");
    }

    @Override // kawa.lang.Syntax
    public void scanForm(Pair pair, ScopeExp scopeExp, Translator translator) {
        Type typeExp2Type = translator.exp2Type((Pair) pair.getCdr());
        ModuleExp module = translator.getModule();
        module.setSuperType((ClassType) typeExp2Type);
        module.setFlag(131072);
    }
}
