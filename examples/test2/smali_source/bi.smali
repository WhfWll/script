.class public final Lbi;
.super Ljava/lang/Object;


# instance fields
.field public final synthetic a:Lcom/arrownock/live/AnLive;


# direct methods
.method public constructor <init>(Lcom/arrownock/live/AnLive;)V
    .registers 2

    iput-object p1, p0, Lbi;->a:Lcom/arrownock/live/AnLive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/arrownock/exception/ArrownockException;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/arrownock/exception/ArrownockException;",
            ")V"
        }
    .end annotation

    if-eqz p4, :cond_1a

    iget-object v0, p0, Lbi;->a:Lcom/arrownock/live/AnLive;

    # getter for: Lcom/arrownock/live/AnLive;->a:Lcom/arrownock/live/IStartCallCallback;
    invoke-static {v0}, Lcom/arrownock/live/AnLive;->access$100(Lcom/arrownock/live/AnLive;)Lcom/arrownock/live/IStartCallCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    :try_start_a
    iget-object v0, p0, Lbi;->a:Lcom/arrownock/live/AnLive;

    # getter for: Lcom/arrownock/live/AnLive;->a:Lcom/arrownock/live/IStartCallCallback;
    invoke-static {v0}, Lcom/arrownock/live/AnLive;->access$100(Lcom/arrownock/live/AnLive;)Lcom/arrownock/live/IStartCallCallback;

    move-result-object v0

    invoke-interface {v0, p4}, Lcom/arrownock/live/IStartCallCallback;->onFailure(Lcom/arrownock/exception/ArrownockException;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_82

    :cond_13
    :goto_13
    iget-object v0, p0, Lbi;->a:Lcom/arrownock/live/AnLive;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/arrownock/live/AnLive;->access$102(Lcom/arrownock/live/AnLive;Lcom/arrownock/live/IStartCallCallback;)Lcom/arrownock/live/IStartCallCallback;

    return-void

    :cond_1a
    iget-object v0, p0, Lbi;->a:Lcom/arrownock/live/AnLive;

    # setter for: Lcom/arrownock/live/AnLive;->a:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/arrownock/live/AnLive;->access$202(Lcom/arrownock/live/AnLive;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lbi;->a:Lcom/arrownock/live/AnLive;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/arrownock/live/AnLive;->access$302(Lcom/arrownock/live/AnLive;Z)Z

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_29

    iget-object v2, p0, Lbi;->a:Lcom/arrownock/live/AnLive;

    # getter for: Lcom/arrownock/live/AnLive;->a:Lbh;
    invoke-static {v2}, Lcom/arrownock/live/AnLive;->access$400(Lcom/arrownock/live/AnLive;)Lbh;

    move-result-object v2

    invoke-interface {v2}, Lbh;->getPartyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    iget-object v1, p0, Lbi;->a:Lcom/arrownock/live/AnLive;

    # setter for: Lcom/arrownock/live/AnLive;->c:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/arrownock/live/AnLive;->access$502(Lcom/arrownock/live/AnLive;Ljava/lang/String;)Ljava/lang/String;

    :cond_4c
    iget-object v0, p0, Lbi;->a:Lcom/arrownock/live/AnLive;

    # getter for: Lcom/arrownock/live/AnLive;->a:Lcom/arrownock/live/IStartCallCallback;
    invoke-static {v0}, Lcom/arrownock/live/AnLive;->access$100(Lcom/arrownock/live/AnLive;)Lcom/arrownock/live/IStartCallCallback;

    move-result-object v0

    if-eqz v0, :cond_5d

    :try_start_54
    iget-object v0, p0, Lbi;->a:Lcom/arrownock/live/AnLive;

    # getter for: Lcom/arrownock/live/AnLive;->a:Lcom/arrownock/live/IStartCallCallback;
    invoke-static {v0}, Lcom/arrownock/live/AnLive;->access$100(Lcom/arrownock/live/AnLive;)Lcom/arrownock/live/IStartCallCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/arrownock/live/IStartCallCallback;->onReady(Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5d} :catch_80

    :cond_5d
    :goto_5d
    iget-object v0, p0, Lbi;->a:Lcom/arrownock/live/AnLive;

    # getter for: Lcom/arrownock/live/AnLive;->a:Lbh;
    invoke-static {v0}, Lcom/arrownock/live/AnLive;->access$400(Lcom/arrownock/live/AnLive;)Lbh;

    move-result-object v0

    if-eqz v0, :cond_13

    :try_start_65
    iget-object v0, p0, Lbi;->a:Lcom/arrownock/live/AnLive;

    # getter for: Lcom/arrownock/live/AnLive;->a:Lbh;
    invoke-static {v0}, Lcom/arrownock/live/AnLive;->access$400(Lcom/arrownock/live/AnLive;)Lbh;

    move-result-object v0

    iget-object v1, p0, Lbi;->a:Lcom/arrownock/live/AnLive;

    # getter for: Lcom/arrownock/live/AnLive;->a:Ljava/util/Map;
    invoke-static {v1}, Lcom/arrownock/live/AnLive;->access$600(Lcom/arrownock/live/AnLive;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Lbh;->sendInvitations(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_74} :catch_75

    goto :goto_13

    :catch_75
    move-exception v0

    iget-object v0, p0, Lbi;->a:Lcom/arrownock/live/AnLive;

    # getter for: Lcom/arrownock/live/AnLive;->a:Lbh;
    invoke-static {v0}, Lcom/arrownock/live/AnLive;->access$400(Lcom/arrownock/live/AnLive;)Lbh;

    move-result-object v0

    invoke-interface {v0, p1}, Lbh;->terminateSession(Ljava/lang/String;)V

    goto :goto_13

    :catch_80
    move-exception v0

    goto :goto_5d

    :catch_82
    move-exception v0

    goto :goto_13
.end method

.method public final a(ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Date;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_38

    iget-object v0, p0, Lbi;->a:Lcom/arrownock/live/AnLive;

    # setter for: Lcom/arrownock/live/AnLive;->a:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/arrownock/live/AnLive;->access$202(Lcom/arrownock/live/AnLive;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lbi;->a:Lcom/arrownock/live/AnLive;

    invoke-static {v0, v1}, Lcom/arrownock/live/AnLive;->access$302(Lcom/arrownock/live/AnLive;Z)Z

    iget-object v0, p0, Lbi;->a:Lcom/arrownock/live/AnLive;

    # setter for: Lcom/arrownock/live/AnLive;->b:Ljava/lang/String;
    invoke-static {v0, p4}, Lcom/arrownock/live/AnLive;->access$802(Lcom/arrownock/live/AnLive;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lbi;->a:Lcom/arrownock/live/AnLive;

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # setter for: Lcom/arrownock/live/AnLive;->c:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/arrownock/live/AnLive;->access$502(Lcom/arrownock/live/AnLive;Ljava/lang/String;)Ljava/lang/String;

    :try_start_1e
    iget-object v0, p0, Lbi;->a:Lcom/arrownock/live/AnLive;

    # getter for: Lcom/arrownock/live/AnLive;->a:Lcom/arrownock/live/IAnLiveEventListener;
    invoke-static {v0}, Lcom/arrownock/live/AnLive;->access$900(Lcom/arrownock/live/AnLive;)Lcom/arrownock/live/IAnLiveEventListener;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/arrownock/live/IAnLiveEventListener;->onReceivedInvitation(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_32} :catch_33

    :goto_32
    return-void

    :catch_33
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_32

    :cond_38
    if-eqz p3, :cond_40

    :try_start_3a
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_54

    :cond_40
    iget-object v0, p0, Lbi;->a:Lcom/arrownock/live/AnLive;

    # getter for: Lcom/arrownock/live/AnLive;->a:Lcom/arrownock/live/IAnLiveEventListener;
    invoke-static {v0}, Lcom/arrownock/live/AnLive;->access$900(Lcom/arrownock/live/AnLive;)Lcom/arrownock/live/IAnLiveEventListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/arrownock/live/IAnLiveEventListener;->onReceivedInvitation(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4e} :catch_4f

    goto :goto_32

    :catch_4f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_32

    :cond_54
    :try_start_54
    iget-object v0, p0, Lbi;->a:Lcom/arrownock/live/AnLive;

    # getter for: Lcom/arrownock/live/AnLive;->a:Lcom/arrownock/live/IAnLiveEventListener;
    invoke-static {v0}, Lcom/arrownock/live/AnLive;->access$900(Lcom/arrownock/live/AnLive;)Lcom/arrownock/live/IAnLiveEventListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/arrownock/live/IAnLiveEventListener;->onReceivedInvitation(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_68} :catch_4f

    goto :goto_32
.end method
