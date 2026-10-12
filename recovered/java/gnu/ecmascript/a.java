package gnu.ecmascript;

import gnu.mapping.InPort;
import gnu.mapping.Procedure1;

/* loaded from: classes2.dex */
class a extends Procedure1 {
    @Override // gnu.mapping.Procedure1, gnu.mapping.Procedure
    public Object apply1(Object obj) {
        return "(EcmaScript:" + (((InPort) obj).getLineNumber() + 1) + ") ";
    }
}
