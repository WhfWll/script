.class Lcn/domob/android/offerwall/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/offerwall/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/offerwall/f$a$b;,
        Lcn/domob/android/offerwall/f$a$c;,
        Lcn/domob/android/offerwall/f$a$a;
    }
.end annotation


# static fields
.field private static a:Lcn/domob/android/offerwall/f$a; = null

.field private static final f:J = 0x927c0L


# instance fields
.field private b:Landroid/location/Location;

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcn/domob/android/offerwall/f$a;

    invoke-direct {v0}, Lcn/domob/android/offerwall/f$a;-><init>()V

    sput-object v0, Lcn/domob/android/offerwall/f$a;->a:Lcn/domob/android/offerwall/f$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcn/domob/android/offerwall/f$a;->c:I

    iput v0, p0, Lcn/domob/android/offerwall/f$a;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/offerwall/f$a;->e:Z

    return-void
.end method

.method static synthetic a(Lcn/domob/android/offerwall/f$a;)I
    .registers 2

    invoke-direct {p0}, Lcn/domob/android/offerwall/f$a;->b()I

    move-result v0

    return v0
.end method

.method private a(Landroid/content/Context;)Landroid/location/Location;
    .registers 12

    const-wide/32 v8, 0x927c0

    const/4 v7, 0x0

    :try_start_4
    iget-boolean v0, p0, Lcn/domob/android/offerwall/f$a;->e:Z

    if-nez v0, :cond_a

    move-object v0, v7

    :goto_9
    return-object v0

    :cond_a
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-eqz v0, :cond_c7

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_da

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    :goto_22
    if-nez v1, :cond_40

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_54

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v2, v2, v8

    if-gez v2, :cond_54

    const/4 v0, 0x2

    iput v0, p0, Lcn/domob/android/offerwall/f$a;->c:I

    iput-object v1, p0, Lcn/domob/android/offerwall/f$a;->b:Landroid/location/Location;

    move-object v0, v1

    goto :goto_9

    :cond_40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v2, v2, v8

    if-gez v2, :cond_54

    const/4 v0, 0x0

    iput v0, p0, Lcn/domob/android/offerwall/f$a;->c:I

    iput-object v1, p0, Lcn/domob/android/offerwall/f$a;->b:Landroid/location/Location;

    move-object v0, v1

    goto :goto_9

    :cond_54
    if-eqz p1, :cond_d4

    iget-object v1, p0, Lcn/domob/android/offerwall/f$a;->b:Landroid/location/Location;

    if-eqz v1, :cond_69

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcn/domob/android/offerwall/f$a;->b:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    add-long/2addr v4, v8

    cmp-long v1, v2, v4

    if-lez v1, :cond_d4

    :cond_69
    monitor-enter p1
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6a} :catch_d0

    :try_start_6a
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_d8

    invoke-static {}, Lcn/domob/android/offerwall/f;->f()Lcn/domob/android/offerwall/m;

    move-result-object v1

    const-string v2, "Trying to get locations from the network."

    invoke-virtual {v1, v2}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/String;)V

    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    :goto_8d
    if-nez v1, :cond_a5

    invoke-static {}, Lcn/domob/android/offerwall/f;->f()Lcn/domob/android/offerwall/m;

    move-result-object v0

    const-class v1, Lcn/domob/android/offerwall/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No location providers are available.  Ads will not be geotargeted."

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcn/domob/android/offerwall/f$a;->d:I

    monitor-exit p1

    move-object v0, v7

    goto/16 :goto_9

    :cond_a5
    invoke-static {}, Lcn/domob/android/offerwall/f;->f()Lcn/domob/android/offerwall/m;

    move-result-object v2

    const-class v3, Lcn/domob/android/offerwall/f;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Location provider setup successfully."

    invoke-virtual {v2, v3, v4}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcn/domob/android/offerwall/f$a$b;

    invoke-direct {v5, p0, v0}, Lcn/domob/android/offerwall/f$a$b;-><init>(Lcn/domob/android/offerwall/f$a;Landroid/location/LocationManager;)V

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    monitor-exit p1
    :try_end_c4
    .catchall {:try_start_6a .. :try_end_c4} :catchall_cd

    :try_start_c4
    invoke-direct {p0, p1}, Lcn/domob/android/offerwall/f$a;->b(Landroid/content/Context;)V

    :cond_c7
    const/4 v0, 0x2

    iput v0, p0, Lcn/domob/android/offerwall/f$a;->d:I
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_ca} :catch_d0

    move-object v0, v7

    goto/16 :goto_9

    :catchall_cd
    move-exception v0

    :try_start_ce
    monitor-exit p1
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_cd

    :try_start_cf
    throw v0

    :catch_d0
    move-exception v0

    move-object v0, v7

    goto/16 :goto_9

    :cond_d4
    iget-object v0, p0, Lcn/domob/android/offerwall/f$a;->b:Landroid/location/Location;
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_d6} :catch_d0

    goto/16 :goto_9

    :cond_d8
    move-object v1, v7

    goto :goto_8d

    :cond_da
    move-object v1, v7

    goto/16 :goto_22
.end method

.method static synthetic a(Lcn/domob/android/offerwall/f$a;Landroid/content/Context;)Landroid/location/Location;
    .registers 3

    invoke-direct {p0, p1}, Lcn/domob/android/offerwall/f$a;->a(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method protected static a()Lcn/domob/android/offerwall/f$a;
    .registers 1

    sget-object v0, Lcn/domob/android/offerwall/f$a;->a:Lcn/domob/android/offerwall/f$a;

    return-object v0
.end method

.method private a(Landroid/location/Location;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_42

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/domob/android/offerwall/f;->f()Lcn/domob/android/offerwall/m;

    move-result-object v1

    const-class v2, Lcn/domob/android/offerwall/f;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User coordinates are "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_42
    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/offerwall/f$a;Landroid/location/Location;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcn/domob/android/offerwall/f$a;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(IIII)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v8, 0x1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "version"

    const-string v2, "1.1.0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "host"

    const-string v2, "maps.google.com"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "request_address"

    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "cell_id"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "location_area_code"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "mobile_country_code"

    invoke-virtual {v2, v3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "mobile_network_code"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "cell_towers"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcn/domob/android/offerwall/f;->f()Lcn/domob/android/offerwall/m;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Location send:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "http://www.google.com/loc/json"

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v3, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_f1

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_96
    if-eqz v0, :cond_a0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_96

    :cond_a0
    if-eqz v2, :cond_f1

    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONTokener;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    if-eqz v0, :cond_f1

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f1

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "latitude"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Landroid/location/Location;

    const-string v5, "jizhan"

    invoke-direct {v4, v5}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setLongitude(D)V

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    invoke-virtual {v4, v2, v3}, Landroid/location/Location;->setTime(J)V

    invoke-direct {p0, v4, v8}, Lcn/domob/android/offerwall/f$a;->a(Landroid/location/Location;I)V

    :cond_f1
    return-void
.end method

.method private a(Landroid/location/Location;I)V
    .registers 3

    iput-object p1, p0, Lcn/domob/android/offerwall/f$a;->b:Landroid/location/Location;

    iput p2, p0, Lcn/domob/android/offerwall/f$a;->c:I

    return-void
.end method

.method static synthetic a(Lcn/domob/android/offerwall/f$a;IIII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcn/domob/android/offerwall/f$a;->a(IIII)V

    return-void
.end method

.method static synthetic a(Lcn/domob/android/offerwall/f$a;Landroid/location/Location;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcn/domob/android/offerwall/f$a;->a(Landroid/location/Location;I)V

    return-void
.end method

.method private b()I
    .registers 4

    iget v0, p0, Lcn/domob/android/offerwall/f$a;->c:I

    packed-switch v0, :pswitch_data_48

    invoke-static {}, Lcn/domob/android/offerwall/f;->f()Lcn/domob/android/offerwall/m;

    move-result-object v0

    const-class v1, Lcn/domob/android/offerwall/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown"

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_14
    iget v0, p0, Lcn/domob/android/offerwall/f$a;->c:I

    return v0

    :pswitch_17
    invoke-static {}, Lcn/domob/android/offerwall/f;->f()Lcn/domob/android/offerwall/m;

    move-result-object v0

    const-class v1, Lcn/domob/android/offerwall/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPS"

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_14

    :pswitch_27
    invoke-static {}, Lcn/domob/android/offerwall/f;->f()Lcn/domob/android/offerwall/m;

    move-result-object v0

    const-class v1, Lcn/domob/android/offerwall/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Base"

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_14

    :pswitch_37
    invoke-static {}, Lcn/domob/android/offerwall/f;->f()Lcn/domob/android/offerwall/m;

    move-result-object v0

    const-class v1, Lcn/domob/android/offerwall/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Wifi"

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_14

    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_17
        :pswitch_27
        :pswitch_37
    .end packed-switch
.end method

.method static synthetic b(Lcn/domob/android/offerwall/f$a;)I
    .registers 2

    invoke-direct {p0}, Lcn/domob/android/offerwall/f$a;->c()I

    move-result v0

    return v0
.end method

.method private b(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/domob/android/offerwall/f$a$1;

    invoke-direct {v1, p0, p1}, Lcn/domob/android/offerwall/f$a$1;-><init>(Lcn/domob/android/offerwall/f$a;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private c()I
    .registers 2

    iget v0, p0, Lcn/domob/android/offerwall/f$a;->d:I

    packed-switch v0, :pswitch_data_8

    :pswitch_5
    iget v0, p0, Lcn/domob/android/offerwall/f$a;->d:I

    return v0

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic c(Lcn/domob/android/offerwall/f$a;)J
    .registers 3

    invoke-direct {p0}, Lcn/domob/android/offerwall/f$a;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method private d()J
    .registers 3

    iget-object v0, p0, Lcn/domob/android/offerwall/f$a;->b:Landroid/location/Location;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcn/domob/android/offerwall/f$a;->b:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_a
.end method
