.class Lcn/dbox/ui/common/e$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/common/e;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/dbox/ui/common/e;


# direct methods
.method constructor <init>(Lcn/dbox/ui/common/e;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 244
    iput-object p1, p0, Lcn/dbox/ui/common/e$4;->b:Lcn/dbox/ui/common/e;

    iput-object p2, p0, Lcn/dbox/ui/common/e$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 247
    iget-object v0, p0, Lcn/dbox/ui/common/e$4;->b:Lcn/dbox/ui/common/e;

    iget-object v1, p0, Lcn/dbox/ui/common/e$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/dbox/ui/common/e;->loadUrl(Ljava/lang/String;)V

    .line 248
    return-void
.end method
