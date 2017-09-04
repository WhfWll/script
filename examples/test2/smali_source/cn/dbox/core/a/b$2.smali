.class Lcn/dbox/core/a/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/dbox/ui/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/core/a/b;->a()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/core/a/b;


# direct methods
.method constructor <init>(Lcn/dbox/core/a/b;)V
    .registers 2

    .prologue
    .line 102
    iput-object p1, p0, Lcn/dbox/core/a/b$2;->a:Lcn/dbox/core/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 107
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcn/dbox/core/a/b$2;->a:Lcn/dbox/core/a/b;

    invoke-virtual {v0}, Lcn/dbox/core/a/b;->b()V

    .line 112
    return-void
.end method
