.class public Lcn/dbox/core/h/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/dbox/core/h/b$a;
    }
.end annotation


# static fields
.field private static a:Lcn/dbox/core/h/d; = null

.field private static b:Ljava/lang/String; = null

.field private static c:I = 0x0

.field private static d:Ljava/lang/String; = null

.field private static e:Ljava/lang/String; = null

.field private static f:Ljava/lang/String; = null

.field private static g:Ljava/lang/String; = null

.field private static h:Ljava/lang/String; = null

.field private static i:Ljava/lang/String; = null

.field private static j:Ljava/lang/String; = null

.field private static k:Ljava/lang/String; = null

.field private static l:Ljava/lang/String; = null

.field private static m:F = 0.0f

.field private static n:F = 0.0f

.field private static o:I = 0x0

.field private static p:I = 0x0

.field private static q:Ljava/lang/String; = null

.field private static final r:Ljava/lang/String; = "unknown"

.field private static final s:Ljava/lang/String; = "gprs"

.field private static final t:Ljava/lang/String; = "wifi"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 54
    new-instance v0, Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/core/h/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dbox/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/dbox/core/h/b;->a:Lcn/dbox/core/h/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 634
    return-void
.end method

.method protected static A(Landroid/content/Context;)Ljava/lang/String;
    .registers 11

    .prologue
    const/16 v1, 0x14

    const/16 v9, 0x10

    const/4 v3, 0x0

    .line 966
    const-string v2, ""

    .line 968
    :try_start_7
    invoke-static {p0}, Lcn/dbox/core/h/f;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-static {p0}, Lcn/dbox/core/h/f;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 969
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 970
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v5

    .line 971
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Landroid/net/wifi/ScanResult;

    move v4, v3

    .line 972
    :goto_26
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_38

    .line 973
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    aput-object v0, v6, v4

    .line 972
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_26

    .line 976
    :cond_38
    new-instance v0, Lcn/dbox/core/h/b$1;

    invoke-direct {v0}, Lcn/dbox/core/h/b$1;-><init>()V

    invoke-static {v6, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 990
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 992
    array-length v0, v6

    if-gt v0, v1, :cond_79

    array-length v0, v6

    .line 993
    :goto_49
    if-ge v3, v0, :cond_8a

    .line 994
    aget-object v1, v6, v3

    .line 995
    iget-object v5, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 996
    iget-object v1, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 998
    invoke-static {v5}, Lcn/dbox/core/h/f;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_75

    .line 999
    invoke-static {v5}, Lcn/dbox/core/h/f;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 1000
    const-string v1, "#"

    .line 1003
    :cond_5f
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v9, :cond_6c

    .line 1004
    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_6b} :catch_82

    move-result-object v1

    .line 1008
    :cond_6c
    :try_start_6c
    const-string v7, "UTF-8"

    invoke-static {v1, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_71
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6c .. :try_end_71} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_71} :catch_82

    move-result-object v1

    .line 1013
    :try_start_72
    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 993
    :cond_75
    :goto_75
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_49

    :cond_79
    move v0, v1

    .line 992
    goto :goto_49

    .line 1009
    :catch_7b
    move-exception v1

    .line 1010
    sget-object v5, Lcn/dbox/core/h/b;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v5, v1}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_81} :catch_82

    goto :goto_75

    .line 1019
    :catch_82
    move-exception v0

    .line 1020
    sget-object v1, Lcn/dbox/core/h/b;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    :cond_88
    move-object v0, v2

    .line 1023
    :goto_89
    return-object v0

    .line 1017
    :cond_8a
    :try_start_8a
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8d} :catch_82

    move-result-object v0

    goto :goto_89
.end method

.method protected static B(Landroid/content/Context;)[Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 1032
    sget-object v1, Lcn/dbox/core/h/b;->a:Lcn/dbox/core/h/d;

    const-class v2, Lcn/dbox/core/h/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "getLocationBasedService"

    invoke-virtual {v1, v2, v4}, Lcn/dbox/core/h/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1033
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

    .line 1034
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v1}, Lcn/dbox/core/h/f;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3e

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Lcn/dbox/core/h/f;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 1036
    sget-object v1, Lcn/dbox/core/h/b;->a:Lcn/dbox/core/h/d;

    const-string v2, "No permission to access locationBaseInfo"

    invoke-virtual {v1, v2}, Lcn/dbox/core/h/d;->d(Ljava/lang/String;)V

    move-object v1, v4

    .line 1081
    :goto_3d
    return-object v1

    .line 1040
    :cond_3e
    :try_start_3e
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1041
    if-eqz v1, :cond_dd

    .line 1042
    sget-object v2, Lcn/dbox/core/h/b;->a:Lcn/dbox/core/h/d;

    const-class v5, Lcn/dbox/core/h/b;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tManager is not null"

    invoke-virtual {v2, v5, v6}, Lcn/dbox/core/h/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1043
    sget-object v2, Lcn/dbox/core/h/b;->a:Lcn/dbox/core/h/d;

    const-class v5, Lcn/dbox/core/h/b;

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

    invoke-virtual {v2, v5, v6}, Lcn/dbox/core/h/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1045
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    .line 1046
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    .line 1047
    if-eqz v2, :cond_9a

    .line 1048
    packed-switch v5, :pswitch_data_10e

    .line 1065
    sget-object v2, Lcn/dbox/core/h/b;->a:Lcn/dbox/core/h/d;

    const-string v5, "\u65e0\u6cd5\u83b7\u53d6\u57fa\u7ad9\u4fe1\u606f"

    invoke-virtual {v2, v5}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    :cond_8b
    move v2, v3

    .line 1067
    :goto_8c
    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    .line 1068
    const/4 v3, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    .line 1070
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

    .line 1071
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

    .line 1072
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

    .line 1073
    const/4 v3, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    .line 1074
    const/4 v2, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    :cond_dd
    :goto_dd
    move-object v1, v4

    .line 1081
    goto/16 :goto_3d

    .line 1050
    :pswitch_e0
    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    .line 1051
    if-eqz v2, :cond_8b

    .line 1052
    move-object v0, v2

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    .line 1053
    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    goto :goto_8c

    .line 1057
    :pswitch_f3
    check-cast v2, Landroid/telephony/cdma/CdmaCellLocation;

    .line 1058
    if-eqz v2, :cond_8b

    .line 1059
    move-object v0, v2

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v3

    .line 1060
    check-cast v2, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_104} :catch_106

    move-result v2

    goto :goto_8c

    .line 1077
    :catch_106
    move-exception v1

    .line 1078
    sget-object v2, Lcn/dbox/core/h/b;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v2, v1}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_dd

    .line 1048
    nop

    :pswitch_data_10e
    .packed-switch 0x1
        :pswitch_e0
        :pswitch_f3
    .end packed-switch
.end method

.method public static C(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 1091
    sget-object v0, Lcn/dbox/core/h/b;->l:Ljava/lang/String;

    if-nez v0, :cond_49

    const/16 v0, 0x9

    invoke-static {v0, v1}, Lcn/dbox/core/h/e;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1093
    :try_start_d
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1094
    const-string v1, "getAdvertisingIdInfo"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1095
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1096
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1097
    const-string v2, "getId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1098
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1099
    sput-object v0, Lcn/dbox/core/h/b;->l:Ljava/lang/String;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_49} :catch_4c

    .line 1105
    :cond_49
    :goto_49
    sget-object v0, Lcn/dbox/core/h/b;->l:Ljava/lang/String;

    return-object v0

    .line 1100
    :catch_4c
    move-exception v0

    goto :goto_49
.end method

.method private static D(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 91
    sget-object v0, Lcn/dbox/core/h/b;->a:Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/core/h/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Start to get app info."

    invoke-virtual {v0, v1, v2}, Lcn/dbox/core/h/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 100
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sput-object v2, Lcn/dbox/core/h/b;->b:Ljava/lang/String;

    .line 101
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v2, Lcn/dbox/core/h/b;->c:I

    .line 102
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcn/dbox/core/h/b;->d:Ljava/lang/String;

    .line 105
    :cond_2a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_46

    .line 108
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 109
    if-eqz v1, :cond_47

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/dbox/core/h/b;->e:Ljava/lang/String;

    .line 122
    :cond_46
    :goto_46
    return-void

    .line 113
    :cond_47
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v1, :cond_63

    const/4 v0, 0x0

    :goto_4c
    sput-object v0, Lcn/dbox/core/h/b;->e:Ljava/lang/String;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_4e} :catch_4f

    goto :goto_46

    .line 117
    :catch_4f
    move-exception v0

    .line 118
    sget-object v1, Lcn/dbox/core/h/b;->a:Lcn/dbox/core/h/d;

    const-class v2, Lcn/dbox/core/h/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed in getting app info."

    invoke-virtual {v1, v2, v3}, Lcn/dbox/core/h/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    sget-object v1, Lcn/dbox/core/h/b;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_46

    .line 113
    :cond_63
    :try_start_63
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_68} :catch_4f

    move-result-object v0

    goto :goto_4c
.end method

.method protected static a()Ljava/lang/String;
    .registers 4

    .prologue
    .line 327
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 328
    :cond_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 329
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 331
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 332
    :cond_14
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 333
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 335
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_14

    .line 336
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2f

    move-result-object v0

    .line 344
    :goto_2e
    return-object v0

    .line 340
    :catch_2f
    move-exception v0

    .line 341
    sget-object v1, Lcn/dbox/core/h/b;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    .line 344
    :cond_35
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method protected static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 125
    sget-object v0, Lcn/dbox/core/h/b;->b:Ljava/lang/String;

    if-nez v0, :cond_30

    .line 126
    invoke-static {p0}, Lcn/dbox/core/h/b;->D(Landroid/content/Context;)V

    .line 127
    sget-object v0, Lcn/dbox/core/h/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcn/dbox/core/h/f;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 128
    const-string v0, "DrwSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current package name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/dbox/core/h/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v0, "DrwSDK"

    const-string v1, "SDK_VERSION:000900,SDK_BUILD_DATE:20140918"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_30
    sget-object v0, Lcn/dbox/core/h/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected static a(IZ)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 550
    if-eqz p1, :cond_b

    .line 551
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, p0, :cond_9

    .line 560
    :cond_8
    :goto_8
    return v0

    :cond_9
    move v0, v1

    .line 554
    goto :goto_8

    .line 557
    :cond_b
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v2, p0, :cond_8

    move v0, v1

    .line 560
    goto :goto_8
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 177
    if-eqz p1, :cond_30

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 179
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 181
    if-eqz v1, :cond_30

    .line 182
    sget-object v1, Lcn/dbox/core/h/b;->a:Lcn/dbox/core/h/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already insalled pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/dbox/core/h/d;->a(Ljava/lang/String;)V
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_2e} :catch_2f

    .line 190
    :goto_2e
    return v0

    .line 185
    :catch_2f
    move-exception v0

    .line 190
    :cond_30
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method protected static b(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 137
    sget-object v0, Lcn/dbox/core/h/b;->b:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 138
    invoke-static {p0}, Lcn/dbox/core/h/b;->D(Landroid/content/Context;)V

    .line 141
    :cond_7
    sget v0, Lcn/dbox/core/h/b;->c:I

    return v0
.end method

.method protected static b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 348
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 349
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static c()I
    .registers 1

    .prologue
    .line 527
    invoke-static {}, Lcn/dbox/core/h/b$a;->a()Lcn/dbox/core/h/b$a;

    move-result-object v0

    invoke-static {v0}, Lcn/dbox/core/h/b$a;->a(Lcn/dbox/core/h/b$a;)I

    move-result v0

    return v0
.end method

.method protected static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    sget-object v0, Lcn/dbox/core/h/b;->b:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 146
    invoke-static {p0}, Lcn/dbox/core/h/b;->D(Landroid/content/Context;)V

    .line 149
    :cond_7
    sget-object v0, Lcn/dbox/core/h/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected static d()I
    .registers 1

    .prologue
    .line 531
    invoke-static {}, Lcn/dbox/core/h/b$a;->a()Lcn/dbox/core/h/b$a;

    move-result-object v0

    invoke-static {v0}, Lcn/dbox/core/h/b$a;->b(Lcn/dbox/core/h/b$a;)I

    move-result v0

    return v0
.end method

.method protected static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 153
    sget-object v0, Lcn/dbox/core/h/b;->b:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 154
    invoke-static {p0}, Lcn/dbox/core/h/b;->D(Landroid/content/Context;)V

    .line 157
    :cond_7
    sget-object v0, Lcn/dbox/core/h/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected static e()J
    .registers 2

    .prologue
    .line 535
    invoke-static {}, Lcn/dbox/core/h/b$a;->a()Lcn/dbox/core/h/b$a;

    move-result-object v0

    invoke-static {v0}, Lcn/dbox/core/h/b$a;->c(Lcn/dbox/core/h/b$a;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 161
    sget-object v0, Lcn/dbox/core/h/b;->k:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 162
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/dbox/core/h/b;->k:Ljava/lang/String;

    .line 166
    :cond_13
    sget-object v0, Lcn/dbox/core/h/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method protected static f()Ljava/lang/String;
    .registers 1

    .prologue
    .line 630
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static f(Landroid/content/Context;)Ljava/util/List;
    .registers 7
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
    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 202
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 203
    if-eqz v0, :cond_48

    .line 204
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 205
    if-eqz v0, :cond_14

    .line 206
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 207
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2f

    .line 208
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_2f
    sget-object v3, Lcn/dbox/core/h/b;->a:Lcn/dbox/core/h/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the phone has been installed packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    goto :goto_14

    .line 214
    :cond_48
    return-object v1
.end method

.method protected static g()I
    .registers 1

    .prologue
    .line 939
    invoke-static {}, Lcn/dbox/core/h/b$a;->a()Lcn/dbox/core/h/b$a;

    move-result-object v0

    invoke-static {v0}, Lcn/dbox/core/h/b$a;->d(Lcn/dbox/core/h/b$a;)I

    move-result v0

    return v0
.end method

.method protected static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 219
    :try_start_0
    sget-object v0, Lcn/dbox/core/h/b;->f:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 220
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 222
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/dbox/core/h/b;->f:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_15

    .line 230
    :cond_12
    :goto_12
    sget-object v0, Lcn/dbox/core/h/b;->f:Ljava/lang/String;

    return-object v0

    .line 224
    :catch_15
    move-exception v0

    .line 225
    sget-object v1, Lcn/dbox/core/h/b;->a:Lcn/dbox/core/h/d;

    const-class v2, Lcn/dbox/core/h/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to get android ID."

    invoke-virtual {v1, v2, v3}, Lcn/dbox/core/h/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    sget-object v1, Lcn/dbox/core/h/b;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method static synthetic h()Lcn/dbox/core/h/d;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcn/dbox/core/h/b;->a:Lcn/dbox/core/h/d;

    return-object v0
.end method

.method protected static h(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 235
    :try_start_0
    sget-object v0, Lcn/dbox/core/h/b;->g:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/dbox/core/h/b;->g:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_13

    .line 245
    :cond_10
    :goto_10
    sget-object v0, Lcn/dbox/core/h/b;->g:Ljava/lang/String;

    return-object v0

    .line 239
    :catch_13
    move-exception v0

    .line 240
    sget-object v1, Lcn/dbox/core/h/b;->a:Lcn/dbox/core/h/d;

    const-class v2, Lcn/dbox/core/h/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to get android ID."

    invoke-virtual {v1, v2, v3}, Lcn/dbox/core/h/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    sget-object v1, Lcn/dbox/core/h/b;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method protected static i(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 255
    sget-object v0, Lcn/dbox/core/h/b;->h:Ljava/lang/String;

    if-nez v0, :cond_18

    .line 256
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1b

    .line 257
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, ","

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/dbox/core/h/b;->h:Ljava/lang/String;

    .line 263
    :cond_18
    :goto_18
    sget-object v0, Lcn/dbox/core/h/b;->h:Ljava/lang/String;

    return-object v0

    .line 259
    :cond_1b
    const-string v0, "1.5"

    sput-object v0, Lcn/dbox/core/h/b;->h:Ljava/lang/String;

    goto :goto_18
.end method

.method protected static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 273
    sget-object v0, Lcn/dbox/core/h/b;->i:Ljava/lang/String;

    if-nez v0, :cond_18

    .line 274
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    .line 275
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, ","

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/dbox/core/h/b;->i:Ljava/lang/String;

    .line 279
    :cond_18
    sget-object v0, Lcn/dbox/core/h/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method protected static k(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 283
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    .line 285
    sget-object v0, Lcn/dbox/core/h/b;->a:Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/core/h/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot access user\'s network type.  Permissions are not set."

    invoke-virtual {v0, v1, v2}, Lcn/dbox/core/h/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    const-string v0, "unknown"

    .line 306
    :cond_18
    :goto_18
    return-object v0

    .line 290
    :cond_19
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 292
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 294
    if-eqz v0, :cond_3c

    .line 295
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 296
    if-nez v1, :cond_36

    .line 297
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 298
    if-nez v0, :cond_18

    .line 301
    const-string v0, "gprs"

    goto :goto_18

    .line 302
    :cond_36
    const/4 v0, 0x1

    if-ne v1, v0, :cond_3c

    .line 303
    const-string v0, "wifi"

    goto :goto_18

    .line 306
    :cond_3c
    const-string v0, "unknown"

    goto :goto_18
.end method

.method protected static l(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 314
    :try_start_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 316
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_19

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    .line 321
    :goto_16
    return v0

    :cond_17
    move v0, v1

    .line 318
    goto :goto_16

    .line 319
    :catch_19
    move-exception v0

    .line 320
    sget-object v2, Lcn/dbox/core/h/b;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v2, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    move v0, v1

    .line 321
    goto :goto_16
.end method

.method protected static m(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 360
    :try_start_0
    sget-object v0, Lcn/dbox/core/h/b;->j:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 361
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 363
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/dbox/core/h/b;->j:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_15

    .line 369
    :cond_12
    :goto_12
    sget-object v0, Lcn/dbox/core/h/b;->j:Ljava/lang/String;

    return-object v0

    .line 365
    :catch_15
    move-exception v0

    .line 366
    sget-object v1, Lcn/dbox/core/h/b;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method protected static n(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 379
    const-string v0, "v"

    sput-object v0, Lcn/dbox/core/h/b;->q:Ljava/lang/String;

    .line 380
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 382
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1e

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_22

    .line 384
    :cond_1e
    const-string v0, "h"

    sput-object v0, Lcn/dbox/core/h/b;->q:Ljava/lang/String;

    .line 387
    :cond_22
    sget-object v0, Lcn/dbox/core/h/b;->q:Ljava/lang/String;

    return-object v0
.end method

.method protected static o(Landroid/content/Context;)F
    .registers 3

    .prologue
    .line 399
    :try_start_0
    sget v0, Lcn/dbox/core/h/b;->m:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1f

    .line 400
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 403
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 404
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 405
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcn/dbox/core/h/b;->m:F
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_22

    .line 411
    :cond_1f
    :goto_1f
    sget v0, Lcn/dbox/core/h/b;->m:F

    return v0

    .line 407
    :catch_22
    move-exception v0

    .line 408
    sget-object v1, Lcn/dbox/core/h/b;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_1f
.end method

.method protected static p(Landroid/content/Context;)F
    .registers 3

    .prologue
    .line 422
    :try_start_0
    sget v0, Lcn/dbox/core/h/b;->n:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_13

    .line 423
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 425
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcn/dbox/core/h/b;->n:F
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_16

    .line 431
    :cond_13
    :goto_13
    sget v0, Lcn/dbox/core/h/b;->n:F

    return v0

    .line 427
    :catch_16
    move-exception v0

    .line 428
    sget-object v1, Lcn/dbox/core/h/b;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method protected static q(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 449
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 451
    if-eqz v0, :cond_14

    .line 452
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    sput v0, Lcn/dbox/core/h/b;->o:I

    .line 455
    :cond_14
    sget v0, Lcn/dbox/core/h/b;->o:I

    return v0
.end method

.method protected static r(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 459
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 461
    if-eqz v0, :cond_14

    .line 462
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sput v0, Lcn/dbox/core/h/b;->p:I

    .line 465
    :cond_14
    sget v0, Lcn/dbox/core/h/b;->p:I

    return v0
.end method

.method public static s(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 472
    .line 473
    invoke-static {p0}, Lcn/dbox/core/h/b;->t(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    .line 474
    if-eqz v1, :cond_1d

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1d

    .line 475
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 476
    const-string v0, "apn"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 478
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 481
    :goto_1c
    return-object v0

    :cond_1d
    const-string v0, ""

    goto :goto_1c
.end method

.method public static t(Landroid/content/Context;)Landroid/database/Cursor;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 487
    :try_start_1
    invoke-static {p0}, Lcn/dbox/core/h/b;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 488
    if-eqz v0, :cond_18

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 489
    sget-object v0, Lcn/dbox/core/h/b;->a:Lcn/dbox/core/h/d;

    const-string v1, "network is wifi, don\'t read apn."

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    move-object v0, v6

    .line 504
    :goto_17
    return-object v0

    .line 493
    :cond_18
    const-string v0, "content://telephony/carriers/preferapn"

    .line 494
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 495
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_2b
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_29} :catch_33

    move-result-object v0

    goto :goto_17

    .line 499
    :catch_2b
    move-exception v0

    .line 500
    sget-object v1, Lcn/dbox/core/h/b;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    move-object v0, v6

    .line 501
    goto :goto_17

    .line 502
    :catch_33
    move-exception v0

    .line 503
    sget-object v1, Lcn/dbox/core/h/b;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    move-object v0, v6

    .line 504
    goto :goto_17
.end method

.method protected static u(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 516
    invoke-static {}, Lcn/dbox/core/h/b$a;->a()Lcn/dbox/core/h/b$a;

    move-result-object v0

    .line 518
    invoke-static {v0, p0}, Lcn/dbox/core/h/b$a;->a(Lcn/dbox/core/h/b$a;Landroid/content/Context;)Landroid/location/Location;

    move-result-object v1

    .line 519
    if-eqz v1, :cond_f

    .line 520
    invoke-static {v0, v1}, Lcn/dbox/core/h/b$a;->a(Lcn/dbox/core/h/b$a;Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    .line 523
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected static v(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 572
    invoke-static {p0}, Lcn/dbox/core/h/f;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 573
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 575
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 576
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 578
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method protected static w(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 590
    invoke-static {p0}, Lcn/dbox/core/h/f;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {p0}, Lcn/dbox/core/h/f;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 592
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 594
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 595
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 597
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method protected static x(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 602
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 604
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2f

    .line 605
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 607
    if-eqz v0, :cond_2f

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 611
    :goto_2e
    return-object v0

    :cond_2f
    const-string v0, "-1"

    goto :goto_2e
.end method

.method protected static y(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 615
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 617
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2f

    .line 618
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 620
    if-eqz v0, :cond_2f

    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 624
    :goto_2e
    return-object v0

    :cond_2f
    const-string v0, "-1"

    goto :goto_2e
.end method

.method protected static z(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 950
    invoke-static {p0}, Lcn/dbox/core/h/f;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {p0}, Lcn/dbox/core/h/f;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 951
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 952
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 953
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 955
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method
