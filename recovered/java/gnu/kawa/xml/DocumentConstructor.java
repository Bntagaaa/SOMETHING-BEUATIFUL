package gnu.kawa.xml;

import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.Method;
import gnu.bytecode.Variable;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.ConsumerTarget;
import gnu.expr.Expression;
import gnu.lists.Consumable;
import gnu.lists.Consumer;
import gnu.mapping.CallContext;
import gnu.mapping.Location;
import gnu.xml.XMLFilter;

/* loaded from: classes2.dex */
public class DocumentConstructor extends NodeConstructor {
    public static final DocumentConstructor documentConstructor = new DocumentConstructor();
    static final Method endDocumentMethod;
    static final Method startDocumentMethod;

    static {
        ClassType classType = Compilation.typeConsumer;
        startDocumentMethod = classType.getDeclaredMethod("startDocument", 0);
        endDocumentMethod = classType.getDeclaredMethod("endDocument", 0);
    }

    @Override // gnu.mapping.Procedure
    public void apply(CallContext callContext) {
        Consumer consumer = callContext.consumer;
        XMLFilter xMLFilterPushNodeContext = NodeConstructor.pushNodeContext(callContext);
        try {
            String str = Location.UNBOUND;
            xMLFilterPushNodeContext.startDocument();
            while (true) {
                Object nextArg = callContext.getNextArg(str);
                if (nextArg != str) {
                    if (nextArg instanceof Consumable) {
                        ((Consumable) nextArg).consume(xMLFilterPushNodeContext);
                    } else {
                        xMLFilterPushNodeContext.writeObject(nextArg);
                    }
                } else {
                    xMLFilterPushNodeContext.endDocument();
                    return;
                }
            }
        } finally {
            NodeConstructor.popNodeContext(consumer, callContext);
        }
    }

    @Override // gnu.kawa.xml.NodeConstructor
    public void compileToNode(ApplyExp applyExp, Compilation compilation, ConsumerTarget consumerTarget) {
        Variable consumerVariable = consumerTarget.getConsumerVariable();
        Expression[] args = applyExp.getArgs();
        CodeAttr code = compilation.getCode();
        code.emitLoad(consumerVariable);
        code.emitInvokeInterface(startDocumentMethod);
        for (Expression expression : args) {
            NodeConstructor.compileChild(expression, compilation, consumerTarget);
        }
        code.emitLoad(consumerVariable);
        code.emitInvokeInterface(endDocumentMethod);
    }
}
