.class Lcn/domob/wall/core/f/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/f/a;->a(Lcn/domob/wall/core/b;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcn/domob/wall/core/b;

.field final synthetic c:Lcn/domob/wall/core/f/a;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/f/a;Ljava/util/ArrayList;Lcn/domob/wall/core/b;)V
    .registers 4

    .prologue
    .line 107
    iput-object p1, p0, Lcn/domob/wall/core/f/a$1;->c:Lcn/domob/wall/core/f/a;

    iput-object p2, p0, Lcn/domob/wall/core/f/a$1;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcn/domob/wall/core/f/a$1;->b:Lcn/domob/wall/core/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 110
    .line 113
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 114
    iget-object v0, p0, Lcn/domob/wall/core/f/a$1;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_4e

    .line 115
    iget-object v0, p0, Lcn/domob/wall/core/f/a$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/bean/AdInfo;

    .line 116
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 117
    const-string v4, "id"

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getAdId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string v4, "tr"

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getAdTracker()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string v4, "sn"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v4, "position"

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getAdActualPosition()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 126
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_45} :catch_46

    goto :goto_f

    .line 134
    :catch_46
    move-exception v0

    .line 135
    invoke-static {}, Lcn/domob/wall/core/f/a;->b()Lcn/domob/wall/core/h/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Throwable;)V

    .line 138
    :cond_4e
    :goto_4e
    return-void

    .line 128
    :cond_4f
    :try_start_4f
    new-instance v2, Lcn/domob/wall/core/f/b$g;

    invoke-static {}, Lcn/domob/wall/core/f/b;->a()Lcn/domob/wall/core/f/b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcn/domob/wall/core/f/a$1;->b:Lcn/domob/wall/core/b;

    invoke-direct {v2, v0, v3}, Lcn/domob/wall/core/f/b$g;-><init>(Lcn/domob/wall/core/f/b;Lcn/domob/wall/core/b;)V

    .line 130
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/domob/wall/core/f/b$g;->a(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcn/domob/wall/core/f/a$1;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getSearchId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/domob/wall/core/f/b$g;->b(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v2}, Lcn/domob/wall/core/f/b$g;->a()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_77} :catch_46

    goto :goto_4e
.end method
