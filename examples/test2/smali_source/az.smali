.class public final Laz;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/location/LocationListener;

.field a:Landroid/location/LocationManager;

.field a:Lbd;

.field a:Ljava/util/Timer;

.field a:Z

.field b:Landroid/location/LocationListener;

.field b:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Laz;->a:Z

    iput-boolean v0, p0, Laz;->b:Z

    new-instance v0, Lba;

    invoke-direct {v0, p0}, Lba;-><init>(Laz;)V

    iput-object v0, p0, Laz;->a:Landroid/location/LocationListener;

    new-instance v0, Lbb;

    invoke-direct {v0, p0}, Lbb;-><init>(Laz;)V

    iput-object v0, p0, Laz;->b:Landroid/location/LocationListener;

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .registers 9

    const/4 v1, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    new-array v3, v0, [B

    array-length v0, p0

    invoke-static {p0, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v3

    div-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x2

    new-array v4, v0, [B

    move v0, v1

    move v2, v1

    :goto_17
    array-length v5, p0

    if-ge v2, v5, :cond_5d

    aget-byte v5, v3, v2

    ushr-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3f

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, v3, v6

    ushr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-byte v7, v3, v2

    shl-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v5, v0, 0x2

    add-int/lit8 v6, v2, 0x2

    aget-byte v6, v3, v6

    ushr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x3

    add-int/lit8 v7, v2, 0x1

    aget-byte v7, v3, v7

    shl-int/lit8 v7, v7, 0x2

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v5, v0, 0x3

    add-int/lit8 v6, v2, 0x2

    aget-byte v6, v3, v6

    and-int/lit8 v6, v6, 0x3f

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v0, v0, 0x4

    goto :goto_17

    :cond_5d
    :goto_5d
    array-length v0, v4

    if-ge v1, v0, :cond_a0

    aget-byte v0, v4, v1

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_70

    aget-byte v0, v4, v1

    add-int/lit8 v0, v0, 0x41

    int-to-byte v0, v0

    aput-byte v0, v4, v1

    :goto_6d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    :cond_70
    aget-byte v0, v4, v1

    const/16 v2, 0x34

    if-ge v0, v2, :cond_80

    aget-byte v0, v4, v1

    add-int/lit8 v0, v0, 0x61

    add-int/lit8 v0, v0, -0x1a

    int-to-byte v0, v0

    aput-byte v0, v4, v1

    goto :goto_6d

    :cond_80
    aget-byte v0, v4, v1

    const/16 v2, 0x3e

    if-ge v0, v2, :cond_90

    aget-byte v0, v4, v1

    add-int/lit8 v0, v0, 0x30

    add-int/lit8 v0, v0, -0x34

    int-to-byte v0, v0

    aput-byte v0, v4, v1

    goto :goto_6d

    :cond_90
    aget-byte v0, v4, v1

    const/16 v2, 0x3f

    if-ge v0, v2, :cond_9b

    const/16 v0, 0x2b

    aput-byte v0, v4, v1

    goto :goto_6d

    :cond_9b
    const/16 v0, 0x2f

    aput-byte v0, v4, v1

    goto :goto_6d

    :cond_a0
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    :goto_a3
    array-length v1, p0

    shl-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_b1

    const/16 v1, 0x3d

    aput-byte v1, v4, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_a3

    :cond_b1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_4
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 8

    const/16 v6, 0x3d

    const/4 v1, 0x0

    if-nez p0, :cond_7

    const/4 v0, 0x0

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v0, v3

    :goto_c
    add-int/lit8 v2, v0, -0x1

    aget-byte v2, v3, v2

    if-ne v2, v6, :cond_15

    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_15
    array-length v2, v3

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v0, v2

    new-array v2, v0, [B

    move v0, v1

    :goto_1c
    array-length v4, v3

    if-ge v0, v4, :cond_7a

    aget-byte v4, v3, v0

    if-ne v4, v6, :cond_28

    aput-byte v1, v3, v0

    :cond_25
    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_28
    aget-byte v4, v3, v0

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_33

    const/16 v4, 0x3f

    aput-byte v4, v3, v0

    goto :goto_25

    :cond_33
    aget-byte v4, v3, v0

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_3e

    const/16 v4, 0x3e

    aput-byte v4, v3, v0

    goto :goto_25

    :cond_3e
    aget-byte v4, v3, v0

    const/16 v5, 0x30

    if-lt v4, v5, :cond_52

    aget-byte v4, v3, v0

    const/16 v5, 0x39

    if-gt v4, v5, :cond_52

    aget-byte v4, v3, v0

    add-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    goto :goto_25

    :cond_52
    aget-byte v4, v3, v0

    const/16 v5, 0x61

    if-lt v4, v5, :cond_66

    aget-byte v4, v3, v0

    const/16 v5, 0x7a

    if-gt v4, v5, :cond_66

    aget-byte v4, v3, v0

    add-int/lit8 v4, v4, -0x47

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    goto :goto_25

    :cond_66
    aget-byte v4, v3, v0

    const/16 v5, 0x41

    if-lt v4, v5, :cond_25

    aget-byte v4, v3, v0

    const/16 v5, 0x5a

    if-gt v4, v5, :cond_25

    aget-byte v4, v3, v0

    add-int/lit8 v4, v4, -0x41

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    goto :goto_25

    :cond_7a
    move v0, v1

    :goto_7b
    array-length v4, v2

    add-int/lit8 v4, v4, -0x2

    if-ge v1, v4, :cond_c1

    aget-byte v4, v3, v0

    shl-int/lit8 v4, v4, 0x2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, v3, v5

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x3

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, v3, v5

    shl-int/lit8 v5, v5, 0x4

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v0, 0x2

    aget-byte v6, v3, v6

    ushr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v1, 0x2

    add-int/lit8 v5, v0, 0x2

    aget-byte v5, v3, v5

    shl-int/lit8 v5, v5, 0x6

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v0, 0x3

    aget-byte v6, v3, v6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v1, 0x3

    goto :goto_7b

    :cond_c1
    array-length v4, v2

    if-ge v1, v4, :cond_d6

    aget-byte v4, v3, v0

    shl-int/lit8 v4, v4, 0x2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, v3, v5

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x3

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    :cond_d6
    add-int/lit8 v1, v1, 0x1

    array-length v4, v2

    if-ge v1, v4, :cond_ef

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v3, v4

    shl-int/lit8 v4, v4, 0x4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v0, v0, 0x2

    aget-byte v0, v3, v0

    ushr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0xf

    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    :cond_ef
    move-object v0, v2

    goto/16 :goto_6
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lbd;)Z
    .registers 10

    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    iput-object p2, p0, Laz;->a:Lbd;

    iget-object v0, p0, Laz;->a:Landroid/location/LocationManager;

    if-nez v0, :cond_14

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Laz;->a:Landroid/location/LocationManager;

    :cond_14
    :try_start_14
    iget-object v0, p0, Laz;->a:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Laz;->a:Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1e} :catch_89

    :goto_1e
    :try_start_1e
    iget-object v0, p0, Laz;->a:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Laz;->b:Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_28} :catch_87

    :goto_28
    iget-boolean v0, p0, Laz;->a:Z

    if-nez v0, :cond_58

    iget-boolean v0, p0, Laz;->b:Z

    if-nez v0, :cond_58

    :try_start_30
    iget-object v0, p0, Laz;->a:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_42

    iget-object v0, p0, Laz;->a:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    :cond_42
    if-eqz v0, :cond_56

    invoke-virtual {p2, v0}, Lbd;->a(Landroid/location/Location;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_47} :catch_49

    move v0, v6

    :goto_48
    return v0

    :catch_49
    move-exception v0

    const-string v1, "DeviceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_56
    const/4 v0, 0x0

    goto :goto_48

    :cond_58
    iget-boolean v0, p0, Laz;->a:Z

    if-eqz v0, :cond_65

    iget-object v0, p0, Laz;->a:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Laz;->a:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_65
    iget-boolean v0, p0, Laz;->b:Z

    if-eqz v0, :cond_72

    iget-object v0, p0, Laz;->a:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Laz;->b:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_72
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Laz;->a:Ljava/util/Timer;

    iget-object v0, p0, Laz;->a:Ljava/util/Timer;

    new-instance v1, Lbc;

    invoke-direct {v1, p0}, Lbc;-><init>(Laz;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    move v0, v6

    goto :goto_48

    :catch_87
    move-exception v0

    goto :goto_28

    :catch_89
    move-exception v0

    goto :goto_1e
.end method
