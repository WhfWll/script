.class Lcn/domob/android/ads/b/i;
.super Lcn/domob/android/ads/b/j;
.source "SourceFile"


# instance fields
.field private final a:Lcn/domob/android/ads/b/m$k;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/b/m$k;)V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcn/domob/android/ads/b/j;-><init>()V

    .line 28
    iput-object p1, p0, Lcn/domob/android/ads/b/i;->a:Lcn/domob/android/ads/b/m$k;

    .line 29
    return-void
.end method

.method public static a(Lcn/domob/android/ads/b/m$k;)Lcn/domob/android/ads/b/i;
    .registers 2

    .prologue
    .line 32
    new-instance v0, Lcn/domob/android/ads/b/i;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/b/i;-><init>(Lcn/domob/android/ads/b/m$k;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "placementType: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/b/i;->a:Lcn/domob/android/ads/b/m$k;

    invoke-virtual {v1}, Lcn/domob/android/ads/b/m$k;->toString()Ljava/lang/String;

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
