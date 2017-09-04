.class Lcn/dbox/core/a/c$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/core/a/c$1;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcn/dbox/core/a/c$1;


# direct methods
.method constructor <init>(Lcn/dbox/core/a/c$1;Landroid/app/Dialog;)V
    .registers 3

    .prologue
    .line 362
    iput-object p1, p0, Lcn/dbox/core/a/c$1$3;->b:Lcn/dbox/core/a/c$1;

    iput-object p2, p0, Lcn/dbox/core/a/c$1$3;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 365
    iget-object v0, p0, Lcn/dbox/core/a/c$1$3;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 366
    return-void
.end method
