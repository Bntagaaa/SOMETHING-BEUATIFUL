package com.google.appinventor.components.runtime;

import android.util.Log;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.common.TransportMethod;
import com.google.appinventor.components.runtime.util.AsynchUtil;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.GeoJSONUtil;
import com.google.appinventor.components.runtime.util.GeometryUtil;
import com.google.appinventor.components.runtime.util.JsonUtil;
import com.google.appinventor.components.runtime.util.MapFactory;
import com.google.appinventor.components.runtime.util.YailDictionary;
import com.google.appinventor.components.runtime.util.YailList;
import com.google.common.net.HttpHeaders;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.Array;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Arrays;
import java.util.List;
import org.json.JSONException;
import org.osmdroid.util.GeoPoint;

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.INTERNET")
@DesignerComponent(category = ComponentCategory.MAPS, description = Navigation.TAG, iconName = "images/navigation.png", nonVisible = true, version = 2)
@UsesLibraries({"osmdroid.jar"})
/* loaded from: classes.dex */
public class Navigation extends AndroidNonvisibleComponent implements Component {
    public static final String OPEN_ROUTE_SERVICE_URL = "https://api.openrouteservice.org/v2/directions/";
    private static final String TAG = "Navigation";
    private String apiKey;
    private GeoPoint endLocation;
    private String language;
    private YailDictionary lastResponse;
    private TransportMethod method;
    private String serviceUrl;
    private GeoPoint startLocation;

    public Navigation(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.serviceUrl = OPEN_ROUTE_SERVICE_URL;
        this.language = "en";
        this.lastResponse = YailDictionary.makeDictionary();
        this.apiKey = "";
        this.startLocation = new GeoPoint(0.0d, 0.0d);
        this.endLocation = new GeoPoint(0.0d, 0.0d);
        this.method = TransportMethod.Foot;
    }

    @SimpleFunction(description = "Request directions from the routing service.")
    public void RequestDirections() {
        if (this.apiKey.equals("")) {
            this.form.dispatchErrorOccurredEvent(this, HttpHeaders.AUTHORIZATION, ErrorMessages.ERROR_INVALID_API_KEY, new Object[0]);
            return;
        }
        final GeoPoint geoPoint = this.startLocation;
        final GeoPoint geoPoint2 = this.endLocation;
        final TransportMethod transportMethod = this.method;
        AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.Navigation.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Navigation.this.performRequest(geoPoint, geoPoint2, transportMethod);
                } catch (IOException unused) {
                    Navigation navigation = Navigation.this;
                    navigation.form.dispatchErrorOccurredEvent(navigation, "RequestDirections", 0, new Object[0]);
                } catch (JSONException unused2) {
                    Navigation navigation2 = Navigation.this;
                    navigation2.form.dispatchErrorOccurredEvent(navigation2, "RequestDirections", 0, new Object[0]);
                }
            }
        });
    }

    @SimpleProperty(userVisible = false)
    public void ServiceURL(String str) {
        this.serviceUrl = str;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "API Key for Open Route Service.")
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void ApiKey(String str) {
        this.apiKey = str;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "0.0", editorType = PropertyTypeConstants.PROPERTY_TYPE_LATITUDE)
    public void StartLatitude(double d) {
        if (GeometryUtil.isValidLatitude(d)) {
            this.startLocation.setLatitude(d);
        } else {
            getDispatchDelegate().dispatchErrorOccurredEvent(this, "StartLatitude", ErrorMessages.ERROR_INVALID_LATITUDE, Double.valueOf(d));
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The latitude of the start location.")
    public double StartLatitude() {
        return this.startLocation.getLatitude();
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "0.0", editorType = PropertyTypeConstants.PROPERTY_TYPE_LONGITUDE)
    public void StartLongitude(double d) {
        if (GeometryUtil.isValidLongitude(d)) {
            this.startLocation.setLongitude(d);
        } else {
            getDispatchDelegate().dispatchErrorOccurredEvent(this, "StartLongitude", ErrorMessages.ERROR_INVALID_LONGITUDE, Double.valueOf(d));
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The longitude of the start location.")
    public double StartLongitude() {
        return this.startLocation.getLongitude();
    }

    @SimpleProperty(description = "Set the start location.")
    public void StartLocation(MapFactory.MapFeature mapFeature) {
        GeoPoint centroid = mapFeature.getCentroid();
        double latitude = centroid.getLatitude();
        double longitude = centroid.getLongitude();
        if (!GeometryUtil.isValidLatitude(latitude)) {
            getDispatchDelegate().dispatchErrorOccurredEvent(this, "SetStartLocation", ErrorMessages.ERROR_INVALID_LATITUDE, Double.valueOf(latitude));
        } else if (!GeometryUtil.isValidLongitude(longitude)) {
            getDispatchDelegate().dispatchErrorOccurredEvent(this, "SetStartLocation", ErrorMessages.ERROR_INVALID_LONGITUDE, Double.valueOf(longitude));
        } else {
            this.startLocation.setCoords(latitude, longitude);
        }
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "0.0", editorType = PropertyTypeConstants.PROPERTY_TYPE_LATITUDE)
    public void EndLatitude(double d) {
        if (GeometryUtil.isValidLatitude(d)) {
            this.endLocation.setLatitude(d);
        } else {
            getDispatchDelegate().dispatchErrorOccurredEvent(this, "EndLatitude", ErrorMessages.ERROR_INVALID_LATITUDE, Double.valueOf(d));
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The latitude of the end location.")
    public double EndLatitude() {
        return this.endLocation.getLatitude();
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "0.0", editorType = PropertyTypeConstants.PROPERTY_TYPE_LONGITUDE)
    public void EndLongitude(double d) {
        if (GeometryUtil.isValidLongitude(d)) {
            this.endLocation.setLongitude(d);
        } else {
            getDispatchDelegate().dispatchErrorOccurredEvent(this, "EndLongitude", ErrorMessages.ERROR_INVALID_LONGITUDE, Double.valueOf(d));
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The longitude of the end location.")
    public double EndLongitude() {
        return this.endLocation.getLongitude();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public String TransportationMethod() {
        return TransportationMethodAbstract().toUnderlyingValue();
    }

    public TransportMethod TransportationMethodAbstract() {
        return this.method;
    }

    public void TransportationMethodAbstract(TransportMethod transportMethod) {
        this.method = transportMethod;
    }

    @SimpleProperty(description = "The transportation method used for determining the route.")
    @DesignerProperty(defaultValue = "foot-walking", editorType = PropertyTypeConstants.PROPERTY_TYPE_NAVIGATION_METHOD)
    public void TransportationMethod(@Options(TransportMethod.class) String str) {
        TransportMethod transportMethodFromUnderlyingValue = TransportMethod.fromUnderlyingValue(str);
        if (transportMethodFromUnderlyingValue != null) {
            TransportationMethodAbstract(transportMethodFromUnderlyingValue);
        }
    }

    @SimpleProperty(description = "Set the end location.")
    public void EndLocation(MapFactory.MapFeature mapFeature) {
        GeoPoint centroid = mapFeature.getCentroid();
        double latitude = centroid.getLatitude();
        double longitude = centroid.getLongitude();
        if (!GeometryUtil.isValidLatitude(latitude)) {
            getDispatchDelegate().dispatchErrorOccurredEvent(this, "SetEndLocation", ErrorMessages.ERROR_INVALID_LATITUDE, Double.valueOf(latitude));
        } else if (!GeometryUtil.isValidLongitude(longitude)) {
            getDispatchDelegate().dispatchErrorOccurredEvent(this, "SetEndLocation", ErrorMessages.ERROR_INVALID_LONGITUDE, Double.valueOf(longitude));
        } else {
            this.endLocation.setCoords(latitude, longitude);
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The language to use for textual directions.")
    @DesignerProperty(defaultValue = "en")
    public void Language(String str) {
        this.language = str;
    }

    @SimpleProperty
    public String Language() {
        return this.language;
    }

    @SimpleProperty(description = "Content of the last response as a dictionary.")
    public YailDictionary ResponseContent() {
        return this.lastResponse;
    }

    @SimpleEvent(description = "Event triggered when the Openrouteservice returns the directions.")
    public void GotDirections(YailList yailList, YailList yailList2, double d, double d2) {
        Log.d(TAG, "GotDirections");
        EventDispatcher.dispatchEvent(this, "GotDirections", yailList, yailList2, Double.valueOf(d), Double.valueOf(d2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performRequest(GeoPoint geoPoint, GeoPoint geoPoint2, TransportMethod transportMethod) throws JSONException, IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(_COROUTINE.a.j(this.serviceUrl, transportMethod.toUnderlyingValue(), "/geojson/")).openConnection();
        httpURLConnection.setDoInput(true);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/json; charset=UTF-8");
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty(HttpHeaders.AUTHORIZATION, this.apiKey);
        try {
            try {
                byte[] bytes = ("{\"coordinates\": " + JsonUtil.getJsonRepresentation(getCoordinates(geoPoint, geoPoint2)) + ", \"language\": \"" + this.language + "\"}").getBytes("UTF-8");
                httpURLConnection.setFixedLengthStreamingMode(bytes.length);
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
                try {
                    bufferedOutputStream.write(bytes, 0, bytes.length);
                    bufferedOutputStream.flush();
                    bufferedOutputStream.close();
                    if (httpURLConnection.getResponseCode() != 200) {
                        this.form.dispatchErrorOccurredEvent(this, "RequestDirections", ErrorMessages.ERROR_ROUTING_SERVICE_ERROR, Integer.valueOf(httpURLConnection.getResponseCode()), httpURLConnection.getResponseMessage());
                        httpURLConnection.disconnect();
                        return;
                    }
                    String responseContent = getResponseContent(httpURLConnection);
                    Log.d(TAG, responseContent);
                    final YailDictionary yailDictionary = (YailDictionary) JsonUtil.getObjectFromJson(responseContent, true);
                    YailList yailList = (YailList) yailDictionary.get("features");
                    if (yailList.size() > 0) {
                        YailDictionary yailDictionary2 = (YailDictionary) yailList.getObject(0);
                        YailDictionary yailDictionary3 = (YailDictionary) yailDictionary2.getObjectAtKeyPath(Arrays.asList("properties", "summary"));
                        final double dDoubleValue = ((Double) yailDictionary3.get("distance")).doubleValue();
                        final double dDoubleValue2 = ((Double) yailDictionary3.get("duration")).doubleValue();
                        final YailList yailListMakeList = YailList.makeList((List) getDirections(yailDictionary2));
                        final YailList lineStringCoords = getLineStringCoords(yailDictionary2);
                        this.form.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Navigation.2
                            @Override // java.lang.Runnable
                            public void run() {
                                Navigation.this.lastResponse = yailDictionary;
                                Navigation.this.GotDirections(yailListMakeList, lineStringCoords, dDoubleValue, dDoubleValue2);
                            }
                        });
                    } else {
                        this.form.dispatchErrorOccurredEvent(this, "RequestDirections", ErrorMessages.ERROR_NO_ROUTE_FOUND, new Object[0]);
                    }
                    httpURLConnection.disconnect();
                } catch (Throwable th) {
                    bufferedOutputStream.close();
                    throw th;
                }
            } catch (Exception e) {
                this.form.dispatchErrorOccurredEvent(this, "RequestDirections", ErrorMessages.ERROR_UNABLE_TO_REQUEST_DIRECTIONS, e.getMessage());
                e.printStackTrace();
                httpURLConnection.disconnect();
            }
        } catch (Throwable th2) {
            httpURLConnection.disconnect();
            throw th2;
        }
    }

    private static String getResponseContent(HttpURLConnection httpURLConnection) throws IOException {
        StringBuilder sb;
        String contentEncoding = httpURLConnection.getContentEncoding();
        if (contentEncoding == null) {
            contentEncoding = "UTF-8";
        }
        Log.d(TAG, Integer.toString(httpURLConnection.getResponseCode()));
        InputStreamReader inputStreamReader = new InputStreamReader(httpURLConnection.getInputStream(), contentEncoding);
        try {
            int contentLength = httpURLConnection.getContentLength();
            if (contentLength != -1) {
                sb = new StringBuilder(contentLength);
            } else {
                sb = new StringBuilder();
            }
            char[] cArr = new char[1024];
            while (true) {
                int i = inputStreamReader.read(cArr);
                if (i != -1) {
                    sb.append(cArr, 0, i);
                } else {
                    String string = sb.toString();
                    inputStreamReader.close();
                    return string;
                }
            }
        } catch (Throwable th) {
            inputStreamReader.close();
            throw th;
        }
    }

    private Double[][] getCoordinates(GeoPoint geoPoint, GeoPoint geoPoint2) {
        Double[][] dArr = (Double[][]) Array.newInstance((Class<?>) Double.class, 2, 2);
        dArr[0][0] = Double.valueOf(geoPoint.getLongitude());
        dArr[0][1] = Double.valueOf(geoPoint.getLatitude());
        dArr[1][0] = Double.valueOf(geoPoint2.getLongitude());
        dArr[1][1] = Double.valueOf(geoPoint2.getLatitude());
        return dArr;
    }

    private YailList getLineStringCoords(YailDictionary yailDictionary) {
        return GeoJSONUtil.swapCoordinates((YailList) yailDictionary.getObjectAtKeyPath(Arrays.asList("geometry", "coordinates")));
    }

    private List<?> getDirections(YailDictionary yailDictionary) {
        Object obj = YailDictionary.ALL;
        return YailDictionary.walkKeyPath(yailDictionary, Arrays.asList("properties", "segments", obj, "steps", obj, "instruction"));
    }
}
