.class Lcn/dbox/core/f/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/core/f/a;->a(Lcn/dbox/core/c;Ljava/util/ArrayList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/dbox/core/c;

.field final synthetic d:Lcn/dbox/core/f/a;


# direct methods
.method constructor <init>(Lcn/dbox/core/f/a;Ljava/util/ArrayList;Ljava/lang/String;Lcn/dbox/core/c;)V
    .registers 5

    .prologue
    .line 194
    iput-object p1, p0, Lcn/dbox/core/f/a$1;->d:Lcn/dbox/core/f/a;

    iput-object p2, p0, Lcn/dbox/core/f/a$1;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcn/dbox/core/f/a$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcn/dbox/core/f/a$1;->c:Lcn/dbox/core/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 197
    .line 200
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 201
    iget-object v0, p0, Lcn/dbox/core/f/a$1;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_4e

    .line 202
    iget-object v0, p0, Lcn/dbox/core/f/a$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/a;

    .line 203
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 204
    const-string v4, "id"

    invoke-virtual {v0}, Lcn/dbox/core/bean/a;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    const-string v4, "acid"

    iget-object v5, p0, Lcn/dbox/core/f/a$1;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    const-string v4, "tr"

    invoke-virtual {v0}, Lcn/dbox/core/bean/a;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    const-string v4, "position"

    invoke-virtual {v0}, Lcn/dbox/core/bean/a;->d()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 213
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_45} :catch_46

    goto :goto_f

    .line 220
    :catch_46
    move-exception v0

    .line 221
    invoke-static {}, Lcn/dbox/core/f/a;->b()Lcn/dbox/core/h/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    .line 224
    :cond_4e
    :goto_4e
    return-void

    .line 215
    :cond_4f
    :try_start_4f
    new-instance v0, Lcn/dbox/core/f/b$m;

    invoke-static {}, Lcn/dbox/core/f/b;->a()Lcn/dbox/core/f/b;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcn/dbox/core/f/a$1;->c:Lcn/dbox/core/c;

    invoke-direct {v0, v2, v3}, Lcn/dbox/core/f/b$m;-><init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;)V

    .line 217
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/f/b$m;->a(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcn/dbox/core/f/a$1;->c:Lcn/dbox/core/c;

    invoke-virtual {v1}, Lcn/dbox/core/c;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/f/b$m;->b(Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_6d} :catch_46

    goto :goto_4e
.end method
