package gnu.kawa.xml;

import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.Method;
import gnu.bytecode.Variable;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.ConsumerTarget;
import gnu.expr.Expression;
import gnu.expr.Target;
import gnu.lists.Consumer;
import gnu.mapping.CallContext;
import gnu.mapping.Values;
import gnu.xml.XMLFilter;

/* loaded from: classes2.dex */
public class MakeWithBaseUri extends NodeConstructor {
    static final Method beginEntityMethod;
    static final Method endEntityMethod;
    public static final MakeWithBaseUri makeWithBaseUri = new MakeWithBaseUri();
    static final ClassType typeXConsumer;

    @Override // gnu.mapping.Procedure
    public int numArgs() {
        return 8194;
    }

    static {
        ClassType classTypeMake = ClassType.make("gnu.lists.XConsumer");
        typeXConsumer = classTypeMake;
        beginEntityMethod = classTypeMake.getDeclaredMethod("beginEntity", 1);
        endEntityMethod = classTypeMake.getDeclaredMethod("endEntity", 0);
    }

    @Override // gnu.mapping.Procedure
    public void apply(CallContext callContext) {
        Consumer consumer = callContext.consumer;
        XMLFilter xMLFilterPushNodeContext = NodeConstructor.pushNodeContext(callContext);
        Object nextArg = callContext.getNextArg();
        Object nextArg2 = callContext.getNextArg();
        if (xMLFilterPushNodeContext != null) {
            xMLFilterPushNodeContext.beginEntity(nextArg);
        }
        try {
            Values.writeValues(nextArg2, xMLFilterPushNodeContext);
        } finally {
            if (xMLFilterPushNodeContext != null) {
                xMLFilterPushNodeContext.endEntity();
            }
            NodeConstructor.popNodeContext(consumer, callContext);
        }
    }

    @Override // gnu.kawa.xml.NodeConstructor
    public void compileToNode(ApplyExp applyExp, Compilation compilation, ConsumerTarget consumerTarget) {
        Variable consumerVariable = consumerTarget.getConsumerVariable();
        Expression[] args = applyExp.getArgs();
        int length = args.length;
        CodeAttr code = compilation.getCode();
        code.emitLoad(consumerVariable);
        args[0].compile(compilation, Target.pushObject);
        code.emitInvokeInterface(beginEntityMethod);
        NodeConstructor.compileChild(args[1], compilation, consumerTarget);
        code.emitLoad(consumerVariable);
        code.emitInvokeInterface(endEntityMethod);
    }
}
