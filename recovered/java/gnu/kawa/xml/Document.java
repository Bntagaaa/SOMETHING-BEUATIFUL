package gnu.kawa.xml;

import gnu.lists.Consumer;
import gnu.lists.XConsumer;
import gnu.mapping.NamedLocation;
import gnu.mapping.ThreadLocation;
import gnu.text.Path;
import gnu.text.SourceMessages;
import gnu.text.SyntaxException;
import gnu.xml.NodeTree;
import gnu.xml.XMLParser;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Hashtable;

/* loaded from: classes2.dex */
public class Document {
    public static final Document document = new Document();
    private static ThreadLocation docMapLocation = new ThreadLocation("document-map");
    private static HashMap cache = new HashMap();

    public static void parse(Object obj, Consumer consumer) throws Throwable {
        SourceMessages sourceMessages = new SourceMessages();
        boolean z = consumer instanceof XConsumer;
        if (z) {
            ((XConsumer) consumer).beginEntity(obj);
        }
        XMLParser.parse(obj, sourceMessages, consumer);
        if (sourceMessages.seenErrors()) {
            throw new SyntaxException("document function read invalid XML", sourceMessages);
        }
        if (z) {
            ((XConsumer) consumer).endEntity();
        }
    }

    public static KDocument parse(Object obj) throws Throwable {
        NodeTree nodeTree = new NodeTree();
        parse(obj, nodeTree);
        return new KDocument(nodeTree, 10);
    }

    public static class DocReference extends SoftReference {
        static ReferenceQueue queue = new ReferenceQueue();
        Path key;

        public DocReference(Path path, KDocument kDocument) {
            super(kDocument, queue);
            this.key = path;
        }
    }

    public static void clearLocalCache() {
        docMapLocation.getLocation().set(null);
    }

    public static void clearSoftCache() {
        cache = new HashMap();
    }

    public static KDocument parseCached(Object obj) throws Throwable {
        return parseCached(Path.valueOf(obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static synchronized KDocument parseCached(Path path) throws Throwable {
        while (true) {
            try {
                DocReference docReference = (DocReference) DocReference.queue.poll();
                if (docReference == null) {
                    break;
                }
                cache.remove(docReference.key);
            } catch (Throwable th) {
                throw th;
            }
        }
        NamedLocation location = docMapLocation.getLocation();
        Hashtable hashtable = (Hashtable) location.get(null);
        if (hashtable == null) {
            hashtable = new Hashtable();
            location.set(hashtable);
        }
        KDocument kDocument = (KDocument) hashtable.get(path);
        if (kDocument != null) {
            return kDocument;
        }
        DocReference docReference2 = (DocReference) cache.get(path);
        if (docReference2 != null) {
            KDocument kDocument2 = (KDocument) docReference2.get();
            if (kDocument2 == null) {
                cache.remove(path);
            } else {
                hashtable.put(path, kDocument2);
                return kDocument2;
            }
        }
        KDocument kDocument3 = parse(path);
        hashtable.put(path, kDocument3);
        cache.put(path, new DocReference(path, kDocument3));
        return kDocument3;
    }
}
