package com.google.appinventor.components.runtime;

import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.util.YailList;
import java.io.IOException;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

@DesignerComponent(category = ComponentCategory.EXTRAS, description = "Html Parser Component Can be used to fetch/modify data in a Html code.Html Code can be entered Manually, loaded from an Url or from an Html File in the Assets Folder.There are a lot of Functions Available. Check the docs to find more info.Each Block's Function is also added in the description of each block.", iconName = "images/htmlParser.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "jsoup.jar")
@SimpleObject
/* loaded from: classes.dex */
public final class HtmlParser extends AndroidNonvisibleComponent {
    public HtmlParser(ComponentContainer componentContainer) {
        super(componentContainer.$form());
    }

    @SimpleFunction(description = "Create a main document. This Serves as the base html source.'input' can either be a html or an url")
    public Object CreateDocument(final String str) {
        final Document[] documentArr = {null};
        if (str.startsWith("https") || str.startsWith("http")) {
            Document[] documentArr2 = new Document[1];
            new Thread(new Runnable() { // from class: com.google.appinventor.components.runtime.HtmlParser.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        documentArr[0] = Jsoup.connect(str).get();
                    } catch (IOException e) {
                        HtmlParser.this.ErrorOccurred(e.getMessage());
                    }
                }
            }).start();
        } else if (str.startsWith("<")) {
            documentArr[0] = Jsoup.parse(str);
        } else {
            try {
                documentArr[0] = Jsoup.parse(new java.io.File(this.form.getAssetPath(str)), "UTF-8");
            } catch (IOException e) {
                ErrorOccurred(e.getMessage());
            }
        }
        return documentArr[0];
    }

    @SimpleFunction(description = "Find an element by ID, including or under this element. Get an element from Document")
    public Object GetElementById(String str, Object obj) {
        if (obj instanceof Document) {
            return ((Document) obj).getElementById(str);
        }
        ErrorOccurred("GetElement Requires a Document as input");
        return null;
    }

    @SimpleFunction(description = "Finds elements, including and recursively under this element, with the specified tag name. Returns a list of Elements as YailList. The Yailist contains an element")
    public YailList GetElementsByTag(String str, Object obj) {
        Elements elementsByTag;
        if (obj instanceof Document) {
            elementsByTag = ((Document) obj).getElementsByTag(str);
        } else {
            ErrorOccurred("GetElement Requires a Document as input");
            elementsByTag = null;
        }
        return YailList.makeList(elementsByTag.toArray());
    }

    @SimpleFunction(description = "Find elements that have this class, including or under this element. Case insensitive. Returns a list of Elements as YailList. The Yailist contains an element")
    public YailList GetElementsByClass(String str, Object obj) {
        Elements elementsByClass;
        if (obj instanceof Document) {
            elementsByClass = ((Document) obj).getElementsByClass(str);
        } else {
            ErrorOccurred("GetElement Requires a Document as input");
            elementsByClass = null;
        }
        return YailList.makeList(elementsByClass.toArray());
    }

    @SimpleFunction(description = "Find elements that have a named attribute set. Case insensitive. Returns a list of Elements as YailList. The Yailist contains an element")
    public YailList GetElementsByAttribute(String str, Object obj) {
        Elements elementsByAttribute;
        if (obj instanceof Document) {
            elementsByAttribute = ((Document) obj).getElementsByAttribute(str);
        } else {
            ErrorOccurred("GetElement Requires a Document as input");
            elementsByAttribute = null;
        }
        return YailList.makeList(elementsByAttribute.toArray());
    }

    @SimpleFunction(description = "Get sibling elements. If the element has no sibling elements, returns an empty list. An element is not a sibling of itself, so will not be included in the returned list. Returns a list of Elements as YailList. The Yailist contains an element")
    public YailList GetSiblingElements(Object obj) {
        Elements elementsSiblingElements;
        if (obj instanceof Element) {
            elementsSiblingElements = ((Element) obj).siblingElements();
        } else {
            ErrorOccurred("Get Sibling Elements Requires an Element as input");
            elementsSiblingElements = null;
        }
        return YailList.makeList(elementsSiblingElements.toArray());
    }

    @SimpleFunction(description = "Gets the first element sibling of the element. Returns an element")
    public Object GetFirstElementSibling(Object obj) {
        if (obj instanceof Element) {
            return ((Element) obj).firstElementSibling();
        }
        ErrorOccurred("Get First Sibling Element Requires an Element as input");
        return null;
    }

    @SimpleFunction(description = "Gets the last element sibling of the element. Returns an element")
    public Object GetLastElementSibling(Object obj) {
        if (obj instanceof Element) {
            return ((Element) obj).lastElementSibling();
        }
        ErrorOccurred("Get Last Sibling Element Requires an Element as input");
        return null;
    }

    @SimpleFunction(description = "Gets the next element sibling of the element. Returns an element")
    public Object GetNextElementSibling(Object obj) {
        if (obj instanceof Element) {
            return ((Element) obj).nextElementSibling();
        }
        ErrorOccurred("Get Next Sibling Element Requires an Element as input");
        return null;
    }

    @SimpleFunction(description = "Gets the previous element sibling of the element. Returns an element")
    public Object GetPreviousElementSibling(Object obj) {
        if (obj instanceof Element) {
            return ((Element) obj).previousElementSibling();
        }
        ErrorOccurred("Get Previous Sibling Element Requires an Element as input");
        return null;
    }

    @SimpleFunction(description = "Get this element's child elements. Returns a YailList")
    public YailList GetElementChildren(Object obj) {
        Elements elementsChildren;
        if (obj instanceof Element) {
            elementsChildren = ((Element) obj).children();
        } else {
            ErrorOccurred("Get Element Children Requires an Element as input");
            elementsChildren = null;
        }
        return YailList.makeList(elementsChildren.toArray());
    }

    @SimpleFunction(description = "Get a child element of this element, by its 0-based index number. Returns an element")
    public Object GetElementChildAt(Object obj, int i) {
        if (obj instanceof Element) {
            return ((Element) obj).child(i);
        }
        ErrorOccurred("Get Element Child at Requires an Element as input");
        return null;
    }

    @SimpleFunction(description = "Checks if any of the matched elements have this attribute defined. Returns boolean")
    public boolean ElementHasAttribute(String str, Object obj) {
        if (obj instanceof Element) {
            return ((Element) obj).hasAttr(str);
        }
        _COROUTINE.a.v(_COROUTINE.a.y()[0].getMethodName(), " Requires an Element as input", this);
        return false;
    }

    @SimpleFunction(description = "Get an attribute value from the first matched element that has the attribute. Returns a String")
    public String GetElementAttributeValue(String str, Object obj) {
        if (obj instanceof Element) {
            return ((Element) obj).attr(str);
        }
        _COROUTINE.a.v(_COROUTINE.a.y()[0].getMethodName(), " Requires an Element as input", this);
        return "";
    }

    @SimpleFunction(description = "Set an attribute on all matched elements.")
    public void SetElementAttributeValue(String str, String str2, Object obj) {
        if (obj instanceof Element) {
            ((Element) obj).attr(str, str2);
        } else {
            _COROUTINE.a.v(_COROUTINE.a.y()[0].getMethodName(), " Requires an Element as input", this);
        }
    }

    @SimpleFunction(description = "Get the id attribute of the element. Returns a String")
    public String GetElementId(Object obj) {
        if (obj instanceof Element) {
            return ((Element) obj).id();
        }
        _COROUTINE.a.v(_COROUTINE.a.y()[0].getMethodName(), " Requires an Element as input", this);
        return "";
    }

    @SimpleFunction(description = "Gets the literal value of this element's \"class\" attribute, which may include multiple class names, space separated. (E.g. on <div class=\"header gray\"> returns, \"header gray\"). Returns a String")
    public String GetElementClassName(Object obj) {
        if (obj instanceof Element) {
            return ((Element) obj).className();
        }
        _COROUTINE.a.v(_COROUTINE.a.y()[0].getMethodName(), " Requires an Element as input", this);
        return "";
    }

    @SimpleFunction(description = "Get the combined text of all the matched elements. Returns a String")
    public String GetElementText(Object obj) {
        if (obj instanceof Element) {
            return ((Element) obj).text();
        }
        _COROUTINE.a.v(_COROUTINE.a.y()[0].getMethodName(), " Requires an Element as input", this);
        return "";
    }

    @SimpleFunction(description = "Set the Text of and Element")
    public void SetElementText(String str, Object obj) {
        if (obj instanceof Element) {
            ((Element) obj).text(str);
        } else {
            _COROUTINE.a.v(_COROUTINE.a.y()[0].getMethodName(), " Requires an Element as input", this);
        }
    }

    @SimpleFunction(description = "Get the combined inner HTML of all matched elements. Returns a String")
    public String GetElementInnerHtml(Object obj) {
        if (obj instanceof Element) {
            return ((Element) obj).html();
        }
        _COROUTINE.a.v(_COROUTINE.a.y()[0].getMethodName(), " Requires an Element as input", this);
        return "";
    }

    @SimpleFunction(description = "Get the combined outer HTML of all matched elements. Returns a String")
    public String GetElementOuterHtml(Object obj) {
        if (obj instanceof Element) {
            return ((Element) obj).outerHtml();
        }
        _COROUTINE.a.v(_COROUTINE.a.y()[0].getMethodName(), " Requires an Element as input", this);
        return "";
    }

    @SimpleFunction(description = "Set the inner HTML of each matched element.")
    public void SetElementInnerHtml(String str, Object obj) {
        if (obj instanceof Element) {
            ((Element) obj).html(str);
        } else {
            _COROUTINE.a.v(_COROUTINE.a.y()[0].getMethodName(), " Requires an Element as input", this);
        }
    }

    @SimpleFunction(description = "Get the combined data of this element. Data is e.g. the inside of a script tag. It returns contents of scripts, comments, CSS styles, etc. Returns a String")
    public String GetElementData(Object obj) {
        if (obj instanceof Element) {
            return ((Element) obj).data();
        }
        _COROUTINE.a.v(_COROUTINE.a.y()[0].getMethodName(), " Requires an Element as input", this);
        return "";
    }

    @SimpleFunction(description = "Get the name of the tag for this element. E.g. div. If you are using case preserving parsing, this will return the source's original case. Returns a String")
    public String GetElementTagName(Object obj) {
        if (obj instanceof Element) {
            return ((Element) obj).tagName();
        }
        _COROUTINE.a.v(_COROUTINE.a.y()[0].getMethodName(), " Requires an Element as input", this);
        return "";
    }

    @SimpleFunction(description = "Add the supplied HTML to the end of the element's inner HTML.")
    public void AppendHtmlToElement(String str, Object obj) {
        if (obj instanceof Element) {
            ((Element) obj).append(str);
        } else {
            _COROUTINE.a.v(_COROUTINE.a.y()[0].getMethodName(), " Requires an Element as input", this);
        }
    }

    @SimpleFunction(description = "Add the supplied HTML to the start of the element's inner HTML.")
    public void PrependHtmlToElement(String str, Object obj) {
        if (obj instanceof Element) {
            ((Element) obj).prepend(str);
        } else {
            _COROUTINE.a.v(_COROUTINE.a.y()[0].getMethodName(), " Requires an Element as input", this);
        }
    }

    @SimpleFunction(description = "Create and append a new TextNode to this element.")
    public void AppendTextToElement(String str, Object obj) {
        if (obj instanceof Element) {
            ((Element) obj).appendText(str);
        } else {
            _COROUTINE.a.v(_COROUTINE.a.y()[0].getMethodName(), " Requires an Element as input", this);
        }
    }

    @SimpleFunction(description = "Create and prepend a new TextNode to this element.")
    public void PrependTextToElement(String str, Object obj) {
        if (obj instanceof Element) {
            ((Element) obj).prependText(str);
        } else {
            _COROUTINE.a.v(_COROUTINE.a.y()[0].getMethodName(), " Requires an Element as input", this);
        }
    }

    @SimpleFunction(description = "Create and prepend a new TextNode to this element.")
    public void WrapHtmlToElement(String str, Object obj) {
        if (obj instanceof Element) {
            ((Element) obj).wrap(str);
        } else {
            _COROUTINE.a.v(_COROUTINE.a.y()[0].getMethodName(), " Requires an Element as input", this);
        }
    }

    @SimpleFunction(description = "Create a new element by tag name, and add it as the last child.")
    public void AppendElementToElement(String str, Object obj) {
        if (obj instanceof Element) {
            ((Element) obj).appendElement(str);
        } else {
            _COROUTINE.a.v(_COROUTINE.a.y()[0].getMethodName(), " Requires an Element as input", this);
        }
    }

    @SimpleFunction(description = "Create a new element by tag name, and add it as the first child.")
    public void PrependElementToElement(String str, Object obj) {
        if (obj instanceof Element) {
            ((Element) obj).prependElement(str);
        } else {
            _COROUTINE.a.v(_COROUTINE.a.y()[0].getMethodName(), " Requires an Element as input", this);
        }
    }

    @SimpleFunction(description = "Find elements that match the Selector CSS query, with this element as the starting context. Matched elements may include this element, or any of its children. 'source' should be a document, element or elements")
    public Object SelectElementByQuery(String str, Object obj) {
        if (obj instanceof Document) {
            return ((Document) obj).select(str);
        }
        if (obj instanceof Element) {
            return ((Element) obj).select(str);
        }
        if (obj instanceof Elements) {
            return ((Elements) obj).select(str);
        }
        _COROUTINE.a.v(_COROUTINE.a.y()[0].getMethodName(), " Requires a Document, Element or Elements as input", this);
        return null;
    }

    @SimpleEvent(description = "Error parsing html")
    public void ErrorOccurred(String str) {
        EventDispatcher.dispatchEvent(this, "ErrorOccurred", str);
    }
}
