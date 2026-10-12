package gnu.kawa.xml;

import androidx.fragment.app.FragmentTransaction;
import gnu.lists.FString;
import gnu.mapping.CharArrayOutPort;
import gnu.mapping.Procedure1;
import gnu.xml.XMLPrinter;
import java.io.IOException;

/* loaded from: classes2.dex */
public class OutputAsXML extends Procedure1 {
    @Override // gnu.mapping.Procedure1, gnu.mapping.Procedure
    public int numArgs() {
        return FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
    }

    @Override // gnu.mapping.Procedure1, gnu.mapping.Procedure
    public Object apply1(Object obj) throws IOException {
        CharArrayOutPort charArrayOutPort = new CharArrayOutPort();
        XMLPrinter xMLPrinter = new XMLPrinter(charArrayOutPort);
        xMLPrinter.writeObject(obj);
        xMLPrinter.flush();
        return new FString(charArrayOutPort.toCharArray());
    }
}
