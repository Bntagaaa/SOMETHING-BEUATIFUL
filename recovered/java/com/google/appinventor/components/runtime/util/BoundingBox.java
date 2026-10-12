package com.google.appinventor.components.runtime.util;

/* loaded from: classes.dex */
public final class BoundingBox {
    private double bottom;
    private double left;
    private double right;
    private double top;

    public BoundingBox(double d, double d2, double d3, double d4) {
        this.left = d;
        this.top = d2;
        this.right = d3;
        this.bottom = d4;
    }

    public boolean intersectDestructively(BoundingBox boundingBox) {
        double dMax = Math.max(this.left, boundingBox.left);
        double dMin = Math.min(this.right, boundingBox.right);
        double dMax2 = Math.max(this.top, boundingBox.top);
        double dMin2 = Math.min(this.bottom, boundingBox.bottom);
        if (dMax > dMin || dMax2 > dMin2) {
            return false;
        }
        this.left = dMax;
        this.right = dMin;
        this.top = dMax2;
        this.bottom = dMin2;
        return true;
    }

    public double getLeft() {
        return this.left;
    }

    public double getTop() {
        return this.top;
    }

    public double getRight() {
        return this.right;
    }

    public double getBottom() {
        return this.bottom;
    }

    public String toString() {
        return "<BoundingBox (left = " + this.left + ", top = " + this.top + ", right = " + this.right + ", bottom = " + this.bottom + ">";
    }
}
