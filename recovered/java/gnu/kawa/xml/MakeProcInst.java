package gnu.kawa.xml;

import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.ConsumerTarget;
import gnu.expr.Expression;
import gnu.expr.Target;
import gnu.lists.Consumer;
import gnu.lists.XConsumer;
import gnu.mapping.CallContext;
import gnu.mapping.Values;
import gnu.xml.TextUtils;

/* loaded from: classes2.dex */
public class MakeProcInst extends NodeConstructor {
    public static final MakeProcInst makeProcInst = new MakeProcInst();

    @Override // gnu.mapping.Procedure
    public int numArgs() {
        return 8194;
    }

    public static void procInst$C(Object obj, Object obj2, Consumer consumer) {
        Object objAtomicValue = KNode.atomicValue(obj);
        if (!(objAtomicValue instanceof String) && !(objAtomicValue instanceof UntypedAtomic)) {
            throw new ClassCastException("invalid type of processing-instruction target [XPTY0004]");
        }
        if (consumer instanceof XConsumer) {
            StringBuffer stringBuffer = new StringBuffer();
            if (obj2 instanceof Values) {
                Object[] values = ((Values) obj2).getValues();
                for (int i = 0; i < values.length; i++) {
                    if (i > 0) {
                        stringBuffer.append(' ');
                    }
                    TextUtils.stringValue(values[i], stringBuffer);
                }
            } else {
                TextUtils.stringValue(obj2, stringBuffer);
            }
            int length = stringBuffer.length();
            int i2 = 0;
            while (i2 < length && Character.isWhitespace(stringBuffer.charAt(i2))) {
                i2++;
            }
            int i3 = length - i2;
            char[] cArr = new char[i3];
            stringBuffer.getChars(i2, length, cArr, 0);
            ((XConsumer) consumer).writeProcessingInstruction(objAtomicValue.toString(), cArr, 0, i3);
        }
    }

    public static void procInst$X(Object obj, Object obj2, CallContext callContext) {
        Consumer consumer = callContext.consumer;
        try {
            procInst$C(obj, obj2, NodeConstructor.pushNodeContext(callContext));
        } finally {
            NodeConstructor.popNodeContext(consumer, callContext);
        }
    }

    @Override // gnu.mapping.Procedure
    public void apply(CallContext callContext) {
        procInst$X(callContext.getNextArg(null), callContext.getNextArg(null), callContext);
    }

    @Override // gnu.kawa.xml.NodeConstructor
    public void compileToNode(ApplyExp applyExp, Compilation compilation, ConsumerTarget consumerTarget) {
        CodeAttr code = compilation.getCode();
        Expression[] args = applyExp.getArgs();
        Expression expression = args[0];
        Target target = Target.pushObject;
        expression.compile(compilation, target);
        args[1].compile(compilation, target);
        code.emitLoad(consumerTarget.getConsumerVariable());
        code.emitInvokeStatic(ClassType.make("gnu.kawa.xml.MakeProcInst").getDeclaredMethod("procInst$C", 3));
    }
}
