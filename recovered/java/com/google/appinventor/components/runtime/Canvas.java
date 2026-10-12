package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.RequiresApi;
import com.google.appinventor.components.annotations.Asset;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.collect.Sets;
import com.google.appinventor.components.runtime.errors.PermissionException;
import com.google.appinventor.components.runtime.errors.StopBlocksExecution;
import com.google.appinventor.components.runtime.util.BoundingBox;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.FileUtil;
import com.google.appinventor.components.runtime.util.FileWriteOperation;
import com.google.appinventor.components.runtime.util.MediaUtil;
import com.google.appinventor.components.runtime.util.PaintUtil;
import com.google.appinventor.components.runtime.util.ScopedFile;
import com.google.appinventor.components.runtime.util.SdkLevel;
import com.google.appinventor.components.runtime.util.Synchronizer;
import com.google.appinventor.components.runtime.util.YailList;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

@UsesPermissions(permissionNames = "android.permission.INTERNET")
@DesignerComponent(category = ComponentCategory.ANIMATION, description = "<p>A two-dimensional touch-sensitive rectangular panel on which drawing can be done and sprites can be moved.</p> <p>The <code>BackgroundColor</code>, <code>PaintColor</code>, <code>BackgroundImage</code>, <code>Width</code>, and <code>Height</code> of the Canvas can be set in either the Designer or in the Blocks Editor.  The <code>Width</code> and <code>Height</code> are measured in pixels and must be positive.</p><p>Any location on the Canvas can be specified as a pair of (X, Y) values, where <ul> <li>X is the number of pixels away from the left edge of the Canvas</li><li>Y is the number of pixels away from the top edge of the Canvas</li></ul>.</p> <p>There are events to tell when and where a Canvas has been touched or a <code>Sprite</code> (<code>ImageSprite</code> or <code>Ball</code>) has been dragged.  There are also methods for drawing points, lines, and circles.</p>", iconName = "images/canvas.png", version = 15)
@SimpleObject
/* loaded from: classes.dex */
public final class Canvas extends AndroidViewComponent implements ComponentContainer {
    private static final int DEFAULT_BACKGROUND_COLOR = -1;
    private static final float DEFAULT_LINE_WIDTH = 2.0f;
    private static final int DEFAULT_PAINT_COLOR = -16777216;
    private static final int DEFAULT_TAP_THRESHOLD = 15;
    private static final int DEFAULT_TEXTALIGNMENT = 1;
    private static final int FLING_INTERVAL = 1000;
    private static final String LOG_TAG = "Canvas";
    private static final int MIN_WIDTH_HEIGHT = 1;
    private int backgroundColor;
    private String backgroundImagePath;
    private final Activity context;
    private boolean drawn;
    private boolean extendMovesOutsideCanvas;
    private final Set<ExtensionGestureDetector> extensionGestureDetectors;
    private Form form;
    private boolean havePermission;
    private final GestureDetector mGestureDetector;
    private final MotionEventParser motionEventParser;
    private final Paint paint;
    private int paintColor;
    private final List<Sprite> sprites;
    private int tapThreshold;
    private int textAlignment;
    private final CanvasView view;

    public interface ExtensionGestureDetector {
        boolean onTouchEvent(MotionEvent motionEvent);
    }

    public class MotionEventParser {
        public static final int FINGER_HEIGHT = 24;
        public static final int FINGER_WIDTH = 24;
        private static final int HALF_FINGER_HEIGHT = 12;
        private static final int HALF_FINGER_WIDTH = 12;
        private static final int UNSET = -1;
        private final List<Sprite> draggedSprites = new ArrayList();
        private float startX = -1.0f;
        private float startY = -1.0f;
        private float lastX = -1.0f;
        private float lastY = -1.0f;
        private boolean isDrag = false;
        private boolean drag = false;

        public MotionEventParser() {
        }

        public void parse(MotionEvent motionEvent) {
            float f;
            int iWidth = Canvas.this.Width();
            int iHeight = Canvas.this.Height();
            float fMax = Math.max(0.0f, ((int) motionEvent.getX()) / Canvas.this.$form().deviceDensity());
            float fMax2 = Math.max(0.0f, ((int) motionEvent.getY()) / Canvas.this.$form().deviceDensity());
            int i = (int) fMax;
            int i2 = (int) fMax2;
            float f2 = fMax;
            BoundingBox boundingBox = new BoundingBox(Math.max(0, i - 12), Math.max(0, i2 - 12), Math.min(iWidth - 1, i + 12), Math.min(iHeight - 1, i2 + 12));
            int action = motionEvent.getAction();
            if (action == 0) {
                this.draggedSprites.clear();
                this.startX = f2;
                this.startY = fMax2;
                this.lastX = f2;
                this.lastY = fMax2;
                this.drag = false;
                this.isDrag = false;
                for (Sprite sprite : Canvas.this.sprites) {
                    if (sprite.Enabled() && sprite.Visible() && sprite.intersectsWith(boundingBox)) {
                        this.draggedSprites.add(sprite);
                        sprite.TouchDown(this.startX, this.startY);
                    }
                }
                Canvas.this.TouchDown(this.startX, this.startY);
                return;
            }
            if (action == 1) {
                if (!this.drag) {
                    boolean z = false;
                    for (Sprite sprite2 : this.draggedSprites) {
                        if (sprite2.Enabled() && sprite2.Visible()) {
                            sprite2.Touched(f2, fMax2);
                            sprite2.TouchUp(f2, fMax2);
                            z = true;
                        }
                    }
                    Canvas.this.Touched(f2, fMax2, z);
                } else {
                    for (Sprite sprite3 : this.draggedSprites) {
                        if (sprite3.Enabled() && sprite3.Visible()) {
                            sprite3.Touched(f2, fMax2);
                            sprite3.TouchUp(f2, fMax2);
                        }
                    }
                }
                Canvas.this.TouchUp(f2, fMax2);
                this.drag = false;
                this.startX = -1.0f;
                this.startY = -1.0f;
                this.lastX = -1.0f;
                this.lastY = -1.0f;
                return;
            }
            if (action != 2) {
                return;
            }
            if (this.startX == -1.0f || this.startY == -1.0f || this.lastX == -1.0f || this.lastY == -1.0f) {
                Log.w(Canvas.LOG_TAG, "In Canvas.MotionEventParser.parse(), an ACTION_MOVE was passed without a preceding ACTION_DOWN: " + motionEvent);
            }
            if (this.isDrag || Math.abs(f2 - this.startX) >= Canvas.this.tapThreshold || Math.abs(fMax2 - this.startY) >= Canvas.this.tapThreshold) {
                this.isDrag = true;
                this.drag = true;
                if ((f2 <= 0.0f || f2 > iWidth || fMax2 <= 0.0f || fMax2 > iHeight) && !Canvas.this.extendMovesOutsideCanvas) {
                    return;
                }
                for (Sprite sprite4 : Canvas.this.sprites) {
                    if (!this.draggedSprites.contains(sprite4) && sprite4.Enabled() && sprite4.Visible() && sprite4.intersectsWith(boundingBox)) {
                        this.draggedSprites.add(sprite4);
                    }
                }
                boolean z2 = false;
                for (Sprite sprite5 : this.draggedSprites) {
                    if (sprite5.Enabled() && sprite5.Visible()) {
                        f = f2;
                        sprite5.Dragged(this.startX, this.startY, this.lastX, this.lastY, f, fMax2);
                        z2 = true;
                    } else {
                        f = f2;
                    }
                    f2 = f;
                }
                float f3 = f2;
                Canvas.this.Dragged(this.startX, this.startY, this.lastX, this.lastY, f3, fMax2, z2);
                this.lastX = f3;
                this.lastY = fMax2;
            }
        }
    }

    public final class CanvasView extends View {
        private BitmapDrawable backgroundDrawable;
        private Bitmap bitmap;
        private android.graphics.Canvas canvas;
        private Bitmap completeBitmap;
        private Bitmap scaledBackgroundBitmap;

        public CanvasView(Context context) {
            super(context);
            this.bitmap = Bitmap.createBitmap(32, 48, Bitmap.Config.ARGB_8888);
            this.canvas = new android.graphics.Canvas(this.bitmap);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Bitmap createBitmap() {
            int width = getWidth();
            int height = getHeight();
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            android.graphics.Canvas canvas = new android.graphics.Canvas(bitmapCreateBitmap);
            layout(0, 0, width, height);
            draw(canvas);
            return bitmapCreateBitmap;
        }

        @Override // android.view.View
        public void onDraw(android.graphics.Canvas canvas) {
            this.completeBitmap = null;
            super.onDraw(canvas);
            canvas.drawBitmap(this.bitmap, 0.0f, 0.0f, (Paint) null);
            Iterator it = Canvas.this.sprites.iterator();
            while (it.hasNext()) {
                ((Sprite) it.next()).onDraw(canvas);
            }
            Canvas.this.drawn = true;
        }

        @Override // android.view.View
        public void onSizeChanged(int i, int i2, int i3, int i4) {
            int width = this.bitmap.getWidth();
            int height = this.bitmap.getHeight();
            if (i == width && i2 == height) {
                return;
            }
            Bitmap bitmap = this.bitmap;
            try {
                Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, i, i2, false);
                if (bitmapCreateScaledBitmap.isMutable()) {
                    this.bitmap = bitmapCreateScaledBitmap;
                    this.canvas = new android.graphics.Canvas(this.bitmap);
                } else {
                    this.bitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                    this.canvas = new android.graphics.Canvas(this.bitmap);
                    this.canvas.drawBitmap(bitmap, new Rect(0, 0, width, height), new RectF(0.0f, 0.0f, i, i2), (Paint) null);
                }
            } catch (IllegalArgumentException unused) {
                Log.e(Canvas.LOG_TAG, "Bad values to createScaledBimap w = " + i + ", h = " + i2);
            }
            this.scaledBackgroundBitmap = null;
        }

        @Override // android.view.View
        public void onMeasure(int i, int i2) {
            int width;
            int height;
            BitmapDrawable bitmapDrawable = this.backgroundDrawable;
            if (bitmapDrawable != null) {
                Bitmap bitmap = bitmapDrawable.getBitmap();
                width = bitmap.getWidth();
                height = bitmap.getHeight();
            } else {
                width = 32;
                height = 48;
            }
            setMeasuredDimension(getSize(i, width), getSize(i2, height));
        }

        private int getSize(int i, int i2) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            return mode == 1073741824 ? size : mode == Integer.MIN_VALUE ? Math.min(i2, size) : i2;
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            Canvas.this.container.$form().dontGrabTouchEventsForComponent();
            Canvas.this.motionEventParser.parse(motionEvent);
            Canvas.this.mGestureDetector.onTouchEvent(motionEvent);
            Iterator it = Canvas.this.extensionGestureDetectors.iterator();
            while (it.hasNext()) {
                ((ExtensionGestureDetector) it.next()).onTouchEvent(motionEvent);
            }
            return true;
        }

        public void setBackgroundImage(String str) {
            Canvas canvas = Canvas.this;
            if (str == null) {
                str = "";
            }
            canvas.backgroundImagePath = str;
            this.backgroundDrawable = null;
            this.scaledBackgroundBitmap = null;
            if (!TextUtils.isEmpty(Canvas.this.backgroundImagePath)) {
                try {
                    this.backgroundDrawable = MediaUtil.getBitmapDrawable(Canvas.this.container.$form(), Canvas.this.backgroundImagePath);
                } catch (IOException unused) {
                    _COROUTINE.a.w("Unable to load ", Canvas.this.backgroundImagePath, Canvas.LOG_TAG);
                }
            }
            setBackground();
            clearDrawingLayer();
        }

        @RequiresApi(api = 8)
        public void setBackgroundImageBase64(String str) {
            Canvas canvas = Canvas.this;
            if (str == null) {
                str = "";
            }
            canvas.backgroundImagePath = str;
            this.backgroundDrawable = null;
            this.scaledBackgroundBitmap = null;
            if (!TextUtils.isEmpty(Canvas.this.backgroundImagePath)) {
                byte[] bArrDecode = Base64.decode(Canvas.this.backgroundImagePath, 0);
                this.backgroundDrawable = new BitmapDrawable(BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length));
            }
            setBackground();
            clearDrawingLayer();
        }

        private void setBackground() {
            Drawable colorDrawable;
            BitmapDrawable bitmapDrawable;
            if (Canvas.this.backgroundImagePath != "" && (bitmapDrawable = this.backgroundDrawable) != null) {
                colorDrawable = bitmapDrawable.getConstantState().newDrawable();
                colorDrawable.setColorFilter(Canvas.this.backgroundColor != 0 ? Canvas.this.backgroundColor : -1, PorterDuff.Mode.DST_OVER);
            } else {
                colorDrawable = new ColorDrawable(Canvas.this.backgroundColor != 0 ? Canvas.this.backgroundColor : -1);
            }
            setBackgroundDrawable(colorDrawable);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDrawingLayer() {
            this.canvas.drawColor(0, PorterDuff.Mode.CLEAR);
            invalidate();
        }

        @Override // android.view.View
        public void setBackgroundColor(int i) {
            Canvas.this.backgroundColor = i;
            setBackground();
            clearDrawingLayer();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void drawTextAtAngle(String str, int i, int i2, float f) {
            this.canvas.save();
            float f2 = i;
            float f3 = i2;
            this.canvas.rotate(-f, f2, f3);
            this.canvas.drawText(str, f2, f3, Canvas.this.paint);
            this.canvas.restore();
            invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getBackgroundPixelColor(int i, int i2) {
            if (i >= 0 && i < this.bitmap.getWidth() && i2 >= 0 && i2 < this.bitmap.getHeight()) {
                try {
                    int pixel = this.bitmap.getPixel(i, i2);
                    if (pixel != 0) {
                        return pixel;
                    }
                    BitmapDrawable bitmapDrawable = this.backgroundDrawable;
                    if (bitmapDrawable != null) {
                        if (this.scaledBackgroundBitmap == null) {
                            this.scaledBackgroundBitmap = Bitmap.createScaledBitmap(bitmapDrawable.getBitmap(), this.bitmap.getWidth(), this.bitmap.getHeight(), false);
                        }
                        return this.scaledBackgroundBitmap.getPixel(i, i2);
                    }
                    if (Color.alpha(Canvas.this.backgroundColor) != 0) {
                        return Canvas.this.backgroundColor;
                    }
                    return 16777215;
                } catch (IllegalArgumentException unused) {
                    Log.e(Canvas.LOG_TAG, "Returning COLOR_NONE (exception) from getBackgroundPixelColor.");
                }
            }
            return 16777215;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getPixelColor(int i, int i2) {
            if (i >= 0 && i < this.bitmap.getWidth() && i2 >= 0 && i2 < this.bitmap.getHeight()) {
                if (this.completeBitmap == null) {
                    Iterator it = Canvas.this.sprites.iterator();
                    while (it.hasNext()) {
                        if (((Sprite) it.next()).Visible()) {
                            this.completeBitmap = createBitmap();
                        }
                    }
                    return getBackgroundPixelColor(i, i2);
                }
                try {
                    return this.completeBitmap.getPixel(i, i2);
                } catch (IllegalArgumentException unused) {
                    Log.e(Canvas.LOG_TAG, "Returning COLOR_NONE (exception) from getPixelColor.");
                }
            }
            return 16777215;
        }
    }

    public Canvas(ComponentContainer componentContainer) {
        super(componentContainer);
        this.backgroundImagePath = "";
        this.extendMovesOutsideCanvas = false;
        this.tapThreshold = 15;
        this.extensionGestureDetectors = Sets.newHashSet();
        this.form = $form();
        this.havePermission = false;
        Activity activity$context = componentContainer.$context();
        this.context = activity$context;
        this.view = new CanvasView(activity$context);
        componentContainer.$add(this);
        Paint paint = new Paint();
        this.paint = paint;
        paint.setFlags(1);
        LineWidth(DEFAULT_LINE_WIDTH);
        PaintColor(-16777216);
        BackgroundColor(-1);
        TextAlignment(1);
        FontSize(14.0f);
        TapThreshold(15);
        this.sprites = new LinkedList();
        this.motionEventParser = new MotionEventParser();
        this.mGestureDetector = new GestureDetector(activity$context, new FlingGestureListener());
        if (FileUtil.needsWritePermission(this.form.DefaultFileScope())) {
            this.havePermission = !this.form.isDeniedPermission("android.permission.WRITE_EXTERNAL_STORAGE");
        } else {
            this.havePermission = true;
        }
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.view;
    }

    public Bitmap getBitmap() {
        return this.view.createBitmap();
    }

    public Activity getContext() {
        return this.context;
    }

    public void registerCustomGestureDetector(ExtensionGestureDetector extensionGestureDetector) {
        this.extensionGestureDetectors.add(extensionGestureDetector);
    }

    public void removeCustomGestureDetector(Object obj) {
        this.extensionGestureDetectors.remove(obj);
    }

    public boolean ready() {
        return this.drawn;
    }

    public void addSprite(Sprite sprite) {
        for (int i = 0; i < this.sprites.size(); i++) {
            if (this.sprites.get(i).Z() > sprite.Z()) {
                this.sprites.add(i, sprite);
                return;
            }
        }
        this.sprites.add(sprite);
    }

    public void removeSprite(Sprite sprite) {
        this.sprites.remove(sprite);
    }

    public void changeSpriteLayer(Sprite sprite) {
        removeSprite(sprite);
        addSprite(sprite);
        this.view.invalidate();
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public Activity $context() {
        return this.context;
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public Form $form() {
        return this.container.$form();
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public void $add(AndroidViewComponent androidViewComponent) {
        throw new UnsupportedOperationException("Canvas.$add() called");
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public List<? extends Component> getChildren() {
        return this.sprites;
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public void setChildWidth(AndroidViewComponent androidViewComponent, int i) {
        throw new UnsupportedOperationException("Canvas.setChildWidth() called");
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public void setChildHeight(AndroidViewComponent androidViewComponent, int i) {
        throw new UnsupportedOperationException("Canvas.setChildHeight() called");
    }

    public void registerChange(Sprite sprite) {
        this.view.invalidate();
        findSpriteCollisions(sprite);
    }

    public void findSpriteCollisions(Sprite sprite) {
        for (Sprite sprite2 : this.sprites) {
            if (sprite2 != sprite) {
                if (sprite.CollidingWith(sprite2)) {
                    if (!sprite.Visible() || !sprite.Enabled() || !sprite2.Visible() || !sprite2.Enabled() || !Sprite.colliding(sprite2, sprite)) {
                        sprite.NoLongerCollidingWith(sprite2);
                        sprite2.NoLongerCollidingWith(sprite);
                    }
                } else if (sprite.Visible() && sprite.Enabled() && sprite2.Visible() && sprite2.Enabled() && Sprite.colliding(sprite2, sprite)) {
                    sprite.CollidedWith(sprite2);
                    sprite2.CollidedWith(sprite);
                }
            }
        }
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty
    public void Width(int i) {
        if (i > 0 || i == -2 || i == -1 || i <= -1000) {
            super.Width(i);
        } else {
            this.container.$form().dispatchErrorOccurredEvent(this, "Width", 1002, new Object[0]);
        }
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty
    public void Height(int i) {
        if (i > 0 || i == -2 || i == -1 || i <= -1000) {
            super.Height(i);
        } else {
            this.container.$form().dispatchErrorOccurredEvent(this, "Height", 1003, new Object[0]);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The color of the canvas background.")
    public int BackgroundColor() {
        return this.backgroundColor;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_WHITE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void BackgroundColor(int i) {
        this.view.setBackgroundColor(i);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The name of a file containing the background image for the canvas")
    public String BackgroundImage() {
        return this.backgroundImagePath;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_ASSET)
    public void BackgroundImage(@Asset String str) {
        this.view.setBackgroundImage(str);
    }

    @SimpleProperty(description = "Set the background image in Base64 format. This requires API level >= 8. For devices with API level less than 8, setting this will end up with an empty background.")
    @RequiresApi(api = 8)
    public void BackgroundImageinBase64(String str) {
        if (SdkLevel.getLevel() >= 8) {
            this.view.setBackgroundImageBase64(str);
        } else {
            this.view.setBackgroundImageBase64("");
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Set the number of pixels right, left, up or down, a sequence of drags mustmove from the starting point to be considered a drag (instead of a touch).")
    public int TapThreshold() {
        return this.tapThreshold;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "15", editorType = PropertyTypeConstants.PROPERTY_TYPE_INTEGER)
    public void TapThreshold(int i) {
        this.tapThreshold = i;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The color in which lines are drawn")
    public int PaintColor() {
        return this.paintColor;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_BLACK, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void PaintColor(int i) {
        this.paintColor = i;
        changePaint(this.paint, i);
    }

    private void changePaint(Paint paint, int i) {
        if (i == 0) {
            PaintUtil.changePaint(paint, -16777216);
        } else if (i == 16777215) {
            PaintUtil.changePaintTransparent(paint);
        } else {
            PaintUtil.changePaint(paint, i);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The font size of text drawn on the canvas.")
    public float FontSize() {
        return this.paint.getTextSize() / $form().deviceDensity();
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "14.0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_FLOAT)
    public void FontSize(float f) {
        this.paint.setTextSize(f * $form().deviceDensity());
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The width of lines drawn on the canvas.")
    public float LineWidth() {
        return this.paint.getStrokeWidth() / $form().deviceDensity();
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "2.0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_FLOAT)
    public void LineWidth(float f) {
        this.paint.setStrokeWidth($form().deviceDensity() * f);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Determines the alignment of the text drawn by DrawText() or DrawAngle() with respect to the point specified by that command: point at the left of the text, point at the center of the text, or point at the right of the text.", userVisible = true)
    public int TextAlignment() {
        return this.textAlignment;
    }

    @SimpleProperty(userVisible = true)
    @DesignerProperty(defaultValue = "1", editorType = PropertyTypeConstants.PROPERTY_TYPE_TEXTALIGNMENT)
    public void TextAlignment(int i) {
        this.textAlignment = i;
        if (i == 0) {
            this.paint.setTextAlign(Paint.Align.LEFT);
        } else if (i == 1) {
            this.paint.setTextAlign(Paint.Align.CENTER);
        } else {
            if (i != 2) {
                return;
            }
            this.paint.setTextAlign(Paint.Align.RIGHT);
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Determines whether moves can extend beyond the canvas borders.   Default is false. This should normally be false, and the property is provided for backwards compatibility.", userVisible = true)
    public boolean ExtendMovesOutsideCanvas() {
        return this.extendMovesOutsideCanvas;
    }

    @SimpleProperty(userVisible = true)
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ExtendMovesOutsideCanvas(boolean z) {
        this.extendMovesOutsideCanvas = z;
    }

    @SimpleEvent
    public void Touched(float f, float f2, boolean z) {
        EventDispatcher.dispatchEvent(this, "Touched", Float.valueOf(f), Float.valueOf(f2), Boolean.valueOf(z));
    }

    @SimpleEvent
    public void TouchDown(float f, float f2) {
        EventDispatcher.dispatchEvent(this, "TouchDown", Float.valueOf(f), Float.valueOf(f2));
    }

    @SimpleEvent
    public void TouchUp(float f, float f2) {
        EventDispatcher.dispatchEvent(this, "TouchUp", Float.valueOf(f), Float.valueOf(f2));
    }

    @SimpleEvent
    public void Flung(float f, float f2, float f3, float f4, float f5, float f6, boolean z) {
        EventDispatcher.dispatchEvent(this, "Flung", Float.valueOf(f), Float.valueOf(f2), Float.valueOf(f3), Float.valueOf(f4), Float.valueOf(f5), Float.valueOf(f6), Boolean.valueOf(z));
    }

    @SimpleEvent
    public void Dragged(float f, float f2, float f3, float f4, float f5, float f6, boolean z) {
        EventDispatcher.dispatchEvent(this, "Dragged", Float.valueOf(f), Float.valueOf(f2), Float.valueOf(f3), Float.valueOf(f4), Float.valueOf(f5), Float.valueOf(f6), Boolean.valueOf(z));
    }

    @SimpleFunction(description = "Clears anything drawn on this Canvas but not any background color or image.")
    public void Clear() {
        this.view.clearDrawingLayer();
    }

    @SimpleFunction
    public void DrawPoint(int i, int i2) {
        this.view.canvas.drawPoint($form().deviceDensity() * i, $form().deviceDensity() * i2, this.paint);
        this.view.invalidate();
    }

    @SimpleFunction
    public void DrawCircle(int i, int i2, float f, boolean z) {
        float fDeviceDensity = $form().deviceDensity() * i;
        float fDeviceDensity2 = $form().deviceDensity() * i2;
        float fDeviceDensity3 = $form().deviceDensity() * f;
        Paint paint = new Paint(this.paint);
        paint.setStyle(z ? Paint.Style.FILL : Paint.Style.STROKE);
        this.view.canvas.drawCircle(fDeviceDensity, fDeviceDensity2, fDeviceDensity3, paint);
        this.view.invalidate();
    }

    @SimpleFunction
    public void DrawLine(int i, int i2, int i3, int i4) {
        this.view.canvas.drawLine($form().deviceDensity() * i, $form().deviceDensity() * i2, $form().deviceDensity() * i3, $form().deviceDensity() * i4, this.paint);
        this.view.invalidate();
    }

    @SimpleFunction(description = "Draws a shape on the canvas. pointList should be a list contains sub-lists with two number which represents a coordinate. The first point and last point does not need to be the same. e.g. ((x1 y1) (x2 y2) (x3 y3)) When fill is true, the shape will be filled.")
    public void DrawShape(YailList yailList, boolean z) {
        try {
            Path path = parsePath(parsePointList(yailList));
            path.close();
            Paint paint = new Paint(this.paint);
            paint.setStyle(z ? Paint.Style.FILL : Paint.Style.STROKE);
            this.view.canvas.drawPath(path, paint);
            this.view.invalidate();
        } catch (IllegalArgumentException unused) {
            $form().dispatchErrorOccurredEvent(this, "DrawShape", 1004, new Object[0]);
        }
    }

    private Path parsePath(float[][] fArr) throws IllegalArgumentException {
        if (fArr == null || fArr.length == 0) {
            throw new IllegalArgumentException();
        }
        float fDeviceDensity = $form().deviceDensity();
        Path path = new Path();
        float[] fArr2 = fArr[0];
        path.moveTo(fArr2[0] * fDeviceDensity, fArr2[1] * fDeviceDensity);
        for (int i = 1; i < fArr.length; i++) {
            float[] fArr3 = fArr[i];
            path.lineTo(fArr3[0] * fDeviceDensity, fArr3[1] * fDeviceDensity);
        }
        return path;
    }

    private float[][] parsePointList(YailList yailList) throws IllegalArgumentException {
        if (yailList == null || yailList.size() == 0) {
            throw new IllegalArgumentException();
        }
        float[][] fArr = (float[][]) Array.newInstance((Class<?>) Float.TYPE, yailList.size(), 2);
        int i = 0;
        for (Object obj : yailList.toArray()) {
            if (!(obj instanceof YailList)) {
                throw new IllegalArgumentException(_COROUTINE.a.e(i, "item(", ") in YailList is not a YailList"));
            }
            YailList yailList2 = (YailList) obj;
            if (yailList2.size() != 2) {
                throw new IllegalArgumentException(_COROUTINE.a.e(i, "length of item YailList(", ") is not 2"));
            }
            try {
                fArr[i][0] = Float.parseFloat(yailList2.getString(0));
                fArr[i][1] = Float.parseFloat(yailList2.getString(1));
                i++;
            } catch (NullPointerException e) {
                throw new IllegalArgumentException(e.fillInStackTrace());
            } catch (NumberFormatException e2) {
                throw new IllegalArgumentException(e2.fillInStackTrace());
            }
        }
        return fArr;
    }

    @SimpleFunction(description = "Draw an arc on Canvas, by drawing an arc from a specified oval (specified by left, top, right & bottom). Start angle is 0 when heading to the right, and increase when rotate clockwise. When useCenter is true, a sector will be drawed instead of an arc. When fill is true, a filled arc (or sector) will be drawed instead of just an outline.")
    public void DrawArc(int i, int i2, int i3, int i4, float f, float f2, boolean z, boolean z2) {
        float fDeviceDensity = $form().deviceDensity();
        Paint paint = new Paint(this.paint);
        paint.setStyle(z2 ? Paint.Style.FILL : Paint.Style.STROKE);
        this.view.canvas.drawArc(new RectF(i * fDeviceDensity, i2 * fDeviceDensity, i3 * fDeviceDensity, fDeviceDensity * i4), f, f2, z, paint);
        this.view.invalidate();
    }

    @SimpleFunction(description = "Draws the specified text relative to the specified coordinates using the values of the FontSize and TextAlignment properties.")
    public void DrawText(String str, int i, int i2) {
        float fDeviceDensity = $form().deviceDensity();
        this.view.canvas.drawText(str, i * fDeviceDensity, i2 * fDeviceDensity, this.paint);
        this.view.invalidate();
    }

    @SimpleFunction(description = "Draws the specified text starting at the specified coordinates at the specified angle using the values of the FontSize and TextAlignment properties.")
    public void DrawTextAtAngle(String str, int i, int i2, float f) {
        this.view.drawTextAtAngle(str, (int) ($form().deviceDensity() * i), (int) ($form().deviceDensity() * i2), f);
    }

    @SimpleFunction(description = "Gets the color of the specified point. This includes the background and any drawn points, lines, or circles but not sprites.")
    public int GetBackgroundPixelColor(int i, int i2) {
        return this.view.getBackgroundPixelColor((int) ($form().deviceDensity() * i), (int) ($form().deviceDensity() * i2));
    }

    @SimpleFunction(description = "Sets the color of the specified point. This differs from DrawPoint by having an argument for color.")
    public void SetBackgroundPixelColor(int i, int i2, int i3) {
        Paint paint = new Paint();
        PaintUtil.changePaint(paint, i3);
        this.view.canvas.drawPoint((int) ($form().deviceDensity() * i), (int) ($form().deviceDensity() * i2), paint);
        this.view.invalidate();
    }

    @SimpleFunction(description = "Gets the color of the specified point.")
    public int GetPixelColor(int i, int i2) {
        return this.view.getPixelColor((int) ($form().deviceDensity() * i), (int) ($form().deviceDensity() * i2));
    }

    @SimpleFunction(description = "Saves a picture of this Canvas to the device's external storage. If an error occurs, the Screen's ErrorOccurred event will be called.")
    @UsesPermissions({"android.permission.WRITE_EXTERNAL_STORAGE"})
    public String Save() {
        return saveFile(FileUtil.getScopedPictureFile($form(), "png"), Bitmap.CompressFormat.PNG, "Save");
    }

    @SimpleFunction(description = "Saves a picture of this Canvas to the device's external storage in the file named fileName. fileName must end with one of .jpg, .jpeg, or .png, which determines the file type.")
    @UsesPermissions({"android.permission.WRITE_EXTERNAL_STORAGE"})
    public String SaveAs(String str) {
        Bitmap.CompressFormat compressFormat;
        if (str.endsWith(".jpg") || str.endsWith(".jpeg")) {
            compressFormat = Bitmap.CompressFormat.JPEG;
        } else if (str.endsWith(".png")) {
            compressFormat = Bitmap.CompressFormat.PNG;
        } else if (!str.contains(".")) {
            str = str.concat(".png");
            compressFormat = Bitmap.CompressFormat.PNG;
        } else {
            this.container.$form().dispatchErrorOccurredEvent(this, "SaveAs", ErrorMessages.ERROR_MEDIA_IMAGE_FILE_FORMAT, new Object[0]);
            return "";
        }
        return saveFile(new ScopedFile(this.form.DefaultFileScope(), str), compressFormat, "SaveAs");
    }

    private String saveFile(ScopedFile scopedFile, final Bitmap.CompressFormat compressFormat, String str) {
        if (!this.havePermission && FileUtil.needsWritePermission(scopedFile)) {
            this.form.askPermission("android.permission.WRITE_EXTERNAL_STORAGE", new PermissionResultHandler() { // from class: com.google.appinventor.components.runtime.Canvas.1
                @Override // com.google.appinventor.components.runtime.PermissionResultHandler
                public void HandlePermissionResponse(String str2, boolean z) {
                    Canvas.this.havePermission = z;
                }
            });
            throw new StopBlocksExecution();
        }
        final Synchronizer synchronizer = new Synchronizer();
        new FileWriteOperation(this.form, this, str, scopedFile, false, false) { // from class: com.google.appinventor.components.runtime.Canvas.2
            @Override // com.google.appinventor.components.runtime.util.FileWriteOperation, com.google.appinventor.components.runtime.util.FileStreamOperation
            public boolean process(OutputStream outputStream) {
                synchronizer.wakeup(Boolean.valueOf((Canvas.this.view.completeBitmap == null ? Canvas.this.view.createBitmap() : Canvas.this.view.completeBitmap).compress(compressFormat, 100, outputStream)));
                return true;
            }
        }.run();
        if (synchronizer.getThrowable() instanceof FileNotFoundException) {
            this.container.$form().dispatchErrorOccurredEvent(this, str, ErrorMessages.ERROR_MEDIA_CANNOT_OPEN, FileUtil.resolveFileName(this.form, scopedFile));
            return "";
        }
        if (synchronizer.getThrowable() instanceof IOException) {
            this.container.$form().dispatchErrorOccurredEvent(this, str, ErrorMessages.ERROR_MEDIA_FILE_ERROR, synchronizer.getThrowable().getMessage());
            return "";
        }
        if (synchronizer.getThrowable() instanceof PermissionException) {
            this.container.$form().dispatchPermissionDeniedEvent(this, str, (PermissionException) synchronizer.getThrowable());
            return "";
        }
        if (synchronizer.getThrowable() instanceof FileUtil.FileException) {
            this.container.$form().dispatchErrorOccurredEvent(this, str, ((FileUtil.FileException) synchronizer.getThrowable()).getErrorMessageNumber(), new Object[0]);
            return "";
        }
        if (((Boolean) synchronizer.getResult()).booleanValue()) {
            return FileUtil.resolveFileName(this.form, scopedFile);
        }
        return "";
    }

    public class FlingGestureListener extends GestureDetector.SimpleOnGestureListener {
        public FlingGestureListener() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            float fMax = Math.max(0, (int) (motionEvent.getX() / Canvas.this.$form().deviceDensity()));
            float fMax2 = Math.max(0, (int) (motionEvent.getY() / Canvas.this.$form().deviceDensity()));
            float f3 = f / 1000.0f;
            float f4 = f2 / 1000.0f;
            float fSqrt = (float) Math.sqrt((f4 * f4) + (f3 * f3));
            float f5 = (float) (-Math.toDegrees(Math.atan2(f4, f3)));
            int i = (int) fMax;
            int i2 = (int) fMax2;
            BoundingBox boundingBox = new BoundingBox(Math.max(0, i - 12), Math.max(0, i2 - 12), Math.min(Canvas.this.Width() - 1, i + 12), Math.min(Canvas.this.Height() - 1, i2 + 12));
            boolean z = false;
            for (Sprite sprite : Canvas.this.sprites) {
                if (sprite.Enabled() && sprite.Visible() && sprite.intersectsWith(boundingBox)) {
                    sprite.Flung(fMax, fMax2, fSqrt, f5, f3, f4);
                    z = true;
                }
            }
            Canvas.this.Flung(fMax, fMax2, fSqrt, f5, f3, f4, z);
            return true;
        }
    }
}
