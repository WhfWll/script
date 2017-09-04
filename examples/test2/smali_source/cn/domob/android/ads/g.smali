.class public Lcn/domob/android/ads/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/C$a;
.implements Lcn/domob/android/ads/J$a;
.implements Lcn/domob/android/ads/e$a;
.implements Lcn/domob/android/ads/i$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/g$b;,
        Lcn/domob/android/ads/g$d;,
        Lcn/domob/android/ads/g$c;,
        Lcn/domob/android/ads/g$a;
    }
.end annotation


# static fields
.field protected static final A:Ljava/lang/String; = "visit"

.field protected static final B:Ljava/lang/String; = "url"

.field protected static final C:Ljava/lang/String; = "phase"

.field protected static final D:Ljava/lang/String; = "wtai://wp/mc;"

.field protected static final E:I = 0x1

.field protected static final F:I = 0x2

.field protected static final G:I = 0x3

.field protected static final H:I = 0x4

.field protected static final I:I = 0x5

.field private static J:Lcn/domob/android/i/f; = null

.field protected static final o:Ljava/lang/String; = "domob"

.field protected static final p:Ljava/lang/String; = "mraid"

.field protected static final q:Ljava/lang/String; = "inapp"

.field protected static final r:Ljava/lang/String; = "download"

.field protected static final s:Ljava/lang/String; = "report"

.field protected static final t:Ljava/lang/String; = "launch"

.field protected static final u:Ljava/lang/String; = "custom"

.field protected static final v:Ljava/lang/String; = "expand"

.field protected static final w:Ljava/lang/String; = "close"

.field protected static final x:Ljava/lang/String; = "clk"

.field protected static final y:Ljava/lang/String; = "imp"

.field protected static final z:Ljava/lang/String; = "event"


# instance fields
.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:I

.field private X:Landroid/os/Handler;

.field private Y:J

.field private Z:J

.field protected a:Landroid/content/Context;

.field private aa:Lcn/domob/android/ads/l;

.field private ab:I

.field protected b:Landroid/content/Context;

.field protected c:Ljava/lang/String;

.field protected d:Lcn/domob/android/ads/DomobAdView;

.field protected e:Lcn/domob/android/ads/j;

.field protected f:Lcn/domob/android/ads/g$b;

.field protected g:Lcn/domob/android/ads/n;

.field protected h:Lcn/domob/android/h/a;

.field protected i:Z

.field protected j:Z

.field protected k:Z

.field protected l:Lcn/domob/android/ads/g$a;

.field protected m:Lcn/domob/android/ads/g$c;

.field protected n:Lcn/domob/android/ads/g$d;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 47
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/g;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/g;->J:Lcn/domob/android/i/f;

    return-void
.end method

.method public constructor <init>(Lcn/domob/android/ads/DomobAdView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v2, p0, Lcn/domob/android/ads/g;->K:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcn/domob/android/ads/g;->c:Ljava/lang/String;

    .line 56
    iput-object v2, p0, Lcn/domob/android/ads/g;->L:Ljava/lang/String;

    .line 58
    iput-object v2, p0, Lcn/domob/android/ads/g;->N:Ljava/lang/String;

    .line 59
    iput-object v2, p0, Lcn/domob/android/ads/g;->O:Ljava/lang/String;

    .line 60
    iput-object v2, p0, Lcn/domob/android/ads/g;->P:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/g;->Q:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/g;->R:Ljava/lang/String;

    .line 66
    iput-boolean v3, p0, Lcn/domob/android/ads/g;->S:Z

    .line 67
    iput-boolean v1, p0, Lcn/domob/android/ads/g;->T:Z

    .line 68
    iput-boolean v1, p0, Lcn/domob/android/ads/g;->U:Z

    .line 69
    iput-boolean v3, p0, Lcn/domob/android/ads/g;->V:Z

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/domob/android/ads/g;->X:Landroid/os/Handler;

    .line 72
    iput-wide v4, p0, Lcn/domob/android/ads/g;->Y:J

    .line 73
    iput-wide v4, p0, Lcn/domob/android/ads/g;->Z:J

    .line 78
    iput v3, p0, Lcn/domob/android/ads/g;->ab:I

    .line 79
    iput-object v2, p0, Lcn/domob/android/ads/g;->d:Lcn/domob/android/ads/DomobAdView;

    .line 80
    iput-object v2, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/j;

    .line 81
    new-instance v0, Lcn/domob/android/ads/g$b;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/g$b;-><init>(Lcn/domob/android/ads/g;)V

    iput-object v0, p0, Lcn/domob/android/ads/g;->f:Lcn/domob/android/ads/g$b;

    .line 85
    iput-boolean v3, p0, Lcn/domob/android/ads/g;->i:Z

    .line 86
    iput-boolean v3, p0, Lcn/domob/android/ads/g;->j:Z

    .line 87
    iput-boolean v3, p0, Lcn/domob/android/ads/g;->k:Z

    .line 88
    sget-object v0, Lcn/domob/android/ads/g$a;->a:Lcn/domob/android/ads/g$a;

    iput-object v0, p0, Lcn/domob/android/ads/g;->l:Lcn/domob/android/ads/g$a;

    .line 89
    sget-object v0, Lcn/domob/android/ads/g$c;->c:Lcn/domob/android/ads/g$c;

    iput-object v0, p0, Lcn/domob/android/ads/g;->m:Lcn/domob/android/ads/g$c;

    .line 90
    sget-object v0, Lcn/domob/android/ads/g$d;->c:Lcn/domob/android/ads/g$d;

    iput-object v0, p0, Lcn/domob/android/ads/g;->n:Lcn/domob/android/ads/g$d;

    .line 128
    sget-object v0, Lcn/domob/android/ads/g;->J:Lcn/domob/android/i/f;

    const-string v1, "Init DomobAdController."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcn/domob/android/i/f;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current SDK version is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcn/domob/android/ads/c/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " built at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcn/domob/android/ads/c/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-eqz p1, :cond_93

    .line 134
    iput-object p1, p0, Lcn/domob/android/ads/g;->d:Lcn/domob/android/ads/DomobAdView;

    .line 135
    invoke-virtual {p1}, Lcn/domob/android/ads/DomobAdView;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    .line 136
    iget-object v0, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    iput-object v0, p0, Lcn/domob/android/ads/g;->b:Landroid/content/Context;

    .line 138
    :cond_93
    iput-object p2, p0, Lcn/domob/android/ads/g;->K:Ljava/lang/String;

    .line 139
    iput-object p3, p0, Lcn/domob/android/ads/g;->c:Ljava/lang/String;

    .line 140
    if-nez p2, :cond_a5

    .line 141
    invoke-static {}, Lcn/domob/android/ads/h;->a()Lcn/domob/android/ads/h;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/g;->K:Ljava/lang/String;

    .line 143
    :cond_a5
    invoke-static {}, Lcn/domob/android/ads/h;->a()Lcn/domob/android/ads/h;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/g;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/h;->b(Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcn/domob/android/i/f;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current placementID is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/g;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-direct {p0}, Lcn/domob/android/ads/g;->J()V

    .line 148
    invoke-direct {p0}, Lcn/domob/android/ads/g;->K()V

    .line 150
    iget-object v0, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lcn/domob/android/ads/e;->a(Landroid/content/Context;Lcn/domob/android/ads/e$a;)V

    .line 152
    new-instance v0, Lcn/domob/android/ads/l;

    invoke-direct {v0, p0, p1}, Lcn/domob/android/ads/l;-><init>(Lcn/domob/android/ads/g;Lcn/domob/android/ads/m;)V

    iput-object v0, p0, Lcn/domob/android/ads/g;->aa:Lcn/domob/android/ads/l;

    .line 153
    new-instance v0, Lcn/domob/android/h/a;

    iget-object v1, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/g;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcn/domob/android/h/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/ads/g;->h:Lcn/domob/android/h/a;

    .line 154
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v2, p0, Lcn/domob/android/ads/g;->K:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcn/domob/android/ads/g;->c:Ljava/lang/String;

    .line 56
    iput-object v2, p0, Lcn/domob/android/ads/g;->L:Ljava/lang/String;

    .line 58
    iput-object v2, p0, Lcn/domob/android/ads/g;->N:Ljava/lang/String;

    .line 59
    iput-object v2, p0, Lcn/domob/android/ads/g;->O:Ljava/lang/String;

    .line 60
    iput-object v2, p0, Lcn/domob/android/ads/g;->P:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/g;->Q:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/g;->R:Ljava/lang/String;

    .line 66
    iput-boolean v3, p0, Lcn/domob/android/ads/g;->S:Z

    .line 67
    iput-boolean v1, p0, Lcn/domob/android/ads/g;->T:Z

    .line 68
    iput-boolean v1, p0, Lcn/domob/android/ads/g;->U:Z

    .line 69
    iput-boolean v3, p0, Lcn/domob/android/ads/g;->V:Z

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/domob/android/ads/g;->X:Landroid/os/Handler;

    .line 72
    iput-wide v4, p0, Lcn/domob/android/ads/g;->Y:J

    .line 73
    iput-wide v4, p0, Lcn/domob/android/ads/g;->Z:J

    .line 78
    iput v3, p0, Lcn/domob/android/ads/g;->ab:I

    .line 79
    iput-object v2, p0, Lcn/domob/android/ads/g;->d:Lcn/domob/android/ads/DomobAdView;

    .line 80
    iput-object v2, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/j;

    .line 81
    new-instance v0, Lcn/domob/android/ads/g$b;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/g$b;-><init>(Lcn/domob/android/ads/g;)V

    iput-object v0, p0, Lcn/domob/android/ads/g;->f:Lcn/domob/android/ads/g$b;

    .line 85
    iput-boolean v3, p0, Lcn/domob/android/ads/g;->i:Z

    .line 86
    iput-boolean v3, p0, Lcn/domob/android/ads/g;->j:Z

    .line 87
    iput-boolean v3, p0, Lcn/domob/android/ads/g;->k:Z

    .line 88
    sget-object v0, Lcn/domob/android/ads/g$a;->a:Lcn/domob/android/ads/g$a;

    iput-object v0, p0, Lcn/domob/android/ads/g;->l:Lcn/domob/android/ads/g$a;

    .line 89
    sget-object v0, Lcn/domob/android/ads/g$c;->c:Lcn/domob/android/ads/g$c;

    iput-object v0, p0, Lcn/domob/android/ads/g;->m:Lcn/domob/android/ads/g$c;

    .line 90
    sget-object v0, Lcn/domob/android/ads/g$d;->c:Lcn/domob/android/ads/g$d;

    iput-object v0, p0, Lcn/domob/android/ads/g;->n:Lcn/domob/android/ads/g$d;

    .line 157
    sget-object v0, Lcn/domob/android/ads/g;->J:Lcn/domob/android/i/f;

    const-string v1, "Init DomobAdController."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 159
    iput-object p1, p0, Lcn/domob/android/ads/g;->K:Ljava/lang/String;

    .line 160
    if-nez p1, :cond_69

    .line 161
    invoke-static {}, Lcn/domob/android/ads/h;->a()Lcn/domob/android/ads/h;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/g;->K:Ljava/lang/String;

    .line 163
    :cond_69
    invoke-static {}, Lcn/domob/android/ads/h;->a()Lcn/domob/android/ads/h;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/g;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/h;->b(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method private J()V
    .registers 5

    .prologue
    .line 169
    invoke-static {}, Lcn/domob/android/ads/h;->a()Lcn/domob/android/ads/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/h;->e()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 170
    new-instance v0, Lcn/domob/android/ads/c/a;

    iget-object v1, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    const-string v2, "domob_config"

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 171
    const-string v1, "version"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    const-string v2, "config"

    const-string v3, "{\"com.admogo.AdMogoLayout\":\"1\",\"com.guohead.sdk.GHView\":\"2\",\"com.adview.AdViewLayout\":\"3\",\"appfactory.cn.adplatform.AdSageLayout\":\"4\"}"

    invoke-virtual {v0, v2, v3}, Lcn/domob/android/ads/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {}, Lcn/domob/android/ads/h;->a()Lcn/domob/android/ads/h;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcn/domob/android/ads/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_2a
    return-void
.end method

.method private K()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 179
    new-instance v0, Lcn/domob/android/ads/c/a;

    iget-object v1, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    const-string v2, "domob_config"

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcn/domob/android/ads/h;->a()Lcn/domob/android/ads/h;

    move-result-object v1

    const-string v2, "cookie_id"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcn/domob/android/ads/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/h;->c(Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcn/domob/android/ads/h;->a()Lcn/domob/android/ads/h;

    move-result-object v1

    const-string v2, "disable"

    invoke-virtual {v0, v2, v6}, Lcn/domob/android/ads/c/a;->a(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "timestamp"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcn/domob/android/ads/c/a;->a(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v3, "time"

    invoke-virtual {v0, v3, v6}, Lcn/domob/android/ads/c/a;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v4, v5, v3}, Lcn/domob/android/ads/h;->a(ZJI)V

    .line 184
    const-string v1, "interval"

    const/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/c/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/g;->W:I

    .line 185
    return-void
.end method

.method private L()V
    .registers 9

    .prologue
    const/16 v3, 0x1388

    .line 655
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 657
    iget-object v1, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/j;

    invoke-virtual {v1}, Lcn/domob/android/ads/j;->c()Ljava/lang/String;

    move-result-object v1

    .line 658
    if-eqz v1, :cond_1b

    .line 659
    const-string v2, "cookie_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    invoke-static {}, Lcn/domob/android/ads/h;->a()Lcn/domob/android/ads/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/h;->c(Ljava/lang/String;)V

    .line 664
    :cond_1b
    iget-object v1, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/j;

    invoke-virtual {v1}, Lcn/domob/android/ads/j;->f()Lcn/domob/android/ads/j$a;

    move-result-object v1

    if-eqz v1, :cond_f8

    .line 672
    iget-object v1, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/j;

    invoke-virtual {v1}, Lcn/domob/android/ads/j;->f()Lcn/domob/android/ads/j$a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j$a;->d()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 673
    iget-object v1, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/j;

    invoke-virtual {v1}, Lcn/domob/android/ads/j;->f()Lcn/domob/android/ads/j$a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j$a;->a()I

    move-result v1

    .line 674
    mul-int/lit16 v1, v1, 0x3e8

    .line 676
    if-gtz v1, :cond_10b

    .line 677
    const/4 v1, 0x0

    iput v1, p0, Lcn/domob/android/ads/g;->W:I

    .line 684
    :cond_40
    :goto_40
    const-string v1, "interval"

    iget v2, p0, Lcn/domob/android/ads/g;->W:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    :cond_4b
    iget-object v1, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/j;

    invoke-virtual {v1}, Lcn/domob/android/ads/j;->f()Lcn/domob/android/ads/j$a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j$a;->b()Z

    move-result v1

    .line 688
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 689
    iget-object v4, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/j;

    invoke-virtual {v4}, Lcn/domob/android/ads/j;->f()Lcn/domob/android/ads/j$a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/domob/android/ads/j$a;->c()I

    move-result v4

    .line 690
    const-string v5, "timestamp"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    const-string v5, "disable"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    const-string v5, "time"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    sget-object v5, Lcn/domob/android/ads/g;->J:Lcn/domob/android/i/f;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disable time stamp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p0, v6}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 694
    sget-object v5, Lcn/domob/android/ads/g;->J:Lcn/domob/android/i/f;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disable time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p0, v6}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 695
    invoke-static {}, Lcn/domob/android/ads/h;->a()Lcn/domob/android/ads/h;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v3, v4}, Lcn/domob/android/ads/h;->a(ZJI)V

    .line 698
    iget-object v1, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/j;

    invoke-virtual {v1}, Lcn/domob/android/ads/j;->f()Lcn/domob/android/ads/j$a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j$a;->e()Ljava/lang/String;

    move-result-object v1

    .line 699
    iget-object v2, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/j;

    invoke-virtual {v2}, Lcn/domob/android/ads/j;->f()Lcn/domob/android/ads/j$a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/j$a;->f()Ljava/lang/String;

    move-result-object v2

    .line 700
    invoke-static {}, Lcn/domob/android/ads/h;->a()Lcn/domob/android/ads/h;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcn/domob/android/ads/h;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f8

    .line 701
    const-string v3, "version"

    iget-object v4, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/j;

    invoke-virtual {v4}, Lcn/domob/android/ads/j;->f()Lcn/domob/android/ads/j$a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/domob/android/ads/j$a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    const-string v3, "config"

    iget-object v4, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/j;

    invoke-virtual {v4}, Lcn/domob/android/ads/j;->f()Lcn/domob/android/ads/j$a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/domob/android/ads/j$a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    invoke-static {}, Lcn/domob/android/ads/h;->a()Lcn/domob/android/ads/h;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcn/domob/android/ads/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    :cond_f8
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10a

    .line 708
    new-instance v1, Lcn/domob/android/ads/c/a;

    iget-object v2, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    const-string v3, "domob_config"

    invoke-direct {v1, v2, v3}, Lcn/domob/android/ads/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 709
    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/a;->a(Ljava/util/HashMap;)V

    .line 711
    :cond_10a
    return-void

    .line 678
    :cond_10b
    if-lez v1, :cond_113

    if-ge v1, v3, :cond_113

    .line 679
    iput v3, p0, Lcn/domob/android/ads/g;->W:I

    goto/16 :goto_40

    .line 680
    :cond_113
    if-lt v1, v3, :cond_40

    .line 681
    iput v1, p0, Lcn/domob/android/ads/g;->W:I

    goto/16 :goto_40
.end method

.method private M()V
    .registers 3

    .prologue
    .line 715
    iget-object v0, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/j;

    invoke-virtual {v0}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/j$c;->C()Ljava/lang/String;

    move-result-object v0

    .line 716
    iget-object v1, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcn/domob/android/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 717
    invoke-static {}, Lcn/domob/android/ads/h;->a()Lcn/domob/android/ads/h;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/j;

    invoke-virtual {v1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/h;->d(Ljava/lang/String;)V

    .line 719
    :cond_23
    return-void
.end method

.method private N()Z
    .registers 3

    .prologue
    .line 803
    invoke-virtual {p0}, Lcn/domob/android/ads/g;->o()I

    move-result v0

    sget-object v1, Lcn/domob/android/ads/DomobAdView$a;->d:Lcn/domob/android/ads/DomobAdView$a;

    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdView$a;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_18

    invoke-virtual {p0}, Lcn/domob/android/ads/g;->o()I

    move-result v0

    sget-object v1, Lcn/domob/android/ads/DomobAdView$a;->e:Lcn/domob/android/ads/DomobAdView$a;

    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdView$a;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private O()V
    .registers 5

    .prologue
    .line 819
    iget-object v0, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/i/c;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 820
    new-instance v0, Lcn/domob/android/g/a/a;

    invoke-direct {p0}, Lcn/domob/android/ads/g;->P()Lcn/domob/android/g/a/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/g/a/a;-><init>(Lcn/domob/android/g/a/e;)V

    .line 821
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/domob/android/g/a/a;->a(Z)V

    .line 822
    invoke-virtual {p0}, Lcn/domob/android/ads/g;->o()I

    move-result v1

    sget-object v2, Lcn/domob/android/ads/DomobAdView$a;->e:Lcn/domob/android/ads/DomobAdView$a;

    invoke-virtual {v2}, Lcn/domob/android/ads/DomobAdView$a;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_25

    .line 823
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/domob/android/g/a/a;->b(Z)V

    .line 825
    :cond_25
    sget-object v1, Lcn/domob/android/ads/b;->x:[Ljava/lang/String;

    iget-object v2, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    new-instance v3, Lcn/domob/android/ads/g$1;

    invoke-direct {v3, p0}, Lcn/domob/android/ads/g$1;-><init>(Lcn/domob/android/ads/g;)V

    invoke-virtual {v0, v1, v2, v3}, Lcn/domob/android/g/a/a;->a([Ljava/lang/String;Landroid/content/Context;Lcn/domob/android/g/a/a$b;)V

    .line 848
    :cond_31
    :goto_31
    return-void

    .line 844
    :cond_32
    invoke-direct {p0}, Lcn/domob/android/ads/g;->N()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 845
    sget-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->NETWORK_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    goto :goto_31
.end method

.method private P()Lcn/domob/android/g/a/e;
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 877
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 878
    const-string v0, "%s-%s-%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "20141125"

    aput-object v5, v2, v4

    const-string v4, "android"

    aput-object v4, v2, v6

    const/4 v4, 0x2

    const-string v5, "20140529"

    aput-object v5, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 879
    const-string v5, "040602"

    .line 881
    iget-object v0, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/b/a;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 882
    if-eqz v0, :cond_82

    .line 883
    const-string v2, "d!j@d#g$r%s^j&h*"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/domob/android/i/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 886
    :goto_31
    iget-object v2, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 887
    if-eqz v2, :cond_80

    .line 888
    const-string v6, "d!j@d#g$r%s^j&h*"

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcn/domob/android/i/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 891
    :goto_43
    iget-object v6, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    invoke-static {v6}, Lcn/domob/android/b/a;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 892
    if-eqz v6, :cond_51

    .line 893
    const-string v1, "d!j@d#g$r%s^j&h*"

    invoke-static {v1, v6}, Lcn/domob/android/i/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 895
    :cond_51
    iget-object v6, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    invoke-static {v6}, Lcn/domob/android/b/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 896
    invoke-virtual {p0}, Lcn/domob/android/ads/g;->m()Ljava/lang/String;

    move-result-object v7

    .line 897
    invoke-virtual {p0}, Lcn/domob/android/ads/g;->n()Ljava/lang/String;

    move-result-object v8

    .line 898
    new-instance v9, Lcn/domob/android/g/a/e;

    invoke-direct {v9}, Lcn/domob/android/g/a/e;-><init>()V

    .line 899
    invoke-virtual {v9, v2}, Lcn/domob/android/g/a/e;->e(Ljava/lang/String;)V

    .line 900
    invoke-virtual {v9, v0}, Lcn/domob/android/g/a/e;->d(Ljava/lang/String;)V

    .line 901
    invoke-virtual {v9, v1}, Lcn/domob/android/g/a/e;->f(Ljava/lang/String;)V

    .line 902
    invoke-virtual {v9, v6}, Lcn/domob/android/g/a/e;->g(Ljava/lang/String;)V

    .line 903
    invoke-virtual {v9, v7}, Lcn/domob/android/g/a/e;->h(Ljava/lang/String;)V

    .line 904
    invoke-virtual {v9, v8}, Lcn/domob/android/g/a/e;->i(Ljava/lang/String;)V

    .line 905
    invoke-virtual {v9, v4}, Lcn/domob/android/g/a/e;->b(Ljava/lang/String;)V

    .line 906
    invoke-virtual {v9, v3}, Lcn/domob/android/g/a/e;->a(Ljava/lang/String;)V

    .line 907
    invoke-virtual {v9, v5}, Lcn/domob/android/g/a/e;->c(Ljava/lang/String;)V

    .line 908
    return-object v9

    :cond_80
    move-object v2, v1

    goto :goto_43

    :cond_82
    move-object v0, v1

    goto :goto_31
.end method

.method private a(Ljava/lang/String;Lcn/domob/android/ads/q;)V
    .registers 9

    .prologue
    .line 1017
    new-instance v0, Lcn/domob/android/ads/w;

    iget-object v1, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/g;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1018
    new-instance v4, Lcn/domob/android/ads/w$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lcn/domob/android/ads/w$c;-><init>(Lcn/domob/android/ads/w;)V

    .line 1019
    invoke-virtual {p2}, Lcn/domob/android/ads/q;->a()Lcn/domob/android/ads/j;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->r()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcn/domob/android/ads/w$c;->a:Ljava/lang/String;

    .line 1020
    invoke-virtual {p2}, Lcn/domob/android/ads/q;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcn/domob/android/ads/w$c;->d:Ljava/lang/String;

    .line 1021
    invoke-virtual {p2}, Lcn/domob/android/ads/q;->d()I

    move-result v1

    iput v1, v4, Lcn/domob/android/ads/w$c;->e:I

    .line 1022
    invoke-virtual {p2}, Lcn/domob/android/ads/q;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcn/domob/android/ads/w$c;->f:Ljava/lang/String;

    .line 1023
    invoke-virtual {p2}, Lcn/domob/android/ads/q;->a()Lcn/domob/android/ads/j;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->q()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/domob/android/ads/w$h;->b:Lcn/domob/android/ads/w$h;

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/w;->a(Ljava/lang/String;Lcn/domob/android/ads/w$h;Ljava/lang/String;Lcn/domob/android/ads/w$c;Ljava/util/HashMap;)V

    .line 1025
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 11

    .prologue
    .line 974
    new-instance v0, Lcn/domob/android/ads/w;

    iget-object v1, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/g;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 975
    new-instance v4, Lcn/domob/android/ads/w$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lcn/domob/android/ads/w$c;-><init>(Lcn/domob/android/ads/w;)V

    .line 976
    iput-object p2, v4, Lcn/domob/android/ads/w$c;->d:Ljava/lang/String;

    .line 977
    iput p3, v4, Lcn/domob/android/ads/w$c;->e:I

    .line 978
    iput-object p4, v4, Lcn/domob/android/ads/w$c;->f:Ljava/lang/String;

    .line 980
    const-string v1, "http://e.domob.cn/event_report"

    sget-object v2, Lcn/domob/android/ads/w$h;->e:Lcn/domob/android/ads/w$h;

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/w;->a(Ljava/lang/String;Lcn/domob/android/ads/w$h;Ljava/lang/String;Lcn/domob/android/ads/w$c;Ljava/util/HashMap;)V

    .line 981
    return-void
.end method

.method private b(Lcn/domob/android/ads/j;I)V
    .registers 11

    .prologue
    .line 744
    if-eqz p1, :cond_95

    .line 745
    iput-object p1, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/j;

    .line 746
    invoke-direct {p0}, Lcn/domob/android/ads/g;->L()V

    .line 747
    invoke-virtual {p1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 748
    iget-object v0, p0, Lcn/domob/android/ads/g;->aa:Lcn/domob/android/ads/l;

    iget-object v1, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/j;

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/l;->a(Landroid/content/Context;Lcn/domob/android/ads/j;)V

    .line 749
    invoke-direct {p0}, Lcn/domob/android/ads/g;->M()V

    .line 750
    sget-object v0, Lcn/domob/android/ads/g;->J:Lcn/domob/android/i/f;

    const-string v1, "Get ad response successfully."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 796
    :cond_20
    :goto_20
    return-void

    .line 752
    :cond_21
    invoke-virtual {p1}, Lcn/domob/android/ads/j;->e()Lcn/domob/android/ads/j$d;

    move-result-object v0

    if-eqz v0, :cond_7f

    .line 753
    invoke-virtual {p1}, Lcn/domob/android/ads/j;->e()Lcn/domob/android/ads/j$d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/j$d;->b()Ljava/lang/String;

    move-result-object v0

    .line 754
    invoke-virtual {p1}, Lcn/domob/android/ads/j;->e()Lcn/domob/android/ads/j$d;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j$d;->a()I

    move-result v1

    .line 755
    invoke-virtual {p1}, Lcn/domob/android/ads/j;->b()Ljava/lang/String;

    move-result-object v2

    .line 756
    const-string v3, "DomobSDK"

    const-string v4, "Response contains error info. Error code is [%d-%s] and error content is [%s]"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v2, 0x2

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    div-int/lit16 v0, v1, 0x3e8

    packed-switch v0, :pswitch_data_b6

    .line 776
    :goto_5b
    sget-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    goto :goto_20

    .line 762
    :pswitch_61
    sget-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    goto :goto_20

    .line 765
    :pswitch_67
    sget-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    goto :goto_20

    .line 768
    :pswitch_6d
    sget-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INVALID_REQUEST:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    goto :goto_20

    .line 771
    :pswitch_73
    sget-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->NO_FILL:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    goto :goto_20

    .line 774
    :pswitch_79
    sget-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    goto :goto_5b

    .line 781
    :cond_7f
    invoke-direct {p0}, Lcn/domob/android/ads/g;->O()V

    .line 782
    invoke-direct {p0}, Lcn/domob/android/ads/g;->N()Z

    move-result v0

    if-nez v0, :cond_20

    .line 783
    sget-object v0, Lcn/domob/android/ads/g;->J:Lcn/domob/android/i/f;

    const-string v1, "Unexpected resp, Try to request again after refresh interval."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 784
    sget-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    goto :goto_20

    .line 789
    :cond_95
    invoke-direct {p0}, Lcn/domob/android/ads/g;->O()V

    .line 790
    invoke-direct {p0}, Lcn/domob/android/ads/g;->N()Z

    move-result v0

    if-nez v0, :cond_20

    .line 791
    invoke-static {}, Lcn/domob/android/i/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connection Error. Please make sure that your network is available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    sget-object v0, Lcn/domob/android/ads/g;->J:Lcn/domob/android/i/f;

    const-string v1, "AdResponse instance is null. Try to request again after refresh interval."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 793
    sget-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->NETWORK_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    goto/16 :goto_20

    .line 760
    nop

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_61
        :pswitch_67
        :pswitch_6d
        :pswitch_73
        :pswitch_79
    .end packed-switch
.end method

.method static synthetic b(Lcn/domob/android/ads/g;)Z
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Lcn/domob/android/ads/g;->N()Z

    move-result v0

    return v0
.end method

.method private k(Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 985
    new-instance v0, Lcn/domob/android/ads/w;

    iget-object v1, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/g;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 986
    iget-object v1, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/j;

    invoke-virtual {v1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->q()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/domob/android/ads/w$h;->g:Lcn/domob/android/ads/w$h;

    move-object v3, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/w;->a(Ljava/lang/String;Lcn/domob/android/ads/w$h;Ljava/lang/String;Lcn/domob/android/ads/w$c;Ljava/util/HashMap;)V

    .line 988
    return-void
.end method


# virtual methods
.method protected A()Z
    .registers 2

    .prologue
    .line 492
    iget-boolean v0, p0, Lcn/domob/android/ads/g;->S:Z

    return v0
.end method

.method protected B()Lcn/domob/android/ads/j;
    .registers 2

    .prologue
    .line 512
    iget-object v0, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/j;

    return-object v0
.end method

.method protected C()V
    .registers 3

    .prologue
    .line 517
    .line 522
    :try_start_0
    sget-boolean v0, Lcn/domob/android/ads/o;->a:Z

    if-nez v0, :cond_14

    .line 523
    sget-object v0, Lcn/domob/android/ads/g;->J:Lcn/domob/android/i/f;

    const-string v1, "Start to load config request"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 524
    new-instance v0, Lcn/domob/android/ads/o;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/o;-><init>(Lcn/domob/android/ads/g;)V

    invoke-virtual {v0}, Lcn/domob/android/ads/o;->a()V

    .line 544
    :goto_13
    return-void

    .line 526
    :cond_14
    invoke-virtual {p0, p0}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/g;)V
    :try_end_17
    .catch Lcn/domob/android/d/a; {:try_start_0 .. :try_end_17} :catch_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_21

    goto :goto_13

    .line 530
    :catch_18
    move-exception v0

    .line 532
    sget-object v0, Lcn/domob/android/ads/g;->J:Lcn/domob/android/i/f;

    const-string v1, "Config request is ongoing, ignore this time"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    goto :goto_13

    .line 535
    :catch_21
    move-exception v0

    .line 536
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method protected D()V
    .registers 3

    .prologue
    .line 637
    invoke-static {}, Lcn/domob/android/ads/J;->a()Lcn/domob/android/ads/J;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcn/domob/android/ads/J;->a(Landroid/content/Context;Lcn/domob/android/ads/g;)V

    .line 638
    invoke-virtual {p0}, Lcn/domob/android/ads/g;->E()V

    .line 639
    return-void
.end method

.method protected E()V
    .registers 2

    .prologue
    .line 645
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/g;->S:Z

    .line 646
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/g;->V:Z

    .line 647
    sget-object v0, Lcn/domob/android/ads/g$c;->c:Lcn/domob/android/ads/g$c;

    iput-object v0, p0, Lcn/domob/android/ads/g;->m:Lcn/domob/android/ads/g$c;

    .line 648
    invoke-virtual {p0}, Lcn/domob/android/ads/g;->a()V

    .line 649
    return-void
.end method

.method public F()V
    .registers 5

    .prologue
    .line 722
    iget-object v0, p0, Lcn/domob/android/ads/g;->Q:Ljava/lang/String;

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcn/domob/android/ads/g;->Q:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 723
    const-string v0, ""

    .line 724
    iget-object v0, p0, Lcn/domob/android/ads/g;->R:Ljava/lang/String;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcn/domob/android/ads/g;->R:Ljava/lang/String;

    const-string v1, "mraid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 725
    const-string v0, "mraid"

    .line 728
    :goto_20
    sget-object v1, Lcn/domob/android/ads/g;->J:Lcn/domob/android/i/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gen fake ad response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 729
    const-string v1, "{\"sid\":\"search_id\",\"cid\":\"cookie_id\",\"ad\":{\"id\":\"12345\",\"format\":\"%s\",\"ct\":\"url\",\"width\":320,\"height\":50,\"url\":\"%s\",\"content\":\"\",\"base_url\":\"\",\"click_tracker\":\"\",\"imp_tracker\":\"h\",\"event_tracker\":\"\",\"tracker\":\"8ewfqd8ffqwer1325effff342f3444\",\"animation\":1,\"o\":\"h\",\"cls_btn\":0,\"imp_min\":5,\"imp_cls\":8,\"cache\":1440,\"pkg\":\"cn.domob.android.rm.demo\",\"mz_click_tracker\":\"\",\"mz_imp_tracker\":\"\"},\"control\":{\"refresh\":20,\"disable\":false,\"dis_time\":30,\"location\":true,\"ors\":{\"version\":\"2\",\"config\":{\"com.admogo.AdMogoLayout\":\"1\",\"com.guohead.sdk.GHView\":\"2\",\"com.adview.AdViewLayout\":\"3\",\"appfactory.cn.adplatform.AdSageLayout\":\"4\",\"cn.domob.test\":\"5\"}}}}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, Lcn/domob/android/ads/g;->Q:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 730
    invoke-static {v0}, Lcn/domob/android/ads/j;->a(Ljava/lang/String;)Lcn/domob/android/ads/j;

    move-result-object v0

    .line 731
    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/j;I)V

    .line 736
    :goto_52
    return-void

    .line 727
    :cond_53
    const-string v0, "domob"

    goto :goto_20

    .line 734
    :cond_56
    invoke-virtual {p0}, Lcn/domob/android/ads/g;->C()V

    goto :goto_52
.end method

.method public G()Z
    .registers 3

    .prologue
    .line 811
    invoke-virtual {p0}, Lcn/domob/android/ads/g;->o()I

    move-result v0

    sget-object v1, Lcn/domob/android/ads/DomobAdView$a;->c:Lcn/domob/android/ads/DomobAdView$a;

    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdView$a;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected H()V
    .registers 2

    .prologue
    .line 1078
    new-instance v0, Lcn/domob/android/ads/g$4;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/g$4;-><init>(Lcn/domob/android/ads/g;)V

    invoke-static {v0}, La/a/a/a/a/a;->a(La/a/a/a/a/a$b;)V

    .line 1116
    return-void
.end method

.method protected I()I
    .registers 2

    .prologue
    .line 1148
    iget v0, p0, Lcn/domob/android/ads/g;->ab:I

    return v0
.end method

.method protected a()V
    .registers 5

    .prologue
    .line 198
    iget-object v0, p0, Lcn/domob/android/ads/g;->m:Lcn/domob/android/ads/g$c;

    sget-object v1, Lcn/domob/android/ads/g$c;->a:Lcn/domob/android/ads/g$c;

    if-ne v0, v1, :cond_7

    .line 216
    :cond_6
    :goto_6
    return-void

    .line 202
    :cond_7
    iget-object v0, p0, Lcn/domob/android/ads/g;->l:Lcn/domob/android/ads/g$a;

    sget-object v1, Lcn/domob/android/ads/g$a;->a:Lcn/domob/android/ads/g$a;

    if-ne v0, v1, :cond_4d

    .line 203
    iget-boolean v0, p0, Lcn/domob/android/ads/g;->T:Z

    if-eqz v0, :cond_6

    .line 204
    sget-object v0, Lcn/domob/android/ads/g;->J:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start schedule new request. Refresh interval is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/domob/android/ads/g;->W:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 205
    iget v0, p0, Lcn/domob/android/ads/g;->W:I

    if-nez v0, :cond_37

    .line 206
    sget-object v0, Lcn/domob/android/ads/g;->J:Lcn/domob/android/i/f;

    const-string v1, "AdView is auto refreshable but interval from ad response is 0. DON\'T SCHEDULE."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    goto :goto_6

    .line 208
    :cond_37
    iget-object v0, p0, Lcn/domob/android/ads/g;->X:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/g;->f:Lcn/domob/android/ads/g$b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 209
    iget-object v0, p0, Lcn/domob/android/ads/g;->X:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/g;->f:Lcn/domob/android/ads/g$b;

    iget v2, p0, Lcn/domob/android/ads/g;->W:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 210
    sget-object v0, Lcn/domob/android/ads/g$c;->a:Lcn/domob/android/ads/g$c;

    iput-object v0, p0, Lcn/domob/android/ads/g;->m:Lcn/domob/android/ads/g$c;

    goto :goto_6

    .line 213
    :cond_4d
    iget-object v0, p0, Lcn/domob/android/ads/g;->l:Lcn/domob/android/ads/g$a;

    sget-object v1, Lcn/domob/android/ads/g$a;->b:Lcn/domob/android/ads/g$a;

    if-ne v0, v1, :cond_6

    .line 214
    sget-object v0, Lcn/domob/android/ads/g;->J:Lcn/domob/android/i/f;

    const-string v1, "AdView is expanding, cancel current \'start()\'."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    goto :goto_6
.end method

.method protected a(I)V
    .registers 2

    .prologue
    .line 474
    iput p1, p0, Lcn/domob/android/ads/g;->W:I

    .line 475
    return-void
.end method

.method protected a(J)V
    .registers 6

    .prologue
    .line 505
    sget-object v0, Lcn/domob/android/ads/g$d;->a:Lcn/domob/android/ads/g$d;

    iput-object v0, p0, Lcn/domob/android/ads/g;->n:Lcn/domob/android/ads/g$d;

    .line 506
    iput-wide p1, p0, Lcn/domob/android/ads/g;->Y:J

    .line 507
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/domob/android/ads/g;->Z:J

    .line 508
    sget-object v0, Lcn/domob/android/ads/g;->J:Lcn/domob/android/i/f;

    const-string v1, "init timing"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 509
    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 1031
    new-instance v0, Lcn/domob/android/ads/g$3;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/g$3;-><init>(Lcn/domob/android/ads/g;)V

    invoke-static {p1, v0}, La/a/a/a/a/a;->a(Landroid/content/Context;La/a/a/a/a/a$a;)V

    .line 1075
    return-void
.end method

.method protected a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V
    .registers 4

    .prologue
    .line 854
    sget-object v0, Lcn/domob/android/ads/g;->J:Lcn/domob/android/i/f;

    const-string v1, "FAILED to load AD."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 855
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/g;->V:Z

    .line 856
    invoke-virtual {p0}, Lcn/domob/android/ads/g;->a()V

    .line 858
    iget-object v0, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/android/ads/g$2;

    invoke-direct {v1, p0, p1}, Lcn/domob/android/ads/g$2;-><init>(Lcn/domob/android/ads/g;Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 870
    return-void
.end method

.method protected a(Lcn/domob/android/ads/g$a;)V
    .registers 2

    .prologue
    .line 400
    iput-object p1, p0, Lcn/domob/android/ads/g;->l:Lcn/domob/android/ads/g$a;

    .line 401
    return-void
.end method

.method public a(Lcn/domob/android/ads/g;)V
    .registers 8

    .prologue
    .line 548
    invoke-static {}, Lcn/domob/android/ads/h;->a()Lcn/domob/android/ads/h;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 549
    iget-boolean v0, p0, Lcn/domob/android/ads/g;->V:Z

    if-nez v0, :cond_26

    .line 550
    invoke-virtual {p1}, Lcn/domob/android/ads/g;->b()V

    .line 551
    sget-object v0, Lcn/domob/android/ads/g;->J:Lcn/domob/android/i/f;

    const-string v1, "Load after schedule request."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 552
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/g;->V:Z

    .line 553
    new-instance v0, Lcn/domob/android/ads/i;

    invoke-direct {v0, p1}, Lcn/domob/android/ads/i;-><init>(Lcn/domob/android/ads/g;)V

    invoke-virtual {v0}, Lcn/domob/android/ads/i;->a()V

    .line 561
    :goto_25
    return-void

    .line 555
    :cond_26
    sget-object v0, Lcn/domob/android/ads/g;->J:Lcn/domob/android/i/f;

    const-string v1, "An ad is requesting."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->d(Ljava/lang/String;)V

    goto :goto_25

    .line 558
    :cond_2e
    sget-object v0, Lcn/domob/android/ads/g;->J:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad has been disabled currently. Disable expire time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Lcn/domob/android/ads/h;->a()Lcn/domob/android/ads/h;

    move-result-object v3

    invoke-virtual {v3}, Lcn/domob/android/ads/h;->c()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->d(Ljava/lang/String;)V

    goto :goto_25
.end method

.method public a(Lcn/domob/android/ads/j;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 565
    invoke-virtual {p0, p1, v0, v0}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/j;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 566
    return-void
.end method

.method public a(Lcn/domob/android/ads/j;I)V
    .registers 3

    .prologue
    .line 740
    invoke-direct {p0, p1, p2}, Lcn/domob/android/ads/g;->b(Lcn/domob/android/ads/j;I)V

    .line 741
    return-void
.end method

.method protected a(Lcn/domob/android/ads/j;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 1139
    if-eqz p1, :cond_32

    invoke-virtual {p1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 1140
    new-instance v0, Lcn/domob/android/ads/w;

    iget-object v1, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/g;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1141
    new-instance v4, Lcn/domob/android/ads/w$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lcn/domob/android/ads/w$c;-><init>(Lcn/domob/android/ads/w;)V

    .line 1142
    invoke-virtual {p1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->r()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcn/domob/android/ads/w$c;->a:Ljava/lang/String;

    .line 1143
    invoke-virtual {p1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->q()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/domob/android/ads/w$h;->q:Lcn/domob/android/ads/w$h;

    const/4 v5, 0x0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/w;->a(Ljava/lang/String;Lcn/domob/android/ads/w$h;Ljava/lang/String;Lcn/domob/android/ads/w$c;Ljava/util/HashMap;)V

    .line 1145
    :cond_32
    return-void
.end method

.method public a(Lcn/domob/android/ads/j;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 16

    .prologue
    const/4 v3, 0x0

    .line 584
    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-object v8, v3

    invoke-virtual/range {v1 .. v8}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/j;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 585
    return-void
.end method

.method protected a(Lcn/domob/android/ads/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 1128
    if-eqz p1, :cond_36

    invoke-virtual {p1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 1129
    new-instance v0, Lcn/domob/android/ads/w;

    iget-object v1, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/g;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1130
    new-instance v4, Lcn/domob/android/ads/w$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lcn/domob/android/ads/w$c;-><init>(Lcn/domob/android/ads/w;)V

    .line 1131
    invoke-virtual {p1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->r()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcn/domob/android/ads/w$c;->a:Ljava/lang/String;

    .line 1132
    iput-object p3, v4, Lcn/domob/android/ads/w$c;->i:Ljava/lang/String;

    .line 1133
    iput-object p4, v4, Lcn/domob/android/ads/w$c;->j:Ljava/lang/String;

    .line 1134
    invoke-virtual {p1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->q()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/domob/android/ads/w$h;->p:Lcn/domob/android/ads/w$h;

    const/4 v5, 0x0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/w;->a(Ljava/lang/String;Lcn/domob/android/ads/w$h;Ljava/lang/String;Lcn/domob/android/ads/w$c;Ljava/util/HashMap;)V

    .line 1136
    :cond_36
    return-void
.end method

.method public a(Lcn/domob/android/ads/j;Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/domob/android/ads/j;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 569
    invoke-virtual {p1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/j$c;->o()Ljava/lang/String;

    move-result-object v0

    .line 570
    invoke-virtual {p1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->r()Ljava/lang/String;

    move-result-object v1

    .line 572
    new-instance v2, Lcn/domob/android/ads/w;

    iget-object v3, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    iget-object v4, p0, Lcn/domob/android/ads/g;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcn/domob/android/ads/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 573
    new-instance v3, Lcn/domob/android/ads/w$b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v2}, Lcn/domob/android/ads/w$b;-><init>(Lcn/domob/android/ads/w;)V

    .line 574
    iput-object v1, v3, Lcn/domob/android/ads/w$b;->a:Ljava/lang/String;

    .line 575
    if-eqz p3, :cond_27

    .line 576
    iput-object p3, v3, Lcn/domob/android/ads/w$b;->b:Ljava/lang/String;

    .line 578
    :cond_27
    invoke-virtual {v2, v0, v3, p2}, Lcn/domob/android/ads/w;->a(Ljava/lang/String;Lcn/domob/android/ads/w$b;Ljava/util/HashMap;)V

    .line 580
    iget-object v0, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->E()Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/android/e/a;->c(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 581
    return-void
.end method

.method public a(Lcn/domob/android/ads/j;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/domob/android/ads/j;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 589
    iget-object v9, p0, Lcn/domob/android/ads/g;->d:Lcn/domob/android/ads/DomobAdView;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v9}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/j;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/view/View;)V

    .line 590
    return-void
.end method

.method public a(Lcn/domob/android/ads/j;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/view/View;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/domob/android/ads/j;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 597
    new-instance v0, Lcn/domob/android/ads/w;

    iget-object v1, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/g;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 598
    new-instance v1, Lcn/domob/android/ads/w$f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lcn/domob/android/ads/w$f;-><init>(Lcn/domob/android/ads/w;)V

    .line 599
    if-nez p7, :cond_1b

    invoke-virtual {p1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/j$c;->p()Ljava/lang/String;

    move-result-object p7

    .line 600
    :cond_1b
    invoke-virtual {p1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/j$c;->r()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/domob/android/ads/w$f;->a:Ljava/lang/String;

    .line 601
    if-eqz p8, :cond_62

    .line 602
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 603
    invoke-virtual {p8, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 604
    const-string v3, "%d,%d,%d,%d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    aget v2, v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x2

    invoke-virtual {p8}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x3

    invoke-virtual {p8}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/domob/android/ads/w$f;->d:Ljava/lang/String;

    .line 607
    :cond_62
    iget-object v2, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->u(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Lcn/domob/android/ads/w$f;->e:I

    .line 608
    iget-object v2, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->v(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Lcn/domob/android/ads/w$f;->f:I

    .line 609
    iget-object v2, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/domob/android/ads/w$f;->g:Ljava/lang/String;

    .line 610
    iput-object p3, v1, Lcn/domob/android/ads/w$f;->h:Ljava/lang/String;

    .line 611
    iput-object p4, v1, Lcn/domob/android/ads/w$f;->b:Ljava/lang/String;

    .line 612
    iput-wide p5, v1, Lcn/domob/android/ads/w$f;->i:J

    .line 614
    invoke-virtual {v0, p7, v1, p2}, Lcn/domob/android/ads/w;->a(Ljava/lang/String;Lcn/domob/android/ads/w$f;Ljava/util/HashMap;)V

    .line 615
    invoke-virtual {p1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/j$c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 625
    if-eqz v0, :cond_9b

    const-string v1, "m"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a5

    :cond_9b
    if-nez v0, :cond_b2

    const-string v0, "s"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 626
    :cond_a5
    iget-object v0, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->E()Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/android/e/a;->b(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 628
    :cond_b2
    return-void
.end method

.method public a(Lcn/domob/android/ads/q;)V
    .registers 3

    .prologue
    .line 1007
    const-string v0, "install_success"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/g;->a(Ljava/lang/String;Lcn/domob/android/ads/q;)V

    .line 1008
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 380
    iput-object p1, p0, Lcn/domob/android/ads/g;->K:Ljava/lang/String;

    .line 381
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 914
    const-string v0, "up_alert"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/g;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 915
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V
    .registers 6

    .prologue
    .line 971
    return-void
.end method

.method protected a(Ljava/lang/String;La/a/a/a/a/e;)V
    .registers 9

    .prologue
    .line 1119
    new-instance v0, Lcn/domob/android/ads/w;

    iget-object v1, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    iget-object v2, p2, La/a/a/a/a/e;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1120
    new-instance v4, Lcn/domob/android/ads/w$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lcn/domob/android/ads/w$c;-><init>(Lcn/domob/android/ads/w;)V

    .line 1121
    iget-object v1, p2, La/a/a/a/a/e;->c:Ljava/lang/String;

    iput-object v1, v4, Lcn/domob/android/ads/w$c;->a:Ljava/lang/String;

    .line 1122
    iget-object v1, p2, La/a/a/a/a/e;->a:Ljava/lang/String;

    iput-object v1, v4, Lcn/domob/android/ads/w$c;->i:Ljava/lang/String;

    .line 1123
    iget-object v1, p2, La/a/a/a/a/e;->b:Ljava/lang/String;

    iput-object v1, v4, Lcn/domob/android/ads/w$c;->j:Ljava/lang/String;

    .line 1124
    iget-object v1, p2, La/a/a/a/a/e;->e:Ljava/lang/String;

    sget-object v2, Lcn/domob/android/ads/w$h;->p:Lcn/domob/android/ads/w$h;

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/w;->a(Ljava/lang/String;Lcn/domob/android/ads/w$h;Ljava/lang/String;Lcn/domob/android/ads/w$c;Ljava/util/HashMap;)V

    .line 1125
    return-void
.end method

.method protected a(Z)V
    .registers 5

    .prologue
    .line 307
    sget-object v0, Lcn/domob/android/ads/g;->J:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto refresh is set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 308
    iput-boolean p1, p0, Lcn/domob/android/ads/g;->T:Z

    .line 309
    return-void
.end method

.method protected b()V
    .registers 3

    .prologue
    .line 219
    iget-object v0, p0, Lcn/domob/android/ads/g;->X:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/g;->f:Lcn/domob/android/ads/g$b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 220
    sget-object v0, Lcn/domob/android/ads/g$c;->c:Lcn/domob/android/ads/g$c;

    iput-object v0, p0, Lcn/domob/android/ads/g;->m:Lcn/domob/android/ads/g$c;

    .line 221
    return-void
.end method

.method protected b(I)V
    .registers 2

    .prologue
    .line 1152
    iput p1, p0, Lcn/domob/android/ads/g;->ab:I

    .line 1153
    return-void
.end method

.method public b(Lcn/domob/android/ads/q;)V
    .registers 3

    .prologue
    .line 1012
    const-string v0, "run"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/g;->a(Ljava/lang/String;Lcn/domob/android/ads/q;)V

    .line 1013
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 412
    iput-object p1, p0, Lcn/domob/android/ads/g;->L:Ljava/lang/String;

    .line 413
    return-void
.end method

.method public b(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 919
    const-string v0, "up_ok"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/g;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 920
    return-void
.end method

.method protected b(Z)V
    .registers 5

    .prologue
    .line 316
    sget-object v0, Lcn/domob/android/ads/g;->J:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transition animation is set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 317
    iput-boolean p1, p0, Lcn/domob/android/ads/g;->U:Z

    .line 318
    return-void
.end method

.method protected c()V
    .registers 5

    .prologue
    .line 224
    iget-object v0, p0, Lcn/domob/android/ads/g;->m:Lcn/domob/android/ads/g$c;

    sget-object v1, Lcn/domob/android/ads/g$c;->b:Lcn/domob/android/ads/g$c;

    if-ne v0, v1, :cond_7

    .line 238
    :cond_6
    :goto_6
    return-void

    .line 228
    :cond_7
    iget-object v0, p0, Lcn/domob/android/ads/g;->l:Lcn/domob/android/ads/g$a;

    sget-object v1, Lcn/domob/android/ads/g$a;->a:Lcn/domob/android/ads/g$a;

    if-ne v0, v1, :cond_40

    .line 229
    iget-boolean v0, p0, Lcn/domob/android/ads/g;->T:Z

    if-eqz v0, :cond_6

    .line 230
    iget-object v0, p0, Lcn/domob/android/ads/g;->X:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/g;->f:Lcn/domob/android/ads/g$b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 231
    invoke-virtual {p0}, Lcn/domob/android/ads/g;->d()V

    .line 232
    sget-object v0, Lcn/domob/android/ads/g;->J:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pause schedule and the ad has shown "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcn/domob/android/ads/g;->Z:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 233
    sget-object v0, Lcn/domob/android/ads/g$c;->b:Lcn/domob/android/ads/g$c;

    iput-object v0, p0, Lcn/domob/android/ads/g;->m:Lcn/domob/android/ads/g$c;

    goto :goto_6

    .line 235
    :cond_40
    iget-object v0, p0, Lcn/domob/android/ads/g;->l:Lcn/domob/android/ads/g$a;

    sget-object v1, Lcn/domob/android/ads/g$a;->b:Lcn/domob/android/ads/g$a;

    if-ne v0, v1, :cond_6

    .line 236
    sget-object v0, Lcn/domob/android/ads/g;->J:Lcn/domob/android/i/f;

    const-string v1, "AdView is expanding, pause() has been called. Cancel current \'pause()\'."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    goto :goto_6
.end method

.method protected c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 420
    iput-object p1, p0, Lcn/domob/android/ads/g;->M:Ljava/lang/String;

    .line 421
    return-void
.end method

.method public c(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 924
    const-string v0, "up_cancel"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/g;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 925
    return-void
.end method

.method protected c(Z)V
    .registers 2

    .prologue
    .line 461
    iput-boolean p1, p0, Lcn/domob/android/ads/g;->V:Z

    .line 462
    return-void
.end method

.method protected d()V
    .registers 7

    .prologue
    .line 244
    iget-object v0, p0, Lcn/domob/android/ads/g;->n:Lcn/domob/android/ads/g$d;

    sget-object v1, Lcn/domob/android/ads/g$d;->a:Lcn/domob/android/ads/g$d;

    if-ne v0, v1, :cond_35

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 246
    iget-wide v2, p0, Lcn/domob/android/ads/g;->Z:J

    iget-wide v4, p0, Lcn/domob/android/ads/g;->Y:J

    sub-long/2addr v0, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcn/domob/android/ads/g;->Z:J

    .line 247
    sget-object v0, Lcn/domob/android/ads/g$d;->b:Lcn/domob/android/ads/g$d;

    iput-object v0, p0, Lcn/domob/android/ads/g;->n:Lcn/domob/android/ads/g$d;

    .line 248
    sget-object v0, Lcn/domob/android/ads/g;->J:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause timing current ad has shown seconds:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/domob/android/ads/g;->g()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 250
    :cond_35
    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 428
    iput-object p1, p0, Lcn/domob/android/ads/g;->N:Ljava/lang/String;

    .line 429
    return-void
.end method

.method public d(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 929
    const-string v0, "up_skip"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/g;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 930
    return-void
.end method

.method protected d(Z)V
    .registers 2

    .prologue
    .line 496
    iput-boolean p1, p0, Lcn/domob/android/ads/g;->S:Z

    .line 497
    return-void
.end method

.method protected e()V
    .registers 6

    .prologue
    .line 253
    iget-object v0, p0, Lcn/domob/android/ads/g;->m:Lcn/domob/android/ads/g$c;

    sget-object v1, Lcn/domob/android/ads/g$c;->a:Lcn/domob/android/ads/g$c;

    if-ne v0, v1, :cond_7

    .line 274
    :cond_6
    :goto_6
    return-void

    .line 257
    :cond_7
    iget-object v0, p0, Lcn/domob/android/ads/g;->l:Lcn/domob/android/ads/g$a;

    sget-object v1, Lcn/domob/android/ads/g$a;->a:Lcn/domob/android/ads/g$a;

    if-ne v0, v1, :cond_53

    .line 258
    iget-boolean v0, p0, Lcn/domob/android/ads/g;->T:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcn/domob/android/ads/g;->W:I

    if-eqz v0, :cond_6

    .line 259
    invoke-virtual {p0}, Lcn/domob/android/ads/g;->f()V

    .line 260
    iget v0, p0, Lcn/domob/android/ads/g;->W:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcn/domob/android/ads/g;->Z:J

    sub-long/2addr v0, v2

    .line 262
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2f

    .line 263
    sget-object v0, Lcn/domob/android/ads/g;->J:Lcn/domob/android/i/f;

    const-string v1, "Maybe there is no ad, request no."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcn/domob/android/ads/g;->l()V

    goto :goto_6

    .line 266
    :cond_2f
    sget-object v2, Lcn/domob/android/ads/g;->J:Lcn/domob/android/i/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resume with remaining time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 267
    iget-object v2, p0, Lcn/domob/android/ads/g;->X:Landroid/os/Handler;

    iget-object v3, p0, Lcn/domob/android/ads/g;->f:Lcn/domob/android/ads/g$b;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 268
    sget-object v0, Lcn/domob/android/ads/g$c;->a:Lcn/domob/android/ads/g$c;

    iput-object v0, p0, Lcn/domob/android/ads/g;->m:Lcn/domob/android/ads/g$c;

    goto :goto_6

    .line 271
    :cond_53
    iget-object v0, p0, Lcn/domob/android/ads/g;->l:Lcn/domob/android/ads/g$a;

    sget-object v1, Lcn/domob/android/ads/g$a;->b:Lcn/domob/android/ads/g$a;

    if-ne v0, v1, :cond_6

    .line 272
    sget-object v0, Lcn/domob/android/ads/g;->J:Lcn/domob/android/i/f;

    const-string v1, "AdView is expanding, cancel current \'resume()\'."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    goto :goto_6
.end method

.method protected e(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 436
    iput-object p1, p0, Lcn/domob/android/ads/g;->O:Ljava/lang/String;

    .line 437
    return-void
.end method

.method public e(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 934
    const-string v0, "download_finish"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/g;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 935
    return-void
.end method

.method protected f()V
    .registers 7

    .prologue
    .line 280
    iget-object v0, p0, Lcn/domob/android/ads/g;->n:Lcn/domob/android/ads/g$d;

    sget-object v1, Lcn/domob/android/ads/g$d;->b:Lcn/domob/android/ads/g$d;

    if-ne v0, v1, :cond_30

    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/domob/android/ads/g;->Y:J

    .line 282
    sget-object v0, Lcn/domob/android/ads/g$d;->a:Lcn/domob/android/ads/g$d;

    iput-object v0, p0, Lcn/domob/android/ads/g;->n:Lcn/domob/android/ads/g$d;

    .line 283
    sget-object v0, Lcn/domob/android/ads/g;->J:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume timing current ad has shown seconds:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/domob/android/ads/g;->g()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 287
    :goto_2f
    return-void

    .line 285
    :cond_30
    sget-object v0, Lcn/domob/android/ads/g;->J:Lcn/domob/android/i/f;

    const-string v1, "call resume timing, but current state is not pause"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->d(Ljava/lang/String;)V

    goto :goto_2f
.end method

.method protected f(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 444
    iput-object p1, p0, Lcn/domob/android/ads/g;->P:Ljava/lang/String;

    .line 445
    return-void
.end method

.method public f(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 939
    const-string v0, "download_failed"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/g;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 940
    return-void
.end method

.method protected g()J
    .registers 9

    .prologue
    .line 294
    iget-object v0, p0, Lcn/domob/android/ads/g;->n:Lcn/domob/android/ads/g$d;

    sget-object v1, Lcn/domob/android/ads/g$d;->a:Lcn/domob/android/ads/g$d;

    if-ne v0, v1, :cond_2a

    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 296
    iget-wide v2, p0, Lcn/domob/android/ads/g;->Z:J

    iget-wide v4, p0, Lcn/domob/android/ads/g;->Y:J

    sub-long/2addr v0, v4

    add-long/2addr v0, v2

    .line 302
    :goto_10
    sget-object v2, Lcn/domob/android/ads/g;->J:Lcn/domob/android/i/f;

    const-string v3, "get ad shown time: %d s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0x3e8

    div-long v6, v0, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 303
    return-wide v0

    .line 297
    :cond_2a
    iget-object v0, p0, Lcn/domob/android/ads/g;->n:Lcn/domob/android/ads/g$d;

    sget-object v1, Lcn/domob/android/ads/g$d;->b:Lcn/domob/android/ads/g$d;

    if-ne v0, v1, :cond_33

    .line 298
    iget-wide v0, p0, Lcn/domob/android/ads/g;->Z:J

    goto :goto_10

    .line 300
    :cond_33
    const-wide/16 v0, 0x0

    goto :goto_10
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 992
    invoke-direct {p0, p1}, Lcn/domob/android/ads/g;->k(Ljava/lang/String;)V

    .line 993
    return-void
.end method

.method public g(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 944
    const-string v0, "download_start"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/g;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 945
    return-void
.end method

.method protected h(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 997
    iput-object p1, p0, Lcn/domob/android/ads/g;->Q:Ljava/lang/String;

    .line 998
    return-void
.end method

.method public h(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 949
    const-string v0, "download_cancel"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/g;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 950
    return-void
.end method

.method protected h()Z
    .registers 2

    .prologue
    .line 312
    iget-boolean v0, p0, Lcn/domob/android/ads/g;->T:Z

    return v0
.end method

.method protected i(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1001
    iput-object p1, p0, Lcn/domob/android/ads/g;->R:Ljava/lang/String;

    .line 1002
    return-void
.end method

.method public i(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 954
    const-string v0, "download_repeat"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/g;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 955
    return-void
.end method

.method protected i()Z
    .registers 2

    .prologue
    .line 325
    iget-boolean v0, p0, Lcn/domob/android/ads/g;->U:Z

    return v0
.end method

.method public j(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1156
    iget-object v0, p0, Lcn/domob/android/ads/g;->h:Lcn/domob/android/h/a;

    if-eqz v0, :cond_b

    .line 1157
    iget-object v0, p0, Lcn/domob/android/ads/g;->h:Lcn/domob/android/h/a;

    iget-object v1, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/j;

    invoke-virtual {v0, p1, v1}, Lcn/domob/android/h/a;->a(Ljava/lang/String;Lcn/domob/android/ads/j;)V

    .line 1159
    :cond_b
    return-void
.end method

.method public j(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 960
    return-void
.end method

.method protected j()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 334
    sget-object v1, Lcn/domob/android/ads/g;->J:Lcn/domob/android/i/f;

    const-string v2, "Check settings and permissions."

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lcn/domob/android/ads/g;->K:Ljava/lang/String;

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcn/domob/android/ads/g;->K:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_31

    .line 338
    iget-object v1, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    sget-object v2, Lcn/domob/android/ads/b;->U:[Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcn/domob/android/i/a;->a(Landroid/content/Context;[Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 339
    sget-object v1, Lcn/domob/android/ads/g;->J:Lcn/domob/android/i/f;

    const-string v2, "All permissions are ok."

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 348
    :goto_25
    return v0

    .line 342
    :cond_26
    invoke-static {}, Lcn/domob/android/i/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Permission denied."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :goto_2f
    const/4 v0, 0x0

    goto :goto_25

    .line 345
    :cond_31
    invoke-static {}, Lcn/domob/android/i/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Please set your PlacementID first."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method

.method protected declared-synchronized k()V
    .registers 3

    .prologue
    .line 352
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcn/domob/android/ads/g;->S:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcn/domob/android/ads/g;->V:Z

    if-nez v0, :cond_e

    .line 353
    invoke-virtual {p0}, Lcn/domob/android/ads/g;->l()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    .line 357
    :goto_c
    monitor-exit p0

    return-void

    .line 355
    :cond_e
    :try_start_e
    sget-object v0, Lcn/domob/android/ads/g;->J:Lcn/domob/android/i/f;

    const-string v1, "Ignore auto request from DomobAdView."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    goto :goto_c

    .line 352
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public k(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 964
    const-string v0, "download_md5_failed"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/g;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 965
    return-void
.end method

.method protected declared-synchronized l()V
    .registers 5

    .prologue
    .line 362
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcn/domob/android/ads/g;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->a()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 363
    iget-boolean v0, p0, Lcn/domob/android/ads/g;->V:Z

    if-nez v0, :cond_12

    .line 364
    invoke-virtual {p0}, Lcn/domob/android/ads/g;->C()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_1a

    .line 377
    :goto_10
    monitor-exit p0

    return-void

    .line 366
    :cond_12
    :try_start_12
    sget-object v0, Lcn/domob/android/ads/g;->J:Lcn/domob/android/i/f;

    const-string v1, "DomobAdView is requesting."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->d(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1a

    goto :goto_10

    .line 362
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 374
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcn/domob/android/ads/g;->X:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/g;->f:Lcn/domob/android/ads/g$b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 375
    iget-object v0, p0, Lcn/domob/android/ads/g;->X:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/g;->f:Lcn/domob/android/ads/g$b;

    iget v2, p0, Lcn/domob/android/ads/g;->W:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_1a

    goto :goto_10
.end method

.method protected m()Ljava/lang/String;
    .registers 2

    .prologue
    .line 384
    iget-object v0, p0, Lcn/domob/android/ads/g;->K:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 388
    iget-object v0, p0, Lcn/domob/android/ads/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public o()I
    .registers 2

    .prologue
    .line 392
    iget-object v0, p0, Lcn/domob/android/ads/g;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->e()I

    move-result v0

    return v0
.end method

.method protected p()Lcn/domob/android/ads/g$a;
    .registers 2

    .prologue
    .line 396
    iget-object v0, p0, Lcn/domob/android/ads/g;->l:Lcn/domob/android/ads/g$a;

    return-object v0
.end method

.method protected q()Ljava/lang/String;
    .registers 2

    .prologue
    .line 404
    iget-object v0, p0, Lcn/domob/android/ads/g;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 408
    iget-object v0, p0, Lcn/domob/android/ads/g;->d:Lcn/domob/android/ads/DomobAdView;

    return-object v0
.end method

.method protected s()Ljava/lang/String;
    .registers 2

    .prologue
    .line 416
    iget-object v0, p0, Lcn/domob/android/ads/g;->L:Ljava/lang/String;

    return-object v0
.end method

.method protected t()Ljava/lang/String;
    .registers 2

    .prologue
    .line 424
    iget-object v0, p0, Lcn/domob/android/ads/g;->M:Ljava/lang/String;

    return-object v0
.end method

.method protected u()Ljava/lang/String;
    .registers 2

    .prologue
    .line 432
    iget-object v0, p0, Lcn/domob/android/ads/g;->N:Ljava/lang/String;

    return-object v0
.end method

.method protected v()Ljava/lang/String;
    .registers 2

    .prologue
    .line 440
    iget-object v0, p0, Lcn/domob/android/ads/g;->O:Ljava/lang/String;

    return-object v0
.end method

.method protected w()Ljava/lang/String;
    .registers 2

    .prologue
    .line 448
    iget-object v0, p0, Lcn/domob/android/ads/g;->P:Ljava/lang/String;

    return-object v0
.end method

.method protected x()Landroid/content/Context;
    .registers 2

    .prologue
    .line 452
    iget-object v0, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    return-object v0
.end method

.method public y()I
    .registers 2

    .prologue
    .line 465
    iget v0, p0, Lcn/domob/android/ads/g;->W:I

    return v0
.end method

.method protected z()Lcn/domob/android/ads/DomobAdListener;
    .registers 2

    .prologue
    .line 483
    iget-object v0, p0, Lcn/domob/android/ads/g;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdListener;

    move-result-object v0

    return-object v0
.end method
