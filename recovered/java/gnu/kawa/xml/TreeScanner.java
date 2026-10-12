package gnu.kawa.xml;

import _COROUTINE.a;
import androidx.fragment.app.FragmentTransaction;
import gnu.lists.AbstractSequence;
import gnu.lists.NodePredicate;
import gnu.lists.PositionConsumer;
import gnu.mapping.CallContext;
import gnu.mapping.MethodProc;
import gnu.mapping.Procedure;
import gnu.mapping.WrongType;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import kotlin.text.Typography;

/* loaded from: classes2.dex */
public abstract class TreeScanner extends MethodProc implements Externalizable {
    public NodePredicate type;

    @Override // gnu.mapping.Procedure
    public int numArgs() {
        return FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
    }

    public abstract void scan(AbstractSequence abstractSequence, int i, PositionConsumer positionConsumer);

    public TreeScanner() {
        setProperty(Procedure.validateApplyKey, "gnu.kawa.xml.CompileXmlFunctions:validateApplyTreeScanner");
    }

    public NodePredicate getNodePredicate() {
        return this.type;
    }

    @Override // gnu.mapping.Procedure
    public void apply(CallContext callContext) throws Throwable {
        PositionConsumer positionConsumer = (PositionConsumer) callContext.consumer;
        Object nextArg = callContext.getNextArg();
        callContext.lastArg();
        try {
            KNode kNode = (KNode) nextArg;
            scan(kNode.sequence, kNode.getPos(), positionConsumer);
        } catch (ClassCastException unused) {
            throw new WrongType(getDesc(), -4, nextArg, "node()");
        }
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this.type);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.type = (NodePredicate) objectInput.readObject();
    }

    public String getDesc() {
        String name = getClass().getName();
        int iLastIndexOf = name.lastIndexOf(46);
        if (iLastIndexOf > 0) {
            name = name.substring(iLastIndexOf + 1);
        }
        StringBuilder sbQ = a.q(name, "::");
        sbQ.append(this.type);
        return sbQ.toString();
    }

    @Override // gnu.mapping.Procedure
    public String toString() {
        return "#<" + getClass().getName() + ' ' + this.type + Typography.greater;
    }
}
