package gnu.kawa.xml;

import androidx.fragment.app.FragmentTransaction;
import gnu.lists.Consumer;
import gnu.mapping.CallContext;
import gnu.mapping.Location;
import gnu.mapping.MethodProc;
import gnu.mapping.Values;
import gnu.xml.TextUtils;
import gnu.xml.XMLFilter;

/* loaded from: classes2.dex */
public class CommentConstructor extends MethodProc {
    public static final CommentConstructor commentConstructor = new CommentConstructor();

    @Override // gnu.mapping.Procedure
    public int numArgs() {
        return FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
    }

    @Override // gnu.mapping.Procedure
    public void apply(CallContext callContext) {
        Consumer consumer = callContext.consumer;
        XMLFilter xMLFilterPushNodeContext = NodeConstructor.pushNodeContext(callContext);
        try {
            StringBuffer stringBuffer = new StringBuffer();
            String str = Location.UNBOUND;
            boolean z = true;
            while (true) {
                Object nextArg = callContext.getNextArg(str);
                if (nextArg != str) {
                    if (nextArg instanceof Values) {
                        Values values = (Values) nextArg;
                        int iNextPos = 0;
                        while (true) {
                            iNextPos = values.nextPos(iNextPos);
                            if (iNextPos != 0) {
                                if (!z) {
                                    stringBuffer.append(' ');
                                }
                                TextUtils.stringValue(values.getPosPrevious(iNextPos), stringBuffer);
                                z = false;
                            }
                        }
                    } else {
                        if (!z) {
                            stringBuffer.append(' ');
                        }
                        TextUtils.stringValue(nextArg, stringBuffer);
                        z = false;
                    }
                } else {
                    int length = stringBuffer.length();
                    char[] cArr = new char[length];
                    stringBuffer.getChars(0, length, cArr, 0);
                    xMLFilterPushNodeContext.writeComment(cArr, 0, length);
                    return;
                }
            }
        } finally {
            NodeConstructor.popNodeContext(consumer, callContext);
        }
    }
}
