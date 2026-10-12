package com.google.appinventor.components.runtime.query;

import com.google.firebase.firestore.GeoPoint;

/* loaded from: classes.dex */
public class JSONGeopointWrapper extends GeoPoint {
    private static String geopointPrefix = "__GEOPOINT:";

    public JSONGeopointWrapper(GeoPoint geoPoint) {
        super(geoPoint.getLatitude(), geoPoint.getLongitude());
    }

    public static void setGeopointPrefix(String str) {
        geopointPrefix = str;
    }

    public static boolean isWrappedGeoPoint(Object obj) {
        return (obj instanceof String) && ((String) obj).startsWith(geopointPrefix);
    }

    public static GeoPoint unwrapGeoPoint(Object obj) {
        String str = (String) obj;
        int length = geopointPrefix.length();
        String[] strArrSplit = str.substring(length).substring(0, str.length() - length).split(",");
        return new GeoPoint(Double.parseDouble(strArrSplit[0]), Double.parseDouble(strArrSplit[1]));
    }

    public String toString() {
        return geopointPrefix + getLatitude() + "," + getLongitude();
    }
}
