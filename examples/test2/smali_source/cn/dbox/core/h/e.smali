.class public Lcn/dbox/core/h/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final A:Ljava/lang/String; = "d[coord_acc]"

.field protected static final B:Ljava/lang/String; = "d[coord_status]"

.field protected static final C:Ljava/lang/String; = "d[coord_timestamp]"

.field protected static final D:Ljava/lang/String; = "dma"

.field protected static final E:Ljava/lang/String; = "areacode"

.field protected static final F:Ljava/lang/String; = "cellid"

.field protected static final G:Ljava/lang/String; = "language"

.field protected static final H:Ljava/lang/String; = "odin1"

.field protected static final I:Ljava/lang/String; = "locaccmeters"

.field protected static final J:Ljava/lang/String; = "ama"

.field protected static final K:Ljava/lang/String; = "ssid"

.field protected static final L:Ljava/lang/String; = "scan"

.field protected static final M:Ljava/lang/String; = "istab"

.field protected static final N:Ljava/lang/String; = "aaid"

.field private static O:Lcn/dbox/core/h/d; = null

.field private static P:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static Q:Ljava/lang/String; = null

.field private static R:I = 0x0

.field private static S:I = 0x0

.field private static T:Ljava/lang/String; = null

.field private static U:Ljava/lang/String; = null

.field private static final V:Ljava/lang/String; = "sdk"

.field protected static final a:Ljava/lang/String; = "pb[identifier]"

.field protected static final b:Ljava/lang/String; = "vc"

.field protected static final c:Ljava/lang/String; = "vn"

.field protected static final d:Ljava/lang/String; = "appname"

.field protected static final e:Ljava/lang/String; = "useragent"

.field protected static final f:Ljava/lang/String; = "ua"

.field protected static final g:Ljava/lang/String; = "install"

.field protected static final h:Ljava/lang/String; = "idv"

.field protected static final i:Ljava/lang/String; = "imei"

.field protected static final j:Ljava/lang/String; = "andoidid"

.field protected static final k:Ljava/lang/String; = "osv"

.field protected static final l:Ljava/lang/String; = "devicemodel"

.field protected static final m:Ljava/lang/String; = "network"

.field protected static final n:Ljava/lang/String; = "networkavailable"

.field protected static final o:Ljava/lang/String; = "ip"

.field protected static final p:Ljava/lang/String; = "timezone"

.field protected static final q:Ljava/lang/String; = "carrier"

.field protected static final r:Ljava/lang/String; = "orientation"

.field protected static final s:Ljava/lang/String; = "isemulator"

.field protected static final t:Ljava/lang/String; = "rsd"

.field protected static final u:Ljava/lang/String; = "csd"

.field protected static final v:Ljava/lang/String; = "rsw"

.field protected static final w:Ljava/lang/String; = "rsh"

.field protected static final x:Ljava/lang/String; = "csw"

.field protected static final y:Ljava/lang/String; = "csh"

.field protected static final z:Ljava/lang/String; = "d[coord]"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16
    new-instance v0, Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/core/h/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dbox/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/dbox/core/h/e;->O:Lcn/dbox/core/h/d;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 575
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "areacode"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 576
    const-string v0, ""

    .line 578
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0}, Lcn/dbox/core/h/b;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static B(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 606
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "ama"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 607
    const-string v0, ""

    .line 609
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0}, Lcn/dbox/core/h/b;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static C(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 620
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "ssid"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 621
    const-string v0, ""

    .line 623
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0}, Lcn/dbox/core/h/b;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static D(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 627
    const-string v0, ""

    .line 628
    sget-object v1, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v2, "scan"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 629
    invoke-static {p0}, Lcn/dbox/core/h/b;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 631
    :cond_10
    return-object v0
.end method

.method public static E(Landroid/content/Context;)[Ljava/lang/String;
    .registers 4

    .prologue
    .line 641
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "areacode"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "cellid"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 642
    :cond_14
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "-1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "-1"

    aput-object v2, v0, v1

    .line 645
    :goto_2b
    return-object v0

    :cond_2c
    invoke-static {p0}, Lcn/dbox/core/h/b;->B(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_2b
.end method

.method public static F(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 654
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "aaid"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 655
    const-string v0, ""

    .line 658
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0}, Lcn/dbox/core/h/b;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static G(Landroid/content/Context;)Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 664
    const-string v0, "android.permission.VIBRATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_d

    move v0, v1

    .line 682
    :goto_c
    return v0

    .line 668
    :cond_d
    const/16 v0, 0xb

    invoke-static {v0, v2}, Lcn/dbox/core/h/b;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 670
    :try_start_15
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 671
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 672
    const-string v3, "hasVibrator"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 673
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 674
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "false"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_3e} :catch_43

    move-result v0

    if-eqz v0, :cond_50

    move v0, v1

    .line 675
    goto :goto_c

    .line 677
    :catch_43
    move-exception v0

    .line 678
    sget-object v1, Lcn/dbox/core/h/e;->O:Lcn/dbox/core/h/d;

    const-string v3, "Android version of the device is less than 3.0, the interface is no mapping"

    invoke-virtual {v1, v3}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 679
    sget-object v1, Lcn/dbox/core/h/e;->O:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    :cond_50
    move v0, v2

    .line 682
    goto :goto_c
.end method

.method private static H(Landroid/content/Context;)Z
    .registers 4

    .prologue
    .line 260
    invoke-static {p0}, Lcn/dbox/core/h/e;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 262
    if-nez v0, :cond_8

    .line 263
    const/4 v0, 0x1

    .line 267
    :goto_7
    return v0

    .line 265
    :cond_8
    const-string v1, "0"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7
.end method

.method private static I(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 272
    sget-object v0, Lcn/dbox/core/h/e;->O:Lcn/dbox/core/h/d;

    const-string v1, "Start to generate device id"

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 273
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 275
    :try_start_c
    invoke-static {p0}, Lcn/dbox/core/h/e;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_4e

    .line 277
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    :goto_15
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    const-string v0, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 285
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_24
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_24} :catch_54
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_24} :catch_62

    .line 294
    :goto_24
    invoke-static {p0}, Lcn/dbox/core/h/e;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_69

    .line 296
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    :goto_2d
    sget-object v0, Lcn/dbox/core/h/e;->O:Lcn/dbox/core/h/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generated device id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 279
    :cond_4e
    :try_start_4e
    const-string v0, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_53
    .catch Ljava/lang/SecurityException; {:try_start_4e .. :try_end_53} :catch_54
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_53} :catch_62

    goto :goto_15

    .line 286
    :catch_54
    move-exception v0

    .line 287
    sget-object v2, Lcn/dbox/core/h/e;->O:Lcn/dbox/core/h/d;

    invoke-virtual {v2, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    .line 288
    sget-object v0, Lcn/dbox/core/h/e;->O:Lcn/dbox/core/h/d;

    const-string v2, "you must set READ_PHONE_STATE permisson in AndroidManifest.xml"

    invoke-virtual {v0, v2}, Lcn/dbox/core/h/d;->e(Ljava/lang/String;)V

    goto :goto_24

    .line 290
    :catch_62
    move-exception v0

    .line 291
    sget-object v2, Lcn/dbox/core/h/e;->O:Lcn/dbox/core/h/d;

    invoke-virtual {v2, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_24

    .line 298
    :cond_69
    sget-object v0, Lcn/dbox/core/h/e;->O:Lcn/dbox/core/h/d;

    const-string v2, "Android ID is null, use -1 instead"

    invoke-virtual {v0, v2}, Lcn/dbox/core/h/d;->a(Ljava/lang/String;)V

    .line 299
    const-string v0, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2d
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 91
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "pb[identifier]"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 92
    const-string v0, ""

    .line 95
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0}, Lcn/dbox/core/h/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static a()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static a(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    if-eqz p0, :cond_1c

    .line 79
    sget-object v0, Lcn/dbox/core/h/e;->O:Lcn/dbox/core/h/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9700\u8981\u5173\u95ed\u7684\u5b57\u6bb5: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 80
    sput-object p0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    .line 83
    :cond_1c
    return-void
.end method

.method public static a(IZ)Z
    .registers 3

    .prologue
    .line 535
    invoke-static {p0, p1}, Lcn/dbox/core/h/b;->a(IZ)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 210
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "install"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 211
    const/4 v0, 0x0

    .line 213
    :goto_b
    return v0

    :cond_c
    invoke-static {p0, p1}, Lcn/dbox/core/h/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_b
.end method

.method public static b(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 102
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "vc"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 103
    const/4 v0, -0x1

    .line 106
    :goto_b
    return v0

    :cond_c
    invoke-static {p0}, Lcn/dbox/core/h/b;->b(Landroid/content/Context;)I

    move-result v0

    goto :goto_b
.end method

.method public static b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 369
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "ip"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 370
    const-string v0, ""

    .line 373
    :goto_c
    return-object v0

    :cond_d
    invoke-static {}, Lcn/dbox/core/h/b;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 379
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "timezone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 380
    const-string v0, ""

    .line 382
    :goto_c
    return-object v0

    :cond_d
    invoke-static {}, Lcn/dbox/core/h/b;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 113
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "vn"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 114
    const-string v0, ""

    .line 117
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0}, Lcn/dbox/core/h/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static d()I
    .registers 2

    .prologue
    .line 501
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "d[coord_acc]"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 502
    const/4 v0, -0x1

    .line 504
    :goto_b
    return v0

    :cond_c
    invoke-static {}, Lcn/dbox/core/h/b;->c()I

    move-result v0

    goto :goto_b
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 124
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "appname"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 125
    const-string v0, ""

    .line 128
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0}, Lcn/dbox/core/h/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static e()I
    .registers 2

    .prologue
    .line 508
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "d[coord_status]"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 509
    const/4 v0, -0x1

    .line 511
    :goto_b
    return v0

    :cond_c
    invoke-static {}, Lcn/dbox/core/h/b;->d()I

    move-result v0

    goto :goto_b
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 134
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "useragent"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 135
    const-string v0, ""

    .line 138
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0}, Lcn/dbox/core/h/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static f()J
    .registers 2

    .prologue
    .line 516
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "d[coord_timestamp]"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 517
    const-wide/16 v0, -0x1

    .line 519
    :goto_c
    return-wide v0

    :cond_d
    invoke-static {}, Lcn/dbox/core/h/b;->e()J

    move-result-wide v0

    goto :goto_c
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 145
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "ua"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 146
    const-string v0, ""

    .line 198
    :goto_c
    return-object v0

    .line 149
    :cond_d
    const-string v0, "_"

    .line 150
    sget-object v0, Lcn/dbox/core/h/e;->Q:Ljava/lang/String;

    if-nez v0, :cond_a4

    .line 151
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 154
    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a8

    .line 162
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, ","

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    :goto_3c
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_59

    .line 175
    const-string v2, ","

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    :cond_59
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    invoke-static {p0}, Lcn/dbox/core/h/e;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 182
    if-eqz v1, :cond_6f

    .line 183
    const-string v2, ","

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    :cond_6f
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/dbox/core/h/e;->Q:Ljava/lang/String;

    .line 194
    sget-object v0, Lcn/dbox/core/h/e;->O:Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/core/h/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserAgent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/dbox/core/h/e;->Q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/dbox/core/h/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    :cond_a4
    sget-object v0, Lcn/dbox/core/h/e;->Q:Ljava/lang/String;

    goto/16 :goto_c

    .line 165
    :cond_a8
    const-string v1, "1.5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3c
.end method

.method public static g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 585
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "language"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 586
    const-string v0, ""

    .line 588
    :goto_c
    return-object v0

    :cond_d
    invoke-static {}, Lcn/dbox/core/h/b;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static g(Landroid/content/Context;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "install"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    :goto_f
    return-object v0

    :cond_10
    invoke-static {p0}, Lcn/dbox/core/h/b;->f(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    goto :goto_f
.end method

.method public static h()I
    .registers 2

    .prologue
    .line 593
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "locaccmeters"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 594
    const/4 v0, -0x1

    .line 596
    :goto_b
    return v0

    :cond_c
    invoke-static {}, Lcn/dbox/core/h/b;->g()I

    move-result v0

    goto :goto_b
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 231
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "idv"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 232
    const-string v0, ""

    .line 245
    :goto_c
    return-object v0

    .line 235
    :cond_d
    sget-object v0, Lcn/dbox/core/h/e;->U:Ljava/lang/String;

    if-nez v0, :cond_22

    .line 236
    invoke-static {p0}, Lcn/dbox/core/h/e;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 237
    sget-object v0, Lcn/dbox/core/h/e;->O:Lcn/dbox/core/h/d;

    const-string v1, "Use emulator id"

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 238
    const-string v0, "-1,-1,emulator"

    sput-object v0, Lcn/dbox/core/h/e;->U:Ljava/lang/String;

    .line 245
    :cond_22
    :goto_22
    sget-object v0, Lcn/dbox/core/h/e;->U:Ljava/lang/String;

    goto :goto_c

    .line 240
    :cond_25
    sget-object v0, Lcn/dbox/core/h/e;->O:Lcn/dbox/core/h/d;

    const-string v1, "Generate device id"

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 241
    invoke-static {p0}, Lcn/dbox/core/h/e;->I(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/dbox/core/h/e;->U:Ljava/lang/String;

    goto :goto_22
.end method

.method public static i(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 249
    sget-object v1, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v2, "isemulator"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 255
    :cond_b
    :goto_b
    return v0

    .line 252
    :cond_c
    sget-object v1, Lcn/dbox/core/h/e;->T:Ljava/lang/String;

    if-nez v1, :cond_16

    .line 253
    invoke-static {p0}, Lcn/dbox/core/h/e;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/dbox/core/h/e;->T:Ljava/lang/String;

    .line 255
    :cond_16
    sget-object v1, Lcn/dbox/core/h/e;->T:Ljava/lang/String;

    if-nez v1, :cond_b

    invoke-static {p0}, Lcn/dbox/core/h/e;->H(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "sdk"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 306
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "imei"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 307
    const-string v0, "-1"

    .line 309
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0}, Lcn/dbox/core/h/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 313
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "andoidid"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 314
    const-string v0, "-1"

    .line 316
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0}, Lcn/dbox/core/h/b;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 326
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "osv"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 327
    const-string v0, ""

    .line 329
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0}, Lcn/dbox/core/h/b;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 339
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "devicemodel"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 340
    const-string v0, ""

    .line 342
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0}, Lcn/dbox/core/h/b;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static n(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 347
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 348
    const-string v0, ""

    .line 351
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0}, Lcn/dbox/core/h/b;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static o(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 359
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "networkavailable"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 360
    const/4 v0, 0x0

    .line 363
    :goto_b
    return v0

    :cond_c
    invoke-static {p0}, Lcn/dbox/core/h/b;->l(Landroid/content/Context;)Z

    move-result v0

    goto :goto_b
.end method

.method public static p(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 392
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "carrier"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 393
    const-string v0, ""

    .line 395
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0}, Lcn/dbox/core/h/b;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static q(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 406
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "orientation"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 407
    const-string v0, ""

    .line 409
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0}, Lcn/dbox/core/h/b;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static r(Landroid/content/Context;)F
    .registers 3

    .prologue
    .line 421
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "rsd"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 422
    const/high16 v0, -0x40800000

    .line 424
    :goto_c
    return v0

    :cond_d
    invoke-static {p0}, Lcn/dbox/core/h/b;->o(Landroid/content/Context;)F

    move-result v0

    goto :goto_c
.end method

.method public static s(Landroid/content/Context;)F
    .registers 3

    .prologue
    .line 434
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "csd"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 435
    const/high16 v0, -0x40800000

    .line 437
    :goto_c
    return v0

    :cond_d
    invoke-static {p0}, Lcn/dbox/core/h/b;->p(Landroid/content/Context;)F

    move-result v0

    goto :goto_c
.end method

.method public static t(Landroid/content/Context;)I
    .registers 4

    .prologue
    .line 450
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "rsw"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 451
    const/4 v0, -0x1

    .line 456
    :goto_b
    return v0

    .line 453
    :cond_c
    invoke-static {p0}, Lcn/dbox/core/h/e;->v(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0}, Lcn/dbox/core/h/e;->r(Landroid/content/Context;)F

    move-result v1

    invoke-static {p0}, Lcn/dbox/core/h/e;->s(Landroid/content/Context;)F

    move-result v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcn/dbox/core/h/e;->R:I

    .line 456
    sget v0, Lcn/dbox/core/h/e;->R:I

    goto :goto_b
.end method

.method public static u(Landroid/content/Context;)I
    .registers 4

    .prologue
    .line 460
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "rsh"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 461
    const/4 v0, -0x1

    .line 466
    :goto_b
    return v0

    .line 463
    :cond_c
    invoke-static {p0}, Lcn/dbox/core/h/e;->w(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0}, Lcn/dbox/core/h/e;->r(Landroid/content/Context;)F

    move-result v1

    invoke-static {p0}, Lcn/dbox/core/h/e;->s(Landroid/content/Context;)F

    move-result v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcn/dbox/core/h/e;->S:I

    .line 466
    sget v0, Lcn/dbox/core/h/e;->S:I

    goto :goto_b
.end method

.method public static v(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 470
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "csw"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 471
    const/4 v0, -0x1

    .line 473
    :goto_b
    return v0

    :cond_c
    invoke-static {p0}, Lcn/dbox/core/h/b;->q(Landroid/content/Context;)I

    move-result v0

    goto :goto_b
.end method

.method public static w(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 477
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "csh"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 478
    const/4 v0, -0x1

    .line 480
    :goto_b
    return v0

    :cond_c
    invoke-static {p0}, Lcn/dbox/core/h/b;->r(Landroid/content/Context;)I

    move-result v0

    goto :goto_b
.end method

.method public static x(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 493
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "d[coord]"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 494
    const-string v0, ""

    .line 496
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0}, Lcn/dbox/core/h/b;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static y(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 545
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "dma"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 546
    const-string v0, ""

    .line 548
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0}, Lcn/dbox/core/h/b;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static z(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 554
    sget-object v0, Lcn/dbox/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "odin1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 555
    const-string v0, ""

    .line 557
    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/dbox/core/g/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method
