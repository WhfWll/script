.class Lcn/domob/android/ads/a/d$7$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/a/d$7;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/a/d$7;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/a/d$7;)V
    .registers 2

    .prologue
    .line 324
    iput-object p1, p0, Lcn/domob/android/ads/a/d$7$2;->a:Lcn/domob/android/ads/a/d$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 7
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 327
    invoke-static {}, Lcn/domob/android/ads/a/d;->b()Lcn/domob/android/i/f;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/a/d$7$2;->a:Lcn/domob/android/ads/a/d$7;

    iget-object v1, v1, Lcn/domob/android/ads/a/d$7;->a:Lcn/domob/android/ads/a/d;

    const-string v2, "Video play error."

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    const/4 v0, 0x0

    return v0
.end method
