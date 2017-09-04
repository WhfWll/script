.class public Lcn/domob/android/i/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/i/e$a;
    }
.end annotation


# static fields
.field private static a:Lcn/domob/android/i/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 20
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/i/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/i/e;->a:Lcn/domob/android/i/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public static a()I
    .registers 1

    .prologue
    .line 44
    invoke-static {}, Lcn/domob/android/i/e$a;->a()Lcn/domob/android/i/e$a;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/i/e$a;->a(Lcn/domob/android/i/e$a;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 29
    invoke-static {}, Lcn/domob/android/i/e$a;->a()Lcn/domob/android/i/e$a;

    move-result-object v0

    .line 30
    invoke-static {v0, p0}, Lcn/domob/android/i/e$a;->a(Lcn/domob/android/i/e$a;Landroid/content/Context;)Landroid/location/Location;

    move-result-object v1

    .line 31
    if-eqz v1, :cond_f

    .line 32
    invoke-static {v0, v1}, Lcn/domob/android/i/e$a;->a(Lcn/domob/android/i/e$a;Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    .line 35
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static b()I
    .registers 1

    .prologue
    .line 53
    invoke-static {}, Lcn/domob/android/i/e$a;->a()Lcn/domob/android/i/e$a;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/i/e$a;->b(Lcn/domob/android/i/e$a;)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)[Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 501
    sget-object v1, Lcn/domob/android/i/e;->a:Lcn/domob/android/i/f;

    const-class v2, Lcn/domob/android/i/c;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "getLocationBasedService"

    invoke-virtual {v1, v2, v4}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/String;

    const-string v1, "-1"

    aput-object v1, v4, v6

    const-string v1, "-1"

    aput-object v1, v4, v7

    const-string v1, "-1"

    aput-object v1, v4, v8

    const-string v1, "-1"

    aput-object v1, v4, v5

    .line 503
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v1}, Lcn/domob/android/i/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3e

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Lcn/domob/android/i/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 505
    sget-object v1, Lcn/domob/android/i/e;->a:Lcn/domob/android/i/f;

    const-string v2, "No permission to access locationBaseInfo"

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->d(Ljava/lang/String;)V

    move-object v1, v4

    .line 550
    :goto_3d
    return-object v1

    .line 509
    :cond_3e
    :try_start_3e
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 510
    if-eqz v1, :cond_dd

    .line 511
    sget-object v2, Lcn/domob/android/i/e;->a:Lcn/domob/android/i/f;

    const-class v5, Lcn/domob/android/i/c;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tManager is not null"

    invoke-virtual {v2, v5, v6}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    sget-object v2, Lcn/domob/android/i/e;->a:Lcn/domob/android/i/f;

    const-class v5, Lcn/domob/android/i/c;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Network Operator: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 514
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    .line 515
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    .line 516
    if-eqz v2, :cond_9a

    .line 517
    packed-switch v5, :pswitch_data_10e

    .line 534
    sget-object v2, Lcn/domob/android/i/e;->a:Lcn/domob/android/i/f;

    const-string v5, "\u65e0\u6cd5\u83b7\u53d6\u57fa\u7ad9\u4fe1\u606f"

    invoke-virtual {v2, v5}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    :cond_8b
    move v2, v3

    .line 536
    :goto_8c
    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    .line 537
    const/4 v3, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    .line 539
    :cond_9a
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_dd

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_dd

    .line 540
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 541
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    const/4 v5, 0x5

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 542
    const/4 v3, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    .line 543
    const/4 v2, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    :cond_dd
    :goto_dd
    move-object v1, v4

    .line 550
    goto/16 :goto_3d

    .line 519
    :pswitch_e0
    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    .line 520
    if-eqz v2, :cond_8b

    .line 521
    move-object v0, v2

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    .line 522
    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    goto :goto_8c

    .line 526
    :pswitch_f3
    check-cast v2, Landroid/telephony/cdma/CdmaCellLocation;

    .line 527
    if-eqz v2, :cond_8b

    .line 528
    move-object v0, v2

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v3

    .line 529
    check-cast v2, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_104} :catch_106

    move-result v2

    goto :goto_8c

    .line 546
    :catch_106
    move-exception v1

    .line 547
    sget-object v2, Lcn/domob/android/i/e;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_dd

    .line 517
    nop

    :pswitch_data_10e
    .packed-switch 0x1
        :pswitch_e0
        :pswitch_f3
    .end packed-switch
.end method

.method public static c()I
    .registers 1

    .prologue
    .line 62
    invoke-static {}, Lcn/domob/android/i/e$a;->a()Lcn/domob/android/i/e$a;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/i/e$a;->c(Lcn/domob/android/i/e$a;)I

    move-result v0

    return v0
.end method

.method public static d()J
    .registers 2

    .prologue
    .line 71
    invoke-static {}, Lcn/domob/android/i/e$a;->a()Lcn/domob/android/i/e$a;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/i/e$a;->d(Lcn/domob/android/i/e$a;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic e()Lcn/domob/android/i/f;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcn/domob/android/i/e;->a:Lcn/domob/android/i/f;

    return-object v0
.end method
