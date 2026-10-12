package gnu.kawa.lispexpr;

import gnu.expr.Expression;
import gnu.expr.QuoteExp;
import gnu.lists.Pair;
import gnu.mapping.Namespace;
import kawa.lang.Syntax;
import kawa.lang.Translator;

/* loaded from: classes2.dex */
public class ResolveNamespace extends Syntax {
    public static final ResolveNamespace resolveNamespace;
    public static final ResolveNamespace resolveQName;
    boolean resolvingQName;

    static {
        ResolveNamespace resolveNamespace2 = new ResolveNamespace("$resolve-namespace$", false);
        resolveNamespace = resolveNamespace2;
        resolveQName = new ResolveNamespace("$resolve-qname", true);
        resolveNamespace2.setName("$resolve-namespace$");
    }

    public ResolveNamespace(String str, boolean z) {
        super(str);
        this.resolvingQName = z;
    }

    @Override // kawa.lang.Syntax
    public Expression rewriteForm(Pair pair, Translator translator) {
        Pair pair2 = (Pair) pair.getCdr();
        Namespace namespaceNamespaceResolvePrefix = translator.namespaceResolvePrefix(translator.rewrite_car(pair2, false));
        if (namespaceNamespaceResolvePrefix == null) {
            String string = pair2.getCar().toString();
            if (string == "[default-element-namespace]") {
                namespaceNamespaceResolvePrefix = Namespace.EmptyNamespace;
            } else {
                Object objPushPositionOf = translator.pushPositionOf(pair2);
                translator.error('e', "unknown namespace prefix " + string);
                translator.popPositionOf(objPushPositionOf);
                namespaceNamespaceResolvePrefix = Namespace.valueOf(string, string);
            }
        }
        if (this.resolvingQName) {
            return new QuoteExp(namespaceNamespaceResolvePrefix.getSymbol(((Pair) pair2.getCdr()).getCar().toString()));
        }
        return new QuoteExp(namespaceNamespaceResolvePrefix);
    }
}
