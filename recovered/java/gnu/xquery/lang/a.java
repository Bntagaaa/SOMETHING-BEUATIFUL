package gnu.xquery.lang;

import gnu.mapping.InPort;
import gnu.mapping.Procedure1;

/* loaded from: classes2.dex */
class a extends Procedure1 {
    @Override // gnu.mapping.Procedure1, gnu.mapping.Procedure
    public Object apply1(Object obj) {
        InPort inPort = (InPort) obj;
        int lineNumber = inPort.getLineNumber() + 1;
        char c = inPort.readState;
        if (c == '\n') {
            c = ' ';
        }
        if (c == '<') {
            return _COROUTINE.a.e(lineNumber, "<!--", "-->");
        }
        if (c == ':') {
            return _COROUTINE.a.e(lineNumber, "-(:", "c:) ");
        }
        return "(: " + lineNumber + c + ":) ";
    }
}
