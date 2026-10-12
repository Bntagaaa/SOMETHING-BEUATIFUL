package gnu.kawa.xml;

import gnu.lists.Consumer;
import gnu.mapping.CallContext;
import gnu.mapping.Location;
import gnu.mapping.MethodProc;
import gnu.xml.TextUtils;
import gnu.xml.XMLFilter;

/* loaded from: classes2.dex */
public class MakeCDATA extends MethodProc {
    public static final MakeCDATA makeCDATA = new MakeCDATA();

    @Override // gnu.mapping.Procedure
    public void apply(CallContext callContext) {
        Consumer consumer = callContext.consumer;
        XMLFilter xMLFilterPushNodeContext = NodeConstructor.pushNodeContext(callContext);
        try {
            StringBuffer stringBuffer = new StringBuffer();
            String str = Location.UNBOUND;
            while (true) {
                Object nextArg = callContext.getNextArg(str);
                if (nextArg != str) {
                    TextUtils.stringValue(nextArg, stringBuffer);
                } else {
                    int length = stringBuffer.length();
                    char[] cArr = new char[length];
                    stringBuffer.getChars(0, length, cArr, 0);
                    xMLFilterPushNodeContext.writeCDATA(cArr, 0, length);
                    return;
                }
            }
        } finally {
            NodeConstructor.popNodeContext(consumer, callContext);
        }
    }
}
