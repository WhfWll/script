.class public Lcn/domob/wall/core/h/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/h/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/wall/core/h/c$a;->a:Ljava/lang/String;

    .line 179
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/wall/core/h/c$a;->b:Ljava/lang/String;

    .line 180
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/wall/core/h/c$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcn/domob/wall/core/h/c$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 195
    iput-object p1, p0, Lcn/domob/wall/core/h/c$a;->a:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcn/domob/wall/core/h/c$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 199
    iput-object p1, p0, Lcn/domob/wall/core/h/c$a;->b:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcn/domob/wall/core/h/c$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 203
    iput-object p1, p0, Lcn/domob/wall/core/h/c$a;->c:Ljava/lang/String;

    .line 204
    return-void
.end method
