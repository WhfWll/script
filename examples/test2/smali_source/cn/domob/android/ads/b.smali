.class public Lcn/domob/android/ads/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Ljava/lang/String; = "http://e.domob.cn/event_report"

.field public static final B:Ljava/lang/String; = "javascript:(window.domobjs && window.domobjs.onViewable) ? domobjs.onViewable() : null"

.field public static final C:Ljava/lang/String; = "javascript:(window.domobjs && window.domobjs.onDismiss) ? domobjs.onDismiss() : null"

.field public static final D:Ljava/lang/String; = "v"

.field public static final E:Ljava/lang/String; = "h"

.field public static final F:I = 0x5

.field public static final G:Ljava/lang/String; = "domob"

.field public static final H:Ljava/lang/String; = "mraid"

.field public static final I:Ljava/lang/String; = "video"

.field public static final J:Ljava/lang/String; = "0"

.field public static final K:Ljava/lang/String; = "1"

.field public static final L:Ljava/lang/String; = "{\"com.admogo.AdMogoLayout\":\"1\",\"com.guohead.sdk.GHView\":\"2\",\"com.adview.AdViewLayout\":\"3\",\"appfactory.cn.adplatform.AdSageLayout\":\"4\"}"

.field public static final M:Ljava/lang/String; = "{\"sid\":\"search_id\",\"cid\":\"cookie_id\",\"ad\":{\"id\":\"12345\",\"format\":\"%s\",\"ct\":\"url\",\"width\":320,\"height\":50,\"url\":\"%s\",\"content\":\"\",\"base_url\":\"\",\"click_tracker\":\"\",\"imp_tracker\":\"h\",\"event_tracker\":\"\",\"tracker\":\"8ewfqd8ffqwer1325effff342f3444\",\"animation\":1,\"o\":\"h\",\"cls_btn\":0,\"imp_min\":5,\"imp_cls\":8,\"cache\":1440,\"pkg\":\"cn.domob.android.rm.demo\",\"mz_click_tracker\":\"\",\"mz_imp_tracker\":\"\"},\"control\":{\"refresh\":20,\"disable\":false,\"dis_time\":30,\"location\":true,\"ors\":{\"version\":\"2\",\"config\":{\"com.admogo.AdMogoLayout\":\"1\",\"com.guohead.sdk.GHView\":\"2\",\"com.adview.AdViewLayout\":\"3\",\"appfactory.cn.adplatform.AdSageLayout\":\"4\",\"cn.domob.test\":\"5\"}}}}"

.field public static final N:Ljava/lang/String; = "d!j@d#g$r%s^j&h*"

.field public static final O:Z = true

.field public static final P:I = 0x7d0

.field public static final Q:Ljava/lang/String; = "sid"

.field public static final R:Ljava/lang/String; = "inapp"

.field public static final S:Ljava/lang/String; = "download"

.field public static final T:Ljava/lang/String; = "loadSuccess"

.field public static final U:[Ljava/lang/String;

.field public static final V:Ljava/lang/String; = "video"

.field public static final W:Ljava/lang/String; = "launch"

.field public static final X:Ljava/lang/String; = "vibrate"

.field public static final a:Ljava/lang/String; = "DOMOB_PID"

.field public static final b:I = 0x4e20

.field public static final c:I = 0x1388

.field public static final d:I = 0x2a300

.field public static final e:I = 0x1

.field public static final f:Ljava/lang/String; = "android"

.field public static final g:Ljava/lang/String; = "20141125"

.field public static final h:Ljava/lang/String; = "20140529"

.field public static final i:Ljava/lang/String; = "040602"

.field public static final j:Ljava/lang/String; = "zh"

.field public static final k:Ljava/lang/String; = "jsonp"

.field public static final l:Ljava/lang/String; = "gif"

.field public static final m:Ljava/lang/String; = "iad"

.field public static final n:Ljava/lang/String; = "ltx"

.field public static final o:Ljava/lang/String; = "la"

.field public static final p:Ljava/lang/String; = "hv"

.field public static final q:Ljava/lang/String; = "expd"

.field public static final r:Ljava/lang/String; = "spi"

.field public static final s:Ljava/lang/String; = "mraid1"

.field public static final t:Ljava/lang/String; = "wvl"

.field public static final u:Ljava/lang/String; = "tpup"

.field public static final v:Ljava/lang/String; = "gd"

.field public static final w:Ljava/lang/String; = "vib\t"

.field public static final x:[Ljava/lang/String;

.field public static final y:Ljava/lang/String; = "http://r.domob.cn/a/"

.field public static final z:Ljava/lang/String; = "http://r.domob.cn/a/"


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "domob.cn/a/"

    aput-object v1, v0, v3

    const-string v1, "domob.org/a/"

    aput-object v1, v0, v4

    const-string v1, "duomeng.org/a/"

    aput-object v1, v0, v5

    const-string v1, "duomeng.net/a/"

    aput-object v1, v0, v6

    const-string v1, "duomeng.cn/a/"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "domob.com.cn/a/"

    aput-object v2, v0, v1

    sput-object v0, Lcn/domob/android/ads/b;->x:[Ljava/lang/String;

    .line 86
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    const-string v1, "android.permission.INTERNET"

    aput-object v1, v0, v4

    const-string v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v0, v5

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v1, v0, v6

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    aput-object v2, v0, v1

    sput-object v0, Lcn/domob/android/ads/b;->U:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
