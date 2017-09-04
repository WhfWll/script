.class Lcn/domob/android/ads/b/l;
.super Lcn/domob/android/ads/b/j;
.source "SourceFile"


# instance fields
.field private final a:Lcn/domob/android/ads/b/m$l;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/b/m$l;)V
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0}, Lcn/domob/android/ads/b/j;-><init>()V

    .line 64
    iput-object p1, p0, Lcn/domob/android/ads/b/l;->a:Lcn/domob/android/ads/b/m$l;

    .line 65
    return-void
.end method

.method public static a(Lcn/domob/android/ads/b/m$l;)Lcn/domob/android/ads/b/l;
    .registers 2

    .prologue
    .line 68
    new-instance v0, Lcn/domob/android/ads/b/l;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/b/l;-><init>(Lcn/domob/android/ads/b/m$l;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/b/l;->a:Lcn/domob/android/ads/b/m$l;

    invoke-virtual {v1}, Lcn/domob/android/ads/b/m$l;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
