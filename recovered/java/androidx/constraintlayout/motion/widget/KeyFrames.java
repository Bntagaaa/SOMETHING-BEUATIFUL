package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.util.Log;
import android.util.Xml;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class KeyFrames {
    public static final int UNSET = -1;

    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f632b;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f633a = new HashMap();

    static {
        HashMap map = new HashMap();
        f632b = map;
        try {
            map.put("KeyAttribute", KeyAttributes.class.getConstructor(new Class[0]));
            map.put("KeyPosition", KeyPosition.class.getConstructor(new Class[0]));
            map.put("KeyCycle", KeyCycle.class.getConstructor(new Class[0]));
            map.put("KeyTimeCycle", KeyTimeCycle.class.getConstructor(new Class[0]));
            map.put("KeyTrigger", KeyTrigger.class.getConstructor(new Class[0]));
        } catch (NoSuchMethodException e) {
            Log.e("KeyFrames", "unable to load", e);
        }
    }

    public KeyFrames(Context context, XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        Exception e;
        Key key;
        HashMap map;
        try {
            int eventType = xmlPullParser.getEventType();
            Key key2 = null;
            while (eventType != 1) {
                if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    HashMap map2 = f632b;
                    if (map2.containsKey(name)) {
                        try {
                            key = (Key) ((Constructor) map2.get(name)).newInstance(new Object[0]);
                        } catch (Exception e2) {
                            Key key3 = key2;
                            e = e2;
                            key = key3;
                        }
                        try {
                            key.load(context, Xml.asAttributeSet(xmlPullParser));
                            Integer numValueOf = Integer.valueOf(key.f619b);
                            HashMap map3 = this.f633a;
                            if (!map3.containsKey(numValueOf)) {
                                map3.put(Integer.valueOf(key.f619b), new ArrayList());
                            }
                            ((ArrayList) map3.get(Integer.valueOf(key.f619b))).add(key);
                        } catch (Exception e3) {
                            e = e3;
                            Log.e("KeyFrames", "unable to create ", e);
                            key2 = key;
                            eventType = xmlPullParser.next();
                        }
                        key2 = key;
                    } else if (name.equalsIgnoreCase("CustomAttribute") && key2 != null && (map = key2.d) != null) {
                        ConstraintAttribute.parse(context, xmlPullParser, map);
                    }
                } else if (eventType == 3 && "KeyFrameSet".equals(xmlPullParser.getName())) {
                    return;
                }
                eventType = xmlPullParser.next();
            }
        } catch (IOException e4) {
            e4.printStackTrace();
        } catch (XmlPullParserException e5) {
            e5.printStackTrace();
        }
    }

    public void addFrames(MotionController motionController) {
        HashMap map = this.f633a;
        ArrayList arrayList = (ArrayList) map.get(Integer.valueOf(motionController.f641b));
        ArrayList arrayList2 = motionController.u;
        if (arrayList != null) {
            arrayList2.addAll(arrayList);
        }
        ArrayList arrayList3 = (ArrayList) map.get(-1);
        if (arrayList3 != null) {
            Iterator it = arrayList3.iterator();
            while (it.hasNext()) {
                Key key = (Key) it.next();
                String str = ((ConstraintLayout.LayoutParams) motionController.f640a.getLayoutParams()).constraintTag;
                String str2 = key.c;
                if ((str2 == null || str == null) ? false : str.matches(str2)) {
                    arrayList2.add(key);
                }
            }
        }
    }

    public Set<Integer> getKeys() {
        return this.f633a.keySet();
    }

    public ArrayList<Key> getKeyFramesForView(int i) {
        return (ArrayList) this.f633a.get(Integer.valueOf(i));
    }
}
