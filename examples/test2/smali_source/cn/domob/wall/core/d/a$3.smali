.class Lcn/domob/wall/core/d/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/d/a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/domob/wall/core/d/a;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/d/a;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 180
    iput-object p1, p0, Lcn/domob/wall/core/d/a$3;->b:Lcn/domob/wall/core/d/a;

    iput-object p2, p0, Lcn/domob/wall/core/d/a$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 183
    iget-object v0, p0, Lcn/domob/wall/core/d/a$3;->b:Lcn/domob/wall/core/d/a;

    iget-object v1, p0, Lcn/domob/wall/core/d/a$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/d/a;->loadUrl(Ljava/lang/String;)V

    .line 184
    return-void
.end method