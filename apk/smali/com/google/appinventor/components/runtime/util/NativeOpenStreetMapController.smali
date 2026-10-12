.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;
.implements Lorg/osmdroid/events/MapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapView;,
        Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapTileProviderBasic;,
        Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;,
        Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;,
        Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;,
        Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;
    }
.end annotation


# static fields
.field private static final ANCHOR_HORIZONTAL:[F

.field private static final ANCHOR_VERTICAL:[F

.field private static final SPECIFIED_FILL:J = 0x1L

.field private static final SPECIFIED_FILL_OPACITY:J = 0x4L

.field private static final SPECIFIED_STROKE:J = 0x8L

.field private static final SPECIFIED_STROKE_OPACITY:J = 0x10L

.field private static final SPECIFIED_STROKE_WIDTH:J = 0x20L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private caches:Z

.field private compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

.field private containerView:Landroid/widget/RelativeLayout;

.field private defaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;

.field private defaultMarkerSVG:Lcom/caverock/androidsvg/SVG;

.field private eventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private featureOverlays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;",
            "Lorg/osmdroid/views/overlay/OverlayWithIW;",
            ">;"
        }
    .end annotation
.end field

.field private final form:Lcom/google/appinventor/components/runtime/Form;

.field private hiddenFeatureCollections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureCollection;",
            ">;"
        }
    .end annotation
.end field

.field private hiddenFeatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;",
            ">;"
        }
    .end annotation
.end field

.field private lastAzimuth:F

.field private final locationProvider:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;

.field private ready:Z

.field private rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

.field private scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

.field private tileType:Lcom/google/appinventor/components/common/MapType;

.field private touch:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;

.field private final userLocation:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

.field private view:Lorg/osmdroid/views/MapView;

.field private zoomControlEnabled:Z

.field private zoomControls:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

.field private zoomEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 107
    const-class v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    const-string v0, "NativeOpenStreetMapController"

    sput-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    .line 140
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->ANCHOR_HORIZONTAL:[F

    .line 141
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->ANCHOR_VERTICAL:[F

    return-void

    :array_0
    .array-data 4
        0x7fc00000    # Float.NaN
        0x0
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x7fc00000    # Float.NaN
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 5

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    .line 117
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    .line 118
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->eventListeners:Ljava/util/Set;

    .line 119
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    .line 120
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultMarkerSVG:Lcom/caverock/androidsvg/SVG;

    .line 121
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->touch:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;

    .line 122
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;

    const/4 v1, 0x0

    .line 123
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->ready:Z

    .line 124
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControls:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 125
    iput v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->lastAzimuth:F

    .line 131
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hiddenFeatureCollections:Ljava/util/Set;

    .line 138
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hiddenFeatures:Ljava/util/Set;

    .line 314
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/osmdroid/tileprovider/constants/OpenStreetMapTileProviderConstants;->setUserAgentValue(Ljava/lang/String;)V

    .line 315
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "osmdroid"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 316
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 317
    :cond_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/osmdroid/config/IConfigurationProvider;->setOsmdroidBasePath(Ljava/io/File;)V

    .line 318
    new-instance v2, Ljava/io/File;

    const-string v4, "tiles"

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 319
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    :cond_1
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/osmdroid/config/IConfigurationProvider;->setOsmdroidTileCache(Ljava/io/File;)V

    .line 321
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->caches:Z

    .line 324
    :cond_2
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 325
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;I)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->touch:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;

    .line 326
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->createCustomMapView(Landroid/content/Context;)Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    .line 327
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;-><init>(I)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->locationProvider:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;

    .line 328
    new-instance v1, Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-direct {v1, v2}, Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;

    .line 329
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1, v3}, Lorg/osmdroid/views/MapView;->setTilesScaledToDpi(Z)V

    .line 330
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1, p0}, Lorg/osmdroid/views/MapView;->setMapListener(Lorg/osmdroid/events/MapListener;)V

    .line 331
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v1

    new-instance v2, Lorg/osmdroid/views/overlay/CopyrightOverlay;

    invoke-direct {v2, p1}, Lorg/osmdroid/views/overlay/CopyrightOverlay;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    .line 332
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->touch:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;

    invoke-interface {v1, v2}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    new-instance v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$1;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)V

    invoke-virtual {v1, v2}, Lorg/osmdroid/views/MapView;->addOnTapListener(Lorg/osmdroid/views/MapView$OnTapListener;)V

    .line 348
    new-instance v1, Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControls:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    .line 349
    new-instance v1, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-direct {v1, v0, v2}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;-><init>(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;Lorg/osmdroid/views/MapView;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->userLocation:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    .line 350
    new-instance v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    .line 351
    invoke-virtual {v0, v3}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setAlignBottom(Z)V

    .line 352
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v0, v3}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setAlignRight(Z)V

    .line 353
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->disableScaleBar()V

    .line 354
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-interface {v0, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    .line 356
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->containerView:Landroid/widget/RelativeLayout;

    .line 357
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 358
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->containerView:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->containerView:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControls:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 360
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControls:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Lorg/osmdroid/views/overlay/compass/CompassOverlay;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->eventListeners:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Lcom/google/appinventor/components/runtime/Form;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object p0
.end method

.method private configurePolygon(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Lorg/osmdroid/views/overlay/Polygon;)V
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$6;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$6;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    invoke-virtual {p2, v0}, Lorg/osmdroid/views/overlay/Polygon;->setOnClickListener(Lorg/osmdroid/views/overlay/Polygon$OnClickListener;)V

    .line 695
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    invoke-virtual {p2, v0}, Lorg/osmdroid/views/overlay/Polygon;->setOnDragListener(Lorg/osmdroid/views/overlay/Polygon$OnDragListener;)V

    .line 745
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Visible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 746
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->showOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V

    return-void

    .line 748
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hideOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V

    return-void
.end method

.method private createNativeCircle(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)Lorg/osmdroid/views/overlay/Polygon;
    .locals 6

    .line 1186
    new-instance v0, Lorg/osmdroid/views/overlay/Polygon;

    invoke-direct {v0}, Lorg/osmdroid/views/overlay/Polygon;-><init>()V

    .line 1187
    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->createPolygon(Lorg/osmdroid/views/overlay/Polygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 1188
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Latitude()D

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Longitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lorg/osmdroid/views/overlay/Polygon;->pointsAsCircle(Lorg/osmdroid/util/GeoPoint;D)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setPoints(Ljava/util/List;)V

    return-object v0
.end method

.method private createNativeMarker(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<",
            "Lorg/osmdroid/views/overlay/Marker;",
            ">;)V"
        }
    .end annotation

    .line 1134
    new-instance v0, Lorg/osmdroid/views/overlay/Marker;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v1}, Lorg/osmdroid/views/overlay/Marker;-><init>(Lorg/osmdroid/views/MapView;)V

    .line 1135
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Draggable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setDraggable(Z)V

    .line 1137
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setTitle(Ljava/lang/String;)V

    .line 1138
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Description()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setSnippet(Ljava/lang/String;)V

    .line 1139
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Latitude()D

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Longitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1140
    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/overlay/Marker;->setAnchor(FF)V

    .line 1141
    new-instance v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$13;

    invoke-direct {v1, p0, p2, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$13;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Lorg/osmdroid/views/overlay/Marker;)V

    invoke-direct {p0, p1, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getMarkerDrawable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method

.method private createNativePolygon(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;
    .locals 2

    .line 1178
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;-><init>()V

    .line 1179
    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->createPolygon(Lorg/osmdroid/views/overlay/Polygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 1180
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->setMultiPoints(Ljava/util/List;)V

    .line 1181
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getHolePoints()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->setMultiHoles(Ljava/util/List;)V

    return-object v0
.end method

.method private createNativePolyline(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)Lorg/osmdroid/views/overlay/Polyline;
    .locals 2

    .line 1156
    new-instance v0, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct {v0}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    .line 1157
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Draggable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setDraggable(Z)V

    .line 1158
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setTitle(Ljava/lang/String;)V

    .line 1159
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Description()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setSnippet(Ljava/lang/String;)V

    .line 1160
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    .line 1161
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setColor(I)V

    .line 1162
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/Polyline;->setWidth(F)V

    .line 1163
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/Polyline;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    return-object v0
.end method

.method private createNativeRectangle(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)Lorg/osmdroid/views/overlay/Polygon;
    .locals 9

    .line 1193
    new-instance v0, Lorg/osmdroid/util/BoundingBox;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->NorthLatitude()D

    move-result-wide v1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->EastLongitude()D

    move-result-wide v3

    .line 1194
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->SouthLatitude()D

    move-result-wide v5

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->WestLongitude()D

    move-result-wide v7

    invoke-direct/range {v0 .. v8}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    .line 1195
    new-instance v1, Lorg/osmdroid/views/overlay/Polygon;

    invoke-direct {v1}, Lorg/osmdroid/views/overlay/Polygon;-><init>()V

    .line 1196
    invoke-direct {p0, v1, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->createPolygon(Lorg/osmdroid/views/overlay/Polygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 1197
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/osmdroid/views/overlay/Polygon;->pointsAsRect(Lorg/osmdroid/util/BoundingBox;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->setPoints(Ljava/util/List;)V

    return-object v1
.end method

.method private createPolygon(Lorg/osmdroid/views/overlay/Polygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2

    .line 1168
    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Draggable()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Polygon;->setDraggable(Z)V

    .line 1169
    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Title()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Polygon;->setTitle(Ljava/lang/String;)V

    .line 1170
    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Description()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Polygon;->setSnippet(Ljava/lang/String;)V

    .line 1171
    move-object v0, p2

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeColor()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeColor(I)V

    .line 1172
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeWidth(F)V

    .line 1173
    check-cast p2, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;

    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;->FillColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/osmdroid/views/overlay/Polygon;->setFillColor(I)V

    .line 1174
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;

    invoke-virtual {p1, p2}, Lorg/osmdroid/views/overlay/Polygon;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->ready:Z

    return p0
.end method

.method public static bridge synthetic e(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Lorg/osmdroid/views/MapView;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->ready:Z

    return-void
.end method

.method public static bridge synthetic g(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getDefaultMarkerDrawable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static getBestGuessHeight(Lcom/caverock/androidsvg/SVG$Svg;)F
    .locals 1

    .line 1062
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_0

    .line 1063
    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue()F

    move-result p0

    return p0

    .line 1064
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v0, :cond_1

    .line 1065
    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget p0, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    return p0

    :cond_1
    const/high16 p0, 0x42480000    # 50.0f

    return p0
.end method

.method private static getBestGuessWidth(Lcom/caverock/androidsvg/SVG$Svg;)F
    .locals 1

    .line 1052
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_0

    .line 1053
    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue()F

    move-result p0

    return p0

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v0, :cond_1

    .line 1055
    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget p0, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    return p0

    :cond_1
    const/high16 p0, 0x41f00000    # 30.0f

    return p0
.end method

.method private getDefaultMarkerDrawable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1048
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultMarkerSVG:Lcom/caverock/androidsvg/SVG;

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rasterizeSVG(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/caverock/androidsvg/SVG;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private getMarkerDrawable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 973
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->ImageAsset()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 974
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ".svg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 977
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getMarkerDrawableRaster(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void

    .line 975
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getMarkerDrawableVector(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method

.method private getMarkerDrawableRaster(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 1032
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->ImageAsset()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Width()I

    move-result v2

    .line 1033
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Height()I

    move-result v3

    new-instance v4, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$12;

    invoke-direct {v4, p0, p2, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$12;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    .line 1032
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawableAsync(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;IILcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method

.method private getMarkerDrawableVector(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 984
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultMarkerSVG:Lcom/caverock/androidsvg/SVG;

    const-string v1, "Invalid SVG in Marker asset"

    const-string v2, "Unable to read Marker asset"

    if-nez v0, :cond_1

    .line 986
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v3, "marker.svg"

    invoke-static {v0, v3}, Lcom/caverock/androidsvg/SVG;->getFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultMarkerSVG:Lcom/caverock/androidsvg/SVG;
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    .line 990
    :goto_0
    sget-object v3, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 988
    :goto_1
    sget-object v3, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 992
    :goto_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultMarkerSVG:Lcom/caverock/androidsvg/SVG;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG;->getRootElement()Lcom/caverock/androidsvg/SVG$Svg;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 993
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unable to load SVG from assets"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 996
    :cond_1
    :goto_3
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->ImageAsset()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 997
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 999
    :try_start_1
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v4}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/caverock/androidsvg/SVG;->getFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG;

    move-result-object v4
    :try_end_1
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_7

    :catch_2
    move-exception v4

    goto :goto_4

    :catch_3
    move-exception v4

    goto :goto_5

    .line 1003
    :goto_4
    sget-object v5, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    invoke-static {v5, v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 1001
    :goto_5
    sget-object v5, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    invoke-static {v5, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    move-object v4, v3

    :goto_7
    if-nez v4, :cond_2

    .line 1009
    :try_start_2
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v5, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 1010
    invoke-static {v3}, Lcom/caverock/androidsvg/SVG;->getFromInputStream(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;

    move-result-object v0
    :try_end_2
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1016
    sget-object v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    move-object v3, v0

    goto :goto_c

    :catchall_0
    move-exception p1

    goto :goto_a

    :catch_4
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    goto :goto_9

    .line 1014
    :goto_8
    :try_start_3
    sget-object v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1016
    invoke-static {v1, v3}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    goto :goto_b

    .line 1012
    :goto_9
    :try_start_4
    sget-object v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1016
    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    goto :goto_b

    :goto_a
    sget-object p2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    invoke-static {p2, v3}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 1017
    throw p1

    :cond_2
    :goto_b
    move-object v3, v4

    :cond_3
    :goto_c
    if-nez v3, :cond_4

    .line 1021
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultMarkerSVG:Lcom/caverock/androidsvg/SVG;

    .line 1024
    :cond_4
    :try_start_5
    invoke-direct {p0, p1, v3}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rasterizeSVG(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/caverock/androidsvg/SVG;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_d

    :catch_6
    move-exception p1

    .line 1026
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V

    :goto_d
    return-void
.end method

.method public static bridge synthetic h(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getMarkerDrawable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method

.method public static bridge synthetic i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private rasterizeSVG(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/caverock/androidsvg/SVG;)Landroid/graphics/drawable/Drawable;
    .locals 21

    .line 1072
    invoke-virtual/range {p2 .. p2}, Lcom/caverock/androidsvg/SVG;->getRootElement()Lcom/caverock/androidsvg/SVG$Svg;

    move-result-object v0

    move-object/from16 v1, p0

    .line 1073
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 1074
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Height()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getBestGuessHeight(Lcom/caverock/androidsvg/SVG$Svg;)F

    move-result v3

    goto :goto_0

    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Height()I

    move-result v3

    int-to-float v3, v3

    .line 1075
    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Width()I

    move-result v4

    if-gtz v4, :cond_1

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getBestGuessWidth(Lcom/caverock/androidsvg/SVG$Svg;)F

    move-result v4

    goto :goto_1

    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Width()I

    move-result v4

    int-to-float v4, v4

    .line 1076
    :goto_1
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getBestGuessHeight(Lcom/caverock/androidsvg/SVG$Svg;)F

    move-result v5

    div-float v5, v3, v5

    .line 1077
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getBestGuessWidth(Lcom/caverock/androidsvg/SVG$Svg;)F

    move-result v6

    div-float v6, v4, v6

    mul-float v7, v5, v5

    mul-float v8, v6, v6

    add-float/2addr v8, v7

    float-to-double v7, v8

    .line 1078
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    .line 1081
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 1082
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 1083
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;->FillColor()I

    move-result v10

    invoke-static {v8, v10}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    .line 1084
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeColor()I

    move-result v10

    invoke-static {v9, v10}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    .line 1085
    new-instance v10, Lcom/caverock/androidsvg/SVG$Length;

    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v7

    invoke-direct {v10, v11}, Lcom/caverock/androidsvg/SVG$Length;-><init>(F)V

    .line 1086
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Svg;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 1087
    instance-of v11, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;

    if-eqz v11, :cond_2

    .line 1088
    check-cast v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;

    .line 1089
    iget-object v11, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    new-instance v12, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v13

    invoke-direct {v12, v13}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    iput-object v12, v11, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1090
    iget-object v11, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x437f0000    # 255.0f

    div-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    iput-object v12, v11, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    .line 1091
    iget-object v11, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    new-instance v12, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getColor()I

    move-result v14

    invoke-direct {v12, v14}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    iput-object v12, v11, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1092
    iget-object v11, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getAlpha()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    iput-object v12, v11, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    .line 1093
    iget-object v11, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iput-object v10, v11, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    .line 1094
    iget-object v11, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    const-wide/16 v14, 0x3d

    iput-wide v14, v11, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1095
    iget-object v11, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    if-eqz v11, :cond_2

    .line 1096
    iget-object v11, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-wide v11, v11, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v14, 0x1

    and-long/2addr v11, v14

    const-wide/16 v16, 0x0

    cmp-long v18, v11, v16

    if-nez v18, :cond_3

    .line 1097
    iget-object v11, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    new-instance v12, Lcom/caverock/androidsvg/SVG$Colour;

    const/high16 v18, 0x437f0000    # 255.0f

    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v13

    invoke-direct {v12, v13}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    iput-object v12, v11, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1098
    iget-object v11, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-wide v12, v11, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    or-long/2addr v12, v14

    iput-wide v12, v11, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_3

    :cond_3
    const/high16 v18, 0x437f0000    # 255.0f

    .line 1100
    :goto_3
    iget-object v11, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-wide v11, v11, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v13, 0x4

    and-long/2addr v11, v13

    cmp-long v15, v11, v16

    if-nez v15, :cond_4

    .line 1101
    iget-object v11, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v12

    int-to-float v12, v12

    div-float v12, v12, v18

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    iput-object v12, v11, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    .line 1102
    iget-object v11, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-wide/from16 v19, v13

    iget-wide v13, v11, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    or-long v13, v13, v19

    iput-wide v13, v11, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1104
    :cond_4
    iget-object v11, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-wide v11, v11, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v13, 0x8

    and-long/2addr v11, v13

    cmp-long v15, v11, v16

    if-nez v15, :cond_5

    .line 1105
    iget-object v11, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    new-instance v12, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getColor()I

    move-result v15

    invoke-direct {v12, v15}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    iput-object v12, v11, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1106
    iget-object v11, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-wide/from16 v19, v13

    iget-wide v13, v11, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    or-long v13, v13, v19

    iput-wide v13, v11, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1108
    :cond_5
    iget-object v11, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-wide v11, v11, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v13, 0x10

    and-long/2addr v11, v13

    cmp-long v15, v11, v16

    if-nez v15, :cond_6

    .line 1109
    iget-object v11, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getAlpha()I

    move-result v12

    int-to-float v12, v12

    div-float v12, v12, v18

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    iput-object v12, v11, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    .line 1110
    iget-object v11, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-wide/from16 v18, v13

    iget-wide v13, v11, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    or-long v13, v13, v18

    iput-wide v13, v11, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1112
    :cond_6
    iget-object v11, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-wide v11, v11, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v13, 0x20

    and-long/2addr v11, v13

    cmp-long v15, v11, v16

    if-nez v15, :cond_2

    .line 1113
    iget-object v11, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    iput-object v10, v11, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    .line 1114
    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-wide v11, v7, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    or-long/2addr v11, v13

    iput-wide v11, v7, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_2

    .line 1121
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/caverock/androidsvg/SVG;->renderToPicture()Landroid/graphics/Picture;

    move-result-object v0

    .line 1122
    new-instance v7, Landroid/graphics/Picture;

    invoke-direct {v7}, Landroid/graphics/Picture;-><init>()V

    .line 1123
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    mul-float v8, v8, v9

    add-float/2addr v8, v4

    mul-float v8, v8, v2

    float-to-int v4, v8

    .line 1124
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v9

    add-float/2addr v8, v3

    mul-float v8, v8, v2

    float-to-int v3, v8

    .line 1123
    invoke-virtual {v7, v4, v3}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v3

    mul-float v6, v6, v2

    mul-float v2, v2, v5

    .line 1125
    invoke-virtual {v3, v6, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1126
    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG$Length;->floatValue()F

    move-result v2

    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG$Length;->floatValue()F

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1127
    invoke-virtual {v0, v3}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 1128
    invoke-virtual {v7}, Landroid/graphics/Picture;->endRecording()V

    .line 1129
    new-instance v0, Landroid/graphics/drawable/PictureDrawable;

    invoke-direct {v0, v7}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    return-object v0
.end method


# virtual methods
.method public addEventListener(Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;)V
    .locals 3

    .line 549
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->eventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 550
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->ready:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x0

    const-string v2, "MapReady"

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->canDispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 551
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->ready:Z

    .line 552
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onReady(Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;)V

    :cond_1
    return-void
.end method

.method public addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V
    .locals 1

    .line 759
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->createNativeCircle(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)Lorg/osmdroid/views/overlay/Polygon;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->configurePolygon(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Lorg/osmdroid/views/overlay/Polygon;)V

    return-void
.end method

.method public addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V
    .locals 2

    .line 621
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->createNativePolyline(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)Lorg/osmdroid/views/overlay/Polyline;

    move-result-object v0

    .line 622
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    new-instance v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setOnClickListener(Lorg/osmdroid/views/overlay/Polyline$OnClickListener;)V

    .line 643
    new-instance v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$5;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$5;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setOnDragListener(Lorg/osmdroid/views/overlay/Polyline$OnDragListener;)V

    .line 666
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Visible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 667
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->showOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V

    return-void

    .line 669
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hideOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V

    return-void
.end method

.method public addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
    .locals 1

    .line 558
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->createNativeMarker(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method

.method public addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .locals 1

    .line 754
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->createNativePolygon(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->configurePolygon(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Lorg/osmdroid/views/overlay/Polygon;)V

    return-void
.end method

.method public addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V
    .locals 1

    .line 764
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->createNativeRectangle(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)Lorg/osmdroid/views/overlay/Polygon;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->configurePolygon(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Lorg/osmdroid/views/overlay/Polygon;)V

    return-void
.end method

.method public createCustomMapView(Landroid/content/Context;)Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapView;
    .locals 4

    .line 307
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapView;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapTileProviderBasic;

    sget-object v2, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->DEFAULT_TILE_SOURCE:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    new-instance v3, Lorg/osmdroid/tileprovider/modules/TileWriter;

    invoke-direct {v3}, Lorg/osmdroid/tileprovider/modules/TileWriter;-><init>()V

    invoke-direct {v1, p1, v2, v3}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapTileProviderBasic;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapView;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Landroid/content/Context;Lorg/osmdroid/tileprovider/MapTileProviderBase;)V

    return-object v0
.end method

.method public getBoundingBox()Lorg/osmdroid/util/BoundingBox;
    .locals 1

    .line 1286
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLocationListener()Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;
    .locals 1

    .line 1314
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->locationProvider:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMapType()Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;
    .locals 2

    .line 417
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->values()[Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->tileType:Lcom/google/appinventor/components/common/MapType;

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/MapType;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMapTypeAbstract()Lcom/google/appinventor/components/common/MapType;
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->tileType:Lcom/google/appinventor/components/common/MapType;

    return-object v0
.end method

.method public getOverlayCount()I
    .locals 2

    .line 1319
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 1320
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRotation()F
    .locals 1

    .line 1330
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v0

    return v0
.end method

.method public getScaleUnits()Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;
    .locals 2

    .line 1361
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;->$SwitchMap$org$osmdroid$views$overlay$ScaleBarOverlay$UnitsOfMeasure:[I

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getUnitsOfMeasure()Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    move-result-object v1

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1365
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->METRIC:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    return-object v0

    .line 1367
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Somehow we have an unallowed unit system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1363
    :cond_1
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->IMPERIAL:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    return-object v0
.end method

.method public getScaleUnitsAbstract()Lcom/google/appinventor/components/common/ScaleUnits;
    .locals 2

    .line 1388
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;->$SwitchMap$org$osmdroid$views$overlay$ScaleBarOverlay$UnitsOfMeasure:[I

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getUnitsOfMeasure()Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    move-result-object v1

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1392
    sget-object v0, Lcom/google/appinventor/components/common/ScaleUnits;->Metric:Lcom/google/appinventor/components/common/ScaleUnits;

    return-object v0

    .line 1394
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Somehow we have an unallowed unit system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1390
    :cond_1
    sget-object v0, Lcom/google/appinventor/components/common/ScaleUnits;->Imperial:Lcom/google/appinventor/components/common/ScaleUnits;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->containerView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getZoom()I
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->getZoomLevel(Z)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public hideFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 1

    .line 1215
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/views/overlay/OverlayWithIW;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hideOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V

    return-void
.end method

.method public hideInfobox(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 1

    .line 1274
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/views/overlay/OverlayWithIW;

    .line 1275
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->closeInfoWindow()V

    return-void
.end method

.method public hideOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V
    .locals 1

    .line 1219
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/osmdroid/views/overlay/OverlayManager;->remove(Ljava/lang/Object;)Z

    .line 1220
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->invalidate()V

    return-void
.end method

.method public isCompassEnabled()Z
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->isCompassEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFeatureCollectionVisible(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureCollection;)Z
    .locals 1

    .line 1231
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hiddenFeatureCollections:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public isFeatureVisible(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)Z
    .locals 1

    .line 1225
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/views/overlay/OverlayWithIW;

    if-eqz p1, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/osmdroid/views/overlay/OverlayManager;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isInfoboxVisible(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)Z
    .locals 1

    .line 1280
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/views/overlay/OverlayWithIW;

    if-eqz p1, :cond_0

    .line 1281
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->isInfoWindowOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isPanEnabled()Z
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->touch:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;->a(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;)Z

    move-result v0

    return v0
.end method

.method public isRotationEnabled()Z
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isScaleVisible()Z
    .locals 1

    .line 1341
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isShowUserEnabled()Z
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->userLocation:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomControlEnabled()Z
    .locals 1

    .line 486
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControlEnabled:Z

    return v0
.end method

.method public isZoomEnabled()Z
    .locals 1

    .line 404
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomEnabled:Z

    return v0
.end method

.method public onScroll(Lorg/osmdroid/events/ScrollEvent;)Z
    .locals 1

    .line 1297
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->eventListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 1298
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onBoundsChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onZoom(Lorg/osmdroid/events/ZoomEvent;)Z
    .locals 1

    .line 1305
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControls:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->updateButtons()V

    .line 1306
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->eventListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 1307
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onZoom()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public panTo(DDID)V
    .locals 2

    .line 538
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    .line 539
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object p1

    int-to-double p2, p5

    invoke-interface {p1, p2, p3}, Lorg/osmdroid/api/IMapController;->zoomTo(D)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 540
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_0

    const-wide p2, 0x408f400000000000L    # 1000.0

    mul-double p6, p6, p2

    double-to-long p2, p6

    .line 542
    invoke-virtual {p1, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_0
    return-void
.end method

.method public removeFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2

    .line 769
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->remove(Ljava/lang/Object;)Z

    .line 770
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setBoundingBox(Lorg/osmdroid/util/BoundingBox;)V
    .locals 5

    .line 1291
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getCenter()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    .line 1292
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLatitudeSpan()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/osmdroid/api/IMapController;->zoomToSpan(DD)V

    return-void
.end method

.method public setCenter(DD)V
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    return-void
.end method

.method public setCompassEnabled(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 443
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    if-nez v0, :cond_0

    .line 444
    new-instance v0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;-><init>(Landroid/content/Context;Lorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    .line 445
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$2;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 453
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    invoke-interface {v0, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 457
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->getOrientationProvider()Lorg/osmdroid/views/overlay/compass/IOrientationProvider;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 458
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->enableCompass()Z

    goto :goto_0

    .line 460
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    new-instance v0, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->enableCompass(Lorg/osmdroid/views/overlay/compass/IOrientationProvider;)Z

    .line 462
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    iget v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->lastAzimuth:F

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->onOrientationChanged(FLorg/osmdroid/views/overlay/compass/IOrientationProvider;)V

    return-void

    .line 464
    :cond_2
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->getOrientation()F

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->lastAzimuth:F

    .line 465
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->disableCompass()V

    :cond_3
    return-void
.end method

.method public setFeatureCollectionVisible(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureCollection;Z)V
    .locals 1

    if-nez p2, :cond_0

    .line 1236
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hiddenFeatureCollections:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hiddenFeatureCollections:Ljava/util/Set;

    .line 1237
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_3

    .line 1242
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hiddenFeatureCollections:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1243
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .line 1244
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hiddenFeatures:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1245
    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Visible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1246
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->showFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_0

    .line 1250
    :cond_3
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hiddenFeatureCollections:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1251
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .line 1252
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hiddenFeatures:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1253
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hideFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public setMapType(Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;)V
    .locals 0

    .line 409
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/common/MapType;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/MapType;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 411
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->setMapTypeAbstract(Lcom/google/appinventor/components/common/MapType;)V

    :cond_0
    return-void
.end method

.method public setMapTypeAbstract(Lcom/google/appinventor/components/common/MapType;)V
    .locals 1

    .line 422
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->tileType:Lcom/google/appinventor/components/common/MapType;

    .line 423
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;->$SwitchMap$com$google$appinventor$components$common$MapType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    .line 431
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->USGS_TOPO:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/MapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    return-void

    .line 428
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->USGS_SAT:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/MapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    return-void

    .line 425
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->MAPNIK:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/MapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    return-void
.end method

.method public setPanEnabled(Z)V
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->touch:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;->b(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;Z)V

    return-void
.end method

.method public setRotation(F)V
    .locals 1

    .line 1325
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/MapView;->setMapOrientation(F)V

    return-void
.end method

.method public setRotationEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 508
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    if-nez v0, :cond_0

    .line 509
    new-instance v0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v1}, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    if-eqz v0, :cond_2

    .line 512
    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->setEnabled(Z)V

    if-eqz p1, :cond_1

    .line 514
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    invoke-interface {p1, v0}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    return-void

    .line 516
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    invoke-interface {p1, v0}, Lorg/osmdroid/views/overlay/OverlayManager;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public setScaleUnits(Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;)V
    .locals 3

    .line 1346
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;->$SwitchMap$com$google$appinventor$components$runtime$util$MapFactory$MapScaleUnits:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1351
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    sget-object v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->imperial:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setUnitsOfMeasure(Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;)V

    goto :goto_0

    .line 1354
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unallowable unit system: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1348
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    sget-object v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->metric:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setUnitsOfMeasure(Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;)V

    .line 1356
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->invalidate()V

    return-void
.end method

.method public setScaleUnitsAbstract(Lcom/google/appinventor/components/common/ScaleUnits;)V
    .locals 1

    .line 1373
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;->$SwitchMap$com$google$appinventor$components$common$ScaleUnits:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1378
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    sget-object v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->imperial:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setUnitsOfMeasure(Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;)V

    goto :goto_0

    .line 1375
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    sget-object v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->metric:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setUnitsOfMeasure(Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;)V

    .line 1383
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->invalidate()V

    return-void
.end method

.method public setScaleVisible(Z)V
    .locals 1

    .line 1335
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setEnabled(Z)V

    .line 1336
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->invalidate()V

    return-void
.end method

.method public setShowUserEnabled(Z)V
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->userLocation:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 493
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->userLocation:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableMyLocation()Z

    .line 494
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->userLocation:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-interface {p1, v0}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    return-void

    .line 496
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->userLocation:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->disableMyLocation()V

    .line 497
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->userLocation:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-interface {p1, v0}, Lorg/osmdroid/views/overlay/OverlayManager;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setZoom(I)V
    .locals 3

    .line 385
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    int-to-double v1, p1

    invoke-interface {v0, v1, v2}, Lorg/osmdroid/api/IMapController;->setZoom(D)D

    .line 386
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControls:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->updateButtons()V

    return-void
.end method

.method public setZoomControlEnabled(Z)V
    .locals 2

    .line 477
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControlEnabled:Z

    if-eq v0, p1, :cond_1

    .line 478
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControls:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 479
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControlEnabled:Z

    .line 480
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->containerView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setZoomEnabled(Z)V
    .locals 1

    .line 398
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomEnabled:Z

    .line 399
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/MapView;->setMultiTouchControls(Z)V

    return-void
.end method

.method public showFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 1

    .line 1203
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hiddenFeatures:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/views/overlay/OverlayWithIW;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->showOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V

    :cond_0
    return-void
.end method

.method public showInfobox(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2

    .line 1260
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    .line 1261
    instance-of v1, v0, Lorg/osmdroid/views/overlay/Marker;

    if-eqz v1, :cond_0

    .line 1262
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/OverlayWithIW;->showInfoWindow()V

    return-void

    .line 1263
    :cond_0
    instance-of v1, v0, Lorg/osmdroid/views/overlay/Polyline;

    if-eqz v1, :cond_1

    .line 1264
    check-cast v0, Lorg/osmdroid/views/overlay/Polyline;

    .line 1265
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/Polyline;->showInfoWindow(Lorg/osmdroid/util/GeoPoint;)V

    return-void

    .line 1267
    :cond_1
    check-cast v0, Lorg/osmdroid/views/overlay/Polygon;

    .line 1268
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/Polygon;->showInfoWindow(Lorg/osmdroid/util/GeoPoint;)V

    return-void
.end method

.method public showOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V
    .locals 1

    .line 1209
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    .line 1210
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->invalidate()V

    return-void
.end method

.method public updateFeatureDraggable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 1

    .line 925
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    if-eqz v0, :cond_0

    .line 927
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Draggable()Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->setDraggable(Z)V

    :cond_0
    return-void
.end method

.method public updateFeatureFill(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V
    .locals 2

    .line 836
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    if-nez v0, :cond_0

    return-void

    .line 840
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->accept(Lorg/osmdroid/views/overlay/OverlayWithIWVisitor;)V

    return-void
.end method

.method public updateFeatureHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;

    if-eqz v0, :cond_0

    .line 806
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getHolePoints()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->setMultiHoles(Ljava/util/List;)V

    .line 807
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->invalidate()V

    :cond_0
    return-void
.end method

.method public updateFeatureImage(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
    .locals 2

    .line 933
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Marker;

    if-nez v0, :cond_0

    return-void

    .line 937
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$10;

    invoke-direct {v1, p0, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$10;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lorg/osmdroid/views/overlay/Marker;)V

    invoke-direct {p0, p1, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getMarkerDrawable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method

.method public updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V
    .locals 5

    .line 813
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Latitude()D

    move-result-wide v1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Longitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 814
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    if-eqz v1, :cond_0

    .line 816
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lorg/osmdroid/views/overlay/Polygon;->pointsAsCircle(Lorg/osmdroid/util/GeoPoint;D)Ljava/util/ArrayList;

    move-result-object p1

    .line 817
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->setPoints(Ljava/util/List;)V

    .line 818
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->invalidate()V

    :cond_0
    return-void
.end method

.method public updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V
    .locals 1

    .line 786
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Polyline;

    if-eqz v0, :cond_0

    .line 788
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getPoints()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    .line 789
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->invalidate()V

    :cond_0
    return-void
.end method

.method public updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
    .locals 6

    .line 775
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Marker;

    if-eqz v0, :cond_0

    .line 777
    sget-object v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->ANCHOR_HORIZONTAL:[F

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->AnchorHorizontal()I

    move-result v2

    aget v1, v1, v2

    sget-object v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->ANCHOR_VERTICAL:[F

    .line 778
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->AnchorVertical()I

    move-result v3

    aget v2, v2, v3

    .line 777
    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/overlay/Marker;->setAnchor(FF)V

    .line 779
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Latitude()D

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Longitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    .line 780
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->invalidate()V

    :cond_0
    return-void
.end method

.method public updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .locals 1

    .line 795
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;

    if-eqz v0, :cond_0

    .line 797
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getPoints()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->setMultiPoints(Ljava/util/List;)V

    .line 798
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->invalidate()V

    :cond_0
    return-void
.end method

.method public updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V
    .locals 10

    .line 825
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Polygon;

    if-eqz v0, :cond_0

    .line 827
    new-instance v1, Lorg/osmdroid/util/BoundingBox;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->NorthLatitude()D

    move-result-wide v2

    .line 828
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->EastLongitude()D

    move-result-wide v4

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->SouthLatitude()D

    move-result-wide v6

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->WestLongitude()D

    move-result-wide v8

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    .line 827
    invoke-static {v1}, Lorg/osmdroid/views/overlay/Polygon;->pointsAsRect(Lorg/osmdroid/util/BoundingBox;)Ljava/util/ArrayList;

    move-result-object p1

    .line 829
    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setPoints(Ljava/util/List;)V

    .line 830
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->invalidate()V

    :cond_0
    return-void
.end method

.method public updateFeatureSize(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
    .locals 2

    .line 953
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Marker;

    if-nez v0, :cond_0

    return-void

    .line 957
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$11;

    invoke-direct {v1, p0, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$11;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lorg/osmdroid/views/overlay/Marker;)V

    invoke-direct {p0, p1, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getMarkerDrawable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method

.method public updateFeatureStroke(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V
    .locals 2

    .line 873
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    if-nez v0, :cond_0

    return-void

    .line 877
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$9;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$9;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->accept(Lorg/osmdroid/views/overlay/OverlayWithIWVisitor;)V

    return-void
.end method

.method public updateFeatureText(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2

    .line 916
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    if-eqz v0, :cond_0

    .line 918
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->setTitle(Ljava/lang/String;)V

    .line 919
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Description()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->setSnippet(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
