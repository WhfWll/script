.class public interface abstract Lbh;
.super Ljava/lang/Object;


# virtual methods
.method public abstract createSession(Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getPartyId()Ljava/lang/String;
.end method

.method public abstract sendAnswer(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract sendHangup(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendICECandidate(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sendInvitations(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendOffer(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract setCallbacks(Lbi;)V
.end method

.method public abstract terminateSession(Ljava/lang/String;)V
.end method

.method public abstract validateSession(Ljava/lang/String;)V
.end method
