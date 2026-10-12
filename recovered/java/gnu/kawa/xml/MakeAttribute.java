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
import gnu.xml.XMLFilter;

/* loaded from: classes2.dex */
public class MakeAttribute extends NodeConstructor {
    static final Method endAttributeMethod;
    public static final MakeAttribute makeAttribute;
    public static final QuoteExp makeAttributeExp;
    static final Method startAttributeMethod;
    static final ClassType typeMakeAttribute;

    @Override // gnu.mapping.Procedure
    public int numArgs() {
        return -4095;
    }

    static {
        MakeAttribute makeAttribute2 = new MakeAttribute();
        makeAttribute = makeAttribute2;
        makeAttributeExp = new QuoteExp(makeAttribute2);
        ClassType classTypeMake = ClassType.make("gnu.kawa.xml.MakeAttribute");
        typeMakeAttribute = classTypeMake;
        startAttributeMethod = classTypeMake.getDeclaredMethod("startAttribute", 2);
        endAttributeMethod = Compilation.typeConsumer.getDeclaredMethod("endAttribute", 0);
    }

    public static void startAttribute(Consumer consumer, Object obj) {
        consumer.startAttribute(obj);
    }

    @Override // gnu.mapping.Procedure
    public void apply(CallContext callContext) {
        Consumer consumer = callContext.consumer;
        XMLFilter xMLFilterPushNodeContext = NodeConstructor.pushNodeContext(callContext);
        try {
            startAttribute(xMLFilterPushNodeContext, callContext.getNextArg());
            Special special = Special.dfault;
            while (true) {
                Object nextArg = callContext.getNextArg(special);
                if (nextArg != special) {
                    if (nextArg instanceof Consumable) {
                        ((Consumable) nextArg).consume(xMLFilterPushNodeContext);
                    } else {
                        callContext.writeValue(nextArg);
                    }
                } else {
                    xMLFilterPushNodeContext.endAttribute();
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
        int length = args.length;
        CodeAttr code = compilation.getCode();
        code.emitLoad(consumerVariable);
        code.emitDup();
        args[0].compile(compilation, Target.pushObject);
        code.emitInvokeStatic(startAttributeMethod);
        for (int i = 1; i < length; i++) {
            NodeConstructor.compileChild(args[i], compilation, consumerTarget);
        }
        code.emitInvokeInterface(endAttributeMethod);
    }

    @Override // gnu.kawa.xml.NodeConstructor, gnu.mapping.Procedure
    public Type getReturnType(Expression[] expressionArr) {
        return Compilation.typeObject;
    }
}
