.class public Lcn/domob/android/i/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/i/c$a;
    }
.end annotation


# static fields
.field private static a:Lcn/domob/android/i/f; = null

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

.field private static m:Ljava/lang/String; = null

.field private static n:Ljava/lang/Boolean; = null

.field private static o:F = 0.0f

.field private static p:F = 0.0f

.field private static q:I = 0x0

.field private static r:I = 0x0

.field private static s:Ljava/lang/String; = null

.field private static t:Ljava/lang/String; = null

.field private static final u:Ljava/lang/String; = "unknown"

.field private static final v:Ljava/lang/String; = "gprs"

.field private static final w:Ljava/lang/String; = "wifi"

.field private static final x:Ljava/lang/String; = "com.android.browser"

.field private static final y:Ljava/lang/String; = "com.google.android.browser"

.field private static final z:Ljava/lang/String; = "com.android.browser.BrowserActivity"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 56
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/i/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/i/c;->a:Lcn/domob/android/i/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 717
    return-void
.end method

.method public static A(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1029
    sget-object v0, Lcn/domob/android/i/c;->n:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 1030
    sget-object v0, Lcn/domob/android/i/c;->n:Ljava/lang/Boolean;

    .line 1047
    :goto_7
    return-object v0

    .line 1033
    :cond_8
    :try_start_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3b

    .line 1036
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1037
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isLayoutSizeAtLeast"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1038
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1039
    sput-object v0, Lcn/domob/android/i/c;->n:Ljava/lang/Boolean;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3b} :catch_48

    .line 1044
    :cond_3b
    :goto_3b
    sget-object v0, Lcn/domob/android/i/c;->n:Ljava/lang/Boolean;

    if-nez v0, :cond_45

    .line 1045
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcn/domob/android/i/c;->n:Ljava/lang/Boolean;

    .line 1047
    :cond_45
    sget-object v0, Lcn/domob/android/i/c;->n:Ljava/lang/Boolean;

    goto :goto_7

    .line 1041
    :catch_48
    move-exception v0

    .line 1042
    sget-object v1, Lcn/domob/android/i/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_3b
.end method

.method public static B(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 1055
    sget-object v0, Lcn/domob/android/i/c;->i:Ljava/lang/String;

    if-nez v0, :cond_49

    const/16 v0, 0x9

    invoke-static {v0, v1}, Lcn/domob/android/i/c;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1057
    :try_start_d
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1058
    const-string v1, "getAdvertisingIdInfo"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1059
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1060
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1061
    const-string v2, "getId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1062
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1063
    sput-object v0, Lcn/domob/android/i/c;->i:Ljava/lang/String;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_49} :catch_4c

    .line 1068
    :cond_49
    :goto_49
    sget-object v0, Lcn/domob/android/i/c;->i:Ljava/lang/String;

    return-object v0

    .line 1064
    :catch_4c
    move-exception v0

    goto :goto_49
.end method

.method public static C(Landroid/content/Context;)I
    .registers 5

    .prologue
    .line 1075
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_2b

    .line 1076
    check-cast p0, Landroid/app/Activity;

    .line 1077
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1078
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1079
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1080
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 1081
    const v3, 0x1020002

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1082
    sub-int/2addr v0, v2

    .line 1083
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int v0, v1, v0

    .line 1085
    :goto_2a
    return v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method public static D(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 1106
    :try_start_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1107
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    move-result v0

    .line 1111
    :goto_c
    return v0

    .line 1109
    :catch_d
    move-exception v0

    .line 1110
    sget-object v1, Lcn/domob/android/i/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 1111
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public static E(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 1147
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1148
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    .line 1149
    const/4 v0, 0x1

    .line 1151
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static F(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 1156
    const-string v0, "_"

    .line 1157
    sget-object v0, Lcn/domob/android/i/c;->t:Ljava/lang/String;

    if-nez v0, :cond_91

    .line 1158
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1161
    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1162
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1165
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1168
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_94

    .line 1169
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, ","

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1173
    :goto_2f
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1176
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1180
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4c

    .line 1181
    const-string v2, ","

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1183
    :cond_4c
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1186
    invoke-static {p0}, Lcn/domob/android/i/c;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1188
    if-eqz v1, :cond_62

    .line 1189
    const-string v2, ","

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1191
    :cond_62
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1194
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1196
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1199
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/i/c;->t:Ljava/lang/String;

    .line 1200
    sget-object v0, Lcn/domob/android/i/c;->a:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserAgent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/domob/android/i/c;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 1203
    :cond_91
    sget-object v0, Lcn/domob/android/i/c;->t:Ljava/lang/String;

    return-object v0

    .line 1171
    :cond_94
    const-string v1, "1.5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2f
.end method

.method private static G(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 99
    sget-object v0, Lcn/domob/android/i/c;->a:Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/i/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Start to get app info."

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 105
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sput-object v2, Lcn/domob/android/i/c;->b:Ljava/lang/String;

    .line 106
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v2, Lcn/domob/android/i/c;->c:I

    .line 107
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcn/domob/android/i/c;->d:Ljava/lang/String;

    .line 110
    :cond_2a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_46

    .line 112
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 113
    if-eqz v1, :cond_47

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/i/c;->e:Ljava/lang/String;

    .line 123
    :cond_46
    :goto_46
    return-void

    .line 116
    :cond_47
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v1, :cond_63

    const/4 v0, 0x0

    :goto_4c
    sput-object v0, Lcn/domob/android/i/c;->e:Ljava/lang/String;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_4e} :catch_4f

    goto :goto_46

    .line 119
    :catch_4f
    move-exception v0

    .line 120
    sget-object v1, Lcn/domob/android/i/c;->a:Lcn/domob/android/i/f;

    const-class v2, Lcn/domob/android/i/c;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed in getting app info."

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    sget-object v1, Lcn/domob/android/i/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_46

    .line 116
    :cond_63
    :try_start_63
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_68} :catch_4f

    move-result-object v0

    goto :goto_4c
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1122
    .line 1123
    if-eqz p0, :cond_27

    if-eqz p1, :cond_27

    .line 1124
    const-string v0, "com.android.browser"

    invoke-static {p0, v0}, Lcn/domob/android/i/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1125
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1126
    const-string v2, "com.android.browser"

    const-string v3, "com.android.browser.BrowserActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1132
    :goto_1b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_3f

    .line 1137
    :cond_27
    :goto_27
    return-object v1

    .line 1127
    :cond_28
    const-string v0, "com.google.android.browser"

    invoke-static {p0, v0}, Lcn/domob/android/i/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1128
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1129
    const-string v2, "com.google.android.browser"

    const-string v3, "com.android.browser.BrowserActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1b

    :cond_3f
    move-object v1, v0

    goto :goto_27

    :cond_41
    move-object v0, v1

    goto :goto_1b
.end method

.method public static a()Ljava/lang/String;
    .registers 4

    .prologue
    .line 312
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 313
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 315
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 316
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 317
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_14

    .line 318
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2f

    move-result-object v0

    .line 326
    :goto_2e
    return-object v0

    .line 322
    :catch_2f
    move-exception v0

    .line 323
    sget-object v1, Lcn/domob/android/i/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 326
    :cond_35
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 126
    sget-object v0, Lcn/domob/android/i/c;->b:Ljava/lang/String;

    if-nez v0, :cond_2b

    .line 127
    invoke-static {p0}, Lcn/domob/android/i/c;->G(Landroid/content/Context;)V

    .line 128
    sget-object v0, Lcn/domob/android/i/c;->b:Ljava/lang/String;

    invoke-static {v0}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 129
    invoke-static {}, Lcn/domob/android/i/f;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current package name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/domob/android/i/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_2b
    sget-object v0, Lcn/domob/android/i/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static a(IZ)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 524
    if-eqz p1, :cond_b

    .line 525
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, p0, :cond_9

    .line 534
    :cond_8
    :goto_8
    return v0

    :cond_9
    move v0, v1

    .line 528
    goto :goto_8

    .line 531
    :cond_b
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v2, p0, :cond_8

    move v0, v1

    .line 534
    goto :goto_8
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 176
    if-eqz p1, :cond_30

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 178
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 179
    if-eqz v1, :cond_30

    .line 180
    sget-object v1, Lcn/domob/android/i/c;->a:Lcn/domob/android/i/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already insalled pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_2e} :catch_2f

    .line 188
    :goto_2e
    return v0

    .line 183
    :catch_2f
    move-exception v0

    .line 188
    :cond_30
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method public static b(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 137
    sget-object v0, Lcn/domob/android/i/c;->b:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 138
    invoke-static {p0}, Lcn/domob/android/i/c;->G(Landroid/content/Context;)V

    .line 141
    :cond_7
    sget v0, Lcn/domob/android/i/c;->c:I

    return v0
.end method

.method public static b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 330
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 331
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()I
    .registers 1

    .prologue
    .line 498
    invoke-static {}, Lcn/domob/android/i/c$a;->a()Lcn/domob/android/i/c$a;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/i/c$a;->a(Lcn/domob/android/i/c$a;)I

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    sget-object v0, Lcn/domob/android/i/c;->b:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 146
    invoke-static {p0}, Lcn/domob/android/i/c;->G(Landroid/content/Context;)V

    .line 149
    :cond_7
    sget-object v0, Lcn/domob/android/i/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static d()I
    .registers 1

    .prologue
    .line 502
    invoke-static {}, Lcn/domob/android/i/c$a;->a()Lcn/domob/android/i/c$a;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/i/c$a;->b(Lcn/domob/android/i/c$a;)I

    move-result v0

    return v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 153
    sget-object v0, Lcn/domob/android/i/c;->b:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 154
    invoke-static {p0}, Lcn/domob/android/i/c;->G(Landroid/content/Context;)V

    .line 157
    :cond_7
    sget-object v0, Lcn/domob/android/i/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static e()I
    .registers 1

    .prologue
    .line 506
    invoke-static {}, Lcn/domob/android/i/c$a;->a()Lcn/domob/android/i/c$a;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/i/c$a;->c(Lcn/domob/android/i/c$a;)I

    move-result v0

    return v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 161
    sget-object v0, Lcn/domob/android/i/c;->m:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 162
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/i/c;->m:Ljava/lang/String;

    .line 165
    :cond_13
    sget-object v0, Lcn/domob/android/i/c;->m:Ljava/lang/String;

    return-object v0
.end method

.method public static f()J
    .registers 2

    .prologue
    .line 510
    invoke-static {}, Lcn/domob/android/i/c$a;->a()Lcn/domob/android/i/c$a;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/i/c$a;->d(Lcn/domob/android/i/c$a;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 199
    :try_start_0
    sget-object v0, Lcn/domob/android/i/c;->g:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 200
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 201
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/i/c;->g:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_15

    .line 207
    :cond_12
    :goto_12
    sget-object v0, Lcn/domob/android/i/c;->g:Ljava/lang/String;

    return-object v0

    .line 203
    :catch_15
    move-exception v0

    .line 204
    sget-object v1, Lcn/domob/android/i/c;->a:Lcn/domob/android/i/f;

    const-string v2, "Failed to get IMSI."

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 205
    sget-object v1, Lcn/domob/android/i/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method public static g()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1019
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 212
    :try_start_0
    sget-object v0, Lcn/domob/android/i/c;->f:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 213
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 214
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/i/c;->f:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_15

    .line 221
    :cond_12
    :goto_12
    sget-object v0, Lcn/domob/android/i/c;->f:Ljava/lang/String;

    return-object v0

    .line 216
    :catch_15
    move-exception v0

    .line 217
    sget-object v1, Lcn/domob/android/i/c;->a:Lcn/domob/android/i/f;

    const-class v2, Lcn/domob/android/i/c;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to get IMEI."

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    sget-object v1, Lcn/domob/android/i/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 226
    :try_start_0
    sget-object v0, Lcn/domob/android/i/c;->h:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 227
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/i/c;->h:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_13

    .line 234
    :cond_10
    :goto_10
    sget-object v0, Lcn/domob/android/i/c;->h:Ljava/lang/String;

    return-object v0

    .line 229
    :catch_13
    move-exception v0

    .line 230
    sget-object v1, Lcn/domob/android/i/c;->a:Lcn/domob/android/i/f;

    const-class v2, Lcn/domob/android/i/c;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to get android ID."

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    sget-object v1, Lcn/domob/android/i/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method public static h()Z
    .registers 2

    .prologue
    .line 1095
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic i()Lcn/domob/android/i/f;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcn/domob/android/i/c;->a:Lcn/domob/android/i/f;

    return-object v0
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 244
    sget-object v0, Lcn/domob/android/i/c;->j:Ljava/lang/String;

    if-nez v0, :cond_18

    .line 245
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1b

    .line 246
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, ","

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/i/c;->j:Ljava/lang/String;

    .line 252
    :cond_18
    :goto_18
    sget-object v0, Lcn/domob/android/i/c;->j:Ljava/lang/String;

    return-object v0

    .line 248
    :cond_1b
    const-string v0, "1.5"

    sput-object v0, Lcn/domob/android/i/c;->j:Ljava/lang/String;

    goto :goto_18
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 262
    sget-object v0, Lcn/domob/android/i/c;->k:Ljava/lang/String;

    if-nez v0, :cond_18

    .line 263
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    .line 264
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, ","

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/i/c;->k:Ljava/lang/String;

    .line 268
    :cond_18
    sget-object v0, Lcn/domob/android/i/c;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 272
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    .line 273
    sget-object v0, Lcn/domob/android/i/c;->a:Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/i/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot access user\'s network type.  Permissions are not set."

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    const-string v0, "unknown"

    .line 292
    :cond_18
    :goto_18
    return-object v0

    .line 277
    :cond_19
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 278
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_3c

    .line 281
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 282
    if-nez v1, :cond_36

    .line 283
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 284
    if-nez v0, :cond_18

    .line 287
    const-string v0, "gprs"

    goto :goto_18

    .line 288
    :cond_36
    const/4 v0, 0x1

    if-ne v1, v0, :cond_3c

    .line 289
    const-string v0, "wifi"

    goto :goto_18

    .line 292
    :cond_3c
    const-string v0, "unknown"

    goto :goto_18
.end method

.method public static l(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 300
    :try_start_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 301
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_19

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    .line 306
    :goto_16
    return v0

    :cond_17
    move v0, v1

    .line 303
    goto :goto_16

    .line 304
    :catch_19
    move-exception v0

    .line 305
    sget-object v2, Lcn/domob/android/i/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    move v0, v1

    .line 306
    goto :goto_16
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 342
    :try_start_0
    sget-object v0, Lcn/domob/android/i/c;->l:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 343
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 344
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/i/c;->l:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_15

    .line 350
    :cond_12
    :goto_12
    sget-object v0, Lcn/domob/android/i/c;->l:Ljava/lang/String;

    return-object v0

    .line 346
    :catch_15
    move-exception v0

    .line 347
    sget-object v1, Lcn/domob/android/i/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method public static n(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 360
    const-string v0, "v"

    sput-object v0, Lcn/domob/android/i/c;->s:Ljava/lang/String;

    .line 361
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 362
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1e

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_22

    .line 363
    :cond_1e
    const-string v0, "h"

    sput-object v0, Lcn/domob/android/i/c;->s:Ljava/lang/String;

    .line 366
    :cond_22
    sget-object v0, Lcn/domob/android/i/c;->s:Ljava/lang/String;

    return-object v0
.end method

.method public static o(Landroid/content/Context;)F
    .registers 3

    .prologue
    .line 378
    :try_start_0
    sget v0, Lcn/domob/android/i/c;->o:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1f

    .line 379
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 380
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 381
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 382
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcn/domob/android/i/c;->o:F
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_22

    .line 388
    :cond_1f
    :goto_1f
    sget v0, Lcn/domob/android/i/c;->o:F

    return v0

    .line 384
    :catch_22
    move-exception v0

    .line 385
    sget-object v1, Lcn/domob/android/i/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_1f
.end method

.method public static p(Landroid/content/Context;)F
    .registers 3

    .prologue
    .line 399
    :try_start_0
    sget v0, Lcn/domob/android/i/c;->p:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_13

    .line 400
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 401
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcn/domob/android/i/c;->p:F
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_16

    .line 407
    :cond_13
    :goto_13
    sget v0, Lcn/domob/android/i/c;->p:F

    return v0

    .line 403
    :catch_16
    move-exception v0

    .line 404
    sget-object v1, Lcn/domob/android/i/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method public static q(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 425
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 426
    if-eqz v0, :cond_14

    .line 427
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    sput v0, Lcn/domob/android/i/c;->q:I

    .line 430
    :cond_14
    sget v0, Lcn/domob/android/i/c;->q:I

    return v0
.end method

.method public static r(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 434
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 435
    if-eqz v0, :cond_14

    .line 436
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sput v0, Lcn/domob/android/i/c;->r:I

    .line 439
    :cond_14
    sget v0, Lcn/domob/android/i/c;->r:I

    return v0
.end method

.method public static s(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 446
    .line 447
    invoke-static {p0}, Lcn/domob/android/i/c;->t(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    .line 448
    if-eqz v1, :cond_1d

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1d

    .line 449
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 450
    const-string v0, "apn"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 451
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 454
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

    .line 460
    :try_start_1
    invoke-static {p0}, Lcn/domob/android/i/c;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 461
    if-eqz v0, :cond_18

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 462
    sget-object v0, Lcn/domob/android/i/c;->a:Lcn/domob/android/i/f;

    const-string v1, "network is wifi, don\'t read apn."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    move-object v0, v6

    .line 476
    :goto_17
    return-object v0

    .line 466
    :cond_18
    const-string v0, "content://telephony/carriers/preferapn"

    .line 467
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 468
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

    .line 471
    :catch_2b
    move-exception v0

    .line 472
    sget-object v1, Lcn/domob/android/i/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    move-object v0, v6

    .line 473
    goto :goto_17

    .line 474
    :catch_33
    move-exception v0

    .line 475
    sget-object v1, Lcn/domob/android/i/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    move-object v0, v6

    .line 476
    goto :goto_17
.end method

.method public static u(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 488
    invoke-static {}, Lcn/domob/android/i/c$a;->a()Lcn/domob/android/i/c$a;

    move-result-object v0

    .line 489
    invoke-static {v0, p0}, Lcn/domob/android/i/c$a;->a(Lcn/domob/android/i/c$a;Landroid/content/Context;)Landroid/location/Location;

    move-result-object v1

    .line 490
    if-eqz v1, :cond_f

    .line 491
    invoke-static {v0, v1}, Lcn/domob/android/i/c$a;->a(Lcn/domob/android/i/c$a;Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    .line 494
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static v(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 546
    invoke-static {p0}, Lcn/domob/android/i/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 547
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 548
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 549
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 551
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static w(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 563
    invoke-static {p0}, Lcn/domob/android/i/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {p0}, Lcn/domob/android/i/c;->E(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 564
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 565
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 566
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 568
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public static x(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 579
    invoke-static {p0}, Lcn/domob/android/i/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {p0}, Lcn/domob/android/i/c;->E(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 580
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 581
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 582
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 584
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public static y(Landroid/content/Context;)Ljava/lang/String;
    .registers 11

    .prologue
    const/16 v1, 0x14

    const/16 v9, 0x10

    const/4 v3, 0x0

    .line 595
    const-string v2, ""

    .line 597
    :try_start_7
    invoke-static {p0}, Lcn/domob/android/i/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-static {p0}, Lcn/domob/android/i/c;->E(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 598
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 599
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v5

    .line 600
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Landroid/net/wifi/ScanResult;

    move v4, v3

    .line 601
    :goto_26
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_38

    .line 602
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    aput-object v0, v6, v4

    .line 601
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_26

    .line 605
    :cond_38
    new-instance v0, Lcn/domob/android/i/c$1;

    invoke-direct {v0}, Lcn/domob/android/i/c$1;-><init>()V

    invoke-static {v6, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 619
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 621
    array-length v0, v6

    if-gt v0, v1, :cond_73

    array-length v0, v6

    .line 622
    :goto_49
    if-ge v3, v0, :cond_75

    .line 623
    aget-object v1, v6, v3

    .line 624
    iget-object v5, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 625
    iget-object v1, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 627
    invoke-static {v5}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6f

    .line 628
    invoke-static {v5}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 629
    const-string v1, "#"

    .line 632
    :cond_5f
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v9, :cond_6c

    .line 633
    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 644
    :cond_6c
    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 622
    :cond_6f
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_49

    :cond_73
    move v0, v1

    .line 621
    goto :goto_49

    .line 649
    :cond_75
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_78} :catch_7a

    move-result-object v0

    .line 655
    :goto_79
    return-object v0

    .line 651
    :catch_7a
    move-exception v0

    .line 652
    sget-object v1, Lcn/domob/android/i/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    :cond_80
    move-object v0, v2

    goto :goto_79
.end method

.method public static z(Landroid/content/Context;)[Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 665
    sget-object v1, Lcn/domob/android/i/c;->a:Lcn/domob/android/i/f;

    const-class v2, Lcn/domob/android/i/c;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "getLocationBasedService"

    invoke-virtual {v1, v2, v4}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 666
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

    .line 667
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v1}, Lcn/domob/android/i/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3e

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Lcn/domob/android/i/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 669
    sget-object v1, Lcn/domob/android/i/c;->a:Lcn/domob/android/i/f;

    const-string v2, "No permission to access locationBaseInfo"

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->d(Ljava/lang/String;)V

    move-object v1, v4

    .line 714
    :goto_3d
    return-object v1

    .line 673
    :cond_3e
    :try_start_3e
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 674
    if-eqz v1, :cond_dd

    .line 675
    sget-object v2, Lcn/domob/android/i/c;->a:Lcn/domob/android/i/f;

    const-class v5, Lcn/domob/android/i/c;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tManager is not null"

    invoke-virtual {v2, v5, v6}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 676
    sget-object v2, Lcn/domob/android/i/c;->a:Lcn/domob/android/i/f;

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

    .line 678
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    .line 679
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    .line 680
    if-eqz v2, :cond_9a

    .line 681
    packed-switch v5, :pswitch_data_10e

    .line 698
    sget-object v2, Lcn/domob/android/i/c;->a:Lcn/domob/android/i/f;

    const-string v5, "\u65e0\u6cd5\u83b7\u53d6\u57fa\u7ad9\u4fe1\u606f"

    invoke-virtual {v2, v5}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    :cond_8b
    move v2, v3

    .line 700
    :goto_8c
    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    .line 701
    const/4 v3, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    .line 703
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

    .line 704
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

    .line 705
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

    .line 706
    const/4 v3, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    .line 707
    const/4 v2, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    :cond_dd
    :goto_dd
    move-object v1, v4

    .line 714
    goto/16 :goto_3d

    .line 683
    :pswitch_e0
    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    .line 684
    if-eqz v2, :cond_8b

    .line 685
    move-object v0, v2

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    .line 686
    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    goto :goto_8c

    .line 690
    :pswitch_f3
    check-cast v2, Landroid/telephony/cdma/CdmaCellLocation;

    .line 691
    if-eqz v2, :cond_8b

    .line 692
    move-object v0, v2

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v3

    .line 693
    check-cast v2, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_104} :catch_106

    move-result v2

    goto :goto_8c

    .line 710
    :catch_106
    move-exception v1

    .line 711
    sget-object v2, Lcn/domob/android/i/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_dd

    .line 681
    nop

    :pswitch_data_10e
    .packed-switch 0x1
        :pswitch_e0
        :pswitch_f3
    .end packed-switch
.end method
