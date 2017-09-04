.class Lcn/dbox/ui/DBoxManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/dbox/core/b$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/DBoxManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/DBoxManager;


# direct methods
.method constructor <init>(Lcn/dbox/ui/DBoxManager;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcn/dbox/ui/DBoxManager$1;->a:Lcn/dbox/ui/DBoxManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager$1;->a:Lcn/dbox/ui/DBoxManager;

    invoke-static {v0}, Lcn/dbox/ui/DBoxManager;->a(Lcn/dbox/ui/DBoxManager;)Lcn/dbox/ui/DBoxManager$DBoxViewListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 60
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager$1;->a:Lcn/dbox/ui/DBoxManager;

    invoke-static {v0}, Lcn/dbox/ui/DBoxManager;->a(Lcn/dbox/ui/DBoxManager;)Lcn/dbox/ui/DBoxManager$DBoxViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/dbox/ui/DBoxManager$DBoxViewListener;->onLeaveApplication()V

    .line 63
    :cond_11
    return-void
.end method
