package kawa.standard;

import gnu.expr.Declaration;
import gnu.expr.Expression;
import gnu.expr.ModuleExp;
import gnu.expr.ScopeExp;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.mapping.Symbol;
import java.util.Vector;
import kawa.lang.Syntax;
import kawa.lang.SyntaxForm;
import kawa.lang.Translator;

/* loaded from: classes2.dex */
public class export extends Syntax {
    public static final export export;
    public static final export module_export;

    @Override // kawa.lang.Syntax
    public Expression rewriteForm(Pair pair, Translator translator) {
        return null;
    }

    static {
        export exportVar = new export();
        module_export = exportVar;
        exportVar.setName("module-export");
        export = new export();
        exportVar.setName("export");
    }

    @Override // kawa.lang.Syntax
    public boolean scanForDefinitions(Pair pair, Vector vector, ScopeExp scopeExp, Translator translator) {
        Object cdr = pair.getCdr();
        Object objPushPositionOf = translator.pushPositionOf(pair);
        try {
            if (scopeExp instanceof ModuleExp) {
                ((ModuleExp) scopeExp).setFlag(16384);
                while (cdr != LList.Empty) {
                    translator.pushPositionOf(cdr);
                    while (cdr instanceof SyntaxForm) {
                        cdr = ((SyntaxForm) cdr).getDatum();
                    }
                    if (cdr instanceof Pair) {
                        Pair pair2 = (Pair) cdr;
                        Object car = pair2.getCar();
                        while (car instanceof SyntaxForm) {
                            car = ((SyntaxForm) car).getDatum();
                        }
                        if (car instanceof String) {
                            String str = (String) car;
                            if (str.startsWith("namespace:")) {
                                translator.error('w', "'namespace:' prefix ignored");
                                car = str.substring(10).intern();
                            }
                        }
                        if ((car instanceof String) || (car instanceof Symbol)) {
                            Declaration noDefine = scopeExp.getNoDefine(car);
                            if (noDefine.getFlag(512L)) {
                                Translator.setLine(noDefine, pair2);
                            }
                            noDefine.setFlag(1024L);
                            cdr = pair2.getCdr();
                        }
                    }
                    translator.error('e', "invalid syntax in '" + getName() + '\'');
                    translator.popPositionOf(objPushPositionOf);
                    return false;
                }
                translator.popPositionOf(objPushPositionOf);
                return true;
            }
            translator.error('e', "'" + getName() + "' not at module level");
            translator.popPositionOf(objPushPositionOf);
            return true;
        } catch (Throwable th) {
            translator.popPositionOf(objPushPositionOf);
            throw th;
        }
    }
}
