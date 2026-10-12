package gnu.kawa.lispexpr;

import gnu.bytecode.ClassType;
import gnu.expr.Declaration;
import gnu.expr.Expression;
import gnu.expr.ModuleExp;
import gnu.expr.QuoteExp;
import gnu.expr.ScopeExp;
import gnu.expr.SetExp;
import gnu.kawa.xml.XmlNamespace;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.mapping.Namespace;
import gnu.mapping.Symbol;
import java.util.Vector;
import kawa.lang.Syntax;
import kawa.lang.Translator;

/* loaded from: classes2.dex */
public class DefineNamespace extends Syntax {
    public static final String XML_NAMESPACE_MAGIC = "&xml&";
    public static final DefineNamespace define_namespace;
    public static final DefineNamespace define_private_namespace;
    public static final DefineNamespace define_xml_namespace;
    private boolean makePrivate;
    private boolean makeXML;

    static {
        DefineNamespace defineNamespace = new DefineNamespace();
        define_namespace = defineNamespace;
        DefineNamespace defineNamespace2 = new DefineNamespace();
        define_private_namespace = defineNamespace2;
        DefineNamespace defineNamespace3 = new DefineNamespace();
        define_xml_namespace = defineNamespace3;
        defineNamespace.setName("define-namespace");
        defineNamespace2.setName("define-private-namespace");
        defineNamespace2.makePrivate = true;
        defineNamespace3.setName("define-xml-namespace");
        defineNamespace3.makeXML = true;
    }

    @Override // kawa.lang.Syntax
    public boolean scanForDefinitions(Pair pair, Vector vector, ScopeExp scopeExp, Translator translator) {
        Expression expressionRewrite_car;
        Object objValueOf;
        if (pair.getCdr() instanceof Pair) {
            Pair pair2 = (Pair) pair.getCdr();
            if ((pair2.getCar() instanceof Symbol) && (pair2.getCdr() instanceof Pair)) {
                Pair pair3 = (Pair) pair2.getCdr();
                if (pair3.getCdr() == LList.Empty) {
                    Symbol symbol = (Symbol) pair2.getCar();
                    Declaration define = scopeExp.getDefine(symbol, 'w', translator);
                    translator.push(define);
                    define.setFlag(2375680L);
                    if (this.makePrivate) {
                        define.setFlag(16777216L);
                        define.setPrivate(true);
                    } else if (scopeExp instanceof ModuleExp) {
                        define.setCanRead(true);
                    }
                    Translator.setLine(define, pair2);
                    if (pair3.getCar() instanceof CharSequence) {
                        String string = pair3.getCar().toString();
                        if (string.startsWith("class:")) {
                            objValueOf = ClassNamespace.getInstance(string, ClassType.make(string.substring(6)));
                            define.setType(ClassType.make("gnu.kawa.lispexpr.ClassNamespace"));
                        } else if (this.makeXML) {
                            objValueOf = XmlNamespace.getInstance(symbol.getName(), string);
                            define.setType(ClassType.make("gnu.kawa.xml.XmlNamespace"));
                        } else {
                            objValueOf = Namespace.valueOf(string);
                            define.setType(ClassType.make("gnu.mapping.Namespace"));
                        }
                        expressionRewrite_car = new QuoteExp(objValueOf);
                        define.setFlag(8192L);
                    } else {
                        expressionRewrite_car = translator.rewrite_car(pair3, false);
                    }
                    define.noteValue(expressionRewrite_car);
                    vector.addElement(SetExp.makeDefinition(define, expressionRewrite_car));
                    return true;
                }
            }
        }
        translator.error('e', "invalid syntax for define-namespace");
        return false;
    }

    @Override // kawa.lang.Syntax
    public Expression rewriteForm(Pair pair, Translator translator) {
        return translator.syntaxError("define-namespace is only allowed in a <body>");
    }
}
