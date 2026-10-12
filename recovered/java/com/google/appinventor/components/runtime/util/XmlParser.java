package com.google.appinventor.components.runtime.util;

import java.util.ArrayList;
import java.util.Deque;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

/* loaded from: classes.dex */
public class XmlParser extends DefaultHandler {
    private static final String CONTENT_TAG = "$content";
    private YailDictionary root = null;
    private YailDictionary currentElement = null;
    private Deque<YailDictionary> stack = new LinkedList();

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) {
        YailDictionary yailDictionary = new YailDictionary();
        yailDictionary.put("$tag", str3);
        yailDictionary.put("$namespaceUri", str);
        if (str2.isEmpty()) {
            str2 = str3;
        }
        yailDictionary.put("$localName", str2);
        if (str3.contains(":")) {
            yailDictionary.put("$namespace", str3.split(":")[0]);
        } else {
            yailDictionary.put("$namespace", "");
        }
        YailDictionary yailDictionary2 = new YailDictionary();
        for (int i = 0; i < attributes.getLength(); i++) {
            yailDictionary2.put(attributes.getQName(i), attributes.getValue(i));
        }
        yailDictionary.put("$attributes", yailDictionary2);
        yailDictionary.put(CONTENT_TAG, new ArrayList());
        YailDictionary yailDictionary3 = this.currentElement;
        if (yailDictionary3 != null) {
            ((List) yailDictionary3.get(CONTENT_TAG)).add(yailDictionary);
            if (!this.currentElement.containsKey(str3)) {
                this.currentElement.put(str3, new ArrayList());
            }
            ((List) this.currentElement.get(str3)).add(yailDictionary);
            this.stack.push(this.currentElement);
        } else {
            this.root = yailDictionary;
        }
        this.currentElement = yailDictionary;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) {
        List list = (List) this.currentElement.get(CONTENT_TAG);
        if (list instanceof ArrayList) {
            String strTrim = new String(cArr, i, i2).trim();
            if (strTrim.isEmpty()) {
                return;
            }
            list.add(strTrim);
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) {
        for (Map.Entry<Object, Object> entry : this.currentElement.entrySet()) {
            if (entry.getValue() instanceof ArrayList) {
                entry.setValue(YailList.makeList((List) entry.getValue()));
            }
        }
        if (this.stack.isEmpty()) {
            return;
        }
        this.currentElement = this.stack.pop();
    }

    public YailDictionary getRoot() {
        return this.root;
    }
}
