.class public final Lcs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/arrownock/live/AnLive;


# direct methods
.method public constructor <init>(Lcom/arrownock/live/AnLive;)V
    .registers 2

    iput-object p1, p0, Lcs;->a:Lcom/arrownock/live/AnLive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcs;->a:Lcom/arrownock/live/AnLive;

    invoke-static {v0}, Lcom/arrownock/live/AnLive;->a(Lcom/arrownock/live/AnLive;)V

    return-void
.end method
