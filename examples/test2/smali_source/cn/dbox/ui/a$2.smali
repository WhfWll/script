.class Lcn/dbox/ui/a$2;
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
    .line 111
    iput-object p1, p0, Lcn/dbox/ui/a$2;->a:Lcn/dbox/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/dbox/core/bean/d;Lcn/dbox/core/b$e;)V
    .registers 5

    .prologue
    .line 117
    iget-object v0, p0, Lcn/dbox/ui/a$2;->a:Lcn/dbox/ui/a;

    sget-object v1, Lcn/dbox/core/b$f;->b:Lcn/dbox/core/b$f;

    invoke-static {v0, v1, p1, p2}, Lcn/dbox/ui/a;->a(Lcn/dbox/ui/a;Lcn/dbox/core/b$f;Lcn/dbox/core/bean/d;Lcn/dbox/core/b$e;)V

    .line 120
    return-void
.end method
