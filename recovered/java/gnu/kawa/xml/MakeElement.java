package gnu.kawa.xml;

import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.Method;
import gnu.bytecode.Type;
import gnu.bytecode.Variable;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.ConsumerTarget;
import gnu.expr.Expression;
import gnu.expr.QuoteExp;
import gnu.expr.Special;
import gnu.expr.Target;
import gnu.lists.Consumable;
import gnu.lists.Consumer;
import gnu.mapping.CallContext;
import gnu.mapping.Symbol;
import gnu.xml.NamespaceBinding;
import gnu.xml.XMLFilter;
import gnu.xml.XName;

/* loaded from: classes2.dex */
public class MakeElement extends NodeConstructor {
    static final Method endElementMethod;
    public static final MakeElement makeElement = new MakeElement();
    static final Method startElementMethod3;
    static final Method startElementMethod4;
    static final ClassType typeMakeElement;
    public int copyNamespacesMode = 1;
    private boolean handlingKeywordParameters;
    NamespaceBinding namespaceNodes;
    public Symbol tag;

    static {
        ClassType classTypeMake = ClassType.make("gnu.kawa.xml.MakeElement");
        typeMakeElement = classTypeMake;
        startElementMethod3 = classTypeMake.getDeclaredMethod("startElement", 3);
        startElementMethod4 = classTypeMake.getDeclaredMethod("startElement", 4);
        endElementMethod = classTypeMake.getDeclaredMethod("endElement", 2);
    }

    @Override // gnu.mapping.Procedure
    public int numArgs() {
        return this.tag == null ? -4095 : -4096;
    }

    @Override // gnu.mapping.Procedure
    public String toString() {
        return "makeElement[" + this.tag + "]";
    }

    public boolean isHandlingKeywordParameters() {
        return this.handlingKeywordParameters;
    }

    public void setHandlingKeywordParameters(boolean z) {
        this.handlingKeywordParameters = z;
    }

    public NamespaceBinding getNamespaceNodes() {
        return this.namespaceNodes;
    }

    public void setNamespaceNodes(NamespaceBinding namespaceBinding) {
        this.namespaceNodes = namespaceBinding;
    }

    public static Symbol getTagName(ApplyExp applyExp) {
        Expression[] args = applyExp.getArgs();
        if (args.length <= 0) {
            return null;
        }
        Expression expression = args[0];
        if (!(expression instanceof QuoteExp)) {
            return null;
        }
        Object value = ((QuoteExp) expression).getValue();
        if (value instanceof Symbol) {
            return (Symbol) value;
        }
        return null;
    }

    public static void startElement(Consumer consumer, Object obj, int i, NamespaceBinding namespaceBinding) {
        XName xName;
        if (obj instanceof Symbol) {
            xName = new XName((Symbol) obj, namespaceBinding);
        } else {
            xName = new XName(Symbol.make("", obj.toString(), ""), namespaceBinding);
        }
        if (consumer instanceof XMLFilter) {
            ((XMLFilter) consumer).copyNamespacesMode = i;
        }
        consumer.startElement(xName);
    }

    public static void startElement(Consumer consumer, Object obj, int i) {
        Symbol symbolMake;
        if (obj instanceof Symbol) {
            symbolMake = (Symbol) obj;
        } else {
            symbolMake = Symbol.make("", obj.toString(), "");
        }
        if (consumer instanceof XMLFilter) {
            ((XMLFilter) consumer).copyNamespacesMode = i;
        }
        consumer.startElement(symbolMake);
    }

    public static void endElement(Consumer consumer, Object obj) {
        consumer.endElement();
    }

    @Override // gnu.mapping.Procedure
    public void apply(CallContext callContext) {
        Consumer consumer = callContext.consumer;
        XMLFilter xMLFilterPushNodeContext = NodeConstructor.pushNodeContext(callContext);
        try {
            Object nextArg = this.tag;
            if (nextArg == null) {
                nextArg = callContext.getNextArg();
            }
            NamespaceBinding namespaceBinding = this.namespaceNodes;
            if (namespaceBinding != null) {
                startElement(xMLFilterPushNodeContext, nextArg, this.copyNamespacesMode, namespaceBinding);
            } else {
                startElement(xMLFilterPushNodeContext, nextArg, this.copyNamespacesMode);
            }
            Special special = Special.dfault;
            while (true) {
                Object nextArg2 = callContext.getNextArg(special);
                if (nextArg2 != special) {
                    if (nextArg2 instanceof Consumable) {
                        ((Consumable) nextArg2).consume(xMLFilterPushNodeContext);
                    } else {
                        callContext.writeValue(nextArg2);
                    }
                    if (isHandlingKeywordParameters()) {
                        xMLFilterPushNodeContext.endAttribute();
                    }
                } else {
                    endElement(xMLFilterPushNodeContext, nextArg);
                    NodeConstructor.popNodeContext(consumer, callContext);
                    return;
                }
            }
        } catch (Throwable th) {
            NodeConstructor.popNodeContext(consumer, callContext);
            throw th;
        }
    }

    @Override // gnu.kawa.xml.NodeConstructor
    public void compileToNode(ApplyExp applyExp, Compilation compilation, ConsumerTarget consumerTarget) {
        Variable consumerVariable = consumerTarget.getConsumerVariable();
        Expression[] args = applyExp.getArgs();
        int length = args.length;
        CodeAttr code = compilation.getCode();
        code.emitLoad(consumerVariable);
        code.emitDup();
        Symbol symbol = this.tag;
        int i = 0;
        if (symbol == null) {
            args[0].compile(compilation, Target.pushObject);
            i = 1;
        } else {
            compilation.compileConstant(symbol, Target.pushObject);
        }
        code.emitDup(1, 1);
        code.emitPushInt(this.copyNamespacesMode);
        NamespaceBinding namespaceBinding = this.namespaceNodes;
        if (namespaceBinding != null) {
            compilation.compileConstant(namespaceBinding, Target.pushObject);
            code.emitInvokeStatic(startElementMethod4);
        } else {
            code.emitInvokeStatic(startElementMethod3);
        }
        while (i < length) {
            NodeConstructor.compileChild(args[i], compilation, consumerTarget);
            if (isHandlingKeywordParameters()) {
                code.emitLoad(consumerVariable);
                code.emitInvokeInterface(MakeAttribute.endAttributeMethod);
            }
            i++;
        }
        code.emitInvokeStatic(endElementMethod);
    }

    @Override // gnu.kawa.xml.NodeConstructor, gnu.mapping.Procedure
    public Type getReturnType(Expression[] expressionArr) {
        return Compilation.typeObject;
    }
}
