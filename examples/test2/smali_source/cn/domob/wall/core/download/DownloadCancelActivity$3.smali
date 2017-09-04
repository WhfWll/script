.class Lcn/domob/wall/core/download/DownloadCancelActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/download/DownloadCancelActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/download/DownloadCancelActivity;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/download/DownloadCancelActivity;)V
    .registers 2

    .prologue
    .line 126
    iput-object p1, p0, Lcn/domob/wall/core/download/DownloadCancelActivity$3;->a:Lcn/domob/wall/core/download/DownloadCancelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcn/domob/wall/core/download/DownloadCancelActivity$3;->a:Lcn/domob/wall/core/download/DownloadCancelActivity;

    invoke-virtual {v0}, Lcn/domob/wall/core/download/DownloadCancelActivity;->finish()V

    .line 130
    return-void
.end method
