.class Lcn/dbox/ui/a$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/dbox/ui/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/ui/a;
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
    .line 294
    iput-object p1, p0, Lcn/dbox/ui/a$6;->a:Lcn/dbox/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/dbox/core/bean/a;Lcn/dbox/core/b$d;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 300
    iget-object v0, p0, Lcn/dbox/ui/a$6;->a:Lcn/dbox/ui/a;

    iget-object v0, v0, Lcn/dbox/ui/a;->d:Lcn/dbox/core/b;

    invoke-virtual {v0, p1}, Lcn/dbox/core/b;->a(Lcn/dbox/core/bean/a;)V

    .line 302
    invoke-virtual {p1, p3}, Lcn/dbox/core/bean/a;->b(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p1, p4}, Lcn/dbox/core/bean/a;->c(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcn/dbox/ui/a$6;->a:Lcn/dbox/ui/a;

    sget-object v1, Lcn/dbox/core/b$a;->c:Lcn/dbox/core/b$a;

    invoke-static {v0, p1, v1, p2}, Lcn/dbox/ui/a;->a(Lcn/dbox/ui/a;Lcn/dbox/core/bean/a;Lcn/dbox/core/b$a;Lcn/dbox/core/b$d;)V

    .line 308
    return-void
.end method
