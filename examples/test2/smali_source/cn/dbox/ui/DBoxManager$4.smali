.class Lcn/dbox/ui/DBoxManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/dbox/core/b$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/DBoxManager;->b()V
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
    .line 160
    iput-object p1, p0, Lcn/dbox/ui/DBoxManager$4;->a:Lcn/dbox/ui/DBoxManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/dbox/core/b$h;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    .prologue
    .line 205
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager$4;->a:Lcn/dbox/ui/DBoxManager;

    invoke-static {v0}, Lcn/dbox/ui/DBoxManager;->c(Lcn/dbox/ui/DBoxManager;)Lcn/dbox/ui/a;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 206
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager$4;->a:Lcn/dbox/ui/DBoxManager;

    invoke-static {v0}, Lcn/dbox/ui/DBoxManager;->f(Lcn/dbox/ui/DBoxManager;)V

    .line 208
    :cond_d
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager$4;->a:Lcn/dbox/ui/DBoxManager;

    invoke-static {v0}, Lcn/dbox/ui/DBoxManager;->a(Lcn/dbox/ui/DBoxManager;)Lcn/dbox/ui/DBoxManager$DBoxViewListener;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 209
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager$4;->a:Lcn/dbox/ui/DBoxManager;

    invoke-static {v0}, Lcn/dbox/ui/DBoxManager;->a(Lcn/dbox/ui/DBoxManager;)Lcn/dbox/ui/DBoxManager$DBoxViewListener;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",errorContent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/dbox/ui/DBoxManager$DBoxViewListener;->onFailReceiveData(Ljava/lang/String;)V

    .line 211
    :cond_3b
    return-void
.end method

.method public a(Lcn/dbox/core/bean/g;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/dbox/core/bean/g;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/c;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/a;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager$4;->a:Lcn/dbox/ui/DBoxManager;

    invoke-static {v0, p2}, Lcn/dbox/ui/DBoxManager;->a(Lcn/dbox/ui/DBoxManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 169
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager$4;->a:Lcn/dbox/ui/DBoxManager;

    invoke-static {v0, p3}, Lcn/dbox/ui/DBoxManager;->b(Lcn/dbox/ui/DBoxManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 170
    if-eqz p1, :cond_24

    .line 171
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager$4;->a:Lcn/dbox/ui/DBoxManager;

    invoke-virtual {p1}, Lcn/dbox/core/bean/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/dbox/ui/DBoxManager;->a(Lcn/dbox/ui/DBoxManager;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Lcn/dbox/core/bean/g;->b()Lcn/dbox/core/bean/g$a;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_24

    .line 174
    iget-object v1, p0, Lcn/dbox/ui/DBoxManager$4;->a:Lcn/dbox/ui/DBoxManager;

    invoke-virtual {v0}, Lcn/dbox/core/bean/g$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/dbox/ui/DBoxManager;->b(Lcn/dbox/ui/DBoxManager;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    :cond_24
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/c;

    .line 180
    invoke-static {}, Lcn/dbox/ui/DBoxManager;->a()Lcn/dbox/core/h/d;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Channel:id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcn/dbox/core/bean/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcn/dbox/core/bean/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0}, Lcn/dbox/core/bean/c;->d()Ljava/util/ArrayList;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_68
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/d;

    .line 185
    invoke-static {}, Lcn/dbox/ui/DBoxManager;->a()Lcn/dbox/core/h/d;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ContainerInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->l()Ljava/util/ArrayList;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/a;

    .line 190
    invoke-static {}, Lcn/dbox/ui/DBoxManager;->a()Lcn/dbox/core/h/d;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AdInfo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcn/dbox/core/bean/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    goto :goto_9a

    .line 194
    :cond_c5
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager$4;->a:Lcn/dbox/ui/DBoxManager;

    invoke-static {v0}, Lcn/dbox/ui/DBoxManager;->c(Lcn/dbox/ui/DBoxManager;)Lcn/dbox/ui/a;

    move-result-object v0

    if-eqz v0, :cond_d2

    .line 195
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager$4;->a:Lcn/dbox/ui/DBoxManager;

    invoke-static {v0}, Lcn/dbox/ui/DBoxManager;->d(Lcn/dbox/ui/DBoxManager;)V

    .line 197
    :cond_d2
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager$4;->a:Lcn/dbox/ui/DBoxManager;

    invoke-static {v0}, Lcn/dbox/ui/DBoxManager;->a(Lcn/dbox/ui/DBoxManager;)Lcn/dbox/ui/DBoxManager$DBoxViewListener;

    move-result-object v0

    if-eqz v0, :cond_e9

    .line 198
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager$4;->a:Lcn/dbox/ui/DBoxManager;

    invoke-static {v0}, Lcn/dbox/ui/DBoxManager;->a(Lcn/dbox/ui/DBoxManager;)Lcn/dbox/ui/DBoxManager$DBoxViewListener;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/ui/DBoxManager$4;->a:Lcn/dbox/ui/DBoxManager;

    invoke-static {v1}, Lcn/dbox/ui/DBoxManager;->e(Lcn/dbox/ui/DBoxManager;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/dbox/ui/DBoxManager$DBoxViewListener;->onSuccessReceiveData(Ljava/lang/String;)V

    .line 200
    :cond_e9
    return-void
.end method
