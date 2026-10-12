.class public Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/util/OnInitializeListener;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;
.implements Lcom/google/android/gms/location/LocationListener;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MAPS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Visible component that show information on Google map."
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "play-services-maps.aar, play-services-maps.jar, play-services-base.aar, play-services-base.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, annotation.jar, play-services-location.aar, play-services-location.jar, gson.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.WRITE_EXTERNAL_STORAGE, android.permission.ACCESS_NETWORK_STATE, android.permission.INTERNET, android.permission.ACCESS_COARSE_LOCATION, android.permission.ACCESS_FINE_LOCATION, com.google.android.providers.gsf.permission.READ_GSERVICES, android.permission.WRITE_EXTERNAL_STORAGE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;
    }
.end annotation


# static fields
.field private static final DEFAULT_RADIUS:D = 1000000.0

.field public static final RADIUS_OF_EARTH_METERS:D = 6371009.0

.field private static final REQUEST:Lcom/google/android/gms/location/LocationRequest;

.field private static final TAG:Ljava/lang/String; = "NiotronGoogleMaps"

.field private static final sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final snextCircleId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final snextMarkerId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final MAP_FRAGMENT_TAG:Ljava/lang/String;

.field private final androidUIHandler:Landroid/os/Handler;

.field private circles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private compassEnabled:Z

.field private final context:Landroid/app/Activity;

.field private enableCameraChangeListener:Z

.field private enableMapClickListener:Z

.field private enableMapLongClickListener:Z

.field private final form:Lcom/google/appinventor/components/runtime/Form;

.field private googleMap:Lcom/google/android/gms/maps/GoogleMap;

.field private isMapReady:Z

.field private isRunning:Z

.field private mAlpha:I

.field private mCircles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;",
            ">;"
        }
    .end annotation
.end field

.field private mColorHue:I

.field private mFillColor:I

.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;

.field private mMapFragment:Lcom/google/android/gms/maps/MapFragment;

.field private mMarkerColor:I

.field private mMarkerDraggable:Z

.field private mStrokeColor:I

.field private mStrokeWidth:F

.field private mUiSettings:Lcom/google/android/gms/maps/UiSettings;

.field private mapType:I

.field private markers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/gms/maps/model/Marker;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private markersList:Lcom/google/appinventor/components/runtime/util/YailList;

.field private myLocationEnabled:Z

.field private polygons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/gms/maps/model/Polygon;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private rotateEnabled:Z

.field private savedInstanceState:Landroid/os/Bundle;

.field private scrollEnabled:Z

.field private viewLayout:Landroid/widget/LinearLayout;

.field private zoomControlEnabled:Z

.field private zoomGesturesEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 129
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->snextCircleId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 145
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 146
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->snextMarkerId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 155
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const-wide/16 v1, 0x1388

    .line 156
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const-wide/16 v1, 0x10

    .line 157
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const/16 v1, 0x64

    .line 158
    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->REQUEST:Lcom/google/android/gms/location/LocationRequest;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->markers:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 109
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mapType:I

    const/4 v1, 0x0

    .line 110
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->myLocationEnabled:Z

    .line 111
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->compassEnabled:Z

    .line 112
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->rotateEnabled:Z

    .line 113
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->scrollEnabled:Z

    .line 114
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->zoomControlEnabled:Z

    .line 115
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->zoomGesturesEnabled:Z

    const v2, -0xffff01

    .line 118
    iput v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMarkerColor:I

    .line 119
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMarkerDraggable:Z

    .line 122
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->enableMapClickListener:Z

    .line 123
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->enableMapLongClickListener:Z

    .line 124
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->enableCameraChangeListener:Z

    .line 130
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->circles:Ljava/util/HashMap;

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mCircles:Ljava/util/List;

    .line 133
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->polygons:Ljava/util/HashMap;

    const/high16 v2, 0x40000000    # 2.0f

    .line 136
    iput v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mStrokeWidth:F

    const/high16 v2, -0x1000000

    .line 137
    iput v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mStrokeColor:I

    .line 138
    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mColorHue:I

    const/16 v2, 0x14

    .line 139
    iput v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mAlpha:I

    int-to-float v3, v1

    const/4 v4, 0x3

    .line 140
    new-array v4, v4, [F

    aput v3, v4, v1

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v4, v0

    const/4 v0, 0x2

    aput v3, v4, v0

    invoke-static {v2, v4}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mFillColor:I

    .line 147
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->androidUIHandler:Landroid/os/Handler;

    .line 159
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->isMapReady:Z

    .line 165
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->context:Landroid/app/Activity;

    .line 166
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 167
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getOnCreateBundle()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->savedInstanceState:Landroid/os/Bundle;

    .line 169
    new-instance v2, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v2, v0, p0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    sget-object v3, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 170
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 173
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->viewLayout:Landroid/widget/LinearLayout;

    .line 175
    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->generateViewId()I

    move-result v0

    .line 176
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->viewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setId(I)V

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "map_"

    .line 0
    invoke-static {v0, v2, v3}, L_COROUTINE/a;->g(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 178
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->MAP_FRAGMENT_TAG:Ljava/lang/String;

    .line 179
    const-string v2, "map_tag:"

    const-string v3, "NiotronGoogleMaps"

    .line 0
    invoke-static {v2, v0, v3}, L_COROUTINE/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->checkGooglePlayServiceSDK()V

    .line 183
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->checkGoogleMapInstalled()V

    .line 185
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/MapFragment;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMapFragment:Lcom/google/android/gms/maps/MapFragment;

    if-nez v2, :cond_0

    .line 194
    invoke-static {}, Lcom/google/android/gms/maps/MapFragment;->newInstance()Lcom/google/android/gms/maps/MapFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMapFragment:Lcom/google/android/gms/maps/MapFragment;

    .line 198
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 199
    const-string v4, "here before adding fragment"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->viewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMapFragment:Lcom/google/android/gms/maps/MapFragment;

    invoke-virtual {v2, v3, v4, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 203
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 208
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->setUpMapIfNeeded()V

    .line 209
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    const/4 p1, -0x2

    .line 211
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->Width(I)V

    .line 212
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->Height(I)V

    .line 213
    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnInitialize(Lcom/google/appinventor/components/runtime/util/OnInitializeListener;)V

    .line 214
    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 215
    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->MAP_FRAGMENT_TAG:Ljava/lang/String;

    return-object p0
.end method

.method private addMarkerToMap(Ljava/lang/Double;Ljava/lang/Double;IFLjava/lang/String;Ljava/lang/String;Z)I
    .locals 3

    .line 995
    const-string v0, "NiotronGoogleMaps"

    const-string v1, "@addMarkerToMap"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 997
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez p1, :cond_0

    .line 998
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->setUpMapIfNeeded()V

    .line 1000
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance p2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {p2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 1001
    invoke-virtual {p2, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p2

    .line 1002
    invoke-static {p4}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p2

    .line 1000
    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    .line 1004
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 1005
    invoke-virtual {p1, p5}, Lcom/google/android/gms/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    .line 1007
    :cond_1
    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 1008
    invoke-virtual {p1, p6}, Lcom/google/android/gms/maps/model/Marker;->setSnippet(Ljava/lang/String;)V

    .line 1010
    :cond_2
    invoke-virtual {p1, p7}, Lcom/google/android/gms/maps/model/Marker;->setDraggable(Z)V

    .line 1012
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->markers:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p3
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->androidUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Lcom/google/appinventor/components/runtime/Form;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object p0
.end method

.method private checkGoogleMapInstalled()V
    .locals 4

    const/4 v0, 0x0

    .line 433
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.apps.maps"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 438
    :catch_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x2eea

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "checkGoogleMapInstalled"

    invoke-virtual {v1, p0, v3, v2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method private checkGooglePlayServiceSDK()V
    .locals 4

    .line 407
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->context:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "googlePlayServicesAvailable:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NiotronGoogleMaps"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 410
    const-string v3, "checkGooglePlayServiceSDK"

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x2ef2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x2ef1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 416
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x2ef0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 412
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x2eeb

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Lcom/google/android/gms/maps/MapFragment;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMapFragment:Lcom/google/android/gms/maps/MapFragment;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->viewLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->setUpMapIfNeeded()V

    return-void
.end method

.method private static generateCircleId()I
    .locals 1

    .line 974
    sget-object v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->snextCircleId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method private static generateMarkerId()I
    .locals 1

    .line 965
    sget-object v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->snextMarkerId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method private static generateViewId()I
    .locals 4

    .line 227
    :cond_0
    sget-object v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    const v3, 0xffffff

    if-le v2, v3, :cond_1

    const/4 v2, 0x1

    .line 231
    :cond_1
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1
.end method

.method private getCircleIfExisted(I)Ljava/lang/Object;
    .locals 3

    .line 486
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->circles:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->getKeyByValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 490
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 489
    const-string p1, "getCircleIfExisted"

    const/16 v2, 0x2eef

    invoke-virtual {v0, p0, p1, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method private getKeyByValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TT;TE;>;TE;)TT;"
        }
    .end annotation

    .line 1457
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1458
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1459
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getMarkerIfExisted(I)Lcom/google/android/gms/maps/model/Marker;
    .locals 4

    .line 1289
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->markers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->getKeyByValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    const/4 v1, 0x0

    .line 1291
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1292
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 1293
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 1292
    const-string p1, "getMarkerIfExisted"

    const/16 v3, 0x2eed

    invoke-virtual {v1, p0, p1, v3, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public static bridge synthetic h(Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->toRadiusLatLng(Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D
    .locals 0

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->toRadiusMeters(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide p0

    return-wide p0
.end method

.method private prepareFragmentView()V
    .locals 2

    .line 651
    invoke-static {}, Lcom/google/android/gms/maps/MapFragment;->newInstance()Lcom/google/android/gms/maps/MapFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMapFragment:Lcom/google/android/gms/maps/MapFragment;

    .line 653
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setUpLocationClientIfNeeded()V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->context:Landroid/app/Activity;

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    :cond_0
    return-void
.end method

.method private setUpMap()V
    .locals 2

    .line 293
    const-string v0, "NiotronGoogleMaps"

    const-string v1, "in setUpMap()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    .line 296
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    .line 297
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerDragListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;)V

    .line 305
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->setupUiSettings()V

    .line 309
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->MapIsReady()V

    return-void
.end method

.method private setUpMapIfNeeded()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 260
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->isMapReady:Z

    .line 261
    const-string v0, "NiotronGoogleMaps"

    const-string v1, "setUpMapIfNeeded. mMap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMapFragment:Lcom/google/android/gms/maps/MapFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/MapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 267
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->isMapReady:Z

    return-void
.end method

.method private setupUiSettings()V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    .line 316
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->compassEnabled:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setCompassEnabled(Z)V

    .line 317
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->rotateEnabled:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    .line 318
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->scrollEnabled:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setScrollGesturesEnabled(Z)V

    .line 319
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->zoomControlEnabled:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 320
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->zoomGesturesEnabled:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setZoomGesturesEnabled(Z)V

    :cond_0
    return-void
.end method

.method private static toRadiusLatLng(Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLng;
    .locals 5

    const-wide v0, 0x41584db040000000L    # 6371009.0

    div-double/2addr p1, v0

    .line 1662
    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 1663
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    div-double/2addr p1, v0

    .line 1664
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v3, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    add-double/2addr v3, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method private static toRadiusMeters(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D
    .locals 10

    const/4 v0, 0x1

    .line 1668
    new-array v9, v0, [F

    .line 1669
    iget-wide v1, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v3, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v5, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v7, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static/range {v1 .. v9}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 p0, 0x0

    .line 1671
    aget p0, v9, p0

    float-to-double p0, p0

    return-wide p0
.end method


# virtual methods
.method public AddCircle(DDDIFFIZ)I
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a circle overlay on the map UI with specified latitude and longitude for center. \"hue\" (min 0, max 360) and \"alpha\" (min 0, max 255) are used to set color and transparency level of the circle, \"strokeWidth\" and \"strokeColor\" are for the perimeter of the circle. Returning a unique id of the circle for future reference to events raised by moving this circle. If the circle isset to be draggable, two default markers will appear on the map: one in the center of the circle, another on the perimeter."
    .end annotation

    .line 459
    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->generateCircleId()I

    move-result v0

    const/4 v1, 0x3

    .line 460
    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p8, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v3, 0x2

    aput v2, v1, v3

    move/from16 v2, p7

    invoke-static {v2, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v9

    if-eqz p11, :cond_0

    .line 464
    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;

    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v4, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    move-object v3, p0

    move-wide v5, p5

    move/from16 v7, p9

    move/from16 v8, p10

    invoke-direct/range {v2 .. v9}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;Lcom/google/android/gms/maps/model/LatLng;DFII)V

    .line 466
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mCircles:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->circles:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    .line 471
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v2, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v4, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 472
    invoke-virtual {v2, v4}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p1

    move-wide v5, p5

    .line 473
    invoke-virtual {p1, v5, v6}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p1

    move/from16 v7, p9

    .line 474
    invoke-virtual {p1, v7}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p1

    move/from16 v8, p10

    .line 475
    invoke-virtual {p1, v8}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p1

    .line 476
    invoke-virtual {p1, v9}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p1

    .line 471
    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    move-result-object p1

    .line 477
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->circles:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public AddMarkers(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 20
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Adding a list of YailLists for markers. The representation of a maker in the inner YailList is composed of: lat(double) [required], long(double) [required], Color, title(String), snippet(String), draggable(boolean). Return a list of unqiue ids for the added  markers. Note that the markers ids are not meant to persist after  the app is closed, but for temporary references to the markers within the program only. Return an empty list if any error happen in the input"
    .end annotation

    move-object/from16 v0, p0

    const/4 v8, 0x1

    const/4 v9, 0x3

    .line 866
    new-array v10, v9, [F

    .line 868
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 869
    invoke-virtual/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v13, :cond_d

    aget-object v1, v12, v15

    .line 871
    instance-of v2, v1, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v2, :cond_c

    .line 872
    const-string v2, "interior YailLiat"

    const-string v3, "NiotronGoogleMaps"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    const/4 v4, 0x2

    if-ge v2, v4, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    .line 877
    :goto_1
    invoke-virtual {v1, v14}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v5

    .line 878
    invoke-virtual {v1, v8}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v6

    .line 879
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const/16 p1, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v8, "Type: "

    invoke-direct {v14, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v16, 0x0

    .line 881
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 882
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    .line 885
    instance-of v4, v5, Lgnu/math/DFloNum;

    if-eqz v4, :cond_2

    instance-of v4, v6, Lgnu/math/DFloNum;

    if-nez v4, :cond_1

    goto :goto_2

    .line 888
    :cond_1
    check-cast v5, Lgnu/math/DFloNum;

    invoke-virtual {v5}, Lgnu/math/DFloNum;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 889
    check-cast v6, Lgnu/math/DFloNum;

    invoke-virtual {v6}, Lgnu/math/DFloNum;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v2, 0x0

    .line 894
    :goto_3
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide v17, -0x3fa9800000000000L    # -90.0

    cmpg-double v6, v4, v17

    if-ltz v6, :cond_3

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide v17, 0x4056800000000000L    # 90.0

    cmpl-double v6, v4, v17

    if-gtz v6, :cond_3

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide v17, -0x3f99800000000000L    # -180.0

    cmpg-double v6, v4, v17

    if-ltz v6, :cond_3

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide v17, 0x4066800000000000L    # 180.0

    cmpl-double v6, v4, v17

    if-lez v6, :cond_4

    :cond_3
    const/4 v2, 0x0

    .line 900
    :cond_4
    iget v4, v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMarkerColor:I

    .line 903
    iget-boolean v5, v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMarkerDraggable:Z

    .line 905
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v6

    const-string v0, "Value: "

    if-lt v6, v9, :cond_6

    const/4 v6, 0x2

    .line 906
    invoke-virtual {v1, v6}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x2

    .line 907
    invoke-virtual {v1, v6}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x2

    .line 909
    invoke-virtual {v1, v6}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v9

    .line 911
    instance-of v9, v9, Lgnu/math/IntNum;

    if-eqz v9, :cond_5

    .line 912
    invoke-virtual {v1, v6}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/math/IntNum;

    invoke-virtual {v4}, Lgnu/math/IntNum;->intValue()I

    move-result v4

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    .line 918
    :cond_6
    :goto_4
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v6

    const-string v9, ""

    move/from16 v16, v2

    const/4 v2, 0x4

    if-lt v6, v2, :cond_7

    const/4 v6, 0x3

    .line 919
    invoke-virtual {v1, v6}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x3

    .line 920
    invoke-virtual {v1, v6}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x3

    .line 921
    invoke-virtual {v1, v6}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_7
    move-object v2, v9

    .line 923
    :goto_5
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v6

    move-object/from16 v19, v2

    const/4 v2, 0x5

    if-lt v6, v2, :cond_8

    const/4 v6, 0x4

    .line 924
    invoke-virtual {v1, v6}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    invoke-virtual {v1, v6}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    invoke-virtual {v1, v6}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_8
    move-object v6, v9

    .line 928
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    const/4 v9, 0x6

    if-lt v2, v9, :cond_9

    const/4 v2, 0x5

    .line 929
    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x5

    .line 930
    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 933
    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    :cond_9
    move/from16 v2, v16

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    .line 940
    :goto_6
    invoke-static {v4, v10}, Landroid/graphics/Color;->colorToHSV(I[F)V

    if-eqz v2, :cond_b

    .line 942
    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->generateMarkerId()I

    move-result v3

    .line 943
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 944
    aget v4, v10, p1

    const/16 v17, 0x3

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v14

    move v7, v5

    move-object/from16 v5, v19

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->addMarkerToMap(Ljava/lang/Double;Ljava/lang/Double;IFLjava/lang/String;Ljava/lang/String;Z)I

    goto :goto_7

    :cond_b
    const/16 v17, 0x3

    move-object/from16 v0, p0

    :goto_7
    const/4 v2, 0x1

    goto :goto_8

    :cond_c
    const/16 p1, 0x0

    const/16 v17, 0x3

    .line 949
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "marker is not represented as list"

    aput-object v4, v3, p1

    const-string v4, "AddMarkers"

    const/16 v5, 0x2eec

    invoke-virtual {v1, v0, v4, v5, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_8
    add-int/2addr v15, v2

    const/4 v8, 0x1

    const/4 v9, 0x3

    const/4 v14, 0x0

    goto/16 :goto_0

    .line 955
    :cond_d
    invoke-static {v11}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    return-object v1
.end method

.method public AddMarkersFromJson(Ljava/lang/String;)V
    .locals 26
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Adding a list of markers that are represented as JsonArray.  The inner JsonObject represents a markerand is composed of name-value pairs. Name fields for a marker are: \"lat\" (type double) [required], \"lng\"(type double) [required], \"color\"(type int)[in hue value ranging from 0~360], \"title\"(type String), \"snippet\"(type String), \"draggable\"(type boolean)"
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 1032
    const-string v11, "AddMarkersFromJson"

    const-string v12, "draggable"

    const-string v13, "snippet"

    const-string v14, "title"

    const-string v15, "color"

    const-string v1, ","

    const-string v2, "lng"

    const-string v3, "lat"

    const-string v4, "NiotronGoogleMaps"

    const-string v5, "It\'s a JsonArry: "

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1033
    new-instance v7, Lcom/google/gson/JsonParser;

    invoke-direct {v7}, Lcom/google/gson/JsonParser;-><init>()V

    const/16 v16, 0x0

    const/4 v10, 0x3

    .line 1034
    new-array v10, v10, [F

    .line 1038
    :try_start_0
    invoke-virtual {v7, v8}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    .line 1039
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 1040
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v7

    .line 1042
    invoke-virtual {v7}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v18, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gson/JsonElement;

    .line 1046
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1047
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 1048
    invoke-virtual {v5, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    if-eqz v7, :cond_b

    invoke-virtual {v5, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    if-nez v7, :cond_0

    goto/16 :goto_f

    .line 1054
    :cond_0
    invoke-virtual {v5, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    check-cast v7, Lcom/google/gson/JsonPrimitive;

    .line 1055
    invoke-virtual {v5, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v18

    check-cast v18, Lcom/google/gson/JsonPrimitive;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_6

    const-wide/16 v19, 0x0

    .line 1063
    :try_start_1
    invoke-virtual {v7}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v21

    if-eqz v21, :cond_1

    move-object/from16 v21, v7

    .line 1064
    invoke-virtual/range {v21 .. v21}, Lcom/google/gson/JsonPrimitive;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_6

    move-object/from16 v22, v9

    :try_start_2
    const-string v9, "jpLat:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/JsonPrimitive;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "jpLng:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    invoke-virtual/range {v21 .. v21}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_6

    .line 1068
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_3 .. :try_end_3} :catch_6

    move-object/from16 v18, v11

    move-object/from16 v21, v12

    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1069
    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_5 .. :try_end_5} :catch_2

    move-object/from16 v23, v6

    :try_start_6
    const-string v6, "convert to double:"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_6

    :catch_0
    :goto_1
    move-object/from16 v4, v18

    goto/16 :goto_11

    :catch_1
    :goto_2
    nop

    :goto_3
    move-wide/from16 v19, v7

    goto :goto_7

    :catch_2
    move-object/from16 v23, v6

    goto :goto_1

    :catch_3
    move-object/from16 v23, v6

    goto :goto_2

    :catch_4
    move-object/from16 v23, v6

    :catch_5
    :goto_4
    nop

    move-wide/from16 v11, v19

    goto :goto_3

    :catch_6
    move-object/from16 v23, v6

    move-object v4, v11

    goto/16 :goto_11

    :catch_7
    move-object/from16 v23, v6

    move-object/from16 v18, v11

    move-object/from16 v21, v12

    goto :goto_4

    :catch_8
    move-object/from16 v23, v6

    :goto_5
    move-object/from16 v18, v11

    move-object/from16 v21, v12

    :catch_9
    nop

    move-wide/from16 v11, v19

    goto :goto_7

    :catch_a
    move-object/from16 v23, v6

    move-object/from16 v22, v9

    goto :goto_5

    :cond_1
    move-object/from16 v23, v6

    move-object/from16 v22, v9

    move-object/from16 v18, v11

    move-object/from16 v21, v12

    .line 1072
    :try_start_7
    invoke-virtual {v5, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v7
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_7 .. :try_end_7} :catch_0

    .line 1073
    :try_start_8
    invoke-virtual {v5, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v11
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_8 .. :try_end_8} :catch_0

    :goto_6
    const/4 v6, 0x1

    goto :goto_8

    :goto_7
    move-wide/from16 v7, v19

    const/4 v6, 0x0

    :goto_8
    const-wide v19, -0x3fa9800000000000L    # -90.0

    cmpg-double v9, v7, v19

    if-ltz v9, :cond_2

    const-wide v19, 0x4056800000000000L    # 90.0

    cmpl-double v9, v7, v19

    if-gtz v9, :cond_2

    const-wide v19, -0x3f99800000000000L    # -180.0

    cmpg-double v9, v11, v19

    if-ltz v9, :cond_2

    const-wide v19, 0x4066800000000000L    # 180.0

    cmpl-double v9, v11, v19

    if-lez v9, :cond_3

    .line 1082
    :cond_2
    :try_start_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Lat/Lng wrong range:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .line 1087
    :cond_3
    iget v9, v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMarkerColor:I

    invoke-static {v9, v10}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1088
    aget v9, v10, v16

    .line 1089
    invoke-virtual {v5, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v19

    if-nez v19, :cond_4

    goto :goto_9

    :cond_4
    invoke-virtual {v5, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v9

    int-to-float v9, v9

    :goto_9
    const/16 v19, 0x0

    cmpg-float v19, v9, v19

    if-ltz v19, :cond_5

    const/high16 v19, 0x43b40000    # 360.0f

    cmpl-float v19, v9, v19

    if-lez v19, :cond_6

    .line 1092
    :cond_5
    const-string v6, "Wrong color"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .line 1096
    :cond_6
    invoke-virtual {v5, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v19
    :try_end_9
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_9 .. :try_end_9} :catch_0

    const-string v20, ""

    if-nez v19, :cond_7

    move-object/from16 v19, v20

    goto :goto_a

    :cond_7
    :try_start_a
    invoke-virtual {v5, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v19

    .line 1097
    :goto_a
    invoke-virtual {v5, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v24

    if-nez v24, :cond_8

    :goto_b
    move-object/from16 v25, v21

    move/from16 v21, v9

    move-object/from16 v9, v25

    goto :goto_c

    :cond_8
    invoke-virtual {v5, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v20

    goto :goto_b

    .line 1098
    :goto_c
    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v24

    if-nez v24, :cond_9

    iget-boolean v5, v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMarkerDraggable:Z

    goto :goto_d

    :cond_9
    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v5

    :goto_d
    if-eqz v6, :cond_a

    .line 1101
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_a
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_a .. :try_end_a} :catch_0

    :try_start_b
    const-string v0, "Adding marker"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 1102
    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->generateMarkerId()I

    move-result v3

    .line 1103
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6
    :try_end_b
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_b .. :try_end_b} :catch_c

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    :try_start_c
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1104
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7
    :try_end_c
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_c .. :try_end_c} :catch_b

    move-object/from16 v23, v0

    move-object v8, v1

    move-object v11, v2

    move-object v12, v4

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v6, v20

    move/from16 v4, v21

    move-object/from16 v0, p0

    move v7, v5

    move-object/from16 v5, v19

    :try_start_d
    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->addMarkerToMap(Ljava/lang/Double;Ljava/lang/Double;IFLjava/lang/String;Ljava/lang/String;Z)I

    goto :goto_10

    :catch_b
    move-object/from16 v23, v0

    :catch_c
    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_a
    move-object v8, v1

    move-object v11, v2

    move-object/from16 v24, v3

    :goto_e
    move-object v12, v4

    goto :goto_10

    :cond_b
    :goto_f
    move-object v8, v1

    move-object/from16 v24, v3

    move-object/from16 v23, v6

    move-object/from16 v22, v9

    move-object/from16 v18, v11

    move-object v9, v12

    move-object v11, v2

    goto :goto_e

    :goto_10
    move-object v1, v8

    move-object v2, v11

    move-object v4, v12

    move-object/from16 v11, v18

    move-object/from16 v6, v23

    move-object/from16 v3, v24

    move-object/from16 v8, p1

    move-object v12, v9

    move-object/from16 v9, v22

    goto/16 :goto_0

    :cond_c
    move-object/from16 v23, v6

    goto :goto_12

    :cond_d
    move-object/from16 v23, v6

    move-object/from16 v18, v11

    .line 1112
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "markers needs to be represented as JsonArray"

    aput-object v2, v3, v16
    :try_end_d
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_d .. :try_end_d} :catch_0

    const/16 v2, 0x2eec

    move-object/from16 v4, v18

    :try_start_e
    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1114
    invoke-static/range {v23 .. v23}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    iput-object v1, v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->markersList:Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_e
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_e .. :try_end_e} :catch_d

    goto :goto_12

    .line 1118
    :catch_d
    :goto_11
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x2eee

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v16

    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1120
    invoke-static/range {v23 .. v23}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    iput-object v1, v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->markersList:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 1123
    :goto_12
    invoke-static/range {v23 .. v23}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    iput-object v1, v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->markersList:Lcom/google/appinventor/components/runtime/util/YailList;

    return-void
.end method

.method public AddMarkersHue(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 23
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Adding a list of YailList for markers. The inner YailList represents a marker and is composed of lat(Double) [required], long(Double) [required], color(int)[in hue value ranging from 0-360], title(String), snippet(String), draggable(boolean). Return a list of unique ids for the markers that are added"
    .end annotation

    move-object/from16 v0, p0

    const/4 v8, 0x1

    .line 1135
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1137
    invoke-virtual/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v11, :cond_d

    aget-object v1, v10, v13

    .line 1139
    instance-of v2, v1, Lcom/google/appinventor/components/runtime/util/YailList;

    const-string v3, "AddMarkersHue"

    const/16 v4, 0x2eec

    if-eqz v2, :cond_c

    .line 1140
    const-string v2, "Interior YailLiat"

    const-string v5, "NiotronGoogleMaps"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    const-string v6, "AddMarkers"

    const/4 v7, 0x2

    if-ge v2, v7, :cond_0

    .line 1143
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v14, v8, [Ljava/lang/Object;

    const-string v15, "Need more than 2 inputs"

    aput-object v15, v14, v12

    invoke-virtual {v2, v0, v6, v4, v14}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    .line 1150
    :goto_1
    invoke-virtual {v1, v12}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v14

    .line 1151
    invoke-virtual {v1, v8}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v15

    const/16 p1, 0x0

    .line 1152
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v4, "Type: "

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v17, 0x0

    .line 1154
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 1155
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    .line 1158
    instance-of v8, v14, Lgnu/math/DFloNum;

    if-eqz v8, :cond_2

    instance-of v8, v15, Lgnu/math/DFloNum;

    if-nez v8, :cond_1

    goto :goto_2

    .line 1163
    :cond_1
    check-cast v14, Lgnu/math/DFloNum;

    invoke-virtual {v14}, Lgnu/math/DFloNum;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 1164
    check-cast v15, Lgnu/math/DFloNum;

    invoke-virtual {v15}, Lgnu/math/DFloNum;->doubleValue()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    goto :goto_3

    .line 1159
    :cond_2
    :goto_2
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v8, 0x1

    new-array v14, v8, [Ljava/lang/Object;

    const-string v8, "Not a number for latitude or longitude"

    aput-object v8, v14, p1

    const/16 v8, 0x2eec

    invoke-virtual {v2, v0, v3, v8, v14}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 1167
    :goto_3
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide v18, -0x3fa9800000000000L    # -90.0

    cmpg-double v8, v14, v18

    if-ltz v8, :cond_3

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide v18, 0x4056800000000000L    # 90.0

    cmpl-double v8, v14, v18

    if-gtz v8, :cond_3

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide v18, -0x3f99800000000000L    # -180.0

    cmpg-double v8, v14, v18

    if-ltz v8, :cond_3

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide v18, 0x4066800000000000L    # 180.0

    cmpl-double v8, v14, v18

    if-lez v8, :cond_4

    .line 1169
    :cond_3
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v8, 0x1

    new-array v14, v8, [Ljava/lang/Object;

    const-string v8, "Range for the latitude or longitude is wrong"

    aput-object v8, v14, p1

    const/16 v8, 0x2eec

    invoke-virtual {v2, v0, v6, v8, v14}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 1173
    :cond_4
    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->generateMarkerId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 1177
    iget-boolean v15, v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMarkerDraggable:Z

    move/from16 v18, v2

    .line 1179
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    move-object/from16 v19, v7

    const-string v7, "Value: "

    move/from16 v20, v8

    const/4 v8, 0x3

    const/high16 v21, 0x43700000    # 240.0f

    if-lt v2, v8, :cond_6

    const/4 v2, 0x2

    .line 1180
    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    .line 1181
    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    .line 1183
    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v16, v10

    .line 1185
    instance-of v10, v8, Lgnu/math/IntNum;

    if-eqz v10, :cond_5

    .line 1186
    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/math/IntNum;

    invoke-virtual {v2}, Lgnu/math/IntNum;->intValue()I

    move-result v2

    int-to-float v2, v2

    move/from16 v21, v2

    :goto_4
    move/from16 v2, v18

    goto :goto_5

    .line 1189
    :cond_5
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 1190
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, " is not a number"

    .line 0
    invoke-static {v8, v10}, L_COROUTINE/a;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v18, v8

    const/4 v10, 0x1

    .line 1190
    new-array v8, v10, [Ljava/lang/Object;

    aput-object v18, v8, p1

    const/16 v10, 0x2eec

    .line 1189
    invoke-virtual {v2, v0, v3, v10, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    goto :goto_5

    :cond_6
    move-object/from16 v16, v10

    goto :goto_4

    .line 1194
    :goto_5
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    const-string v8, ""

    const/4 v10, 0x4

    if-lt v3, v10, :cond_7

    const/4 v3, 0x3

    .line 1195
    invoke-virtual {v1, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1196
    invoke-virtual {v1, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x3

    .line 1197
    invoke-virtual {v1, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 0
    invoke-static {v7, v3, v5}, L_COROUTINE/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    move-object/from16 v18, v8

    .line 1200
    :goto_6
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    const/4 v10, 0x5

    if-lt v3, v10, :cond_8

    const/4 v3, 0x4

    .line 1201
    invoke-virtual {v1, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1202
    invoke-virtual {v1, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x4

    .line 1203
    invoke-virtual {v1, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 0
    invoke-static {v7, v3, v5}, L_COROUTINE/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    :cond_8
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    const/4 v10, 0x6

    if-lt v3, v10, :cond_a

    const/4 v3, 0x5

    .line 1208
    invoke-virtual {v1, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x5

    .line 1209
    invoke-virtual {v1, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    invoke-virtual {v1, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_9

    .line 1212
    invoke-virtual {v1, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    move v7, v15

    const/4 v10, 0x1

    goto :goto_7

    .line 1215
    :cond_9
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v10, 0x1

    new-array v2, v10, [Ljava/lang/Object;

    const-string v3, "marker not as a list"

    aput-object v3, v2, p1

    const/16 v3, 0x2eec

    invoke-virtual {v1, v0, v6, v3, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    move v7, v15

    const/4 v2, 0x0

    goto :goto_7

    :cond_a
    const/4 v10, 0x1

    move v7, v15

    :goto_7
    if-eqz v2, :cond_b

    .line 1222
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v8

    move-object v2, v12

    move-object/from16 v5, v18

    move-object/from16 v1, v19

    move/from16 v3, v20

    move/from16 v4, v21

    .line 1223
    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->addMarkerToMap(Ljava/lang/Double;Ljava/lang/Double;IFLjava/lang/String;Ljava/lang/String;Z)I

    :cond_b
    add-int/2addr v13, v10

    move-object/from16 v10, v16

    const/4 v8, 0x1

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_c
    const/16 p1, 0x0

    const/4 v10, 0x1

    .line 1228
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v2, v10, [Ljava/lang/Object;

    const-string v4, "Marker is not represented as list"

    aput-object v4, v2, p1

    const/16 v8, 0x2eec

    invoke-virtual {v1, v0, v3, v8, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1230
    invoke-static {v9}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    return-object v1

    .line 1233
    :cond_d
    invoke-static {v9}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    return-object v1
.end method

.method public BoundCamera(DDDD)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Transforms the camera such that the specified latitude/longitude bounds are centered on screen at the greatest possible zoom level. Need to specify both latitudes and longitudes for both northeast location and southwest location of the bounding box"
    .end annotation

    .line 1554
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 1555
    new-instance p1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p1, p5, p6, p7, p8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 1556
    new-instance p2, Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    const/4 p1, 0x0

    .line 1558
    invoke-static {p2, p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    .line 1559
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    return-void
.end method

.method public CameraPositionChanged(DDFFF)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called after the camera position of a map has changed."
    .end annotation

    .line 1486
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->context:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$8;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$8;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;DDFFF)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public CompassEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates whether the compass widget is currently enabled in the map ui"
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/UiSettings;->isCompassEnabled()Z

    move-result v0

    return v0
.end method

.method public EnableCompass(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enables/disables the compass widget on the map\'s ui. Call this only after event \"MapIsReady\" is received"
    .end annotation

    .line 327
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->isMapReady:Z

    if-nez v0, :cond_0

    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->setupUiSettings()V

    .line 329
    :cond_1
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->compassEnabled:Z

    .line 330
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setCompassEnabled(Z)V

    return-void
.end method

.method public EnableMapCameraPosChangeListener(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enable/Disable to listen to map\'s camera position changed event"
    .end annotation

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@EnableMapCameraPosChangeListener:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NiotronGoogleMaps"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->enableCameraChangeListener:Z

    if-eq v0, p1, :cond_0

    .line 806
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->enableCameraChangeListener:Z

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_2

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "enable cameraChangedListener?:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    :cond_2
    return-void
.end method

.method public EnableMapClickListener(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enable/Disable to listen to map\'s click event"
    .end annotation

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@EnableMapClickListener:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NiotronGoogleMaps"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->enableMapClickListener:Z

    if-eq v0, p1, :cond_0

    .line 756
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->enableMapClickListener:Z

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_2

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "enable map listener?: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    :cond_2
    return-void
.end method

.method public EnableMapLongClickListener(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enable/disable to listen to map\'s long click event"
    .end annotation

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@EnableMapLongClickListener:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NiotronGoogleMaps"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->enableMapLongClickListener:Z

    if-eq v0, p1, :cond_0

    .line 781
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->enableMapLongClickListener:Z

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_2

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "enable long click listener?:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapLongClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;)V

    :cond_2
    return-void
.end method

.method public EnableMyLocation(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enable or disable my location widget control for Google Map. One can call \""
    .end annotation

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@EnableMyLocation:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NiotronGoogleMaps"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->myLocationEnabled:Z

    if-eq v0, p1, :cond_0

    .line 686
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->myLocationEnabled:Z

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_2

    .line 690
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    if-eqz p1, :cond_1

    .line 693
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->setUpLocationClientIfNeeded()V

    .line 694
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    return-void

    .line 697
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_2
    return-void
.end method

.method public EnableRotate(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enables/disables the capability to rotate a map on the ui. Call this only after the event \"MapIsReady\" is received."
    .end annotation

    .line 341
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->isMapReady:Z

    if-nez v0, :cond_0

    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->setupUiSettings()V

    .line 343
    :cond_1
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->rotateEnabled:Z

    .line 344
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    return-void
.end method

.method public EnableScroll(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enables/disables the capability to scroll a map on the ui. Call this only after the event \"MapIsReady\" is received"
    .end annotation

    .line 355
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->isMapReady:Z

    if-nez v0, :cond_0

    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->setupUiSettings()V

    .line 357
    :cond_1
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->scrollEnabled:Z

    .line 358
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setScrollGesturesEnabled(Z)V

    return-void
.end method

.method public EnableZoomControl(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enables/disables the zoom widget on the map\'s ui. Call this only after the event \"MapIsReady\" is received"
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->setupUiSettings()V

    .line 371
    :cond_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->zoomControlEnabled:Z

    .line 372
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    return-void
.end method

.method public EnableZoomGesture(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enables/disables zoom gesture on the map ui. Call this only after the event  \"MapIsReady\" is received. "
    .end annotation

    .line 384
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->isMapReady:Z

    if-nez v0, :cond_0

    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->setupUiSettings()V

    .line 386
    :cond_1
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->zoomGesturesEnabled:Z

    .line 387
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setZoomGesturesEnabled(Z)V

    return-void
.end method

.method public FinishedDraggingCircle(IDDD)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event been raised after the action of moving a draggable circle is finished. Possible a user drag the center of the circle or drag the radius marker of the circle"
    .end annotation

    .line 614
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->context:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$1;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;IDDD)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public GetAllCircleIDs()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get all circles Ids. A short cut to get all the references for the eixisting circles"
    .end annotation

    .line 600
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->circles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/Collection;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public GetAllMarkerID()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get all the existing markers\'s Ids"
    .end annotation

    .line 1284
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->markers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/Collection;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public GetMarkers()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a list of markers composed of name-value pairs. Name fields for a marker are: \"lat\" (type double) [required], \"lng\"(type double) [required], \"color\"(type int)[in hue value ranging from 0~360], \"title\"(type String), \"snippet\"(type String), \"draggable\"(type boolean)"
    .end annotation

    .line 1022
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->markersList:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public GetMyLocation()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get current location using Google Map Service. Return a YailList with first item beingthe latitude, the second item being the longitude, and last time being the accuracy of the reading."
    .end annotation

    .line 710
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 712
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 713
    const-string v1, "NiotronGoogleMaps"

    const-string v2, "client is connected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    sget-object v1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v1

    .line 717
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public Height(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the google map height"
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    .line 254
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    return-void
.end method

.method public InfoWindowClicked(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When the marker\'s infowindow is clicked, returning marker\'s id"
    .end annotation

    .line 1417
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->context:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$7;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$7;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public MapCameraChangedListenerEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates if the map camera\'s position changed listener is currently enabled"
    .end annotation

    .line 822
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->enableCameraChangeListener:Z

    return v0
.end method

.method public MapClickListenerEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates if the mapClick event listener is currently enabled"
    .end annotation

    .line 770
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->enableMapClickListener:Z

    return v0
.end method

.method public MapIsReady()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the map has been rendered and ready for adding markers or changing other settings. Please add or updating markers within this event"
    .end annotation

    .line 399
    const-string v0, "NiotronGoogleMaps"

    const-string v1, "Map is ready for adding markers and other setting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 400
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->isMapReady:Z

    const/4 v0, 0x0

    .line 401
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MapIsReady"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public MapLongClickListenerEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates if the map longClick listener is currently enabled"
    .end annotation

    .line 795
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->enableMapLongClickListener:Z

    return v0
.end method

.method public MapType()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates the current map type"
    .end annotation

    .line 827
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mapType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 831
    :cond_0
    const-string v0, "hybrid"

    return-object v0

    .line 835
    :cond_1
    const-string v0, "terrain"

    return-object v0

    .line 833
    :cond_2
    const-string v0, "satellite"

    return-object v0

    .line 829
    :cond_3
    const-string v0, "normal"

    return-object v0
.end method

.method public MoveCamera(DDF)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Move the map\'s camera to the specified position and zoom level"
    .end annotation

    .line 1537
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 1538
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {v1, p5}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_0
    return-void
.end method

.method public MyLocationEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates whether my locaiton UI control is currently enabled for the Google map."
    .end annotation

    .line 703
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->myLocationEnabled:Z

    return v0
.end method

.method public OnLocationChanged(DD)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers this event when user location has changed. Only works when EnableMylocation is set to true"
    .end annotation

    .line 1720
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->context:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$11;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$11;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;DD)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public OnMapClick(DD)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the user makes a tap gesture on the map"
    .end annotation

    .line 1526
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->context:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$10;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$10;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;DD)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public OnMapLongClick(DD)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the user makes a long-press gesture on the map"
    .end annotation

    .line 1508
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->context:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$9;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$9;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;DD)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public OnMarkerClick(IDD)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When a marker is clicked"
    .end annotation

    .line 1407
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->context:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$6;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$6;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;IDD)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public OnMarkerDrag(IDD)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When a marker is been dragged"
    .end annotation

    .line 1385
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->context:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$4;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$4;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;IDD)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public OnMarkerDragEnd(IDD)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When the user drags a marker and finish the action, returning marker\'s id and it\'s latest position"
    .end annotation

    .line 1397
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->context:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$5;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$5;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;IDD)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public OnMarkerDragStart(IDD)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When a marker starts been dragged"
    .end annotation

    .line 1375
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->context:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$3;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;IDD)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public RemoveCircle(I)Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove a circle for the map. Returns true if successfully removed, false if the circle does not exist with the specified id"
    .end annotation

    .line 500
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->circles:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->getKeyByValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 507
    :cond_0
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;

    if-eqz v0, :cond_1

    .line 508
    move-object v0, p1

    check-cast v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->removeFromMap()V

    .line 509
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mCircles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 512
    :cond_1
    instance-of v0, p1, Lcom/google/android/gms/maps/model/Circle;

    if-eqz v0, :cond_2

    .line 513
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Circle;->remove()V

    .line 516
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->circles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public RemoveMarker(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove a marker from the map"
    .end annotation

    .line 1301
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->getMarkerIfExisted(I)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1304
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->markers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    :cond_0
    return-void
.end method

.method public RotateEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates whether the capability to rotate a map on the ui is currently enabled"
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/UiSettings;->isRotateGesturesEnabled()Z

    move-result v0

    return v0
.end method

.method public ScrollEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates whether the capability to scroll a map on the ui is currently enabled"
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/UiSettings;->isScrollGesturesEnabled()Z

    move-result v0

    return v0
.end method

.method public SetMapType(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the layer of Google map. Default layer is \"normal\", other choices including \"hybrid\",\"satellite\", and \"terrain\" "
    .end annotation

    const/4 v0, 0x1

    .line 729
    const-string v1, "normal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 730
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mapType:I

    goto :goto_0

    .line 731
    :cond_0
    const-string v1, "hybrid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x4

    .line 732
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mapType:I

    goto :goto_0

    .line 733
    :cond_1
    const-string v1, "satellite"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x2

    .line 734
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mapType:I

    goto :goto_0

    .line 735
    :cond_2
    const-string v1, "terrain"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p1, 0x3

    .line 736
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mapType:I

    goto :goto_0

    .line 738
    :cond_3
    const-string v1, "Error setting layer with name "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NiotronGoogleMaps"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, " is not the correct type"

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const-string p1, "SetMapType"

    const/16 v2, 0x2eec

    invoke-virtual {v1, p0, p1, v2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 743
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_4

    .line 744
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mapType:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    :cond_4
    return-void
.end method

.method public UpdateCircle(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the property of an existing circle. Properties include: \"alpha\"(number, value ranging from 0~255), \"color\" (nimber, hue value ranging 0~360), \"radius\"(number in meters)"
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 527
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "inputs: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NiotronGoogleMaps"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x3

    .line 528
    new-array v4, v3, [F

    .line 529
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->getCircleIfExisted(I)Ljava/lang/Object;

    move-result-object v5

    .line 532
    const-string v6, "UpdateCircle"

    if-eqz v5, :cond_5

    .line 533
    instance-of p1, v5, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;

    if-eqz p1, :cond_0

    .line 534
    move-object p1, v5

    check-cast p1, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->getCircle()Lcom/google/android/gms/maps/model/Circle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 537
    :goto_0
    instance-of v7, v5, Lcom/google/android/gms/maps/model/Circle;

    if-eqz v7, :cond_1

    .line 538
    move-object p1, v5

    check-cast p1, Lcom/google/android/gms/maps/model/Circle;

    .line 543
    :cond_1
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    .line 544
    const-string v9, "alpha"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 546
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Circle;->getFillColor()I

    move-result v9

    .line 547
    invoke-static {v9, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 548
    invoke-virtual {v8}, Ljava/lang/Float;->intValue()I

    move-result v8

    .line 550
    invoke-static {v8, v4}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v4

    .line 551
    invoke-virtual {p1, v4}, Lcom/google/android/gms/maps/model/Circle;->setFillColor(I)V

    .line 554
    :cond_2
    const-string v4, "color"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 555
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Circle;->getFillColor()I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    .line 557
    new-array v3, v3, [F

    aput v7, v3, v1

    aput v0, v3, v2

    const/4 v8, 0x2

    aput v0, v3, v8

    invoke-static {v4, v3}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    .line 558
    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/Circle;->setFillColor(I)V

    .line 561
    :cond_3
    const-string v0, "radius"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    float-to-double v3, v7

    .line 564
    invoke-virtual {p1, v3, v4}, Lcom/google/android/gms/maps/model/Circle;->setRadius(D)V

    .line 566
    instance-of p1, v5, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;

    if-eqz p1, :cond_4

    .line 568
    move-object p1, v5

    check-cast p1, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->getCenterMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    .line 569
    move-object p2, v5

    check-cast p2, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->getRadiusMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object p2

    .line 570
    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 571
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 572
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-static {p1, v3, v4}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->toRadiusLatLng(Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    .line 573
    invoke-virtual {p1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    const/high16 v0, 0x43520000    # 210.0f

    .line 574
    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    .line 571
    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    .line 577
    check-cast v5, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;

    invoke-virtual {v5, p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->setRadiusMarker(Lcom/google/android/gms/maps/model/Marker;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 586
    :catch_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 587
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p2, p3, v1

    const/16 p2, 0x2eec

    .line 586
    invoke-virtual {p1, p0, v6, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_4
    return-void

    .line 593
    :cond_5
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 594
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v1

    const/16 p1, 0x2eef

    .line 593
    invoke-virtual {p2, p0, v6, p1, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public UpdateMarker(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the property of a marker, note that the marker has to be added first or else will throw an exception! Properties include: \"color\"(hue value ranging from 0~360), \"title\", \"snippet\", \"draggable\"(give either true or false as the value)."
    .end annotation

    .line 1243
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1244
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1246
    const-string v2, "@UpdateMarker"

    const-string v3, "NiotronGoogleMaps"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "markerId:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    const-string v2, "prop:"

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "value:"

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->getMarkerIfExisted(I)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    .line 1251
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "marker?:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    .line 1255
    const-string p2, "color"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1256
    const-string p2, "we are changing color"

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    .line 1258
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p3

    const/4 v2, 0x0

    cmpg-float p3, p3, v2

    if-ltz p3, :cond_1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p3

    const/high16 v2, 0x43b40000    # 360.0f

    cmpl-float p3, p3, v2

    if-lez p3, :cond_0

    goto :goto_0

    .line 1264
    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    goto :goto_1

    .line 1259
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 1260
    invoke-virtual {p2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v2, v4

    .line 1259
    const-string p2, "UpdateMarker"

    const/16 v4, 0x2eec

    invoke-virtual {p3, p0, p2, v4, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1267
    :cond_2
    :goto_1
    const-string p2, "title"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1268
    const-string p2, "we are changing title"

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    .line 1271
    :cond_3
    const-string p2, "snippet"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1272
    const-string p2, "we are changing snippet"

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/Marker;->setSnippet(Ljava/lang/String;)V

    .line 1275
    :cond_4
    const-string p2, "draggable"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1276
    const-string p2, "we are changing draggable"

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/Marker;->setDraggable(Z)V

    :cond_5
    return-void
.end method

.method public Width(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the google map width"
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    .line 245
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    return-void
.end method

.method public ZoomControlEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates whether the zoom widget on the map ui is currently enabled"
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/UiSettings;->isZoomControlsEnabled()Z

    move-result v0

    return v0
.end method

.method public ZoomGestureEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates whether the zoom gesture is currently enabled"
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/UiSettings;->isZoomGesturesEnabled()Z

    move-result v0

    return v0
.end method

.method public addOverlay()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Adds a overlay"
    .end annotation

    .line 1835
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    const-wide v1, 0x40445b672b884407L    # 40.714086

    const-wide v3, -0x3fad715d074213a1L    # -74.228697

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 1836
    new-instance v1, Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;-><init>()V

    const v2, 0x46066000    # 8600.0f

    const v3, 0x45cb2000    # 6500.0f

    .line 1837
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->position(Lcom/google/android/gms/maps/model/LatLng;FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    move-result-object v0

    .line 1838
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addGroundOverlay(Lcom/google/android/gms/maps/model/GroundOverlayOptions;)Lcom/google/android/gms/maps/model/GroundOverlay;

    return-void
.end method

.method public addPolygon(DDDD)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Adds polygon"
    .end annotation

    .line 1739
    new-instance v0, Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/PolygonOptions;-><init>()V

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/google/android/gms/maps/model/LatLng;

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, p1, p2, p7, p8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, p3, p4, p7, p8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, p3, p4, p5, p6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/4 p3, 0x2

    aput-object v2, v1, p3

    new-instance p3, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p3, p1, p2, p5, p6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/4 p4, 0x3

    aput-object p3, v1, p4

    new-instance p3, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p3, p1, p2, p7, p8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/4 p1, 0x4

    aput-object p3, v1, p1

    .line 1740
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->add([Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object p1

    .line 1747
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/GoogleMap;->addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/Polygon;

    move-result-object p1

    .line 1748
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->polygons:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addTileOverlay()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add title overlay"
    .end annotation

    .line 1843
    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$12;

    const/16 v1, 0x100

    invoke-direct {v0, p0, v1, v1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$12;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;II)V

    .line 1880
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v2, Lcom/google/android/gms/maps/model/TileOverlayOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/TileOverlayOptions;-><init>()V

    .line 1881
    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->tileProvider(Lcom/google/android/gms/maps/model/TileProvider;)Lcom/google/android/gms/maps/model/TileOverlayOptions;

    move-result-object v0

    .line 1880
    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addTileOverlay(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/TileOverlay;

    return-void
.end method

.method public clearAllPolygons()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clears all the polygons"
    .end annotation

    .line 1753
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->polygons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1754
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Polygon;

    .line 1755
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Polygon;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public drawCentralSquare()V
    .locals 17
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draw a central square"
    .end annotation

    move-object/from16 v0, p0

    .line 1761
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 1763
    iget-object v2, v1, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    .line 1764
    iget-object v1, v1, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    .line 1766
    iget-wide v3, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 1767
    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 1769
    iget-wide v2, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 1770
    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 1773
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 1774
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v8, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    sub-double v1, v6, v2

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double v1, v1, v10

    sub-double v3, v8, v4

    mul-double v3, v3, v10

    .line 1783
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "[{lat:"

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v10, ",lng:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v10, "}]"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->AddMarkersFromJson(Ljava/lang/String;)V

    .line 1785
    new-instance v5, Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-direct {v5}, Lcom/google/android/gms/maps/model/PolygonOptions;-><init>()V

    const/4 v10, 0x5

    new-array v10, v10, [Lcom/google/android/gms/maps/model/LatLng;

    new-instance v11, Lcom/google/android/gms/maps/model/LatLng;

    add-double v12, v6, v1

    add-double v14, v8, v3

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/16 v16, 0x0

    aput-object v11, v10, v16

    new-instance v11, Lcom/google/android/gms/maps/model/LatLng;

    sub-double/2addr v6, v1

    invoke-direct {v11, v6, v7, v14, v15}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/4 v1, 0x1

    aput-object v11, v10, v1

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    sub-double/2addr v8, v3

    invoke-direct {v2, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/4 v3, 0x2

    aput-object v2, v10, v3

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, v12, v13, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/4 v3, 0x3

    aput-object v2, v10, v3

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, v12, v13, v14, v15}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/4 v3, 0x4

    aput-object v2, v10, v3

    .line 1786
    invoke-virtual {v5, v10}, Lcom/google/android/gms/maps/model/PolygonOptions;->add([Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v2

    .line 1793
    iget-object v3, v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/maps/GoogleMap;->addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/Polygon;

    move-result-object v2

    .line 1794
    iget-object v3, v0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->polygons:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getBoundingBox(DDD)Ljava/lang/String;
    .locals 16
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets blonding box"
    .end annotation

    .line 1806
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 1807
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double v4, v4, p5

    const-wide v6, 0x42c27fd94c2fb880L    # 4.0680631590769E13

    .line 1813
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v8, v8, v6

    const-wide v6, 0x42c260252d89d1a5L    # 4.040829980355529E13

    .line 1814
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double v10, v10, v6

    .line 1815
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    const-wide v12, 0x415854a640000000L    # 6378137.0

    mul-double v6, v6, v12

    .line 1816
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    const-wide v14, 0x41583fc413333333L    # 6356752.3

    mul-double v12, v12, v14

    mul-double v8, v8, v8

    mul-double v10, v10, v10

    add-double/2addr v10, v8

    mul-double v6, v6, v6

    mul-double v12, v12, v12

    add-double/2addr v12, v6

    div-double/2addr v10, v12

    .line 1817
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 1820
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v8, v8, v6

    div-double v6, v4, v6

    sub-double v10, v0, v6

    add-double/2addr v0, v6

    div-double/2addr v4, v8

    sub-double v6, v2, v4

    add-double/2addr v2, v4

    .line 1827
    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    .line 1828
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMapCenter()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets map center"
    .end annotation

    .line 1886
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    .line 1887
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/LatLng;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->viewLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getZoomLevelInfo()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets zoom level info"
    .end annotation

    .line 1892
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    return v0
.end method

.method public onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 9

    .line 1467
    iget-object v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 1468
    iget-object v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 1469
    iget v6, p1, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    .line 1470
    iget v7, p1, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    .line 1471
    iget v8, p1, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    move-object v1, p0

    .line 1472
    invoke-virtual/range {v1 .. v8}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->CameraPositionChanged(DDFFF)V

    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    .line 1681
    const-string p1, "NiotronGoogleMaps"

    const-string v0, "onConnected to location listener....."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    sget-object p1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    sget-object v1, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->REQUEST:Lcom/google/android/gms/location/LocationRequest;

    invoke-interface {p1, v0, v1, p0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    return-void
.end method

.method public onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 1

    .line 1428
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->markers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 1429
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->InfoWindowClicked(I)V

    return-void
.end method

.method public onInitialize()V
    .locals 0

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4

    .line 1715
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->OnLocationChanged(DD)V

    return-void
.end method

.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 4

    .line 1519
    const-string v0, "NiotronGoogleMaps"

    const-string v1, "receive google maps\'s onMapClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->OnMapClick(DD)V

    return-void
.end method

.method public onMapLongClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 4

    .line 1498
    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->OnMapLongClick(DD)V

    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 2

    .line 274
    const-string v0, "NiotronGoogleMaps"

    const-string v1, "Yes, we have a google map..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 275
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->isMapReady:Z

    .line 276
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 277
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->setUpMap()V

    return-void
.end method

.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 7

    .line 1436
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->markers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1437
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    .line 1438
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-wide v3, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v5, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->OnMarkerClick(IDD)V

    const/4 p1, 0x0

    return p1
.end method

.method public onMarkerDrag(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 8

    .line 1314
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dragging M:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NiotronGoogleMaps"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->markers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1318
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 1319
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v6, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->OnMarkerDrag(IDD)V

    goto :goto_0

    :cond_0
    move-object v2, p0

    .line 1323
    :goto_0
    iget-object v0, v2, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mCircles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;

    .line 1324
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->getCenterMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->getRadiusMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1325
    :cond_2
    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->onMarkerMoved(Lcom/google/android/gms/maps/model/Marker;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onMarkerDragEnd(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 11

    .line 1334
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->markers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1337
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    .line 1338
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-wide v3, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v5, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object v0, p0

    move-wide v2, v3

    move-wide v4, v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->OnMarkerDragEnd(IDD)V

    .line 1342
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mCircles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;

    .line 1343
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->getCenterMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->getRadiusMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1344
    :cond_2
    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->onMarkerMoved(Lcom/google/android/gms/maps/model/Marker;)Z

    .line 1346
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->circles:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1347
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->getCenterMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    .line 1348
    iget-wide v4, v3, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v6, v3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->getRadius()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    move-object v0, p0

    move v1, v2

    move-wide v2, v4

    move-wide v4, v6

    move-wide v6, v9

    invoke-virtual/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->FinishedDraggingCircle(IDDD)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onMarkerDragStart(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 8

    .line 1357
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->markers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1359
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 1360
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v6, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->OnMarkerDragStart(IDD)V

    goto :goto_0

    :cond_0
    move-object v2, p0

    .line 1364
    :goto_0
    iget-object v0, v2, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mCircles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;

    .line 1365
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->getCenterMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->getRadiusMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1366
    :cond_2
    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->onMarkerMoved(Lcom/google/android/gms/maps/model/Marker;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1706
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 1707
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_0
    const/4 v0, 0x0

    .line 1709
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->isRunning:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 635
    const-string v0, "NiotronGoogleMaps"

    const-string v1, "in onResume...Google Map redraw"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->myLocationEnabled:Z

    if-eqz v0, :cond_0

    .line 638
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->setUpLocationClientIfNeeded()V

    .line 639
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 641
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->setUpMapIfNeeded()V

    const/4 v0, 0x1

    .line 643
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->isRunning:Z

    return-void
.end method
