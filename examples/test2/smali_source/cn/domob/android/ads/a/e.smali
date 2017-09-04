.class public Lcn/domob/android/ads/a/e;
.super Lcn/domob/android/ads/a;
.source "SourceFile"


# static fields
.field private static d:Lcn/domob/android/i/f;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 10
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/a/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/a/e;->d:Lcn/domob/android/i/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 7

    .prologue
    .line 15
    invoke-direct {p0, p1, p3}, Lcn/domob/android/ads/a;-><init>(Landroid/content/Context;I)V

    .line 16
    sget-object v0, Lcn/domob/android/ads/a/e;->d:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initiate DomobWebView with ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 17
    iput-object p2, p0, Lcn/domob/android/ads/a/e;->e:Ljava/lang/String;

    .line 18
    return-void
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .prologue
    .line 38
    const-string v1, "040602"

    .line 39
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 40
    const-string v3, "android"

    .line 41
    const-string v0, "1.5"

    .line 42
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_12

    .line 43
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 45
    :cond_12
    invoke-static {p0}, Lcn/domob/android/b/a;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-static {p0}, Lcn/domob/android/b/a;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 48
    const-string v6, "<script>var SDK_VERSION = \'%s\'; var DEVICE = \'%s\'; var OS = \'%s\'; var OS_VERSION = \'%s\'; var CARRIER = \'%s\'; var NETWORK = \'%s\';</script>"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v1, 0x1

    aput-object v2, v7, v1

    const/4 v1, 0x2

    aput-object v3, v7, v1

    const/4 v1, 0x3

    aput-object v0, v7, v1

    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v5, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 29
    invoke-virtual {p0}, Lcn/domob/android/ads/a/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/domob/android/ads/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "domob.js"

    aput-object v3, v1, v2

    .line 31
    invoke-super {p0, v0, v1}, Lcn/domob/android/ads/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->e:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 22
    const-string v0, "NO_ID"

    iput-object v0, p0, Lcn/domob/android/ads/a/e;->e:Ljava/lang/String;

    .line 24
    :cond_8
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->e:Ljava/lang/String;

    return-object v0
.end method
