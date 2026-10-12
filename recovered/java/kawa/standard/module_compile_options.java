package kawa.standard;

import gnu.expr.Expression;
import gnu.expr.ScopeExp;
import gnu.lists.LList;
import gnu.lists.Pair;
import java.util.Vector;
import kawa.lang.Syntax;
import kawa.lang.Translator;

/* loaded from: classes2.dex */
public class module_compile_options extends Syntax {
    public static final module_compile_options module_compile_options;

    @Override // kawa.lang.Syntax
    public Expression rewriteForm(Pair pair, Translator translator) {
        return null;
    }

    static {
        module_compile_options module_compile_optionsVar = new module_compile_options();
        module_compile_options = module_compile_optionsVar;
        module_compile_optionsVar.setName("module-compile-options");
    }

    @Override // kawa.lang.Syntax
    public boolean scanForDefinitions(Pair pair, Vector vector, ScopeExp scopeExp, Translator translator) {
        if (with_compile_options.getOptions(pair.getCdr(), null, this, translator) == LList.Empty) {
            return true;
        }
        translator.error('e', getName() + " key must be a keyword");
        return true;
    }
}
