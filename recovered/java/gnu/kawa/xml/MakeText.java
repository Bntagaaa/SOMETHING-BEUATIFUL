package gnu.kawa.xml;

import androidx.fragment.app.FragmentTransaction;
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
import gnu.expr.Target;
import gnu.lists.Consumer;
import gnu.mapping.CallContext;
import gnu.mapping.Values;
import gnu.xml.NodeTree;
import gnu.xml.TextUtils;
import gnu.xml.XMLFilter;

/* loaded from: classes2.dex */
public class MakeText extends NodeConstructor {
    public static final MakeText makeText = new MakeText();

    @Override // gnu.mapping.Procedure
    public int numArgs() {
        return FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
    }

    @Override // gnu.mapping.ProcedureN, gnu.mapping.Procedure
    public Object apply1(Object obj) {
        if (obj == null) {
            return obj;
        }
        if ((obj instanceof Values) && ((Values) obj).isEmpty()) {
            return obj;
        }
        NodeTree nodeTree = new NodeTree();
        TextUtils.textValue(obj, new XMLFilter(nodeTree));
        return KNode.make(nodeTree);
    }

    public static void text$X(Object obj, CallContext callContext) {
        if (obj != null) {
            if ((obj instanceof Values) && ((Values) obj).isEmpty()) {
                return;
            }
            Consumer consumer = callContext.consumer;
            try {
                TextUtils.textValue(obj, NodeConstructor.pushNodeContext(callContext));
            } finally {
                NodeConstructor.popNodeContext(consumer, callContext);
            }
        }
    }

    @Override // gnu.mapping.Procedure
    public void apply(CallContext callContext) {
        text$X(callContext.getNextArg(null), callContext);
    }

    @Override // gnu.kawa.xml.NodeConstructor, gnu.expr.Inlineable
    public void compile(ApplyExp applyExp, Compilation compilation, Target target) {
        ApplyExp.compile(applyExp, compilation, target);
    }

    @Override // gnu.kawa.xml.NodeConstructor
    public void compileToNode(ApplyExp applyExp, Compilation compilation, ConsumerTarget consumerTarget) {
        CodeAttr code = compilation.getCode();
        int i = 0;
        Expression expression = applyExp.getArgs()[0];
        Variable consumerVariable = consumerTarget.getConsumerVariable();
        if (expression instanceof QuoteExp) {
            Object value = ((QuoteExp) expression).getValue();
            if (value instanceof String) {
                String str = (String) value;
                String strCalculateSplit = CodeAttr.calculateSplit(str);
                int length = strCalculateSplit.length();
                Method method = ((ClassType) consumerVariable.getType()).getMethod("write", new Type[]{Type.string_type});
                int i2 = 0;
                while (i < length) {
                    code.emitLoad(consumerVariable);
                    int iCharAt = strCalculateSplit.charAt(i) + i2;
                    code.emitPushString(str.substring(i2, iCharAt));
                    code.emitInvoke(method);
                    i++;
                    i2 = iCharAt;
                }
                return;
            }
        }
        expression.compile(compilation, Target.pushObject);
        code.emitLoad(consumerVariable);
        code.emitInvokeStatic(ClassType.make("gnu.xml.TextUtils").getDeclaredMethod("textValue", 2));
    }
}
