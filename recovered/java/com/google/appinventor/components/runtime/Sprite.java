package com.google.appinventor.components.runtime;

import android.os.Handler;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.Direction;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.errors.IllegalArgumentError;
import com.google.appinventor.components.runtime.util.BoundingBox;
import com.google.appinventor.components.runtime.util.TimerInternal;
import com.google.appinventor.components.runtime.util.YailList;
import java.util.HashSet;
import java.util.Set;

@SimpleObject
/* loaded from: classes.dex */
public abstract class Sprite extends VisibleComponent implements AlarmHandler, OnDestroyListener, Deleteable {
    private static final boolean DEFAULT_ENABLED = true;
    private static final int DEFAULT_HEADING = 0;
    private static final int DEFAULT_INTERVAL = 100;
    protected static final boolean DEFAULT_ORIGIN_AT_CENTER = false;
    private static final float DEFAULT_SPEED = 0.0f;
    private static final boolean DEFAULT_VISIBLE = true;
    private static final double DEFAULT_Z = 1.0d;
    private static final int DIRECTION_NONE = 0;
    private static final String LOG_TAG = "Sprite";
    private final Handler androidUIHandler;
    protected final Canvas canvas;
    protected Form form;
    protected double heading;
    protected double headingCos;
    protected double headingRadians;
    protected double headingSin;
    protected boolean initialized;
    protected int interval;
    protected boolean originAtCenter;
    private final Set<Sprite> registeredCollisions;
    protected float speed;
    private final TimerInternal timerInternal;
    protected double userHeading;
    protected boolean visible;
    protected double xCenter;
    protected double xLeft;
    protected double yCenter;
    protected double yTop;
    protected double zLayer;

    public abstract void onDraw(android.graphics.Canvas canvas);

    public Sprite(ComponentContainer componentContainer, Handler handler) {
        this.initialized = false;
        this.visible = true;
        this.androidUIHandler = handler;
        if (!(componentContainer instanceof Canvas)) {
            throw new IllegalArgumentError("Sprite constructor called with container " + componentContainer);
        }
        Canvas canvas = (Canvas) componentContainer;
        this.canvas = canvas;
        canvas.addSprite(this);
        this.registeredCollisions = new HashSet();
        this.timerInternal = new TimerInternal(this, true, 100, handler);
        this.form = componentContainer.$form();
        OriginAtCenter(false);
        Heading(0.0d);
        Enabled(true);
        Interval(100);
        Speed(DEFAULT_SPEED);
        Visible(true);
        Z(DEFAULT_Z);
        componentContainer.$form().registerForOnDestroy(this);
    }

    public Sprite(ComponentContainer componentContainer) {
        this(componentContainer, new Handler());
    }

    public void Initialize() {
        this.initialized = true;
        this.canvas.registerChange(this);
    }

    @SimpleProperty(description = "Controls whether the %type% moves and can be interacted with through collisions, dragging, touching, and flinging.")
    public boolean Enabled() {
        return this.timerInternal.Enabled();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Enabled(boolean z) {
        this.timerInternal.Enabled(z);
    }

    @SimpleProperty(description = "Returns the %type%'s heading in degrees above the positive x-axis.  Zero degrees is toward the right of the screen; 90 degrees is toward the top of the screen.")
    public double Heading() {
        return this.userHeading;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_FLOAT)
    public void Heading(double d) {
        this.userHeading = d;
        double d2 = -d;
        this.heading = d2;
        double radians = Math.toRadians(d2);
        this.headingRadians = radians;
        this.headingCos = Math.cos(radians);
        this.headingSin = Math.sin(this.headingRadians);
        registerChange();
    }

    @SimpleProperty(description = "The interval in milliseconds at which the %type%'s position is updated.  For example, if the interval is 50 and the speed is 10, then every 50 milliseconds the sprite will move 10 pixels in the heading direction.")
    public int Interval() {
        return this.timerInternal.Interval();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    @DesignerProperty(defaultValue = "100", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void Interval(int i) {
        this.timerInternal.Interval(i);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The number of pixels that the %type% should move every interval, if enabled.")
    @DesignerProperty(defaultValue = "0.0", editorType = PropertyTypeConstants.PROPERTY_TYPE_FLOAT)
    public void Speed(float f) {
        this.speed = f;
    }

    @SimpleProperty(description = "The speed at which the %type% moves. The %type% moves this many pixels every interval if enabled.")
    public float Speed() {
        return this.speed;
    }

    @SimpleProperty(description = "Whether the %type% is visible.")
    public boolean Visible() {
        return this.visible;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Visible(boolean z) {
        this.visible = z;
        registerChange();
    }

    public double X() {
        return this.originAtCenter ? this.xCenter : this.xLeft;
    }

    private double xLeftToCenter(double d) {
        return d + (Width() / 2);
    }

    private double xCenterToLeft(double d) {
        return d - (Width() / 2);
    }

    private void updateX(double d) {
        if (this.originAtCenter) {
            this.xCenter = d;
            this.xLeft = xCenterToLeft(d);
        } else {
            this.xLeft = d;
            this.xCenter = xLeftToCenter(d);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "0.0", editorType = PropertyTypeConstants.PROPERTY_TYPE_FLOAT)
    public void X(double d) {
        updateX(d);
        registerChange();
    }

    private double yTopToCenter(double d) {
        return d + (Width() / 2);
    }

    private double yCenterToTop(double d) {
        return d - (Width() / 2);
    }

    private void updateY(double d) {
        if (this.originAtCenter) {
            this.yCenter = d;
            this.yTop = yCenterToTop(d);
        } else {
            this.yTop = d;
            this.yCenter = yTopToCenter(d);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "0.0", editorType = PropertyTypeConstants.PROPERTY_TYPE_FLOAT)
    public void Y(double d) {
        updateY(d);
        registerChange();
    }

    public double Y() {
        return this.originAtCenter ? this.yCenter : this.yTop;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "1.0", editorType = PropertyTypeConstants.PROPERTY_TYPE_FLOAT)
    public void Z(double d) {
        this.zLayer = d;
        this.canvas.changeSpriteLayer(this);
    }

    @SimpleProperty(description = "How the %type% should be layered relative to other Balls and ImageSprites, with higher-numbered layers in front of lower-numbered layers.")
    public double Z() {
        return this.zLayer;
    }

    public void OriginAtCenter(boolean z) {
        this.originAtCenter = z;
    }

    public void postEvent(final Sprite sprite, final String str, final Object... objArr) {
        this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.Sprite.1
            @Override // java.lang.Runnable
            public void run() {
                EventDispatcher.dispatchEvent(sprite, str, objArr);
            }
        });
    }

    @SimpleEvent
    public void CollidedWith(Sprite sprite) {
        if (this.registeredCollisions.contains(sprite)) {
            return;
        }
        this.registeredCollisions.add(sprite);
        postEvent(this, "CollidedWith", sprite);
    }

    @SimpleEvent(description = "Event handler called when a %type% is dragged. On all calls, the starting coordinates are where the screen was first touched, and the \"current\" coordinates describe the endpoint of the current line segment. On the first call within a given drag, the \"previous\" coordinates are the same as the starting coordinates; subsequently, they are the \"current\" coordinates from the prior call. Note that the %type% won't actually move anywhere in response to the Dragged event unless MoveTo is explicitly called. For smooth movement, each of its coordinates should be set to the sum of its initial value and the difference between its current and previous values.")
    public void Dragged(float f, float f2, float f3, float f4, float f5, float f6) {
        postEvent(this, "Dragged", Float.valueOf(f), Float.valueOf(f2), Float.valueOf(f3), Float.valueOf(f4), Float.valueOf(f5), Float.valueOf(f6));
    }

    @SimpleEvent(description = "Event handler called when the %type% reaches an edge of the screen. If Bounce is then called with that edge, the %type% will appear to bounce off of the edge it reached. Edge here is represented as an integer that indicates one of eight directions north (1), northeast (2), east (3), southeast (4), south (-1), southwest (-2), west (-3), and northwest (-4).")
    public void EdgeReached(@Options(Direction.class) int i) {
        Direction directionFromUnderlyingValue = Direction.fromUnderlyingValue(Integer.valueOf(i));
        if (directionFromUnderlyingValue == null) {
            return;
        }
        EdgeReachedAbstract(directionFromUnderlyingValue);
    }

    public void EdgeReachedAbstract(Direction direction) {
        postEvent(this, "EdgeReached", direction.toUnderlyingValue());
    }

    @SimpleEvent(description = "Event handler called when a pair of sprites (Balls and ImageSprites) are no longer colliding.")
    public void NoLongerCollidingWith(Sprite sprite) {
        this.registeredCollisions.remove(sprite);
        postEvent(this, "NoLongerCollidingWith", sprite);
    }

    @SimpleEvent(description = "Event handler called when the user touches an enabled %type% and then immediately lifts their finger. The provided x and y coordinates are relative to the upper left of the canvas.")
    public void Touched(float f, float f2) {
        postEvent(this, "Touched", Float.valueOf(f), Float.valueOf(f2));
    }

    @SimpleEvent(description = "Event handler called when a fling gesture (quick swipe) is made on an enabled %type%. This provides the x and y coordinates of the start of the fling (relative to the upper left of the canvas), the speed (pixels per millisecond), the heading (-180 to 180 degrees), and the x and y velocity components of the fling's vector.")
    public void Flung(float f, float f2, float f3, float f4, float f5, float f6) {
        postEvent(this, "Flung", Float.valueOf(f), Float.valueOf(f2), Float.valueOf(f3), Float.valueOf(f4), Float.valueOf(f5), Float.valueOf(f6));
    }

    @SimpleEvent(description = "Event handler called when the user stops touching an enabled %type% (lifting their finger after a TouchDown event). This provides the x and y coordinates of the touch, relative to the upper left of the canvas.")
    public void TouchUp(float f, float f2) {
        postEvent(this, "TouchUp", Float.valueOf(f), Float.valueOf(f2));
    }

    @SimpleEvent(description = "Event handler called when the user begins touching an enabled %type% (placing their finger on a %type% and leaving it there). This provides the x and y coordinates of the touch, relative to the upper left of the canvas.")
    public void TouchDown(float f, float f2) {
        postEvent(this, "TouchDown", Float.valueOf(f), Float.valueOf(f2));
    }

    @SimpleFunction(description = "Makes the %type% bounce, as if off a wall. For normal bouncing, the edge argument should be the one returned by EdgeReached.")
    public void Bounce(@Options(Direction.class) int i) {
        Direction directionFromUnderlyingValue = Direction.fromUnderlyingValue(Integer.valueOf(i));
        if (directionFromUnderlyingValue == null) {
            return;
        }
        BounceAbstract(directionFromUnderlyingValue);
    }

    public void BounceAbstract(Direction direction) {
        MoveIntoBounds();
        double d = this.userHeading % 360.0d;
        if (d < 0.0d) {
            d += 360.0d;
        }
        if ((direction == Direction.East && (d < 90.0d || d > 270.0d)) || (direction == Direction.West && d > 90.0d && d < 270.0d)) {
            Heading(180.0d - d);
            return;
        }
        if ((direction == Direction.North && d > 0.0d && d < 180.0d) || (direction == Direction.South && d > 180.0d)) {
            Heading(360.0d - d);
            return;
        }
        if ((direction != Direction.Northeast || d <= 0.0d || d >= 90.0d) && ((direction != Direction.Northwest || d <= 90.0d || d >= 180.0d) && ((direction != Direction.Southwest || d <= 180.0d || d >= 270.0d) && (direction != Direction.Southeast || d <= 270.0d)))) {
            return;
        }
        Heading(d + 180.0d);
    }

    @SimpleFunction(description = "Indicates whether a collision has been registered between this %type% and the passed sprite (Ball or ImageSprite).")
    public boolean CollidingWith(Sprite sprite) {
        return this.registeredCollisions.contains(sprite);
    }

    @SimpleFunction(description = "Moves the %type% back in bounds if part of it extends out of bounds, having no effect otherwise. If the %type% is too wide to fit on the canvas, this aligns the left side of the %type% with the left side of the canvas. If the %type% is too tall to fit on the canvas, this aligns the top side of the %type% with the top side of the canvas.")
    public void MoveIntoBounds() {
        moveIntoBounds(this.canvas.Width(), this.canvas.Height());
    }

    public void MoveTo(double d, double d2) {
        updateX(d);
        updateY(d2);
        registerChange();
    }

    @SimpleFunction(description = "Moves the origin of %type% to the position of the cooordinates given  by the list formatted as [x-coordinate, y-coordinate].")
    public void MoveToPoint(YailList yailList) {
        MoveTo(coerceToDouble(yailList.getObject(0)), coerceToDouble(yailList.getObject(1)));
    }

    public static double coerceToDouble(Object obj) {
        if (obj instanceof Number) {
            return ((Number) obj).doubleValue();
        }
        try {
            return Double.parseDouble(obj.toString());
        } catch (NumberFormatException unused) {
            return Double.NaN;
        }
    }

    @SimpleFunction(description = "Turns the %type% to point towards a designated target sprite (Ball or ImageSprite). The new heading will be parallel to the line joining the centerpoints of the two sprites.")
    public void PointTowards(Sprite sprite) {
        Heading(-Math.toDegrees(Math.atan2(sprite.yCenter - this.yCenter, sprite.xCenter - this.xCenter)));
    }

    @SimpleFunction(description = "Sets the heading of the %type% toward the point with the coordinates (x, y).")
    public void PointInDirection(double d, double d2) {
        Heading(-Math.toDegrees(Math.atan2(d2 - this.yCenter, d - this.xCenter)));
    }

    public void registerChange() {
        if (!this.initialized) {
            this.canvas.getView().invalidate();
            return;
        }
        Direction directionHitEdgeAbstract = hitEdgeAbstract();
        if (directionHitEdgeAbstract != null) {
            EdgeReachedAbstract(directionHitEdgeAbstract);
        }
        this.canvas.registerChange(this);
    }

    public int hitEdge() {
        Direction directionHitEdgeAbstract = hitEdgeAbstract();
        if (directionHitEdgeAbstract == null) {
            return 0;
        }
        return directionHitEdgeAbstract.toUnderlyingValue().intValue();
    }

    public int hitEdge(int i, int i2) {
        Direction directionHitEdgeAbstract = hitEdgeAbstract(i, i2);
        if (directionHitEdgeAbstract == null) {
            return 0;
        }
        return directionHitEdgeAbstract.toUnderlyingValue().intValue();
    }

    public Direction hitEdgeAbstract() {
        if (this.canvas.ready()) {
            return hitEdgeAbstract(this.canvas.Width(), this.canvas.Height());
        }
        return null;
    }

    public Direction hitEdgeAbstract(int i, int i2) {
        boolean zOverWestEdge = overWestEdge();
        boolean zOverNorthEdge = overNorthEdge();
        boolean zOverEastEdge = overEastEdge(i);
        boolean zOverSouthEdge = overSouthEdge(i2);
        if (!zOverNorthEdge && !zOverSouthEdge && !zOverEastEdge && !zOverWestEdge) {
            return null;
        }
        MoveIntoBounds();
        if (zOverWestEdge) {
            if (zOverNorthEdge) {
                return Direction.Northwest;
            }
            if (zOverSouthEdge) {
                return Direction.Southwest;
            }
            return Direction.West;
        }
        if (!zOverEastEdge) {
            if (zOverNorthEdge) {
                return Direction.North;
            }
            return Direction.South;
        }
        if (zOverNorthEdge) {
            return Direction.Northeast;
        }
        if (zOverSouthEdge) {
            return Direction.Southeast;
        }
        return Direction.East;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0077  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void moveIntoBounds(int r7, int r8) {
        /*
            r6 = this;
            int r0 = r6.Width()
            r1 = 1
            r2 = 0
            if (r0 <= r7) goto L19
            double r4 = r6.xLeft
            int r7 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r7 == 0) goto L3d
            r6.xLeft = r2
            double r4 = r6.xLeftToCenter(r2)
            r6.xCenter = r4
        L17:
            r7 = 1
            goto L3e
        L19:
            boolean r0 = r6.overWestEdge()
            if (r0 == 0) goto L28
            r6.xLeft = r2
            double r4 = r6.xLeftToCenter(r2)
            r6.xCenter = r4
            goto L17
        L28:
            boolean r0 = r6.overEastEdge(r7)
            if (r0 == 0) goto L3d
            int r0 = r6.Width()
            int r7 = r7 - r0
            double r4 = (double) r7
            r6.xLeft = r4
            double r4 = r6.xLeftToCenter(r4)
            r6.xCenter = r4
            goto L17
        L3d:
            r7 = 0
        L3e:
            int r0 = r6.Height()
            if (r0 <= r8) goto L53
            double r4 = r6.yTop
            int r8 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r8 == 0) goto L77
            r6.yTop = r2
            double r7 = r6.yTopToCenter(r2)
            r6.yCenter = r7
            goto L78
        L53:
            boolean r0 = r6.overNorthEdge()
            if (r0 == 0) goto L62
            r6.yTop = r2
            double r7 = r6.yTopToCenter(r2)
            r6.yCenter = r7
            goto L78
        L62:
            boolean r0 = r6.overSouthEdge(r8)
            if (r0 == 0) goto L77
            int r7 = r6.Height()
            int r8 = r8 - r7
            double r7 = (double) r8
            r6.yTop = r7
            double r7 = r6.yTopToCenter(r7)
            r6.yCenter = r7
            goto L78
        L77:
            r1 = r7
        L78:
            if (r1 == 0) goto L7d
            r6.registerChange()
        L7d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.Sprite.moveIntoBounds(int, int):void");
    }

    public void updateCoordinates() {
        double d = (this.speed * this.headingCos) + this.xLeft;
        this.xLeft = d;
        this.xCenter = xLeftToCenter(d);
        double d2 = (this.speed * this.headingSin) + this.yTop;
        this.yTop = d2;
        this.yCenter = yTopToCenter(d2);
    }

    private final boolean overWestEdge() {
        return this.xLeft < 0.0d;
    }

    private final boolean overEastEdge(int i) {
        return this.xLeft + ((double) Width()) > ((double) i);
    }

    private final boolean overNorthEdge() {
        return this.yTop < 0.0d;
    }

    private final boolean overSouthEdge(int i) {
        return this.yTop + ((double) Height()) > ((double) i);
    }

    public BoundingBox getBoundingBox(int i) {
        double d = this.xLeft;
        double d2 = i;
        return new BoundingBox(d - d2, this.yTop - d2, ((d + Width()) - DEFAULT_Z) + d2, ((this.yTop + Height()) - DEFAULT_Z) + d2);
    }

    public static boolean colliding(Sprite sprite, Sprite sprite2) {
        BoundingBox boundingBox = sprite.getBoundingBox(1);
        if (!boundingBox.intersectDestructively(sprite2.getBoundingBox(1))) {
            return false;
        }
        for (double left = boundingBox.getLeft(); left <= boundingBox.getRight(); left += DEFAULT_Z) {
            for (double top = boundingBox.getTop(); top <= boundingBox.getBottom(); top += DEFAULT_Z) {
                if (sprite.containsPoint(left, top) && sprite2.containsPoint(left, top)) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean intersectsWith(BoundingBox boundingBox) {
        BoundingBox boundingBox2 = getBoundingBox(0);
        if (!boundingBox2.intersectDestructively(boundingBox)) {
            return false;
        }
        for (double left = boundingBox2.getLeft(); left < boundingBox2.getRight(); left += DEFAULT_Z) {
            for (double top = boundingBox2.getTop(); top < boundingBox2.getBottom(); top += DEFAULT_Z) {
                if (containsPoint(left, top)) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean containsPoint(double d, double d2) {
        double d3 = this.xLeft;
        if (d < d3 || d >= d3 + Width()) {
            return false;
        }
        double d4 = this.yTop;
        return d2 >= d4 && d2 < d4 + ((double) Height());
    }

    @Override // com.google.appinventor.components.runtime.AlarmHandler
    public void alarm() {
        if (!this.initialized || this.speed == DEFAULT_SPEED) {
            return;
        }
        updateCoordinates();
        registerChange();
    }

    @Override // com.google.appinventor.components.runtime.Component
    public HandlesEventDispatching getDispatchDelegate() {
        return this.canvas.$form();
    }

    @Override // com.google.appinventor.components.runtime.OnDestroyListener
    public void onDestroy() {
        this.timerInternal.Enabled(false);
    }

    @Override // com.google.appinventor.components.runtime.Deleteable
    public void onDelete() {
        this.timerInternal.Enabled(false);
        this.canvas.removeSprite(this);
    }
}
