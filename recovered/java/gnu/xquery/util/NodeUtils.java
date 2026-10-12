package gnu.xquery.util;

import gnu.bytecode.ClassType;
import gnu.bytecode.Type;
import gnu.kawa.reflect.ClassMethods;
import gnu.kawa.xml.Document;
import gnu.kawa.xml.KDocument;
import gnu.kawa.xml.KElement;
import gnu.kawa.xml.KNode;
import gnu.kawa.xml.Nodes;
import gnu.kawa.xml.SortedNodes;
import gnu.kawa.xml.UntypedAtomic;
import gnu.lists.Consumer;
import gnu.lists.PositionConsumer;
import gnu.mapping.CallContext;
import gnu.mapping.Environment;
import gnu.mapping.Procedure;
import gnu.mapping.Symbol;
import gnu.mapping.Values;
import gnu.mapping.WrongType;
import gnu.text.Path;
import gnu.xml.NamespaceBinding;
import gnu.xml.NodeTree;
import gnu.xml.TextUtils;
import gnu.xml.XName;
import gnu.xquery.lang.XQuery;
import java.io.File;
import java.net.URI;
import java.net.URL;
import java.util.Stack;

/* loaded from: classes2.dex */
public class NodeUtils {
    public static final Symbol collectionResolverSymbol = Symbol.make(XQuery.LOCAL_NAMESPACE, "collection-resolver", "qexo");

    public static Object nodeName(Object obj) {
        Values values = Values.empty;
        if (obj == values || obj == null) {
            return obj;
        }
        if (!(obj instanceof KNode)) {
            throw new WrongType("node-name", 1, obj, "node()?");
        }
        Symbol nodeSymbol = ((KNode) obj).getNodeSymbol();
        return nodeSymbol == null ? values : nodeSymbol;
    }

    public static String name(Object obj) {
        Object nodeNameObject;
        Values values = Values.empty;
        return (obj == values || obj == null || (nodeNameObject = ((KNode) obj).getNodeNameObject()) == null || nodeNameObject == values) ? "" : nodeNameObject.toString();
    }

    public static String localName(Object obj) {
        Values values = Values.empty;
        if (obj == values || obj == null) {
            return "";
        }
        if (!(obj instanceof KNode)) {
            throw new WrongType("local-name", 1, obj, "node()?");
        }
        Object nodeNameObject = ((KNode) obj).getNodeNameObject();
        if (nodeNameObject == null || nodeNameObject == values) {
            return "";
        }
        if (nodeNameObject instanceof Symbol) {
            return ((Symbol) nodeNameObject).getName();
        }
        return nodeNameObject.toString();
    }

    public static Object namespaceURI(Object obj) {
        if (obj != Values.empty && obj != null) {
            if (!(obj instanceof KNode)) {
                throw new WrongType("namespace-uri", 1, obj, "node()?");
            }
            Object nodeNameObject = ((KNode) obj).getNodeNameObject();
            if (nodeNameObject instanceof Symbol) {
                return QNameUtils.namespaceURIFromQName(nodeNameObject);
            }
            return "";
        }
        return "";
    }

    public static void prefixesFromNodetype(XName xName, Consumer consumer) {
        NamespaceBinding namespaceNodes = xName.getNamespaceNodes();
        for (NamespaceBinding next = namespaceNodes; next != null; next = next.getNext()) {
            if (next.getUri() != null) {
                String prefix = next.getPrefix();
                NamespaceBinding next2 = namespaceNodes;
                while (true) {
                    if (next2 == next) {
                        if (prefix == null) {
                            prefix = "";
                        }
                        consumer.writeObject(prefix);
                    } else if (next2.getPrefix() == prefix) {
                        break;
                    } else {
                        next2 = next2.getNext();
                    }
                }
            }
        }
    }

    public static void inScopePrefixes$X(Object obj, CallContext callContext) {
        Object nodeNameObject = ((KElement) obj).getNodeNameObject();
        if (nodeNameObject instanceof XName) {
            prefixesFromNodetype((XName) nodeNameObject, callContext.consumer);
        } else {
            callContext.consumer.writeObject("xml");
        }
    }

    public static void data$X(Object obj, CallContext callContext) {
        Consumer consumer = callContext.consumer;
        if (obj instanceof Values) {
            Values values = (Values) obj;
            int iStartPos = values.startPos();
            while (true) {
                iStartPos = values.nextPos(iStartPos);
                if (iStartPos == 0) {
                    return;
                } else {
                    consumer.writeObject(KNode.atomicValue(values.getPosPrevious(iStartPos)));
                }
            }
        } else {
            consumer.writeObject(KNode.atomicValue(obj));
        }
    }

    public static Object root(Object obj) {
        if (obj == null || obj == Values.empty) {
            return obj;
        }
        if (!(obj instanceof KNode)) {
            throw new WrongType("root", 1, obj, "node()?");
        }
        KNode kNode = (KNode) obj;
        return Nodes.root((NodeTree) kNode.sequence, kNode.getPos());
    }

    public static KDocument rootDocument(Object obj) {
        if (!(obj instanceof KNode)) {
            throw new WrongType("root-document", 1, obj, "node()?");
        }
        KNode kNode = (KNode) obj;
        KNode kNodeRoot = Nodes.root((NodeTree) kNode.sequence, kNode.getPos());
        if (!(kNodeRoot instanceof KDocument)) {
            throw new WrongType("root-document", 1, obj, "document()");
        }
        return (KDocument) kNodeRoot;
    }

    public static String getLang(KNode kNode) {
        NodeTree nodeTree = (NodeTree) kNode.sequence;
        int iAncestorAttribute = nodeTree.ancestorAttribute(kNode.ipos, NamespaceBinding.XML_NAMESPACE, "lang");
        if (iAncestorAttribute == 0) {
            return null;
        }
        return KNode.getNodeValue(nodeTree, iAncestorAttribute);
    }

    public static boolean lang(Object obj, Object obj2) {
        String strStringValue;
        if (obj == null || obj == Values.empty) {
            strStringValue = "";
        } else {
            strStringValue = TextUtils.stringValue(obj);
        }
        String lang = getLang((KNode) obj2);
        if (lang == null) {
            return false;
        }
        int length = lang.length();
        int length2 = strStringValue.length();
        if (length > length2 && lang.charAt(length2) == '-') {
            lang = lang.substring(0, length2);
        }
        return lang.equalsIgnoreCase(strStringValue);
    }

    public static Object documentUri(Object obj) {
        Values values;
        if (obj == null || obj == (values = Values.empty)) {
            return obj;
        }
        if (!(obj instanceof KNode)) {
            throw new WrongType("xs:document-uri", 1, obj, "node()?");
        }
        KNode kNode = (KNode) obj;
        Object objDocumentUriOfPos = ((NodeTree) kNode.sequence).documentUriOfPos(kNode.ipos);
        return objDocumentUriOfPos == null ? values : objDocumentUriOfPos;
    }

    public static Object nilled(Object obj) {
        Values values;
        if (obj == null || obj == (values = Values.empty)) {
            return obj;
        }
        if (obj instanceof KNode) {
            return !(obj instanceof KElement) ? values : Boolean.FALSE;
        }
        throw new WrongType("nilled", 1, obj, "node()?");
    }

    public static Object baseUri(Object obj) {
        Values values;
        if (obj == null || obj == (values = Values.empty)) {
            return obj;
        }
        if (!(obj instanceof KNode)) {
            throw new WrongType("base-uri", 1, obj, "node()?");
        }
        Path pathBaseURI = ((KNode) obj).baseURI();
        return pathBaseURI == null ? values : pathBaseURI;
    }

    public static Object a(Object obj, Object obj2) {
        int i;
        Stack stack;
        if (obj instanceof KNode) {
            obj = KNode.atomicValue(obj);
        }
        if (obj instanceof Values) {
            Object[] values = ((Values) obj).getValues();
            int length = values.length;
            while (true) {
                length--;
                if (length < 0) {
                    return obj2;
                }
                obj2 = a(values[length], obj2);
            }
        } else {
            String strC = StringUtils.c("fn:id", 1, obj, "");
            int length2 = strC.length();
            int i2 = 0;
            while (i2 < length2) {
                int i3 = i2 + 1;
                char cCharAt = strC.charAt(i2);
                if (Character.isWhitespace(cCharAt)) {
                    i2 = i3;
                } else {
                    if (XName.isNameStart(cCharAt)) {
                        i = length2;
                        while (i3 < length2) {
                            char cCharAt2 = strC.charAt(i3);
                            if (Character.isWhitespace(cCharAt2)) {
                                break;
                            }
                            i3++;
                            if (i >= length2 || XName.isNamePart(cCharAt2)) {
                            }
                        }
                        if (i < length2) {
                            String strSubstring = strC.substring(i, i3);
                            if (obj2 == null) {
                                obj2 = strSubstring;
                            } else {
                                if (obj2 instanceof Stack) {
                                    stack = (Stack) obj2;
                                } else {
                                    stack = new Stack();
                                    stack.push(obj2);
                                    obj2 = stack;
                                }
                                stack.push(strSubstring);
                            }
                        }
                        i2 = i3 + 1;
                    }
                    i = length2;
                }
            }
            return obj2;
        }
    }

    public static void id$X(Object obj, Object obj2, CallContext callContext) {
        KNode kNode = (KNode) obj2;
        NodeTree nodeTree = (NodeTree) kNode.sequence;
        Consumer consumer = callContext.consumer;
        Object objA = a(obj, null);
        if (objA == null) {
            return;
        }
        nodeTree.makeIDtableIfNeeded();
        if ((consumer instanceof PositionConsumer) && ((objA instanceof String) || (consumer instanceof SortedNodes))) {
            b(objA, nodeTree, (PositionConsumer) consumer);
            return;
        }
        if (objA instanceof String) {
            int iLookupID = nodeTree.lookupID((String) objA);
            if (iLookupID != -1) {
                consumer.writeObject(KNode.make(nodeTree, iLookupID));
                return;
            }
            return;
        }
        SortedNodes sortedNodes = new SortedNodes();
        b(objA, nodeTree, sortedNodes);
        Values.writeValues(sortedNodes, consumer);
    }

    public static void b(Object obj, NodeTree nodeTree, PositionConsumer positionConsumer) {
        if (obj instanceof String) {
            int iLookupID = nodeTree.lookupID((String) obj);
            if (iLookupID != -1) {
                positionConsumer.writePosition(nodeTree, iLookupID);
                return;
            }
            return;
        }
        if (obj instanceof Stack) {
            Stack stack = (Stack) obj;
            int size = stack.size();
            for (int i = 0; i < size; i++) {
                b(stack.elementAt(i), nodeTree, positionConsumer);
            }
        }
    }

    public static Object idref(Object obj, Object obj2) {
        KNode kNode = (KNode) obj2;
        return Values.empty;
    }

    public static void setSavedCollection(Object obj, Object obj2, Environment environment) {
        if (obj == null) {
            obj = "#default";
        }
        environment.put(Symbol.make("http://gnu.org/kawa/cached-collections", obj.toString()), null, obj2);
    }

    public static void setSavedCollection(Object obj, Object obj2) {
        setSavedCollection(obj, obj2, Environment.getCurrent());
    }

    public static Object getSavedCollection(Object obj, Environment environment) {
        if (obj == null) {
            obj = "#default";
        }
        Object obj2 = environment.get(Symbol.make("http://gnu.org/kawa/cached-collections", obj.toString()), null, null);
        if (obj2 != null) {
            return obj2;
        }
        throw new RuntimeException("collection '" + obj + "' not found");
    }

    public static Object getSavedCollection(Object obj) {
        return getSavedCollection(obj, Environment.getCurrent());
    }

    public static Object collection(Object obj, Object obj2) throws Throwable {
        String string;
        int iIndexOf;
        Path pathC = c(obj, "collection");
        Environment current = Environment.getCurrent();
        Symbol symbol = collectionResolverSymbol;
        Object objApply = current.get(symbol, null, null);
        if (objApply == null) {
            objApply = current.get(Symbol.makeWithUnknownNamespace(symbol.getLocalName(), symbol.getPrefix()), null, null);
        }
        if (objApply == null) {
            return getSavedCollection(pathC);
        }
        if (((objApply instanceof String) || (objApply instanceof UntypedAtomic)) && (iIndexOf = (string = objApply.toString()).indexOf(58)) > 0) {
            String strSubstring = string.substring(0, iIndexOf);
            String strSubstring2 = string.substring(iIndexOf + 1);
            try {
                objApply = ClassMethods.apply((ClassType) Type.make(Class.forName(strSubstring)), strSubstring2, (char) 0, XQuery.instance);
                if (objApply == null) {
                    throw new RuntimeException("invalid collection-resolver: no method " + strSubstring2 + " in " + strSubstring);
                }
            } catch (ClassNotFoundException unused) {
                throw new RuntimeException(_COROUTINE.a.A("invalid collection-resolver: class ", strSubstring, " not found"));
            } catch (Throwable th) {
                throw new RuntimeException("invalid collection-resolver: " + th);
            }
        }
        if (objApply instanceof Procedure) {
            return ((Procedure) objApply).apply1(pathC);
        }
        throw new RuntimeException("invalid collection-resolver: " + objApply);
    }

    public static Path c(Object obj, String str) {
        if (!(obj instanceof File) && !(obj instanceof Path) && !(obj instanceof URI) && !(obj instanceof URL)) {
            obj = StringUtils.c(str, 1, obj, null);
        }
        if (obj == Values.empty || obj == null) {
            return null;
        }
        return Path.currentPath().resolve(Path.valueOf(obj));
    }

    public static Object docCached(Object obj, Object obj2) throws Throwable {
        Path pathC = c(obj, "doc");
        if (pathC == null) {
            return Values.empty;
        }
        return Document.parseCached((Object) pathC);
    }

    public static boolean availableCached(Object obj, Object obj2) throws Throwable {
        Path pathC = c(obj, "doc-available");
        if (pathC == null) {
            return false;
        }
        try {
            Document.parseCached((Object) pathC);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
