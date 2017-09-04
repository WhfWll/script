.class public final Len;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Leo;


# direct methods
.method public constructor <init>(Leo;)V
    .registers 2

    iput-object p1, p0, Len;->a:Leo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Len;->a:Leo;

    new-instance v1, Lcom/arrownock/exception/ArrownockException;

    const-string v2, "No device token in this device. Cannot connect to server."

    const/16 v3, 0x3ed

    invoke-direct {v1, v2, v3}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Leo;->a(Ljava/lang/Throwable;)V

    return-void
.end method
