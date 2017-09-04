.class Lcn/dbox/ui/c/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/dbox/ui/d/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/c/b;->b(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcn/dbox/ui/common/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcn/dbox/ui/c/b;


# direct methods
.method constructor <init>(Lcn/dbox/ui/c/b;Ljava/util/ArrayList;)V
    .registers 3

    .prologue
    .line 131
    iput-object p1, p0, Lcn/dbox/ui/c/b$2;->b:Lcn/dbox/ui/c/b;

    iput-object p2, p0, Lcn/dbox/ui/c/b$2;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 135
    iget-object v0, p0, Lcn/dbox/ui/c/b$2;->b:Lcn/dbox/ui/c/b;

    invoke-static {v0}, Lcn/dbox/ui/c/b;->b(Lcn/dbox/ui/c/b;)Lcn/dbox/ui/c/a;

    move-result-object v0

    if-eqz v0, :cond_95

    .line 137
    iget-object v0, p0, Lcn/dbox/ui/c/b$2;->b:Lcn/dbox/ui/c/b;

    invoke-static {v0}, Lcn/dbox/ui/c/b;->b(Lcn/dbox/ui/c/b;)Lcn/dbox/ui/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/dbox/ui/c/a;->a()I

    move-result v1

    .line 138
    iget-object v0, p0, Lcn/dbox/ui/c/b$2;->b:Lcn/dbox/ui/c/b;

    invoke-static {v0}, Lcn/dbox/ui/c/b;->c(Lcn/dbox/ui/c/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/d;

    .line 139
    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->d()Ljava/lang/String;

    move-result-object v2

    .line 140
    iget-object v0, p0, Lcn/dbox/ui/c/b$2;->b:Lcn/dbox/ui/c/b;

    invoke-static {v0}, Lcn/dbox/ui/c/b;->d(Lcn/dbox/ui/c/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/ui/b/b;

    invoke-virtual {v0}, Lcn/dbox/ui/b/b;->a()I

    move-result v3

    .line 141
    iget-object v0, p0, Lcn/dbox/ui/c/b$2;->b:Lcn/dbox/ui/c/b;

    invoke-static {v0}, Lcn/dbox/ui/c/b;->d(Lcn/dbox/ui/c/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/ui/b/b;

    invoke-virtual {v0}, Lcn/dbox/ui/b/b;->b()I

    move-result v0

    .line 142
    iget-object v1, p0, Lcn/dbox/ui/c/b$2;->b:Lcn/dbox/ui/c/b;

    invoke-virtual {v1, v2, v3}, Lcn/dbox/ui/c/b;->a(Ljava/lang/String;I)V

    .line 143
    iget-object v1, p0, Lcn/dbox/ui/c/b$2;->b:Lcn/dbox/ui/c/b;

    invoke-virtual {v1, v2, v0}, Lcn/dbox/ui/c/b;->b(Ljava/lang/String;I)V

    .line 144
    iget-object v0, p0, Lcn/dbox/ui/c/b$2;->b:Lcn/dbox/ui/c/b;

    iput p1, v0, Lcn/dbox/ui/c/b;->n:I

    .line 147
    iget-object v0, p0, Lcn/dbox/ui/c/b$2;->b:Lcn/dbox/ui/c/b;

    invoke-static {v0}, Lcn/dbox/ui/c/b;->b(Lcn/dbox/ui/c/b;)Lcn/dbox/ui/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/dbox/ui/c/a;->b(I)V

    .line 151
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_74

    .line 152
    iget-object v0, p0, Lcn/dbox/ui/c/b$2;->b:Lcn/dbox/ui/c/b;

    invoke-static {v0}, Lcn/dbox/ui/c/b;->b(Lcn/dbox/ui/c/b;)Lcn/dbox/ui/c/a;

    move-result-object v0

    add-int/lit8 v1, p1, -0x2

    iget-object v2, p0, Lcn/dbox/ui/c/b$2;->b:Lcn/dbox/ui/c/b;

    iget-object v2, v2, Lcn/dbox/ui/c/b;->k:Landroid/content/Context;

    const/16 v3, 0x5a

    invoke-static {v2, v3}, Lcn/dbox/ui/common/k;->a(Landroid/content/Context;I)I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1, v4}, Lcn/dbox/ui/c/a;->scrollTo(II)V

    .line 155
    :cond_74
    iget-object v0, p0, Lcn/dbox/ui/c/b$2;->b:Lcn/dbox/ui/c/b;

    iget-boolean v0, v0, Lcn/dbox/ui/c/b;->o:Z

    if-nez v0, :cond_91

    .line 156
    iget-object v0, p0, Lcn/dbox/ui/c/b$2;->b:Lcn/dbox/ui/c/b;

    iget-object v0, v0, Lcn/dbox/ui/c/b;->g:Lcn/dbox/ui/d/b;

    if-eqz v0, :cond_91

    .line 157
    iget-object v0, p0, Lcn/dbox/ui/c/b$2;->b:Lcn/dbox/ui/c/b;

    iget-object v1, v0, Lcn/dbox/ui/c/b;->g:Lcn/dbox/ui/d/b;

    iget-object v0, p0, Lcn/dbox/ui/c/b$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/d;

    sget-object v2, Lcn/dbox/core/b$e;->b:Lcn/dbox/core/b$e;

    invoke-interface {v1, v0, v2}, Lcn/dbox/ui/d/b;->a(Lcn/dbox/core/bean/d;Lcn/dbox/core/b$e;)V

    .line 160
    :cond_91
    iget-object v0, p0, Lcn/dbox/ui/c/b$2;->b:Lcn/dbox/ui/c/b;

    iput-boolean v4, v0, Lcn/dbox/ui/c/b;->o:Z

    .line 162
    :cond_95
    return-void
.end method
