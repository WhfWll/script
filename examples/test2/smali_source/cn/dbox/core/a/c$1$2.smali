.class Lcn/dbox/core/a/c$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/core/a/c$1;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/core/a/c$1;


# direct methods
.method constructor <init>(Lcn/dbox/core/a/c$1;)V
    .registers 2

    .prologue
    .line 351
    iput-object p1, p0, Lcn/dbox/core/a/c$1$2;->a:Lcn/dbox/core/a/c$1;

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
    .line 355
    invoke-static {}, Lcn/dbox/core/a/c;->c()Lcn/dbox/core/h/d;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a/c$1$2;->a:Lcn/dbox/core/a/c$1;

    iget-object v1, v1, Lcn/dbox/core/a/c$1;->a:Lcn/dbox/core/a/c;

    const-string v2, "Video play error."

    invoke-virtual {v0, v1, v2}, Lcn/dbox/core/h/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    const/4 v0, 0x0

    return v0
.end method
