.class Lcn/dbox/ui/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/dbox/ui/d/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcn/dbox/core/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/a;


# direct methods
.method constructor <init>(Lcn/dbox/ui/a;)V
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Lcn/dbox/ui/a$1;->a:Lcn/dbox/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/dbox/core/bean/d;Lcn/dbox/core/b$e;)V
    .registers 6

    .prologue
    .line 100
    iget-object v0, p0, Lcn/dbox/ui/a$1;->a:Lcn/dbox/ui/a;

    invoke-static {v0, p1}, Lcn/dbox/ui/a;->a(Lcn/dbox/ui/a;Lcn/dbox/core/bean/d;)V

    .line 101
    iget-object v0, p0, Lcn/dbox/ui/a$1;->a:Lcn/dbox/ui/a;

    sget-object v1, Lcn/dbox/core/b$f;->b:Lcn/dbox/core/b$f;

    sget-object v2, Lcn/dbox/core/b$e;->c:Lcn/dbox/core/b$e;

    invoke-static {v0, v1, p1, v2}, Lcn/dbox/ui/a;->a(Lcn/dbox/ui/a;Lcn/dbox/core/b$f;Lcn/dbox/core/bean/d;Lcn/dbox/core/b$e;)V

    .line 104
    return-void
.end method
