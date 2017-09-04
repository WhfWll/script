.class Lcn/dbox/ui/DBoxManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/DBoxManager;->d()V
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
    .line 236
    iput-object p1, p0, Lcn/dbox/ui/DBoxManager$6;->a:Lcn/dbox/ui/DBoxManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager$6;->a:Lcn/dbox/ui/DBoxManager;

    invoke-static {v0}, Lcn/dbox/ui/DBoxManager;->c(Lcn/dbox/ui/DBoxManager;)Lcn/dbox/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/dbox/ui/a;->a()V

    .line 240
    return-void
.end method
