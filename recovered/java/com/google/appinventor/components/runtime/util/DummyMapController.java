package com.google.appinventor.components.runtime.util;

import android.view.View;
import com.google.appinventor.components.common.MapType;
import com.google.appinventor.components.common.ScaleUnits;
import com.google.appinventor.components.runtime.LocationSensor;
import com.google.appinventor.components.runtime.util.MapFactory;

/* loaded from: classes.dex */
class DummyMapController implements MapFactory.MapController {
    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public View getView() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public double getLatitude() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public double getLongitude() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void setCenter(double d, double d2) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void setZoom(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void setRotation(float f) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public float getRotation() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public int getZoom() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void setMapType(MapFactory.MapType mapType) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public MapFactory.MapType getMapType() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void setMapTypeAbstract(MapType mapType) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public MapType getMapTypeAbstract() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void setCompassEnabled(boolean z) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public boolean isCompassEnabled() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void setZoomEnabled(boolean z) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public boolean isZoomEnabled() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void setZoomControlEnabled(boolean z) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public boolean isZoomControlEnabled() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void setShowUserEnabled(boolean z) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public boolean isShowUserEnabled() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void setRotationEnabled(boolean z) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public boolean isRotationEnabled() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void setPanEnabled(boolean z) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public boolean isPanEnabled() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void panTo(double d, double d2, int i, double d3) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void addEventListener(MapFactory.MapEventListener mapEventListener) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void addFeature(MapFactory.MapMarker mapMarker) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void updateFeaturePosition(MapFactory.MapMarker mapMarker) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void updateFeatureFill(MapFactory.HasFill hasFill) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void updateFeatureImage(MapFactory.MapMarker mapMarker) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void updateFeatureText(MapFactory.MapFeature mapFeature) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void updateFeatureDraggable(MapFactory.MapFeature mapFeature) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public org.osmdroid.util.BoundingBox getBoundingBox() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void setBoundingBox(org.osmdroid.util.BoundingBox boundingBox) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void addFeature(MapFactory.MapLineString mapLineString) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void addFeature(MapFactory.MapPolygon mapPolygon) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void addFeature(MapFactory.MapCircle mapCircle) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void addFeature(MapFactory.MapRectangle mapRectangle) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void removeFeature(MapFactory.MapFeature mapFeature) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void showFeature(MapFactory.MapFeature mapFeature) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void hideFeature(MapFactory.MapFeature mapFeature) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public boolean isFeatureVisible(MapFactory.MapFeature mapFeature) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public boolean isFeatureCollectionVisible(MapFactory.MapFeatureCollection mapFeatureCollection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void setFeatureCollectionVisible(MapFactory.MapFeatureCollection mapFeatureCollection, boolean z) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void showInfobox(MapFactory.MapFeature mapFeature) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void hideInfobox(MapFactory.MapFeature mapFeature) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public boolean isInfoboxVisible(MapFactory.MapFeature mapFeature) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void updateFeaturePosition(MapFactory.MapLineString mapLineString) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void updateFeaturePosition(MapFactory.MapPolygon mapPolygon) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void updateFeatureHoles(MapFactory.MapPolygon mapPolygon) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void updateFeaturePosition(MapFactory.MapCircle mapCircle) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void updateFeaturePosition(MapFactory.MapRectangle mapRectangle) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void updateFeatureStroke(MapFactory.HasStroke hasStroke) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void updateFeatureSize(MapFactory.MapMarker mapMarker) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public LocationSensor.LocationSensorListener getLocationListener() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public int getOverlayCount() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void setScaleVisible(boolean z) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public boolean isScaleVisible() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void setScaleUnits(MapFactory.MapScaleUnits mapScaleUnits) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public MapFactory.MapScaleUnits getScaleUnits() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void setScaleUnitsAbstract(ScaleUnits scaleUnits) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public ScaleUnits getScaleUnitsAbstract() {
        throw new UnsupportedOperationException();
    }
}
