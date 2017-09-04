.class Lcn/domob/android/ads/b/n;
.super Lcn/domob/android/ads/b/j;
.source "SourceFile"


# instance fields
.field private final a:Z


# direct methods
.method constructor <init>(Z)V
    .registers 2

    .prologue
    .line 80
    invoke-direct {p0}, Lcn/domob/android/ads/b/j;-><init>()V

    .line 81
    iput-boolean p1, p0, Lcn/domob/android/ads/b/n;->a:Z

    .line 82
    return-void
.end method

.method public static a(Z)Lcn/domob/android/ads/b/n;
    .registers 2

    .prologue
    .line 85
    new-instance v0, Lcn/domob/android/ads/b/n;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/b/n;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "viewable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcn/domob/android/ads/b/n;->a:Z

    if-eqz v0, :cond_1a

    const-string v0, "true"

    :goto_11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1a
    const-string v0, "false"

    goto :goto_11
.end method
